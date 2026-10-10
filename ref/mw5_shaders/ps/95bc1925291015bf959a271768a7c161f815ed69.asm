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
; shader hash: 9c9290e4d31aff9b870eb8a29581f356
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
  %380 = add i32 %43, 492
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
  br i1 %433, label %892, label %434

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
  %538 = add i32 %43, 376
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
  %561 = add i32 %43, 460
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
  %759 = add i32 %43, 392
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
  %843 = add i32 %43, 408
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
  %879 = add i32 %43, 96
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = lshr i32 %881, 8
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = fmul fast float %886, %887
  %889 = fadd fast float %888, %883
  %890 = fmul fast float %889, 0x3F70101020000000
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  br label %892

; <label>:892                                     ; preds = %875, %419
  %893 = phi float [ 0.000000e+00, %419 ], [ %829, %875 ]
  %894 = phi float [ 0.000000e+00, %419 ], [ %830, %875 ]
  %895 = phi float [ 0.000000e+00, %419 ], [ %748, %875 ]
  %896 = phi float [ 0.000000e+00, %419 ], [ %749, %875 ]
  %897 = phi float [ 0.000000e+00, %419 ], [ %750, %875 ]
  %898 = phi float [ 0.000000e+00, %419 ], [ %876, %875 ]
  %899 = phi float [ 0.000000e+00, %419 ], [ %877, %875 ]
  %900 = phi float [ 0.000000e+00, %419 ], [ %878, %875 ]
  %901 = phi float [ 0.000000e+00, %419 ], [ %734, %875 ]
  %902 = phi float [ 0.000000e+00, %419 ], [ 1.000000e+00, %875 ]
  %903 = phi float [ 0.000000e+00, %419 ], [ %828, %875 ]
  %904 = phi float [ 0.000000e+00, %419 ], [ %831, %875 ]
  %905 = phi float [ 0.000000e+00, %419 ], [ %891, %875 ]
  br i1 %370, label %1747, label %906

; <label>:906                                     ; preds = %892
  %907 = icmp ult i32 %425, 2
  %908 = add i32 %43, 40
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %43, 44
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = or i32 %913, %910
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %1747, label %916

; <label>:916                                     ; preds = %906
  %917 = and i32 %910, 262144
  %918 = icmp ne i32 %917, 0
  %919 = select i1 %918, float %46, float 1.000000e+00
  %920 = select i1 %918, float %47, float 0.000000e+00
  %921 = select i1 %918, float %48, float 0.000000e+00
  %922 = select i1 %918, float %49, float 1.000000e+00
  %923 = select i1 %918, float %50, float %66
  %924 = select i1 %918, float %51, float %67
  %925 = add i32 %43, 300
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = lshr i32 %927, 16
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = fmul fast float %929, 0x3F50624DE0000000
  %931 = add i32 %43, 104
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 16
  %935 = and i32 %934, 255
  %936 = lshr i32 %933, 24
  %937 = add i32 %43, 308
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 65535
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = lshr i32 %939, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = add i32 %43, 48
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 22
  %948 = shl nuw nsw i32 %947, 5
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = shl i32 %946, 4
  %951 = and i32 %950, 32752
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = lshr i32 %946, 7
  %954 = and i32 %953, 32752
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %958 = fmul fast float %957, 1.000000e+03
  %959 = fmul fast float %280, %958
  %960 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %961 = fadd fast float %960, %270
  %962 = fmul fast float %281, %958
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = fadd fast float %963, %272
  %965 = fmul fast float %930, %958
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = fmul fast float %966, 0x401921FB60000000
  %968 = fadd fast float %967, %949
  %969 = call float @dx.op.unary.f32(i32 13, float %968)  ; Sin(value)
  %970 = call float @dx.op.unary.f32(i32 12, float %968)  ; Cos(value)
  %971 = fsub fast float -0.000000e+00, %969
  %972 = fadd fast float %923, -5.000000e-01
  %973 = fadd fast float %924, -5.000000e-01
  %974 = fmul fast float %941, %972
  %975 = fmul fast float %943, %973
  %976 = fadd fast float %974, 5.000000e-01
  %977 = fadd fast float %975, 5.000000e-01
  %978 = fmul fast float %952, %976
  %979 = fmul fast float %955, %977
  %980 = fmul fast float %970, %978
  %981 = call float @dx.op.tertiary.f32(i32 46, float %971, float %979, float %980)  ; FMad(a,b,c)
  %982 = fmul fast float %969, %978
  %983 = call float @dx.op.tertiary.f32(i32 46, float %970, float %979, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %961, %981
  %985 = fadd fast float %964, %983
  %986 = icmp ugt i32 %935, 1
  %987 = icmp ugt i32 %933, 33554431
  %988 = or i1 %987, %986
  br i1 %988, label %989, label %1014

; <label>:989                                     ; preds = %916
  %990 = add i32 %43, 244
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 16
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = fmul fast float %957, %994
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = mul nuw nsw i32 %935, %936
  %998 = uitofp i32 %997 to float
  %999 = fmul fast float %996, %998
  %1000 = call float @dx.op.unary.f32(i32 27, float %999)  ; Round_ni(value)
  %1001 = fptoui float %1000 to i32
  %1002 = urem i32 %1001, %935
  %1003 = udiv i32 %1001, %936
  %1004 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %1005 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %1006 = uitofp i32 %1002 to float
  %1007 = uitofp i32 %1003 to float
  %1008 = fadd fast float %1004, %1006
  %1009 = fadd fast float %1005, %1007
  %1010 = uitofp i32 %935 to float
  %1011 = uitofp i32 %936 to float
  %1012 = fdiv fast float %1008, %1010
  %1013 = fdiv fast float %1009, %1011
  br label %1014

; <label>:1014                                    ; preds = %989, %916
  %1015 = phi float [ %1012, %989 ], [ %984, %916 ]
  %1016 = phi float [ %1013, %989 ], [ %985, %916 ]
  %1017 = and i32 %910, 16777216
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1128, label %1019

; <label>:1019                                    ; preds = %1014
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1024 = fadd fast float %1021, %141
  %1025 = fadd fast float %1022, %142
  %1026 = fadd fast float %1023, %143
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = icmp eq i32 %44, 65535
  br i1 %1030, label %1125, label %1031

; <label>:1031                                    ; preds = %1019
  %1032 = lshr i32 %44, 1
  %1033 = shl i32 %1032, 2
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %44, 1
  %1037 = icmp ne i32 %1036, 0
  %1038 = lshr i32 %1035, 16
  %1039 = and i32 %1035, 65535
  %1040 = select i1 %1037, i32 %1038, i32 %1039
  %1041 = icmp eq i32 %1040, 65535
  br i1 %1041, label %1121, label %1042

; <label>:1042                                    ; preds = %1031
  %1043 = mul nuw nsw i32 %1040, 40
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = add nuw nsw i32 %1043, 12
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = add nuw nsw i32 %1043, 24
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = add nuw nsw i32 %1043, 36
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = fsub fast float %1024, %1045
  %1062 = fsub fast float %1025, %1046
  %1063 = fsub fast float %1026, %1047
  %1064 = fmul fast float %1060, %1061
  %1065 = fmul fast float %1060, %1062
  %1066 = fmul fast float %1060, %1063
  %1067 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1068 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fmul fast float %1070, %1050
  %1074 = fmul fast float %1071, %1051
  %1075 = fmul fast float %1072, %1052
  %1076 = shl i32 %44, 2
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1082 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1083 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1080, %dx.types.Handle %40, float %1081, float %1082, float %1083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = fmul fast float %1085, 1.023000e+03
  %1089 = fmul fast float %1086, 1.023000e+03
  %1090 = fmul fast float %1087, 1.023000e+03
  %1091 = fadd fast float %1088, 5.000000e-01
  %1092 = fadd fast float %1089, 5.000000e-01
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = fsub fast float %1064, %1067
  %1098 = fsub fast float %1065, %1068
  %1099 = fsub fast float %1066, %1069
  %1100 = fmul fast float %1097, 7.500000e-01
  %1101 = fmul fast float %1098, 7.500000e-01
  %1102 = fmul fast float %1099, 7.500000e-01
  %1103 = fadd fast float %1067, 1.250000e-01
  %1104 = fadd fast float %1103, %1100
  %1105 = fadd fast float %1104, %1094
  %1106 = fadd fast float %1068, 1.250000e-01
  %1107 = fadd fast float %1106, %1101
  %1108 = fadd fast float %1107, %1095
  %1109 = fadd fast float %1069, 1.250000e-01
  %1110 = fadd fast float %1109, %1102
  %1111 = fadd fast float %1110, %1096
  %1112 = fmul fast float %1105, %1055
  %1113 = fmul fast float %1108, %1056
  %1114 = fmul fast float %1111, %1057
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1118, %dx.types.Handle %38, float %1112, float %1113, float %1114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  br label %1121

; <label>:1121                                    ; preds = %1042, %1031
  %1122 = phi float [ %1120, %1042 ], [ -1.000000e+00, %1031 ]
  %1123 = fadd fast float %1122, %1029
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  br label %1125

; <label>:1125                                    ; preds = %1121, %1019
  %1126 = phi float [ %1124, %1121 ], [ %1029, %1019 ]
  %1127 = fmul fast float %1126, %422
  br label %1128

; <label>:1128                                    ; preds = %1125, %1014
  %1129 = phi float [ %1127, %1125 ], [ %422, %1014 ]
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = and i32 %1131, 256
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1180, label %1134

; <label>:1134                                    ; preds = %1128
  %1135 = add i32 %43, 444
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1139, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = add i32 %43, 116
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = shl i32 %1144, 4
  %1146 = and i32 %1145, 32752
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = lshr i32 %1144, 7
  %1149 = and i32 %1148, 32752
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fsub fast float 1.000000e+00, %1129
  %1152 = call float @dx.op.binary.f32(i32 35, float %1151, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1153 = bitcast float %1129 to i32
  %1154 = sitofp i32 %1153 to float
  %1155 = fadd fast float %1154, 0xC1CFBF8940000000
  %1156 = fmul fast float %1150, %1155
  %1157 = fadd fast float %1156, 0x41CFBF8940000000
  %1158 = fptosi float %1157 to i32
  %1159 = bitcast i32 %1158 to float
  %1160 = bitcast float %1152 to i32
  %1161 = sitofp i32 %1160 to float
  %1162 = fadd fast float %1161, 0xC1CFBF8940000000
  %1163 = fmul fast float %1162, %1150
  %1164 = fadd fast float %1163, 0x41CFBF8940000000
  %1165 = fptosi float %1164 to i32
  %1166 = bitcast i32 %1165 to float
  %1167 = fmul fast float %1159, %1147
  %1168 = fmul fast float %1166, %1147
  %1169 = fsub fast float %1152, %1167
  %1170 = fadd fast float %1168, %1152
  %1171 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1172 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1173 = fsub fast float %1141, %1171
  %1174 = fsub fast float %1172, %1171
  %1175 = bitcast float %1174 to i32
  %1176 = sub nsw i32 2129859010, %1175
  %1177 = bitcast i32 %1176 to float
  %1178 = fmul fast float %1177, %1173
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  br label %1180

; <label>:1180                                    ; preds = %1134, %1128
  %1181 = phi float [ %1179, %1134 ], [ %1129, %1128 ]
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 128
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1202, label %1186

; <label>:1186                                    ; preds = %1180
  %1187 = add i32 %43, 428
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 524288
  %1197 = icmp ne i32 %1196, 0
  %1198 = fcmp fast ogt float %1193, 0x3FE0101020000000
  %1199 = select i1 %1198, float 1.000000e+00, float 0.000000e+00
  %1200 = select i1 %1197, float %1199, float %1193
  %1201 = fmul fast float %1200, %1181
  br label %1202

; <label>:1202                                    ; preds = %1186, %1180
  %1203 = phi float [ %1201, %1186 ], [ %1181, %1180 ]
  %1204 = fcmp fast ult float %1203, 0x3F70101020000000
  br i1 %1204, label %1747, label %1205

; <label>:1205                                    ; preds = %1202
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 16
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1408, label %1210

; <label>:1210                                    ; preds = %1205
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %43, 380
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %74, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = and i32 %1212, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = lshr i32 %1212, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1222, %1224
  %1229 = fadd fast float %1228, %1227
  %1230 = fmul fast float %1229, 0x3F70101000000000
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 512
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1243, label %1235

; <label>:1235                                    ; preds = %1210
  %1236 = add i32 %43, 464
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = add i32 %1238, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1240, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  br label %1243

; <label>:1243                                    ; preds = %1235, %1210
  %1244 = phi float [ %1242, %1235 ], [ 1.000000e+00, %1210 ]
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 33554432
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1355, label %1249

; <label>:1249                                    ; preds = %1243
  %1250 = add i32 %43, 240
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 65535
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = lshr i32 %1252, 16
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = add i32 %43, 244
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 65535
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = lshr i32 %1263, 24
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = and i32 %1263, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = lshr i32 %1263, 8
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = lshr i32 %1263, 16
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = add i32 %43, 236
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = lshr i32 %1280, 24
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1282, 0x3F70101020000000
  %1284 = and i32 %1280, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = lshr i32 %1280, 8
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = lshr i32 %1280, 16
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = bitcast float %1219 to i32
  %1296 = ashr i32 %1295, 1
  %1297 = sub nsw i32 1597463174, %1296
  %1298 = bitcast i32 %1297 to float
  %1299 = fmul fast float %1219, 5.000000e-01
  %1300 = fmul fast float %1298, %1298
  %1301 = fmul fast float %1300, %1299
  %1302 = fsub fast float 1.500000e+00, %1301
  %1303 = fmul fast float %1298, %1219
  %1304 = fmul fast float %1303, %1302
  %1305 = bitcast float %1220 to i32
  %1306 = ashr i32 %1305, 1
  %1307 = sub nsw i32 1597463174, %1306
  %1308 = bitcast i32 %1307 to float
  %1309 = fmul fast float %1220, 5.000000e-01
  %1310 = fmul fast float %1308, %1308
  %1311 = fmul fast float %1310, %1309
  %1312 = fsub fast float 1.500000e+00, %1311
  %1313 = fmul fast float %1308, %1220
  %1314 = fmul fast float %1313, %1312
  %1315 = bitcast float %1221 to i32
  %1316 = ashr i32 %1315, 1
  %1317 = sub nsw i32 1597463174, %1316
  %1318 = bitcast i32 %1317 to float
  %1319 = fmul fast float %1221, 5.000000e-01
  %1320 = fmul fast float %1318, %1318
  %1321 = fmul fast float %1320, %1319
  %1322 = fsub fast float 1.500000e+00, %1321
  %1323 = fmul fast float %1318, %1221
  %1324 = fmul fast float %1323, %1322
  %1325 = fsub fast float %1304, %1286
  %1326 = fsub fast float %1314, %1290
  %1327 = fsub fast float %1324, %1294
  %1328 = fmul fast float %1325, %1254
  %1329 = fmul fast float %1326, %1256
  %1330 = fmul fast float %1327, %1261
  %1331 = fadd fast float %1328, %1269
  %1332 = fadd fast float %1329, %1273
  %1333 = fadd fast float %1330, %1277
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1336 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1337 = fmul fast float %1334, %1334
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1336, %1336
  %1340 = fsub fast float %1337, %1219
  %1341 = fsub fast float %1338, %1220
  %1342 = fsub fast float %1339, %1221
  %1343 = fmul fast float %1340, %1244
  %1344 = fmul fast float %1341, %1244
  %1345 = fmul fast float %1342, %1244
  %1346 = fadd fast float %1343, %1219
  %1347 = fadd fast float %1344, %1220
  %1348 = fadd fast float %1345, %1221
  %1349 = fadd fast float %1266, %1230
  %1350 = fsub fast float %1349, %1283
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1352 = fsub fast float %1351, %1230
  %1353 = fmul fast float %1352, %1244
  %1354 = fadd fast float %1353, %1230
  br label %1408

; <label>:1355                                    ; preds = %1243
  %1356 = and i32 %1246, 134217728
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1392, label %1358

; <label>:1358                                    ; preds = %1355
  %1359 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1360 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1361 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1362 = fadd fast float %1359, -5.000000e-01
  %1363 = fadd fast float %1360, -5.000000e-01
  %1364 = fadd fast float %1361, -5.000000e-01
  %1365 = fmul fast float %1362, %1244
  %1366 = fmul fast float %1363, %1244
  %1367 = fmul fast float %1364, %1244
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1372 = call float @dx.op.unary.f32(i32 24, float %1220)  ; Sqrt(value)
  %1373 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1374 = fmul fast float %1368, 2.000000e+00
  %1375 = fsub fast float 1.000000e+00, %1374
  %1376 = fmul fast float %1375, %1371
  %1377 = fadd fast float %1376, %1374
  %1378 = fmul fast float %1377, %1371
  %1379 = fmul fast float %1369, 2.000000e+00
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = fmul fast float %1380, %1372
  %1382 = fadd fast float %1381, %1379
  %1383 = fmul fast float %1382, %1372
  %1384 = fmul fast float %1370, 2.000000e+00
  %1385 = fsub fast float 1.000000e+00, %1384
  %1386 = fmul fast float %1385, %1373
  %1387 = fadd fast float %1386, %1384
  %1388 = fmul fast float %1387, %1373
  %1389 = fmul fast float %1378, %1378
  %1390 = fmul fast float %1383, %1383
  %1391 = fmul fast float %1388, %1388
  br label %1408

; <label>:1392                                    ; preds = %1355
  %1393 = fmul fast float %257, %257
  %1394 = fmul fast float %261, %261
  %1395 = fmul fast float %265, %265
  %1396 = fadd fast float %1393, -1.000000e+00
  %1397 = fadd fast float %1394, -1.000000e+00
  %1398 = fadd fast float %1395, -1.000000e+00
  %1399 = fmul fast float %1244, %1396
  %1400 = fmul fast float %1244, %1397
  %1401 = fmul fast float %1244, %1398
  %1402 = fadd fast float %1399, 1.000000e+00
  %1403 = fadd fast float %1400, 1.000000e+00
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fmul fast float %1402, %1219
  %1406 = fmul fast float %1403, %1220
  %1407 = fmul fast float %1404, %1221
  br label %1408

; <label>:1408                                    ; preds = %1392, %1358, %1249, %1205
  %1409 = phi float [ %1354, %1249 ], [ %1230, %1358 ], [ %1230, %1392 ], [ 0x3FA23C0BE0000000, %1205 ]
  %1410 = phi float [ %1346, %1249 ], [ %1389, %1358 ], [ %1405, %1392 ], [ 1.000000e+00, %1205 ]
  %1411 = phi float [ %1347, %1249 ], [ %1390, %1358 ], [ %1406, %1392 ], [ 1.000000e+00, %1205 ]
  %1412 = phi float [ %1348, %1249 ], [ %1391, %1358 ], [ %1407, %1392 ], [ 1.000000e+00, %1205 ]
  %1413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.i32 %1413, 1
  %1415 = and i32 %1414, 1
  %1416 = icmp ne i32 %1415, 0
  %1417 = add i32 %43, 356
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 32
  %1421 = icmp ne i32 %1420, 0
  %1422 = and i1 %1416, %1421
  %1423 = select i1 %1422, float 1.000000e+00, float %1410
  %1424 = select i1 %1422, float 0x3FD3333340000000, float %1411
  %1425 = select i1 %1422, float 0x3FD3333340000000, float %1412
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 32
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1502, label %1430

; <label>:1430                                    ; preds = %1408
  %1431 = add i32 %43, 108
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %43, 396
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %74, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = extractvalue %dx.types.ResRet.f32 %1439, 3
  %1444 = and i32 %1433, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = lshr i32 %1433, 8
  %1447 = and i32 %1446, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1433, 16
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1451, 0x3F70101000000000
  %1453 = fmul fast float %1440, %1445
  %1454 = fadd fast float %1453, %1448
  %1455 = fmul fast float %1454, 0x3F70101000000000
  %1456 = fadd fast float %1441, -5.000000e-01
  %1457 = fadd fast float %1443, -5.000000e-01
  %1458 = fmul fast float %1456, %1452
  %1459 = fmul fast float %1457, %1452
  %1460 = fadd fast float %1458, 5.000000e-01
  %1461 = fadd fast float %1459, 5.000000e-01
  %1462 = fmul fast float %1460, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = fmul fast float %1461, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fadd fast float %1463, %1465
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = fsub fast float %1463, %1465
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float %1471, %1472
  %1474 = call float @dx.op.dot3.f32(i32 55, float %1467, float %1469, float %1473, float %1467, float %1469, float %1473)  ; Dot3(ax,ay,az,bx,by,bz)
  %1475 = call float @dx.op.unary.f32(i32 25, float %1474)  ; Rsqrt(value)
  %1476 = fmul fast float %1467, %1475
  %1477 = fmul fast float %1469, %1475
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 67108864
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1498, label %1482

; <label>:1482                                    ; preds = %1430
  %1483 = add i32 %43, 296
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 65535
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %1485, 16
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = fsub fast float %1455, %1493
  %1495 = fmul fast float %1494, %1487
  %1496 = fadd fast float %1495, %1491
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  br label %1498

; <label>:1498                                    ; preds = %1482, %1430
  %1499 = phi float [ %1497, %1482 ], [ %1455, %1430 ]
  %1500 = call float @dx.op.dot2.f32(i32 54, float %1476, float %1477, float %919, float %920)  ; Dot2(ax,ay,bx,by)
  %1501 = call float @dx.op.dot2.f32(i32 54, float %1476, float %1477, float %921, float %922)  ; Dot2(ax,ay,bx,by)
  br label %1502

; <label>:1502                                    ; preds = %1498, %1408
  %1503 = phi float [ %1499, %1498 ], [ 0x3FD6666660000000, %1408 ]
  %1504 = phi float [ %1500, %1498 ], [ 0.000000e+00, %1408 ]
  %1505 = phi float [ %1501, %1498 ], [ 0.000000e+00, %1408 ]
  %1506 = phi float [ %1442, %1498 ], [ 1.000000e+00, %1408 ]
  %1507 = add i32 %43, 176
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = lshr i32 %1509, 22
  %1511 = shl nuw nsw i32 %1510, 5
  %1512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1511)  ; LegacyF16ToF32(value)
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 64
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1550, label %1517

; <label>:1517                                    ; preds = %1502
  %1518 = add i32 %43, 412
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 131072
  %1526 = icmp eq i32 %1525, 0
  %1527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1522, %dx.types.Handle %74, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = fmul fast float %1528, %245
  %1532 = fmul fast float %1529, %248
  %1533 = fmul fast float %1530, %251
  br i1 %1526, label %1540, label %1534

; <label>:1534                                    ; preds = %1517
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = fmul fast float %1536, %1531
  %1538 = fmul fast float %1536, %1532
  %1539 = fmul fast float %1536, %1533
  br label %1540

; <label>:1540                                    ; preds = %1534, %1517
  %1541 = phi float [ %1537, %1534 ], [ %1531, %1517 ]
  %1542 = phi float [ %1538, %1534 ], [ %1532, %1517 ]
  %1543 = phi float [ %1539, %1534 ], [ %1533, %1517 ]
  %1544 = fmul fast float %1541, %1512
  %1545 = select i1 %183, float %1544, float %1541
  %1546 = call float @dx.op.dot3.f32(i32 55, float %1545, float %1542, float %1543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = select i1 %183, float 0.000000e+00, float %1541
  %1548 = select i1 %183, float %1546, float %1542
  %1549 = select i1 %183, float 0.000000e+00, float %1543
  br label %1550

; <label>:1550                                    ; preds = %1540, %1502
  %1551 = phi float [ %1547, %1540 ], [ 0.000000e+00, %1502 ]
  %1552 = phi float [ %1548, %1540 ], [ 0.000000e+00, %1502 ]
  %1553 = phi float [ %1549, %1540 ], [ 0.000000e+00, %1502 ]
  %1554 = add i32 %43, 112
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = lshr i32 %1556, 8
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1423, float %1424, float %1425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = fmul fast float %1561, %1562
  %1564 = fadd fast float %1563, %1558
  %1565 = fmul fast float %1564, 0x3F70101020000000
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  br i1 %907, label %1567, label %1575

; <label>:1567                                    ; preds = %1550
  %1568 = fsub fast float 1.000000e+00, %1203
  %1569 = fmul fast float %1568, %895
  %1570 = fmul fast float %1568, %896
  %1571 = fmul fast float %1568, %897
  %1572 = fmul fast float %1568, %898
  %1573 = fmul fast float %1568, %899
  %1574 = fmul fast float %1568, %900
  br label %1575

; <label>:1575                                    ; preds = %1567, %1550
  %1576 = phi float [ %1569, %1567 ], [ %895, %1550 ]
  %1577 = phi float [ %1570, %1567 ], [ %896, %1550 ]
  %1578 = phi float [ %1571, %1567 ], [ %897, %1550 ]
  %1579 = phi float [ %1572, %1567 ], [ %898, %1550 ]
  %1580 = phi float [ %1573, %1567 ], [ %899, %1550 ]
  %1581 = phi float [ %1574, %1567 ], [ %900, %1550 ]
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 3
  %1585 = icmp eq i32 %1584, 3
  br i1 %1585, label %1664, label %1586

; <label>:1586                                    ; preds = %1575
  %1587 = and i32 %1583, 16
  %1588 = icmp ne i32 %1587, 0
  %1589 = select i1 %1588, float %1203, float 0.000000e+00
  %1590 = icmp eq i32 %1584, 0
  br i1 %1590, label %1591, label %1619

; <label>:1591                                    ; preds = %1586
  %1592 = and i32 %1583, 64
  %1593 = icmp ne i32 %1592, 0
  %1594 = select i1 %1593, float %1203, float 0.000000e+00
  %1595 = fsub fast float %1423, %1576
  %1596 = fsub fast float %1424, %1577
  %1597 = fsub fast float %1425, %1578
  %1598 = fmul fast float %1589, %1595
  %1599 = fmul fast float %1589, %1596
  %1600 = fmul fast float %1589, %1597
  %1601 = fadd fast float %1598, %1576
  %1602 = fadd fast float %1599, %1577
  %1603 = fadd fast float %1600, %1578
  %1604 = fsub fast float %1409, %901
  %1605 = fmul fast float %1589, %1604
  %1606 = fadd fast float %1605, %901
  %1607 = fsub fast float %1551, %1579
  %1608 = fsub fast float %1552, %1580
  %1609 = fsub fast float %1553, %1581
  %1610 = fmul fast float %1594, %1607
  %1611 = fmul fast float %1594, %1608
  %1612 = fmul fast float %1594, %1609
  %1613 = fadd fast float %1610, %1579
  %1614 = fadd fast float %1611, %1580
  %1615 = fadd fast float %1612, %1581
  %1616 = fsub fast float %1566, %905
  %1617 = fmul fast float %1589, %1616
  %1618 = fadd fast float %1617, %905
  br label %1664

; <label>:1619                                    ; preds = %1586
  %1620 = icmp eq i32 %1584, 1
  br i1 %1620, label %1621, label %1634

; <label>:1621                                    ; preds = %1619
  %1622 = fadd fast float %1423, -1.000000e+00
  %1623 = fadd fast float %1424, -1.000000e+00
  %1624 = fadd fast float %1425, -1.000000e+00
  %1625 = fmul fast float %1589, %1622
  %1626 = fmul fast float %1589, %1623
  %1627 = fmul fast float %1589, %1624
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fmul fast float %1628, %1576
  %1632 = fmul fast float %1629, %1577
  %1633 = fmul fast float %1630, %1578
  br label %1664

; <label>:1634                                    ; preds = %1619
  %1635 = icmp eq i32 %1584, 2
  br i1 %1635, label %1636, label %1664

; <label>:1636                                    ; preds = %1634
  %1637 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1638 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1639 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fadd fast float %1638, -5.000000e-01
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fmul fast float %1640, %1589
  %1644 = fmul fast float %1641, %1589
  %1645 = fmul fast float %1642, %1589
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fadd fast float %1644, 5.000000e-01
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = fmul fast float %1646, 2.000000e+00
  %1650 = fsub fast float 1.000000e+00, %1649
  %1651 = fmul fast float %1650, %1576
  %1652 = fadd fast float %1651, %1649
  %1653 = fmul fast float %1652, %1576
  %1654 = fmul fast float %1647, 2.000000e+00
  %1655 = fsub fast float 1.000000e+00, %1654
  %1656 = fmul fast float %1655, %1577
  %1657 = fadd fast float %1656, %1654
  %1658 = fmul fast float %1657, %1577
  %1659 = fmul fast float %1648, 2.000000e+00
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = fmul fast float %1660, %1578
  %1662 = fadd fast float %1661, %1659
  %1663 = fmul fast float %1662, %1578
  br label %1664

; <label>:1664                                    ; preds = %1636, %1634, %1621, %1591, %1575
  %1665 = phi float [ %1576, %1575 ], [ %1653, %1636 ], [ %1576, %1634 ], [ %1631, %1621 ], [ %1601, %1591 ]
  %1666 = phi float [ %1577, %1575 ], [ %1658, %1636 ], [ %1577, %1634 ], [ %1632, %1621 ], [ %1602, %1591 ]
  %1667 = phi float [ %1578, %1575 ], [ %1663, %1636 ], [ %1578, %1634 ], [ %1633, %1621 ], [ %1603, %1591 ]
  %1668 = phi float [ %1579, %1575 ], [ %1579, %1636 ], [ %1579, %1634 ], [ %1579, %1621 ], [ %1613, %1591 ]
  %1669 = phi float [ %1580, %1575 ], [ %1580, %1636 ], [ %1580, %1634 ], [ %1580, %1621 ], [ %1614, %1591 ]
  %1670 = phi float [ %1581, %1575 ], [ %1581, %1636 ], [ %1581, %1634 ], [ %1581, %1621 ], [ %1615, %1591 ]
  %1671 = phi float [ %901, %1575 ], [ %901, %1636 ], [ %901, %1634 ], [ %901, %1621 ], [ %1606, %1591 ]
  %1672 = phi float [ %905, %1575 ], [ %905, %1636 ], [ %905, %1634 ], [ %905, %1621 ], [ %1618, %1591 ]
  %1673 = and i32 %1583, 12
  %1674 = icmp eq i32 %1673, 12
  br i1 %1674, label %1747, label %1675

; <label>:1675                                    ; preds = %1664
  %1676 = and i32 %1583, 2097184
  %1677 = icmp eq i32 %1676, 2097184
  %1678 = select i1 %1677, float %1203, float 0.000000e+00
  %1679 = and i32 %1583, 4194336
  %1680 = icmp eq i32 %1679, 4194336
  %1681 = select i1 %1680, float %1203, float 0.000000e+00
  %1682 = and i32 %1583, 8388640
  %1683 = icmp eq i32 %1682, 8388640
  %1684 = select i1 %1683, float %1203, float 0.000000e+00
  %1685 = icmp eq i32 %1673, 0
  br i1 %1685, label %1686, label %1699

; <label>:1686                                    ; preds = %1675
  %1687 = fsub fast float %1504, %893
  %1688 = fsub fast float %1505, %894
  %1689 = fmul fast float %1678, %1687
  %1690 = fmul fast float %1678, %1688
  %1691 = fadd fast float %1689, %893
  %1692 = fadd fast float %1690, %894
  %1693 = fsub fast float %1506, %904
  %1694 = fmul fast float %1681, %1693
  %1695 = fadd fast float %1694, %904
  %1696 = fsub fast float %1503, %903
  %1697 = fmul fast float %1684, %1696
  %1698 = fadd fast float %1697, %903
  br label %1747

; <label>:1699                                    ; preds = %1675
  %1700 = icmp eq i32 %1673, 4
  br i1 %1700, label %1701, label %1733

; <label>:1701                                    ; preds = %1699
  %1702 = fmul fast float %1678, %1504
  %1703 = fmul fast float %1678, %1505
  %1704 = fadd fast float %1702, %893
  %1705 = fadd fast float %1703, %894
  %1706 = call float @dx.op.binary.f32(i32 36, float %904, float %1506)  ; FMin(a,b)
  %1707 = fsub fast float %1706, %904
  %1708 = fmul fast float %1707, %1681
  %1709 = fadd fast float %1708, %904
  %1710 = fadd fast float %1503, %903
  %1711 = fmul fast float %1710, 0x3FF337FAE0000000
  %1712 = fmul fast float %903, %903
  %1713 = fmul fast float %1503, %1503
  %1714 = fadd fast float %1713, %1712
  %1715 = fmul fast float %1714, 0x3FE5152B00000000
  %1716 = fmul fast float %903, 0xBFCC1F85E0000000
  %1717 = fmul fast float %1716, %1503
  %1718 = fadd fast float %1717, 0xBFE1363700000000
  %1719 = fadd fast float %1718, %1711
  %1720 = fsub fast float %1719, %1715
  %1721 = fmul fast float %1710, 0x3FBA6F0D00000000
  %1722 = fmul fast float %1714, 0x3FD0432880000000
  %1723 = fmul fast float %903, 0xBFEF110800000000
  %1724 = fmul fast float %1723, %1503
  %1725 = fadd fast float %1724, 1.000000e+00
  %1726 = fsub fast float %1725, %1721
  %1727 = fadd fast float %1726, %1722
  %1728 = fdiv fast float %1720, %1727
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float %1729, %903
  %1731 = fmul fast float %1730, %1684
  %1732 = fadd fast float %1731, %903
  br label %1747

; <label>:1733                                    ; preds = %1699
  %1734 = icmp eq i32 %1673, 8
  br i1 %1734, label %1735, label %1747

; <label>:1735                                    ; preds = %1733
  %1736 = fmul fast float %1678, %1504
  %1737 = fmul fast float %1678, %1505
  %1738 = fadd fast float %1736, %893
  %1739 = fadd fast float %1737, %894
  %1740 = call float @dx.op.binary.f32(i32 36, float %904, float %1506)  ; FMin(a,b)
  %1741 = fsub fast float %1740, %904
  %1742 = fmul fast float %1741, %1681
  %1743 = fadd fast float %1742, %904
  %1744 = fsub fast float %1503, %903
  %1745 = fmul fast float %1684, %1744
  %1746 = fadd fast float %1745, %903
  br label %1747

; <label>:1747                                    ; preds = %1735, %1733, %1701, %1686, %1664, %1202, %906, %892
  %1748 = phi float [ %893, %1664 ], [ %893, %1202 ], [ %893, %892 ], [ %1738, %1735 ], [ %893, %1733 ], [ %1704, %1701 ], [ %1691, %1686 ], [ %893, %906 ]
  %1749 = phi float [ %894, %1664 ], [ %894, %1202 ], [ %894, %892 ], [ %1739, %1735 ], [ %894, %1733 ], [ %1705, %1701 ], [ %1692, %1686 ], [ %894, %906 ]
  %1750 = phi float [ %1665, %1664 ], [ %895, %1202 ], [ %895, %892 ], [ %1665, %1735 ], [ %1665, %1733 ], [ %1665, %1701 ], [ %1665, %1686 ], [ %895, %906 ]
  %1751 = phi float [ %1666, %1664 ], [ %896, %1202 ], [ %896, %892 ], [ %1666, %1735 ], [ %1666, %1733 ], [ %1666, %1701 ], [ %1666, %1686 ], [ %896, %906 ]
  %1752 = phi float [ %1667, %1664 ], [ %897, %1202 ], [ %897, %892 ], [ %1667, %1735 ], [ %1667, %1733 ], [ %1667, %1701 ], [ %1667, %1686 ], [ %897, %906 ]
  %1753 = phi float [ %1668, %1664 ], [ %898, %1202 ], [ %898, %892 ], [ %1668, %1735 ], [ %1668, %1733 ], [ %1668, %1701 ], [ %1668, %1686 ], [ %898, %906 ]
  %1754 = phi float [ %1669, %1664 ], [ %899, %1202 ], [ %899, %892 ], [ %1669, %1735 ], [ %1669, %1733 ], [ %1669, %1701 ], [ %1669, %1686 ], [ %899, %906 ]
  %1755 = phi float [ %1670, %1664 ], [ %900, %1202 ], [ %900, %892 ], [ %1670, %1735 ], [ %1670, %1733 ], [ %1670, %1701 ], [ %1670, %1686 ], [ %900, %906 ]
  %1756 = phi float [ %1671, %1664 ], [ %901, %1202 ], [ %901, %892 ], [ %1671, %1735 ], [ %1671, %1733 ], [ %1671, %1701 ], [ %1671, %1686 ], [ %901, %906 ]
  %1757 = phi float [ %903, %1664 ], [ %903, %1202 ], [ %903, %892 ], [ %1746, %1735 ], [ %903, %1733 ], [ %1732, %1701 ], [ %1698, %1686 ], [ %903, %906 ]
  %1758 = phi float [ %904, %1664 ], [ %904, %1202 ], [ %904, %892 ], [ %1743, %1735 ], [ %904, %1733 ], [ %1709, %1701 ], [ %1695, %1686 ], [ %904, %906 ]
  %1759 = phi float [ %1672, %1664 ], [ %905, %1202 ], [ %905, %892 ], [ %1672, %1735 ], [ %1672, %1733 ], [ %1672, %1701 ], [ %1672, %1686 ], [ %905, %906 ]
  br i1 %372, label %2601, label %1760

; <label>:1760                                    ; preds = %1747
  %1761 = icmp ult i32 %425, 3
  %1762 = add i32 %43, 56
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %43, 60
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = or i32 %1767, %1764
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %2601, label %1770

; <label>:1770                                    ; preds = %1760
  %1771 = and i32 %1764, 262144
  %1772 = icmp ne i32 %1771, 0
  %1773 = select i1 %1772, float %46, float 1.000000e+00
  %1774 = select i1 %1772, float %47, float 0.000000e+00
  %1775 = select i1 %1772, float %48, float 0.000000e+00
  %1776 = select i1 %1772, float %49, float 1.000000e+00
  %1777 = select i1 %1772, float %50, float %66
  %1778 = select i1 %1772, float %51, float %67
  %1779 = add i32 %43, 316
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = lshr i32 %1781, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = fmul fast float %1783, 0x3F50624DE0000000
  %1785 = add i32 %43, 120
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 16
  %1789 = and i32 %1788, 255
  %1790 = lshr i32 %1787, 24
  %1791 = add i32 %43, 324
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 65535
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = lshr i32 %1793, 16
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = add i32 %43, 64
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = lshr i32 %1800, 22
  %1802 = shl nuw nsw i32 %1801, 5
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = shl i32 %1800, 4
  %1805 = and i32 %1804, 32752
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = lshr i32 %1800, 7
  %1808 = and i32 %1807, 32752
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 3
  %1812 = fmul fast float %1811, 1.000000e+03
  %1813 = fmul fast float %322, %1812
  %1814 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1815 = fadd fast float %1814, %312
  %1816 = fmul fast float %323, %1812
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, %314
  %1819 = fmul fast float %1784, %1812
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = fmul fast float %1820, 0x401921FB60000000
  %1822 = fadd fast float %1821, %1803
  %1823 = call float @dx.op.unary.f32(i32 13, float %1822)  ; Sin(value)
  %1824 = call float @dx.op.unary.f32(i32 12, float %1822)  ; Cos(value)
  %1825 = fsub fast float -0.000000e+00, %1823
  %1826 = fadd fast float %1777, -5.000000e-01
  %1827 = fadd fast float %1778, -5.000000e-01
  %1828 = fmul fast float %1795, %1826
  %1829 = fmul fast float %1797, %1827
  %1830 = fadd fast float %1828, 5.000000e-01
  %1831 = fadd fast float %1829, 5.000000e-01
  %1832 = fmul fast float %1806, %1830
  %1833 = fmul fast float %1809, %1831
  %1834 = fmul fast float %1824, %1832
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1825, float %1833, float %1834)  ; FMad(a,b,c)
  %1836 = fmul fast float %1823, %1832
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1824, float %1833, float %1836)  ; FMad(a,b,c)
  %1838 = fadd fast float %1815, %1835
  %1839 = fadd fast float %1818, %1837
  %1840 = icmp ugt i32 %1789, 1
  %1841 = icmp ugt i32 %1787, 33554431
  %1842 = or i1 %1841, %1840
  br i1 %1842, label %1843, label %1868

; <label>:1843                                    ; preds = %1770
  %1844 = add i32 %43, 260
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 16
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = fmul fast float %1811, %1848
  %1850 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1851 = mul nuw nsw i32 %1789, %1790
  %1852 = uitofp i32 %1851 to float
  %1853 = fmul fast float %1850, %1852
  %1854 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1855 = fptoui float %1854 to i32
  %1856 = urem i32 %1855, %1789
  %1857 = udiv i32 %1855, %1790
  %1858 = call float @dx.op.unary.f32(i32 22, float %1838)  ; Frc(value)
  %1859 = call float @dx.op.unary.f32(i32 22, float %1839)  ; Frc(value)
  %1860 = uitofp i32 %1856 to float
  %1861 = uitofp i32 %1857 to float
  %1862 = fadd fast float %1858, %1860
  %1863 = fadd fast float %1859, %1861
  %1864 = uitofp i32 %1789 to float
  %1865 = uitofp i32 %1790 to float
  %1866 = fdiv fast float %1862, %1864
  %1867 = fdiv fast float %1863, %1865
  br label %1868

; <label>:1868                                    ; preds = %1843, %1770
  %1869 = phi float [ %1866, %1843 ], [ %1838, %1770 ]
  %1870 = phi float [ %1867, %1843 ], [ %1839, %1770 ]
  %1871 = and i32 %1764, 16777216
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1982, label %1873

; <label>:1873                                    ; preds = %1868
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1878 = fadd fast float %1875, %141
  %1879 = fadd fast float %1876, %142
  %1880 = fadd fast float %1877, %143
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1884 = icmp eq i32 %44, 65535
  br i1 %1884, label %1979, label %1885

; <label>:1885                                    ; preds = %1873
  %1886 = lshr i32 %44, 1
  %1887 = shl i32 %1886, 2
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %44, 1
  %1891 = icmp ne i32 %1890, 0
  %1892 = lshr i32 %1889, 16
  %1893 = and i32 %1889, 65535
  %1894 = select i1 %1891, i32 %1892, i32 %1893
  %1895 = icmp eq i32 %1894, 65535
  br i1 %1895, label %1975, label %1896

; <label>:1896                                    ; preds = %1885
  %1897 = mul nuw nsw i32 %1894, 40
  %1898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = add nuw nsw i32 %1897, 12
  %1903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.ResRet.f32 %1903, 1
  %1906 = extractvalue %dx.types.ResRet.f32 %1903, 2
  %1907 = add nuw nsw i32 %1897, 24
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = add nuw nsw i32 %1897, 36
  %1913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = fsub fast float %1878, %1899
  %1916 = fsub fast float %1879, %1900
  %1917 = fsub fast float %1880, %1901
  %1918 = fmul fast float %1914, %1915
  %1919 = fmul fast float %1914, %1916
  %1920 = fmul fast float %1914, %1917
  %1921 = call float @dx.op.unary.f32(i32 27, float %1918)  ; Round_ni(value)
  %1922 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fmul fast float %1924, %1904
  %1928 = fmul fast float %1925, %1905
  %1929 = fmul fast float %1926, %1906
  %1930 = shl i32 %44, 2
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1932, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1934, %dx.types.Handle %40, float %1935, float %1936, float %1937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = fmul fast float %1939, 1.023000e+03
  %1943 = fmul fast float %1940, 1.023000e+03
  %1944 = fmul fast float %1941, 1.023000e+03
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1949 = call float @dx.op.unary.f32(i32 27, float %1946)  ; Round_ni(value)
  %1950 = call float @dx.op.unary.f32(i32 27, float %1947)  ; Round_ni(value)
  %1951 = fsub fast float %1918, %1921
  %1952 = fsub fast float %1919, %1922
  %1953 = fsub fast float %1920, %1923
  %1954 = fmul fast float %1951, 7.500000e-01
  %1955 = fmul fast float %1952, 7.500000e-01
  %1956 = fmul fast float %1953, 7.500000e-01
  %1957 = fadd fast float %1921, 1.250000e-01
  %1958 = fadd fast float %1957, %1954
  %1959 = fadd fast float %1958, %1948
  %1960 = fadd fast float %1922, 1.250000e-01
  %1961 = fadd fast float %1960, %1955
  %1962 = fadd fast float %1961, %1949
  %1963 = fadd fast float %1923, 1.250000e-01
  %1964 = fadd fast float %1963, %1956
  %1965 = fadd fast float %1964, %1950
  %1966 = fmul fast float %1959, %1909
  %1967 = fmul fast float %1962, %1910
  %1968 = fmul fast float %1965, %1911
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %1970, 0
  %1972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1972, %dx.types.Handle %38, float %1966, float %1967, float %1968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  br label %1975

; <label>:1975                                    ; preds = %1896, %1885
  %1976 = phi float [ %1974, %1896 ], [ -1.000000e+00, %1885 ]
  %1977 = fadd fast float %1976, %1883
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  br label %1979

; <label>:1979                                    ; preds = %1975, %1873
  %1980 = phi float [ %1978, %1975 ], [ %1883, %1873 ]
  %1981 = fmul fast float %1980, %421
  br label %1982

; <label>:1982                                    ; preds = %1979, %1868
  %1983 = phi float [ %1981, %1979 ], [ %421, %1868 ]
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 256
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2034, label %1988

; <label>:1988                                    ; preds = %1982
  %1989 = add i32 %43, 448
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = add i32 %1991, 0
  %1993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1993, %dx.types.Handle %75, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = add i32 %43, 132
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = lshr i32 %1998, 7
  %2003 = and i32 %2002, 32752
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = fsub fast float 1.000000e+00, %1983
  %2006 = call float @dx.op.binary.f32(i32 35, float %2005, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2007 = bitcast float %1983 to i32
  %2008 = sitofp i32 %2007 to float
  %2009 = fadd fast float %2008, 0xC1CFBF8940000000
  %2010 = fmul fast float %2004, %2009
  %2011 = fadd fast float %2010, 0x41CFBF8940000000
  %2012 = fptosi float %2011 to i32
  %2013 = bitcast i32 %2012 to float
  %2014 = bitcast float %2006 to i32
  %2015 = sitofp i32 %2014 to float
  %2016 = fadd fast float %2015, 0xC1CFBF8940000000
  %2017 = fmul fast float %2016, %2004
  %2018 = fadd fast float %2017, 0x41CFBF8940000000
  %2019 = fptosi float %2018 to i32
  %2020 = bitcast i32 %2019 to float
  %2021 = fmul fast float %2013, %2001
  %2022 = fmul fast float %2020, %2001
  %2023 = fsub fast float %2006, %2021
  %2024 = fadd fast float %2022, %2006
  %2025 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2027 = fsub fast float %1995, %2025
  %2028 = fsub fast float %2026, %2025
  %2029 = bitcast float %2028 to i32
  %2030 = sub nsw i32 2129859010, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %2031, %2027
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  br label %2034

; <label>:2034                                    ; preds = %1988, %1982
  %2035 = phi float [ %2033, %1988 ], [ %1983, %1982 ]
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 128
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2056, label %2040

; <label>:2040                                    ; preds = %2034
  %2041 = add i32 %43, 432
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2045, %dx.types.Handle %75, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 524288
  %2051 = icmp ne i32 %2050, 0
  %2052 = fcmp fast ogt float %2047, 0x3FE0101020000000
  %2053 = select i1 %2052, float 1.000000e+00, float 0.000000e+00
  %2054 = select i1 %2051, float %2053, float %2047
  %2055 = fmul fast float %2054, %2035
  br label %2056

; <label>:2056                                    ; preds = %2040, %2034
  %2057 = phi float [ %2055, %2040 ], [ %2035, %2034 ]
  %2058 = fcmp fast ult float %2057, 0x3F70101020000000
  br i1 %2058, label %2601, label %2059

; <label>:2059                                    ; preds = %2056
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 16
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2262, label %2064

; <label>:2064                                    ; preds = %2059
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = add i32 %43, 384
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2071, %dx.types.Handle %74, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.ResRet.f32 %2072, 3
  %2077 = and i32 %2066, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = lshr i32 %2066, 8
  %2080 = and i32 %2079, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2076, %2078
  %2083 = fadd fast float %2082, %2081
  %2084 = fmul fast float %2083, 0x3F70101000000000
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 512
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2097, label %2089

; <label>:2089                                    ; preds = %2064
  %2090 = add i32 %43, 468
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2092, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2094, %dx.types.Handle %75, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  br label %2097

; <label>:2097                                    ; preds = %2089, %2064
  %2098 = phi float [ %2096, %2089 ], [ 1.000000e+00, %2064 ]
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 33554432
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2209, label %2103

; <label>:2103                                    ; preds = %2097
  %2104 = add i32 %43, 256
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 65535
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2106, 16
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = add i32 %43, 260
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %2113, 65535
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = lshr i32 %2117, 24
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = and i32 %2117, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = lshr i32 %2117, 8
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = lshr i32 %2117, 16
  %2129 = and i32 %2128, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = add i32 %43, 252
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = lshr i32 %2134, 24
  %2136 = uitofp i32 %2135 to float
  %2137 = fmul fast float %2136, 0x3F70101020000000
  %2138 = and i32 %2134, 255
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2139, 0x3F70101020000000
  %2141 = lshr i32 %2134, 8
  %2142 = and i32 %2141, 255
  %2143 = uitofp i32 %2142 to float
  %2144 = fmul fast float %2143, 0x3F70101020000000
  %2145 = lshr i32 %2134, 16
  %2146 = and i32 %2145, 255
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2147, 0x3F70101020000000
  %2149 = bitcast float %2073 to i32
  %2150 = ashr i32 %2149, 1
  %2151 = sub nsw i32 1597463174, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2073, 5.000000e-01
  %2154 = fmul fast float %2152, %2152
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float 1.500000e+00, %2155
  %2157 = fmul fast float %2152, %2073
  %2158 = fmul fast float %2157, %2156
  %2159 = bitcast float %2074 to i32
  %2160 = ashr i32 %2159, 1
  %2161 = sub nsw i32 1597463174, %2160
  %2162 = bitcast i32 %2161 to float
  %2163 = fmul fast float %2074, 5.000000e-01
  %2164 = fmul fast float %2162, %2162
  %2165 = fmul fast float %2164, %2163
  %2166 = fsub fast float 1.500000e+00, %2165
  %2167 = fmul fast float %2162, %2074
  %2168 = fmul fast float %2167, %2166
  %2169 = bitcast float %2075 to i32
  %2170 = ashr i32 %2169, 1
  %2171 = sub nsw i32 1597463174, %2170
  %2172 = bitcast i32 %2171 to float
  %2173 = fmul fast float %2075, 5.000000e-01
  %2174 = fmul fast float %2172, %2172
  %2175 = fmul fast float %2174, %2173
  %2176 = fsub fast float 1.500000e+00, %2175
  %2177 = fmul fast float %2172, %2075
  %2178 = fmul fast float %2177, %2176
  %2179 = fsub fast float %2158, %2140
  %2180 = fsub fast float %2168, %2144
  %2181 = fsub fast float %2178, %2148
  %2182 = fmul fast float %2179, %2108
  %2183 = fmul fast float %2180, %2110
  %2184 = fmul fast float %2181, %2115
  %2185 = fadd fast float %2182, %2123
  %2186 = fadd fast float %2183, %2127
  %2187 = fadd fast float %2184, %2131
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = fmul fast float %2188, %2188
  %2192 = fmul fast float %2189, %2189
  %2193 = fmul fast float %2190, %2190
  %2194 = fsub fast float %2191, %2073
  %2195 = fsub fast float %2192, %2074
  %2196 = fsub fast float %2193, %2075
  %2197 = fmul fast float %2194, %2098
  %2198 = fmul fast float %2195, %2098
  %2199 = fmul fast float %2196, %2098
  %2200 = fadd fast float %2197, %2073
  %2201 = fadd fast float %2198, %2074
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2120, %2084
  %2204 = fsub fast float %2203, %2137
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float %2205, %2084
  %2207 = fmul fast float %2206, %2098
  %2208 = fadd fast float %2207, %2084
  br label %2262

; <label>:2209                                    ; preds = %2097
  %2210 = and i32 %2100, 134217728
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2246, label %2212

; <label>:2212                                    ; preds = %2209
  %2213 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2215 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2216 = fadd fast float %2213, -5.000000e-01
  %2217 = fadd fast float %2214, -5.000000e-01
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fmul fast float %2216, %2098
  %2220 = fmul fast float %2217, %2098
  %2221 = fmul fast float %2218, %2098
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = fadd fast float %2220, 5.000000e-01
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2226 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = fmul fast float %2222, 2.000000e+00
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = fmul fast float %2229, %2225
  %2231 = fadd fast float %2230, %2228
  %2232 = fmul fast float %2231, %2225
  %2233 = fmul fast float %2223, 2.000000e+00
  %2234 = fsub fast float 1.000000e+00, %2233
  %2235 = fmul fast float %2234, %2226
  %2236 = fadd fast float %2235, %2233
  %2237 = fmul fast float %2236, %2226
  %2238 = fmul fast float %2224, 2.000000e+00
  %2239 = fsub fast float 1.000000e+00, %2238
  %2240 = fmul fast float %2239, %2227
  %2241 = fadd fast float %2240, %2238
  %2242 = fmul fast float %2241, %2227
  %2243 = fmul fast float %2232, %2232
  %2244 = fmul fast float %2237, %2237
  %2245 = fmul fast float %2242, %2242
  br label %2262

; <label>:2246                                    ; preds = %2209
  %2247 = fmul fast float %299, %299
  %2248 = fmul fast float %303, %303
  %2249 = fmul fast float %307, %307
  %2250 = fadd fast float %2247, -1.000000e+00
  %2251 = fadd fast float %2248, -1.000000e+00
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fmul fast float %2098, %2250
  %2254 = fmul fast float %2098, %2251
  %2255 = fmul fast float %2098, %2252
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fadd fast float %2254, 1.000000e+00
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fmul fast float %2256, %2073
  %2260 = fmul fast float %2257, %2074
  %2261 = fmul fast float %2258, %2075
  br label %2262

; <label>:2262                                    ; preds = %2246, %2212, %2103, %2059
  %2263 = phi float [ %2208, %2103 ], [ %2084, %2212 ], [ %2084, %2246 ], [ 0x3FA23C0BE0000000, %2059 ]
  %2264 = phi float [ %2200, %2103 ], [ %2243, %2212 ], [ %2259, %2246 ], [ 1.000000e+00, %2059 ]
  %2265 = phi float [ %2201, %2103 ], [ %2244, %2212 ], [ %2260, %2246 ], [ 1.000000e+00, %2059 ]
  %2266 = phi float [ %2202, %2103 ], [ %2245, %2212 ], [ %2261, %2246 ], [ 1.000000e+00, %2059 ]
  %2267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.i32 %2267, 1
  %2269 = and i32 %2268, 1
  %2270 = icmp ne i32 %2269, 0
  %2271 = add i32 %43, 356
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 32
  %2275 = icmp ne i32 %2274, 0
  %2276 = and i1 %2270, %2275
  %2277 = select i1 %2276, float 1.000000e+00, float %2264
  %2278 = select i1 %2276, float 0x3FD3333340000000, float %2265
  %2279 = select i1 %2276, float 0x3FD3333340000000, float %2266
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 32
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2356, label %2284

; <label>:2284                                    ; preds = %2262
  %2285 = add i32 %43, 124
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %43, 400
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %74, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = extractvalue %dx.types.ResRet.f32 %2293, 3
  %2298 = and i32 %2287, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = lshr i32 %2287, 8
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2287, 16
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101000000000
  %2307 = fmul fast float %2294, %2299
  %2308 = fadd fast float %2307, %2302
  %2309 = fmul fast float %2308, 0x3F70101000000000
  %2310 = fadd fast float %2295, -5.000000e-01
  %2311 = fadd fast float %2297, -5.000000e-01
  %2312 = fmul fast float %2310, %2306
  %2313 = fmul fast float %2311, %2306
  %2314 = fadd fast float %2312, 5.000000e-01
  %2315 = fadd fast float %2313, 5.000000e-01
  %2316 = fmul fast float %2314, 2.000000e+00
  %2317 = fadd fast float %2316, -1.000000e+00
  %2318 = fmul fast float %2315, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = fadd fast float %2317, %2319
  %2321 = fmul fast float %2320, 5.000000e-01
  %2322 = fsub fast float %2317, %2319
  %2323 = fmul fast float %2322, 5.000000e-01
  %2324 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2325 = fsub fast float 1.000000e+00, %2324
  %2326 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2327 = fsub fast float %2325, %2326
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2323, float %2327, float %2321, float %2323, float %2327)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = call float @dx.op.unary.f32(i32 25, float %2328)  ; Rsqrt(value)
  %2330 = fmul fast float %2321, %2329
  %2331 = fmul fast float %2323, %2329
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 67108864
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2352, label %2336

; <label>:2336                                    ; preds = %2284
  %2337 = add i32 %43, 312
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = lshr i32 %2339, 16
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = fsub fast float %2309, %2347
  %2349 = fmul fast float %2348, %2341
  %2350 = fadd fast float %2349, %2345
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  br label %2352

; <label>:2352                                    ; preds = %2336, %2284
  %2353 = phi float [ %2351, %2336 ], [ %2309, %2284 ]
  %2354 = call float @dx.op.dot2.f32(i32 54, float %2330, float %2331, float %1773, float %1774)  ; Dot2(ax,ay,bx,by)
  %2355 = call float @dx.op.dot2.f32(i32 54, float %2330, float %2331, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  br label %2356

; <label>:2356                                    ; preds = %2352, %2262
  %2357 = phi float [ %2353, %2352 ], [ 0x3FD6666660000000, %2262 ]
  %2358 = phi float [ %2354, %2352 ], [ 0.000000e+00, %2262 ]
  %2359 = phi float [ %2355, %2352 ], [ 0.000000e+00, %2262 ]
  %2360 = phi float [ %2296, %2352 ], [ 1.000000e+00, %2262 ]
  %2361 = add i32 %43, 192
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = lshr i32 %2363, 22
  %2365 = shl nuw nsw i32 %2364, 5
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 64
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2404, label %2371

; <label>:2371                                    ; preds = %2356
  %2372 = add i32 %43, 416
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = add i32 %2374, 0
  %2376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 131072
  %2380 = icmp eq i32 %2379, 0
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2376, %dx.types.Handle %74, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = fmul fast float %2382, %287
  %2386 = fmul fast float %2383, %290
  %2387 = fmul fast float %2384, %293
  br i1 %2380, label %2394, label %2388

; <label>:2388                                    ; preds = %2371
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = fmul fast float %2390, %2385
  %2392 = fmul fast float %2390, %2386
  %2393 = fmul fast float %2390, %2387
  br label %2394

; <label>:2394                                    ; preds = %2388, %2371
  %2395 = phi float [ %2391, %2388 ], [ %2385, %2371 ]
  %2396 = phi float [ %2392, %2388 ], [ %2386, %2371 ]
  %2397 = phi float [ %2393, %2388 ], [ %2387, %2371 ]
  %2398 = fmul fast float %2395, %2366
  %2399 = select i1 %183, float %2398, float %2395
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2396, float %2397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = select i1 %183, float 0.000000e+00, float %2395
  %2402 = select i1 %183, float %2400, float %2396
  %2403 = select i1 %183, float 0.000000e+00, float %2397
  br label %2404

; <label>:2404                                    ; preds = %2394, %2356
  %2405 = phi float [ %2401, %2394 ], [ 0.000000e+00, %2356 ]
  %2406 = phi float [ %2402, %2394 ], [ 0.000000e+00, %2356 ]
  %2407 = phi float [ %2403, %2394 ], [ 0.000000e+00, %2356 ]
  %2408 = add i32 %43, 128
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = lshr i32 %2410, 8
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = call float @dx.op.dot3.f32(i32 55, float %2277, float %2278, float %2279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2417 = fmul fast float %2415, %2416
  %2418 = fadd fast float %2417, %2412
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  br i1 %1761, label %2421, label %2429

; <label>:2421                                    ; preds = %2404
  %2422 = fsub fast float 1.000000e+00, %2057
  %2423 = fmul fast float %2422, %1750
  %2424 = fmul fast float %2422, %1751
  %2425 = fmul fast float %2422, %1752
  %2426 = fmul fast float %2422, %1753
  %2427 = fmul fast float %2422, %1754
  %2428 = fmul fast float %2422, %1755
  br label %2429

; <label>:2429                                    ; preds = %2421, %2404
  %2430 = phi float [ %2423, %2421 ], [ %1750, %2404 ]
  %2431 = phi float [ %2424, %2421 ], [ %1751, %2404 ]
  %2432 = phi float [ %2425, %2421 ], [ %1752, %2404 ]
  %2433 = phi float [ %2426, %2421 ], [ %1753, %2404 ]
  %2434 = phi float [ %2427, %2421 ], [ %1754, %2404 ]
  %2435 = phi float [ %2428, %2421 ], [ %1755, %2404 ]
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 3
  %2439 = icmp eq i32 %2438, 3
  br i1 %2439, label %2518, label %2440

; <label>:2440                                    ; preds = %2429
  %2441 = and i32 %2437, 16
  %2442 = icmp ne i32 %2441, 0
  %2443 = select i1 %2442, float %2057, float 0.000000e+00
  %2444 = icmp eq i32 %2438, 0
  br i1 %2444, label %2445, label %2473

; <label>:2445                                    ; preds = %2440
  %2446 = and i32 %2437, 64
  %2447 = icmp ne i32 %2446, 0
  %2448 = select i1 %2447, float %2057, float 0.000000e+00
  %2449 = fsub fast float %2277, %2430
  %2450 = fsub fast float %2278, %2431
  %2451 = fsub fast float %2279, %2432
  %2452 = fmul fast float %2443, %2449
  %2453 = fmul fast float %2443, %2450
  %2454 = fmul fast float %2443, %2451
  %2455 = fadd fast float %2452, %2430
  %2456 = fadd fast float %2453, %2431
  %2457 = fadd fast float %2454, %2432
  %2458 = fsub fast float %2263, %1756
  %2459 = fmul fast float %2443, %2458
  %2460 = fadd fast float %2459, %1756
  %2461 = fsub fast float %2405, %2433
  %2462 = fsub fast float %2406, %2434
  %2463 = fsub fast float %2407, %2435
  %2464 = fmul fast float %2448, %2461
  %2465 = fmul fast float %2448, %2462
  %2466 = fmul fast float %2448, %2463
  %2467 = fadd fast float %2464, %2433
  %2468 = fadd fast float %2465, %2434
  %2469 = fadd fast float %2466, %2435
  %2470 = fsub fast float %2420, %1759
  %2471 = fmul fast float %2443, %2470
  %2472 = fadd fast float %2471, %1759
  br label %2518

; <label>:2473                                    ; preds = %2440
  %2474 = icmp eq i32 %2438, 1
  br i1 %2474, label %2475, label %2488

; <label>:2475                                    ; preds = %2473
  %2476 = fadd fast float %2277, -1.000000e+00
  %2477 = fadd fast float %2278, -1.000000e+00
  %2478 = fadd fast float %2279, -1.000000e+00
  %2479 = fmul fast float %2443, %2476
  %2480 = fmul fast float %2443, %2477
  %2481 = fmul fast float %2443, %2478
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fadd fast float %2480, 1.000000e+00
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fmul fast float %2482, %2430
  %2486 = fmul fast float %2483, %2431
  %2487 = fmul fast float %2484, %2432
  br label %2518

; <label>:2488                                    ; preds = %2473
  %2489 = icmp eq i32 %2438, 2
  br i1 %2489, label %2490, label %2518

; <label>:2490                                    ; preds = %2488
  %2491 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %2278)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fmul fast float %2494, %2443
  %2498 = fmul fast float %2495, %2443
  %2499 = fmul fast float %2496, %2443
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fmul fast float %2500, 2.000000e+00
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2504, %2430
  %2506 = fadd fast float %2505, %2503
  %2507 = fmul fast float %2506, %2430
  %2508 = fmul fast float %2501, 2.000000e+00
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2509, %2431
  %2511 = fadd fast float %2510, %2508
  %2512 = fmul fast float %2511, %2431
  %2513 = fmul fast float %2502, 2.000000e+00
  %2514 = fsub fast float 1.000000e+00, %2513
  %2515 = fmul fast float %2514, %2432
  %2516 = fadd fast float %2515, %2513
  %2517 = fmul fast float %2516, %2432
  br label %2518

; <label>:2518                                    ; preds = %2490, %2488, %2475, %2445, %2429
  %2519 = phi float [ %2430, %2429 ], [ %2507, %2490 ], [ %2430, %2488 ], [ %2485, %2475 ], [ %2455, %2445 ]
  %2520 = phi float [ %2431, %2429 ], [ %2512, %2490 ], [ %2431, %2488 ], [ %2486, %2475 ], [ %2456, %2445 ]
  %2521 = phi float [ %2432, %2429 ], [ %2517, %2490 ], [ %2432, %2488 ], [ %2487, %2475 ], [ %2457, %2445 ]
  %2522 = phi float [ %2433, %2429 ], [ %2433, %2490 ], [ %2433, %2488 ], [ %2433, %2475 ], [ %2467, %2445 ]
  %2523 = phi float [ %2434, %2429 ], [ %2434, %2490 ], [ %2434, %2488 ], [ %2434, %2475 ], [ %2468, %2445 ]
  %2524 = phi float [ %2435, %2429 ], [ %2435, %2490 ], [ %2435, %2488 ], [ %2435, %2475 ], [ %2469, %2445 ]
  %2525 = phi float [ %1756, %2429 ], [ %1756, %2490 ], [ %1756, %2488 ], [ %1756, %2475 ], [ %2460, %2445 ]
  %2526 = phi float [ %1759, %2429 ], [ %1759, %2490 ], [ %1759, %2488 ], [ %1759, %2475 ], [ %2472, %2445 ]
  %2527 = and i32 %2437, 12
  %2528 = icmp eq i32 %2527, 12
  br i1 %2528, label %2601, label %2529

; <label>:2529                                    ; preds = %2518
  %2530 = and i32 %2437, 2097184
  %2531 = icmp eq i32 %2530, 2097184
  %2532 = select i1 %2531, float %2057, float 0.000000e+00
  %2533 = and i32 %2437, 4194336
  %2534 = icmp eq i32 %2533, 4194336
  %2535 = select i1 %2534, float %2057, float 0.000000e+00
  %2536 = and i32 %2437, 8388640
  %2537 = icmp eq i32 %2536, 8388640
  %2538 = select i1 %2537, float %2057, float 0.000000e+00
  %2539 = icmp eq i32 %2527, 0
  br i1 %2539, label %2540, label %2553

; <label>:2540                                    ; preds = %2529
  %2541 = fsub fast float %2358, %1748
  %2542 = fsub fast float %2359, %1749
  %2543 = fmul fast float %2532, %2541
  %2544 = fmul fast float %2532, %2542
  %2545 = fadd fast float %2543, %1748
  %2546 = fadd fast float %2544, %1749
  %2547 = fsub fast float %2360, %1758
  %2548 = fmul fast float %2535, %2547
  %2549 = fadd fast float %2548, %1758
  %2550 = fsub fast float %2357, %1757
  %2551 = fmul fast float %2538, %2550
  %2552 = fadd fast float %2551, %1757
  br label %2601

; <label>:2553                                    ; preds = %2529
  %2554 = icmp eq i32 %2527, 4
  br i1 %2554, label %2555, label %2587

; <label>:2555                                    ; preds = %2553
  %2556 = fmul fast float %2532, %2358
  %2557 = fmul fast float %2532, %2359
  %2558 = fadd fast float %2556, %1748
  %2559 = fadd fast float %2557, %1749
  %2560 = call float @dx.op.binary.f32(i32 36, float %1758, float %2360)  ; FMin(a,b)
  %2561 = fsub fast float %2560, %1758
  %2562 = fmul fast float %2561, %2535
  %2563 = fadd fast float %2562, %1758
  %2564 = fadd fast float %2357, %1757
  %2565 = fmul fast float %2564, 0x3FF337FAE0000000
  %2566 = fmul fast float %1757, %1757
  %2567 = fmul fast float %2357, %2357
  %2568 = fadd fast float %2567, %2566
  %2569 = fmul fast float %2568, 0x3FE5152B00000000
  %2570 = fmul fast float %1757, 0xBFCC1F85E0000000
  %2571 = fmul fast float %2570, %2357
  %2572 = fadd fast float %2571, 0xBFE1363700000000
  %2573 = fadd fast float %2572, %2565
  %2574 = fsub fast float %2573, %2569
  %2575 = fmul fast float %2564, 0x3FBA6F0D00000000
  %2576 = fmul fast float %2568, 0x3FD0432880000000
  %2577 = fmul fast float %1757, 0xBFEF110800000000
  %2578 = fmul fast float %2577, %2357
  %2579 = fadd fast float %2578, 1.000000e+00
  %2580 = fsub fast float %2579, %2575
  %2581 = fadd fast float %2580, %2576
  %2582 = fdiv fast float %2574, %2581
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fsub fast float %2583, %1757
  %2585 = fmul fast float %2584, %2538
  %2586 = fadd fast float %2585, %1757
  br label %2601

; <label>:2587                                    ; preds = %2553
  %2588 = icmp eq i32 %2527, 8
  br i1 %2588, label %2589, label %2601

; <label>:2589                                    ; preds = %2587
  %2590 = fmul fast float %2532, %2358
  %2591 = fmul fast float %2532, %2359
  %2592 = fadd fast float %2590, %1748
  %2593 = fadd fast float %2591, %1749
  %2594 = call float @dx.op.binary.f32(i32 36, float %1758, float %2360)  ; FMin(a,b)
  %2595 = fsub fast float %2594, %1758
  %2596 = fmul fast float %2595, %2535
  %2597 = fadd fast float %2596, %1758
  %2598 = fsub fast float %2357, %1757
  %2599 = fmul fast float %2538, %2598
  %2600 = fadd fast float %2599, %1757
  br label %2601

; <label>:2601                                    ; preds = %2589, %2587, %2555, %2540, %2518, %2056, %1760, %1747
  %2602 = phi float [ %1748, %2518 ], [ %1748, %2056 ], [ %1748, %1747 ], [ %2592, %2589 ], [ %1748, %2587 ], [ %2558, %2555 ], [ %2545, %2540 ], [ %1748, %1760 ]
  %2603 = phi float [ %1749, %2518 ], [ %1749, %2056 ], [ %1749, %1747 ], [ %2593, %2589 ], [ %1749, %2587 ], [ %2559, %2555 ], [ %2546, %2540 ], [ %1749, %1760 ]
  %2604 = phi float [ %2519, %2518 ], [ %1750, %2056 ], [ %1750, %1747 ], [ %2519, %2589 ], [ %2519, %2587 ], [ %2519, %2555 ], [ %2519, %2540 ], [ %1750, %1760 ]
  %2605 = phi float [ %2520, %2518 ], [ %1751, %2056 ], [ %1751, %1747 ], [ %2520, %2589 ], [ %2520, %2587 ], [ %2520, %2555 ], [ %2520, %2540 ], [ %1751, %1760 ]
  %2606 = phi float [ %2521, %2518 ], [ %1752, %2056 ], [ %1752, %1747 ], [ %2521, %2589 ], [ %2521, %2587 ], [ %2521, %2555 ], [ %2521, %2540 ], [ %1752, %1760 ]
  %2607 = phi float [ %2522, %2518 ], [ %1753, %2056 ], [ %1753, %1747 ], [ %2522, %2589 ], [ %2522, %2587 ], [ %2522, %2555 ], [ %2522, %2540 ], [ %1753, %1760 ]
  %2608 = phi float [ %2523, %2518 ], [ %1754, %2056 ], [ %1754, %1747 ], [ %2523, %2589 ], [ %2523, %2587 ], [ %2523, %2555 ], [ %2523, %2540 ], [ %1754, %1760 ]
  %2609 = phi float [ %2524, %2518 ], [ %1755, %2056 ], [ %1755, %1747 ], [ %2524, %2589 ], [ %2524, %2587 ], [ %2524, %2555 ], [ %2524, %2540 ], [ %1755, %1760 ]
  %2610 = phi float [ %2525, %2518 ], [ %1756, %2056 ], [ %1756, %1747 ], [ %2525, %2589 ], [ %2525, %2587 ], [ %2525, %2555 ], [ %2525, %2540 ], [ %1756, %1760 ]
  %2611 = phi float [ %1757, %2518 ], [ %1757, %2056 ], [ %1757, %1747 ], [ %2600, %2589 ], [ %1757, %2587 ], [ %2586, %2555 ], [ %2552, %2540 ], [ %1757, %1760 ]
  %2612 = phi float [ %1758, %2518 ], [ %1758, %2056 ], [ %1758, %1747 ], [ %2597, %2589 ], [ %1758, %2587 ], [ %2563, %2555 ], [ %2549, %2540 ], [ %1758, %1760 ]
  %2613 = phi float [ %2526, %2518 ], [ %1759, %2056 ], [ %1759, %1747 ], [ %2526, %2589 ], [ %2526, %2587 ], [ %2526, %2555 ], [ %2526, %2540 ], [ %1759, %1760 ]
  br i1 %374, label %3455, label %2614

; <label>:2614                                    ; preds = %2601
  %2615 = icmp ult i32 %425, 4
  %2616 = add i32 %43, 72
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %43, 76
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = or i32 %2621, %2618
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %3455, label %2624

; <label>:2624                                    ; preds = %2614
  %2625 = and i32 %2618, 262144
  %2626 = icmp ne i32 %2625, 0
  %2627 = select i1 %2626, float %46, float 1.000000e+00
  %2628 = select i1 %2626, float %47, float 0.000000e+00
  %2629 = select i1 %2626, float %48, float 0.000000e+00
  %2630 = select i1 %2626, float %49, float 1.000000e+00
  %2631 = select i1 %2626, float %50, float %66
  %2632 = select i1 %2626, float %51, float %67
  %2633 = add i32 %43, 332
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = lshr i32 %2635, 16
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = fmul fast float %2637, 0x3F50624DE0000000
  %2639 = add i32 %43, 136
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 16
  %2643 = and i32 %2642, 255
  %2644 = lshr i32 %2641, 24
  %2645 = add i32 %43, 340
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 65535
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = lshr i32 %2647, 16
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = add i32 %43, 80
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = lshr i32 %2654, 22
  %2656 = shl nuw nsw i32 %2655, 5
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = shl i32 %2654, 4
  %2659 = and i32 %2658, 32752
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = lshr i32 %2654, 7
  %2662 = and i32 %2661, 32752
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2665 = extractvalue %dx.types.CBufRet.f32 %2664, 3
  %2666 = fmul fast float %2665, 1.000000e+03
  %2667 = fmul fast float %364, %2666
  %2668 = call float @dx.op.unary.f32(i32 22, float %2667)  ; Frc(value)
  %2669 = fadd fast float %2668, %354
  %2670 = fmul fast float %365, %2666
  %2671 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2672 = fadd fast float %2671, %356
  %2673 = fmul fast float %2638, %2666
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = fmul fast float %2674, 0x401921FB60000000
  %2676 = fadd fast float %2675, %2657
  %2677 = call float @dx.op.unary.f32(i32 13, float %2676)  ; Sin(value)
  %2678 = call float @dx.op.unary.f32(i32 12, float %2676)  ; Cos(value)
  %2679 = fsub fast float -0.000000e+00, %2677
  %2680 = fadd fast float %2631, -5.000000e-01
  %2681 = fadd fast float %2632, -5.000000e-01
  %2682 = fmul fast float %2649, %2680
  %2683 = fmul fast float %2651, %2681
  %2684 = fadd fast float %2682, 5.000000e-01
  %2685 = fadd fast float %2683, 5.000000e-01
  %2686 = fmul fast float %2660, %2684
  %2687 = fmul fast float %2663, %2685
  %2688 = fmul fast float %2678, %2686
  %2689 = call float @dx.op.tertiary.f32(i32 46, float %2679, float %2687, float %2688)  ; FMad(a,b,c)
  %2690 = fmul fast float %2677, %2686
  %2691 = call float @dx.op.tertiary.f32(i32 46, float %2678, float %2687, float %2690)  ; FMad(a,b,c)
  %2692 = fadd fast float %2669, %2689
  %2693 = fadd fast float %2672, %2691
  %2694 = icmp ugt i32 %2643, 1
  %2695 = icmp ugt i32 %2641, 33554431
  %2696 = or i1 %2695, %2694
  br i1 %2696, label %2697, label %2722

; <label>:2697                                    ; preds = %2624
  %2698 = add i32 %43, 276
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = lshr i32 %2700, 16
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = fmul fast float %2665, %2702
  %2704 = call float @dx.op.unary.f32(i32 22, float %2703)  ; Frc(value)
  %2705 = mul nuw nsw i32 %2643, %2644
  %2706 = uitofp i32 %2705 to float
  %2707 = fmul fast float %2704, %2706
  %2708 = call float @dx.op.unary.f32(i32 27, float %2707)  ; Round_ni(value)
  %2709 = fptoui float %2708 to i32
  %2710 = urem i32 %2709, %2643
  %2711 = udiv i32 %2709, %2644
  %2712 = call float @dx.op.unary.f32(i32 22, float %2692)  ; Frc(value)
  %2713 = call float @dx.op.unary.f32(i32 22, float %2693)  ; Frc(value)
  %2714 = uitofp i32 %2710 to float
  %2715 = uitofp i32 %2711 to float
  %2716 = fadd fast float %2712, %2714
  %2717 = fadd fast float %2713, %2715
  %2718 = uitofp i32 %2643 to float
  %2719 = uitofp i32 %2644 to float
  %2720 = fdiv fast float %2716, %2718
  %2721 = fdiv fast float %2717, %2719
  br label %2722

; <label>:2722                                    ; preds = %2697, %2624
  %2723 = phi float [ %2720, %2697 ], [ %2692, %2624 ]
  %2724 = phi float [ %2721, %2697 ], [ %2693, %2624 ]
  %2725 = and i32 %2618, 16777216
  %2726 = icmp eq i32 %2725, 0
  br i1 %2726, label %2836, label %2727

; <label>:2727                                    ; preds = %2722
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.CBufRet.f32 %2728, 2
  %2732 = fadd fast float %2729, %141
  %2733 = fadd fast float %2730, %142
  %2734 = fadd fast float %2731, %143
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = icmp eq i32 %44, 65535
  br i1 %2738, label %2833, label %2739

; <label>:2739                                    ; preds = %2727
  %2740 = lshr i32 %44, 1
  %2741 = shl i32 %2740, 2
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %44, 1
  %2745 = icmp ne i32 %2744, 0
  %2746 = lshr i32 %2743, 16
  %2747 = and i32 %2743, 65535
  %2748 = select i1 %2745, i32 %2746, i32 %2747
  %2749 = icmp eq i32 %2748, 65535
  br i1 %2749, label %2829, label %2750

; <label>:2750                                    ; preds = %2739
  %2751 = mul nuw nsw i32 %2748, 40
  %2752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = add nuw nsw i32 %2751, 12
  %2757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.ResRet.f32 %2757, 1
  %2760 = extractvalue %dx.types.ResRet.f32 %2757, 2
  %2761 = add nuw nsw i32 %2751, 24
  %2762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = add nuw nsw i32 %2751, 36
  %2767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = fsub fast float %2732, %2753
  %2770 = fsub fast float %2733, %2754
  %2771 = fsub fast float %2734, %2755
  %2772 = fmul fast float %2768, %2769
  %2773 = fmul fast float %2768, %2770
  %2774 = fmul fast float %2768, %2771
  %2775 = call float @dx.op.unary.f32(i32 27, float %2772)  ; Round_ni(value)
  %2776 = call float @dx.op.unary.f32(i32 27, float %2773)  ; Round_ni(value)
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fmul fast float %2778, %2758
  %2782 = fmul fast float %2779, %2759
  %2783 = fmul fast float %2780, %2760
  %2784 = shl i32 %44, 2
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = add i32 %2786, 0
  %2788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2789 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2790 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2791 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2788, %dx.types.Handle %40, float %2789, float %2790, float %2791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2796 = fmul fast float %2793, 1.023000e+03
  %2797 = fmul fast float %2794, 1.023000e+03
  %2798 = fmul fast float %2795, 1.023000e+03
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = call float @dx.op.unary.f32(i32 27, float %2799)  ; Round_ni(value)
  %2803 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2804 = call float @dx.op.unary.f32(i32 27, float %2801)  ; Round_ni(value)
  %2805 = fsub fast float %2772, %2775
  %2806 = fsub fast float %2773, %2776
  %2807 = fsub fast float %2774, %2777
  %2808 = fmul fast float %2805, 7.500000e-01
  %2809 = fmul fast float %2806, 7.500000e-01
  %2810 = fmul fast float %2807, 7.500000e-01
  %2811 = fadd fast float %2775, 1.250000e-01
  %2812 = fadd fast float %2811, %2808
  %2813 = fadd fast float %2812, %2802
  %2814 = fadd fast float %2776, 1.250000e-01
  %2815 = fadd fast float %2814, %2809
  %2816 = fadd fast float %2815, %2803
  %2817 = fadd fast float %2777, 1.250000e-01
  %2818 = fadd fast float %2817, %2810
  %2819 = fadd fast float %2818, %2804
  %2820 = fmul fast float %2813, %2763
  %2821 = fmul fast float %2816, %2764
  %2822 = fmul fast float %2819, %2765
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = add i32 %2824, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2826, %dx.types.Handle %38, float %2820, float %2821, float %2822, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  br label %2829

; <label>:2829                                    ; preds = %2750, %2739
  %2830 = phi float [ %2828, %2750 ], [ -1.000000e+00, %2739 ]
  %2831 = fadd fast float %2830, %2737
  %2832 = call float @dx.op.unary.f32(i32 7, float %2831)  ; Saturate(value)
  br label %2833

; <label>:2833                                    ; preds = %2829, %2727
  %2834 = phi float [ %2832, %2829 ], [ %2737, %2727 ]
  %2835 = fmul fast float %2834, %420
  br label %2836

; <label>:2836                                    ; preds = %2833, %2722
  %2837 = phi float [ %2835, %2833 ], [ %420, %2722 ]
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = and i32 %2839, 256
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %2888, label %2842

; <label>:2842                                    ; preds = %2836
  %2843 = add i32 %43, 452
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %2845, 0
  %2847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2847, %dx.types.Handle %75, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = add i32 %43, 148
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = shl i32 %2852, 4
  %2854 = and i32 %2853, 32752
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = lshr i32 %2852, 7
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = fsub fast float 1.000000e+00, %2837
  %2860 = call float @dx.op.binary.f32(i32 35, float %2859, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2861 = bitcast float %2837 to i32
  %2862 = sitofp i32 %2861 to float
  %2863 = fadd fast float %2862, 0xC1CFBF8940000000
  %2864 = fmul fast float %2858, %2863
  %2865 = fadd fast float %2864, 0x41CFBF8940000000
  %2866 = fptosi float %2865 to i32
  %2867 = bitcast i32 %2866 to float
  %2868 = bitcast float %2860 to i32
  %2869 = sitofp i32 %2868 to float
  %2870 = fadd fast float %2869, 0xC1CFBF8940000000
  %2871 = fmul fast float %2870, %2858
  %2872 = fadd fast float %2871, 0x41CFBF8940000000
  %2873 = fptosi float %2872 to i32
  %2874 = bitcast i32 %2873 to float
  %2875 = fmul fast float %2867, %2855
  %2876 = fmul fast float %2874, %2855
  %2877 = fsub fast float %2860, %2875
  %2878 = fadd fast float %2876, %2860
  %2879 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2880 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2881 = fsub fast float %2849, %2879
  %2882 = fsub fast float %2880, %2879
  %2883 = bitcast float %2882 to i32
  %2884 = sub nsw i32 2129859010, %2883
  %2885 = bitcast i32 %2884 to float
  %2886 = fmul fast float %2885, %2881
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  br label %2888

; <label>:2888                                    ; preds = %2842, %2836
  %2889 = phi float [ %2887, %2842 ], [ %2837, %2836 ]
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 128
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %2910, label %2894

; <label>:2894                                    ; preds = %2888
  %2895 = add i32 %43, 436
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %2897, 0
  %2899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2899, %dx.types.Handle %75, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 524288
  %2905 = icmp ne i32 %2904, 0
  %2906 = fcmp fast ogt float %2901, 0x3FE0101020000000
  %2907 = select i1 %2906, float 1.000000e+00, float 0.000000e+00
  %2908 = select i1 %2905, float %2907, float %2901
  %2909 = fmul fast float %2908, %2889
  br label %2910

; <label>:2910                                    ; preds = %2894, %2888
  %2911 = phi float [ %2909, %2894 ], [ %2889, %2888 ]
  %2912 = fcmp fast ult float %2911, 0x3F70101020000000
  br i1 %2912, label %3455, label %2913

; <label>:2913                                    ; preds = %2910
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 16
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %3116, label %2918

; <label>:2918                                    ; preds = %2913
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %43, 388
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %2923, 0
  %2925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2925, %dx.types.Handle %74, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.ResRet.f32 %2926, 1
  %2929 = extractvalue %dx.types.ResRet.f32 %2926, 2
  %2930 = extractvalue %dx.types.ResRet.f32 %2926, 3
  %2931 = and i32 %2920, 255
  %2932 = uitofp i32 %2931 to float
  %2933 = lshr i32 %2920, 8
  %2934 = and i32 %2933, 255
  %2935 = uitofp i32 %2934 to float
  %2936 = fmul fast float %2930, %2932
  %2937 = fadd fast float %2936, %2935
  %2938 = fmul fast float %2937, 0x3F70101000000000
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 512
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %2951, label %2943

; <label>:2943                                    ; preds = %2918
  %2944 = add i32 %43, 472
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %75, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  br label %2951

; <label>:2951                                    ; preds = %2943, %2918
  %2952 = phi float [ %2950, %2943 ], [ 1.000000e+00, %2918 ]
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 33554432
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %3063, label %2957

; <label>:2957                                    ; preds = %2951
  %2958 = add i32 %43, 272
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 65535
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = lshr i32 %2960, 16
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = add i32 %43, 276
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 65535
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = lshr i32 %2971, 24
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = and i32 %2971, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2971, 8
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = lshr i32 %2971, 16
  %2983 = and i32 %2982, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = add i32 %43, 268
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = lshr i32 %2988, 24
  %2990 = uitofp i32 %2989 to float
  %2991 = fmul fast float %2990, 0x3F70101020000000
  %2992 = and i32 %2988, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = lshr i32 %2988, 8
  %2996 = and i32 %2995, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = lshr i32 %2988, 16
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = bitcast float %2927 to i32
  %3004 = ashr i32 %3003, 1
  %3005 = sub nsw i32 1597463174, %3004
  %3006 = bitcast i32 %3005 to float
  %3007 = fmul fast float %2927, 5.000000e-01
  %3008 = fmul fast float %3006, %3006
  %3009 = fmul fast float %3008, %3007
  %3010 = fsub fast float 1.500000e+00, %3009
  %3011 = fmul fast float %3006, %2927
  %3012 = fmul fast float %3011, %3010
  %3013 = bitcast float %2928 to i32
  %3014 = ashr i32 %3013, 1
  %3015 = sub nsw i32 1597463174, %3014
  %3016 = bitcast i32 %3015 to float
  %3017 = fmul fast float %2928, 5.000000e-01
  %3018 = fmul fast float %3016, %3016
  %3019 = fmul fast float %3018, %3017
  %3020 = fsub fast float 1.500000e+00, %3019
  %3021 = fmul fast float %3016, %2928
  %3022 = fmul fast float %3021, %3020
  %3023 = bitcast float %2929 to i32
  %3024 = ashr i32 %3023, 1
  %3025 = sub nsw i32 1597463174, %3024
  %3026 = bitcast i32 %3025 to float
  %3027 = fmul fast float %2929, 5.000000e-01
  %3028 = fmul fast float %3026, %3026
  %3029 = fmul fast float %3028, %3027
  %3030 = fsub fast float 1.500000e+00, %3029
  %3031 = fmul fast float %3026, %2929
  %3032 = fmul fast float %3031, %3030
  %3033 = fsub fast float %3012, %2994
  %3034 = fsub fast float %3022, %2998
  %3035 = fsub fast float %3032, %3002
  %3036 = fmul fast float %3033, %2962
  %3037 = fmul fast float %3034, %2964
  %3038 = fmul fast float %3035, %2969
  %3039 = fadd fast float %3036, %2977
  %3040 = fadd fast float %3037, %2981
  %3041 = fadd fast float %3038, %2985
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = fmul fast float %3042, %3042
  %3046 = fmul fast float %3043, %3043
  %3047 = fmul fast float %3044, %3044
  %3048 = fsub fast float %3045, %2927
  %3049 = fsub fast float %3046, %2928
  %3050 = fsub fast float %3047, %2929
  %3051 = fmul fast float %3048, %2952
  %3052 = fmul fast float %3049, %2952
  %3053 = fmul fast float %3050, %2952
  %3054 = fadd fast float %3051, %2927
  %3055 = fadd fast float %3052, %2928
  %3056 = fadd fast float %3053, %2929
  %3057 = fadd fast float %2974, %2938
  %3058 = fsub fast float %3057, %2991
  %3059 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3060 = fsub fast float %3059, %2938
  %3061 = fmul fast float %3060, %2952
  %3062 = fadd fast float %3061, %2938
  br label %3116

; <label>:3063                                    ; preds = %2951
  %3064 = and i32 %2954, 134217728
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3100, label %3066

; <label>:3066                                    ; preds = %3063
  %3067 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3069 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fadd fast float %3068, -5.000000e-01
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fmul fast float %3070, %2952
  %3074 = fmul fast float %3071, %2952
  %3075 = fmul fast float %3072, %2952
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = call float @dx.op.unary.f32(i32 24, float %2927)  ; Sqrt(value)
  %3080 = call float @dx.op.unary.f32(i32 24, float %2928)  ; Sqrt(value)
  %3081 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3082 = fmul fast float %3076, 2.000000e+00
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = fmul fast float %3083, %3079
  %3085 = fadd fast float %3084, %3082
  %3086 = fmul fast float %3085, %3079
  %3087 = fmul fast float %3077, 2.000000e+00
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fmul fast float %3088, %3080
  %3090 = fadd fast float %3089, %3087
  %3091 = fmul fast float %3090, %3080
  %3092 = fmul fast float %3078, 2.000000e+00
  %3093 = fsub fast float 1.000000e+00, %3092
  %3094 = fmul fast float %3093, %3081
  %3095 = fadd fast float %3094, %3092
  %3096 = fmul fast float %3095, %3081
  %3097 = fmul fast float %3086, %3086
  %3098 = fmul fast float %3091, %3091
  %3099 = fmul fast float %3096, %3096
  br label %3116

; <label>:3100                                    ; preds = %3063
  %3101 = fmul fast float %341, %341
  %3102 = fmul fast float %345, %345
  %3103 = fmul fast float %349, %349
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = fadd fast float %3102, -1.000000e+00
  %3106 = fadd fast float %3103, -1.000000e+00
  %3107 = fmul fast float %2952, %3104
  %3108 = fmul fast float %2952, %3105
  %3109 = fmul fast float %2952, %3106
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fmul fast float %3110, %2927
  %3114 = fmul fast float %3111, %2928
  %3115 = fmul fast float %3112, %2929
  br label %3116

; <label>:3116                                    ; preds = %3100, %3066, %2957, %2913
  %3117 = phi float [ %3062, %2957 ], [ %2938, %3066 ], [ %2938, %3100 ], [ 0x3FA23C0BE0000000, %2913 ]
  %3118 = phi float [ %3054, %2957 ], [ %3097, %3066 ], [ %3113, %3100 ], [ 1.000000e+00, %2913 ]
  %3119 = phi float [ %3055, %2957 ], [ %3098, %3066 ], [ %3114, %3100 ], [ 1.000000e+00, %2913 ]
  %3120 = phi float [ %3056, %2957 ], [ %3099, %3066 ], [ %3115, %3100 ], [ 1.000000e+00, %2913 ]
  %3121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.i32 %3121, 1
  %3123 = and i32 %3122, 1
  %3124 = icmp ne i32 %3123, 0
  %3125 = add i32 %43, 356
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 32
  %3129 = icmp ne i32 %3128, 0
  %3130 = and i1 %3124, %3129
  %3131 = select i1 %3130, float 1.000000e+00, float %3118
  %3132 = select i1 %3130, float 0x3FD3333340000000, float %3119
  %3133 = select i1 %3130, float 0x3FD3333340000000, float %3120
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 32
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3210, label %3138

; <label>:3138                                    ; preds = %3116
  %3139 = add i32 %43, 140
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = add i32 %43, 404
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %3144, 0
  %3146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3146, %dx.types.Handle %74, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  %3149 = extractvalue %dx.types.ResRet.f32 %3147, 1
  %3150 = extractvalue %dx.types.ResRet.f32 %3147, 2
  %3151 = extractvalue %dx.types.ResRet.f32 %3147, 3
  %3152 = and i32 %3141, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = lshr i32 %3141, 8
  %3155 = and i32 %3154, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3141, 16
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3159, 0x3F70101000000000
  %3161 = fmul fast float %3148, %3153
  %3162 = fadd fast float %3161, %3156
  %3163 = fmul fast float %3162, 0x3F70101000000000
  %3164 = fadd fast float %3149, -5.000000e-01
  %3165 = fadd fast float %3151, -5.000000e-01
  %3166 = fmul fast float %3164, %3160
  %3167 = fmul fast float %3165, %3160
  %3168 = fadd fast float %3166, 5.000000e-01
  %3169 = fadd fast float %3167, 5.000000e-01
  %3170 = fmul fast float %3168, 2.000000e+00
  %3171 = fadd fast float %3170, -1.000000e+00
  %3172 = fmul fast float %3169, 2.000000e+00
  %3173 = fadd fast float %3172, -1.000000e+00
  %3174 = fadd fast float %3171, %3173
  %3175 = fmul fast float %3174, 5.000000e-01
  %3176 = fsub fast float %3171, %3173
  %3177 = fmul fast float %3176, 5.000000e-01
  %3178 = call float @dx.op.unary.f32(i32 6, float %3175)  ; FAbs(value)
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = call float @dx.op.unary.f32(i32 6, float %3177)  ; FAbs(value)
  %3181 = fsub fast float %3179, %3180
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3177, float %3181, float %3175, float %3177, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = call float @dx.op.unary.f32(i32 25, float %3182)  ; Rsqrt(value)
  %3184 = fmul fast float %3175, %3183
  %3185 = fmul fast float %3177, %3183
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 67108864
  %3189 = icmp eq i32 %3188, 0
  br i1 %3189, label %3206, label %3190

; <label>:3190                                    ; preds = %3138
  %3191 = add i32 %43, 328
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 65535
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = lshr i32 %3193, 16
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = fsub fast float %3163, %3201
  %3203 = fmul fast float %3202, %3195
  %3204 = fadd fast float %3203, %3199
  %3205 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  br label %3206

; <label>:3206                                    ; preds = %3190, %3138
  %3207 = phi float [ %3205, %3190 ], [ %3163, %3138 ]
  %3208 = call float @dx.op.dot2.f32(i32 54, float %3184, float %3185, float %2627, float %2628)  ; Dot2(ax,ay,bx,by)
  %3209 = call float @dx.op.dot2.f32(i32 54, float %3184, float %3185, float %2629, float %2630)  ; Dot2(ax,ay,bx,by)
  br label %3210

; <label>:3210                                    ; preds = %3206, %3116
  %3211 = phi float [ %3207, %3206 ], [ 0x3FD6666660000000, %3116 ]
  %3212 = phi float [ %3208, %3206 ], [ 0.000000e+00, %3116 ]
  %3213 = phi float [ %3209, %3206 ], [ 0.000000e+00, %3116 ]
  %3214 = phi float [ %3150, %3206 ], [ 1.000000e+00, %3116 ]
  %3215 = add i32 %43, 208
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = lshr i32 %3217, 22
  %3219 = shl nuw nsw i32 %3218, 5
  %3220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3219)  ; LegacyF16ToF32(value)
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %3222, 64
  %3224 = icmp eq i32 %3223, 0
  br i1 %3224, label %3258, label %3225

; <label>:3225                                    ; preds = %3210
  %3226 = add i32 %43, 420
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = add i32 %3228, 0
  %3230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 131072
  %3234 = icmp eq i32 %3233, 0
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3230, %dx.types.Handle %74, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = fmul fast float %3236, %329
  %3240 = fmul fast float %3237, %332
  %3241 = fmul fast float %3238, %335
  br i1 %3234, label %3248, label %3242

; <label>:3242                                    ; preds = %3225
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = fmul fast float %3244, %3239
  %3246 = fmul fast float %3244, %3240
  %3247 = fmul fast float %3244, %3241
  br label %3248

; <label>:3248                                    ; preds = %3242, %3225
  %3249 = phi float [ %3245, %3242 ], [ %3239, %3225 ]
  %3250 = phi float [ %3246, %3242 ], [ %3240, %3225 ]
  %3251 = phi float [ %3247, %3242 ], [ %3241, %3225 ]
  %3252 = fmul fast float %3249, %3220
  %3253 = select i1 %183, float %3252, float %3249
  %3254 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3250, float %3251, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3255 = select i1 %183, float 0.000000e+00, float %3249
  %3256 = select i1 %183, float %3254, float %3250
  %3257 = select i1 %183, float 0.000000e+00, float %3251
  br label %3258

; <label>:3258                                    ; preds = %3248, %3210
  %3259 = phi float [ %3255, %3248 ], [ 0.000000e+00, %3210 ]
  %3260 = phi float [ %3256, %3248 ], [ 0.000000e+00, %3210 ]
  %3261 = phi float [ %3257, %3248 ], [ 0.000000e+00, %3210 ]
  %3262 = add i32 %43, 144
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3264, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3271 = fmul fast float %3269, %3270
  %3272 = fadd fast float %3271, %3266
  %3273 = fmul fast float %3272, 0x3F70101020000000
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  br i1 %2615, label %3275, label %3283

; <label>:3275                                    ; preds = %3258
  %3276 = fsub fast float 1.000000e+00, %2911
  %3277 = fmul fast float %3276, %2604
  %3278 = fmul fast float %3276, %2605
  %3279 = fmul fast float %3276, %2606
  %3280 = fmul fast float %3276, %2607
  %3281 = fmul fast float %3276, %2608
  %3282 = fmul fast float %3276, %2609
  br label %3283

; <label>:3283                                    ; preds = %3275, %3258
  %3284 = phi float [ %3277, %3275 ], [ %2604, %3258 ]
  %3285 = phi float [ %3278, %3275 ], [ %2605, %3258 ]
  %3286 = phi float [ %3279, %3275 ], [ %2606, %3258 ]
  %3287 = phi float [ %3280, %3275 ], [ %2607, %3258 ]
  %3288 = phi float [ %3281, %3275 ], [ %2608, %3258 ]
  %3289 = phi float [ %3282, %3275 ], [ %2609, %3258 ]
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, 3
  %3293 = icmp eq i32 %3292, 3
  br i1 %3293, label %3372, label %3294

; <label>:3294                                    ; preds = %3283
  %3295 = and i32 %3291, 16
  %3296 = icmp ne i32 %3295, 0
  %3297 = select i1 %3296, float %2911, float 0.000000e+00
  %3298 = icmp eq i32 %3292, 0
  br i1 %3298, label %3299, label %3327

; <label>:3299                                    ; preds = %3294
  %3300 = and i32 %3291, 64
  %3301 = icmp ne i32 %3300, 0
  %3302 = select i1 %3301, float %2911, float 0.000000e+00
  %3303 = fsub fast float %3131, %3284
  %3304 = fsub fast float %3132, %3285
  %3305 = fsub fast float %3133, %3286
  %3306 = fmul fast float %3297, %3303
  %3307 = fmul fast float %3297, %3304
  %3308 = fmul fast float %3297, %3305
  %3309 = fadd fast float %3306, %3284
  %3310 = fadd fast float %3307, %3285
  %3311 = fadd fast float %3308, %3286
  %3312 = fsub fast float %3117, %2610
  %3313 = fmul fast float %3297, %3312
  %3314 = fadd fast float %3313, %2610
  %3315 = fsub fast float %3259, %3287
  %3316 = fsub fast float %3260, %3288
  %3317 = fsub fast float %3261, %3289
  %3318 = fmul fast float %3302, %3315
  %3319 = fmul fast float %3302, %3316
  %3320 = fmul fast float %3302, %3317
  %3321 = fadd fast float %3318, %3287
  %3322 = fadd fast float %3319, %3288
  %3323 = fadd fast float %3320, %3289
  %3324 = fsub fast float %3274, %2613
  %3325 = fmul fast float %3297, %3324
  %3326 = fadd fast float %3325, %2613
  br label %3372

; <label>:3327                                    ; preds = %3294
  %3328 = icmp eq i32 %3292, 1
  br i1 %3328, label %3329, label %3342

; <label>:3329                                    ; preds = %3327
  %3330 = fadd fast float %3131, -1.000000e+00
  %3331 = fadd fast float %3132, -1.000000e+00
  %3332 = fadd fast float %3133, -1.000000e+00
  %3333 = fmul fast float %3297, %3330
  %3334 = fmul fast float %3297, %3331
  %3335 = fmul fast float %3297, %3332
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fadd fast float %3334, 1.000000e+00
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fmul fast float %3336, %3284
  %3340 = fmul fast float %3337, %3285
  %3341 = fmul fast float %3338, %3286
  br label %3372

; <label>:3342                                    ; preds = %3327
  %3343 = icmp eq i32 %3292, 2
  br i1 %3343, label %3344, label %3372

; <label>:3344                                    ; preds = %3342
  %3345 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3346 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3347 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fadd fast float %3347, -5.000000e-01
  %3351 = fmul fast float %3348, %3297
  %3352 = fmul fast float %3349, %3297
  %3353 = fmul fast float %3350, %3297
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = fadd fast float %3352, 5.000000e-01
  %3356 = fadd fast float %3353, 5.000000e-01
  %3357 = fmul fast float %3354, 2.000000e+00
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = fmul fast float %3358, %3284
  %3360 = fadd fast float %3359, %3357
  %3361 = fmul fast float %3360, %3284
  %3362 = fmul fast float %3355, 2.000000e+00
  %3363 = fsub fast float 1.000000e+00, %3362
  %3364 = fmul fast float %3363, %3285
  %3365 = fadd fast float %3364, %3362
  %3366 = fmul fast float %3365, %3285
  %3367 = fmul fast float %3356, 2.000000e+00
  %3368 = fsub fast float 1.000000e+00, %3367
  %3369 = fmul fast float %3368, %3286
  %3370 = fadd fast float %3369, %3367
  %3371 = fmul fast float %3370, %3286
  br label %3372

; <label>:3372                                    ; preds = %3344, %3342, %3329, %3299, %3283
  %3373 = phi float [ %3284, %3283 ], [ %3361, %3344 ], [ %3284, %3342 ], [ %3339, %3329 ], [ %3309, %3299 ]
  %3374 = phi float [ %3285, %3283 ], [ %3366, %3344 ], [ %3285, %3342 ], [ %3340, %3329 ], [ %3310, %3299 ]
  %3375 = phi float [ %3286, %3283 ], [ %3371, %3344 ], [ %3286, %3342 ], [ %3341, %3329 ], [ %3311, %3299 ]
  %3376 = phi float [ %3287, %3283 ], [ %3287, %3344 ], [ %3287, %3342 ], [ %3287, %3329 ], [ %3321, %3299 ]
  %3377 = phi float [ %3288, %3283 ], [ %3288, %3344 ], [ %3288, %3342 ], [ %3288, %3329 ], [ %3322, %3299 ]
  %3378 = phi float [ %3289, %3283 ], [ %3289, %3344 ], [ %3289, %3342 ], [ %3289, %3329 ], [ %3323, %3299 ]
  %3379 = phi float [ %2610, %3283 ], [ %2610, %3344 ], [ %2610, %3342 ], [ %2610, %3329 ], [ %3314, %3299 ]
  %3380 = phi float [ %2613, %3283 ], [ %2613, %3344 ], [ %2613, %3342 ], [ %2613, %3329 ], [ %3326, %3299 ]
  %3381 = and i32 %3291, 12
  %3382 = icmp eq i32 %3381, 12
  br i1 %3382, label %3455, label %3383

; <label>:3383                                    ; preds = %3372
  %3384 = and i32 %3291, 2097184
  %3385 = icmp eq i32 %3384, 2097184
  %3386 = select i1 %3385, float %2911, float 0.000000e+00
  %3387 = and i32 %3291, 4194336
  %3388 = icmp eq i32 %3387, 4194336
  %3389 = select i1 %3388, float %2911, float 0.000000e+00
  %3390 = and i32 %3291, 8388640
  %3391 = icmp eq i32 %3390, 8388640
  %3392 = select i1 %3391, float %2911, float 0.000000e+00
  %3393 = icmp eq i32 %3381, 0
  br i1 %3393, label %3394, label %3407

; <label>:3394                                    ; preds = %3383
  %3395 = fsub fast float %3212, %2602
  %3396 = fsub fast float %3213, %2603
  %3397 = fmul fast float %3386, %3395
  %3398 = fmul fast float %3386, %3396
  %3399 = fadd fast float %3397, %2602
  %3400 = fadd fast float %3398, %2603
  %3401 = fsub fast float %3214, %2612
  %3402 = fmul fast float %3389, %3401
  %3403 = fadd fast float %3402, %2612
  %3404 = fsub fast float %3211, %2611
  %3405 = fmul fast float %3392, %3404
  %3406 = fadd fast float %3405, %2611
  br label %3455

; <label>:3407                                    ; preds = %3383
  %3408 = icmp eq i32 %3381, 4
  br i1 %3408, label %3409, label %3441

; <label>:3409                                    ; preds = %3407
  %3410 = fmul fast float %3386, %3212
  %3411 = fmul fast float %3386, %3213
  %3412 = fadd fast float %3410, %2602
  %3413 = fadd fast float %3411, %2603
  %3414 = call float @dx.op.binary.f32(i32 36, float %2612, float %3214)  ; FMin(a,b)
  %3415 = fsub fast float %3414, %2612
  %3416 = fmul fast float %3415, %3389
  %3417 = fadd fast float %3416, %2612
  %3418 = fadd fast float %3211, %2611
  %3419 = fmul fast float %3418, 0x3FF337FAE0000000
  %3420 = fmul fast float %2611, %2611
  %3421 = fmul fast float %3211, %3211
  %3422 = fadd fast float %3421, %3420
  %3423 = fmul fast float %3422, 0x3FE5152B00000000
  %3424 = fmul fast float %2611, 0xBFCC1F85E0000000
  %3425 = fmul fast float %3424, %3211
  %3426 = fadd fast float %3425, 0xBFE1363700000000
  %3427 = fadd fast float %3426, %3419
  %3428 = fsub fast float %3427, %3423
  %3429 = fmul fast float %3418, 0x3FBA6F0D00000000
  %3430 = fmul fast float %3422, 0x3FD0432880000000
  %3431 = fmul fast float %2611, 0xBFEF110800000000
  %3432 = fmul fast float %3431, %3211
  %3433 = fadd fast float %3432, 1.000000e+00
  %3434 = fsub fast float %3433, %3429
  %3435 = fadd fast float %3434, %3430
  %3436 = fdiv fast float %3428, %3435
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = fsub fast float %3437, %2611
  %3439 = fmul fast float %3438, %3392
  %3440 = fadd fast float %3439, %2611
  br label %3455

; <label>:3441                                    ; preds = %3407
  %3442 = icmp eq i32 %3381, 8
  br i1 %3442, label %3443, label %3455

; <label>:3443                                    ; preds = %3441
  %3444 = fmul fast float %3386, %3212
  %3445 = fmul fast float %3386, %3213
  %3446 = fadd fast float %3444, %2602
  %3447 = fadd fast float %3445, %2603
  %3448 = call float @dx.op.binary.f32(i32 36, float %2612, float %3214)  ; FMin(a,b)
  %3449 = fsub fast float %3448, %2612
  %3450 = fmul fast float %3449, %3389
  %3451 = fadd fast float %3450, %2612
  %3452 = fsub fast float %3211, %2611
  %3453 = fmul fast float %3392, %3452
  %3454 = fadd fast float %3453, %2611
  br label %3455

; <label>:3455                                    ; preds = %3443, %3441, %3409, %3394, %3372, %2910, %2614, %2601
  %3456 = phi float [ %2602, %3372 ], [ %2602, %2910 ], [ %2602, %2601 ], [ %2602, %2614 ], [ %3399, %3394 ], [ %3412, %3409 ], [ %2602, %3441 ], [ %3446, %3443 ]
  %3457 = phi float [ %2603, %3372 ], [ %2603, %2910 ], [ %2603, %2601 ], [ %2603, %2614 ], [ %3400, %3394 ], [ %3413, %3409 ], [ %2603, %3441 ], [ %3447, %3443 ]
  %3458 = phi float [ %3373, %3372 ], [ %2604, %2910 ], [ %2604, %2601 ], [ %2604, %2614 ], [ %3373, %3394 ], [ %3373, %3409 ], [ %3373, %3441 ], [ %3373, %3443 ]
  %3459 = phi float [ %3374, %3372 ], [ %2605, %2910 ], [ %2605, %2601 ], [ %2605, %2614 ], [ %3374, %3394 ], [ %3374, %3409 ], [ %3374, %3441 ], [ %3374, %3443 ]
  %3460 = phi float [ %3375, %3372 ], [ %2606, %2910 ], [ %2606, %2601 ], [ %2606, %2614 ], [ %3375, %3394 ], [ %3375, %3409 ], [ %3375, %3441 ], [ %3375, %3443 ]
  %3461 = phi float [ %3376, %3372 ], [ %2607, %2910 ], [ %2607, %2601 ], [ %2607, %2614 ], [ %3376, %3394 ], [ %3376, %3409 ], [ %3376, %3441 ], [ %3376, %3443 ]
  %3462 = phi float [ %3377, %3372 ], [ %2608, %2910 ], [ %2608, %2601 ], [ %2608, %2614 ], [ %3377, %3394 ], [ %3377, %3409 ], [ %3377, %3441 ], [ %3377, %3443 ]
  %3463 = phi float [ %3378, %3372 ], [ %2609, %2910 ], [ %2609, %2601 ], [ %2609, %2614 ], [ %3378, %3394 ], [ %3378, %3409 ], [ %3378, %3441 ], [ %3378, %3443 ]
  %3464 = phi float [ %3379, %3372 ], [ %2610, %2910 ], [ %2610, %2601 ], [ %2610, %2614 ], [ %3379, %3394 ], [ %3379, %3409 ], [ %3379, %3441 ], [ %3379, %3443 ]
  %3465 = phi float [ %2611, %3372 ], [ %2611, %2910 ], [ %2611, %2601 ], [ %2611, %2614 ], [ %3406, %3394 ], [ %3440, %3409 ], [ %2611, %3441 ], [ %3454, %3443 ]
  %3466 = phi float [ %2612, %3372 ], [ %2612, %2910 ], [ %2612, %2601 ], [ %2612, %2614 ], [ %3403, %3394 ], [ %3417, %3409 ], [ %2612, %3441 ], [ %3451, %3443 ]
  %3467 = phi float [ %3380, %3372 ], [ %2613, %2910 ], [ %2613, %2601 ], [ %2613, %2614 ], [ %3380, %3394 ], [ %3380, %3409 ], [ %3380, %3441 ], [ %3380, %3443 ]
  %3468 = add i32 %43, 360
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.i32 %3469, 1
  %3472 = bitcast i32 %3470 to float
  %3473 = bitcast i32 %3471 to float
  %3474 = fcmp fast oge float %3472, 0.000000e+00
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = select i1 %3474, float %3472, float %3476
  %3478 = add i32 %43, 456
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = fmul fast float %3484, %3473
  %3486 = fadd fast float %3485, %3477
  %3487 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %3456, float %3457)  ; Dot2(ax,ay,bx,by)
  %3488 = fmul fast float %3487, 0x3FE3333340000000
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3489, float %3456, float %3457, float %3489)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call float @dx.op.unary.f32(i32 25, float %3490)  ; Rsqrt(value)
  %3492 = fmul fast float %3491, %3456
  %3493 = fmul fast float %3491, %3457
  %3494 = fmul fast float %3489, %3491
  %3495 = fmul fast float %3494, %85
  %3496 = fmul fast float %3494, %86
  %3497 = fmul fast float %3494, %87
  %3498 = fmul fast float %3492, %59
  %3499 = fmul fast float %3492, %60
  %3500 = fmul fast float %3492, %61
  %3501 = fadd fast float %3495, %3498
  %3502 = fadd fast float %3496, %3499
  %3503 = fadd fast float %3497, %3500
  %3504 = fmul fast float %97, %3493
  %3505 = fmul fast float %98, %3493
  %3506 = fmul fast float %99, %3493
  %3507 = fadd fast float %3501, %3504
  %3508 = fadd fast float %3502, %3505
  %3509 = fadd fast float %3503, %3506
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float %3507, float %3508, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = call float @dx.op.unary.f32(i32 25, float %3510)  ; Rsqrt(value)
  %3512 = fmul fast float %3507, %3511
  %3513 = fmul fast float %3508, %3511
  %3514 = fmul fast float %3509, %3511
  %3515 = and i32 %45, 1
  %3516 = icmp eq i32 %3515, 0
  br i1 %3516, label %3517, label %4029

; <label>:3517                                    ; preds = %3455
  %3518 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3519 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3520 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3521 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3522 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3523 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3524 = fadd fast float %3518, %141
  %3525 = fadd fast float %3519, %142
  %3526 = fadd fast float %3520, %143
  %3527 = fadd fast float %3521, %141
  %3528 = fadd fast float %3522, %142
  %3529 = fadd fast float %3523, %143
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3537 = fmul fast float %3531, %78
  %3538 = fmul fast float %3537, %3535
  %3539 = fmul fast float %3532, %79
  %3540 = fmul fast float %3539, %3536
  %3541 = fptoui float %3538 to i32
  %3542 = fptoui float %3540 to i32
  %3543 = fadd fast float %3531, -1.000000e+00
  %3544 = fadd fast float %3532, -1.000000e+00
  %3545 = fptoui float %3543 to i32
  %3546 = fptoui float %3544 to i32
  %3547 = call i32 @dx.op.binary.i32(i32 40, i32 %3541, i32 %3545)  ; UMin(a,b)
  %3548 = call i32 @dx.op.binary.i32(i32 40, i32 %3542, i32 %3546)  ; UMin(a,b)
  %3549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.f32 %3549, 2
  %3551 = extractvalue %dx.types.CBufRet.f32 %3549, 3
  %3552 = fmul fast float %3550, %73
  %3553 = fsub fast float %3552, %3551
  %3554 = fadd fast float %3533, -1.000000e+00
  %3555 = call float @dx.op.binary.f32(i32 36, float %3553, float %3554)  ; FMin(a,b)
  %3556 = fptoui float %3555 to i32
  %3557 = fptoui float %3531 to i32
  %3558 = fptoui float %3532 to i32
  %3559 = mul i32 %3556, %3558
  %3560 = add i32 %3559, %3548
  %3561 = mul i32 %3560, %3557
  %3562 = add i32 %3561, %3547
  %3563 = shl i32 %3562, 2
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = and i32 %3565, 1023
  %3567 = lshr i32 %3565, 10
  %3568 = icmp eq i32 %3566, 0
  br i1 %3568, label %3997, label %3569

; <label>:3569                                    ; preds = %3517
  %3570 = and i32 %3565, 1023
  br label %3571

; <label>:3571                                    ; preds = %3698, %3569
  %3572 = phi i32 [ %3648, %3698 ], [ 0, %3569 ]
  %3573 = phi float [ %3699, %3698 ], [ 0.000000e+00, %3569 ]
  %3574 = phi float [ %3700, %3698 ], [ %902, %3569 ]
  %3575 = phi float [ %3701, %3698 ], [ %3486, %3569 ]
  %3576 = phi float [ %3702, %3698 ], [ %3467, %3569 ]
  %3577 = phi float [ %3703, %3698 ], [ 0.000000e+00, %3569 ]
  %3578 = phi float [ %3704, %3698 ], [ 0.000000e+00, %3569 ]
  %3579 = phi float [ %3705, %3698 ], [ %3461, %3569 ]
  %3580 = phi float [ %3706, %3698 ], [ %3462, %3569 ]
  %3581 = phi float [ %3707, %3698 ], [ %3463, %3569 ]
  %3582 = phi float [ %3708, %3698 ], [ %3512, %3569 ]
  %3583 = phi float [ %3709, %3698 ], [ %3513, %3569 ]
  %3584 = phi float [ %3710, %3698 ], [ %3514, %3569 ]
  %3585 = phi float [ %3711, %3698 ], [ %3466, %3569 ]
  %3586 = phi float [ %3712, %3698 ], [ %3465, %3569 ]
  %3587 = phi float [ %3713, %3698 ], [ 0.000000e+00, %3569 ]
  %3588 = phi float [ %3714, %3698 ], [ %3464, %3569 ]
  %3589 = phi float [ %3715, %3698 ], [ %3458, %3569 ]
  %3590 = phi float [ %3716, %3698 ], [ %3459, %3569 ]
  %3591 = phi float [ %3717, %3698 ], [ %3460, %3569 ]
  %3592 = add nuw nsw i32 %3572, %3567
  %3593 = shl i32 %3592, 2
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = shl i32 %3595, 8
  %3597 = or i32 %3596, 48
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = or i32 %3596, 64
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.i32 %3604, 1
  %3607 = or i32 %3596, 80
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3611 = or i32 %3596, 96
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = or i32 %3596, 112
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3620 = or i32 %3596, 128
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = or i32 %3596, 144
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = or i32 %3596, 160
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3638 = or i32 %3596, 192
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = or i32 %3596, 208
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = or i32 %3596, 248
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = add nuw nsw i32 %3572, 1
  %3649 = bitcast float %3602 to i32
  %3650 = and i32 %3649, 512
  %3651 = icmp eq i32 %3650, 0
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = or i32 %3596, 16
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = or i32 %3596, 32
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3667, float %3668, float %3669, float %3670, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = call float @dx.op.unary.f32(i32 27, float %3657)  ; Round_ni(value)
  %3673 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3674 = call float @dx.op.unary.f32(i32 27, float %3664)  ; Round_ni(value)
  %3675 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3676 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3677 = call float @dx.op.unary.f32(i32 27, float %3676)  ; Round_ni(value)
  %3678 = fadd fast float %3675, %3673
  %3679 = fadd fast float %3678, %3677
  %3680 = fcmp fast oeq float %3679, 0.000000e+00
  %3681 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %3524, float %3525, float %3526, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3682 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %3524, float %3525, float %3526, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3683 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %3527, float %3528, float %3529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3684 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %3527, float %3528, float %3529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3685 = fsub fast float %3681, %3657
  %3686 = fsub fast float %3683, %3657
  %3687 = fsub fast float %3682, %3664
  %3688 = fsub fast float %3684, %3664
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3599, float %3600, float %3601, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3692 = fadd fast float %3691, %3689
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3695 = fcmp fast ogt float %3693, %3694
  %3696 = and i1 %3680, %3695
  %3697 = and i1 %3651, %3696
  br i1 %3697, label %3719, label %3698

; <label>:3698                                    ; preds = %3983, %3800, %3719, %3571
  %3699 = phi float [ %3573, %3719 ], [ %3803, %3800 ], [ %3803, %3983 ], [ %3573, %3571 ]
  %3700 = phi float [ %3574, %3719 ], [ %3574, %3800 ], [ %3958, %3983 ], [ %3574, %3571 ]
  %3701 = phi float [ %3575, %3719 ], [ %3575, %3800 ], [ %3957, %3983 ], [ %3575, %3571 ]
  %3702 = phi float [ %3576, %3719 ], [ %3576, %3800 ], [ %3955, %3983 ], [ %3576, %3571 ]
  %3703 = phi float [ %3577, %3719 ], [ %3577, %3800 ], [ %3927, %3983 ], [ %3577, %3571 ]
  %3704 = phi float [ %3578, %3719 ], [ %3578, %3800 ], [ %3925, %3983 ], [ %3578, %3571 ]
  %3705 = phi float [ %3579, %3719 ], [ %3579, %3800 ], [ %3993, %3983 ], [ %3579, %3571 ]
  %3706 = phi float [ %3580, %3719 ], [ %3580, %3800 ], [ %3994, %3983 ], [ %3580, %3571 ]
  %3707 = phi float [ %3581, %3719 ], [ %3581, %3800 ], [ %3995, %3983 ], [ %3581, %3571 ]
  %3708 = phi float [ %3582, %3719 ], [ %3582, %3800 ], [ %3906, %3983 ], [ %3582, %3571 ]
  %3709 = phi float [ %3583, %3719 ], [ %3583, %3800 ], [ %3907, %3983 ], [ %3583, %3571 ]
  %3710 = phi float [ %3584, %3719 ], [ %3584, %3800 ], [ %3908, %3983 ], [ %3584, %3571 ]
  %3711 = phi float [ %3585, %3719 ], [ %3585, %3800 ], [ %3935, %3983 ], [ %3585, %3571 ]
  %3712 = phi float [ %3586, %3719 ], [ %3586, %3800 ], [ %3932, %3983 ], [ %3586, %3571 ]
  %3713 = phi float [ %3587, %3719 ], [ %3587, %3800 ], [ %3929, %3983 ], [ %3587, %3571 ]
  %3714 = phi float [ %3588, %3719 ], [ %3588, %3800 ], [ %3923, %3983 ], [ %3588, %3571 ]
  %3715 = phi float [ %3589, %3719 ], [ %3589, %3800 ], [ %3918, %3983 ], [ %3589, %3571 ]
  %3716 = phi float [ %3590, %3719 ], [ %3590, %3800 ], [ %3919, %3983 ], [ %3590, %3571 ]
  %3717 = phi float [ %3591, %3719 ], [ %3591, %3800 ], [ %3920, %3983 ], [ %3591, %3571 ]
  %3718 = icmp eq i32 %3648, %3570
  br i1 %3718, label %3996, label %3571

; <label>:3719                                    ; preds = %3571
  %3720 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3721 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3725 = extractvalue %dx.types.ResRet.i32 %3604, 3
  %3726 = extractvalue %dx.types.ResRet.i32 %3604, 2
  %3727 = add i32 %3725, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3728, %dx.types.Handle %3729, float %3657, float %3664, float undef, float undef, i32 0, i32 0, i32 undef, float %3685, float %3687, float undef, float %3686, float %3688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = fmul fast float %3731, %3724
  %3733 = fadd fast float %3732, %3723
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fmul fast float %3657, %3613
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3664, float %3735)  ; FMad(a,b,c)
  %3737 = fadd fast float %3736, %3722
  %3738 = fmul fast float %3657, %3615
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3664, float %3738)  ; FMad(a,b,c)
  %3740 = fadd fast float %3739, %3721
  %3741 = fmul fast float %3685, %3613
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3687, float %3741)  ; FMad(a,b,c)
  %3743 = fmul fast float %3685, %3615
  %3744 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3687, float %3743)  ; FMad(a,b,c)
  %3745 = fmul fast float %3686, %3613
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3688, float %3745)  ; FMad(a,b,c)
  %3747 = fmul fast float %3686, %3615
  %3748 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3688, float %3747)  ; FMad(a,b,c)
  %3749 = add i32 %3726, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3750, %dx.types.Handle %3729, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = and i32 %3649, 1024
  %3754 = icmp ne i32 %3753, 0
  %3755 = fcmp fast ogt float %3752, 0x3FE0101020000000
  %3756 = uitofp i1 %3755 to float
  %3757 = select i1 %3754, float %3756, float %3752
  %3758 = and i32 %3649, 8192
  %3759 = icmp ne i32 %3758, 0
  %3760 = select i1 %3759, float %3720, float 1.000000e+00
  %3761 = fmul fast float %3657, 2.000000e+00
  %3762 = fadd fast float %3761, -1.000000e+00
  %3763 = call float @dx.op.unary.f32(i32 6, float %3762)  ; FAbs(value)
  %3764 = fmul fast float %3763, %3646
  %3765 = fsub fast float %3764, %3646
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fmul fast float %3664, 2.000000e+00
  %3768 = fadd fast float %3767, -1.000000e+00
  %3769 = call float @dx.op.unary.f32(i32 6, float %3768)  ; FAbs(value)
  %3770 = fmul fast float %3769, %3647
  %3771 = fsub fast float %3770, %3647
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fmul fast float %3676, %3609
  %3774 = fsub fast float %3773, %3609
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fmul fast float %3734, %3760
  %3777 = fmul fast float %3776, %3731
  %3778 = fmul fast float %3777, %3766
  %3779 = fmul fast float %3778, %3757
  %3780 = fmul fast float %3779, %3772
  %3781 = fmul fast float %3780, %3775
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3785 = fsub fast float %3693, %3784
  %3786 = fmul fast float %3785, %3783
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3781, %3610
  %3789 = fadd fast float %3781, %3610
  %3790 = fmul fast float %3789, %3619
  %3791 = fsub fast float %3790, %3619
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3793 = and i32 %3649, 128
  %3794 = icmp ne i32 %3793, 0
  %3795 = select i1 %3794, float %3792, float %3788
  %3796 = fmul fast float %3795, %3787
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = fcmp fast ugt float %3796, %3798
  br i1 %3799, label %3800, label %3698

; <label>:3800                                    ; preds = %3719
  %3801 = select i1 %3759, float %3796, float 0.000000e+00
  %3802 = fadd fast float %3801, %3573
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  br i1 %3759, label %3698, label %3804

; <label>:3804                                    ; preds = %3800
  %3805 = and i32 %3649, 4
  %3806 = and i32 %3649, 8
  %3807 = add i32 %3605, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3808, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = bitcast float %3631 to i32
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = lshr i32 %3815, 8
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = fmul fast float %3814, %3817
  %3822 = fadd fast float %3821, %3820
  %3823 = fmul fast float %3822, 0x3F70101000000000
  %3824 = add i32 %3606, 0
  %3825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3824, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3826 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3825, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = bitcast float %3625 to i32
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = lshr i32 %3831, 8
  %3835 = and i32 %3834, 255
  %3836 = uitofp i32 %3835 to float
  %3837 = lshr i32 %3831, 16
  %3838 = and i32 %3837, 255
  %3839 = uitofp i32 %3838 to float
  %3840 = fmul fast float %3839, 0x3F70101000000000
  %3841 = fmul fast float %3827, %3833
  %3842 = fadd fast float %3841, %3836
  %3843 = fmul fast float %3842, 0x3F70101000000000
  %3844 = fadd fast float %3828, -5.000000e-01
  %3845 = fadd fast float %3830, -5.000000e-01
  %3846 = fmul fast float %3844, %3840
  %3847 = fmul fast float %3845, %3840
  %3848 = fadd fast float %3846, 5.000000e-01
  %3849 = fadd fast float %3847, 5.000000e-01
  %3850 = fmul fast float %3811, %3634
  %3851 = fmul fast float %3812, %3635
  %3852 = fmul fast float %3813, %3636
  %3853 = fmul fast float %3848, 2.000000e+00
  %3854 = fadd fast float %3853, -1.000000e+00
  %3855 = fmul fast float %3849, 2.000000e+00
  %3856 = fadd fast float %3855, -1.000000e+00
  %3857 = fadd fast float %3854, %3856
  %3858 = fmul fast float %3857, 5.000000e-01
  %3859 = fsub fast float %3854, %3856
  %3860 = fmul fast float %3859, 5.000000e-01
  %3861 = call float @dx.op.unary.f32(i32 6, float %3858)  ; FAbs(value)
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = call float @dx.op.unary.f32(i32 6, float %3860)  ; FAbs(value)
  %3864 = fsub fast float %3862, %3863
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3860, float %3864, float %3858, float %3860, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = call float @dx.op.unary.f32(i32 25, float %3865)  ; Rsqrt(value)
  %3867 = fmul fast float %3858, %3866
  %3868 = fmul fast float %3860, %3866
  %3869 = fmul fast float %3866, %3864
  %3870 = fmul fast float %3869, %3599
  %3871 = fmul fast float %3869, %3600
  %3872 = fmul fast float %3869, %3601
  %3873 = fmul fast float %3867, %3622
  %3874 = fmul fast float %3867, %3623
  %3875 = fmul fast float %3867, %3624
  %3876 = fadd fast float %3873, %3870
  %3877 = fadd fast float %3874, %3871
  %3878 = fadd fast float %3875, %3872
  %3879 = fmul fast float %3868, %3628
  %3880 = fmul fast float %3868, %3629
  %3881 = fmul fast float %3868, %3630
  %3882 = fadd fast float %3876, %3879
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3883, float %3884, float %3882, float %3883, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call float @dx.op.unary.f32(i32 25, float %3885)  ; Rsqrt(value)
  %3887 = fmul fast float %3882, %3886
  %3888 = fmul fast float %3883, %3886
  %3889 = fmul fast float %3884, %3886
  %3890 = icmp ne i32 %3806, 0
  %3891 = select i1 %3890, float 1.000000e+00, float 0.000000e+00
  %3892 = fmul fast float %3796, %3891
  %3893 = and i32 %3649, 1
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3895, label %3899

; <label>:3895                                    ; preds = %3804
  %3896 = fsub fast float %3887, %3582
  %3897 = fsub fast float %3888, %3583
  %3898 = fsub fast float %3889, %3584
  br label %3899

; <label>:3899                                    ; preds = %3895, %3804
  %3900 = phi float [ %3896, %3895 ], [ %3887, %3804 ]
  %3901 = phi float [ %3897, %3895 ], [ %3888, %3804 ]
  %3902 = phi float [ %3898, %3895 ], [ %3889, %3804 ]
  %3903 = fmul float %3902, %3892
  %3904 = fmul float %3901, %3892
  %3905 = fmul float %3900, %3892
  %3906 = fadd fast float %3905, %3582
  %3907 = fadd fast float %3904, %3583
  %3908 = fadd fast float %3903, %3584
  %3909 = icmp ne i32 %3805, 0
  %3910 = select i1 %3909, float 1.000000e+00, float 0.000000e+00
  %3911 = fmul fast float %3796, %3910
  %3912 = fsub fast float %3850, %3589
  %3913 = fsub fast float %3851, %3590
  %3914 = fsub fast float %3852, %3591
  %3915 = fmul fast float %3912, %3911
  %3916 = fmul fast float %3913, %3911
  %3917 = fmul fast float %3914, %3911
  %3918 = fadd fast float %3915, %3589
  %3919 = fadd fast float %3916, %3590
  %3920 = fadd fast float %3917, %3591
  %3921 = fsub fast float %3823, %3588
  %3922 = fmul fast float %3921, %3911
  %3923 = fadd fast float %3922, %3588
  %3924 = fmul fast float %3911, %3578
  %3925 = fsub fast float %3578, %3924
  %3926 = fmul fast float %3911, %3577
  %3927 = fsub fast float %3577, %3926
  %3928 = fadd fast float %3796, %3587
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fsub fast float %3843, %3586
  %3931 = fmul fast float %3930, %3892
  %3932 = fadd fast float %3931, %3586
  %3933 = fsub fast float %3829, %3585
  %3934 = fmul fast float %3933, %3892
  %3935 = fadd fast float %3934, %3585
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = fmul fast float %3939, %3936
  %3941 = fadd fast float %3940, %3938
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = bitcast float %3637 to i32
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = lshr i32 %3943, 16
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = fcmp fast oge float %3945, 0.000000e+00
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = select i1 %3948, float %3945, float %3950
  %3952 = fadd fast float %3951, %3947
  %3953 = fsub fast float %3942, %3576
  %3954 = fmul fast float %3953, %3796
  %3955 = fadd fast float %3954, %3576
  %3956 = fmul fast float %3952, %3796
  %3957 = call float @dx.op.binary.f32(i32 35, float %3575, float %3956)  ; FMax(a,b)
  %3958 = call float @dx.op.binary.f32(i32 35, float %3574, float %3796)  ; FMax(a,b)
  %3959 = and i32 %3649, 16
  %3960 = icmp eq i32 %3959, 0
  br i1 %3960, label %3983, label %3961

; <label>:3961                                    ; preds = %3899
  %3962 = bitcast float %3643 to i32
  %3963 = add i32 %3640, 0
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3964, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = and i32 %3962, 65535
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = fmul fast float %3966, %3634
  %3972 = fmul fast float %3967, %3635
  %3973 = fmul fast float %3968, %3636
  %3974 = and i32 %3649, 16384
  %3975 = icmp ne i32 %3974, 0
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 0
  %3978 = select i1 %3975, float %3977, float 1.000000e+00
  %3979 = fmul fast float %3978, %3970
  %3980 = fmul fast float %3971, %3979
  %3981 = fmul fast float %3972, %3979
  %3982 = fmul fast float %3973, %3979
  br label %3983

; <label>:3983                                    ; preds = %3961, %3899
  %3984 = phi float [ %3980, %3961 ], [ 0.000000e+00, %3899 ]
  %3985 = phi float [ %3981, %3961 ], [ 0.000000e+00, %3899 ]
  %3986 = phi float [ %3982, %3961 ], [ 0.000000e+00, %3899 ]
  %3987 = fsub fast float %3984, %3579
  %3988 = fsub fast float %3985, %3580
  %3989 = fsub fast float %3986, %3581
  %3990 = fmul fast float %3987, %3796
  %3991 = fmul fast float %3988, %3796
  %3992 = fmul fast float %3989, %3796
  %3993 = fadd fast float %3990, %3579
  %3994 = fadd fast float %3991, %3580
  %3995 = fadd fast float %3992, %3581
  br label %3698

; <label>:3996                                    ; preds = %3698
  br label %3997

; <label>:3997                                    ; preds = %3996, %3517
  %3998 = phi float [ 0.000000e+00, %3517 ], [ %3699, %3996 ]
  %3999 = phi float [ %902, %3517 ], [ %3700, %3996 ]
  %4000 = phi float [ %3486, %3517 ], [ %3701, %3996 ]
  %4001 = phi float [ %3467, %3517 ], [ %3702, %3996 ]
  %4002 = phi float [ 0.000000e+00, %3517 ], [ %3703, %3996 ]
  %4003 = phi float [ 0.000000e+00, %3517 ], [ %3704, %3996 ]
  %4004 = phi float [ %3461, %3517 ], [ %3705, %3996 ]
  %4005 = phi float [ %3462, %3517 ], [ %3706, %3996 ]
  %4006 = phi float [ %3463, %3517 ], [ %3707, %3996 ]
  %4007 = phi float [ %3512, %3517 ], [ %3708, %3996 ]
  %4008 = phi float [ %3513, %3517 ], [ %3709, %3996 ]
  %4009 = phi float [ %3514, %3517 ], [ %3710, %3996 ]
  %4010 = phi float [ %3466, %3517 ], [ %3711, %3996 ]
  %4011 = phi float [ %3465, %3517 ], [ %3712, %3996 ]
  %4012 = phi float [ 0.000000e+00, %3517 ], [ %3713, %3996 ]
  %4013 = phi float [ %3464, %3517 ], [ %3714, %3996 ]
  %4014 = phi float [ %3458, %3517 ], [ %3715, %3996 ]
  %4015 = phi float [ %3459, %3517 ], [ %3716, %3996 ]
  %4016 = phi float [ %3460, %3517 ], [ %3717, %3996 ]
  %4017 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float %4007, float %4008, float %4009)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = call float @dx.op.unary.f32(i32 25, float %4017)  ; Rsqrt(value)
  %4019 = fmul fast float %4018, %4007
  %4020 = fmul fast float %4018, %4008
  %4021 = fmul fast float %4018, %4009
  %4022 = fadd fast float %4012, %902
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4019, float %4020, float %4021, float %4019, float %4020, float %4021)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4025, %4019
  %4027 = fmul fast float %4025, %4020
  %4028 = fmul fast float %4025, %4021
  br label %4029

; <label>:4029                                    ; preds = %3997, %3455
  %4030 = phi float [ %4026, %3997 ], [ %3512, %3455 ]
  %4031 = phi float [ %4027, %3997 ], [ %3513, %3455 ]
  %4032 = phi float [ %4028, %3997 ], [ %3514, %3455 ]
  %4033 = phi float [ %4014, %3997 ], [ %3458, %3455 ]
  %4034 = phi float [ %4015, %3997 ], [ %3459, %3455 ]
  %4035 = phi float [ %4016, %3997 ], [ %3460, %3455 ]
  %4036 = phi float [ %4004, %3997 ], [ %3461, %3455 ]
  %4037 = phi float [ %4005, %3997 ], [ %3462, %3455 ]
  %4038 = phi float [ %4006, %3997 ], [ %3463, %3455 ]
  %4039 = phi float [ %4013, %3997 ], [ %3464, %3455 ]
  %4040 = phi float [ %4023, %3997 ], [ %902, %3455 ]
  %4041 = phi float [ %4011, %3997 ], [ %3465, %3455 ]
  %4042 = phi float [ %4010, %3997 ], [ %3466, %3455 ]
  %4043 = phi float [ %4003, %3997 ], [ 0.000000e+00, %3455 ]
  %4044 = phi float [ %4002, %3997 ], [ 0.000000e+00, %3455 ]
  %4045 = phi float [ %3998, %3997 ], [ 0.000000e+00, %3455 ]
  %4046 = phi float [ %4000, %3997 ], [ %3486, %3455 ]
  %4047 = phi float [ %3999, %3997 ], [ %902, %3455 ]
  %4048 = phi float [ %4001, %3997 ], [ %3467, %3455 ]
  %4049 = fadd fast float %4039, 0xBFB99999A0000000
  %4050 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4051 = fmul fast float %4050, 0x3FF1C71C80000000
  %4052 = call float @dx.op.binary.f32(i32 36, float %4039, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4053 = fsub fast float 1.000000e+00, %4051
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fmul fast float %4054, %4033
  %4056 = fmul fast float %4054, %4034
  %4057 = fmul fast float %4054, %4035
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = fmul fast float %4051, %4033
  %4062 = fmul fast float %4051, %4034
  %4063 = fmul fast float %4051, %4035
  %4064 = fadd fast float %4061, %4052
  %4065 = fadd fast float %4062, %4052
  %4066 = fadd fast float %4063, %4052
  %4067 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4068 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4069 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4070 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.i32 %4071, 3
  %4073 = and i32 %4072, 8
  %4074 = icmp ne i32 %4073, 0
  %4075 = call float @dx.op.binary.f32(i32 35, float %4058, float %4033)  ; FMax(a,b)
  %4076 = call float @dx.op.binary.f32(i32 35, float %4059, float %4033)  ; FMax(a,b)
  %4077 = call float @dx.op.binary.f32(i32 35, float %4060, float %4033)  ; FMax(a,b)
  %4078 = call float @dx.op.dot3.f32(i32 55, float %4058, float %4059, float %4060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4079 = select i1 %183, float %4033, float %4058
  %4080 = select i1 %183, float %4078, float %4059
  %4081 = select i1 %183, float 1.000000e+00, float %4060
  %4082 = select i1 %4074, float %4075, float %4079
  %4083 = select i1 %4074, float %4076, float %4080
  %4084 = select i1 %4074, float %4077, float %4081
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4087 = extractvalue %dx.types.CBufRet.f32 %4085, 1
  %4088 = extractvalue %dx.types.CBufRet.f32 %4085, 2
  %4089 = fadd fast float %4086, %141
  %4090 = fadd fast float %4087, %142
  %4091 = fadd fast float %4088, %143
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4095 = fsub fast float %4089, %4093
  %4096 = fsub fast float %4090, %4094
  %4097 = fmul fast float %4095, %4095
  %4098 = fmul fast float %4096, %4096
  %4099 = fadd fast float %4097, %4098
  %4100 = call float @dx.op.unary.f32(i32 24, float %4099)  ; Sqrt(value)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4102 = fcmp fast olt float %4100, %4101
  br i1 %4102, label %4103, label %4170

; <label>:4103                                    ; preds = %4029
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 0
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.CBufRet.f32 %4104, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4112 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4114 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4115 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4116 = fadd fast float %4113, %4089
  %4117 = fadd fast float %4114, %4090
  %4118 = fadd fast float %4115, %4091
  %4119 = fmul fast float %4116, %4105
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %4117, float %4107, float %4119)  ; FMad(a,b,c)
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %4118, float %4109, float %4120)  ; FMad(a,b,c)
  %4122 = fmul fast float %4116, %4110
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4117, float %4111, float %4122)  ; FMad(a,b,c)
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4118, float %4112, float %4123)  ; FMad(a,b,c)
  %4125 = fsub fast float %4121, %4113
  %4126 = fsub fast float %4124, %4114
  %4127 = fsub fast float %4125, %4093
  %4128 = fadd fast float %4127, %4101
  %4129 = fsub fast float %4126, %4094
  %4130 = fadd fast float %4129, %4101
  %4131 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4132 = fmul fast float %4128, %4131
  %4133 = fmul fast float %4130, %4131
  %4134 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4135 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4136 = fsub fast float 1.000000e+00, %4134
  %4137 = fsub fast float 1.000000e+00, %4135
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4136, float %4137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = fcmp fast ugt float %4139, 0.000000e+00
  br i1 %4140, label %4141, label %4444

; <label>:4141                                    ; preds = %4103
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4144 = fmul fast float %4143, %4139
  %4145 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4146 = fadd fast float %4145, %4144
  %4147 = extractvalue %dx.types.CBufRet.f32 %4108, 2
  %4148 = fadd fast float %4146, %4115
  %4149 = fmul fast float %4121, %4109
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4112, float %4149)  ; FMad(a,b,c)
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4147, float %4150)  ; FMad(a,b,c)
  %4152 = fsub fast float %4151, %4115
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 2
  %4155 = fsub fast float %4152, %4154
  %4156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4136, float %4137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.ResRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.ResRet.f32 %4156, 2
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4136, float %4137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = fadd fast float %4161, %4157
  %4165 = fmul fast float %4164, 0x3F847AE140000000
  %4166 = fadd fast float %4162, %4158
  %4167 = fmul fast float %4166, 0x3F847AE140000000
  %4168 = fadd fast float %4163, %4159
  %4169 = fmul fast float %4168, 0x3F847AE140000000
  br label %4444

; <label>:4170                                    ; preds = %4029
  %4171 = and i32 %159, 1
  %4172 = icmp eq i32 %4171, 0
  br i1 %4172, label %4444, label %4173

; <label>:4173                                    ; preds = %4170
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4174, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4182 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4184 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4185 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4186 = fadd fast float %4183, %4089
  %4187 = fadd fast float %4184, %4090
  %4188 = fadd fast float %4185, %4091
  %4189 = fmul fast float %4186, %4175
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4177, float %4189)  ; FMad(a,b,c)
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4179, float %4190)  ; FMad(a,b,c)
  %4192 = fmul fast float %4186, %4180
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4181, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4182, float %4193)  ; FMad(a,b,c)
  %4195 = fsub fast float %4191, %4183
  %4196 = fsub fast float %4194, %4184
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.CBufRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.i32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.i32 %4204, 1
  %4207 = udiv i32 %4206, %4205
  %4208 = fsub fast float %4195, %4198
  %4209 = fsub fast float %4196, %4199
  %4210 = call float @dx.op.binary.f32(i32 35, float %4208, float 0.000000e+00)  ; FMax(a,b)
  %4211 = call float @dx.op.binary.f32(i32 35, float %4209, float 0.000000e+00)  ; FMax(a,b)
  %4212 = call float @dx.op.binary.f32(i32 36, float %4210, float %4200)  ; FMin(a,b)
  %4213 = call float @dx.op.binary.f32(i32 36, float %4211, float %4201)  ; FMin(a,b)
  %4214 = add i32 %4205, -1
  %4215 = add i32 %4207, -1
  %4216 = fmul fast float %4212, %4203
  %4217 = fmul fast float %4213, %4203
  %4218 = fptoui float %4216 to i32
  %4219 = fptoui float %4217 to i32
  %4220 = call i32 @dx.op.binary.i32(i32 40, i32 %4218, i32 %4214)  ; UMin(a,b)
  %4221 = call i32 @dx.op.binary.i32(i32 40, i32 %4219, i32 %4215)  ; UMin(a,b)
  %4222 = mul i32 %4221, %4205
  %4223 = add i32 %4222, %4220
  %4224 = shl i32 %4223, 2
  %4225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.i32 %4225, 0
  %4227 = icmp eq i32 %4226, -1
  br i1 %4227, label %4444, label %4228

; <label>:4228                                    ; preds = %4173
  %4229 = mul i32 %4226, 148
  %4230 = add i32 %4229, 4
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = add i32 %4229, 8
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = add i32 %4229, 36
  %4237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = add i32 %4229, 60
  %4240 = add i32 %4229, 92
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = add i32 %4229, 116
  %4244 = fsub fast float %4195, %4232
  %4245 = fsub fast float %4196, %4235
  %4246 = fmul fast float %4203, %4244
  %4247 = fmul fast float %4203, %4245
  %4248 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 2
  %4253 = call float @dx.op.unary.f32(i32 83, float %4248)  ; DerivCoarseX(value)
  %4254 = call float @dx.op.unary.f32(i32 83, float %4250)  ; DerivCoarseX(value)
  %4255 = call float @dx.op.unary.f32(i32 84, float %4248)  ; DerivCoarseY(value)
  %4256 = call float @dx.op.unary.f32(i32 84, float %4250)  ; DerivCoarseY(value)
  %4257 = fmul fast float %4253, %4252
  %4258 = fmul fast float %4254, %4252
  %4259 = fmul fast float %4255, %4252
  %4260 = fmul fast float %4256, %4252
  %4261 = call float @dx.op.dot2.f32(i32 54, float %4259, float %4260, float %4259, float %4260)  ; Dot2(ax,ay,bx,by)
  %4262 = call float @dx.op.dot2.f32(i32 54, float %4257, float %4258, float %4257, float %4258)  ; Dot2(ax,ay,bx,by)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4262, float %4261)  ; FMax(a,b)
  %4264 = call float @dx.op.unary.f32(i32 23, float %4263)  ; Log(value)
  %4265 = fmul fast float %4264, 5.000000e-01
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 1
  %4268 = fadd fast float %4267, %4265
  %4269 = call float @dx.op.binary.f32(i32 35, float %4268, float 0.000000e+00)  ; FMax(a,b)
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 3
  %4272 = fadd fast float %4271, %4269
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4275 = fadd fast float %4272, %4274
  %4276 = add i32 %4242, 0
  %4277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4276, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4278 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4277, i32 0)  ; GetDimensions(handle,mipLevel)
  %4279 = extractvalue %dx.types.Dimensions %4278, 0
  %4280 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4279)  ; FirstbitLo(value)
  %4281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.i32 %4281, 1
  %4283 = sub nsw i32 %4282, %4280
  %4284 = sitofp i32 %4283 to float
  %4285 = fsub fast float %4275, %4284
  %4286 = call float @dx.op.binary.f32(i32 35, float %4285, float 0.000000e+00)  ; FMax(a,b)
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4277, %dx.types.Handle %37, float %4248, float %4250, float %4238, float undef, i32 0, i32 0, i32 undef, float %4286)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = fcmp ule float %4288, 0x3FE0101020000000
  %4290 = extractvalue %dx.types.CBufRet.i32 %4281, 0
  %4291 = and i32 %4290, 128
  %4292 = icmp ne i32 %4291, 0
  %4293 = and i1 %4289, %4292
  br i1 %4293, label %4444, label %4294

; <label>:4294                                    ; preds = %4228
  %4295 = add i32 %4229, 20
  %4296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = add i32 %4229, 24
  %4299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4298, i32 undef)  ; BufferLoad(srv,index,wot)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = add i32 %4229, 40
  %4302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4304 = add i32 %4229, 96
  %4305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.i32 %4305, 0
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4309 = fmul fast float %4308, %4248
  %4310 = fmul fast float %4308, %4250
  %4311 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4312 = fadd fast float %4309, %4311
  %4313 = fadd fast float %4310, %4311
  %4314 = add i32 %4306, 0
  %4315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4314, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4316 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4315, i32 0)  ; GetDimensions(handle,mipLevel)
  %4317 = extractvalue %dx.types.Dimensions %4316, 0
  %4318 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4317)  ; FirstbitLo(value)
  %4319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.i32 %4319, 1
  %4321 = sub nsw i32 %4320, %4318
  %4322 = sitofp i32 %4321 to float
  %4323 = fsub fast float %4272, %4322
  %4324 = call float @dx.op.binary.f32(i32 35, float %4323, float 0.000000e+00)  ; FMax(a,b)
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4315, %dx.types.Handle %37, float %4312, float %4313, float %4303, float undef, i32 0, i32 0, i32 undef, float %4324)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = fmul fast float %4326, %4297
  %4328 = fadd fast float %4327, %4300
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4332 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4337 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4338 = fadd fast float %4334, %4195
  %4339 = fadd fast float %4336, %4196
  %4340 = fadd fast float %4328, %4337
  %4341 = fmul fast float %4338, %4330
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4331, float %4341)  ; FMad(a,b,c)
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4332, float %4342)  ; FMad(a,b,c)
  %4344 = fsub fast float %4343, %4337
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4347 = fsub fast float %4344, %4346
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 0
  %4350 = call i32 @dx.op.binary.i32(i32 40, i32 %4226, i32 %4349)  ; UMin(a,b)
  %4351 = mul i32 %4350, 36
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = add i32 %4351, 4
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = fmul fast float %4356, %4248
  %4358 = fmul fast float %4356, %4250
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4360 = fadd fast float %4357, %4359
  %4361 = fadd fast float %4358, %4359
  %4362 = icmp eq i32 %4353, 0
  br i1 %4362, label %4431, label %4363

; <label>:4363                                    ; preds = %4294
  br label %4364

; <label>:4364                                    ; preds = %4421, %4363
  %4365 = phi float [ %4422, %4421 ], [ 0.000000e+00, %4363 ]
  %4366 = phi float [ %4423, %4421 ], [ 0.000000e+00, %4363 ]
  %4367 = phi float [ %4424, %4421 ], [ 0.000000e+00, %4363 ]
  %4368 = phi float [ %4425, %4421 ], [ 0.000000e+00, %4363 ]
  %4369 = phi float [ %4426, %4421 ], [ 0.000000e+00, %4363 ]
  %4370 = phi float [ %4427, %4421 ], [ 0.000000e+00, %4363 ]
  %4371 = phi i32 [ %4428, %4421 ], [ 0, %4363 ]
  %4372 = shl i32 %4371, 2
  %4373 = add i32 %4239, %4372
  %4374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = add i32 %4243, %4372
  %4377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.i32 %4377, 0
  %4379 = add i32 %4378, 0
  %4380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4379, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4381 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4380, i32 0)  ; GetDimensions(handle,mipLevel)
  %4382 = extractvalue %dx.types.Dimensions %4381, 0
  %4383 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4382)  ; FirstbitLo(value)
  %4384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.i32 %4384, 1
  %4386 = sub nsw i32 %4385, %4383
  %4387 = sitofp i32 %4386 to float
  %4388 = fsub fast float %4272, %4387
  %4389 = call float @dx.op.binary.f32(i32 35, float %4388, float 0.000000e+00)  ; FMax(a,b)
  %4390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4380, %dx.types.Handle %37, float %4360, float %4361, float %4375, float undef, i32 0, i32 0, i32 undef, float %4389)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = fcmp fast ogt float %4391, 0.000000e+00
  br i1 %4392, label %4393, label %4421

; <label>:4393                                    ; preds = %4364
  %4394 = add i32 %4354, %4372
  %4395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4396 = extractvalue %dx.types.ResRet.i32 %4395, 0
  %4397 = and i32 %4396, 32767
  %4398 = mul nuw nsw i32 %4397, 928
  %4399 = add nuw nsw i32 %4398, 48
  %4400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = add nuw nsw i32 %4398, 60
  %4405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.ResRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4405, 2
  %4409 = fmul fast float %4401, %4391
  %4410 = fmul fast float %4402, %4391
  %4411 = fmul fast float %4403, %4391
  %4412 = fadd fast float %4409, %4365
  %4413 = fadd fast float %4410, %4366
  %4414 = fadd fast float %4411, %4367
  %4415 = fmul fast float %4406, %4391
  %4416 = fmul fast float %4407, %4391
  %4417 = fmul fast float %4408, %4391
  %4418 = fadd fast float %4415, %4368
  %4419 = fadd fast float %4416, %4369
  %4420 = fadd fast float %4417, %4370
  br label %4421

; <label>:4421                                    ; preds = %4393, %4364
  %4422 = phi float [ %4412, %4393 ], [ %4365, %4364 ]
  %4423 = phi float [ %4413, %4393 ], [ %4366, %4364 ]
  %4424 = phi float [ %4414, %4393 ], [ %4367, %4364 ]
  %4425 = phi float [ %4418, %4393 ], [ %4368, %4364 ]
  %4426 = phi float [ %4419, %4393 ], [ %4369, %4364 ]
  %4427 = phi float [ %4420, %4393 ], [ %4370, %4364 ]
  %4428 = add nuw i32 %4371, 1
  %4429 = icmp eq i32 %4428, %4353
  br i1 %4429, label %4430, label %4364

; <label>:4430                                    ; preds = %4421
  br label %4431

; <label>:4431                                    ; preds = %4430, %4294
  %4432 = phi float [ 0.000000e+00, %4294 ], [ %4422, %4430 ]
  %4433 = phi float [ 0.000000e+00, %4294 ], [ %4423, %4430 ]
  %4434 = phi float [ 0.000000e+00, %4294 ], [ %4424, %4430 ]
  %4435 = phi float [ 0.000000e+00, %4294 ], [ %4425, %4430 ]
  %4436 = phi float [ 0.000000e+00, %4294 ], [ %4426, %4430 ]
  %4437 = phi float [ 0.000000e+00, %4294 ], [ %4427, %4430 ]
  %4438 = fadd fast float %4435, %4432
  %4439 = fmul fast float %4438, 0x3F847AE140000000
  %4440 = fadd fast float %4436, %4433
  %4441 = fmul fast float %4440, 0x3F847AE140000000
  %4442 = fadd fast float %4437, %4434
  %4443 = fmul fast float %4442, 0x3F847AE140000000
  br label %4444

; <label>:4444                                    ; preds = %4431, %4228, %4173, %4170, %4141, %4103
  %4445 = phi float [ %4155, %4141 ], [ -1.310720e+05, %4103 ], [ %4347, %4431 ], [ -1.310720e+05, %4173 ], [ -1.310720e+05, %4228 ], [ -1.310720e+05, %4170 ]
  %4446 = phi float [ %4165, %4141 ], [ 0.000000e+00, %4103 ], [ %4439, %4431 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4228 ], [ 0.000000e+00, %4170 ]
  %4447 = phi float [ %4167, %4141 ], [ 0.000000e+00, %4103 ], [ %4441, %4431 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4228 ], [ 0.000000e+00, %4170 ]
  %4448 = phi float [ %4169, %4141 ], [ 0.000000e+00, %4103 ], [ %4443, %4431 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4228 ], [ 0.000000e+00, %4170 ]
  %4449 = phi i1 [ true, %4141 ], [ false, %4103 ], [ true, %4431 ], [ false, %4173 ], [ false, %4228 ], [ false, %4170 ]
  %4450 = and i32 %159, 3
  %4451 = icmp eq i32 %4450, 1
  %4452 = select i1 %4451, float 1.000000e+00, float 0.000000e+00
  %4453 = fsub fast float %4445, %143
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = select i1 %4449, float %4454, float 1.000000e+00
  %4456 = fmul fast float %4455, %4452
  %4457 = icmp eq i32 %4450, 3
  %4458 = select i1 %4457, float 1.000000e+00, float %4456
  %4459 = call float @dx.op.binary.f32(i32 35, float %4045, float %4458)  ; FMax(a,b)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fcmp fast une float %4460, 0.000000e+00
  %4462 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call float @dx.op.unary.f32(i32 25, float %4462)  ; Rsqrt(value)
  br i1 %4461, label %4471, label %4464

; <label>:4464                                    ; preds = %4444
  %4465 = fmul fast float %4463, %141
  %4466 = fmul fast float %4463, %142
  %4467 = fmul fast float %4463, %143
  %4468 = fsub fast float -0.000000e+00, %4465
  %4469 = fsub fast float -0.000000e+00, %4466
  %4470 = fsub fast float -0.000000e+00, %4467
  br label %4639

; <label>:4471                                    ; preds = %4444
  %4472 = fmul fast float %141, %4463
  %4473 = fsub fast float -0.000000e+00, %4472
  %4474 = fmul fast float %142, %4463
  %4475 = fsub fast float -0.000000e+00, %4474
  %4476 = fmul fast float %143, %4463
  %4477 = fsub fast float -0.000000e+00, %4476
  %4478 = call float @dx.op.dot3.f32(i32 55, float %4473, float %4475, float %4477, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4479 = fmul fast float %4460, 2.500000e+00
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4460, 0x4013FFFFE0000000
  %4482 = fadd fast float %4481, 0xBFFFFFFFE0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4460, 0x4004000020000000
  %4485 = fadd fast float %4484, 0xBFF8000040000000
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4488 = fmul fast float %4049, 1.000000e+01
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = fmul fast float %4489, 2.000000e+00
  %4491 = fsub fast float 3.000000e+00, %4490
  %4492 = fmul fast float %4489, %4489
  %4493 = fmul fast float %4492, %4491
  %4494 = fsub fast float 1.000000e+00, %4493
  %4495 = fsub fast float 0x3FE3333340000000, %4070
  %4496 = fmul fast float %4495, 0x400AAAAAA0000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4494, %4497
  %4499 = fmul fast float %4082, 0x3FEA2B8620000000
  %4500 = fmul fast float %4083, 0x3FEA2B8620000000
  %4501 = fmul fast float %4084, 0x3FEA2B8620000000
  %4502 = fadd fast float %4499, 0x3FC81DFBA0000000
  %4503 = fmul fast float %4502, %4082
  %4504 = fadd fast float %4503, 0x3F910E6020000000
  %4505 = fadd fast float %4500, 0x3FC81DFBA0000000
  %4506 = fmul fast float %4505, %4083
  %4507 = fadd fast float %4506, 0x3F910E6020000000
  %4508 = fadd fast float %4501, 0x3FC81DFBA0000000
  %4509 = fmul fast float %4508, %4084
  %4510 = fadd fast float %4509, 0x3F910E6020000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = fsub fast float %4511, %4082
  %4515 = fsub fast float %4512, %4083
  %4516 = fsub fast float %4513, %4084
  %4517 = fmul fast float %4514, %4487
  %4518 = fmul fast float %4517, %4498
  %4519 = fmul fast float %4515, %4487
  %4520 = fmul fast float %4519, %4498
  %4521 = fmul fast float %4516, %4487
  %4522 = fmul fast float %4521, %4498
  %4523 = fadd fast float %4518, %4082
  %4524 = fadd fast float %4520, %4083
  %4525 = fadd fast float %4522, %4084
  %4526 = fmul fast float %4042, %4042
  %4527 = fmul fast float %4526, %4526
  %4528 = fadd fast float %4483, 1.000000e+00
  %4529 = fsub fast float %4528, %4498
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4532 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4533 = fsub fast float 1.000000e+00, %4527
  %4534 = call float @dx.op.binary.f32(i32 36, float %4530, float %4533)  ; FMin(a,b)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4536 = call float @dx.op.binary.f32(i32 35, float %4534, float %4535)  ; FMax(a,b)
  %4537 = fadd fast float %4532, 0xBFE4CCCCC0000000
  %4538 = fmul fast float %4537, 0x4006DB6DA0000000
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fmul fast float %4539, 2.000000e+00
  %4541 = fsub fast float 3.000000e+00, %4540
  %4542 = bitcast float %4067 to i32
  %4543 = ashr i32 %4542, 1
  %4544 = add nsw i32 %4543, 532487669
  %4545 = bitcast i32 %4544 to float
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = bitcast float %4068 to i32
  %4552 = ashr i32 %4551, 1
  %4553 = add nsw i32 %4552, 532487669
  %4554 = bitcast i32 %4553 to float
  %4555 = fsub fast float 1.000000e+00, %4554
  %4556 = bitcast float %4555 to i32
  %4557 = sub nsw i32 2129859010, %4556
  %4558 = bitcast i32 %4557 to float
  %4559 = fmul fast float %4558, 2.000000e+00
  %4560 = bitcast float %4069 to i32
  %4561 = ashr i32 %4560, 1
  %4562 = add nsw i32 %4561, 532487669
  %4563 = bitcast i32 %4562 to float
  %4564 = fsub fast float 1.000000e+00, %4563
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = fmul fast float %4567, 2.000000e+00
  %4569 = fsub fast float 0x4002A9FBE0000000, %4550
  %4570 = fadd fast float %4550, 0x3FD54FDF00000000
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4574, %4574
  %4576 = fsub fast float 0x4002A9FBE0000000, %4559
  %4577 = fadd fast float %4559, 0x3FD54FDF00000000
  %4578 = bitcast float %4577 to i32
  %4579 = sub nsw i32 2129859010, %4578
  %4580 = bitcast i32 %4579 to float
  %4581 = fmul fast float %4580, %4576
  %4582 = fmul fast float %4581, %4581
  %4583 = fsub fast float 0x4002A9FBE0000000, %4568
  %4584 = fadd fast float %4568, 0x3FD54FDF00000000
  %4585 = bitcast float %4584 to i32
  %4586 = sub nsw i32 2129859010, %4585
  %4587 = bitcast i32 %4586 to float
  %4588 = fmul fast float %4587, %4583
  %4589 = fmul fast float %4588, %4588
  %4590 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4575)  ; FMax(a,b)
  %4591 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4582)  ; FMax(a,b)
  %4592 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4589)  ; FMax(a,b)
  %4593 = fsub fast float 1.000000e+00, %4478
  %4594 = fadd fast float %4593, %4494
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fsub fast float 1.000000e+00, %4458
  %4597 = fmul fast float %4536, %4596
  %4598 = fmul fast float %4539, %4539
  %4599 = fmul fast float %4598, %4597
  %4600 = fmul fast float %4599, %4541
  %4601 = fmul fast float %4596, 0xBFE99999A0000000
  %4602 = fmul fast float %4601, %4487
  %4603 = fmul fast float %4602, %4498
  %4604 = fadd fast float %4603, 1.000000e+00
  %4605 = fadd fast float %4070, -1.000000e+00
  %4606 = fmul fast float %4604, %4605
  %4607 = fadd fast float %4606, 1.000000e+00
  %4608 = fsub fast float %4590, %4067
  %4609 = fsub fast float %4591, %4068
  %4610 = fsub fast float %4592, %4069
  %4611 = fmul fast float %4600, %4608
  %4612 = fmul fast float %4600, %4609
  %4613 = fmul fast float %4600, %4610
  %4614 = fadd fast float %4611, %4067
  %4615 = fadd fast float %4612, %4068
  %4616 = fadd fast float %4613, %4069
  %4617 = fsub fast float %85, %4030
  %4618 = fsub fast float %86, %4031
  %4619 = fsub fast float %87, %4032
  %4620 = fmul fast float %4600, %4617
  %4621 = fmul fast float %4600, %4618
  %4622 = fmul fast float %4600, %4619
  %4623 = fadd fast float %4620, %4030
  %4624 = fadd fast float %4621, %4031
  %4625 = fadd fast float %4622, %4032
  %4626 = fmul fast float %4600, %4595
  %4627 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4628 = fsub fast float 1.000000e+00, %4627
  %4629 = fmul fast float %4626, %4628
  %4630 = fadd fast float %4629, %4627
  %4631 = fsub fast float 1.000000e+00, %4042
  %4632 = fmul fast float %4600, %4631
  %4633 = fadd fast float %4632, %4042
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 25, float %4634)  ; Rsqrt(value)
  %4636 = fmul fast float %4623, %4635
  %4637 = fmul fast float %4624, %4635
  %4638 = fmul fast float %4625, %4635
  br label %4639

; <label>:4639                                    ; preds = %4471, %4464
  %4640 = phi float [ %4470, %4464 ], [ %4477, %4471 ]
  %4641 = phi float [ %4469, %4464 ], [ %4475, %4471 ]
  %4642 = phi float [ %4468, %4464 ], [ %4473, %4471 ]
  %4643 = phi float [ %4467, %4464 ], [ %4476, %4471 ]
  %4644 = phi float [ %4466, %4464 ], [ %4474, %4471 ]
  %4645 = phi float [ %4465, %4464 ], [ %4472, %4471 ]
  %4646 = phi float [ %4067, %4464 ], [ %4614, %4471 ]
  %4647 = phi float [ %4068, %4464 ], [ %4615, %4471 ]
  %4648 = phi float [ %4069, %4464 ], [ %4616, %4471 ]
  %4649 = phi float [ %4082, %4464 ], [ %4523, %4471 ]
  %4650 = phi float [ %4083, %4464 ], [ %4524, %4471 ]
  %4651 = phi float [ %4084, %4464 ], [ %4525, %4471 ]
  %4652 = phi float [ %4030, %4464 ], [ %4636, %4471 ]
  %4653 = phi float [ %4031, %4464 ], [ %4637, %4471 ]
  %4654 = phi float [ %4032, %4464 ], [ %4638, %4471 ]
  %4655 = phi float [ %4070, %4464 ], [ %4630, %4471 ]
  %4656 = phi float [ %4042, %4464 ], [ %4633, %4471 ]
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 2
  %4659 = extractvalue %dx.types.CBufRet.f32 %4657, 3
  %4660 = fmul fast float %4658, %78
  %4661 = fmul fast float %4659, %79
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4660, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = fmul fast float %4666, %4664
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = fadd fast float %4668, -1.000000e+00
  %4670 = fmul fast float %4669, %4663
  %4671 = fadd fast float %4670, 1.000000e+00
  %4672 = select i1 %183, float 0.000000e+00, float %4648
  %4673 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %4642, float %4641, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4644, float %4643, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = fmul fast float %4675, 2.000000e+00
  %4677 = fmul fast float %4676, %4652
  %4678 = fmul fast float %4676, %4653
  %4679 = fmul fast float %4676, %4654
  %4680 = fsub fast float %4645, %4677
  %4681 = fsub fast float %4644, %4678
  %4682 = fsub fast float %4643, %4679
  %4683 = call float @dx.op.binary.f32(i32 36, float %4656, float %4671)  ; FMin(a,b)
  %4684 = fsub fast float 1.000000e+00, %4683
  %4685 = bitcast float %4684 to i32
  %4686 = ashr i32 %4685, 1
  %4687 = add nsw i32 %4686, 532487669
  %4688 = bitcast i32 %4687 to float
  %4689 = fsub fast float 1.000000e+00, %4655
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3F847AE140000000)  ; FMax(a,b)
  %4691 = fmul fast float %4690, %4690
  %4692 = fmul fast float %4691, %4691
  %4693 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4688, float %4692, float %4693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = fsub fast float 1.000000e+00, %4656
  %4697 = bitcast float %4696 to i32
  %4698 = sub nsw i32 2129859010, %4697
  %4699 = fsub fast float 1.000000e+00, %55
  %4700 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.binary.f32(i32 35, float %4700, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4702 = fdiv fast float %4699, %4701
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, 5.000000e-01
  %4706 = fadd fast float %4705, 5.000000e-01
  %4707 = fmul fast float %4706, %55
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4709, %4702
  %4711 = fadd fast float %4707, %4710
  %4712 = fsub fast float 5.000000e-01, %4705
  %4713 = fmul fast float %4712, %4649
  %4714 = fmul fast float %4712, %4650
  %4715 = fmul fast float %4712, %4651
  %4716 = fadd fast float %4711, %4713
  %4717 = fadd fast float %4711, %4714
  %4718 = fadd fast float %4711, %4715
  %4719 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4720, 5.000000e-01
  %4722 = fadd fast float %4721, 5.000000e-01
  %4723 = fmul fast float %4722, %55
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fmul fast float %4725, %4702
  %4727 = fadd fast float %4723, %4726
  %4728 = fsub fast float 5.000000e-01, %4721
  %4729 = fmul fast float %4728, %4649
  %4730 = fmul fast float %4728, %4650
  %4731 = fmul fast float %4728, %4651
  %4732 = fadd fast float %4727, %4729
  %4733 = fadd fast float %4727, %4730
  %4734 = fadd fast float %4727, %4731
  %4735 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = call float @dx.op.binary.f32(i32 36, float %4649, float %4737)  ; FMin(a,b)
  %4739 = fmul fast float %4738, %4684
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = bitcast float %4740 to i32
  %4742 = sub nsw i32 2129859010, %4741
  %4743 = bitcast i32 %4742 to float
  %4744 = call float @dx.op.binary.f32(i32 36, float %4650, float %4737)  ; FMin(a,b)
  %4745 = fmul fast float %4744, %4684
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = call float @dx.op.binary.f32(i32 36, float %4651, float %4737)  ; FMin(a,b)
  %4751 = fmul fast float %4750, %4684
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = fmul fast float %4683, %56
  %4757 = fmul fast float %4756, %4716
  %4758 = fmul fast float %4757, %4743
  %4759 = fmul fast float %4683, %57
  %4760 = fmul fast float %4759, %4717
  %4761 = fmul fast float %4760, %4749
  %4762 = fmul fast float %4683, %58
  %4763 = fmul fast float %4762, %4718
  %4764 = fmul fast float %4763, %4755
  %4765 = call float @dx.op.binary.f32(i32 36, float %4646, float %4737)  ; FMin(a,b)
  %4766 = fmul fast float %4765, %4684
  %4767 = fsub fast float 1.000000e+00, %4766
  %4768 = bitcast float %4767 to i32
  %4769 = sub nsw i32 2129859010, %4768
  %4770 = bitcast i32 %4769 to float
  %4771 = call float @dx.op.binary.f32(i32 36, float %4647, float %4737)  ; FMin(a,b)
  %4772 = fmul fast float %4771, %4684
  %4773 = fsub fast float 1.000000e+00, %4772
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = call float @dx.op.binary.f32(i32 36, float %4672, float %4737)  ; FMin(a,b)
  %4778 = fmul fast float %4777, %4684
  %4779 = fsub fast float 1.000000e+00, %4778
  %4780 = bitcast float %4779 to i32
  %4781 = sub nsw i32 2129859010, %4780
  %4782 = bitcast i32 %4781 to float
  %4783 = fmul fast float %4756, %4732
  %4784 = fmul fast float %4783, %4770
  %4785 = fmul fast float %4759, %4733
  %4786 = fmul fast float %4785, %4776
  %4787 = fmul fast float %4762, %4734
  %4788 = fmul fast float %4787, %4782
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4761, float %4764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = select i1 %183, float 0.000000e+00, float %4758
  %4791 = select i1 %183, float %4789, float %4761
  %4792 = select i1 %183, float 0.000000e+00, float %4764
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4786, float %4788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = select i1 %183, float 0.000000e+00, float %4784
  %4795 = select i1 %183, float %4793, float %4786
  %4796 = select i1 %183, float 0.000000e+00, float %4788
  %4797 = fmul fast float %4674, 9.843750e-01
  %4798 = fmul fast float %4655, 9.843750e-01
  %4799 = fadd fast float %4797, 7.812500e-03
  %4800 = fadd fast float %4798, 7.812500e-03
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4799, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 3
  %4804 = fmul fast float %4802, %4646
  %4805 = fmul fast float %4802, %4647
  %4806 = fmul fast float %4802, %4672
  %4807 = fadd fast float %4804, %4803
  %4808 = fadd fast float %4805, %4803
  %4809 = fadd fast float %4806, %4803
  %4810 = fcmp fast ogt float %4043, 0.000000e+00
  br i1 %4810, label %4811, label %4837

; <label>:4811                                    ; preds = %4639
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4043, float %4674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = fadd fast float %4813, -5.000000e-01
  %4817 = fadd fast float %4814, -5.000000e-01
  %4818 = fadd fast float %4815, -5.000000e-01
  %4819 = fsub fast float 1.000000e+00, %4646
  %4820 = fsub fast float 1.000000e+00, %4647
  %4821 = fsub fast float 1.000000e+00, %4672
  %4822 = fmul fast float %4646, 4.000000e+00
  %4823 = fmul fast float %4822, %4819
  %4824 = fmul fast float %4823, %4816
  %4825 = fmul fast float %4647, 4.000000e+00
  %4826 = fmul fast float %4825, %4820
  %4827 = fmul fast float %4826, %4817
  %4828 = fmul fast float %4672, 4.000000e+00
  %4829 = fmul fast float %4828, %4821
  %4830 = fmul fast float %4829, %4818
  %4831 = fadd fast float %4824, %4807
  %4832 = fadd fast float %4827, %4808
  %4833 = fadd fast float %4830, %4809
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  br label %4837

; <label>:4837                                    ; preds = %4811, %4639
  %4838 = phi float [ %4834, %4811 ], [ %4807, %4639 ]
  %4839 = phi float [ %4835, %4811 ], [ %4808, %4639 ]
  %4840 = phi float [ %4836, %4811 ], [ %4809, %4639 ]
  %4841 = call float @dx.op.binary.f32(i32 35, float %4839, float %4840)  ; FMax(a,b)
  %4842 = call float @dx.op.binary.f32(i32 35, float %4838, float %4841)  ; FMax(a,b)
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = fmul fast float %4842, %4655
  %4845 = fadd fast float %4844, %4655
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4849 = extractvalue %dx.types.CBufRet.f32 %4846, 2
  %4850 = extractvalue %dx.types.CBufRet.f32 %4846, 3
  %4851 = fmul fast float %4845, %4847
  %4852 = fadd fast float %4851, %4848
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4849, %4845
  %4855 = fadd fast float %4854, %4850
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fsub fast float 1.000000e+00, %4695
  %4858 = fadd fast float %4857, %4856
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fcmp fast olt float %4859, 1.000000e+00
  br i1 %4860, label %4861, label %5716

; <label>:4861                                    ; preds = %4837
  %4862 = fcmp fast olt float %4853, 1.000000e+00
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = fcmp fast ogt float %4864, 0.000000e+00
  %4866 = or i1 %4862, %4865
  %4867 = or i1 %4862, %4865
  %4868 = xor i1 %4867, true
  %4869 = zext i1 %4868 to i32
  br i1 %4866, label %4870, label %5113

; <label>:4870                                    ; preds = %4861
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.CBufRet.f32 %4876, 2
  %4880 = extractvalue %dx.types.CBufRet.f32 %4876, 3
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4885 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4890 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4900 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4898, float %4899, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.unary.f32(i32 6, float %4902)  ; FAbs(value)
  %4904 = fmul fast float %4903, 8.000000e+00
  %4905 = fadd fast float %4904, -6.000000e+00
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4901, 8.000000e+00
  %4908 = fmul fast float %4907, %4864
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fcmp fast ogt float %4909, 0.000000e+00
  br i1 %4910, label %4911, label %5088, !dx.controlflow.hints !82

; <label>:4911                                    ; preds = %4870
  %4912 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4913 = extractvalue %dx.types.CBufRet.f32 %4863, 2
  %4914 = fsub fast float %4912, %4913
  %4915 = fmul fast float %4914, %4655
  %4916 = fadd fast float %4915, %4913
  %4917 = fmul fast float %196, 2.000000e+00
  %4918 = fmul fast float %197, 2.000000e+00
  %4919 = fadd fast float %4917, -1.000000e+00
  %4920 = fadd fast float %4918, -1.000000e+00
  %4921 = fmul fast float %4916, %4919
  %4922 = fmul fast float %4916, %4920
  %4923 = fadd fast float %4921, %78
  %4924 = fadd fast float %4922, %79
  %4925 = fmul fast float %4923, %4658
  %4926 = fmul fast float %4924, %4659
  %4927 = fadd fast float %4655, 0xBFE3333340000000
  %4928 = fmul fast float %4927, 0x4004000020000000
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, 3.000000e+00
  %4932 = fadd fast float %4931, %196
  %4933 = call float @dx.op.unary.f32(i32 27, float %4932)  ; Round_ni(value)
  %4934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4925, float %4926, float %4933, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 0
  %4936 = fcmp fast une float %4935, 0xFFF0000000000000
  %4937 = fcmp fast une float %4935, 0x7FF0000000000000
  %4938 = and i1 %4936, %4937
  %4939 = fcmp fast olt float %4935, 0.000000e+00
  %4940 = call float @dx.op.unary.f32(i32 6, float %4935)  ; FAbs(value)
  %4941 = fsub fast float 1.000000e+00, %4940
  %4942 = select i1 %4938, float 1.000000e+00, float 0.000000e+00
  %4943 = fmul fast float %4942, %4909
  %4944 = fcmp fast ogt float %4943, 0.000000e+00
  br i1 %4944, label %4945, label %5088, !dx.controlflow.hints !83

; <label>:4945                                    ; preds = %4911
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4950 = select i1 %4939, float 0.000000e+00, float %4947
  %4951 = select i1 %4939, float 0.000000e+00, float %4948
  %4952 = select i1 %4939, float 0.000000e+00, float %4949
  %4953 = select i1 %4939, float %4872, float %4887
  %4954 = select i1 %4939, float %4877, float %4892
  %4955 = select i1 %4939, float %4882, float %4897
  %4956 = select i1 %4939, float %4873, float %4888
  %4957 = select i1 %4939, float %4878, float %4893
  %4958 = select i1 %4939, float %4883, float %4898
  %4959 = select i1 %4939, float %4874, float %4889
  %4960 = select i1 %4939, float %4879, float %4894
  %4961 = select i1 %4939, float %4884, float %4899
  %4962 = select i1 %4939, float %4875, float %4890
  %4963 = select i1 %4939, float %4880, float %4895
  %4964 = select i1 %4939, float %4885, float %4900
  %4965 = fadd fast float %4950, %141
  %4966 = fadd fast float %4951, %142
  %4967 = fadd fast float %4952, %143
  %4968 = fmul fast float %4965, %4953
  %4969 = call float @dx.op.tertiary.f32(i32 46, float %4966, float %4956, float %4968)  ; FMad(a,b,c)
  %4970 = call float @dx.op.tertiary.f32(i32 46, float %4967, float %4959, float %4969)  ; FMad(a,b,c)
  %4971 = fadd fast float %4970, %4962
  %4972 = fmul fast float %4965, %4954
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4966, float %4957, float %4972)  ; FMad(a,b,c)
  %4974 = call float @dx.op.tertiary.f32(i32 46, float %4967, float %4960, float %4973)  ; FMad(a,b,c)
  %4975 = fadd fast float %4974, %4963
  %4976 = fmul fast float %4965, %4955
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4966, float %4958, float %4976)  ; FMad(a,b,c)
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4967, float %4961, float %4977)  ; FMad(a,b,c)
  %4979 = fadd fast float %4978, %4964
  %4980 = fdiv fast float 1.000000e+00, %4979
  %4981 = fmul fast float %4980, %4971
  %4982 = fmul fast float %4980, %4975
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4986 = fmul fast float %4981, %4984
  %4987 = fmul fast float %4982, %4985
  %4988 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4989 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4990 = fadd fast float %4986, %4988
  %4991 = fadd fast float %4987, %4989
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 3
  %4994 = fmul fast float %4993, %4680
  %4995 = fmul fast float %4993, %4681
  %4996 = fmul fast float %4993, %4682
  %4997 = fadd fast float %4994, %4965
  %4998 = fadd fast float %4995, %4966
  %4999 = fadd fast float %4996, %4967
  %5000 = fmul fast float %4997, %4953
  %5001 = call float @dx.op.tertiary.f32(i32 46, float %4998, float %4956, float %5000)  ; FMad(a,b,c)
  %5002 = call float @dx.op.tertiary.f32(i32 46, float %4999, float %4959, float %5001)  ; FMad(a,b,c)
  %5003 = fadd fast float %5002, %4962
  %5004 = fmul fast float %4997, %4954
  %5005 = call float @dx.op.tertiary.f32(i32 46, float %4998, float %4957, float %5004)  ; FMad(a,b,c)
  %5006 = call float @dx.op.tertiary.f32(i32 46, float %4999, float %4960, float %5005)  ; FMad(a,b,c)
  %5007 = fadd fast float %5006, %4963
  %5008 = fmul fast float %4997, %4955
  %5009 = call float @dx.op.tertiary.f32(i32 46, float %4998, float %4958, float %5008)  ; FMad(a,b,c)
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %4999, float %4961, float %5009)  ; FMad(a,b,c)
  %5011 = fadd fast float %5010, %4964
  %5012 = fdiv fast float 1.000000e+00, %5011
  %5013 = fmul fast float %5012, %5003
  %5014 = fmul fast float %5012, %5007
  %5015 = fmul fast float %4990, 2.000000e+00
  %5016 = fadd fast float %5015, -1.000000e+00
  %5017 = call float @dx.op.unary.f32(i32 6, float %5016)  ; FAbs(value)
  %5018 = fmul fast float %5017, 5.000000e+00
  %5019 = fadd fast float %5018, -4.000000e+00
  %5020 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5021 = fmul fast float %5020, %4906
  %5022 = fsub fast float %4981, %5013
  %5023 = fmul fast float %4984, %5022
  %5024 = fmul fast float %5021, %5023
  %5025 = fsub fast float %5013, %4981
  %5026 = fmul fast float %4984, %5025
  %5027 = fadd fast float %5026, %5024
  %5028 = fsub fast float %5014, %4982
  %5029 = fmul fast float %4985, %5028
  %5030 = fmul fast float %5027, %4941
  %5031 = fmul fast float %5029, %4941
  %5032 = fadd fast float %5030, %4990
  %5033 = fadd fast float %5031, %4991
  %5034 = fsub fast float %5012, %4980
  %5035 = fmul fast float %5034, %4941
  %5036 = fadd fast float %5035, %4980
  %5037 = fdiv fast float 1.000000e+00, %5036
  %5038 = fadd fast float %4655, -1.000000e+00
  %5039 = fsub fast float %5037, %4979
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5042 = fmul fast float %5041, %5037
  %5043 = fdiv fast float 1.600000e+02, %5042
  %5044 = fmul fast float %5038, %5038
  %5045 = fmul fast float %5044, 0xBFB5B17960000000
  %5046 = fmul fast float %5045, %5039
  %5047 = fmul fast float %5046, %5043
  %5048 = call float @dx.op.unary.f32(i32 21, float %5047)  ; Exp(value)
  %5049 = fmul fast float %5048, 0x3FF04B2960000000
  %5050 = fsub fast float 0x3FF04B2960000000, %5049
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fmul fast float %5051, 4.000000e+00
  %5053 = fadd fast float %196, -5.000000e-01
  %5054 = fadd fast float %197, -5.000000e-01
  %5055 = fmul fast float %5051, 0x3FBEB851E0000000
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fmul fast float %5056, %5053
  %5058 = fmul fast float %5056, %5054
  %5059 = fadd fast float %5032, %5057
  %5060 = fadd fast float %5033, %5058
  %5061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5059, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float %5052)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 2
  %5067 = fmul fast float %5066, %5062
  %5068 = fmul fast float %5066, %5063
  %5069 = fmul fast float %5066, %5064
  %5070 = select i1 %183, float 0.000000e+00, float %5068
  %5071 = select i1 %183, float 0.000000e+00, float %5069
  %5072 = fmul fast float %5059, 2.000000e+00
  %5073 = fmul fast float %5060, 2.000000e+00
  %5074 = fadd fast float %5072, -1.000000e+00
  %5075 = fadd fast float %5073, -1.000000e+00
  %5076 = fmul fast float %5074, %5074
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = fmul fast float %5079, %4906
  %5081 = fadd fast float %5080, %5078
  %5082 = fmul fast float %5075, %5075
  %5083 = fsub fast float 1.000000e+00, %5082
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5081, %5084
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fmul fast float %5086, %4943
  br label %5088

; <label>:5088                                    ; preds = %4945, %4911, %4870
  %5089 = phi float [ %5067, %4945 ], [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4870 ]
  %5090 = phi float [ %5070, %4945 ], [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4870 ]
  %5091 = phi float [ %5071, %4945 ], [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4870 ]
  %5092 = phi float [ %5087, %4945 ], [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4870 ]
  %5093 = fcmp fast olt float %5092, 1.000000e+00
  %5094 = or i1 %5093, %4868
  %5095 = zext i1 %5094 to i32
  %5096 = fmul fast float %5092, %4853
  %5097 = fsub fast float %5092, %5096
  %5098 = fsub fast float 1.000000e+00, %4859
  %5099 = fmul fast float %5097, %5098
  %5100 = fadd fast float %5099, %4859
  %5101 = fsub fast float %5100, %5097
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = fmul fast float %5102, %4794
  %5104 = fmul fast float %5102, %4795
  %5105 = fmul fast float %5102, %4796
  %5106 = fsub fast float -0.000000e+00, %5100
  %5107 = fmul fast float %5097, %5089
  %5108 = fmul fast float %5097, %5090
  %5109 = fmul fast float %5097, %5091
  %5110 = fadd fast float %5107, %5103
  %5111 = fadd fast float %5108, %5104
  %5112 = fadd fast float %5109, %5105
  br label %5113

; <label>:5113                                    ; preds = %5088, %4861
  %5114 = phi float [ %4859, %4861 ], [ %5106, %5088 ]
  %5115 = phi float [ %4794, %4861 ], [ %5110, %5088 ]
  %5116 = phi float [ %4795, %4861 ], [ %5111, %5088 ]
  %5117 = phi float [ %4796, %4861 ], [ %5112, %5088 ]
  %5118 = phi i32 [ %4869, %4861 ], [ %5095, %5088 ]
  %5119 = icmp eq i32 %5118, 0
  br i1 %5119, label %5716, label %5120

; <label>:5120                                    ; preds = %5113
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5123 = extractvalue %dx.types.CBufRet.f32 %5121, 3
  %5124 = fmul fast float %5122, %78
  %5125 = fmul fast float %5123, %79
  %5126 = fptoui float %5124 to i32
  %5127 = fptoui float %5125 to i32
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5131 = extractvalue %dx.types.CBufRet.f32 %5128, 3
  %5132 = fadd fast float %73, -4.000000e+00
  %5133 = call float @dx.op.binary.f32(i32 35, float %5132, float 0.000000e+00)  ; FMax(a,b)
  %5134 = fadd fast float %5133, %5129
  %5135 = fmul fast float %5134, %5130
  %5136 = call float @dx.op.unary.f32(i32 23, float %5135)  ; Log(value)
  %5137 = fmul fast float %5136, %5131
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5140 = fmul fast float %5137, %5139
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.i32 %5142, 1
  %5144 = add i32 %5143, -1
  %5145 = uitofp i32 %5143 to float
  %5146 = fmul fast float %5145, %5141
  %5147 = fptoui float %5146 to i32
  %5148 = call i32 @dx.op.binary.i32(i32 40, i32 %5147, i32 %5144)  ; UMin(a,b)
  %5149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.i32 %5149, 2
  %5151 = extractvalue %dx.types.CBufRet.i32 %5149, 3
  %5152 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5127, i32 %5150, i32 %5126)  ; UMad(a,b,c)
  %5153 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5148, i32 %5151, i32 %5152)  ; UMad(a,b,c)
  %5154 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5155 = fptoui float %5154 to i32
  %5156 = lshr i32 %5155, 5
  %5157 = call i32 @dx.op.binary.i32(i32 40, i32 %5156, i32 8191)  ; UMin(a,b)
  %5158 = fcmp fast ogt float %4454, 0.000000e+00
  %5159 = fcmp fast ogt float %4682, 0.000000e+00
  %5160 = and i1 %5159, %5158
  br i1 %5160, label %5161, label %5190

; <label>:5161                                    ; preds = %5120
  %5162 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = call float @dx.op.binary.f32(i32 35, float %5162, float -1.000000e+00)  ; FMax(a,b)
  %5164 = call float @dx.op.binary.f32(i32 36, float %5163, float 1.000000e+00)  ; FMin(a,b)
  %5165 = fmul fast float %5164, %5164
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = fmul fast float %5166, 0x3FFC6E2300000000
  %5168 = fsub fast float 1.000000e+00, %5167
  %5169 = fcmp fast ogt float %5168, 0.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 24, float %5168)  ; Sqrt(value)
  %5171 = fsub fast float 1.000000e+00, %5170
  %5172 = call float @dx.op.unary.f32(i32 23, float %5171)  ; Log(value)
  %5173 = fmul fast float %5172, 5.000000e+00
  %5174 = call float @dx.op.unary.f32(i32 21, float %5173)  ; Exp(value)
  %5175 = fmul fast float %5174, 0x3FEF591A60000000
  %5176 = fadd fast float %5175, 0x3F94DCB540000000
  %5177 = select i1 %5169, float %5176, float 1.000000e+00
  %5178 = fcmp fast oge float %5177, 1.000000e+00
  %5179 = fmul fast float %5162, 2.000000e+00
  %5180 = fadd fast float %5179, %4682
  %5181 = select i1 %5178, float %5180, float %4682
  %5182 = fsub fast float %5181, %4682
  %5183 = fmul fast float %5182, %4454
  %5184 = fadd fast float %5183, %4682
  %5185 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %5184, float %4680, float %4681, float %5184)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = call float @dx.op.unary.f32(i32 25, float %5185)  ; Rsqrt(value)
  %5187 = fmul fast float %5186, %4680
  %5188 = fmul fast float %5186, %4681
  %5189 = fmul fast float %5184, %5186
  br label %5190

; <label>:5190                                    ; preds = %5161, %5120
  %5191 = phi float [ %5187, %5161 ], [ %4680, %5120 ]
  %5192 = phi float [ %5188, %5161 ], [ %4681, %5120 ]
  %5193 = phi float [ %5189, %5161 ], [ %4682, %5120 ]
  %5194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.i32 %5194, 2
  %5196 = add nsw i32 %5195, -1
  %5197 = call i32 @dx.op.binary.i32(i32 37, i32 %5196, i32 0)  ; IMax(a,b)
  %5198 = shl i32 %5157, 2
  %5199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5198, i32 undef)  ; BufferLoad(srv,index,wot)
  %5200 = extractvalue %dx.types.ResRet.i32 %5199, 0
  %5201 = lshr i32 %5200, 16
  %5202 = and i32 %5200, 65535
  %5203 = lshr i32 %5200, 21
  %5204 = lshr i32 %5202, 5
  %5205 = call i32 @dx.op.binary.i32(i32 40, i32 %5204, i32 %5197)  ; UMin(a,b)
  %5206 = icmp ugt i32 %5203, %5205
  br i1 %5206, label %5588, label %5207

; <label>:5207                                    ; preds = %5190
  br label %5208

; <label>:5208                                    ; preds = %5577, %5207
  %5209 = phi float [ %5578, %5577 ], [ 0.000000e+00, %5207 ]
  %5210 = phi float [ %5579, %5577 ], [ 0.000000e+00, %5207 ]
  %5211 = phi float [ %5580, %5577 ], [ 0.000000e+00, %5207 ]
  %5212 = phi float [ %5581, %5577 ], [ 1.000000e+00, %5207 ]
  %5213 = phi i32 [ %5585, %5577 ], [ %5203, %5207 ]
  %5214 = phi float [ %5582, %5577 ], [ 0.000000e+00, %5207 ]
  %5215 = phi float [ %5583, %5577 ], [ 0.000000e+00, %5207 ]
  %5216 = phi float [ %5584, %5577 ], [ 0.000000e+00, %5207 ]
  %5217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.i32 %5217, 2
  %5219 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5153, i32 %5218, i32 %5213)  ; UMad(a,b,c)
  %5220 = shl i32 %5219, 2
  %5221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5220, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.i32 %5221, 0
  %5223 = shl i32 %5213, 5
  %5224 = sub nsw i32 %5201, %5223
  %5225 = call i32 @dx.op.binary.i32(i32 37, i32 %5224, i32 0)  ; IMax(a,b)
  %5226 = call i32 @dx.op.binary.i32(i32 38, i32 %5225, i32 31)  ; IMin(a,b)
  %5227 = sub nsw i32 1, %5201
  %5228 = add nsw i32 %5227, %5202
  %5229 = call i32 @dx.op.binary.i32(i32 37, i32 %5228, i32 0)  ; IMax(a,b)
  %5230 = call i32 @dx.op.binary.i32(i32 38, i32 %5229, i32 32)  ; IMin(a,b)
  %5231 = and i32 %5230, 31
  %5232 = shl i32 -1, %5231
  %5233 = xor i32 %5232, -1
  %5234 = and i32 %5226, 31
  %5235 = shl i32 %5233, %5234
  %5236 = icmp eq i32 %5230, 32
  %5237 = select i1 %5236, i32 -1, i32 %5235
  %5238 = and i32 %5237, %5222
  %5239 = icmp eq i32 %5238, 0
  br i1 %5239, label %5577, label %5240

; <label>:5240                                    ; preds = %5208
  br label %5241

; <label>:5241                                    ; preds = %5351, %5240
  %5242 = phi float [ %5352, %5351 ], [ %5209, %5240 ]
  %5243 = phi float [ %5353, %5351 ], [ %5210, %5240 ]
  %5244 = phi float [ %5354, %5351 ], [ %5211, %5240 ]
  %5245 = phi float [ %5355, %5351 ], [ %5212, %5240 ]
  %5246 = phi i32 [ %5254, %5351 ], [ %5238, %5240 ]
  %5247 = phi float [ %5356, %5351 ], [ %5214, %5240 ]
  %5248 = phi float [ %5357, %5351 ], [ %5215, %5240 ]
  %5249 = phi float [ %5358, %5351 ], [ %5216, %5240 ]
  %5250 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5246)  ; FirstbitLo(value)
  %5251 = add i32 %5250, %5223
  %5252 = and i32 %5250, 31
  %5253 = shl i32 1, %5252
  %5254 = xor i32 %5253, %5246
  %5255 = mul i32 %5251, 72
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = add i32 %5255, 12
  %5261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.i32 %5261, 0
  %5263 = add i32 %5255, 16
  %5264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = add i32 %5255, 28
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = add i32 %5255, 32
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5271, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = extractvalue %dx.types.ResRet.f32 %5272, 3
  %5277 = add i32 %5255, 48
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = add i32 %5255, 56
  %5282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.ResRet.f32 %5282, 1
  %5285 = add i32 %5255, 64
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = mul i32 %5251, 60
  %5290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = add i32 %5289, 12
  %5295 = add i32 %5289, 48
  %5296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5295, i32 undef)  ; BufferLoad(srv,index,wot)
  %5297 = extractvalue %dx.types.ResRet.f32 %5296, 0
  %5298 = extractvalue %dx.types.ResRet.f32 %5296, 1
  %5299 = extractvalue %dx.types.ResRet.f32 %5296, 2
  %5300 = and i32 %5262, 32767
  %5301 = bitcast float %5257 to i32
  %5302 = icmp eq i32 %5301, -1
  %5303 = bitcast float %5258 to i32
  %5304 = and i32 %5262, 32768
  %5305 = icmp ne i32 %5304, 0
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5310 = fsub fast float %5291, %5307
  %5311 = fsub fast float %5292, %5308
  %5312 = fsub fast float %5293, %5309
  %5313 = fsub fast float %141, %5310
  %5314 = fsub fast float %142, %5311
  %5315 = fsub fast float %143, %5312
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.ResRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.ResRet.f32 %5316, 2
  %5320 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5317, float %5318, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = add i32 %5289, 24
  %5322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.ResRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.ResRet.f32 %5322, 2
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = add i32 %5289, 36
  %5328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.unary.f32(i32 6, float %5320)  ; FAbs(value)
  %5334 = call float @dx.op.unary.f32(i32 6, float %5326)  ; FAbs(value)
  %5335 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5336 = fsub fast float %5297, %5333
  %5337 = fsub fast float %5298, %5334
  %5338 = fsub fast float %5299, %5335
  %5339 = fmul fast float %5336, %5265
  %5340 = fmul fast float %5337, %5266
  %5341 = fmul fast float %5338, %5267
  %5342 = call float @dx.op.binary.f32(i32 36, float %5340, float %5341)  ; FMin(a,b)
  %5343 = call float @dx.op.binary.f32(i32 36, float %5339, float %5342)  ; FMin(a,b)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = call float @dx.op.binary.f32(i32 36, float %5245, float %5344)  ; FMin(a,b)
  %5346 = uitofp i1 %5305 to float
  %5347 = fadd fast float %4454, 1.000000e+00
  %5348 = fsub fast float %5347, %5346
  %5349 = fmul fast float %5345, %5348
  %5350 = fcmp fast ogt float %5349, 0.000000e+00
  br i1 %5350, label %5360, label %5351

; <label>:5351                                    ; preds = %5502, %5241
  %5352 = phi float [ %5566, %5502 ], [ %5242, %5241 ]
  %5353 = phi float [ %5567, %5502 ], [ %5243, %5241 ]
  %5354 = phi float [ %5568, %5502 ], [ %5244, %5241 ]
  %5355 = phi float [ %5575, %5502 ], [ %5245, %5241 ]
  %5356 = phi float [ %5572, %5502 ], [ %5247, %5241 ]
  %5357 = phi float [ %5573, %5502 ], [ %5248, %5241 ]
  %5358 = phi float [ %5574, %5502 ], [ %5249, %5241 ]
  %5359 = icmp eq i32 %5246, %5253
  br i1 %5359, label %5576, label %5241

; <label>:5360                                    ; preds = %5241
  br i1 %5302, label %5418, label %5361

; <label>:5361                                    ; preds = %5360
  %5362 = fsub fast float -0.000000e+00, %5317
  %5363 = fsub fast float -0.000000e+00, %5318
  %5364 = fsub fast float -0.000000e+00, %5319
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fsub fast float -0.000000e+00, %5365
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fadd fast float %5367, %5280
  %5369 = fadd fast float %5279, %5367
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = fcmp ogt float %5365, -0.000000e+00
  %5372 = select i1 %5371, float %5370, float %5368
  %5373 = call float @dx.op.unary.f32(i32 6, float %5366)  ; FAbs(value)
  %5374 = fdiv fast float 1.000000e+00, %5373
  %5375 = fmul fast float %5372, %5374
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float 0.000000e+00)  ; FMax(a,b)
  %5377 = fsub fast float -0.000000e+00, %5323
  %5378 = fsub fast float -0.000000e+00, %5324
  %5379 = fsub fast float -0.000000e+00, %5325
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = fadd fast float %5382, %5284
  %5384 = fadd fast float %5283, %5382
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = fcmp ogt float %5380, -0.000000e+00
  %5387 = select i1 %5386, float %5385, float %5383
  %5388 = call float @dx.op.unary.f32(i32 6, float %5381)  ; FAbs(value)
  %5389 = fdiv fast float 1.000000e+00, %5388
  %5390 = fmul fast float %5387, %5389
  %5391 = call float @dx.op.binary.f32(i32 35, float %5390, float 0.000000e+00)  ; FMax(a,b)
  %5392 = fsub fast float -0.000000e+00, %5329
  %5393 = fsub fast float -0.000000e+00, %5330
  %5394 = fsub fast float -0.000000e+00, %5331
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5392, float %5393, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fsub fast float -0.000000e+00, %5395
  %5397 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5392, float %5393, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fadd fast float %5397, %5288
  %5399 = fadd fast float %5287, %5397
  %5400 = fsub fast float -0.000000e+00, %5399
  %5401 = fcmp ogt float %5395, -0.000000e+00
  %5402 = select i1 %5401, float %5400, float %5398
  %5403 = call float @dx.op.unary.f32(i32 6, float %5396)  ; FAbs(value)
  %5404 = fdiv fast float 1.000000e+00, %5403
  %5405 = fmul fast float %5402, %5404
  %5406 = call float @dx.op.binary.f32(i32 35, float %5405, float 0.000000e+00)  ; FMax(a,b)
  %5407 = call float @dx.op.binary.f32(i32 36, float %5391, float %5406)  ; FMin(a,b)
  %5408 = call float @dx.op.binary.f32(i32 36, float %5376, float %5407)  ; FMin(a,b)
  %5409 = fmul fast float %5408, %5191
  %5410 = fmul fast float %5408, %5192
  %5411 = fmul fast float %5408, %5193
  %5412 = fadd fast float %5409, %141
  %5413 = fadd fast float %5410, %142
  %5414 = fadd fast float %5411, %143
  %5415 = fsub fast float %5412, %5257
  %5416 = fsub fast float %5413, %5258
  %5417 = fsub fast float %5414, %5259
  br label %5425

; <label>:5418                                    ; preds = %5360
  %5419 = fmul fast float %5191, 8.096000e+03
  %5420 = fmul fast float %5192, 8.096000e+03
  %5421 = fmul fast float %5193, 8.096000e+03
  %5422 = fadd fast float %5419, %141
  %5423 = fadd fast float %5420, %142
  %5424 = fadd fast float %5421, %143
  br label %5425

; <label>:5425                                    ; preds = %5418, %5361
  %5426 = phi float [ %5191, %5418 ], [ %5415, %5361 ]
  %5427 = phi float [ %5192, %5418 ], [ %5416, %5361 ]
  %5428 = phi float [ %5193, %5418 ], [ %5417, %5361 ]
  %5429 = phi float [ %5422, %5418 ], [ %5412, %5361 ]
  %5430 = phi float [ %5423, %5418 ], [ %5413, %5361 ]
  %5431 = phi float [ %5424, %5418 ], [ %5414, %5361 ]
  %5432 = fcmp fast olt float %5276, 1.000000e+00
  br i1 %5432, label %5433, label %5464, !dx.controlflow.hints !84

; <label>:5433                                    ; preds = %5425
  %5434 = fmul fast float %5428, %5274
  %5435 = fmul fast float %5427, %5275
  %5436 = fsub fast float %5434, %5435
  %5437 = fmul fast float %5426, %5275
  %5438 = fmul fast float %5428, %5273
  %5439 = fsub fast float %5437, %5438
  %5440 = fmul fast float %5427, %5273
  %5441 = fmul fast float %5426, %5274
  %5442 = fsub fast float %5440, %5441
  %5443 = fmul fast float %5436, 2.000000e+00
  %5444 = fmul fast float %5439, 2.000000e+00
  %5445 = fmul fast float %5442, 2.000000e+00
  %5446 = fmul fast float %5443, %5276
  %5447 = fmul fast float %5444, %5276
  %5448 = fmul fast float %5445, %5276
  %5449 = fmul fast float %5445, %5274
  %5450 = fmul fast float %5444, %5275
  %5451 = fmul fast float %5443, %5275
  %5452 = fmul fast float %5445, %5273
  %5453 = fmul fast float %5444, %5273
  %5454 = fmul fast float %5443, %5274
  %5455 = fadd fast float %5449, %5426
  %5456 = fadd fast float %5455, %5446
  %5457 = fsub fast float %5456, %5450
  %5458 = fsub fast float %5427, %5452
  %5459 = fadd fast float %5458, %5447
  %5460 = fadd fast float %5459, %5451
  %5461 = fadd fast float %5448, %5428
  %5462 = fsub fast float %5461, %5454
  %5463 = fadd fast float %5462, %5453
  br label %5464

; <label>:5464                                    ; preds = %5433, %5425
  %5465 = phi float [ %5457, %5433 ], [ %5426, %5425 ]
  %5466 = phi float [ %5460, %5433 ], [ %5427, %5425 ]
  %5467 = phi float [ %5463, %5433 ], [ %5428, %5425 ]
  br i1 %5302, label %5499, label %5468

; <label>:5468                                    ; preds = %5464
  %5469 = fmul fast float %4655, 0x400187C840000000
  %5470 = fadd fast float %5469, 0xC00EFC2120000000
  %5471 = fmul fast float %5470, %4655
  %5472 = fadd fast float %5471, 0x3FE5D16340000000
  %5473 = fmul fast float %5472, %4655
  %5474 = fadd fast float %5473, 1.000000e+00
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fsub fast float %5429, %141
  %5477 = fsub fast float %5430, %142
  %5478 = fsub fast float %5431, %143
  %5479 = fsub fast float %5429, %5257
  %5480 = fsub fast float %5430, %5258
  %5481 = fsub fast float %5431, %5259
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5480, float %5481, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fadd fast float %5483, 0x3EE4F8B580000000
  %5485 = fdiv fast float %5482, %5484
  %5486 = bitcast float %5485 to i32
  %5487 = ashr i32 %5486, 1
  %5488 = add nsw i32 %5487, 532487669
  %5489 = bitcast i32 %5488 to float
  %5490 = fmul fast float %5489, %5475
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fmul fast float %5491, 0x4009981AE0000000
  %5493 = fsub fast float 0x40111BBD80000000, %5492
  %5494 = fmul fast float %5493, %5491
  %5495 = fadd fast float %5494, 0xC0009F6020000000
  %5496 = fmul fast float %5495, %5491
  %5497 = fadd fast float %5496, 1.000000e+00
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  br label %5502

; <label>:5499                                    ; preds = %5464
  %5500 = icmp ne i32 %5303, -1
  %5501 = zext i1 %5500 to i32
  br label %5502

; <label>:5502                                    ; preds = %5499, %5468
  %5503 = phi float [ %4655, %5499 ], [ %5498, %5468 ]
  %5504 = phi i32 [ %5501, %5499 ], [ 0, %5468 ]
  %5505 = fmul float %5503, 5.000000e+00
  %5506 = fsub float 5.000000e+00, %5505
  %5507 = icmp ne i32 %5504, 0
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5510 = fadd fast float %5509, %5506
  %5511 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5510)  ; FMax(a,b)
  %5512 = call float @dx.op.unary.f32(i32 6, float %5465)  ; FAbs(value)
  %5513 = call float @dx.op.unary.f32(i32 6, float %5466)  ; FAbs(value)
  %5514 = fadd fast float %5513, %5512
  %5515 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5516 = fadd fast float %5514, %5515
  %5517 = fcmp fast oeq float %5516, 0.000000e+00
  %5518 = fdiv fast float 1.000000e+00, %5516
  %5519 = select i1 %5517, float 1.000000e+00, float %5518
  %5520 = fmul fast float %5519, %5465
  %5521 = fmul fast float %5519, %5466
  %5522 = call float @dx.op.unary.f32(i32 6, float %5521)  ; FAbs(value)
  %5523 = call float @dx.op.unary.f32(i32 6, float %5520)  ; FAbs(value)
  %5524 = fsub fast float 1.000000e+00, %5522
  %5525 = fsub fast float 1.000000e+00, %5523
  %5526 = fcmp fast oge float %5520, 0.000000e+00
  %5527 = fcmp fast oge float %5521, 0.000000e+00
  %5528 = select i1 %5526, float 1.000000e+00, float -1.000000e+00
  %5529 = select i1 %5527, float 1.000000e+00, float -1.000000e+00
  %5530 = fcmp fast ole float %5467, 0.000000e+00
  %5531 = fmul fast float %5528, %5524
  %5532 = fmul fast float %5529, %5525
  %5533 = select i1 %5530, float %5531, float %5520
  %5534 = select i1 %5530, float %5532, float %5521
  %5535 = fmul fast float %5533, 5.000000e-01
  %5536 = fmul fast float %5534, 5.000000e-01
  %5537 = fadd fast float %5535, 5.000000e-01
  %5538 = fadd fast float %5536, 5.000000e-01
  %5539 = uitofp i32 %5300 to float
  %5540 = call float @dx.op.binary.f32(i32 36, float %5511, float 3.000000e+00)  ; FMin(a,b)
  %5541 = fadd fast float %5540, 2.000000e+00
  %5542 = call float @dx.op.unary.f32(i32 21, float %5541)  ; Exp(value)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5544 = fmul fast float %5543, %5542
  %5545 = fmul fast float %5544, 2.000000e+00
  %5546 = fsub fast float 1.000000e+00, %5545
  %5547 = fmul fast float %5537, %5546
  %5548 = fmul fast float %5538, %5546
  %5549 = fadd fast float %5547, %5544
  %5550 = fadd fast float %5548, %5544
  %5551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5549, float %5550, float %5539, float undef, i32 0, i32 0, i32 undef, float %5511)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.ResRet.f32 %5551, 2
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 3
  %5557 = fmul fast float %5556, %5270
  %5558 = call float @dx.op.binary.f32(i32 36, float %4735, float %5557)  ; FMin(a,b)
  %5559 = select i1 %5507, float %5558, float %5557
  %5560 = fmul fast float %5552, %5349
  %5561 = fmul fast float %5560, %5559
  %5562 = fmul fast float %5553, %5349
  %5563 = fmul fast float %5562, %5559
  %5564 = fmul fast float %5554, %5349
  %5565 = fmul fast float %5564, %5559
  %5566 = fadd fast float %5561, %5242
  %5567 = fadd fast float %5563, %5243
  %5568 = fadd fast float %5565, %5244
  %5569 = fmul fast float %5429, %5349
  %5570 = fmul fast float %5430, %5349
  %5571 = fmul fast float %5431, %5349
  %5572 = fadd fast float %5569, %5247
  %5573 = fadd fast float %5570, %5248
  %5574 = fadd fast float %5571, %5249
  %5575 = fsub fast float %5245, %5349
  br label %5351

; <label>:5576                                    ; preds = %5351
  br label %5577

; <label>:5577                                    ; preds = %5576, %5208
  %5578 = phi float [ %5209, %5208 ], [ %5352, %5576 ]
  %5579 = phi float [ %5210, %5208 ], [ %5353, %5576 ]
  %5580 = phi float [ %5211, %5208 ], [ %5354, %5576 ]
  %5581 = phi float [ %5212, %5208 ], [ %5355, %5576 ]
  %5582 = phi float [ %5214, %5208 ], [ %5356, %5576 ]
  %5583 = phi float [ %5215, %5208 ], [ %5357, %5576 ]
  %5584 = phi float [ %5216, %5208 ], [ %5358, %5576 ]
  %5585 = add i32 %5213, 1
  %5586 = icmp ugt i32 %5585, %5205
  br i1 %5586, label %5587, label %5208, !llvm.loop !85

; <label>:5587                                    ; preds = %5577
  br label %5588

; <label>:5588                                    ; preds = %5587, %5190
  %5589 = phi float [ 0.000000e+00, %5190 ], [ %5578, %5587 ]
  %5590 = phi float [ 0.000000e+00, %5190 ], [ %5579, %5587 ]
  %5591 = phi float [ 0.000000e+00, %5190 ], [ %5580, %5587 ]
  %5592 = phi float [ 0.000000e+00, %5190 ], [ %5582, %5587 ]
  %5593 = phi float [ 0.000000e+00, %5190 ], [ %5583, %5587 ]
  %5594 = phi float [ 0.000000e+00, %5190 ], [ %5584, %5587 ]
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = select i1 %183, float 0.000000e+00, float %5589
  %5597 = select i1 %183, float %5595, float %5590
  %5598 = select i1 %183, float 0.000000e+00, float %5591
  %5599 = fcmp fast olt float %5114, 0.000000e+00
  %5600 = call float @dx.op.unary.f32(i32 6, float %5114)  ; FAbs(value)
  %5601 = fmul fast float %5600, %5115
  %5602 = fmul fast float %5600, %5116
  %5603 = fmul fast float %5600, %5117
  %5604 = select i1 %5599, float %5115, float %5601
  %5605 = select i1 %5599, float %5116, float %5602
  %5606 = select i1 %5599, float %5117, float %5603
  %5607 = fsub fast float 1.000000e+00, %5600
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = fmul fast float %5608, %5596
  %5610 = fmul fast float %5608, %5597
  %5611 = fmul fast float %5608, %5598
  %5612 = fadd fast float %5604, %5609
  %5613 = fadd fast float %5605, %5610
  %5614 = fadd fast float %5606, %5611
  %5615 = fcmp fast une float %4864, 0.000000e+00
  br i1 %5615, label %5716, label %5616

; <label>:5616                                    ; preds = %5588
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5621 = extractvalue %dx.types.CBufRet.f32 %5617, 3
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5632 = call float @dx.op.dot3.f32(i32 55, float %5628, float %5629, float %5630, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = fadd fast float %4655, -1.000000e+00
  %5636 = fsub fast float %5633, %5634
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5639 = fmul fast float %5638, %5633
  %5640 = fdiv fast float 1.600000e+02, %5639
  %5641 = fmul fast float %5635, %5635
  %5642 = fmul fast float %5641, 0xBFB5B17960000000
  %5643 = fmul fast float %5642, %5636
  %5644 = fmul fast float %5643, %5640
  %5645 = call float @dx.op.unary.f32(i32 21, float %5644)  ; Exp(value)
  %5646 = fmul fast float %5645, 0x3FF04B2960000000
  %5647 = fsub fast float 0x3FF04B2960000000, %5646
  %5648 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5649 = fmul fast float %5648, 4.000000e+00
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5654 = fadd fast float %5651, %5592
  %5655 = fadd fast float %5652, %5593
  %5656 = fadd fast float %5653, %5594
  %5657 = fmul fast float %5654, %5618
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5619, float %5657)  ; FMad(a,b,c)
  %5659 = call float @dx.op.tertiary.f32(i32 46, float %5656, float %5620, float %5658)  ; FMad(a,b,c)
  %5660 = fadd fast float %5659, %5621
  %5661 = fmul fast float %5654, %5623
  %5662 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5624, float %5661)  ; FMad(a,b,c)
  %5663 = call float @dx.op.tertiary.f32(i32 46, float %5656, float %5625, float %5662)  ; FMad(a,b,c)
  %5664 = fadd fast float %5663, %5626
  %5665 = fmul fast float %5654, %5628
  %5666 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5629, float %5665)  ; FMad(a,b,c)
  %5667 = call float @dx.op.tertiary.f32(i32 46, float %5656, float %5630, float %5666)  ; FMad(a,b,c)
  %5668 = fadd fast float %5667, %5631
  %5669 = fdiv fast float %5660, %5668
  %5670 = fdiv fast float %5664, %5668
  %5671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.CBufRet.f32 %5671, 1
  %5674 = fmul fast float %5672, %5669
  %5675 = fmul fast float %5673, %5670
  %5676 = extractvalue %dx.types.CBufRet.f32 %5671, 2
  %5677 = extractvalue %dx.types.CBufRet.f32 %5671, 3
  %5678 = fadd fast float %5674, %5676
  %5679 = fadd fast float %5675, %5677
  %5680 = fmul fast float %5632, 8.000000e+00
  %5681 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5682 = fmul fast float %5678, 2.000000e+00
  %5683 = fmul fast float %5679, 2.000000e+00
  %5684 = fadd fast float %5682, -1.000000e+00
  %5685 = fadd fast float %5683, -1.000000e+00
  %5686 = fmul fast float %5684, %5684
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = fmul fast float %5685, %5685
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5692 = fmul fast float %4864, %5688
  %5693 = fmul fast float %5692, %5691
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5681
  %5696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5678, float %5679, float undef, float undef, i32 0, i32 0, i32 undef, float %5649)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5697 = extractvalue %dx.types.ResRet.f32 %5696, 0
  %5698 = extractvalue %dx.types.ResRet.f32 %5696, 1
  %5699 = extractvalue %dx.types.ResRet.f32 %5696, 2
  %5700 = select i1 %183, float 0.000000e+00, float %5698
  %5701 = select i1 %183, float 0.000000e+00, float %5699
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5704 = fmul fast float %5703, %5697
  %5705 = fmul fast float %5700, %5703
  %5706 = fmul fast float %5701, %5703
  %5707 = fsub fast float %5704, %5596
  %5708 = fsub fast float %5705, %5597
  %5709 = fsub fast float %5706, %5598
  %5710 = fmul fast float %5707, %5695
  %5711 = fmul fast float %5708, %5695
  %5712 = fmul fast float %5709, %5695
  %5713 = fadd fast float %5710, %5596
  %5714 = fadd fast float %5711, %5597
  %5715 = fadd fast float %5712, %5598
  br label %5716

; <label>:5716                                    ; preds = %5616, %5588, %5113, %4837
  %5717 = phi float [ %5115, %5113 ], [ %5612, %5588 ], [ %4794, %4837 ], [ %5713, %5616 ]
  %5718 = phi float [ %5116, %5113 ], [ %5613, %5588 ], [ %4795, %4837 ], [ %5714, %5616 ]
  %5719 = phi float [ %5117, %5113 ], [ %5614, %5588 ], [ %4796, %4837 ], [ %5715, %5616 ]
  %5720 = fmul fast float %4843, %4790
  %5721 = fmul fast float %4843, %4791
  %5722 = fmul fast float %4843, %4792
  %5723 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %4651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = fcmp fast ogt float %5723, 0x3E7FF19E20000000
  %5725 = fdiv fast float 1.000000e+00, %5723
  %5726 = select i1 %5724, float %5725, float 0.000000e+00
  %5727 = fmul fast float %5726, %4649
  %5728 = fmul fast float %5726, %4650
  %5729 = fmul fast float %5726, %4651
  %5730 = fadd fast float %5727, -1.000000e+00
  %5731 = fadd fast float %5728, -1.000000e+00
  %5732 = fadd fast float %5729, -1.000000e+00
  %5733 = fmul fast float %5730, 5.000000e-01
  %5734 = fmul fast float %5731, 5.000000e-01
  %5735 = fmul fast float %5732, 5.000000e-01
  %5736 = fadd fast float %5733, 1.000000e+00
  %5737 = fadd fast float %5734, 1.000000e+00
  %5738 = fadd fast float %5735, 1.000000e+00
  %5739 = fmul fast float %5717, %4838
  %5740 = fmul fast float %5718, %4839
  %5741 = fmul fast float %5719, %4840
  %5742 = fsub fast float 1.000000e+00, %4674
  %5743 = bitcast float %5742 to i32
  %5744 = sitofp i32 %5743 to float
  %5745 = fmul fast float %5744, 5.000000e+00
  %5746 = fadd fast float %5745, 0xC1EFBF8940000000
  %5747 = fptosi float %5746 to i32
  %5748 = bitcast i32 %5747 to float
  %5749 = fmul fast float %5748, %4044
  %5750 = fmul fast float %4790, %5749
  %5751 = fmul fast float %5750, %4843
  %5752 = fmul fast float %5751, %5736
  %5753 = fmul fast float %4791, %5749
  %5754 = fmul fast float %5753, %4843
  %5755 = fmul fast float %5754, %5737
  %5756 = fmul fast float %4792, %5749
  %5757 = fmul fast float %5756, %4843
  %5758 = fmul fast float %5757, %5738
  %5759 = fmul fast float %5720, %4040
  %5760 = fmul fast float %5721, %4040
  %5761 = fmul fast float %5722, %4040
  %5762 = fadd fast float %5739, %4036
  %5763 = fadd fast float %5762, %5752
  %5764 = fmul fast float %5763, %4040
  %5765 = fadd fast float %5740, %4037
  %5766 = fadd fast float %5765, %5755
  %5767 = fmul fast float %5766, %4040
  %5768 = fadd fast float %5741, %4038
  %5769 = fadd fast float %5768, %5758
  %5770 = fmul fast float %5769, %4040
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 3
  %5773 = fcmp fast oeq float %5772, 0.000000e+00
  br i1 %5773, label %5993, label %5774

; <label>:5774                                    ; preds = %5716
  %5775 = extractvalue %dx.types.CBufRet.f32 %5771, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5771, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5781 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = select i1 %183, float %5783, float %5779
  %5787 = select i1 %183, float %5785, float %5780
  %5788 = select i1 %183, float %5784, float %5781
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5791 = fcmp fast une float %5790, 0.000000e+00
  br i1 %5791, label %5792, label %5809

; <label>:5792                                    ; preds = %5774
  %5793 = fptoui float %78 to i32
  %5794 = fptoui float %79 to i32
  %5795 = lshr i32 %5793, 4
  %5796 = lshr i32 %5794, 4
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = fptoui float %5798 to i32
  %5800 = add i32 %5799, 15
  %5801 = lshr i32 %5800, 4
  %5802 = mul i32 %5801, %5796
  %5803 = add i32 %5802, %5795
  %5804 = shl i32 %5803, 3
  %5805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5804, i32 undef)  ; BufferLoad(srv,index,wot)
  %5806 = extractvalue %dx.types.ResRet.i32 %5805, 0
  %5807 = and i32 %5806, -268435456
  %5808 = icmp eq i32 %5807, -1342177280
  br i1 %5808, label %5814, label %5809

; <label>:5809                                    ; preds = %5792, %5774
  %5810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4660, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.ResRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.ResRet.f32 %5810, 2
  br label %5814

; <label>:5814                                    ; preds = %5809, %5792
  %5815 = phi float [ %5811, %5809 ], [ 0.000000e+00, %5792 ]
  %5816 = phi float [ %5812, %5809 ], [ 0.000000e+00, %5792 ]
  %5817 = phi float [ %5813, %5809 ], [ 0.000000e+00, %5792 ]
  %5818 = call float @dx.op.binary.f32(i32 36, float %5816, float %5817)  ; FMin(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5815, float %5818)  ; FMin(a,b)
  %5820 = fcmp fast ogt float %5819, 0.000000e+00
  br i1 %5820, label %5821, label %5993, !dx.controlflow.hints !87

; <label>:5821                                    ; preds = %5814
  %5822 = fmul fast float %5815, %5786
  %5823 = fmul fast float %5816, %5787
  %5824 = fmul fast float %5817, %5788
  %5825 = fsub fast float %5775, %4645
  %5826 = fsub fast float %5776, %4644
  %5827 = fsub fast float %5777, %4643
  %5828 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5829 = call float @dx.op.unary.f32(i32 25, float %5828)  ; Rsqrt(value)
  %5830 = fmul fast float %5829, %5825
  %5831 = fmul fast float %5829, %5826
  %5832 = fmul fast float %5829, %5827
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4641, float %4640, float %5830, float %5831, float %5832)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5836 = bitcast i32 %4698 to float
  %5837 = fmul fast float %5835, %5835
  %5838 = fmul fast float %5837, %5836
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = fmul fast float %5839, %5835
  %5841 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %5830, float %5831, float %5832)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fmul fast float %5841, %5841
  %5843 = call float @dx.op.unary.f32(i32 6, float %5833)  ; FAbs(value)
  %5844 = fsub fast float 1.000000e+00, %4692
  %5845 = fmul fast float %4674, %4674
  %5846 = fmul fast float %5845, %5844
  %5847 = fadd fast float %5846, %4692
  %5848 = bitcast float %5847 to i32
  %5849 = ashr i32 %5848, 1
  %5850 = add nsw i32 %5849, 532487669
  %5851 = bitcast i32 %5850 to float
  %5852 = fadd fast float %5851, %4674
  %5853 = fmul fast float %4692, %5842
  %5854 = fsub fast float 1.000000e+00, %5842
  %5855 = fadd fast float %5854, %5853
  %5856 = fmul fast float %5843, %5843
  %5857 = fmul fast float %5856, %5844
  %5858 = fadd fast float %5857, %4692
  %5859 = bitcast float %5858 to i32
  %5860 = ashr i32 %5859, 1
  %5861 = add nsw i32 %5860, 532487669
  %5862 = bitcast i32 %5861 to float
  %5863 = fadd fast float %5862, %5843
  %5864 = fmul fast float %5855, %5855
  %5865 = fmul fast float %5864, %5852
  %5866 = fmul fast float %5865, %5863
  %5867 = fdiv fast float 0x3FF0A00000000000, %5866
  %5868 = fmul fast float %5867, %4692
  %5869 = call float @dx.op.unary.f32(i32 6, float %5834)  ; FAbs(value)
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = bitcast float %5870 to i32
  %5872 = sitofp i32 %5871 to float
  %5873 = fmul fast float %5872, 5.000000e+00
  %5874 = fadd fast float %5873, 0xC1EFBF8940000000
  %5875 = fptosi float %5874 to i32
  %5876 = bitcast i32 %5875 to float
  %5877 = fsub fast float 1.000000e+00, %4646
  %5878 = fsub fast float 1.000000e+00, %4647
  %5879 = fsub fast float 1.000000e+00, %4672
  %5880 = fmul fast float %5876, %5877
  %5881 = fmul fast float %5876, %5878
  %5882 = fmul fast float %5876, %5879
  %5883 = fadd fast float %5880, %4646
  %5884 = fadd fast float %5881, %4647
  %5885 = fadd fast float %5882, %4672
  br i1 %4810, label %5886, label %5909

; <label>:5886                                    ; preds = %5821
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4043, float %5869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = fadd fast float %5888, -5.000000e-01
  %5892 = fadd fast float %5889, -5.000000e-01
  %5893 = fadd fast float %5890, -5.000000e-01
  %5894 = fmul fast float %4646, 4.000000e+00
  %5895 = fmul fast float %5894, %5877
  %5896 = fmul fast float %5895, %5891
  %5897 = fmul fast float %4647, 4.000000e+00
  %5898 = fmul fast float %5897, %5878
  %5899 = fmul fast float %5898, %5892
  %5900 = fmul fast float %4672, 4.000000e+00
  %5901 = fmul fast float %5900, %5879
  %5902 = fmul fast float %5901, %5893
  %5903 = fadd fast float %5896, %5883
  %5904 = fadd fast float %5899, %5884
  %5905 = fadd fast float %5902, %5885
  %5906 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5907 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5908 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  br label %5909

; <label>:5909                                    ; preds = %5886, %5821
  %5910 = phi float [ %5906, %5886 ], [ %5883, %5821 ]
  %5911 = phi float [ %5907, %5886 ], [ %5884, %5821 ]
  %5912 = phi float [ %5908, %5886 ], [ %5885, %5821 ]
  %5913 = fmul fast float %5833, 9.843750e-01
  %5914 = fadd fast float %5913, 7.812500e-03
  %5915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5914, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5916 = extractvalue %dx.types.ResRet.f32 %5915, 2
  %5917 = extractvalue %dx.types.ResRet.f32 %5915, 3
  %5918 = fmul fast float %5916, %4646
  %5919 = fmul fast float %5916, %4647
  %5920 = fmul fast float %5916, %4672
  %5921 = fadd fast float %5918, %5917
  %5922 = fadd fast float %5919, %5917
  %5923 = fadd fast float %5920, %5917
  br i1 %4810, label %5924, label %5947

; <label>:5924                                    ; preds = %5909
  %5925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4043, float %5833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = fadd fast float %5926, -5.000000e-01
  %5930 = fadd fast float %5927, -5.000000e-01
  %5931 = fadd fast float %5928, -5.000000e-01
  %5932 = fmul fast float %4646, 4.000000e+00
  %5933 = fmul fast float %5932, %5877
  %5934 = fmul fast float %5933, %5929
  %5935 = fmul fast float %4647, 4.000000e+00
  %5936 = fmul fast float %5935, %5878
  %5937 = fmul fast float %5936, %5930
  %5938 = fmul fast float %4672, 4.000000e+00
  %5939 = fmul fast float %5938, %5879
  %5940 = fmul fast float %5939, %5931
  %5941 = fadd fast float %5934, %5921
  %5942 = fadd fast float %5937, %5922
  %5943 = fadd fast float %5940, %5923
  %5944 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5945 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5946 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  br label %5947

; <label>:5947                                    ; preds = %5924, %5909
  %5948 = phi float [ %5944, %5924 ], [ %5921, %5909 ]
  %5949 = phi float [ %5945, %5924 ], [ %5922, %5909 ]
  %5950 = phi float [ %5946, %5924 ], [ %5923, %5909 ]
  %5951 = call float @dx.op.binary.f32(i32 35, float %5949, float %5950)  ; FMax(a,b)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5948, float %5951)  ; FMax(a,b)
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5910, %5868
  %5955 = fmul fast float %5911, %5868
  %5956 = fmul fast float %5912, %5868
  %5957 = fsub fast float 1.000000e+00, %5834
  %5958 = bitcast float %5957 to i32
  %5959 = sitofp i32 %5958 to float
  %5960 = fmul fast float %5959, 5.000000e+00
  %5961 = fadd fast float %5960, 0xC1EFBF8940000000
  %5962 = fptosi float %5961 to i32
  %5963 = bitcast i32 %5962 to float
  %5964 = fmul fast float %5963, %4044
  %5965 = fmul fast float %5953, %5964
  %5966 = fmul fast float %5965, %5736
  %5967 = fmul fast float %5965, %5737
  %5968 = fmul fast float %5965, %5738
  %5969 = fadd fast float %5966, %5954
  %5970 = fadd fast float %5967, %5955
  %5971 = fadd fast float %5968, %5956
  %5972 = fmul fast float %5840, %5822
  %5973 = fmul fast float %5972, %5953
  %5974 = fmul fast float %5840, %5823
  %5975 = fmul fast float %5974, %5953
  %5976 = fmul fast float %5840, %5824
  %5977 = fmul fast float %5976, %5953
  %5978 = fmul fast float %5972, %5969
  %5979 = fmul fast float %5974, %5970
  %5980 = fmul fast float %5976, %5971
  %5981 = fadd fast float %5973, %5720
  %5982 = fmul fast float %5981, %4040
  %5983 = fadd fast float %5975, %5721
  %5984 = fmul fast float %5983, %4040
  %5985 = fadd fast float %5977, %5722
  %5986 = fmul fast float %5985, %4040
  %5987 = fadd fast float %5978, %5763
  %5988 = fmul fast float %5987, %4040
  %5989 = fadd fast float %5979, %5766
  %5990 = fmul fast float %5989, %4040
  %5991 = fadd fast float %5980, %5769
  %5992 = fmul fast float %5991, %4040
  br label %5993

; <label>:5993                                    ; preds = %5947, %5814, %5716
  %5994 = phi float [ %5764, %5716 ], [ %5764, %5814 ], [ %5988, %5947 ]
  %5995 = phi float [ %5767, %5716 ], [ %5767, %5814 ], [ %5990, %5947 ]
  %5996 = phi float [ %5770, %5716 ], [ %5770, %5814 ], [ %5992, %5947 ]
  %5997 = phi float [ %5759, %5716 ], [ %5759, %5814 ], [ %5982, %5947 ]
  %5998 = phi float [ %5760, %5716 ], [ %5760, %5814 ], [ %5984, %5947 ]
  %5999 = phi float [ %5761, %5716 ], [ %5761, %5814 ], [ %5986, %5947 ]
  %6000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.i32 %6000, 0
  %6002 = icmp eq i32 %6001, 0
  br i1 %6002, label %6434, label %6003

; <label>:6003                                    ; preds = %5993
  %6004 = fptoui float %78 to i32
  %6005 = fptoui float %79 to i32
  %6006 = lshr i32 %6004, 4
  %6007 = lshr i32 %6005, 4
  %6008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.i32 %6008, 0
  %6010 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6007, i32 %6009, i32 %6006)  ; UMad(a,b,c)
  %6011 = add nsw i32 %6001, -1
  %6012 = call i32 @dx.op.binary.i32(i32 37, i32 %6011, i32 0)  ; IMax(a,b)
  %6013 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6014 = fptoui float %6013 to i32
  %6015 = lshr i32 %6014, 5
  %6016 = call i32 @dx.op.binary.i32(i32 40, i32 %6015, i32 8191)  ; UMin(a,b)
  %6017 = shl i32 %6016, 2
  %6018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6017, i32 undef)  ; BufferLoad(srv,index,wot)
  %6019 = extractvalue %dx.types.ResRet.i32 %6018, 0
  %6020 = lshr i32 %6019, 16
  %6021 = and i32 %6019, 65535
  %6022 = lshr i32 %6019, 21
  %6023 = lshr i32 %6021, 5
  %6024 = call i32 @dx.op.binary.i32(i32 40, i32 %6023, i32 %6012)  ; UMin(a,b)
  %6025 = icmp ugt i32 %6022, %6024
  br i1 %6025, label %6434, label %6026

; <label>:6026                                    ; preds = %6003
  br label %6027

; <label>:6027                                    ; preds = %6424, %6026
  %6028 = phi i32 [ %6431, %6424 ], [ %6022, %6026 ]
  %6029 = phi float [ %6425, %6424 ], [ %5994, %6026 ]
  %6030 = phi float [ %6426, %6424 ], [ %5995, %6026 ]
  %6031 = phi float [ %6427, %6424 ], [ %5996, %6026 ]
  %6032 = phi float [ %6428, %6424 ], [ %5997, %6026 ]
  %6033 = phi float [ %6429, %6424 ], [ %5998, %6026 ]
  %6034 = phi float [ %6430, %6424 ], [ %5999, %6026 ]
  %6035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.i32 %6035, 0
  %6037 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6010, i32 %6036, i32 %6028)  ; UMad(a,b,c)
  %6038 = shl i32 %6037, 2
  %6039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6038, i32 undef)  ; BufferLoad(srv,index,wot)
  %6040 = extractvalue %dx.types.ResRet.i32 %6039, 0
  %6041 = shl i32 %6028, 5
  %6042 = sub nsw i32 %6020, %6041
  %6043 = call i32 @dx.op.binary.i32(i32 37, i32 %6042, i32 0)  ; IMax(a,b)
  %6044 = call i32 @dx.op.binary.i32(i32 38, i32 %6043, i32 31)  ; IMin(a,b)
  %6045 = sub nsw i32 1, %6020
  %6046 = add nsw i32 %6045, %6021
  %6047 = call i32 @dx.op.binary.i32(i32 37, i32 %6046, i32 0)  ; IMax(a,b)
  %6048 = call i32 @dx.op.binary.i32(i32 38, i32 %6047, i32 32)  ; IMin(a,b)
  %6049 = and i32 %6048, 31
  %6050 = shl i32 -1, %6049
  %6051 = xor i32 %6050, -1
  %6052 = and i32 %6044, 31
  %6053 = shl i32 %6051, %6052
  %6054 = icmp eq i32 %6048, 32
  %6055 = select i1 %6054, i32 -1, i32 %6053
  %6056 = and i32 %6055, %6040
  %6057 = icmp eq i32 %6056, 0
  br i1 %6057, label %6424, label %6058

; <label>:6058                                    ; preds = %6027
  br label %6059

; <label>:6059                                    ; preds = %6139, %6058
  %6060 = phi i32 [ %6071, %6139 ], [ %6056, %6058 ]
  %6061 = phi float [ %6140, %6139 ], [ %6029, %6058 ]
  %6062 = phi float [ %6141, %6139 ], [ %6030, %6058 ]
  %6063 = phi float [ %6142, %6139 ], [ %6031, %6058 ]
  %6064 = phi float [ %6143, %6139 ], [ %6032, %6058 ]
  %6065 = phi float [ %6144, %6139 ], [ %6033, %6058 ]
  %6066 = phi float [ %6145, %6139 ], [ %6034, %6058 ]
  %6067 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6060)  ; FirstbitLo(value)
  %6068 = add i32 %6067, %6041
  %6069 = and i32 %6067, 31
  %6070 = shl i32 1, %6069
  %6071 = xor i32 %6070, %6060
  %6072 = mul i32 %6068, 112
  %6073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6072, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.ResRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.ResRet.f32 %6073, 2
  %6077 = or i32 %6072, 12
  %6078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6077, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = add i32 %6072, 44
  %6081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6080, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = add i32 %6072, 48
  %6084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6083, i32 undef)  ; BufferLoad(srv,index,wot)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.ResRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.ResRet.f32 %6084, 2
  %6088 = add i32 %6072, 80
  %6089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6088, i32 undef)  ; BufferLoad(srv,index,wot)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 2
  %6092 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6093 = select i1 %183, float %6090, float %6074
  %6094 = select i1 %183, float %6092, float %6075
  %6095 = select i1 %183, float %6091, float %6076
  %6096 = fsub fast float %6085, %141
  %6097 = fsub fast float %6086, %142
  %6098 = fsub fast float %6087, %143
  %6099 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6098, float %6096, float %6097, float %6098)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.unary.f32(i32 24, float %6099)  ; Sqrt(value)
  %6101 = fdiv fast float 1.000000e+00, %6100
  %6102 = fmul fast float %6101, %6096
  %6103 = fmul fast float %6101, %6097
  %6104 = fmul fast float %6101, %6098
  %6105 = fadd fast float %6100, %6079
  %6106 = fdiv fast float 1.000000e+00, %6105
  %6107 = fmul float %6082, %6106
  %6108 = fmul float %6107, %6107
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = and i32 %6070, %6056
  %6111 = icmp eq i32 %6110, 0
  br i1 %6111, label %6134, label %6112, !dx.controlflow.hints !88

; <label>:6112                                    ; preds = %6059
  %6113 = lshr i32 %6004, 5
  %6114 = lshr i32 %6005, 5
  %6115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6113, i32 %6114, i32 %6068, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6116 = extractvalue %dx.types.ResRet.i32 %6115, 0
  %6117 = and i32 %6116, 3
  %6118 = icmp eq i32 %6117, 0
  %6119 = select i1 %6118, float 1.000000e+00, float 0.000000e+00
  %6120 = icmp eq i32 %6117, 3
  br i1 %6120, label %6121, label %6134

; <label>:6121                                    ; preds = %6112
  %6122 = lshr i32 %6116, 10
  %6123 = and i32 %6122, 8160
  %6124 = and i32 %6005, 31
  %6125 = or i32 %6123, %6124
  %6126 = lshr i32 %6116, 1
  %6127 = and i32 %6126, 16352
  %6128 = and i32 %6004, 31
  %6129 = or i32 %6127, %6128
  %6130 = lshr i32 %6116, 23
  %6131 = and i32 %6130, 255
  %6132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6129, i32 %6125, i32 %6131, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 0
  br label %6134

; <label>:6134                                    ; preds = %6121, %6112, %6059
  %6135 = phi float [ %6133, %6121 ], [ %6119, %6112 ], [ 0.000000e+00, %6059 ]
  %6136 = call float @dx.op.binary.f32(i32 36, float %6135, float %6135)  ; FMin(a,b)
  %6137 = call float @dx.op.binary.f32(i32 36, float %6135, float %6136)  ; FMin(a,b)
  %6138 = fcmp fast ogt float %6137, 0.000000e+00
  br i1 %6138, label %6147, label %6139, !dx.controlflow.hints !89

; <label>:6139                                    ; preds = %6380, %6134
  %6140 = phi float [ %6061, %6134 ], [ %6420, %6380 ]
  %6141 = phi float [ %6062, %6134 ], [ %6421, %6380 ]
  %6142 = phi float [ %6063, %6134 ], [ %6422, %6380 ]
  %6143 = phi float [ %6064, %6134 ], [ %6414, %6380 ]
  %6144 = phi float [ %6065, %6134 ], [ %6415, %6380 ]
  %6145 = phi float [ %6066, %6134 ], [ %6416, %6380 ]
  %6146 = icmp eq i32 %6060, %6070
  br i1 %6146, label %6423, label %6059

; <label>:6147                                    ; preds = %6134
  %6148 = fmul fast float %6135, %6093
  %6149 = fmul fast float %6135, %6094
  %6150 = fmul fast float %6135, %6095
  %6151 = fsub fast float %6087, %4445
  %6152 = fcmp fast ogt float %6151, 0.000000e+00
  %6153 = fsub fast float %143, %4445
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = xor i1 %6154, %6152
  %6156 = fsub fast float %4445, %6087
  %6157 = fmul fast float %6156, 2.000000e+00
  %6158 = fadd fast float %6157, %6087
  %6159 = select i1 %6155, float %6087, float %6158
  %6160 = fsub fast float %6159, %143
  %6161 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6160, float %6096, float %6097, float %6160)  ; Dot3(ax,ay,az,bx,by,bz)
  %6162 = call float @dx.op.unary.f32(i32 25, float %6161)  ; Rsqrt(value)
  %6163 = fmul fast float %6162, %6096
  %6164 = fmul fast float %6162, %6097
  %6165 = fmul fast float %6162, %6160
  %6166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4453)  ; Dot3(ax,ay,az,bx,by,bz)
  %6167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6163, float %6164, float %6165)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = fdiv fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6168, %6166
  %6170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6153, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = fcmp fast ogt float %6170, 0.000000e+00
  %6172 = fcmp fast olt float %6170, 0.000000e+00
  %6173 = zext i1 %6171 to i32
  %6174 = zext i1 %6172 to i32
  %6175 = sub nsw i32 %6173, %6174
  %6176 = sitofp i32 %6175 to float
  %6177 = fsub fast float %6159, %4445
  %6178 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6177, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6179 = fcmp fast ogt float %6178, 0.000000e+00
  %6180 = fcmp fast olt float %6178, 0.000000e+00
  %6181 = zext i1 %6179 to i32
  %6182 = zext i1 %6180 to i32
  %6183 = sub nsw i32 %6181, %6182
  %6184 = sitofp i32 %6183 to float
  %6185 = fcmp fast une float %6176, %6184
  br i1 %6185, label %6186, label %6196

; <label>:6186                                    ; preds = %6147
  %6187 = fmul fast float %6169, %6165
  %6188 = fmul fast float %6169, %6164
  %6189 = fmul fast float %6169, %6163
  %6190 = fmul fast float %6189, %6189
  %6191 = fmul fast float %6188, %6188
  %6192 = fadd fast float %6190, %6191
  %6193 = fmul fast float %6187, %6187
  %6194 = fadd fast float %6192, %6193
  %6195 = call float @dx.op.unary.f32(i32 24, float %6194)  ; Sqrt(value)
  br label %6208

; <label>:6196                                    ; preds = %6147
  %6197 = icmp slt i32 %6175, 0
  br i1 %6197, label %6198, label %6208

; <label>:6198                                    ; preds = %6196
  %6199 = fsub fast float %141, %6085
  %6200 = fsub fast float %142, %6086
  %6201 = fsub fast float %143, %6159
  %6202 = fmul fast float %6199, %6199
  %6203 = fmul fast float %6200, %6200
  %6204 = fadd fast float %6202, %6203
  %6205 = fmul fast float %6201, %6201
  %6206 = fadd fast float %6204, %6205
  %6207 = call float @dx.op.unary.f32(i32 24, float %6206)  ; Sqrt(value)
  br label %6208

; <label>:6208                                    ; preds = %6198, %6196, %6186
  %6209 = phi float [ %6195, %6186 ], [ %6207, %6198 ], [ 0.000000e+00, %6196 ]
  %6210 = and i1 %6154, %6152
  %6211 = fsub fast float -0.000000e+00, %6209
  %6212 = select i1 %6210, float -0.000000e+00, float %6211
  %6213 = fmul fast float %4446, 0x3FF7154760000000
  %6214 = fmul fast float %6213, %6212
  %6215 = fmul fast float %4447, 0x3FF7154760000000
  %6216 = fmul fast float %6215, %6212
  %6217 = fmul fast float %4448, 0x3FF7154760000000
  %6218 = fmul fast float %6217, %6212
  %6219 = call float @dx.op.unary.f32(i32 21, float %6214)  ; Exp(value)
  %6220 = call float @dx.op.unary.f32(i32 21, float %6216)  ; Exp(value)
  %6221 = call float @dx.op.unary.f32(i32 21, float %6218)  ; Exp(value)
  %6222 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6223 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6224 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6225 = fmul fast float %6148, %6222
  %6226 = fmul fast float %6149, %6223
  %6227 = fmul fast float %6150, %6224
  %6228 = fsub fast float %6102, %4645
  %6229 = fsub fast float %6103, %4644
  %6230 = fsub fast float %6104, %4643
  %6231 = call float @dx.op.dot3.f32(i32 55, float %6228, float %6229, float %6230, float %6228, float %6229, float %6230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = call float @dx.op.unary.f32(i32 25, float %6231)  ; Rsqrt(value)
  %6233 = fmul fast float %6232, %6228
  %6234 = fmul fast float %6232, %6229
  %6235 = fmul fast float %6232, %6230
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4641, float %4640, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6239 = fmul fast float %6238, %6109
  %6240 = bitcast i32 %4698 to float
  %6241 = fmul fast float %6238, %6238
  %6242 = fmul fast float %6241, %6240
  %6243 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  %6244 = fmul fast float %6239, %6243
  %6245 = bitcast float %6099 to i32
  %6246 = ashr i32 %6245, 1
  %6247 = sub nsw i32 1597463007, %6246
  %6248 = bitcast i32 %6247 to float
  %6249 = fmul fast float %6248, %6096
  %6250 = fmul fast float %6248, %6097
  %6251 = fmul fast float %6248, %6098
  %6252 = fsub fast float %6249, %4645
  %6253 = fsub fast float %6250, %4644
  %6254 = fsub fast float %6251, %4643
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6252, float %6253, float %6254)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = call float @dx.op.unary.f32(i32 25, float %6255)  ; Rsqrt(value)
  %6257 = fmul fast float %6252, %6256
  %6258 = fmul fast float %6253, %6256
  %6259 = fmul fast float %6254, %6256
  %6260 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %6257, float %6258, float %6259)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = fmul fast float %6260, %6260
  %6262 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6263 = fsub fast float 1.000000e+00, %4692
  %6264 = fmul fast float %4674, %4674
  %6265 = fmul fast float %6264, %6263
  %6266 = fadd fast float %6265, %4692
  %6267 = bitcast float %6266 to i32
  %6268 = ashr i32 %6267, 1
  %6269 = add nsw i32 %6268, 532487669
  %6270 = bitcast i32 %6269 to float
  %6271 = fadd fast float %6270, %4674
  %6272 = fmul fast float %4692, %6261
  %6273 = fsub fast float 1.000000e+00, %6261
  %6274 = fadd fast float %6273, %6272
  %6275 = fmul fast float %6262, %6262
  %6276 = fmul fast float %6275, %6263
  %6277 = fadd fast float %6276, %4692
  %6278 = bitcast float %6277 to i32
  %6279 = ashr i32 %6278, 1
  %6280 = add nsw i32 %6279, 532487669
  %6281 = bitcast i32 %6280 to float
  %6282 = fadd fast float %6281, %6262
  %6283 = fmul fast float %6274, %6274
  %6284 = fmul fast float %6283, %6271
  %6285 = fmul fast float %6284, %6282
  %6286 = fdiv fast float 1.000000e+00, %6285
  %6287 = bitcast float %4692 to i32
  %6288 = sitofp i32 %6287 to float
  %6289 = fmul fast float %6288, 0x3FE7F73180000000
  %6290 = fadd fast float %6289, 0x41AFE27C40000000
  %6291 = fptosi float %6290 to i32
  %6292 = bitcast i32 %6291 to float
  %6293 = fmul fast float %6082, 0x3FD80E9D60000000
  %6294 = fmul fast float %6293, %6248
  %6295 = fadd fast float %6292, %6294
  %6296 = bitcast float %6295 to i32
  %6297 = sub nsw i32 2129859010, %6296
  %6298 = bitcast i32 %6297 to float
  %6299 = fmul fast float %4692, %6286
  %6300 = fmul fast float %6299, %6292
  %6301 = fmul fast float %6300, %6298
  %6302 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6303 = fsub fast float 1.000000e+00, %6302
  %6304 = bitcast float %6303 to i32
  %6305 = sitofp i32 %6304 to float
  %6306 = fmul fast float %6305, 5.000000e+00
  %6307 = fadd fast float %6306, 0xC1EFBF8940000000
  %6308 = fptosi float %6307 to i32
  %6309 = bitcast i32 %6308 to float
  %6310 = fsub fast float 1.000000e+00, %4646
  %6311 = fsub fast float 1.000000e+00, %4647
  %6312 = fsub fast float 1.000000e+00, %4672
  %6313 = fmul fast float %6309, %6310
  %6314 = fmul fast float %6309, %6311
  %6315 = fmul fast float %6309, %6312
  %6316 = fadd fast float %6313, %4646
  %6317 = fadd fast float %6314, %4647
  %6318 = fadd fast float %6315, %4672
  br i1 %4810, label %6319, label %6342

; <label>:6319                                    ; preds = %6208
  %6320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4043, float %6302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6321 = extractvalue %dx.types.ResRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.ResRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.ResRet.f32 %6320, 2
  %6324 = fadd fast float %6321, -5.000000e-01
  %6325 = fadd fast float %6322, -5.000000e-01
  %6326 = fadd fast float %6323, -5.000000e-01
  %6327 = fmul fast float %4646, 4.000000e+00
  %6328 = fmul fast float %6327, %6310
  %6329 = fmul fast float %6328, %6324
  %6330 = fmul fast float %4647, 4.000000e+00
  %6331 = fmul fast float %6330, %6311
  %6332 = fmul fast float %6331, %6325
  %6333 = fmul fast float %4672, 4.000000e+00
  %6334 = fmul fast float %6333, %6312
  %6335 = fmul fast float %6334, %6326
  %6336 = fadd fast float %6329, %6316
  %6337 = fadd fast float %6332, %6317
  %6338 = fadd fast float %6335, %6318
  %6339 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6340 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  br label %6342

; <label>:6342                                    ; preds = %6319, %6208
  %6343 = phi float [ %6339, %6319 ], [ %6316, %6208 ]
  %6344 = phi float [ %6340, %6319 ], [ %6317, %6208 ]
  %6345 = phi float [ %6341, %6319 ], [ %6318, %6208 ]
  %6346 = fmul fast float %6236, 9.843750e-01
  %6347 = fadd fast float %6346, 7.812500e-03
  %6348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6347, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 2
  %6350 = extractvalue %dx.types.ResRet.f32 %6348, 3
  %6351 = fmul fast float %6349, %4646
  %6352 = fmul fast float %6349, %4647
  %6353 = fmul fast float %6349, %4672
  %6354 = fadd fast float %6351, %6350
  %6355 = fadd fast float %6352, %6350
  %6356 = fadd fast float %6353, %6350
  br i1 %4810, label %6357, label %6380

; <label>:6357                                    ; preds = %6342
  %6358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4043, float %6236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6359 = extractvalue %dx.types.ResRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.ResRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.ResRet.f32 %6358, 2
  %6362 = fadd fast float %6359, -5.000000e-01
  %6363 = fadd fast float %6360, -5.000000e-01
  %6364 = fadd fast float %6361, -5.000000e-01
  %6365 = fmul fast float %4646, 4.000000e+00
  %6366 = fmul fast float %6365, %6310
  %6367 = fmul fast float %6366, %6362
  %6368 = fmul fast float %4647, 4.000000e+00
  %6369 = fmul fast float %6368, %6311
  %6370 = fmul fast float %6369, %6363
  %6371 = fmul fast float %4672, 4.000000e+00
  %6372 = fmul fast float %6371, %6312
  %6373 = fmul fast float %6372, %6364
  %6374 = fadd fast float %6367, %6354
  %6375 = fadd fast float %6370, %6355
  %6376 = fadd fast float %6373, %6356
  %6377 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6378 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6379 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  br label %6380

; <label>:6380                                    ; preds = %6357, %6342
  %6381 = phi float [ %6377, %6357 ], [ %6354, %6342 ]
  %6382 = phi float [ %6378, %6357 ], [ %6355, %6342 ]
  %6383 = phi float [ %6379, %6357 ], [ %6356, %6342 ]
  %6384 = call float @dx.op.binary.f32(i32 35, float %6382, float %6383)  ; FMax(a,b)
  %6385 = call float @dx.op.binary.f32(i32 35, float %6381, float %6384)  ; FMax(a,b)
  %6386 = fsub fast float 1.000000e+00, %6385
  %6387 = fmul fast float %6343, %6301
  %6388 = fmul fast float %6344, %6301
  %6389 = fmul fast float %6345, %6301
  %6390 = fsub fast float 1.000000e+00, %6237
  %6391 = bitcast float %6390 to i32
  %6392 = sitofp i32 %6391 to float
  %6393 = fmul fast float %6392, 5.000000e+00
  %6394 = fadd fast float %6393, 0xC1EFBF8940000000
  %6395 = fptosi float %6394 to i32
  %6396 = bitcast i32 %6395 to float
  %6397 = fmul fast float %6396, %4044
  %6398 = fmul fast float %6386, %6397
  %6399 = fmul fast float %6398, %5736
  %6400 = fmul fast float %6398, %5737
  %6401 = fmul fast float %6398, %5738
  %6402 = fadd fast float %6399, %6387
  %6403 = fadd fast float %6400, %6388
  %6404 = fadd fast float %6401, %6389
  %6405 = fmul fast float %6225, %4040
  %6406 = fmul fast float %6405, %6244
  %6407 = fmul fast float %6406, %6386
  %6408 = fmul fast float %6226, %4040
  %6409 = fmul fast float %6408, %6244
  %6410 = fmul fast float %6409, %6386
  %6411 = fmul fast float %6227, %4040
  %6412 = fmul fast float %6411, %6244
  %6413 = fmul fast float %6412, %6386
  %6414 = fadd fast float %6407, %6064
  %6415 = fadd fast float %6410, %6065
  %6416 = fadd fast float %6413, %6066
  %6417 = fmul fast float %6406, %6402
  %6418 = fmul fast float %6409, %6403
  %6419 = fmul fast float %6412, %6404
  %6420 = fadd fast float %6417, %6061
  %6421 = fadd fast float %6418, %6062
  %6422 = fadd fast float %6419, %6063
  br label %6139

; <label>:6423                                    ; preds = %6139
  br label %6424

; <label>:6424                                    ; preds = %6423, %6027
  %6425 = phi float [ %6029, %6027 ], [ %6140, %6423 ]
  %6426 = phi float [ %6030, %6027 ], [ %6141, %6423 ]
  %6427 = phi float [ %6031, %6027 ], [ %6142, %6423 ]
  %6428 = phi float [ %6032, %6027 ], [ %6143, %6423 ]
  %6429 = phi float [ %6033, %6027 ], [ %6144, %6423 ]
  %6430 = phi float [ %6034, %6027 ], [ %6145, %6423 ]
  %6431 = add i32 %6028, 1
  %6432 = icmp ugt i32 %6431, %6024
  br i1 %6432, label %6433, label %6027

; <label>:6433                                    ; preds = %6424
  br label %6434

; <label>:6434                                    ; preds = %6433, %6003, %5993
  %6435 = phi float [ %5994, %5993 ], [ %5994, %6003 ], [ %6425, %6433 ]
  %6436 = phi float [ %5995, %5993 ], [ %5995, %6003 ], [ %6426, %6433 ]
  %6437 = phi float [ %5996, %5993 ], [ %5996, %6003 ], [ %6427, %6433 ]
  %6438 = phi float [ %5997, %5993 ], [ %5997, %6003 ], [ %6428, %6433 ]
  %6439 = phi float [ %5998, %5993 ], [ %5998, %6003 ], [ %6429, %6433 ]
  %6440 = phi float [ %5999, %5993 ], [ %5999, %6003 ], [ %6430, %6433 ]
  %6441 = call float @dx.op.unary.f32(i32 24, float %4649)  ; Sqrt(value)
  %6442 = call float @dx.op.unary.f32(i32 24, float %4650)  ; Sqrt(value)
  %6443 = call float @dx.op.unary.f32(i32 24, float %4651)  ; Sqrt(value)
  %6444 = fmul fast float %6441, %6438
  %6445 = fmul fast float %6442, %6439
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  br i1 %183, label %6448, label %6480

; <label>:6448                                    ; preds = %6434
  %6449 = fadd fast float %6440, %4046
  %6450 = fmul fast float %6449, %4048
  %6451 = fsub fast float 1.000000e+00, %4048
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6455 = fmul fast float %6454, %6452
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = fmul fast float %6457, %5742
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = fmul fast float %6459, %4670
  %6461 = fadd fast float %6445, %6444
  %6462 = fmul fast float %6447, %6461
  %6463 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6464 = fadd fast float %6455, %6450
  %6465 = fsub fast float %6464, %6458
  %6466 = fadd fast float %6465, %6460
  %6467 = fsub fast float %6466, %6463
  %6468 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6469 = fmul fast float %6467, %6468
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = fsub fast float %6470, %6472
  %6474 = fmul fast float %6473, 1.000000e+01
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fadd fast float %4047, -1.000000e+00
  %6477 = fmul fast float %6475, %6476
  %6478 = fadd fast float %6477, 1.000000e+00
  %6479 = fmul fast float %6478, %6470
  br label %6496

; <label>:6480                                    ; preds = %6434
  %6481 = fmul fast float %6443, %6440
  %6482 = fmul fast float %6447, %6444
  %6483 = fmul fast float %6447, %6445
  %6484 = fmul fast float %6481, %6447
  %6485 = add i32 %43, 356
  %6486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.i32 %6486, 0
  %6488 = and i32 %6487, 32
  %6489 = icmp eq i32 %6488, 0
  br i1 %6489, label %6496, label %6490

; <label>:6490                                    ; preds = %6480
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = fmul fast float %6492, 0x3FE99999A0000000
  %6494 = fadd fast float %6492, %6482
  %6495 = fadd fast float %6493, %6484
  br label %6496

; <label>:6496                                    ; preds = %6490, %6480, %6448
  %6497 = phi float [ %6462, %6448 ], [ %6494, %6490 ], [ %6482, %6480 ]
  %6498 = phi float [ %6479, %6448 ], [ %6483, %6490 ], [ %6483, %6480 ]
  %6499 = phi float [ %6478, %6448 ], [ %6495, %6490 ], [ %6484, %6480 ]
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = fmul fast float %6501, %6436
  %6503 = fmul fast float %6501, %6437
  %6504 = fadd fast float %6436, %6435
  %6505 = select i1 %183, float %6504, float %6435
  %6506 = fmul float %6505, %6501
  %6507 = select i1 %183, float 0.000000e+00, float %6502
  %6508 = select i1 %183, float 0.000000e+00, float %6503
  %6509 = fmul fast float %6497, %6441
  %6510 = fmul fast float %6498, %6442
  %6511 = fmul fast float %6499, %6443
  %6512 = fadd fast float %6506, %6509
  %6513 = fadd fast float %6507, %6510
  %6514 = fadd fast float %6508, %6511
  %6515 = select i1 %183, float %6498, float %6513
  %6516 = select i1 %183, float %6499, float %6514
  %6517 = call float @dx.op.binary.f32(i32 36, float %6512, float 3.225500e+04)  ; FMin(a,b)
  %6518 = call float @dx.op.binary.f32(i32 36, float %6515, float 3.225500e+04)  ; FMin(a,b)
  %6519 = call float @dx.op.binary.f32(i32 36, float %6516, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

