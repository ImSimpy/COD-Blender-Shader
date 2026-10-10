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
; shader hash: f1e804498c9f0cd2ae31703d98d530b3
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
  %380 = add i32 %43, 496
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
  %561 = add i32 %43, 464
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
  %1236 = add i32 %43, 468
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
  %2090 = add i32 %43, 472
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
  %2944 = add i32 %43, 476
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
  %3468 = add i32 %43, 456
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %3470, 0
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3472, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = add i32 %43, 360
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.i32 %3476, 1
  %3479 = bitcast i32 %3477 to float
  %3480 = bitcast i32 %3478 to float
  %3481 = fcmp fast oge float %3479, 0.000000e+00
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = select i1 %3481, float %3479, float %3483
  %3485 = add i32 %43, 460
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = add i32 %3487, 0
  %3489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3489, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = fmul fast float %3491, %3480
  %3493 = fadd fast float %3492, %3484
  %3494 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %3456, float %3457)  ; Dot2(ax,ay,bx,by)
  %3495 = fmul fast float %3494, 0x3FE3333340000000
  %3496 = fsub fast float 1.000000e+00, %3495
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3496, float %3456, float %3457, float %3496)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call float @dx.op.unary.f32(i32 25, float %3497)  ; Rsqrt(value)
  %3499 = fmul fast float %3498, %3456
  %3500 = fmul fast float %3498, %3457
  %3501 = fmul fast float %3496, %3498
  %3502 = fmul fast float %3501, %85
  %3503 = fmul fast float %3501, %86
  %3504 = fmul fast float %3501, %87
  %3505 = fmul fast float %3499, %59
  %3506 = fmul fast float %3499, %60
  %3507 = fmul fast float %3499, %61
  %3508 = fadd fast float %3502, %3505
  %3509 = fadd fast float %3503, %3506
  %3510 = fadd fast float %3504, %3507
  %3511 = fmul fast float %97, %3500
  %3512 = fmul fast float %98, %3500
  %3513 = fmul fast float %99, %3500
  %3514 = fadd fast float %3508, %3511
  %3515 = fadd fast float %3509, %3512
  %3516 = fadd fast float %3510, %3513
  %3517 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3516, float %3514, float %3515, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3518 = call float @dx.op.unary.f32(i32 25, float %3517)  ; Rsqrt(value)
  %3519 = fmul fast float %3514, %3518
  %3520 = fmul fast float %3515, %3518
  %3521 = fmul fast float %3516, %3518
  %3522 = and i32 %45, 1
  %3523 = icmp eq i32 %3522, 0
  br i1 %3523, label %3524, label %4032

; <label>:3524                                    ; preds = %3455
  %3525 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3526 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3527 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3528 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3529 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3530 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3531 = fadd fast float %3525, %141
  %3532 = fadd fast float %3526, %142
  %3533 = fadd fast float %3527, %143
  %3534 = fadd fast float %3528, %141
  %3535 = fadd fast float %3529, %142
  %3536 = fadd fast float %3530, %143
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 0
  %3539 = extractvalue %dx.types.CBufRet.f32 %3537, 1
  %3540 = extractvalue %dx.types.CBufRet.f32 %3537, 2
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3543 = extractvalue %dx.types.CBufRet.f32 %3541, 3
  %3544 = fmul fast float %3538, %78
  %3545 = fmul fast float %3544, %3542
  %3546 = fmul fast float %3539, %79
  %3547 = fmul fast float %3546, %3543
  %3548 = fptoui float %3545 to i32
  %3549 = fptoui float %3547 to i32
  %3550 = fadd fast float %3538, -1.000000e+00
  %3551 = fadd fast float %3539, -1.000000e+00
  %3552 = fptoui float %3550 to i32
  %3553 = fptoui float %3551 to i32
  %3554 = call i32 @dx.op.binary.i32(i32 40, i32 %3548, i32 %3552)  ; UMin(a,b)
  %3555 = call i32 @dx.op.binary.i32(i32 40, i32 %3549, i32 %3553)  ; UMin(a,b)
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 2
  %3558 = extractvalue %dx.types.CBufRet.f32 %3556, 3
  %3559 = fmul fast float %3557, %73
  %3560 = fsub fast float %3559, %3558
  %3561 = fadd fast float %3540, -1.000000e+00
  %3562 = call float @dx.op.binary.f32(i32 36, float %3560, float %3561)  ; FMin(a,b)
  %3563 = fptoui float %3562 to i32
  %3564 = fptoui float %3538 to i32
  %3565 = fptoui float %3539 to i32
  %3566 = mul i32 %3563, %3565
  %3567 = add i32 %3566, %3555
  %3568 = mul i32 %3567, %3564
  %3569 = add i32 %3568, %3554
  %3570 = shl i32 %3569, 2
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = and i32 %3572, 1023
  %3574 = lshr i32 %3572, 10
  %3575 = icmp eq i32 %3573, 0
  br i1 %3575, label %4001, label %3576

; <label>:3576                                    ; preds = %3524
  %3577 = and i32 %3572, 1023
  br label %3578

; <label>:3578                                    ; preds = %3704, %3576
  %3579 = phi i32 [ %3654, %3704 ], [ 0, %3576 ]
  %3580 = phi float [ %3705, %3704 ], [ 0.000000e+00, %3576 ]
  %3581 = phi float [ %3706, %3704 ], [ %3493, %3576 ]
  %3582 = phi float [ %3707, %3704 ], [ %3467, %3576 ]
  %3583 = phi float [ %3708, %3704 ], [ 0.000000e+00, %3576 ]
  %3584 = phi float [ %3709, %3704 ], [ 0.000000e+00, %3576 ]
  %3585 = phi float [ %3710, %3704 ], [ %3461, %3576 ]
  %3586 = phi float [ %3711, %3704 ], [ %3462, %3576 ]
  %3587 = phi float [ %3712, %3704 ], [ %3463, %3576 ]
  %3588 = phi float [ %3713, %3704 ], [ %3519, %3576 ]
  %3589 = phi float [ %3714, %3704 ], [ %3520, %3576 ]
  %3590 = phi float [ %3715, %3704 ], [ %3521, %3576 ]
  %3591 = phi float [ %3716, %3704 ], [ %3466, %3576 ]
  %3592 = phi float [ %3717, %3704 ], [ %3465, %3576 ]
  %3593 = phi float [ %3718, %3704 ], [ 0.000000e+00, %3576 ]
  %3594 = phi float [ %3719, %3704 ], [ %3464, %3576 ]
  %3595 = phi float [ %3720, %3704 ], [ %3458, %3576 ]
  %3596 = phi float [ %3721, %3704 ], [ %3459, %3576 ]
  %3597 = phi float [ %3722, %3704 ], [ %3460, %3576 ]
  %3598 = add nuw nsw i32 %3579, %3574
  %3599 = shl i32 %3598, 2
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = shl i32 %3601, 8
  %3603 = or i32 %3602, 48
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3609 = or i32 %3602, 64
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = extractvalue %dx.types.ResRet.i32 %3610, 1
  %3613 = or i32 %3602, 80
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3617 = or i32 %3602, 96
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = or i32 %3602, 112
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3626 = or i32 %3602, 128
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = or i32 %3602, 144
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3638 = or i32 %3602, 160
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = or i32 %3602, 192
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = or i32 %3602, 208
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = or i32 %3602, 248
  %3651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = add nuw nsw i32 %3579, 1
  %3655 = bitcast float %3608 to i32
  %3656 = and i32 %3655, 512
  %3657 = icmp eq i32 %3656, 0
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3659, float %3660, float %3661, float %3662, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = or i32 %3602, 16
  %3665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3665, 2
  %3669 = extractvalue %dx.types.ResRet.f32 %3665, 3
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3666, float %3667, float %3668, float %3669, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = or i32 %3602, 32
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = call float @dx.op.dot4.f32(i32 56, float %3673, float %3674, float %3675, float %3676, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3678 = call float @dx.op.unary.f32(i32 27, float %3663)  ; Round_ni(value)
  %3679 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3680 = call float @dx.op.unary.f32(i32 27, float %3670)  ; Round_ni(value)
  %3681 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3682 = call float @dx.op.unary.f32(i32 6, float %3677)  ; FAbs(value)
  %3683 = call float @dx.op.unary.f32(i32 27, float %3682)  ; Round_ni(value)
  %3684 = fadd fast float %3681, %3679
  %3685 = fadd fast float %3684, %3683
  %3686 = fcmp fast oeq float %3685, 0.000000e+00
  %3687 = call float @dx.op.dot4.f32(i32 56, float %3659, float %3660, float %3661, float %3662, float %3531, float %3532, float %3533, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3688 = call float @dx.op.dot4.f32(i32 56, float %3666, float %3667, float %3668, float %3669, float %3531, float %3532, float %3533, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3689 = call float @dx.op.dot4.f32(i32 56, float %3659, float %3660, float %3661, float %3662, float %3534, float %3535, float %3536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3690 = call float @dx.op.dot4.f32(i32 56, float %3666, float %3667, float %3668, float %3669, float %3534, float %3535, float %3536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3691 = fsub fast float %3687, %3663
  %3692 = fsub fast float %3689, %3663
  %3693 = fsub fast float %3688, %3670
  %3694 = fsub fast float %3690, %3670
  %3695 = call float @dx.op.dot3.f32(i32 55, float %3605, float %3606, float %3607, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 2
  %3698 = fadd fast float %3697, %3695
  %3699 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3701 = fcmp fast ogt float %3699, %3700
  %3702 = and i1 %3686, %3701
  %3703 = and i1 %3657, %3702
  br i1 %3703, label %3724, label %3704

; <label>:3704                                    ; preds = %3987, %3805, %3724, %3578
  %3705 = phi float [ %3580, %3724 ], [ %3808, %3805 ], [ %3808, %3987 ], [ %3580, %3578 ]
  %3706 = phi float [ %3581, %3724 ], [ %3581, %3805 ], [ %3962, %3987 ], [ %3581, %3578 ]
  %3707 = phi float [ %3582, %3724 ], [ %3582, %3805 ], [ %3960, %3987 ], [ %3582, %3578 ]
  %3708 = phi float [ %3583, %3724 ], [ %3583, %3805 ], [ %3932, %3987 ], [ %3583, %3578 ]
  %3709 = phi float [ %3584, %3724 ], [ %3584, %3805 ], [ %3930, %3987 ], [ %3584, %3578 ]
  %3710 = phi float [ %3585, %3724 ], [ %3585, %3805 ], [ %3997, %3987 ], [ %3585, %3578 ]
  %3711 = phi float [ %3586, %3724 ], [ %3586, %3805 ], [ %3998, %3987 ], [ %3586, %3578 ]
  %3712 = phi float [ %3587, %3724 ], [ %3587, %3805 ], [ %3999, %3987 ], [ %3587, %3578 ]
  %3713 = phi float [ %3588, %3724 ], [ %3588, %3805 ], [ %3911, %3987 ], [ %3588, %3578 ]
  %3714 = phi float [ %3589, %3724 ], [ %3589, %3805 ], [ %3912, %3987 ], [ %3589, %3578 ]
  %3715 = phi float [ %3590, %3724 ], [ %3590, %3805 ], [ %3913, %3987 ], [ %3590, %3578 ]
  %3716 = phi float [ %3591, %3724 ], [ %3591, %3805 ], [ %3940, %3987 ], [ %3591, %3578 ]
  %3717 = phi float [ %3592, %3724 ], [ %3592, %3805 ], [ %3937, %3987 ], [ %3592, %3578 ]
  %3718 = phi float [ %3593, %3724 ], [ %3593, %3805 ], [ %3934, %3987 ], [ %3593, %3578 ]
  %3719 = phi float [ %3594, %3724 ], [ %3594, %3805 ], [ %3928, %3987 ], [ %3594, %3578 ]
  %3720 = phi float [ %3595, %3724 ], [ %3595, %3805 ], [ %3923, %3987 ], [ %3595, %3578 ]
  %3721 = phi float [ %3596, %3724 ], [ %3596, %3805 ], [ %3924, %3987 ], [ %3596, %3578 ]
  %3722 = phi float [ %3597, %3724 ], [ %3597, %3805 ], [ %3925, %3987 ], [ %3597, %3578 ]
  %3723 = icmp eq i32 %3654, %3577
  br i1 %3723, label %4000, label %3578

; <label>:3724                                    ; preds = %3578
  %3725 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3726 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3727 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3729 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3730 = extractvalue %dx.types.ResRet.i32 %3610, 3
  %3731 = extractvalue %dx.types.ResRet.i32 %3610, 2
  %3732 = add i32 %3730, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3733, %dx.types.Handle %3734, float %3663, float %3670, float undef, float undef, i32 0, i32 0, i32 undef, float %3691, float %3693, float undef, float %3692, float %3694, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = fmul fast float %3736, %3729
  %3738 = fadd fast float %3737, %3728
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = fmul fast float %3663, %3619
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3620, float %3670, float %3740)  ; FMad(a,b,c)
  %3742 = fadd fast float %3741, %3727
  %3743 = fmul fast float %3663, %3621
  %3744 = call float @dx.op.tertiary.f32(i32 46, float %3622, float %3670, float %3743)  ; FMad(a,b,c)
  %3745 = fadd fast float %3744, %3726
  %3746 = fmul fast float %3691, %3619
  %3747 = call float @dx.op.tertiary.f32(i32 46, float %3620, float %3693, float %3746)  ; FMad(a,b,c)
  %3748 = fmul fast float %3691, %3621
  %3749 = call float @dx.op.tertiary.f32(i32 46, float %3622, float %3693, float %3748)  ; FMad(a,b,c)
  %3750 = fmul fast float %3692, %3619
  %3751 = call float @dx.op.tertiary.f32(i32 46, float %3620, float %3694, float %3750)  ; FMad(a,b,c)
  %3752 = fmul fast float %3692, %3621
  %3753 = call float @dx.op.tertiary.f32(i32 46, float %3622, float %3694, float %3752)  ; FMad(a,b,c)
  %3754 = add i32 %3731, 0
  %3755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3754, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3756 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3755, %dx.types.Handle %3734, float %3742, float %3745, float undef, float undef, i32 0, i32 0, i32 undef, float %3747, float %3749, float undef, float %3751, float %3753, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = and i32 %3655, 1024
  %3759 = icmp ne i32 %3758, 0
  %3760 = fcmp fast ogt float %3757, 0x3FE0101020000000
  %3761 = uitofp i1 %3760 to float
  %3762 = select i1 %3759, float %3761, float %3757
  %3763 = and i32 %3655, 8192
  %3764 = icmp ne i32 %3763, 0
  %3765 = select i1 %3764, float %3725, float 1.000000e+00
  %3766 = fmul fast float %3663, 2.000000e+00
  %3767 = fadd fast float %3766, -1.000000e+00
  %3768 = call float @dx.op.unary.f32(i32 6, float %3767)  ; FAbs(value)
  %3769 = fmul fast float %3768, %3652
  %3770 = fsub fast float %3769, %3652
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fmul fast float %3670, 2.000000e+00
  %3773 = fadd fast float %3772, -1.000000e+00
  %3774 = call float @dx.op.unary.f32(i32 6, float %3773)  ; FAbs(value)
  %3775 = fmul fast float %3774, %3653
  %3776 = fsub fast float %3775, %3653
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fmul fast float %3682, %3615
  %3779 = fsub fast float %3778, %3615
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fmul fast float %3739, %3765
  %3782 = fmul fast float %3781, %3736
  %3783 = fmul fast float %3782, %3771
  %3784 = fmul fast float %3783, %3762
  %3785 = fmul fast float %3784, %3777
  %3786 = fmul fast float %3785, %3780
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 1
  %3789 = extractvalue %dx.types.CBufRet.f32 %3787, 0
  %3790 = fsub fast float %3699, %3789
  %3791 = fmul fast float %3790, %3788
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3793 = fmul fast float %3786, %3616
  %3794 = fadd fast float %3786, %3616
  %3795 = fmul fast float %3794, %3625
  %3796 = fsub fast float %3795, %3625
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = and i32 %3655, 128
  %3799 = icmp ne i32 %3798, 0
  %3800 = select i1 %3799, float %3797, float %3793
  %3801 = fmul fast float %3800, %3792
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = fcmp fast ugt float %3801, %3803
  br i1 %3804, label %3805, label %3704

; <label>:3805                                    ; preds = %3724
  %3806 = select i1 %3764, float %3801, float 0.000000e+00
  %3807 = fadd fast float %3806, %3580
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  br i1 %3764, label %3704, label %3809

; <label>:3809                                    ; preds = %3805
  %3810 = and i32 %3655, 4
  %3811 = and i32 %3655, 8
  %3812 = add i32 %3611, 0
  %3813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3812, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3815 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3813, %dx.types.Handle %3814, float %3742, float %3745, float undef, float undef, i32 0, i32 0, i32 undef, float %3747, float %3749, float undef, float %3751, float %3753, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3820 = bitcast float %3637 to i32
  %3821 = and i32 %3820, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = lshr i32 %3820, 8
  %3824 = and i32 %3823, 255
  %3825 = uitofp i32 %3824 to float
  %3826 = fmul fast float %3819, %3822
  %3827 = fadd fast float %3826, %3825
  %3828 = fmul fast float %3827, 0x3F70101000000000
  %3829 = add i32 %3612, 0
  %3830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3829, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3831 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3830, %dx.types.Handle %3814, float %3742, float %3745, float undef, float undef, i32 0, i32 0, i32 undef, float %3747, float %3749, float undef, float %3751, float %3753, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = bitcast float %3631 to i32
  %3837 = and i32 %3836, 255
  %3838 = uitofp i32 %3837 to float
  %3839 = lshr i32 %3836, 8
  %3840 = and i32 %3839, 255
  %3841 = uitofp i32 %3840 to float
  %3842 = lshr i32 %3836, 16
  %3843 = and i32 %3842, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = fmul fast float %3844, 0x3F70101000000000
  %3846 = fmul fast float %3832, %3838
  %3847 = fadd fast float %3846, %3841
  %3848 = fmul fast float %3847, 0x3F70101000000000
  %3849 = fadd fast float %3833, -5.000000e-01
  %3850 = fadd fast float %3835, -5.000000e-01
  %3851 = fmul fast float %3849, %3845
  %3852 = fmul fast float %3850, %3845
  %3853 = fadd fast float %3851, 5.000000e-01
  %3854 = fadd fast float %3852, 5.000000e-01
  %3855 = fmul fast float %3816, %3640
  %3856 = fmul fast float %3817, %3641
  %3857 = fmul fast float %3818, %3642
  %3858 = fmul fast float %3853, 2.000000e+00
  %3859 = fadd fast float %3858, -1.000000e+00
  %3860 = fmul fast float %3854, 2.000000e+00
  %3861 = fadd fast float %3860, -1.000000e+00
  %3862 = fadd fast float %3859, %3861
  %3863 = fmul fast float %3862, 5.000000e-01
  %3864 = fsub fast float %3859, %3861
  %3865 = fmul fast float %3864, 5.000000e-01
  %3866 = call float @dx.op.unary.f32(i32 6, float %3863)  ; FAbs(value)
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3869 = fsub fast float %3867, %3868
  %3870 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3865, float %3869, float %3863, float %3865, float %3869)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = call float @dx.op.unary.f32(i32 25, float %3870)  ; Rsqrt(value)
  %3872 = fmul fast float %3863, %3871
  %3873 = fmul fast float %3865, %3871
  %3874 = fmul fast float %3871, %3869
  %3875 = fmul fast float %3874, %3605
  %3876 = fmul fast float %3874, %3606
  %3877 = fmul fast float %3874, %3607
  %3878 = fmul fast float %3872, %3628
  %3879 = fmul fast float %3872, %3629
  %3880 = fmul fast float %3872, %3630
  %3881 = fadd fast float %3878, %3875
  %3882 = fadd fast float %3879, %3876
  %3883 = fadd fast float %3880, %3877
  %3884 = fmul fast float %3873, %3634
  %3885 = fmul fast float %3873, %3635
  %3886 = fmul fast float %3873, %3636
  %3887 = fadd fast float %3881, %3884
  %3888 = fadd fast float %3882, %3885
  %3889 = fadd fast float %3883, %3886
  %3890 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3887, float %3888, float %3889)  ; Dot3(ax,ay,az,bx,by,bz)
  %3891 = call float @dx.op.unary.f32(i32 25, float %3890)  ; Rsqrt(value)
  %3892 = fmul fast float %3887, %3891
  %3893 = fmul fast float %3888, %3891
  %3894 = fmul fast float %3889, %3891
  %3895 = icmp ne i32 %3811, 0
  %3896 = select i1 %3895, float 1.000000e+00, float 0.000000e+00
  %3897 = fmul fast float %3801, %3896
  %3898 = and i32 %3655, 1
  %3899 = icmp eq i32 %3898, 0
  br i1 %3899, label %3900, label %3904

; <label>:3900                                    ; preds = %3809
  %3901 = fsub fast float %3892, %3588
  %3902 = fsub fast float %3893, %3589
  %3903 = fsub fast float %3894, %3590
  br label %3904

; <label>:3904                                    ; preds = %3900, %3809
  %3905 = phi float [ %3901, %3900 ], [ %3892, %3809 ]
  %3906 = phi float [ %3902, %3900 ], [ %3893, %3809 ]
  %3907 = phi float [ %3903, %3900 ], [ %3894, %3809 ]
  %3908 = fmul float %3907, %3897
  %3909 = fmul float %3906, %3897
  %3910 = fmul float %3905, %3897
  %3911 = fadd fast float %3910, %3588
  %3912 = fadd fast float %3909, %3589
  %3913 = fadd fast float %3908, %3590
  %3914 = icmp ne i32 %3810, 0
  %3915 = select i1 %3914, float 1.000000e+00, float 0.000000e+00
  %3916 = fmul fast float %3801, %3915
  %3917 = fsub fast float %3855, %3595
  %3918 = fsub fast float %3856, %3596
  %3919 = fsub fast float %3857, %3597
  %3920 = fmul fast float %3917, %3916
  %3921 = fmul fast float %3918, %3916
  %3922 = fmul fast float %3919, %3916
  %3923 = fadd fast float %3920, %3595
  %3924 = fadd fast float %3921, %3596
  %3925 = fadd fast float %3922, %3597
  %3926 = fsub fast float %3828, %3594
  %3927 = fmul fast float %3926, %3916
  %3928 = fadd fast float %3927, %3594
  %3929 = fmul fast float %3916, %3584
  %3930 = fsub fast float %3584, %3929
  %3931 = fmul fast float %3916, %3583
  %3932 = fsub fast float %3583, %3931
  %3933 = fadd fast float %3801, %3593
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = fsub fast float %3848, %3592
  %3936 = fmul fast float %3935, %3897
  %3937 = fadd fast float %3936, %3592
  %3938 = fsub fast float %3834, %3591
  %3939 = fmul fast float %3938, %3897
  %3940 = fadd fast float %3939, %3591
  %3941 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.CBufRet.f32 %3942, 1
  %3945 = fmul fast float %3944, %3941
  %3946 = fadd fast float %3945, %3943
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3948 = bitcast float %3643 to i32
  %3949 = and i32 %3948, 65535
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = lshr i32 %3948, 16
  %3952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3951)  ; LegacyF16ToF32(value)
  %3953 = fcmp fast oge float %3950, 0.000000e+00
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = select i1 %3953, float %3950, float %3955
  %3957 = fadd fast float %3956, %3952
  %3958 = fsub fast float %3947, %3582
  %3959 = fmul fast float %3958, %3801
  %3960 = fadd fast float %3959, %3582
  %3961 = fmul fast float %3957, %3801
  %3962 = call float @dx.op.binary.f32(i32 35, float %3581, float %3961)  ; FMax(a,b)
  %3963 = and i32 %3655, 16
  %3964 = icmp eq i32 %3963, 0
  br i1 %3964, label %3987, label %3965

; <label>:3965                                    ; preds = %3904
  %3966 = bitcast float %3649 to i32
  %3967 = add i32 %3646, 0
  %3968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3967, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3968, %dx.types.Handle %3814, float %3742, float %3745, float undef, float undef, i32 0, i32 0, i32 undef, float %3747, float %3749, float undef, float %3751, float %3753, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = and i32 %3966, 65535
  %3974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3973)  ; LegacyF16ToF32(value)
  %3975 = fmul fast float %3970, %3640
  %3976 = fmul fast float %3971, %3641
  %3977 = fmul fast float %3972, %3642
  %3978 = and i32 %3655, 16384
  %3979 = icmp ne i32 %3978, 0
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = select i1 %3979, float %3981, float 1.000000e+00
  %3983 = fmul fast float %3982, %3974
  %3984 = fmul fast float %3975, %3983
  %3985 = fmul fast float %3976, %3983
  %3986 = fmul fast float %3977, %3983
  br label %3987

; <label>:3987                                    ; preds = %3965, %3904
  %3988 = phi float [ %3984, %3965 ], [ 0.000000e+00, %3904 ]
  %3989 = phi float [ %3985, %3965 ], [ 0.000000e+00, %3904 ]
  %3990 = phi float [ %3986, %3965 ], [ 0.000000e+00, %3904 ]
  %3991 = fsub fast float %3988, %3585
  %3992 = fsub fast float %3989, %3586
  %3993 = fsub fast float %3990, %3587
  %3994 = fmul fast float %3991, %3801
  %3995 = fmul fast float %3992, %3801
  %3996 = fmul fast float %3993, %3801
  %3997 = fadd fast float %3994, %3585
  %3998 = fadd fast float %3995, %3586
  %3999 = fadd fast float %3996, %3587
  br label %3704

; <label>:4000                                    ; preds = %3704
  br label %4001

; <label>:4001                                    ; preds = %4000, %3524
  %4002 = phi float [ 0.000000e+00, %3524 ], [ %3705, %4000 ]
  %4003 = phi float [ %3493, %3524 ], [ %3706, %4000 ]
  %4004 = phi float [ %3467, %3524 ], [ %3707, %4000 ]
  %4005 = phi float [ 0.000000e+00, %3524 ], [ %3708, %4000 ]
  %4006 = phi float [ 0.000000e+00, %3524 ], [ %3709, %4000 ]
  %4007 = phi float [ %3461, %3524 ], [ %3710, %4000 ]
  %4008 = phi float [ %3462, %3524 ], [ %3711, %4000 ]
  %4009 = phi float [ %3463, %3524 ], [ %3712, %4000 ]
  %4010 = phi float [ %3519, %3524 ], [ %3713, %4000 ]
  %4011 = phi float [ %3520, %3524 ], [ %3714, %4000 ]
  %4012 = phi float [ %3521, %3524 ], [ %3715, %4000 ]
  %4013 = phi float [ %3466, %3524 ], [ %3716, %4000 ]
  %4014 = phi float [ %3465, %3524 ], [ %3717, %4000 ]
  %4015 = phi float [ 0.000000e+00, %3524 ], [ %3718, %4000 ]
  %4016 = phi float [ %3464, %3524 ], [ %3719, %4000 ]
  %4017 = phi float [ %3458, %3524 ], [ %3720, %4000 ]
  %4018 = phi float [ %3459, %3524 ], [ %3721, %4000 ]
  %4019 = phi float [ %3460, %3524 ], [ %3722, %4000 ]
  %4020 = call float @dx.op.dot3.f32(i32 55, float %4010, float %4011, float %4012, float %4010, float %4011, float %4012)  ; Dot3(ax,ay,az,bx,by,bz)
  %4021 = call float @dx.op.unary.f32(i32 25, float %4020)  ; Rsqrt(value)
  %4022 = fmul fast float %4021, %4010
  %4023 = fmul fast float %4021, %4011
  %4024 = fmul fast float %4021, %4012
  %4025 = fadd fast float %4015, %902
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float %4022, float %4023, float %4024)  ; Dot3(ax,ay,az,bx,by,bz)
  %4028 = call float @dx.op.unary.f32(i32 25, float %4027)  ; Rsqrt(value)
  %4029 = fmul fast float %4028, %4022
  %4030 = fmul fast float %4028, %4023
  %4031 = fmul fast float %4028, %4024
  br label %4032

; <label>:4032                                    ; preds = %4001, %3455
  %4033 = phi float [ %4029, %4001 ], [ %3519, %3455 ]
  %4034 = phi float [ %4030, %4001 ], [ %3520, %3455 ]
  %4035 = phi float [ %4031, %4001 ], [ %3521, %3455 ]
  %4036 = phi float [ %4017, %4001 ], [ %3458, %3455 ]
  %4037 = phi float [ %4018, %4001 ], [ %3459, %3455 ]
  %4038 = phi float [ %4019, %4001 ], [ %3460, %3455 ]
  %4039 = phi float [ %4007, %4001 ], [ %3461, %3455 ]
  %4040 = phi float [ %4008, %4001 ], [ %3462, %3455 ]
  %4041 = phi float [ %4009, %4001 ], [ %3463, %3455 ]
  %4042 = phi float [ %4016, %4001 ], [ %3464, %3455 ]
  %4043 = phi float [ %4026, %4001 ], [ %902, %3455 ]
  %4044 = phi float [ %4014, %4001 ], [ %3465, %3455 ]
  %4045 = phi float [ %4013, %4001 ], [ %3466, %3455 ]
  %4046 = phi float [ %4006, %4001 ], [ 0.000000e+00, %3455 ]
  %4047 = phi float [ %4005, %4001 ], [ 0.000000e+00, %3455 ]
  %4048 = phi float [ %4002, %4001 ], [ 0.000000e+00, %3455 ]
  %4049 = phi float [ %4003, %4001 ], [ %3493, %3455 ]
  %4050 = phi float [ %4004, %4001 ], [ %3467, %3455 ]
  %4051 = fadd fast float %4042, 0xBFB99999A0000000
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = fmul fast float %4052, 0x3FF1C71C80000000
  %4054 = call float @dx.op.binary.f32(i32 36, float %4042, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4055 = fsub fast float 1.000000e+00, %4053
  %4056 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4057 = fmul fast float %4056, %4036
  %4058 = fmul fast float %4056, %4037
  %4059 = fmul fast float %4056, %4038
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4062 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4063 = fmul fast float %4053, %4036
  %4064 = fmul fast float %4053, %4037
  %4065 = fmul fast float %4053, %4038
  %4066 = fadd fast float %4063, %4054
  %4067 = fadd fast float %4064, %4054
  %4068 = fadd fast float %4065, %4054
  %4069 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4070 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4071 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4073 = fadd fast float %4036, %3474
  %4074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.i32 %4074, 3
  %4076 = and i32 %4075, 8
  %4077 = icmp ne i32 %4076, 0
  %4078 = call float @dx.op.binary.f32(i32 35, float %4060, float %4073)  ; FMax(a,b)
  %4079 = call float @dx.op.binary.f32(i32 35, float %4061, float %4073)  ; FMax(a,b)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4062, float %4073)  ; FMax(a,b)
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = select i1 %183, float %4073, float %4060
  %4083 = select i1 %183, float %4081, float %4061
  %4084 = select i1 %183, float 1.000000e+00, float %4062
  %4085 = select i1 %4077, float %4078, float %4082
  %4086 = select i1 %4077, float %4079, float %4083
  %4087 = select i1 %4077, float %4080, float %4084
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4092 = fadd fast float %4089, %141
  %4093 = fadd fast float %4090, %142
  %4094 = fadd fast float %4091, %143
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4098 = fsub fast float %4092, %4096
  %4099 = fsub fast float %4093, %4097
  %4100 = fmul fast float %4098, %4098
  %4101 = fmul fast float %4099, %4099
  %4102 = fadd fast float %4100, %4101
  %4103 = call float @dx.op.unary.f32(i32 24, float %4102)  ; Sqrt(value)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4105 = fcmp fast olt float %4103, %4104
  br i1 %4105, label %4106, label %4173

; <label>:4106                                    ; preds = %4032
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4114 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4115 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4117 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4118 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4119 = fadd fast float %4116, %4092
  %4120 = fadd fast float %4117, %4093
  %4121 = fadd fast float %4118, %4094
  %4122 = fmul fast float %4119, %4108
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4120, float %4110, float %4122)  ; FMad(a,b,c)
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4112, float %4123)  ; FMad(a,b,c)
  %4125 = fmul fast float %4119, %4113
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4120, float %4114, float %4125)  ; FMad(a,b,c)
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4115, float %4126)  ; FMad(a,b,c)
  %4128 = fsub fast float %4124, %4116
  %4129 = fsub fast float %4127, %4117
  %4130 = fsub fast float %4128, %4096
  %4131 = fadd fast float %4130, %4104
  %4132 = fsub fast float %4129, %4097
  %4133 = fadd fast float %4132, %4104
  %4134 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4135 = fmul fast float %4131, %4134
  %4136 = fmul fast float %4133, %4134
  %4137 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4139 = fsub fast float 1.000000e+00, %4137
  %4140 = fsub fast float 1.000000e+00, %4138
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4139, float %4140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = fcmp fast ugt float %4142, 0.000000e+00
  br i1 %4143, label %4144, label %4447

; <label>:4144                                    ; preds = %4106
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4147 = fmul fast float %4146, %4142
  %4148 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4149 = fadd fast float %4148, %4147
  %4150 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4151 = fadd fast float %4149, %4118
  %4152 = fmul fast float %4124, %4112
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4127, float %4115, float %4152)  ; FMad(a,b,c)
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4150, float %4153)  ; FMad(a,b,c)
  %4155 = fsub fast float %4154, %4118
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4158 = fsub fast float %4155, %4157
  %4159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4139, float %4140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4139, float %4140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = fadd fast float %4164, %4160
  %4168 = fmul fast float %4167, 0x3F847AE140000000
  %4169 = fadd fast float %4165, %4161
  %4170 = fmul fast float %4169, 0x3F847AE140000000
  %4171 = fadd fast float %4166, %4162
  %4172 = fmul fast float %4171, 0x3F847AE140000000
  br label %4447

; <label>:4173                                    ; preds = %4032
  %4174 = and i32 %159, 1
  %4175 = icmp eq i32 %4174, 0
  br i1 %4175, label %4447, label %4176

; <label>:4176                                    ; preds = %4173
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4184 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4187 = extractvalue %dx.types.CBufRet.f32 %4179, 3
  %4188 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4189 = fadd fast float %4186, %4092
  %4190 = fadd fast float %4187, %4093
  %4191 = fadd fast float %4188, %4094
  %4192 = fmul fast float %4189, %4178
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4190, float %4180, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4182, float %4193)  ; FMad(a,b,c)
  %4195 = fmul fast float %4189, %4183
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4190, float %4184, float %4195)  ; FMad(a,b,c)
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4185, float %4196)  ; FMad(a,b,c)
  %4198 = fsub fast float %4194, %4186
  %4199 = fsub fast float %4197, %4187
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.CBufRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.i32 %4207, 0
  %4209 = extractvalue %dx.types.CBufRet.i32 %4207, 1
  %4210 = udiv i32 %4209, %4208
  %4211 = fsub fast float %4198, %4201
  %4212 = fsub fast float %4199, %4202
  %4213 = call float @dx.op.binary.f32(i32 35, float %4211, float 0.000000e+00)  ; FMax(a,b)
  %4214 = call float @dx.op.binary.f32(i32 35, float %4212, float 0.000000e+00)  ; FMax(a,b)
  %4215 = call float @dx.op.binary.f32(i32 36, float %4213, float %4203)  ; FMin(a,b)
  %4216 = call float @dx.op.binary.f32(i32 36, float %4214, float %4204)  ; FMin(a,b)
  %4217 = add i32 %4208, -1
  %4218 = add i32 %4210, -1
  %4219 = fmul fast float %4215, %4206
  %4220 = fmul fast float %4216, %4206
  %4221 = fptoui float %4219 to i32
  %4222 = fptoui float %4220 to i32
  %4223 = call i32 @dx.op.binary.i32(i32 40, i32 %4221, i32 %4217)  ; UMin(a,b)
  %4224 = call i32 @dx.op.binary.i32(i32 40, i32 %4222, i32 %4218)  ; UMin(a,b)
  %4225 = mul i32 %4224, %4208
  %4226 = add i32 %4225, %4223
  %4227 = shl i32 %4226, 2
  %4228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.i32 %4228, 0
  %4230 = icmp eq i32 %4229, -1
  br i1 %4230, label %4447, label %4231

; <label>:4231                                    ; preds = %4176
  %4232 = mul i32 %4229, 148
  %4233 = add i32 %4232, 4
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = add i32 %4232, 8
  %4237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = add i32 %4232, 36
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = add i32 %4232, 60
  %4243 = add i32 %4232, 92
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = add i32 %4232, 116
  %4247 = fsub fast float %4198, %4235
  %4248 = fsub fast float %4199, %4238
  %4249 = fmul fast float %4206, %4247
  %4250 = fmul fast float %4206, %4248
  %4251 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4253 = fsub fast float 1.000000e+00, %4252
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 2
  %4256 = call float @dx.op.unary.f32(i32 83, float %4251)  ; DerivCoarseX(value)
  %4257 = call float @dx.op.unary.f32(i32 83, float %4253)  ; DerivCoarseX(value)
  %4258 = call float @dx.op.unary.f32(i32 84, float %4251)  ; DerivCoarseY(value)
  %4259 = call float @dx.op.unary.f32(i32 84, float %4253)  ; DerivCoarseY(value)
  %4260 = fmul fast float %4256, %4255
  %4261 = fmul fast float %4257, %4255
  %4262 = fmul fast float %4258, %4255
  %4263 = fmul fast float %4259, %4255
  %4264 = call float @dx.op.dot2.f32(i32 54, float %4262, float %4263, float %4262, float %4263)  ; Dot2(ax,ay,bx,by)
  %4265 = call float @dx.op.dot2.f32(i32 54, float %4260, float %4261, float %4260, float %4261)  ; Dot2(ax,ay,bx,by)
  %4266 = call float @dx.op.binary.f32(i32 35, float %4265, float %4264)  ; FMax(a,b)
  %4267 = call float @dx.op.unary.f32(i32 23, float %4266)  ; Log(value)
  %4268 = fmul fast float %4267, 5.000000e-01
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4271 = fadd fast float %4270, %4268
  %4272 = call float @dx.op.binary.f32(i32 35, float %4271, float 0.000000e+00)  ; FMax(a,b)
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4275 = fadd fast float %4274, %4272
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4278 = fadd fast float %4275, %4277
  %4279 = add i32 %4245, 0
  %4280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4281 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4280, i32 0)  ; GetDimensions(handle,mipLevel)
  %4282 = extractvalue %dx.types.Dimensions %4281, 0
  %4283 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4282)  ; FirstbitLo(value)
  %4284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.i32 %4284, 1
  %4286 = sub nsw i32 %4285, %4283
  %4287 = sitofp i32 %4286 to float
  %4288 = fsub fast float %4278, %4287
  %4289 = call float @dx.op.binary.f32(i32 35, float %4288, float 0.000000e+00)  ; FMax(a,b)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4280, %dx.types.Handle %37, float %4251, float %4253, float %4241, float undef, i32 0, i32 0, i32 undef, float %4289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = fcmp ule float %4291, 0x3FE0101020000000
  %4293 = extractvalue %dx.types.CBufRet.i32 %4284, 0
  %4294 = and i32 %4293, 128
  %4295 = icmp ne i32 %4294, 0
  %4296 = and i1 %4292, %4295
  br i1 %4296, label %4447, label %4297

; <label>:4297                                    ; preds = %4231
  %4298 = add i32 %4232, 20
  %4299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4298, i32 undef)  ; BufferLoad(srv,index,wot)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = add i32 %4232, 24
  %4302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4304 = add i32 %4232, 40
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = add i32 %4232, 96
  %4308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4307, i32 undef)  ; BufferLoad(srv,index,wot)
  %4309 = extractvalue %dx.types.ResRet.i32 %4308, 0
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 2
  %4312 = fmul fast float %4311, %4251
  %4313 = fmul fast float %4311, %4253
  %4314 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4315 = fadd fast float %4312, %4314
  %4316 = fadd fast float %4313, %4314
  %4317 = add i32 %4309, 0
  %4318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4317, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4319 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4318, i32 0)  ; GetDimensions(handle,mipLevel)
  %4320 = extractvalue %dx.types.Dimensions %4319, 0
  %4321 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4320)  ; FirstbitLo(value)
  %4322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.i32 %4322, 1
  %4324 = sub nsw i32 %4323, %4321
  %4325 = sitofp i32 %4324 to float
  %4326 = fsub fast float %4275, %4325
  %4327 = call float @dx.op.binary.f32(i32 35, float %4326, float 0.000000e+00)  ; FMax(a,b)
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4318, %dx.types.Handle %37, float %4315, float %4316, float %4306, float undef, i32 0, i32 0, i32 undef, float %4327)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = fmul fast float %4329, %4300
  %4331 = fadd fast float %4330, %4303
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 3
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4340 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4341 = fadd fast float %4337, %4198
  %4342 = fadd fast float %4339, %4199
  %4343 = fadd fast float %4331, %4340
  %4344 = fmul fast float %4341, %4333
  %4345 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4334, float %4344)  ; FMad(a,b,c)
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4343, float %4335, float %4345)  ; FMad(a,b,c)
  %4347 = fsub fast float %4346, %4340
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4350 = fsub fast float %4347, %4349
  %4351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.i32 %4351, 0
  %4353 = call i32 @dx.op.binary.i32(i32 40, i32 %4229, i32 %4352)  ; UMin(a,b)
  %4354 = mul i32 %4353, 36
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = add i32 %4354, 4
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 0
  %4360 = fmul fast float %4359, %4251
  %4361 = fmul fast float %4359, %4253
  %4362 = extractvalue %dx.types.CBufRet.f32 %4358, 1
  %4363 = fadd fast float %4360, %4362
  %4364 = fadd fast float %4361, %4362
  %4365 = icmp eq i32 %4356, 0
  br i1 %4365, label %4434, label %4366

; <label>:4366                                    ; preds = %4297
  br label %4367

; <label>:4367                                    ; preds = %4424, %4366
  %4368 = phi float [ %4425, %4424 ], [ 0.000000e+00, %4366 ]
  %4369 = phi float [ %4426, %4424 ], [ 0.000000e+00, %4366 ]
  %4370 = phi float [ %4427, %4424 ], [ 0.000000e+00, %4366 ]
  %4371 = phi float [ %4428, %4424 ], [ 0.000000e+00, %4366 ]
  %4372 = phi float [ %4429, %4424 ], [ 0.000000e+00, %4366 ]
  %4373 = phi float [ %4430, %4424 ], [ 0.000000e+00, %4366 ]
  %4374 = phi i32 [ %4431, %4424 ], [ 0, %4366 ]
  %4375 = shl i32 %4374, 2
  %4376 = add i32 %4242, %4375
  %4377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = add i32 %4246, %4375
  %4380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.i32 %4380, 0
  %4382 = add i32 %4381, 0
  %4383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4382, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4384 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4383, i32 0)  ; GetDimensions(handle,mipLevel)
  %4385 = extractvalue %dx.types.Dimensions %4384, 0
  %4386 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4385)  ; FirstbitLo(value)
  %4387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.i32 %4387, 1
  %4389 = sub nsw i32 %4388, %4386
  %4390 = sitofp i32 %4389 to float
  %4391 = fsub fast float %4275, %4390
  %4392 = call float @dx.op.binary.f32(i32 35, float %4391, float 0.000000e+00)  ; FMax(a,b)
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4383, %dx.types.Handle %37, float %4363, float %4364, float %4378, float undef, i32 0, i32 0, i32 undef, float %4392)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = fcmp fast ogt float %4394, 0.000000e+00
  br i1 %4395, label %4396, label %4424

; <label>:4396                                    ; preds = %4367
  %4397 = add i32 %4357, %4375
  %4398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.i32 %4398, 0
  %4400 = and i32 %4399, 32767
  %4401 = mul nuw nsw i32 %4400, 928
  %4402 = add nuw nsw i32 %4401, 48
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.ResRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.ResRet.f32 %4403, 2
  %4407 = add nuw nsw i32 %4401, 60
  %4408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = fmul fast float %4404, %4394
  %4413 = fmul fast float %4405, %4394
  %4414 = fmul fast float %4406, %4394
  %4415 = fadd fast float %4412, %4368
  %4416 = fadd fast float %4413, %4369
  %4417 = fadd fast float %4414, %4370
  %4418 = fmul fast float %4409, %4394
  %4419 = fmul fast float %4410, %4394
  %4420 = fmul fast float %4411, %4394
  %4421 = fadd fast float %4418, %4371
  %4422 = fadd fast float %4419, %4372
  %4423 = fadd fast float %4420, %4373
  br label %4424

; <label>:4424                                    ; preds = %4396, %4367
  %4425 = phi float [ %4415, %4396 ], [ %4368, %4367 ]
  %4426 = phi float [ %4416, %4396 ], [ %4369, %4367 ]
  %4427 = phi float [ %4417, %4396 ], [ %4370, %4367 ]
  %4428 = phi float [ %4421, %4396 ], [ %4371, %4367 ]
  %4429 = phi float [ %4422, %4396 ], [ %4372, %4367 ]
  %4430 = phi float [ %4423, %4396 ], [ %4373, %4367 ]
  %4431 = add nuw i32 %4374, 1
  %4432 = icmp eq i32 %4431, %4356
  br i1 %4432, label %4433, label %4367

; <label>:4433                                    ; preds = %4424
  br label %4434

; <label>:4434                                    ; preds = %4433, %4297
  %4435 = phi float [ 0.000000e+00, %4297 ], [ %4425, %4433 ]
  %4436 = phi float [ 0.000000e+00, %4297 ], [ %4426, %4433 ]
  %4437 = phi float [ 0.000000e+00, %4297 ], [ %4427, %4433 ]
  %4438 = phi float [ 0.000000e+00, %4297 ], [ %4428, %4433 ]
  %4439 = phi float [ 0.000000e+00, %4297 ], [ %4429, %4433 ]
  %4440 = phi float [ 0.000000e+00, %4297 ], [ %4430, %4433 ]
  %4441 = fadd fast float %4438, %4435
  %4442 = fmul fast float %4441, 0x3F847AE140000000
  %4443 = fadd fast float %4439, %4436
  %4444 = fmul fast float %4443, 0x3F847AE140000000
  %4445 = fadd fast float %4440, %4437
  %4446 = fmul fast float %4445, 0x3F847AE140000000
  br label %4447

; <label>:4447                                    ; preds = %4434, %4231, %4176, %4173, %4144, %4106
  %4448 = phi float [ %4158, %4144 ], [ -1.310720e+05, %4106 ], [ %4350, %4434 ], [ -1.310720e+05, %4176 ], [ -1.310720e+05, %4231 ], [ -1.310720e+05, %4173 ]
  %4449 = phi float [ %4168, %4144 ], [ 0.000000e+00, %4106 ], [ %4442, %4434 ], [ 0.000000e+00, %4176 ], [ 0.000000e+00, %4231 ], [ 0.000000e+00, %4173 ]
  %4450 = phi float [ %4170, %4144 ], [ 0.000000e+00, %4106 ], [ %4444, %4434 ], [ 0.000000e+00, %4176 ], [ 0.000000e+00, %4231 ], [ 0.000000e+00, %4173 ]
  %4451 = phi float [ %4172, %4144 ], [ 0.000000e+00, %4106 ], [ %4446, %4434 ], [ 0.000000e+00, %4176 ], [ 0.000000e+00, %4231 ], [ 0.000000e+00, %4173 ]
  %4452 = phi i1 [ true, %4144 ], [ false, %4106 ], [ true, %4434 ], [ false, %4176 ], [ false, %4231 ], [ false, %4173 ]
  %4453 = and i32 %159, 3
  %4454 = icmp eq i32 %4453, 1
  %4455 = select i1 %4454, float 1.000000e+00, float 0.000000e+00
  %4456 = fsub fast float %4448, %143
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = select i1 %4452, float %4457, float 1.000000e+00
  %4459 = fmul fast float %4458, %4455
  %4460 = icmp eq i32 %4453, 3
  %4461 = select i1 %4460, float 1.000000e+00, float %4459
  %4462 = call float @dx.op.binary.f32(i32 35, float %4048, float %4461)  ; FMax(a,b)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fcmp fast une float %4463, 0.000000e+00
  %4465 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = call float @dx.op.unary.f32(i32 25, float %4465)  ; Rsqrt(value)
  br i1 %4464, label %4474, label %4467

; <label>:4467                                    ; preds = %4447
  %4468 = fmul fast float %4466, %141
  %4469 = fmul fast float %4466, %142
  %4470 = fmul fast float %4466, %143
  %4471 = fsub fast float -0.000000e+00, %4468
  %4472 = fsub fast float -0.000000e+00, %4469
  %4473 = fsub fast float -0.000000e+00, %4470
  br label %4642

; <label>:4474                                    ; preds = %4447
  %4475 = fmul fast float %141, %4466
  %4476 = fsub fast float -0.000000e+00, %4475
  %4477 = fmul fast float %142, %4466
  %4478 = fsub fast float -0.000000e+00, %4477
  %4479 = fmul fast float %143, %4466
  %4480 = fsub fast float -0.000000e+00, %4479
  %4481 = call float @dx.op.dot3.f32(i32 55, float %4476, float %4478, float %4480, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = fmul fast float %4463, 2.500000e+00
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4463, 0x4013FFFFE0000000
  %4485 = fadd fast float %4484, 0xBFFFFFFFE0000000
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4463, 0x4004000020000000
  %4488 = fadd fast float %4487, 0xBFF8000040000000
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4491 = fmul fast float %4051, 1.000000e+01
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, 2.000000e+00
  %4494 = fsub fast float 3.000000e+00, %4493
  %4495 = fmul fast float %4492, %4492
  %4496 = fmul fast float %4495, %4494
  %4497 = fsub fast float 1.000000e+00, %4496
  %4498 = fsub fast float 0x3FE3333340000000, %4072
  %4499 = fmul fast float %4498, 0x400AAAAAA0000000
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4497, %4500
  %4502 = fmul fast float %4085, 0x3FEA2B8620000000
  %4503 = fmul fast float %4086, 0x3FEA2B8620000000
  %4504 = fmul fast float %4087, 0x3FEA2B8620000000
  %4505 = fadd fast float %4502, 0x3FC81DFBA0000000
  %4506 = fmul fast float %4505, %4085
  %4507 = fadd fast float %4506, 0x3F910E6020000000
  %4508 = fadd fast float %4503, 0x3FC81DFBA0000000
  %4509 = fmul fast float %4508, %4086
  %4510 = fadd fast float %4509, 0x3F910E6020000000
  %4511 = fadd fast float %4504, 0x3FC81DFBA0000000
  %4512 = fmul fast float %4511, %4087
  %4513 = fadd fast float %4512, 0x3F910E6020000000
  %4514 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = fsub fast float %4514, %4085
  %4518 = fsub fast float %4515, %4086
  %4519 = fsub fast float %4516, %4087
  %4520 = fmul fast float %4517, %4490
  %4521 = fmul fast float %4520, %4501
  %4522 = fmul fast float %4518, %4490
  %4523 = fmul fast float %4522, %4501
  %4524 = fmul fast float %4519, %4490
  %4525 = fmul fast float %4524, %4501
  %4526 = fadd fast float %4521, %4085
  %4527 = fadd fast float %4523, %4086
  %4528 = fadd fast float %4525, %4087
  %4529 = fmul fast float %4045, %4045
  %4530 = fmul fast float %4529, %4529
  %4531 = fadd fast float %4486, 1.000000e+00
  %4532 = fsub fast float %4531, %4501
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4536 = fsub fast float 1.000000e+00, %4530
  %4537 = call float @dx.op.binary.f32(i32 36, float %4533, float %4536)  ; FMin(a,b)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4539 = call float @dx.op.binary.f32(i32 35, float %4537, float %4538)  ; FMax(a,b)
  %4540 = fadd fast float %4535, 0xBFE4CCCCC0000000
  %4541 = fmul fast float %4540, 0x4006DB6DA0000000
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = fmul fast float %4542, 2.000000e+00
  %4544 = fsub fast float 3.000000e+00, %4543
  %4545 = bitcast float %4069 to i32
  %4546 = ashr i32 %4545, 1
  %4547 = add nsw i32 %4546, 532487669
  %4548 = bitcast i32 %4547 to float
  %4549 = fsub fast float 1.000000e+00, %4548
  %4550 = bitcast float %4549 to i32
  %4551 = sub nsw i32 2129859010, %4550
  %4552 = bitcast i32 %4551 to float
  %4553 = fmul fast float %4552, 2.000000e+00
  %4554 = bitcast float %4070 to i32
  %4555 = ashr i32 %4554, 1
  %4556 = add nsw i32 %4555, 532487669
  %4557 = bitcast i32 %4556 to float
  %4558 = fsub fast float 1.000000e+00, %4557
  %4559 = bitcast float %4558 to i32
  %4560 = sub nsw i32 2129859010, %4559
  %4561 = bitcast i32 %4560 to float
  %4562 = fmul fast float %4561, 2.000000e+00
  %4563 = bitcast float %4071 to i32
  %4564 = ashr i32 %4563, 1
  %4565 = add nsw i32 %4564, 532487669
  %4566 = bitcast i32 %4565 to float
  %4567 = fsub fast float 1.000000e+00, %4566
  %4568 = bitcast float %4567 to i32
  %4569 = sub nsw i32 2129859010, %4568
  %4570 = bitcast i32 %4569 to float
  %4571 = fmul fast float %4570, 2.000000e+00
  %4572 = fsub fast float 0x4002A9FBE0000000, %4553
  %4573 = fadd fast float %4553, 0x3FD54FDF00000000
  %4574 = bitcast float %4573 to i32
  %4575 = sub nsw i32 2129859010, %4574
  %4576 = bitcast i32 %4575 to float
  %4577 = fmul fast float %4576, %4572
  %4578 = fmul fast float %4577, %4577
  %4579 = fsub fast float 0x4002A9FBE0000000, %4562
  %4580 = fadd fast float %4562, 0x3FD54FDF00000000
  %4581 = bitcast float %4580 to i32
  %4582 = sub nsw i32 2129859010, %4581
  %4583 = bitcast i32 %4582 to float
  %4584 = fmul fast float %4583, %4579
  %4585 = fmul fast float %4584, %4584
  %4586 = fsub fast float 0x4002A9FBE0000000, %4571
  %4587 = fadd fast float %4571, 0x3FD54FDF00000000
  %4588 = bitcast float %4587 to i32
  %4589 = sub nsw i32 2129859010, %4588
  %4590 = bitcast i32 %4589 to float
  %4591 = fmul fast float %4590, %4586
  %4592 = fmul fast float %4591, %4591
  %4593 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4578)  ; FMax(a,b)
  %4594 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4585)  ; FMax(a,b)
  %4595 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4592)  ; FMax(a,b)
  %4596 = fsub fast float 1.000000e+00, %4481
  %4597 = fadd fast float %4596, %4497
  %4598 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4599 = fsub fast float 1.000000e+00, %4461
  %4600 = fmul fast float %4539, %4599
  %4601 = fmul fast float %4542, %4542
  %4602 = fmul fast float %4601, %4600
  %4603 = fmul fast float %4602, %4544
  %4604 = fmul fast float %4599, 0xBFE99999A0000000
  %4605 = fmul fast float %4604, %4490
  %4606 = fmul fast float %4605, %4501
  %4607 = fadd fast float %4606, 1.000000e+00
  %4608 = fadd fast float %4072, -1.000000e+00
  %4609 = fmul fast float %4607, %4608
  %4610 = fadd fast float %4609, 1.000000e+00
  %4611 = fsub fast float %4593, %4069
  %4612 = fsub fast float %4594, %4070
  %4613 = fsub fast float %4595, %4071
  %4614 = fmul fast float %4603, %4611
  %4615 = fmul fast float %4603, %4612
  %4616 = fmul fast float %4603, %4613
  %4617 = fadd fast float %4614, %4069
  %4618 = fadd fast float %4615, %4070
  %4619 = fadd fast float %4616, %4071
  %4620 = fsub fast float %85, %4033
  %4621 = fsub fast float %86, %4034
  %4622 = fsub fast float %87, %4035
  %4623 = fmul fast float %4603, %4620
  %4624 = fmul fast float %4603, %4621
  %4625 = fmul fast float %4603, %4622
  %4626 = fadd fast float %4623, %4033
  %4627 = fadd fast float %4624, %4034
  %4628 = fadd fast float %4625, %4035
  %4629 = fmul fast float %4603, %4598
  %4630 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4631 = fsub fast float 1.000000e+00, %4630
  %4632 = fmul fast float %4629, %4631
  %4633 = fadd fast float %4632, %4630
  %4634 = fsub fast float 1.000000e+00, %4045
  %4635 = fmul fast float %4603, %4634
  %4636 = fadd fast float %4635, %4045
  %4637 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.unary.f32(i32 25, float %4637)  ; Rsqrt(value)
  %4639 = fmul fast float %4626, %4638
  %4640 = fmul fast float %4627, %4638
  %4641 = fmul fast float %4628, %4638
  br label %4642

; <label>:4642                                    ; preds = %4474, %4467
  %4643 = phi float [ %4473, %4467 ], [ %4480, %4474 ]
  %4644 = phi float [ %4472, %4467 ], [ %4478, %4474 ]
  %4645 = phi float [ %4471, %4467 ], [ %4476, %4474 ]
  %4646 = phi float [ %4470, %4467 ], [ %4479, %4474 ]
  %4647 = phi float [ %4469, %4467 ], [ %4477, %4474 ]
  %4648 = phi float [ %4468, %4467 ], [ %4475, %4474 ]
  %4649 = phi float [ %4085, %4467 ], [ %4526, %4474 ]
  %4650 = phi float [ %4086, %4467 ], [ %4527, %4474 ]
  %4651 = phi float [ %4087, %4467 ], [ %4528, %4474 ]
  %4652 = phi float [ %4033, %4467 ], [ %4639, %4474 ]
  %4653 = phi float [ %4034, %4467 ], [ %4640, %4474 ]
  %4654 = phi float [ %4035, %4467 ], [ %4641, %4474 ]
  %4655 = phi float [ %4069, %4467 ], [ %4617, %4474 ]
  %4656 = phi float [ %4070, %4467 ], [ %4618, %4474 ]
  %4657 = phi float [ %4071, %4467 ], [ %4619, %4474 ]
  %4658 = phi float [ %4072, %4467 ], [ %4633, %4474 ]
  %4659 = phi float [ %4045, %4467 ], [ %4636, %4474 ]
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4662 = extractvalue %dx.types.CBufRet.f32 %4660, 3
  %4663 = fmul fast float %4661, %78
  %4664 = fmul fast float %4662, %79
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4663, float %4664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = fmul fast float %4669, %4667
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fadd fast float %4671, -1.000000e+00
  %4673 = fmul fast float %4672, %4666
  %4674 = fadd fast float %4673, 1.000000e+00
  %4675 = select i1 %183, float 0.000000e+00, float %4657
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %4645, float %4644, float %4643)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4647, float %4646, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = fmul fast float %4678, 2.000000e+00
  %4680 = fmul fast float %4679, %4652
  %4681 = fmul fast float %4679, %4653
  %4682 = fmul fast float %4679, %4654
  %4683 = fsub fast float %4648, %4680
  %4684 = fsub fast float %4647, %4681
  %4685 = fsub fast float %4646, %4682
  %4686 = call float @dx.op.binary.f32(i32 36, float %4659, float %4674)  ; FMin(a,b)
  %4687 = fsub fast float 1.000000e+00, %4686
  %4688 = bitcast float %4687 to i32
  %4689 = ashr i32 %4688, 1
  %4690 = add nsw i32 %4689, 532487669
  %4691 = bitcast i32 %4690 to float
  %4692 = fsub fast float 1.000000e+00, %4658
  %4693 = call float @dx.op.binary.f32(i32 35, float %4692, float 0x3F847AE140000000)  ; FMax(a,b)
  %4694 = fmul fast float %4693, %4693
  %4695 = fmul fast float %4694, %4694
  %4696 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4691, float %4695, float %4696, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = fsub fast float 1.000000e+00, %4659
  %4700 = bitcast float %4699 to i32
  %4701 = sub nsw i32 2129859010, %4700
  %4702 = fsub fast float 1.000000e+00, %55
  %4703 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4705 = fdiv fast float %4702, %4704
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, 5.000000e-01
  %4709 = fadd fast float %4708, 5.000000e-01
  %4710 = fmul fast float %4709, %55
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, %4705
  %4714 = fadd fast float %4710, %4713
  %4715 = fsub fast float 5.000000e-01, %4708
  %4716 = fmul fast float %4715, %4649
  %4717 = fmul fast float %4715, %4650
  %4718 = fmul fast float %4715, %4651
  %4719 = fadd fast float %4714, %4716
  %4720 = fadd fast float %4714, %4717
  %4721 = fadd fast float %4714, %4718
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4723, 5.000000e-01
  %4725 = fadd fast float %4724, 5.000000e-01
  %4726 = fmul fast float %4725, %55
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4728, %4705
  %4730 = fadd fast float %4726, %4729
  %4731 = fsub fast float 5.000000e-01, %4724
  %4732 = fmul fast float %4731, %4649
  %4733 = fmul fast float %4731, %4650
  %4734 = fmul fast float %4731, %4651
  %4735 = fadd fast float %4730, %4732
  %4736 = fadd fast float %4730, %4733
  %4737 = fadd fast float %4730, %4734
  %4738 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = call float @dx.op.binary.f32(i32 36, float %4649, float %4740)  ; FMin(a,b)
  %4742 = fmul fast float %4741, %4687
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = bitcast float %4743 to i32
  %4745 = sub nsw i32 2129859010, %4744
  %4746 = bitcast i32 %4745 to float
  %4747 = call float @dx.op.binary.f32(i32 36, float %4650, float %4740)  ; FMin(a,b)
  %4748 = fmul fast float %4747, %4687
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = bitcast float %4749 to i32
  %4751 = sub nsw i32 2129859010, %4750
  %4752 = bitcast i32 %4751 to float
  %4753 = call float @dx.op.binary.f32(i32 36, float %4651, float %4740)  ; FMin(a,b)
  %4754 = fmul fast float %4753, %4687
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = bitcast float %4755 to i32
  %4757 = sub nsw i32 2129859010, %4756
  %4758 = bitcast i32 %4757 to float
  %4759 = fmul fast float %4686, %56
  %4760 = fmul fast float %4759, %4719
  %4761 = fmul fast float %4760, %4746
  %4762 = fmul fast float %4686, %57
  %4763 = fmul fast float %4762, %4720
  %4764 = fmul fast float %4763, %4752
  %4765 = fmul fast float %4686, %58
  %4766 = fmul fast float %4765, %4721
  %4767 = fmul fast float %4766, %4758
  %4768 = call float @dx.op.binary.f32(i32 36, float %4655, float %4740)  ; FMin(a,b)
  %4769 = fmul fast float %4768, %4687
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = call float @dx.op.binary.f32(i32 36, float %4656, float %4740)  ; FMin(a,b)
  %4775 = fmul fast float %4774, %4687
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = call float @dx.op.binary.f32(i32 36, float %4675, float %4740)  ; FMin(a,b)
  %4781 = fmul fast float %4780, %4687
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = fmul fast float %4759, %4735
  %4787 = fmul fast float %4786, %4773
  %4788 = fmul fast float %4762, %4736
  %4789 = fmul fast float %4788, %4779
  %4790 = fmul fast float %4765, %4737
  %4791 = fmul fast float %4790, %4785
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4764, float %4767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = select i1 %183, float 0.000000e+00, float %4761
  %4794 = select i1 %183, float %4792, float %4764
  %4795 = select i1 %183, float 0.000000e+00, float %4767
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4789, float %4791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = select i1 %183, float 0.000000e+00, float %4787
  %4798 = select i1 %183, float %4796, float %4789
  %4799 = select i1 %183, float 0.000000e+00, float %4791
  %4800 = fmul fast float %4677, 9.843750e-01
  %4801 = fmul fast float %4658, 9.843750e-01
  %4802 = fadd fast float %4800, 7.812500e-03
  %4803 = fadd fast float %4801, 7.812500e-03
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4802, float %4803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4804, 3
  %4807 = fmul fast float %4805, %4655
  %4808 = fmul fast float %4805, %4656
  %4809 = fmul fast float %4805, %4675
  %4810 = fadd fast float %4807, %4806
  %4811 = fadd fast float %4808, %4806
  %4812 = fadd fast float %4809, %4806
  %4813 = fcmp fast ogt float %4046, 0.000000e+00
  br i1 %4813, label %4814, label %4840

; <label>:4814                                    ; preds = %4642
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4046, float %4677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = fadd fast float %4816, -5.000000e-01
  %4820 = fadd fast float %4817, -5.000000e-01
  %4821 = fadd fast float %4818, -5.000000e-01
  %4822 = fsub fast float 1.000000e+00, %4655
  %4823 = fsub fast float 1.000000e+00, %4656
  %4824 = fsub fast float 1.000000e+00, %4675
  %4825 = fmul fast float %4655, 4.000000e+00
  %4826 = fmul fast float %4825, %4822
  %4827 = fmul fast float %4826, %4819
  %4828 = fmul fast float %4656, 4.000000e+00
  %4829 = fmul fast float %4828, %4823
  %4830 = fmul fast float %4829, %4820
  %4831 = fmul fast float %4675, 4.000000e+00
  %4832 = fmul fast float %4831, %4824
  %4833 = fmul fast float %4832, %4821
  %4834 = fadd fast float %4827, %4810
  %4835 = fadd fast float %4830, %4811
  %4836 = fadd fast float %4833, %4812
  %4837 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  br label %4840

; <label>:4840                                    ; preds = %4814, %4642
  %4841 = phi float [ %4837, %4814 ], [ %4810, %4642 ]
  %4842 = phi float [ %4838, %4814 ], [ %4811, %4642 ]
  %4843 = phi float [ %4839, %4814 ], [ %4812, %4642 ]
  %4844 = call float @dx.op.binary.f32(i32 35, float %4842, float %4843)  ; FMax(a,b)
  %4845 = call float @dx.op.binary.f32(i32 35, float %4841, float %4844)  ; FMax(a,b)
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = fmul fast float %4845, %4658
  %4848 = fadd fast float %4847, %4658
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4849, 2
  %4853 = extractvalue %dx.types.CBufRet.f32 %4849, 3
  %4854 = fmul fast float %4848, %4850
  %4855 = fadd fast float %4854, %4851
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fmul fast float %4852, %4848
  %4858 = fadd fast float %4857, %4853
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fsub fast float 1.000000e+00, %4698
  %4861 = fadd fast float %4860, %4859
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fcmp fast olt float %4862, 1.000000e+00
  br i1 %4863, label %4864, label %5719

; <label>:4864                                    ; preds = %4840
  %4865 = fcmp fast olt float %4856, 1.000000e+00
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  %4868 = fcmp fast ogt float %4867, 0.000000e+00
  %4869 = or i1 %4865, %4868
  %4870 = or i1 %4865, %4868
  %4871 = xor i1 %4870, true
  %4872 = zext i1 %4871 to i32
  br i1 %4869, label %4873, label %5116

; <label>:4873                                    ; preds = %4864
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4888 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4892 = extractvalue %dx.types.CBufRet.f32 %4889, 2
  %4893 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %4683, float %4684, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 6, float %4905)  ; FAbs(value)
  %4907 = fmul fast float %4906, 8.000000e+00
  %4908 = fadd fast float %4907, -6.000000e+00
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4904, 8.000000e+00
  %4911 = fmul fast float %4910, %4867
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fcmp fast ogt float %4912, 0.000000e+00
  br i1 %4913, label %4914, label %5091, !dx.controlflow.hints !82

; <label>:4914                                    ; preds = %4873
  %4915 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4866, 2
  %4917 = fsub fast float %4915, %4916
  %4918 = fmul fast float %4917, %4658
  %4919 = fadd fast float %4918, %4916
  %4920 = fmul fast float %196, 2.000000e+00
  %4921 = fmul fast float %197, 2.000000e+00
  %4922 = fadd fast float %4920, -1.000000e+00
  %4923 = fadd fast float %4921, -1.000000e+00
  %4924 = fmul fast float %4919, %4922
  %4925 = fmul fast float %4919, %4923
  %4926 = fadd fast float %4924, %78
  %4927 = fadd fast float %4925, %79
  %4928 = fmul fast float %4926, %4661
  %4929 = fmul fast float %4927, %4662
  %4930 = fadd fast float %4658, 0xBFE3333340000000
  %4931 = fmul fast float %4930, 0x4004000020000000
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fmul fast float %4933, 3.000000e+00
  %4935 = fadd fast float %4934, %196
  %4936 = call float @dx.op.unary.f32(i32 27, float %4935)  ; Round_ni(value)
  %4937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4928, float %4929, float %4936, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4938 = extractvalue %dx.types.ResRet.f32 %4937, 0
  %4939 = fcmp fast une float %4938, 0xFFF0000000000000
  %4940 = fcmp fast une float %4938, 0x7FF0000000000000
  %4941 = and i1 %4939, %4940
  %4942 = fcmp fast olt float %4938, 0.000000e+00
  %4943 = call float @dx.op.unary.f32(i32 6, float %4938)  ; FAbs(value)
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = select i1 %4941, float 1.000000e+00, float 0.000000e+00
  %4946 = fmul fast float %4945, %4912
  %4947 = fcmp fast ogt float %4946, 0.000000e+00
  br i1 %4947, label %4948, label %5091, !dx.controlflow.hints !83

; <label>:4948                                    ; preds = %4914
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.CBufRet.f32 %4949, 1
  %4952 = extractvalue %dx.types.CBufRet.f32 %4949, 2
  %4953 = select i1 %4942, float 0.000000e+00, float %4950
  %4954 = select i1 %4942, float 0.000000e+00, float %4951
  %4955 = select i1 %4942, float 0.000000e+00, float %4952
  %4956 = select i1 %4942, float %4875, float %4890
  %4957 = select i1 %4942, float %4880, float %4895
  %4958 = select i1 %4942, float %4885, float %4900
  %4959 = select i1 %4942, float %4876, float %4891
  %4960 = select i1 %4942, float %4881, float %4896
  %4961 = select i1 %4942, float %4886, float %4901
  %4962 = select i1 %4942, float %4877, float %4892
  %4963 = select i1 %4942, float %4882, float %4897
  %4964 = select i1 %4942, float %4887, float %4902
  %4965 = select i1 %4942, float %4878, float %4893
  %4966 = select i1 %4942, float %4883, float %4898
  %4967 = select i1 %4942, float %4888, float %4903
  %4968 = fadd fast float %4953, %141
  %4969 = fadd fast float %4954, %142
  %4970 = fadd fast float %4955, %143
  %4971 = fmul fast float %4968, %4956
  %4972 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4959, float %4971)  ; FMad(a,b,c)
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4962, float %4972)  ; FMad(a,b,c)
  %4974 = fadd fast float %4973, %4965
  %4975 = fmul fast float %4968, %4957
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4960, float %4975)  ; FMad(a,b,c)
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4963, float %4976)  ; FMad(a,b,c)
  %4978 = fadd fast float %4977, %4966
  %4979 = fmul fast float %4968, %4958
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4961, float %4979)  ; FMad(a,b,c)
  %4981 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4964, float %4980)  ; FMad(a,b,c)
  %4982 = fadd fast float %4981, %4967
  %4983 = fdiv fast float 1.000000e+00, %4982
  %4984 = fmul fast float %4983, %4974
  %4985 = fmul fast float %4983, %4978
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.CBufRet.f32 %4986, 1
  %4989 = fmul fast float %4984, %4987
  %4990 = fmul fast float %4985, %4988
  %4991 = extractvalue %dx.types.CBufRet.f32 %4986, 2
  %4992 = extractvalue %dx.types.CBufRet.f32 %4986, 3
  %4993 = fadd fast float %4989, %4991
  %4994 = fadd fast float %4990, %4992
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 3
  %4997 = fmul fast float %4996, %4683
  %4998 = fmul fast float %4996, %4684
  %4999 = fmul fast float %4996, %4685
  %5000 = fadd fast float %4997, %4968
  %5001 = fadd fast float %4998, %4969
  %5002 = fadd fast float %4999, %4970
  %5003 = fmul fast float %5000, %4956
  %5004 = call float @dx.op.tertiary.f32(i32 46, float %5001, float %4959, float %5003)  ; FMad(a,b,c)
  %5005 = call float @dx.op.tertiary.f32(i32 46, float %5002, float %4962, float %5004)  ; FMad(a,b,c)
  %5006 = fadd fast float %5005, %4965
  %5007 = fmul fast float %5000, %4957
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %5001, float %4960, float %5007)  ; FMad(a,b,c)
  %5009 = call float @dx.op.tertiary.f32(i32 46, float %5002, float %4963, float %5008)  ; FMad(a,b,c)
  %5010 = fadd fast float %5009, %4966
  %5011 = fmul fast float %5000, %4958
  %5012 = call float @dx.op.tertiary.f32(i32 46, float %5001, float %4961, float %5011)  ; FMad(a,b,c)
  %5013 = call float @dx.op.tertiary.f32(i32 46, float %5002, float %4964, float %5012)  ; FMad(a,b,c)
  %5014 = fadd fast float %5013, %4967
  %5015 = fdiv fast float 1.000000e+00, %5014
  %5016 = fmul fast float %5015, %5006
  %5017 = fmul fast float %5015, %5010
  %5018 = fmul fast float %4993, 2.000000e+00
  %5019 = fadd fast float %5018, -1.000000e+00
  %5020 = call float @dx.op.unary.f32(i32 6, float %5019)  ; FAbs(value)
  %5021 = fmul fast float %5020, 5.000000e+00
  %5022 = fadd fast float %5021, -4.000000e+00
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = fmul fast float %5023, %4909
  %5025 = fsub fast float %4984, %5016
  %5026 = fmul fast float %4987, %5025
  %5027 = fmul fast float %5024, %5026
  %5028 = fsub fast float %5016, %4984
  %5029 = fmul fast float %4987, %5028
  %5030 = fadd fast float %5029, %5027
  %5031 = fsub fast float %5017, %4985
  %5032 = fmul fast float %4988, %5031
  %5033 = fmul fast float %5030, %4944
  %5034 = fmul fast float %5032, %4944
  %5035 = fadd fast float %5033, %4993
  %5036 = fadd fast float %5034, %4994
  %5037 = fsub fast float %5015, %4983
  %5038 = fmul fast float %5037, %4944
  %5039 = fadd fast float %5038, %4983
  %5040 = fdiv fast float 1.000000e+00, %5039
  %5041 = fadd fast float %4658, -1.000000e+00
  %5042 = fsub fast float %5040, %4982
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5045 = fmul fast float %5044, %5040
  %5046 = fdiv fast float 1.600000e+02, %5045
  %5047 = fmul fast float %5041, %5041
  %5048 = fmul fast float %5047, 0xBFB5B17960000000
  %5049 = fmul fast float %5048, %5042
  %5050 = fmul fast float %5049, %5046
  %5051 = call float @dx.op.unary.f32(i32 21, float %5050)  ; Exp(value)
  %5052 = fmul fast float %5051, 0x3FF04B2960000000
  %5053 = fsub fast float 0x3FF04B2960000000, %5052
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, 4.000000e+00
  %5056 = fadd fast float %196, -5.000000e-01
  %5057 = fadd fast float %197, -5.000000e-01
  %5058 = fmul fast float %5054, 0x3FBEB851E0000000
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fmul fast float %5059, %5056
  %5061 = fmul fast float %5059, %5057
  %5062 = fadd fast float %5035, %5060
  %5063 = fadd fast float %5036, %5061
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5062, float %5063, float undef, float undef, i32 0, i32 0, i32 undef, float %5055)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5070 = fmul fast float %5069, %5065
  %5071 = fmul fast float %5069, %5066
  %5072 = fmul fast float %5069, %5067
  %5073 = select i1 %183, float 0.000000e+00, float %5071
  %5074 = select i1 %183, float 0.000000e+00, float %5072
  %5075 = fmul fast float %5062, 2.000000e+00
  %5076 = fmul fast float %5063, 2.000000e+00
  %5077 = fadd fast float %5075, -1.000000e+00
  %5078 = fadd fast float %5076, -1.000000e+00
  %5079 = fmul fast float %5077, %5077
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = fsub fast float 1.000000e+00, %5081
  %5083 = fmul fast float %5082, %4909
  %5084 = fadd fast float %5083, %5081
  %5085 = fmul fast float %5078, %5078
  %5086 = fsub fast float 1.000000e+00, %5085
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5084, %5087
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %5089, %4946
  br label %5091

; <label>:5091                                    ; preds = %4948, %4914, %4873
  %5092 = phi float [ %5070, %4948 ], [ 0.000000e+00, %4914 ], [ 0.000000e+00, %4873 ]
  %5093 = phi float [ %5073, %4948 ], [ 0.000000e+00, %4914 ], [ 0.000000e+00, %4873 ]
  %5094 = phi float [ %5074, %4948 ], [ 0.000000e+00, %4914 ], [ 0.000000e+00, %4873 ]
  %5095 = phi float [ %5090, %4948 ], [ 0.000000e+00, %4914 ], [ 0.000000e+00, %4873 ]
  %5096 = fcmp fast olt float %5095, 1.000000e+00
  %5097 = or i1 %5096, %4871
  %5098 = zext i1 %5097 to i32
  %5099 = fmul fast float %5095, %4856
  %5100 = fsub fast float %5095, %5099
  %5101 = fsub fast float 1.000000e+00, %4862
  %5102 = fmul fast float %5100, %5101
  %5103 = fadd fast float %5102, %4862
  %5104 = fsub fast float %5103, %5100
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fmul fast float %5105, %4797
  %5107 = fmul fast float %5105, %4798
  %5108 = fmul fast float %5105, %4799
  %5109 = fsub fast float -0.000000e+00, %5103
  %5110 = fmul fast float %5100, %5092
  %5111 = fmul fast float %5100, %5093
  %5112 = fmul fast float %5100, %5094
  %5113 = fadd fast float %5110, %5106
  %5114 = fadd fast float %5111, %5107
  %5115 = fadd fast float %5112, %5108
  br label %5116

; <label>:5116                                    ; preds = %5091, %4864
  %5117 = phi float [ %4862, %4864 ], [ %5109, %5091 ]
  %5118 = phi float [ %4797, %4864 ], [ %5113, %5091 ]
  %5119 = phi float [ %4798, %4864 ], [ %5114, %5091 ]
  %5120 = phi float [ %4799, %4864 ], [ %5115, %5091 ]
  %5121 = phi i32 [ %4872, %4864 ], [ %5098, %5091 ]
  %5122 = icmp eq i32 %5121, 0
  br i1 %5122, label %5719, label %5123

; <label>:5123                                    ; preds = %5116
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5127 = fmul fast float %5125, %78
  %5128 = fmul fast float %5126, %79
  %5129 = fptoui float %5127 to i32
  %5130 = fptoui float %5128 to i32
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5134 = extractvalue %dx.types.CBufRet.f32 %5131, 3
  %5135 = fadd fast float %73, -4.000000e+00
  %5136 = call float @dx.op.binary.f32(i32 35, float %5135, float 0.000000e+00)  ; FMax(a,b)
  %5137 = fadd fast float %5136, %5132
  %5138 = fmul fast float %5137, %5133
  %5139 = call float @dx.op.unary.f32(i32 23, float %5138)  ; Log(value)
  %5140 = fmul fast float %5139, %5134
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5143 = fmul fast float %5140, %5142
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.i32 %5145, 1
  %5147 = add i32 %5146, -1
  %5148 = uitofp i32 %5146 to float
  %5149 = fmul fast float %5148, %5144
  %5150 = fptoui float %5149 to i32
  %5151 = call i32 @dx.op.binary.i32(i32 40, i32 %5150, i32 %5147)  ; UMin(a,b)
  %5152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.i32 %5152, 2
  %5154 = extractvalue %dx.types.CBufRet.i32 %5152, 3
  %5155 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5130, i32 %5153, i32 %5129)  ; UMad(a,b,c)
  %5156 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5151, i32 %5154, i32 %5155)  ; UMad(a,b,c)
  %5157 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5158 = fptoui float %5157 to i32
  %5159 = lshr i32 %5158, 5
  %5160 = call i32 @dx.op.binary.i32(i32 40, i32 %5159, i32 8191)  ; UMin(a,b)
  %5161 = fcmp fast ogt float %4457, 0.000000e+00
  %5162 = fcmp fast ogt float %4685, 0.000000e+00
  %5163 = and i1 %5162, %5161
  br i1 %5163, label %5164, label %5193

; <label>:5164                                    ; preds = %5123
  %5165 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = call float @dx.op.binary.f32(i32 35, float %5165, float -1.000000e+00)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 36, float %5166, float 1.000000e+00)  ; FMin(a,b)
  %5168 = fmul fast float %5167, %5167
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = fmul fast float %5169, 0x3FFC6E2300000000
  %5171 = fsub fast float 1.000000e+00, %5170
  %5172 = fcmp fast ogt float %5171, 0.000000e+00
  %5173 = call float @dx.op.unary.f32(i32 24, float %5171)  ; Sqrt(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = call float @dx.op.unary.f32(i32 23, float %5174)  ; Log(value)
  %5176 = fmul fast float %5175, 5.000000e+00
  %5177 = call float @dx.op.unary.f32(i32 21, float %5176)  ; Exp(value)
  %5178 = fmul fast float %5177, 0x3FEF591A60000000
  %5179 = fadd fast float %5178, 0x3F94DCB540000000
  %5180 = select i1 %5172, float %5179, float 1.000000e+00
  %5181 = fcmp fast oge float %5180, 1.000000e+00
  %5182 = fmul fast float %5165, 2.000000e+00
  %5183 = fadd fast float %5182, %4685
  %5184 = select i1 %5181, float %5183, float %4685
  %5185 = fsub fast float %5184, %4685
  %5186 = fmul fast float %5185, %4457
  %5187 = fadd fast float %5186, %4685
  %5188 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %5187, float %4683, float %4684, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 25, float %5188)  ; Rsqrt(value)
  %5190 = fmul fast float %5189, %4683
  %5191 = fmul fast float %5189, %4684
  %5192 = fmul fast float %5187, %5189
  br label %5193

; <label>:5193                                    ; preds = %5164, %5123
  %5194 = phi float [ %5190, %5164 ], [ %4683, %5123 ]
  %5195 = phi float [ %5191, %5164 ], [ %4684, %5123 ]
  %5196 = phi float [ %5192, %5164 ], [ %4685, %5123 ]
  %5197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.i32 %5197, 2
  %5199 = add nsw i32 %5198, -1
  %5200 = call i32 @dx.op.binary.i32(i32 37, i32 %5199, i32 0)  ; IMax(a,b)
  %5201 = shl i32 %5160, 2
  %5202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5201, i32 undef)  ; BufferLoad(srv,index,wot)
  %5203 = extractvalue %dx.types.ResRet.i32 %5202, 0
  %5204 = lshr i32 %5203, 16
  %5205 = and i32 %5203, 65535
  %5206 = lshr i32 %5203, 21
  %5207 = lshr i32 %5205, 5
  %5208 = call i32 @dx.op.binary.i32(i32 40, i32 %5207, i32 %5200)  ; UMin(a,b)
  %5209 = icmp ugt i32 %5206, %5208
  br i1 %5209, label %5591, label %5210

; <label>:5210                                    ; preds = %5193
  br label %5211

; <label>:5211                                    ; preds = %5580, %5210
  %5212 = phi float [ %5581, %5580 ], [ 0.000000e+00, %5210 ]
  %5213 = phi float [ %5582, %5580 ], [ 0.000000e+00, %5210 ]
  %5214 = phi float [ %5583, %5580 ], [ 0.000000e+00, %5210 ]
  %5215 = phi float [ %5584, %5580 ], [ 1.000000e+00, %5210 ]
  %5216 = phi i32 [ %5588, %5580 ], [ %5206, %5210 ]
  %5217 = phi float [ %5585, %5580 ], [ 0.000000e+00, %5210 ]
  %5218 = phi float [ %5586, %5580 ], [ 0.000000e+00, %5210 ]
  %5219 = phi float [ %5587, %5580 ], [ 0.000000e+00, %5210 ]
  %5220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.i32 %5220, 2
  %5222 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5156, i32 %5221, i32 %5216)  ; UMad(a,b,c)
  %5223 = shl i32 %5222, 2
  %5224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5223, i32 undef)  ; BufferLoad(srv,index,wot)
  %5225 = extractvalue %dx.types.ResRet.i32 %5224, 0
  %5226 = shl i32 %5216, 5
  %5227 = sub nsw i32 %5204, %5226
  %5228 = call i32 @dx.op.binary.i32(i32 37, i32 %5227, i32 0)  ; IMax(a,b)
  %5229 = call i32 @dx.op.binary.i32(i32 38, i32 %5228, i32 31)  ; IMin(a,b)
  %5230 = sub nsw i32 1, %5204
  %5231 = add nsw i32 %5230, %5205
  %5232 = call i32 @dx.op.binary.i32(i32 37, i32 %5231, i32 0)  ; IMax(a,b)
  %5233 = call i32 @dx.op.binary.i32(i32 38, i32 %5232, i32 32)  ; IMin(a,b)
  %5234 = and i32 %5233, 31
  %5235 = shl i32 -1, %5234
  %5236 = xor i32 %5235, -1
  %5237 = and i32 %5229, 31
  %5238 = shl i32 %5236, %5237
  %5239 = icmp eq i32 %5233, 32
  %5240 = select i1 %5239, i32 -1, i32 %5238
  %5241 = and i32 %5240, %5225
  %5242 = icmp eq i32 %5241, 0
  br i1 %5242, label %5580, label %5243

; <label>:5243                                    ; preds = %5211
  br label %5244

; <label>:5244                                    ; preds = %5354, %5243
  %5245 = phi float [ %5355, %5354 ], [ %5212, %5243 ]
  %5246 = phi float [ %5356, %5354 ], [ %5213, %5243 ]
  %5247 = phi float [ %5357, %5354 ], [ %5214, %5243 ]
  %5248 = phi float [ %5358, %5354 ], [ %5215, %5243 ]
  %5249 = phi i32 [ %5257, %5354 ], [ %5241, %5243 ]
  %5250 = phi float [ %5359, %5354 ], [ %5217, %5243 ]
  %5251 = phi float [ %5360, %5354 ], [ %5218, %5243 ]
  %5252 = phi float [ %5361, %5354 ], [ %5219, %5243 ]
  %5253 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5249)  ; FirstbitLo(value)
  %5254 = add i32 %5253, %5226
  %5255 = and i32 %5253, 31
  %5256 = shl i32 1, %5255
  %5257 = xor i32 %5256, %5249
  %5258 = mul i32 %5254, 72
  %5259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5263 = add i32 %5258, 12
  %5264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.i32 %5264, 0
  %5266 = add i32 %5258, 16
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 1
  %5270 = extractvalue %dx.types.ResRet.f32 %5267, 2
  %5271 = add i32 %5258, 28
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5271, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = add i32 %5258, 32
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = extractvalue %dx.types.ResRet.f32 %5275, 3
  %5280 = add i32 %5258, 48
  %5281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5280, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = add i32 %5258, 56
  %5285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = add i32 %5258, 64
  %5289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = mul i32 %5254, 60
  %5293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.ResRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.ResRet.f32 %5293, 2
  %5297 = add i32 %5292, 12
  %5298 = add i32 %5292, 48
  %5299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5303 = and i32 %5265, 32767
  %5304 = bitcast float %5260 to i32
  %5305 = icmp eq i32 %5304, -1
  %5306 = bitcast float %5261 to i32
  %5307 = and i32 %5265, 32768
  %5308 = icmp ne i32 %5307, 0
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5313 = fsub fast float %5294, %5310
  %5314 = fsub fast float %5295, %5311
  %5315 = fsub fast float %5296, %5312
  %5316 = fsub fast float %141, %5313
  %5317 = fsub fast float %142, %5314
  %5318 = fsub fast float %143, %5315
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5323 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = add i32 %5292, 24
  %5325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5326, float %5327, float %5328)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = add i32 %5292, 36
  %5331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5330, i32 undef)  ; BufferLoad(srv,index,wot)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.ResRet.f32 %5331, 1
  %5334 = extractvalue %dx.types.ResRet.f32 %5331, 2
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.unary.f32(i32 6, float %5323)  ; FAbs(value)
  %5337 = call float @dx.op.unary.f32(i32 6, float %5329)  ; FAbs(value)
  %5338 = call float @dx.op.unary.f32(i32 6, float %5335)  ; FAbs(value)
  %5339 = fsub fast float %5300, %5336
  %5340 = fsub fast float %5301, %5337
  %5341 = fsub fast float %5302, %5338
  %5342 = fmul fast float %5339, %5268
  %5343 = fmul fast float %5340, %5269
  %5344 = fmul fast float %5341, %5270
  %5345 = call float @dx.op.binary.f32(i32 36, float %5343, float %5344)  ; FMin(a,b)
  %5346 = call float @dx.op.binary.f32(i32 36, float %5342, float %5345)  ; FMin(a,b)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = call float @dx.op.binary.f32(i32 36, float %5248, float %5347)  ; FMin(a,b)
  %5349 = uitofp i1 %5308 to float
  %5350 = fadd fast float %4457, 1.000000e+00
  %5351 = fsub fast float %5350, %5349
  %5352 = fmul fast float %5348, %5351
  %5353 = fcmp fast ogt float %5352, 0.000000e+00
  br i1 %5353, label %5363, label %5354

; <label>:5354                                    ; preds = %5505, %5244
  %5355 = phi float [ %5569, %5505 ], [ %5245, %5244 ]
  %5356 = phi float [ %5570, %5505 ], [ %5246, %5244 ]
  %5357 = phi float [ %5571, %5505 ], [ %5247, %5244 ]
  %5358 = phi float [ %5578, %5505 ], [ %5248, %5244 ]
  %5359 = phi float [ %5575, %5505 ], [ %5250, %5244 ]
  %5360 = phi float [ %5576, %5505 ], [ %5251, %5244 ]
  %5361 = phi float [ %5577, %5505 ], [ %5252, %5244 ]
  %5362 = icmp eq i32 %5249, %5256
  br i1 %5362, label %5579, label %5244

; <label>:5363                                    ; preds = %5244
  br i1 %5305, label %5421, label %5364

; <label>:5364                                    ; preds = %5363
  %5365 = fsub fast float -0.000000e+00, %5320
  %5366 = fsub fast float -0.000000e+00, %5321
  %5367 = fsub fast float -0.000000e+00, %5322
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %5365, float %5366, float %5367)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = fsub fast float -0.000000e+00, %5368
  %5370 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5365, float %5366, float %5367)  ; Dot3(ax,ay,az,bx,by,bz)
  %5371 = fadd fast float %5370, %5283
  %5372 = fadd fast float %5282, %5370
  %5373 = fsub fast float -0.000000e+00, %5372
  %5374 = fcmp ogt float %5368, -0.000000e+00
  %5375 = select i1 %5374, float %5373, float %5371
  %5376 = call float @dx.op.unary.f32(i32 6, float %5369)  ; FAbs(value)
  %5377 = fdiv fast float 1.000000e+00, %5376
  %5378 = fmul fast float %5375, %5377
  %5379 = call float @dx.op.binary.f32(i32 35, float %5378, float 0.000000e+00)  ; FMax(a,b)
  %5380 = fsub fast float -0.000000e+00, %5326
  %5381 = fsub fast float -0.000000e+00, %5327
  %5382 = fsub fast float -0.000000e+00, %5328
  %5383 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %5380, float %5381, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = fsub fast float -0.000000e+00, %5383
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5380, float %5381, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fadd fast float %5385, %5287
  %5387 = fadd fast float %5286, %5385
  %5388 = fsub fast float -0.000000e+00, %5387
  %5389 = fcmp ogt float %5383, -0.000000e+00
  %5390 = select i1 %5389, float %5388, float %5386
  %5391 = call float @dx.op.unary.f32(i32 6, float %5384)  ; FAbs(value)
  %5392 = fdiv fast float 1.000000e+00, %5391
  %5393 = fmul fast float %5390, %5392
  %5394 = call float @dx.op.binary.f32(i32 35, float %5393, float 0.000000e+00)  ; FMax(a,b)
  %5395 = fsub fast float -0.000000e+00, %5332
  %5396 = fsub fast float -0.000000e+00, %5333
  %5397 = fsub fast float -0.000000e+00, %5334
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = fsub fast float -0.000000e+00, %5398
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fadd fast float %5400, %5291
  %5402 = fadd fast float %5290, %5400
  %5403 = fsub fast float -0.000000e+00, %5402
  %5404 = fcmp ogt float %5398, -0.000000e+00
  %5405 = select i1 %5404, float %5403, float %5401
  %5406 = call float @dx.op.unary.f32(i32 6, float %5399)  ; FAbs(value)
  %5407 = fdiv fast float 1.000000e+00, %5406
  %5408 = fmul fast float %5405, %5407
  %5409 = call float @dx.op.binary.f32(i32 35, float %5408, float 0.000000e+00)  ; FMax(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5394, float %5409)  ; FMin(a,b)
  %5411 = call float @dx.op.binary.f32(i32 36, float %5379, float %5410)  ; FMin(a,b)
  %5412 = fmul fast float %5411, %5194
  %5413 = fmul fast float %5411, %5195
  %5414 = fmul fast float %5411, %5196
  %5415 = fadd fast float %5412, %141
  %5416 = fadd fast float %5413, %142
  %5417 = fadd fast float %5414, %143
  %5418 = fsub fast float %5415, %5260
  %5419 = fsub fast float %5416, %5261
  %5420 = fsub fast float %5417, %5262
  br label %5428

; <label>:5421                                    ; preds = %5363
  %5422 = fmul fast float %5194, 8.096000e+03
  %5423 = fmul fast float %5195, 8.096000e+03
  %5424 = fmul fast float %5196, 8.096000e+03
  %5425 = fadd fast float %5422, %141
  %5426 = fadd fast float %5423, %142
  %5427 = fadd fast float %5424, %143
  br label %5428

; <label>:5428                                    ; preds = %5421, %5364
  %5429 = phi float [ %5194, %5421 ], [ %5418, %5364 ]
  %5430 = phi float [ %5195, %5421 ], [ %5419, %5364 ]
  %5431 = phi float [ %5196, %5421 ], [ %5420, %5364 ]
  %5432 = phi float [ %5425, %5421 ], [ %5415, %5364 ]
  %5433 = phi float [ %5426, %5421 ], [ %5416, %5364 ]
  %5434 = phi float [ %5427, %5421 ], [ %5417, %5364 ]
  %5435 = fcmp fast olt float %5279, 1.000000e+00
  br i1 %5435, label %5436, label %5467, !dx.controlflow.hints !84

; <label>:5436                                    ; preds = %5428
  %5437 = fmul fast float %5431, %5277
  %5438 = fmul fast float %5430, %5278
  %5439 = fsub fast float %5437, %5438
  %5440 = fmul fast float %5429, %5278
  %5441 = fmul fast float %5431, %5276
  %5442 = fsub fast float %5440, %5441
  %5443 = fmul fast float %5430, %5276
  %5444 = fmul fast float %5429, %5277
  %5445 = fsub fast float %5443, %5444
  %5446 = fmul fast float %5439, 2.000000e+00
  %5447 = fmul fast float %5442, 2.000000e+00
  %5448 = fmul fast float %5445, 2.000000e+00
  %5449 = fmul fast float %5446, %5279
  %5450 = fmul fast float %5447, %5279
  %5451 = fmul fast float %5448, %5279
  %5452 = fmul fast float %5448, %5277
  %5453 = fmul fast float %5447, %5278
  %5454 = fmul fast float %5446, %5278
  %5455 = fmul fast float %5448, %5276
  %5456 = fmul fast float %5447, %5276
  %5457 = fmul fast float %5446, %5277
  %5458 = fadd fast float %5452, %5429
  %5459 = fadd fast float %5458, %5449
  %5460 = fsub fast float %5459, %5453
  %5461 = fsub fast float %5430, %5455
  %5462 = fadd fast float %5461, %5450
  %5463 = fadd fast float %5462, %5454
  %5464 = fadd fast float %5451, %5431
  %5465 = fsub fast float %5464, %5457
  %5466 = fadd fast float %5465, %5456
  br label %5467

; <label>:5467                                    ; preds = %5436, %5428
  %5468 = phi float [ %5460, %5436 ], [ %5429, %5428 ]
  %5469 = phi float [ %5463, %5436 ], [ %5430, %5428 ]
  %5470 = phi float [ %5466, %5436 ], [ %5431, %5428 ]
  br i1 %5305, label %5502, label %5471

; <label>:5471                                    ; preds = %5467
  %5472 = fmul fast float %4658, 0x400187C840000000
  %5473 = fadd fast float %5472, 0xC00EFC2120000000
  %5474 = fmul fast float %5473, %4658
  %5475 = fadd fast float %5474, 0x3FE5D16340000000
  %5476 = fmul fast float %5475, %4658
  %5477 = fadd fast float %5476, 1.000000e+00
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = fsub fast float %5432, %141
  %5480 = fsub fast float %5433, %142
  %5481 = fsub fast float %5434, %143
  %5482 = fsub fast float %5432, %5260
  %5483 = fsub fast float %5433, %5261
  %5484 = fsub fast float %5434, %5262
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5480, float %5481, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %5484, float %5482, float %5483, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fadd fast float %5486, 0x3EE4F8B580000000
  %5488 = fdiv fast float %5485, %5487
  %5489 = bitcast float %5488 to i32
  %5490 = ashr i32 %5489, 1
  %5491 = add nsw i32 %5490, 532487669
  %5492 = bitcast i32 %5491 to float
  %5493 = fmul fast float %5492, %5478
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %5494, 0x4009981AE0000000
  %5496 = fsub fast float 0x40111BBD80000000, %5495
  %5497 = fmul fast float %5496, %5494
  %5498 = fadd fast float %5497, 0xC0009F6020000000
  %5499 = fmul fast float %5498, %5494
  %5500 = fadd fast float %5499, 1.000000e+00
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  br label %5505

; <label>:5502                                    ; preds = %5467
  %5503 = icmp ne i32 %5306, -1
  %5504 = zext i1 %5503 to i32
  br label %5505

; <label>:5505                                    ; preds = %5502, %5471
  %5506 = phi float [ %4658, %5502 ], [ %5501, %5471 ]
  %5507 = phi i32 [ %5504, %5502 ], [ 0, %5471 ]
  %5508 = fmul float %5506, 5.000000e+00
  %5509 = fsub float 5.000000e+00, %5508
  %5510 = icmp ne i32 %5507, 0
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5513 = fadd fast float %5512, %5509
  %5514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5513)  ; FMax(a,b)
  %5515 = call float @dx.op.unary.f32(i32 6, float %5468)  ; FAbs(value)
  %5516 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5517 = fadd fast float %5516, %5515
  %5518 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5519 = fadd fast float %5517, %5518
  %5520 = fcmp fast oeq float %5519, 0.000000e+00
  %5521 = fdiv fast float 1.000000e+00, %5519
  %5522 = select i1 %5520, float 1.000000e+00, float %5521
  %5523 = fmul fast float %5522, %5468
  %5524 = fmul fast float %5522, %5469
  %5525 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5526 = call float @dx.op.unary.f32(i32 6, float %5523)  ; FAbs(value)
  %5527 = fsub fast float 1.000000e+00, %5525
  %5528 = fsub fast float 1.000000e+00, %5526
  %5529 = fcmp fast oge float %5523, 0.000000e+00
  %5530 = fcmp fast oge float %5524, 0.000000e+00
  %5531 = select i1 %5529, float 1.000000e+00, float -1.000000e+00
  %5532 = select i1 %5530, float 1.000000e+00, float -1.000000e+00
  %5533 = fcmp fast ole float %5470, 0.000000e+00
  %5534 = fmul fast float %5531, %5527
  %5535 = fmul fast float %5532, %5528
  %5536 = select i1 %5533, float %5534, float %5523
  %5537 = select i1 %5533, float %5535, float %5524
  %5538 = fmul fast float %5536, 5.000000e-01
  %5539 = fmul fast float %5537, 5.000000e-01
  %5540 = fadd fast float %5538, 5.000000e-01
  %5541 = fadd fast float %5539, 5.000000e-01
  %5542 = uitofp i32 %5303 to float
  %5543 = call float @dx.op.binary.f32(i32 36, float %5514, float 3.000000e+00)  ; FMin(a,b)
  %5544 = fadd fast float %5543, 2.000000e+00
  %5545 = call float @dx.op.unary.f32(i32 21, float %5544)  ; Exp(value)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5547 = fmul fast float %5546, %5545
  %5548 = fmul fast float %5547, 2.000000e+00
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = fmul fast float %5540, %5549
  %5551 = fmul fast float %5541, %5549
  %5552 = fadd fast float %5550, %5547
  %5553 = fadd fast float %5551, %5547
  %5554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5552, float %5553, float %5542, float undef, i32 0, i32 0, i32 undef, float %5514)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5555 = extractvalue %dx.types.ResRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.ResRet.f32 %5554, 1
  %5557 = extractvalue %dx.types.ResRet.f32 %5554, 2
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 3
  %5560 = fmul fast float %5559, %5273
  %5561 = call float @dx.op.binary.f32(i32 36, float %4738, float %5560)  ; FMin(a,b)
  %5562 = select i1 %5510, float %5561, float %5560
  %5563 = fmul fast float %5555, %5352
  %5564 = fmul fast float %5563, %5562
  %5565 = fmul fast float %5556, %5352
  %5566 = fmul fast float %5565, %5562
  %5567 = fmul fast float %5557, %5352
  %5568 = fmul fast float %5567, %5562
  %5569 = fadd fast float %5564, %5245
  %5570 = fadd fast float %5566, %5246
  %5571 = fadd fast float %5568, %5247
  %5572 = fmul fast float %5432, %5352
  %5573 = fmul fast float %5433, %5352
  %5574 = fmul fast float %5434, %5352
  %5575 = fadd fast float %5572, %5250
  %5576 = fadd fast float %5573, %5251
  %5577 = fadd fast float %5574, %5252
  %5578 = fsub fast float %5248, %5352
  br label %5354

; <label>:5579                                    ; preds = %5354
  br label %5580

; <label>:5580                                    ; preds = %5579, %5211
  %5581 = phi float [ %5212, %5211 ], [ %5355, %5579 ]
  %5582 = phi float [ %5213, %5211 ], [ %5356, %5579 ]
  %5583 = phi float [ %5214, %5211 ], [ %5357, %5579 ]
  %5584 = phi float [ %5215, %5211 ], [ %5358, %5579 ]
  %5585 = phi float [ %5217, %5211 ], [ %5359, %5579 ]
  %5586 = phi float [ %5218, %5211 ], [ %5360, %5579 ]
  %5587 = phi float [ %5219, %5211 ], [ %5361, %5579 ]
  %5588 = add i32 %5216, 1
  %5589 = icmp ugt i32 %5588, %5208
  br i1 %5589, label %5590, label %5211, !llvm.loop !85

; <label>:5590                                    ; preds = %5580
  br label %5591

; <label>:5591                                    ; preds = %5590, %5193
  %5592 = phi float [ 0.000000e+00, %5193 ], [ %5581, %5590 ]
  %5593 = phi float [ 0.000000e+00, %5193 ], [ %5582, %5590 ]
  %5594 = phi float [ 0.000000e+00, %5193 ], [ %5583, %5590 ]
  %5595 = phi float [ 0.000000e+00, %5193 ], [ %5585, %5590 ]
  %5596 = phi float [ 0.000000e+00, %5193 ], [ %5586, %5590 ]
  %5597 = phi float [ 0.000000e+00, %5193 ], [ %5587, %5590 ]
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = select i1 %183, float 0.000000e+00, float %5592
  %5600 = select i1 %183, float %5598, float %5593
  %5601 = select i1 %183, float 0.000000e+00, float %5594
  %5602 = fcmp fast olt float %5117, 0.000000e+00
  %5603 = call float @dx.op.unary.f32(i32 6, float %5117)  ; FAbs(value)
  %5604 = fmul fast float %5603, %5118
  %5605 = fmul fast float %5603, %5119
  %5606 = fmul fast float %5603, %5120
  %5607 = select i1 %5602, float %5118, float %5604
  %5608 = select i1 %5602, float %5119, float %5605
  %5609 = select i1 %5602, float %5120, float %5606
  %5610 = fsub fast float 1.000000e+00, %5603
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = fmul fast float %5611, %5599
  %5613 = fmul fast float %5611, %5600
  %5614 = fmul fast float %5611, %5601
  %5615 = fadd fast float %5607, %5612
  %5616 = fadd fast float %5608, %5613
  %5617 = fadd fast float %5609, %5614
  %5618 = fcmp fast une float %4867, 0.000000e+00
  br i1 %5618, label %5719, label %5619

; <label>:5619                                    ; preds = %5591
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.CBufRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5624 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5629 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5634 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %4683, float %4684, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = fadd fast float %4658, -1.000000e+00
  %5639 = fsub fast float %5636, %5637
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5642 = fmul fast float %5641, %5636
  %5643 = fdiv fast float 1.600000e+02, %5642
  %5644 = fmul fast float %5638, %5638
  %5645 = fmul fast float %5644, 0xBFB5B17960000000
  %5646 = fmul fast float %5645, %5639
  %5647 = fmul fast float %5646, %5643
  %5648 = call float @dx.op.unary.f32(i32 21, float %5647)  ; Exp(value)
  %5649 = fmul fast float %5648, 0x3FF04B2960000000
  %5650 = fsub fast float 0x3FF04B2960000000, %5649
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5651, 4.000000e+00
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5657 = fadd fast float %5654, %5595
  %5658 = fadd fast float %5655, %5596
  %5659 = fadd fast float %5656, %5597
  %5660 = fmul fast float %5657, %5621
  %5661 = call float @dx.op.tertiary.f32(i32 46, float %5658, float %5622, float %5660)  ; FMad(a,b,c)
  %5662 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5623, float %5661)  ; FMad(a,b,c)
  %5663 = fadd fast float %5662, %5624
  %5664 = fmul fast float %5657, %5626
  %5665 = call float @dx.op.tertiary.f32(i32 46, float %5658, float %5627, float %5664)  ; FMad(a,b,c)
  %5666 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5628, float %5665)  ; FMad(a,b,c)
  %5667 = fadd fast float %5666, %5629
  %5668 = fmul fast float %5657, %5631
  %5669 = call float @dx.op.tertiary.f32(i32 46, float %5658, float %5632, float %5668)  ; FMad(a,b,c)
  %5670 = call float @dx.op.tertiary.f32(i32 46, float %5659, float %5633, float %5669)  ; FMad(a,b,c)
  %5671 = fadd fast float %5670, %5634
  %5672 = fdiv fast float %5663, %5671
  %5673 = fdiv fast float %5667, %5671
  %5674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5675 = extractvalue %dx.types.CBufRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.CBufRet.f32 %5674, 1
  %5677 = fmul fast float %5675, %5672
  %5678 = fmul fast float %5676, %5673
  %5679 = extractvalue %dx.types.CBufRet.f32 %5674, 2
  %5680 = extractvalue %dx.types.CBufRet.f32 %5674, 3
  %5681 = fadd fast float %5677, %5679
  %5682 = fadd fast float %5678, %5680
  %5683 = fmul fast float %5635, 8.000000e+00
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5681, 2.000000e+00
  %5686 = fmul fast float %5682, 2.000000e+00
  %5687 = fadd fast float %5685, -1.000000e+00
  %5688 = fadd fast float %5686, -1.000000e+00
  %5689 = fmul fast float %5687, %5687
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5692 = fmul fast float %5688, %5688
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %4867, %5691
  %5696 = fmul fast float %5695, %5694
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = fmul fast float %5697, %5684
  %5699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5681, float %5682, float undef, float undef, i32 0, i32 0, i32 undef, float %5652)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5700 = extractvalue %dx.types.ResRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.ResRet.f32 %5699, 1
  %5702 = extractvalue %dx.types.ResRet.f32 %5699, 2
  %5703 = select i1 %183, float 0.000000e+00, float %5701
  %5704 = select i1 %183, float 0.000000e+00, float %5702
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 2
  %5707 = fmul fast float %5706, %5700
  %5708 = fmul fast float %5703, %5706
  %5709 = fmul fast float %5704, %5706
  %5710 = fsub fast float %5707, %5599
  %5711 = fsub fast float %5708, %5600
  %5712 = fsub fast float %5709, %5601
  %5713 = fmul fast float %5710, %5698
  %5714 = fmul fast float %5711, %5698
  %5715 = fmul fast float %5712, %5698
  %5716 = fadd fast float %5713, %5599
  %5717 = fadd fast float %5714, %5600
  %5718 = fadd fast float %5715, %5601
  br label %5719

; <label>:5719                                    ; preds = %5619, %5591, %5116, %4840
  %5720 = phi float [ %5118, %5116 ], [ %5615, %5591 ], [ %4797, %4840 ], [ %5716, %5619 ]
  %5721 = phi float [ %5119, %5116 ], [ %5616, %5591 ], [ %4798, %4840 ], [ %5717, %5619 ]
  %5722 = phi float [ %5120, %5116 ], [ %5617, %5591 ], [ %4799, %4840 ], [ %5718, %5619 ]
  %5723 = fmul fast float %4846, %4793
  %5724 = fmul fast float %4846, %4794
  %5725 = fmul fast float %4846, %4795
  %5726 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %4651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = fcmp fast ogt float %5726, 0x3E7FF19E20000000
  %5728 = fdiv fast float 1.000000e+00, %5726
  %5729 = select i1 %5727, float %5728, float 0.000000e+00
  %5730 = fmul fast float %5729, %4649
  %5731 = fmul fast float %5729, %4650
  %5732 = fmul fast float %5729, %4651
  %5733 = fadd fast float %5730, -1.000000e+00
  %5734 = fadd fast float %5731, -1.000000e+00
  %5735 = fadd fast float %5732, -1.000000e+00
  %5736 = fmul fast float %5733, 5.000000e-01
  %5737 = fmul fast float %5734, 5.000000e-01
  %5738 = fmul fast float %5735, 5.000000e-01
  %5739 = fadd fast float %5736, 1.000000e+00
  %5740 = fadd fast float %5737, 1.000000e+00
  %5741 = fadd fast float %5738, 1.000000e+00
  %5742 = fmul fast float %5720, %4841
  %5743 = fmul fast float %5721, %4842
  %5744 = fmul fast float %5722, %4843
  %5745 = fsub fast float 1.000000e+00, %4677
  %5746 = bitcast float %5745 to i32
  %5747 = sitofp i32 %5746 to float
  %5748 = fmul fast float %5747, 5.000000e+00
  %5749 = fadd fast float %5748, 0xC1EFBF8940000000
  %5750 = fptosi float %5749 to i32
  %5751 = bitcast i32 %5750 to float
  %5752 = fmul fast float %5751, %4047
  %5753 = fmul fast float %4793, %5752
  %5754 = fmul fast float %5753, %4846
  %5755 = fmul fast float %5754, %5739
  %5756 = fmul fast float %4794, %5752
  %5757 = fmul fast float %5756, %4846
  %5758 = fmul fast float %5757, %5740
  %5759 = fmul fast float %4795, %5752
  %5760 = fmul fast float %5759, %4846
  %5761 = fmul fast float %5760, %5741
  %5762 = fmul fast float %5723, %4043
  %5763 = fmul fast float %5724, %4043
  %5764 = fmul fast float %5725, %4043
  %5765 = fadd fast float %5742, %4039
  %5766 = fadd fast float %5765, %5755
  %5767 = fmul fast float %5766, %4043
  %5768 = fadd fast float %5743, %4040
  %5769 = fadd fast float %5768, %5758
  %5770 = fmul fast float %5769, %4043
  %5771 = fadd fast float %5744, %4041
  %5772 = fadd fast float %5771, %5761
  %5773 = fmul fast float %5772, %4043
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5776 = fcmp fast oeq float %5775, 0.000000e+00
  br i1 %5776, label %5996, label %5777

; <label>:5777                                    ; preds = %5719
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5779 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5780 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5789 = select i1 %183, float %5786, float %5782
  %5790 = select i1 %183, float %5788, float %5783
  %5791 = select i1 %183, float %5787, float %5784
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5794 = fcmp fast une float %5793, 0.000000e+00
  br i1 %5794, label %5795, label %5812

; <label>:5795                                    ; preds = %5777
  %5796 = fptoui float %78 to i32
  %5797 = fptoui float %79 to i32
  %5798 = lshr i32 %5796, 4
  %5799 = lshr i32 %5797, 4
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = fptoui float %5801 to i32
  %5803 = add i32 %5802, 15
  %5804 = lshr i32 %5803, 4
  %5805 = mul i32 %5804, %5799
  %5806 = add i32 %5805, %5798
  %5807 = shl i32 %5806, 3
  %5808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5807, i32 undef)  ; BufferLoad(srv,index,wot)
  %5809 = extractvalue %dx.types.ResRet.i32 %5808, 0
  %5810 = and i32 %5809, -268435456
  %5811 = icmp eq i32 %5810, -1342177280
  br i1 %5811, label %5817, label %5812

; <label>:5812                                    ; preds = %5795, %5777
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4663, float %4664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 1
  %5816 = extractvalue %dx.types.ResRet.f32 %5813, 2
  br label %5817

; <label>:5817                                    ; preds = %5812, %5795
  %5818 = phi float [ %5814, %5812 ], [ 0.000000e+00, %5795 ]
  %5819 = phi float [ %5815, %5812 ], [ 0.000000e+00, %5795 ]
  %5820 = phi float [ %5816, %5812 ], [ 0.000000e+00, %5795 ]
  %5821 = call float @dx.op.binary.f32(i32 36, float %5819, float %5820)  ; FMin(a,b)
  %5822 = call float @dx.op.binary.f32(i32 36, float %5818, float %5821)  ; FMin(a,b)
  %5823 = fcmp fast ogt float %5822, 0.000000e+00
  br i1 %5823, label %5824, label %5996, !dx.controlflow.hints !87

; <label>:5824                                    ; preds = %5817
  %5825 = fmul fast float %5818, %5789
  %5826 = fmul fast float %5819, %5790
  %5827 = fmul fast float %5820, %5791
  %5828 = fsub fast float %5778, %4648
  %5829 = fsub fast float %5779, %4647
  %5830 = fsub fast float %5780, %4646
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5830, float %5828, float %5829, float %5830)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = call float @dx.op.unary.f32(i32 25, float %5831)  ; Rsqrt(value)
  %5833 = fmul fast float %5832, %5828
  %5834 = fmul fast float %5832, %5829
  %5835 = fmul fast float %5832, %5830
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4644, float %4643, float %5833, float %5834, float %5835)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5839 = bitcast i32 %4701 to float
  %5840 = fmul fast float %5838, %5838
  %5841 = fmul fast float %5840, %5839
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fmul fast float %5842, %5838
  %5844 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %5833, float %5834, float %5835)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = fmul fast float %5844, %5844
  %5846 = call float @dx.op.unary.f32(i32 6, float %5836)  ; FAbs(value)
  %5847 = fsub fast float 1.000000e+00, %4695
  %5848 = fmul fast float %4677, %4677
  %5849 = fmul fast float %5848, %5847
  %5850 = fadd fast float %5849, %4695
  %5851 = bitcast float %5850 to i32
  %5852 = ashr i32 %5851, 1
  %5853 = add nsw i32 %5852, 532487669
  %5854 = bitcast i32 %5853 to float
  %5855 = fadd fast float %5854, %4677
  %5856 = fmul fast float %4695, %5845
  %5857 = fsub fast float 1.000000e+00, %5845
  %5858 = fadd fast float %5857, %5856
  %5859 = fmul fast float %5846, %5846
  %5860 = fmul fast float %5859, %5847
  %5861 = fadd fast float %5860, %4695
  %5862 = bitcast float %5861 to i32
  %5863 = ashr i32 %5862, 1
  %5864 = add nsw i32 %5863, 532487669
  %5865 = bitcast i32 %5864 to float
  %5866 = fadd fast float %5865, %5846
  %5867 = fmul fast float %5858, %5858
  %5868 = fmul fast float %5867, %5855
  %5869 = fmul fast float %5868, %5866
  %5870 = fdiv fast float 0x3FF0A00000000000, %5869
  %5871 = fmul fast float %5870, %4695
  %5872 = call float @dx.op.unary.f32(i32 6, float %5837)  ; FAbs(value)
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = bitcast float %5873 to i32
  %5875 = sitofp i32 %5874 to float
  %5876 = fmul fast float %5875, 5.000000e+00
  %5877 = fadd fast float %5876, 0xC1EFBF8940000000
  %5878 = fptosi float %5877 to i32
  %5879 = bitcast i32 %5878 to float
  %5880 = fsub fast float 1.000000e+00, %4655
  %5881 = fsub fast float 1.000000e+00, %4656
  %5882 = fsub fast float 1.000000e+00, %4675
  %5883 = fmul fast float %5879, %5880
  %5884 = fmul fast float %5879, %5881
  %5885 = fmul fast float %5879, %5882
  %5886 = fadd fast float %5883, %4655
  %5887 = fadd fast float %5884, %4656
  %5888 = fadd fast float %5885, %4675
  br i1 %4813, label %5889, label %5912

; <label>:5889                                    ; preds = %5824
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4046, float %5872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = fadd fast float %5891, -5.000000e-01
  %5895 = fadd fast float %5892, -5.000000e-01
  %5896 = fadd fast float %5893, -5.000000e-01
  %5897 = fmul fast float %4655, 4.000000e+00
  %5898 = fmul fast float %5897, %5880
  %5899 = fmul fast float %5898, %5894
  %5900 = fmul fast float %4656, 4.000000e+00
  %5901 = fmul fast float %5900, %5881
  %5902 = fmul fast float %5901, %5895
  %5903 = fmul fast float %4675, 4.000000e+00
  %5904 = fmul fast float %5903, %5882
  %5905 = fmul fast float %5904, %5896
  %5906 = fadd fast float %5899, %5886
  %5907 = fadd fast float %5902, %5887
  %5908 = fadd fast float %5905, %5888
  %5909 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5910 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5911 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  br label %5912

; <label>:5912                                    ; preds = %5889, %5824
  %5913 = phi float [ %5909, %5889 ], [ %5886, %5824 ]
  %5914 = phi float [ %5910, %5889 ], [ %5887, %5824 ]
  %5915 = phi float [ %5911, %5889 ], [ %5888, %5824 ]
  %5916 = fmul fast float %5836, 9.843750e-01
  %5917 = fadd fast float %5916, 7.812500e-03
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5917, float %4803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 2
  %5920 = extractvalue %dx.types.ResRet.f32 %5918, 3
  %5921 = fmul fast float %5919, %4655
  %5922 = fmul fast float %5919, %4656
  %5923 = fmul fast float %5919, %4675
  %5924 = fadd fast float %5921, %5920
  %5925 = fadd fast float %5922, %5920
  %5926 = fadd fast float %5923, %5920
  br i1 %4813, label %5927, label %5950

; <label>:5927                                    ; preds = %5912
  %5928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4046, float %5836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.ResRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.ResRet.f32 %5928, 2
  %5932 = fadd fast float %5929, -5.000000e-01
  %5933 = fadd fast float %5930, -5.000000e-01
  %5934 = fadd fast float %5931, -5.000000e-01
  %5935 = fmul fast float %4655, 4.000000e+00
  %5936 = fmul fast float %5935, %5880
  %5937 = fmul fast float %5936, %5932
  %5938 = fmul fast float %4656, 4.000000e+00
  %5939 = fmul fast float %5938, %5881
  %5940 = fmul fast float %5939, %5933
  %5941 = fmul fast float %4675, 4.000000e+00
  %5942 = fmul fast float %5941, %5882
  %5943 = fmul fast float %5942, %5934
  %5944 = fadd fast float %5937, %5924
  %5945 = fadd fast float %5940, %5925
  %5946 = fadd fast float %5943, %5926
  %5947 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5948 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5949 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  br label %5950

; <label>:5950                                    ; preds = %5927, %5912
  %5951 = phi float [ %5947, %5927 ], [ %5924, %5912 ]
  %5952 = phi float [ %5948, %5927 ], [ %5925, %5912 ]
  %5953 = phi float [ %5949, %5927 ], [ %5926, %5912 ]
  %5954 = call float @dx.op.binary.f32(i32 35, float %5952, float %5953)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5951, float %5954)  ; FMax(a,b)
  %5956 = fsub fast float 1.000000e+00, %5955
  %5957 = fmul fast float %5913, %5871
  %5958 = fmul fast float %5914, %5871
  %5959 = fmul fast float %5915, %5871
  %5960 = fsub fast float 1.000000e+00, %5837
  %5961 = bitcast float %5960 to i32
  %5962 = sitofp i32 %5961 to float
  %5963 = fmul fast float %5962, 5.000000e+00
  %5964 = fadd fast float %5963, 0xC1EFBF8940000000
  %5965 = fptosi float %5964 to i32
  %5966 = bitcast i32 %5965 to float
  %5967 = fmul fast float %5966, %4047
  %5968 = fmul fast float %5956, %5967
  %5969 = fmul fast float %5968, %5739
  %5970 = fmul fast float %5968, %5740
  %5971 = fmul fast float %5968, %5741
  %5972 = fadd fast float %5969, %5957
  %5973 = fadd fast float %5970, %5958
  %5974 = fadd fast float %5971, %5959
  %5975 = fmul fast float %5843, %5825
  %5976 = fmul fast float %5975, %5956
  %5977 = fmul fast float %5843, %5826
  %5978 = fmul fast float %5977, %5956
  %5979 = fmul fast float %5843, %5827
  %5980 = fmul fast float %5979, %5956
  %5981 = fmul fast float %5975, %5972
  %5982 = fmul fast float %5977, %5973
  %5983 = fmul fast float %5979, %5974
  %5984 = fadd fast float %5976, %5723
  %5985 = fmul fast float %5984, %4043
  %5986 = fadd fast float %5978, %5724
  %5987 = fmul fast float %5986, %4043
  %5988 = fadd fast float %5980, %5725
  %5989 = fmul fast float %5988, %4043
  %5990 = fadd fast float %5981, %5766
  %5991 = fmul fast float %5990, %4043
  %5992 = fadd fast float %5982, %5769
  %5993 = fmul fast float %5992, %4043
  %5994 = fadd fast float %5983, %5772
  %5995 = fmul fast float %5994, %4043
  br label %5996

; <label>:5996                                    ; preds = %5950, %5817, %5719
  %5997 = phi float [ %5767, %5719 ], [ %5767, %5817 ], [ %5991, %5950 ]
  %5998 = phi float [ %5770, %5719 ], [ %5770, %5817 ], [ %5993, %5950 ]
  %5999 = phi float [ %5773, %5719 ], [ %5773, %5817 ], [ %5995, %5950 ]
  %6000 = phi float [ %5762, %5719 ], [ %5762, %5817 ], [ %5985, %5950 ]
  %6001 = phi float [ %5763, %5719 ], [ %5763, %5817 ], [ %5987, %5950 ]
  %6002 = phi float [ %5764, %5719 ], [ %5764, %5817 ], [ %5989, %5950 ]
  %6003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.i32 %6003, 0
  %6005 = icmp eq i32 %6004, 0
  br i1 %6005, label %6437, label %6006

; <label>:6006                                    ; preds = %5996
  %6007 = fptoui float %78 to i32
  %6008 = fptoui float %79 to i32
  %6009 = lshr i32 %6007, 4
  %6010 = lshr i32 %6008, 4
  %6011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.i32 %6011, 0
  %6013 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6010, i32 %6012, i32 %6009)  ; UMad(a,b,c)
  %6014 = add nsw i32 %6004, -1
  %6015 = call i32 @dx.op.binary.i32(i32 37, i32 %6014, i32 0)  ; IMax(a,b)
  %6016 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6017 = fptoui float %6016 to i32
  %6018 = lshr i32 %6017, 5
  %6019 = call i32 @dx.op.binary.i32(i32 40, i32 %6018, i32 8191)  ; UMin(a,b)
  %6020 = shl i32 %6019, 2
  %6021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6020, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.i32 %6021, 0
  %6023 = lshr i32 %6022, 16
  %6024 = and i32 %6022, 65535
  %6025 = lshr i32 %6022, 21
  %6026 = lshr i32 %6024, 5
  %6027 = call i32 @dx.op.binary.i32(i32 40, i32 %6026, i32 %6015)  ; UMin(a,b)
  %6028 = icmp ugt i32 %6025, %6027
  br i1 %6028, label %6437, label %6029

; <label>:6029                                    ; preds = %6006
  br label %6030

; <label>:6030                                    ; preds = %6427, %6029
  %6031 = phi i32 [ %6434, %6427 ], [ %6025, %6029 ]
  %6032 = phi float [ %6428, %6427 ], [ %5997, %6029 ]
  %6033 = phi float [ %6429, %6427 ], [ %5998, %6029 ]
  %6034 = phi float [ %6430, %6427 ], [ %5999, %6029 ]
  %6035 = phi float [ %6431, %6427 ], [ %6000, %6029 ]
  %6036 = phi float [ %6432, %6427 ], [ %6001, %6029 ]
  %6037 = phi float [ %6433, %6427 ], [ %6002, %6029 ]
  %6038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.i32 %6038, 0
  %6040 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6013, i32 %6039, i32 %6031)  ; UMad(a,b,c)
  %6041 = shl i32 %6040, 2
  %6042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6041, i32 undef)  ; BufferLoad(srv,index,wot)
  %6043 = extractvalue %dx.types.ResRet.i32 %6042, 0
  %6044 = shl i32 %6031, 5
  %6045 = sub nsw i32 %6023, %6044
  %6046 = call i32 @dx.op.binary.i32(i32 37, i32 %6045, i32 0)  ; IMax(a,b)
  %6047 = call i32 @dx.op.binary.i32(i32 38, i32 %6046, i32 31)  ; IMin(a,b)
  %6048 = sub nsw i32 1, %6023
  %6049 = add nsw i32 %6048, %6024
  %6050 = call i32 @dx.op.binary.i32(i32 37, i32 %6049, i32 0)  ; IMax(a,b)
  %6051 = call i32 @dx.op.binary.i32(i32 38, i32 %6050, i32 32)  ; IMin(a,b)
  %6052 = and i32 %6051, 31
  %6053 = shl i32 -1, %6052
  %6054 = xor i32 %6053, -1
  %6055 = and i32 %6047, 31
  %6056 = shl i32 %6054, %6055
  %6057 = icmp eq i32 %6051, 32
  %6058 = select i1 %6057, i32 -1, i32 %6056
  %6059 = and i32 %6058, %6043
  %6060 = icmp eq i32 %6059, 0
  br i1 %6060, label %6427, label %6061

; <label>:6061                                    ; preds = %6030
  br label %6062

; <label>:6062                                    ; preds = %6142, %6061
  %6063 = phi i32 [ %6074, %6142 ], [ %6059, %6061 ]
  %6064 = phi float [ %6143, %6142 ], [ %6032, %6061 ]
  %6065 = phi float [ %6144, %6142 ], [ %6033, %6061 ]
  %6066 = phi float [ %6145, %6142 ], [ %6034, %6061 ]
  %6067 = phi float [ %6146, %6142 ], [ %6035, %6061 ]
  %6068 = phi float [ %6147, %6142 ], [ %6036, %6061 ]
  %6069 = phi float [ %6148, %6142 ], [ %6037, %6061 ]
  %6070 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6063)  ; FirstbitLo(value)
  %6071 = add i32 %6070, %6044
  %6072 = and i32 %6070, 31
  %6073 = shl i32 1, %6072
  %6074 = xor i32 %6073, %6063
  %6075 = mul i32 %6071, 112
  %6076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6075, i32 undef)  ; BufferLoad(srv,index,wot)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.ResRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.ResRet.f32 %6076, 2
  %6080 = or i32 %6075, 12
  %6081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6080, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = add i32 %6075, 44
  %6084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6083, i32 undef)  ; BufferLoad(srv,index,wot)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = add i32 %6075, 48
  %6087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6086, i32 undef)  ; BufferLoad(srv,index,wot)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6091 = add i32 %6075, 80
  %6092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6091, i32 undef)  ; BufferLoad(srv,index,wot)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 1
  %6094 = extractvalue %dx.types.ResRet.f32 %6092, 2
  %6095 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = select i1 %183, float %6093, float %6077
  %6097 = select i1 %183, float %6095, float %6078
  %6098 = select i1 %183, float %6094, float %6079
  %6099 = fsub fast float %6088, %141
  %6100 = fsub fast float %6089, %142
  %6101 = fsub fast float %6090, %143
  %6102 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6101, float %6099, float %6100, float %6101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = call float @dx.op.unary.f32(i32 24, float %6102)  ; Sqrt(value)
  %6104 = fdiv fast float 1.000000e+00, %6103
  %6105 = fmul fast float %6104, %6099
  %6106 = fmul fast float %6104, %6100
  %6107 = fmul fast float %6104, %6101
  %6108 = fadd fast float %6103, %6082
  %6109 = fdiv fast float 1.000000e+00, %6108
  %6110 = fmul float %6085, %6109
  %6111 = fmul float %6110, %6110
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6113 = and i32 %6073, %6059
  %6114 = icmp eq i32 %6113, 0
  br i1 %6114, label %6137, label %6115, !dx.controlflow.hints !88

; <label>:6115                                    ; preds = %6062
  %6116 = lshr i32 %6007, 5
  %6117 = lshr i32 %6008, 5
  %6118 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6116, i32 %6117, i32 %6071, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6119 = extractvalue %dx.types.ResRet.i32 %6118, 0
  %6120 = and i32 %6119, 3
  %6121 = icmp eq i32 %6120, 0
  %6122 = select i1 %6121, float 1.000000e+00, float 0.000000e+00
  %6123 = icmp eq i32 %6120, 3
  br i1 %6123, label %6124, label %6137

; <label>:6124                                    ; preds = %6115
  %6125 = lshr i32 %6119, 10
  %6126 = and i32 %6125, 8160
  %6127 = and i32 %6008, 31
  %6128 = or i32 %6126, %6127
  %6129 = lshr i32 %6119, 1
  %6130 = and i32 %6129, 16352
  %6131 = and i32 %6007, 31
  %6132 = or i32 %6130, %6131
  %6133 = lshr i32 %6119, 23
  %6134 = and i32 %6133, 255
  %6135 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6132, i32 %6128, i32 %6134, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  br label %6137

; <label>:6137                                    ; preds = %6124, %6115, %6062
  %6138 = phi float [ %6136, %6124 ], [ %6122, %6115 ], [ 0.000000e+00, %6062 ]
  %6139 = call float @dx.op.binary.f32(i32 36, float %6138, float %6138)  ; FMin(a,b)
  %6140 = call float @dx.op.binary.f32(i32 36, float %6138, float %6139)  ; FMin(a,b)
  %6141 = fcmp fast ogt float %6140, 0.000000e+00
  br i1 %6141, label %6150, label %6142, !dx.controlflow.hints !89

; <label>:6142                                    ; preds = %6383, %6137
  %6143 = phi float [ %6064, %6137 ], [ %6423, %6383 ]
  %6144 = phi float [ %6065, %6137 ], [ %6424, %6383 ]
  %6145 = phi float [ %6066, %6137 ], [ %6425, %6383 ]
  %6146 = phi float [ %6067, %6137 ], [ %6417, %6383 ]
  %6147 = phi float [ %6068, %6137 ], [ %6418, %6383 ]
  %6148 = phi float [ %6069, %6137 ], [ %6419, %6383 ]
  %6149 = icmp eq i32 %6063, %6073
  br i1 %6149, label %6426, label %6062

; <label>:6150                                    ; preds = %6137
  %6151 = fmul fast float %6138, %6096
  %6152 = fmul fast float %6138, %6097
  %6153 = fmul fast float %6138, %6098
  %6154 = fsub fast float %6090, %4448
  %6155 = fcmp fast ogt float %6154, 0.000000e+00
  %6156 = fsub fast float %143, %4448
  %6157 = fcmp fast ogt float %6156, 0.000000e+00
  %6158 = xor i1 %6157, %6155
  %6159 = fsub fast float %4448, %6090
  %6160 = fmul fast float %6159, 2.000000e+00
  %6161 = fadd fast float %6160, %6090
  %6162 = select i1 %6158, float %6090, float %6161
  %6163 = fsub fast float %6162, %143
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6163, float %6099, float %6100, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = call float @dx.op.unary.f32(i32 25, float %6164)  ; Rsqrt(value)
  %6166 = fmul fast float %6165, %6099
  %6167 = fmul fast float %6165, %6100
  %6168 = fmul fast float %6165, %6163
  %6169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4456)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6166, float %6167, float %6168)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = fdiv fast float 1.000000e+00, %6170
  %6172 = fmul fast float %6171, %6169
  %6173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6156, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  %6175 = fcmp fast olt float %6173, 0.000000e+00
  %6176 = zext i1 %6174 to i32
  %6177 = zext i1 %6175 to i32
  %6178 = sub nsw i32 %6176, %6177
  %6179 = sitofp i32 %6178 to float
  %6180 = fsub fast float %6162, %4448
  %6181 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6180, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6182 = fcmp fast ogt float %6181, 0.000000e+00
  %6183 = fcmp fast olt float %6181, 0.000000e+00
  %6184 = zext i1 %6182 to i32
  %6185 = zext i1 %6183 to i32
  %6186 = sub nsw i32 %6184, %6185
  %6187 = sitofp i32 %6186 to float
  %6188 = fcmp fast une float %6179, %6187
  br i1 %6188, label %6189, label %6199

; <label>:6189                                    ; preds = %6150
  %6190 = fmul fast float %6172, %6168
  %6191 = fmul fast float %6172, %6167
  %6192 = fmul fast float %6172, %6166
  %6193 = fmul fast float %6192, %6192
  %6194 = fmul fast float %6191, %6191
  %6195 = fadd fast float %6193, %6194
  %6196 = fmul fast float %6190, %6190
  %6197 = fadd fast float %6195, %6196
  %6198 = call float @dx.op.unary.f32(i32 24, float %6197)  ; Sqrt(value)
  br label %6211

; <label>:6199                                    ; preds = %6150
  %6200 = icmp slt i32 %6178, 0
  br i1 %6200, label %6201, label %6211

; <label>:6201                                    ; preds = %6199
  %6202 = fsub fast float %141, %6088
  %6203 = fsub fast float %142, %6089
  %6204 = fsub fast float %143, %6162
  %6205 = fmul fast float %6202, %6202
  %6206 = fmul fast float %6203, %6203
  %6207 = fadd fast float %6205, %6206
  %6208 = fmul fast float %6204, %6204
  %6209 = fadd fast float %6207, %6208
  %6210 = call float @dx.op.unary.f32(i32 24, float %6209)  ; Sqrt(value)
  br label %6211

; <label>:6211                                    ; preds = %6201, %6199, %6189
  %6212 = phi float [ %6198, %6189 ], [ %6210, %6201 ], [ 0.000000e+00, %6199 ]
  %6213 = and i1 %6157, %6155
  %6214 = fsub fast float -0.000000e+00, %6212
  %6215 = select i1 %6213, float -0.000000e+00, float %6214
  %6216 = fmul fast float %4449, 0x3FF7154760000000
  %6217 = fmul fast float %6216, %6215
  %6218 = fmul fast float %4450, 0x3FF7154760000000
  %6219 = fmul fast float %6218, %6215
  %6220 = fmul fast float %4451, 0x3FF7154760000000
  %6221 = fmul fast float %6220, %6215
  %6222 = call float @dx.op.unary.f32(i32 21, float %6217)  ; Exp(value)
  %6223 = call float @dx.op.unary.f32(i32 21, float %6219)  ; Exp(value)
  %6224 = call float @dx.op.unary.f32(i32 21, float %6221)  ; Exp(value)
  %6225 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6226 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6227 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6228 = fmul fast float %6151, %6225
  %6229 = fmul fast float %6152, %6226
  %6230 = fmul fast float %6153, %6227
  %6231 = fsub fast float %6105, %4648
  %6232 = fsub fast float %6106, %4647
  %6233 = fsub fast float %6107, %4646
  %6234 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6232, float %6233, float %6231, float %6232, float %6233)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = call float @dx.op.unary.f32(i32 25, float %6234)  ; Rsqrt(value)
  %6236 = fmul fast float %6235, %6231
  %6237 = fmul fast float %6235, %6232
  %6238 = fmul fast float %6235, %6233
  %6239 = call float @dx.op.dot3.f32(i32 55, float %6105, float %6106, float %6107, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4644, float %4643, float %6236, float %6237, float %6238)  ; Dot3(ax,ay,az,bx,by,bz)
  %6241 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6242 = fmul fast float %6241, %6112
  %6243 = bitcast i32 %4701 to float
  %6244 = fmul fast float %6241, %6241
  %6245 = fmul fast float %6244, %6243
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6247 = fmul fast float %6242, %6246
  %6248 = bitcast float %6102 to i32
  %6249 = ashr i32 %6248, 1
  %6250 = sub nsw i32 1597463007, %6249
  %6251 = bitcast i32 %6250 to float
  %6252 = fmul fast float %6251, %6099
  %6253 = fmul fast float %6251, %6100
  %6254 = fmul fast float %6251, %6101
  %6255 = fsub fast float %6252, %4648
  %6256 = fsub fast float %6253, %4647
  %6257 = fsub fast float %6254, %4646
  %6258 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6259 = call float @dx.op.unary.f32(i32 25, float %6258)  ; Rsqrt(value)
  %6260 = fmul fast float %6255, %6259
  %6261 = fmul fast float %6256, %6259
  %6262 = fmul fast float %6257, %6259
  %6263 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %6260, float %6261, float %6262)  ; Dot3(ax,ay,az,bx,by,bz)
  %6264 = fmul fast float %6263, %6263
  %6265 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6266 = fsub fast float 1.000000e+00, %4695
  %6267 = fmul fast float %4677, %4677
  %6268 = fmul fast float %6267, %6266
  %6269 = fadd fast float %6268, %4695
  %6270 = bitcast float %6269 to i32
  %6271 = ashr i32 %6270, 1
  %6272 = add nsw i32 %6271, 532487669
  %6273 = bitcast i32 %6272 to float
  %6274 = fadd fast float %6273, %4677
  %6275 = fmul fast float %4695, %6264
  %6276 = fsub fast float 1.000000e+00, %6264
  %6277 = fadd fast float %6276, %6275
  %6278 = fmul fast float %6265, %6265
  %6279 = fmul fast float %6278, %6266
  %6280 = fadd fast float %6279, %4695
  %6281 = bitcast float %6280 to i32
  %6282 = ashr i32 %6281, 1
  %6283 = add nsw i32 %6282, 532487669
  %6284 = bitcast i32 %6283 to float
  %6285 = fadd fast float %6284, %6265
  %6286 = fmul fast float %6277, %6277
  %6287 = fmul fast float %6286, %6274
  %6288 = fmul fast float %6287, %6285
  %6289 = fdiv fast float 1.000000e+00, %6288
  %6290 = bitcast float %4695 to i32
  %6291 = sitofp i32 %6290 to float
  %6292 = fmul fast float %6291, 0x3FE7F73180000000
  %6293 = fadd fast float %6292, 0x41AFE27C40000000
  %6294 = fptosi float %6293 to i32
  %6295 = bitcast i32 %6294 to float
  %6296 = fmul fast float %6085, 0x3FD80E9D60000000
  %6297 = fmul fast float %6296, %6251
  %6298 = fadd fast float %6295, %6297
  %6299 = bitcast float %6298 to i32
  %6300 = sub nsw i32 2129859010, %6299
  %6301 = bitcast i32 %6300 to float
  %6302 = fmul fast float %4695, %6289
  %6303 = fmul fast float %6302, %6295
  %6304 = fmul fast float %6303, %6301
  %6305 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6306 = fsub fast float 1.000000e+00, %6305
  %6307 = bitcast float %6306 to i32
  %6308 = sitofp i32 %6307 to float
  %6309 = fmul fast float %6308, 5.000000e+00
  %6310 = fadd fast float %6309, 0xC1EFBF8940000000
  %6311 = fptosi float %6310 to i32
  %6312 = bitcast i32 %6311 to float
  %6313 = fsub fast float 1.000000e+00, %4655
  %6314 = fsub fast float 1.000000e+00, %4656
  %6315 = fsub fast float 1.000000e+00, %4675
  %6316 = fmul fast float %6312, %6313
  %6317 = fmul fast float %6312, %6314
  %6318 = fmul fast float %6312, %6315
  %6319 = fadd fast float %6316, %4655
  %6320 = fadd fast float %6317, %4656
  %6321 = fadd fast float %6318, %4675
  br i1 %4813, label %6322, label %6345

; <label>:6322                                    ; preds = %6211
  %6323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4046, float %6305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  %6327 = fadd fast float %6324, -5.000000e-01
  %6328 = fadd fast float %6325, -5.000000e-01
  %6329 = fadd fast float %6326, -5.000000e-01
  %6330 = fmul fast float %4655, 4.000000e+00
  %6331 = fmul fast float %6330, %6313
  %6332 = fmul fast float %6331, %6327
  %6333 = fmul fast float %4656, 4.000000e+00
  %6334 = fmul fast float %6333, %6314
  %6335 = fmul fast float %6334, %6328
  %6336 = fmul fast float %4675, 4.000000e+00
  %6337 = fmul fast float %6336, %6315
  %6338 = fmul fast float %6337, %6329
  %6339 = fadd fast float %6332, %6319
  %6340 = fadd fast float %6335, %6320
  %6341 = fadd fast float %6338, %6321
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  br label %6345

; <label>:6345                                    ; preds = %6322, %6211
  %6346 = phi float [ %6342, %6322 ], [ %6319, %6211 ]
  %6347 = phi float [ %6343, %6322 ], [ %6320, %6211 ]
  %6348 = phi float [ %6344, %6322 ], [ %6321, %6211 ]
  %6349 = fmul fast float %6239, 9.843750e-01
  %6350 = fadd fast float %6349, 7.812500e-03
  %6351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6350, float %4803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 2
  %6353 = extractvalue %dx.types.ResRet.f32 %6351, 3
  %6354 = fmul fast float %6352, %4655
  %6355 = fmul fast float %6352, %4656
  %6356 = fmul fast float %6352, %4675
  %6357 = fadd fast float %6354, %6353
  %6358 = fadd fast float %6355, %6353
  %6359 = fadd fast float %6356, %6353
  br i1 %4813, label %6360, label %6383

; <label>:6360                                    ; preds = %6345
  %6361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4046, float %6239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6362 = extractvalue %dx.types.ResRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.ResRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.ResRet.f32 %6361, 2
  %6365 = fadd fast float %6362, -5.000000e-01
  %6366 = fadd fast float %6363, -5.000000e-01
  %6367 = fadd fast float %6364, -5.000000e-01
  %6368 = fmul fast float %4655, 4.000000e+00
  %6369 = fmul fast float %6368, %6313
  %6370 = fmul fast float %6369, %6365
  %6371 = fmul fast float %4656, 4.000000e+00
  %6372 = fmul fast float %6371, %6314
  %6373 = fmul fast float %6372, %6366
  %6374 = fmul fast float %4675, 4.000000e+00
  %6375 = fmul fast float %6374, %6315
  %6376 = fmul fast float %6375, %6367
  %6377 = fadd fast float %6370, %6357
  %6378 = fadd fast float %6373, %6358
  %6379 = fadd fast float %6376, %6359
  %6380 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  br label %6383

; <label>:6383                                    ; preds = %6360, %6345
  %6384 = phi float [ %6380, %6360 ], [ %6357, %6345 ]
  %6385 = phi float [ %6381, %6360 ], [ %6358, %6345 ]
  %6386 = phi float [ %6382, %6360 ], [ %6359, %6345 ]
  %6387 = call float @dx.op.binary.f32(i32 35, float %6385, float %6386)  ; FMax(a,b)
  %6388 = call float @dx.op.binary.f32(i32 35, float %6384, float %6387)  ; FMax(a,b)
  %6389 = fsub fast float 1.000000e+00, %6388
  %6390 = fmul fast float %6346, %6304
  %6391 = fmul fast float %6347, %6304
  %6392 = fmul fast float %6348, %6304
  %6393 = fsub fast float 1.000000e+00, %6240
  %6394 = bitcast float %6393 to i32
  %6395 = sitofp i32 %6394 to float
  %6396 = fmul fast float %6395, 5.000000e+00
  %6397 = fadd fast float %6396, 0xC1EFBF8940000000
  %6398 = fptosi float %6397 to i32
  %6399 = bitcast i32 %6398 to float
  %6400 = fmul fast float %6399, %4047
  %6401 = fmul fast float %6389, %6400
  %6402 = fmul fast float %6401, %5739
  %6403 = fmul fast float %6401, %5740
  %6404 = fmul fast float %6401, %5741
  %6405 = fadd fast float %6402, %6390
  %6406 = fadd fast float %6403, %6391
  %6407 = fadd fast float %6404, %6392
  %6408 = fmul fast float %6228, %4043
  %6409 = fmul fast float %6408, %6247
  %6410 = fmul fast float %6409, %6389
  %6411 = fmul fast float %6229, %4043
  %6412 = fmul fast float %6411, %6247
  %6413 = fmul fast float %6412, %6389
  %6414 = fmul fast float %6230, %4043
  %6415 = fmul fast float %6414, %6247
  %6416 = fmul fast float %6415, %6389
  %6417 = fadd fast float %6410, %6067
  %6418 = fadd fast float %6413, %6068
  %6419 = fadd fast float %6416, %6069
  %6420 = fmul fast float %6409, %6405
  %6421 = fmul fast float %6412, %6406
  %6422 = fmul fast float %6415, %6407
  %6423 = fadd fast float %6420, %6064
  %6424 = fadd fast float %6421, %6065
  %6425 = fadd fast float %6422, %6066
  br label %6142

; <label>:6426                                    ; preds = %6142
  br label %6427

; <label>:6427                                    ; preds = %6426, %6030
  %6428 = phi float [ %6032, %6030 ], [ %6143, %6426 ]
  %6429 = phi float [ %6033, %6030 ], [ %6144, %6426 ]
  %6430 = phi float [ %6034, %6030 ], [ %6145, %6426 ]
  %6431 = phi float [ %6035, %6030 ], [ %6146, %6426 ]
  %6432 = phi float [ %6036, %6030 ], [ %6147, %6426 ]
  %6433 = phi float [ %6037, %6030 ], [ %6148, %6426 ]
  %6434 = add i32 %6031, 1
  %6435 = icmp ugt i32 %6434, %6027
  br i1 %6435, label %6436, label %6030

; <label>:6436                                    ; preds = %6427
  br label %6437

; <label>:6437                                    ; preds = %6436, %6006, %5996
  %6438 = phi float [ %5997, %5996 ], [ %5997, %6006 ], [ %6428, %6436 ]
  %6439 = phi float [ %5998, %5996 ], [ %5998, %6006 ], [ %6429, %6436 ]
  %6440 = phi float [ %5999, %5996 ], [ %5999, %6006 ], [ %6430, %6436 ]
  %6441 = phi float [ %6000, %5996 ], [ %6000, %6006 ], [ %6431, %6436 ]
  %6442 = phi float [ %6001, %5996 ], [ %6001, %6006 ], [ %6432, %6436 ]
  %6443 = phi float [ %6002, %5996 ], [ %6002, %6006 ], [ %6433, %6436 ]
  %6444 = call float @dx.op.unary.f32(i32 24, float %4649)  ; Sqrt(value)
  %6445 = call float @dx.op.unary.f32(i32 24, float %4650)  ; Sqrt(value)
  %6446 = call float @dx.op.unary.f32(i32 24, float %4651)  ; Sqrt(value)
  %6447 = fmul fast float %6444, %6441
  %6448 = fmul fast float %6445, %6442
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  br i1 %183, label %6451, label %6474

; <label>:6451                                    ; preds = %6437
  %6452 = fadd fast float %6443, %4049
  %6453 = fmul fast float %6452, %4050
  %6454 = fsub fast float 1.000000e+00, %4050
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6458 = fmul fast float %6457, %6455
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = fmul fast float %6460, %5745
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = fmul fast float %6462, %4673
  %6464 = fadd fast float %6448, %6447
  %6465 = fmul fast float %6450, %6464
  %6466 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6467 = fadd fast float %6458, %6453
  %6468 = fsub fast float %6467, %6461
  %6469 = fadd fast float %6468, %6463
  %6470 = fsub fast float %6469, %6466
  %6471 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6472 = fmul fast float %6470, %6471
  %6473 = call float @dx.op.unary.f32(i32 7, float %6472)  ; Saturate(value)
  br label %6490

; <label>:6474                                    ; preds = %6437
  %6475 = fmul fast float %6446, %6443
  %6476 = fmul fast float %6450, %6447
  %6477 = fmul fast float %6450, %6448
  %6478 = fmul fast float %6475, %6450
  %6479 = add i32 %43, 356
  %6480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6479, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.i32 %6480, 0
  %6482 = and i32 %6481, 32
  %6483 = icmp eq i32 %6482, 0
  br i1 %6483, label %6490, label %6484

; <label>:6484                                    ; preds = %6474
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6487 = fmul fast float %6486, 0x3FE99999A0000000
  %6488 = fadd fast float %6486, %6476
  %6489 = fadd fast float %6487, %6478
  br label %6490

; <label>:6490                                    ; preds = %6484, %6474, %6451
  %6491 = phi float [ %6465, %6451 ], [ %6488, %6484 ], [ %6476, %6474 ]
  %6492 = phi float [ %6473, %6451 ], [ %6477, %6484 ], [ %6477, %6474 ]
  %6493 = phi float [ 1.000000e+00, %6451 ], [ %6489, %6484 ], [ %6478, %6474 ]
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = fmul fast float %6495, %6439
  %6497 = fmul fast float %6495, %6440
  %6498 = fadd fast float %6439, %6438
  %6499 = select i1 %183, float %6498, float %6438
  %6500 = fmul float %6499, %6495
  %6501 = select i1 %183, float 0.000000e+00, float %6496
  %6502 = select i1 %183, float 0.000000e+00, float %6497
  %6503 = fmul fast float %6491, %6444
  %6504 = fmul fast float %6492, %6445
  %6505 = fmul fast float %6493, %6446
  %6506 = fadd fast float %6500, %6503
  %6507 = fadd fast float %6501, %6504
  %6508 = fadd fast float %6502, %6505
  %6509 = select i1 %183, float %6492, float %6507
  %6510 = select i1 %183, float %6493, float %6508
  %6511 = call float @dx.op.binary.f32(i32 36, float %6506, float 3.225500e+04)  ; FMin(a,b)
  %6512 = call float @dx.op.binary.f32(i32 36, float %6509, float 3.225500e+04)  ; FMin(a,b)
  %6513 = call float @dx.op.binary.f32(i32 36, float %6510, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6511)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6512)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

