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
; shader hash: f6f7d7e4bfd85920327d87a6fbdcdb30
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
  br i1 %433, label %910, label %434

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
  %881 = and i32 %880, 65536
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %893, label %883

; <label>:883                                     ; preds = %875
  %884 = add i32 %43, 472
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = add i32 %886, 0
  %888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %887, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %889 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %888, %dx.types.Handle %75, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  br label %893

; <label>:893                                     ; preds = %883, %875
  %894 = phi float [ %890, %883 ], [ 0.000000e+00, %875 ]
  %895 = phi float [ %891, %883 ], [ 0.000000e+00, %875 ]
  %896 = phi float [ %892, %883 ], [ 0.000000e+00, %875 ]
  %897 = add i32 %43, 96
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = lshr i32 %899, 8
  %903 = and i32 %902, 255
  %904 = uitofp i32 %903 to float
  %905 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = fmul fast float %904, %905
  %907 = fadd fast float %906, %901
  %908 = fmul fast float %907, 0x3F70101020000000
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  br label %910

; <label>:910                                     ; preds = %893, %419
  %911 = phi float [ 0.000000e+00, %419 ], [ %829, %893 ]
  %912 = phi float [ 0.000000e+00, %419 ], [ %830, %893 ]
  %913 = phi float [ 0.000000e+00, %419 ], [ %748, %893 ]
  %914 = phi float [ 0.000000e+00, %419 ], [ %749, %893 ]
  %915 = phi float [ 0.000000e+00, %419 ], [ %750, %893 ]
  %916 = phi float [ 0.000000e+00, %419 ], [ %876, %893 ]
  %917 = phi float [ 0.000000e+00, %419 ], [ %877, %893 ]
  %918 = phi float [ 0.000000e+00, %419 ], [ %878, %893 ]
  %919 = phi float [ 0.000000e+00, %419 ], [ %894, %893 ]
  %920 = phi float [ 0.000000e+00, %419 ], [ %895, %893 ]
  %921 = phi float [ 0.000000e+00, %419 ], [ %896, %893 ]
  %922 = phi float [ 0.000000e+00, %419 ], [ %734, %893 ]
  %923 = phi float [ 0.000000e+00, %419 ], [ 1.000000e+00, %893 ]
  %924 = phi float [ 0.000000e+00, %419 ], [ %828, %893 ]
  %925 = phi float [ 0.000000e+00, %419 ], [ %831, %893 ]
  %926 = phi float [ 0.000000e+00, %419 ], [ %909, %893 ]
  br i1 %370, label %1807, label %927

; <label>:927                                     ; preds = %910
  %928 = icmp ult i32 %425, 2
  %929 = add i32 %43, 40
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %43, 44
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = or i32 %934, %931
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %1807, label %937

; <label>:937                                     ; preds = %927
  %938 = and i32 %931, 262144
  %939 = icmp ne i32 %938, 0
  %940 = select i1 %939, float %46, float 1.000000e+00
  %941 = select i1 %939, float %47, float 0.000000e+00
  %942 = select i1 %939, float %48, float 0.000000e+00
  %943 = select i1 %939, float %49, float 1.000000e+00
  %944 = select i1 %939, float %50, float %66
  %945 = select i1 %939, float %51, float %67
  %946 = add i32 %43, 300
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 16
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = fmul fast float %950, 0x3F50624DE0000000
  %952 = add i32 %43, 104
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 16
  %956 = and i32 %955, 255
  %957 = lshr i32 %954, 24
  %958 = add i32 %43, 308
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = and i32 %960, 65535
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = lshr i32 %960, 16
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = add i32 %43, 48
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 22
  %969 = shl nuw nsw i32 %968, 5
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = shl i32 %967, 4
  %972 = and i32 %971, 32752
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = lshr i32 %967, 7
  %975 = and i32 %974, 32752
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 3
  %979 = fmul fast float %978, 1.000000e+03
  %980 = fmul fast float %280, %979
  %981 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %982 = fadd fast float %981, %270
  %983 = fmul fast float %281, %979
  %984 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %985 = fadd fast float %984, %272
  %986 = fmul fast float %951, %979
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = fmul fast float %987, 0x401921FB60000000
  %989 = fadd fast float %988, %970
  %990 = call float @dx.op.unary.f32(i32 13, float %989)  ; Sin(value)
  %991 = call float @dx.op.unary.f32(i32 12, float %989)  ; Cos(value)
  %992 = fsub fast float -0.000000e+00, %990
  %993 = fadd fast float %944, -5.000000e-01
  %994 = fadd fast float %945, -5.000000e-01
  %995 = fmul fast float %962, %993
  %996 = fmul fast float %964, %994
  %997 = fadd fast float %995, 5.000000e-01
  %998 = fadd fast float %996, 5.000000e-01
  %999 = fmul fast float %973, %997
  %1000 = fmul fast float %976, %998
  %1001 = fmul fast float %991, %999
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %992, float %1000, float %1001)  ; FMad(a,b,c)
  %1003 = fmul fast float %990, %999
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %991, float %1000, float %1003)  ; FMad(a,b,c)
  %1005 = fadd fast float %982, %1002
  %1006 = fadd fast float %985, %1004
  %1007 = icmp ugt i32 %956, 1
  %1008 = icmp ugt i32 %954, 33554431
  %1009 = or i1 %1008, %1007
  br i1 %1009, label %1010, label %1035

; <label>:1010                                    ; preds = %937
  %1011 = add i32 %43, 244
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = lshr i32 %1013, 16
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = fmul fast float %978, %1015
  %1017 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1018 = mul nuw nsw i32 %956, %957
  %1019 = uitofp i32 %1018 to float
  %1020 = fmul fast float %1017, %1019
  %1021 = call float @dx.op.unary.f32(i32 27, float %1020)  ; Round_ni(value)
  %1022 = fptoui float %1021 to i32
  %1023 = urem i32 %1022, %956
  %1024 = udiv i32 %1022, %957
  %1025 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1026 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1027 = uitofp i32 %1023 to float
  %1028 = uitofp i32 %1024 to float
  %1029 = fadd fast float %1025, %1027
  %1030 = fadd fast float %1026, %1028
  %1031 = uitofp i32 %956 to float
  %1032 = uitofp i32 %957 to float
  %1033 = fdiv fast float %1029, %1031
  %1034 = fdiv fast float %1030, %1032
  br label %1035

; <label>:1035                                    ; preds = %1010, %937
  %1036 = phi float [ %1033, %1010 ], [ %1005, %937 ]
  %1037 = phi float [ %1034, %1010 ], [ %1006, %937 ]
  %1038 = and i32 %931, 16777216
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1149, label %1040

; <label>:1040                                    ; preds = %1035
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = fadd fast float %1042, %141
  %1046 = fadd fast float %1043, %142
  %1047 = fadd fast float %1044, %143
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = icmp eq i32 %44, 65535
  br i1 %1051, label %1146, label %1052

; <label>:1052                                    ; preds = %1040
  %1053 = lshr i32 %44, 1
  %1054 = shl i32 %1053, 2
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %44, 1
  %1058 = icmp ne i32 %1057, 0
  %1059 = lshr i32 %1056, 16
  %1060 = and i32 %1056, 65535
  %1061 = select i1 %1058, i32 %1059, i32 %1060
  %1062 = icmp eq i32 %1061, 65535
  br i1 %1062, label %1142, label %1063

; <label>:1063                                    ; preds = %1052
  %1064 = mul nuw nsw i32 %1061, 40
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = add nuw nsw i32 %1064, 12
  %1070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.ResRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.ResRet.f32 %1070, 2
  %1074 = add nuw nsw i32 %1064, 24
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = add nuw nsw i32 %1064, 36
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = fsub fast float %1045, %1066
  %1083 = fsub fast float %1046, %1067
  %1084 = fsub fast float %1047, %1068
  %1085 = fmul fast float %1081, %1082
  %1086 = fmul fast float %1081, %1083
  %1087 = fmul fast float %1081, %1084
  %1088 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1089 = call float @dx.op.unary.f32(i32 27, float %1086)  ; Round_ni(value)
  %1090 = call float @dx.op.unary.f32(i32 27, float %1087)  ; Round_ni(value)
  %1091 = fadd fast float %1088, 5.000000e-01
  %1092 = fadd fast float %1089, 5.000000e-01
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = fmul fast float %1091, %1071
  %1095 = fmul fast float %1092, %1072
  %1096 = fmul fast float %1093, %1073
  %1097 = shl i32 %44, 2
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call float @dx.op.unary.f32(i32 22, float %1094)  ; Frc(value)
  %1103 = call float @dx.op.unary.f32(i32 22, float %1095)  ; Frc(value)
  %1104 = call float @dx.op.unary.f32(i32 22, float %1096)  ; Frc(value)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1101, %dx.types.Handle %40, float %1102, float %1103, float %1104, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = fmul fast float %1106, 1.023000e+03
  %1110 = fmul fast float %1107, 1.023000e+03
  %1111 = fmul fast float %1108, 1.023000e+03
  %1112 = fadd fast float %1109, 5.000000e-01
  %1113 = fadd fast float %1110, 5.000000e-01
  %1114 = fadd fast float %1111, 5.000000e-01
  %1115 = call float @dx.op.unary.f32(i32 27, float %1112)  ; Round_ni(value)
  %1116 = call float @dx.op.unary.f32(i32 27, float %1113)  ; Round_ni(value)
  %1117 = call float @dx.op.unary.f32(i32 27, float %1114)  ; Round_ni(value)
  %1118 = fsub fast float %1085, %1088
  %1119 = fsub fast float %1086, %1089
  %1120 = fsub fast float %1087, %1090
  %1121 = fmul fast float %1118, 7.500000e-01
  %1122 = fmul fast float %1119, 7.500000e-01
  %1123 = fmul fast float %1120, 7.500000e-01
  %1124 = fadd fast float %1088, 1.250000e-01
  %1125 = fadd fast float %1124, %1121
  %1126 = fadd fast float %1125, %1115
  %1127 = fadd fast float %1089, 1.250000e-01
  %1128 = fadd fast float %1127, %1122
  %1129 = fadd fast float %1128, %1116
  %1130 = fadd fast float %1090, 1.250000e-01
  %1131 = fadd fast float %1130, %1123
  %1132 = fadd fast float %1131, %1117
  %1133 = fmul fast float %1126, %1076
  %1134 = fmul fast float %1129, %1077
  %1135 = fmul fast float %1132, %1078
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1139, %dx.types.Handle %38, float %1133, float %1134, float %1135, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  br label %1142

; <label>:1142                                    ; preds = %1063, %1052
  %1143 = phi float [ %1141, %1063 ], [ -1.000000e+00, %1052 ]
  %1144 = fadd fast float %1143, %1050
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  br label %1146

; <label>:1146                                    ; preds = %1142, %1040
  %1147 = phi float [ %1145, %1142 ], [ %1050, %1040 ]
  %1148 = fmul fast float %1147, %422
  br label %1149

; <label>:1149                                    ; preds = %1146, %1035
  %1150 = phi float [ %1148, %1146 ], [ %422, %1035 ]
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = and i32 %1152, 256
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1201, label %1155

; <label>:1155                                    ; preds = %1149
  %1156 = add i32 %43, 428
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = add i32 %1158, 0
  %1160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1160, %dx.types.Handle %75, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = add i32 %43, 116
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = shl i32 %1165, 4
  %1167 = and i32 %1166, 32752
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = lshr i32 %1165, 7
  %1170 = and i32 %1169, 32752
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = fsub fast float 1.000000e+00, %1150
  %1173 = call float @dx.op.binary.f32(i32 35, float %1172, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1174 = bitcast float %1150 to i32
  %1175 = sitofp i32 %1174 to float
  %1176 = fadd fast float %1175, 0xC1CFBF8940000000
  %1177 = fmul fast float %1171, %1176
  %1178 = fadd fast float %1177, 0x41CFBF8940000000
  %1179 = fptosi float %1178 to i32
  %1180 = bitcast i32 %1179 to float
  %1181 = bitcast float %1173 to i32
  %1182 = sitofp i32 %1181 to float
  %1183 = fadd fast float %1182, 0xC1CFBF8940000000
  %1184 = fmul fast float %1183, %1171
  %1185 = fadd fast float %1184, 0x41CFBF8940000000
  %1186 = fptosi float %1185 to i32
  %1187 = bitcast i32 %1186 to float
  %1188 = fmul fast float %1180, %1168
  %1189 = fmul fast float %1187, %1168
  %1190 = fsub fast float %1173, %1188
  %1191 = fadd fast float %1189, %1173
  %1192 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1193 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1194 = fsub fast float %1162, %1192
  %1195 = fsub fast float %1193, %1192
  %1196 = bitcast float %1195 to i32
  %1197 = sub nsw i32 2129859010, %1196
  %1198 = bitcast i32 %1197 to float
  %1199 = fmul fast float %1198, %1194
  %1200 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  br label %1201

; <label>:1201                                    ; preds = %1155, %1149
  %1202 = phi float [ %1200, %1155 ], [ %1150, %1149 ]
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = and i32 %1204, 128
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1223, label %1207

; <label>:1207                                    ; preds = %1201
  %1208 = add i32 %43, 412
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = add i32 %1210, 0
  %1212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1212, %dx.types.Handle %75, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 524288
  %1218 = icmp ne i32 %1217, 0
  %1219 = fcmp fast ogt float %1214, 0x3FE0101020000000
  %1220 = select i1 %1219, float 1.000000e+00, float 0.000000e+00
  %1221 = select i1 %1218, float %1220, float %1214
  %1222 = fmul fast float %1221, %1202
  br label %1223

; <label>:1223                                    ; preds = %1207, %1201
  %1224 = phi float [ %1222, %1207 ], [ %1202, %1201 ]
  %1225 = fcmp fast ult float %1224, 0x3F70101020000000
  br i1 %1225, label %1807, label %1226

; <label>:1226                                    ; preds = %1223
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 16
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1429, label %1231

; <label>:1231                                    ; preds = %1226
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = add i32 %43, 364
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = add i32 %1236, 0
  %1238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1238, %dx.types.Handle %74, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = extractvalue %dx.types.ResRet.f32 %1239, 3
  %1244 = and i32 %1233, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = lshr i32 %1233, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1243, %1245
  %1250 = fadd fast float %1249, %1248
  %1251 = fmul fast float %1250, 0x3F70101000000000
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 512
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1264, label %1256

; <label>:1256                                    ; preds = %1231
  %1257 = add i32 %43, 444
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %1259, 0
  %1261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1261, %dx.types.Handle %75, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  br label %1264

; <label>:1264                                    ; preds = %1256, %1231
  %1265 = phi float [ %1263, %1256 ], [ 1.000000e+00, %1231 ]
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 33554432
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1376, label %1270

; <label>:1270                                    ; preds = %1264
  %1271 = add i32 %43, 240
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 65535
  %1275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1274)  ; LegacyF16ToF32(value)
  %1276 = lshr i32 %1273, 16
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = add i32 %43, 244
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 24
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1286, 0x3F70101020000000
  %1288 = and i32 %1284, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = lshr i32 %1284, 8
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = lshr i32 %1284, 16
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = add i32 %43, 236
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = lshr i32 %1301, 24
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = and i32 %1301, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1301, 8
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = lshr i32 %1301, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = bitcast float %1240 to i32
  %1317 = ashr i32 %1316, 1
  %1318 = sub nsw i32 1597463174, %1317
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1240, 5.000000e-01
  %1321 = fmul fast float %1319, %1319
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float 1.500000e+00, %1322
  %1324 = fmul fast float %1319, %1240
  %1325 = fmul fast float %1324, %1323
  %1326 = bitcast float %1241 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1241, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1241
  %1335 = fmul fast float %1334, %1333
  %1336 = bitcast float %1242 to i32
  %1337 = ashr i32 %1336, 1
  %1338 = sub nsw i32 1597463174, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1242, 5.000000e-01
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float 1.500000e+00, %1342
  %1344 = fmul fast float %1339, %1242
  %1345 = fmul fast float %1344, %1343
  %1346 = fsub fast float %1325, %1307
  %1347 = fsub fast float %1335, %1311
  %1348 = fsub fast float %1345, %1315
  %1349 = fmul fast float %1346, %1275
  %1350 = fmul fast float %1347, %1277
  %1351 = fmul fast float %1348, %1282
  %1352 = fadd fast float %1349, %1290
  %1353 = fadd fast float %1350, %1294
  %1354 = fadd fast float %1351, %1298
  %1355 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1356 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1357 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1358 = fmul fast float %1355, %1355
  %1359 = fmul fast float %1356, %1356
  %1360 = fmul fast float %1357, %1357
  %1361 = fsub fast float %1358, %1240
  %1362 = fsub fast float %1359, %1241
  %1363 = fsub fast float %1360, %1242
  %1364 = fmul fast float %1361, %1265
  %1365 = fmul fast float %1362, %1265
  %1366 = fmul fast float %1363, %1265
  %1367 = fadd fast float %1364, %1240
  %1368 = fadd fast float %1365, %1241
  %1369 = fadd fast float %1366, %1242
  %1370 = fadd fast float %1287, %1251
  %1371 = fsub fast float %1370, %1304
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fsub fast float %1372, %1251
  %1374 = fmul fast float %1373, %1265
  %1375 = fadd fast float %1374, %1251
  br label %1429

; <label>:1376                                    ; preds = %1264
  %1377 = and i32 %1267, 134217728
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1413, label %1379

; <label>:1379                                    ; preds = %1376
  %1380 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1381 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1382 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1383 = fadd fast float %1380, -5.000000e-01
  %1384 = fadd fast float %1381, -5.000000e-01
  %1385 = fadd fast float %1382, -5.000000e-01
  %1386 = fmul fast float %1383, %1265
  %1387 = fmul fast float %1384, %1265
  %1388 = fmul fast float %1385, %1265
  %1389 = fadd fast float %1386, 5.000000e-01
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = fadd fast float %1388, 5.000000e-01
  %1392 = call float @dx.op.unary.f32(i32 24, float %1240)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %1241)  ; Sqrt(value)
  %1394 = call float @dx.op.unary.f32(i32 24, float %1242)  ; Sqrt(value)
  %1395 = fmul fast float %1389, 2.000000e+00
  %1396 = fsub fast float 1.000000e+00, %1395
  %1397 = fmul fast float %1396, %1392
  %1398 = fadd fast float %1397, %1395
  %1399 = fmul fast float %1398, %1392
  %1400 = fmul fast float %1390, 2.000000e+00
  %1401 = fsub fast float 1.000000e+00, %1400
  %1402 = fmul fast float %1401, %1393
  %1403 = fadd fast float %1402, %1400
  %1404 = fmul fast float %1403, %1393
  %1405 = fmul fast float %1391, 2.000000e+00
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = fmul fast float %1406, %1394
  %1408 = fadd fast float %1407, %1405
  %1409 = fmul fast float %1408, %1394
  %1410 = fmul fast float %1399, %1399
  %1411 = fmul fast float %1404, %1404
  %1412 = fmul fast float %1409, %1409
  br label %1429

; <label>:1413                                    ; preds = %1376
  %1414 = fmul fast float %257, %257
  %1415 = fmul fast float %261, %261
  %1416 = fmul fast float %265, %265
  %1417 = fadd fast float %1414, -1.000000e+00
  %1418 = fadd fast float %1415, -1.000000e+00
  %1419 = fadd fast float %1416, -1.000000e+00
  %1420 = fmul fast float %1265, %1417
  %1421 = fmul fast float %1265, %1418
  %1422 = fmul fast float %1265, %1419
  %1423 = fadd fast float %1420, 1.000000e+00
  %1424 = fadd fast float %1421, 1.000000e+00
  %1425 = fadd fast float %1422, 1.000000e+00
  %1426 = fmul fast float %1423, %1240
  %1427 = fmul fast float %1424, %1241
  %1428 = fmul fast float %1425, %1242
  br label %1429

; <label>:1429                                    ; preds = %1413, %1379, %1270, %1226
  %1430 = phi float [ %1375, %1270 ], [ %1251, %1379 ], [ %1251, %1413 ], [ 0x3FA23C0BE0000000, %1226 ]
  %1431 = phi float [ %1367, %1270 ], [ %1410, %1379 ], [ %1426, %1413 ], [ 1.000000e+00, %1226 ]
  %1432 = phi float [ %1368, %1270 ], [ %1411, %1379 ], [ %1427, %1413 ], [ 1.000000e+00, %1226 ]
  %1433 = phi float [ %1369, %1270 ], [ %1412, %1379 ], [ %1428, %1413 ], [ 1.000000e+00, %1226 ]
  %1434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.i32 %1434, 1
  %1436 = and i32 %1435, 1
  %1437 = icmp ne i32 %1436, 0
  %1438 = add i32 %43, 356
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 32
  %1442 = icmp ne i32 %1441, 0
  %1443 = and i1 %1437, %1442
  %1444 = select i1 %1443, float 1.000000e+00, float %1431
  %1445 = select i1 %1443, float 0x3FD3333340000000, float %1432
  %1446 = select i1 %1443, float 0x3FD3333340000000, float %1433
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 32
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1523, label %1451

; <label>:1451                                    ; preds = %1429
  %1452 = add i32 %43, 108
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %43, 380
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = add i32 %1457, 0
  %1459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1459, %dx.types.Handle %74, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = extractvalue %dx.types.ResRet.f32 %1460, 3
  %1465 = and i32 %1454, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = lshr i32 %1454, 8
  %1468 = and i32 %1467, 255
  %1469 = uitofp i32 %1468 to float
  %1470 = lshr i32 %1454, 16
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1472, 0x3F70101000000000
  %1474 = fmul fast float %1461, %1466
  %1475 = fadd fast float %1474, %1469
  %1476 = fmul fast float %1475, 0x3F70101000000000
  %1477 = fadd fast float %1462, -5.000000e-01
  %1478 = fadd fast float %1464, -5.000000e-01
  %1479 = fmul fast float %1477, %1473
  %1480 = fmul fast float %1478, %1473
  %1481 = fadd fast float %1479, 5.000000e-01
  %1482 = fadd fast float %1480, 5.000000e-01
  %1483 = fmul fast float %1481, 2.000000e+00
  %1484 = fadd fast float %1483, -1.000000e+00
  %1485 = fmul fast float %1482, 2.000000e+00
  %1486 = fadd fast float %1485, -1.000000e+00
  %1487 = fadd fast float %1484, %1486
  %1488 = fmul fast float %1487, 5.000000e-01
  %1489 = fsub fast float %1484, %1486
  %1490 = fmul fast float %1489, 5.000000e-01
  %1491 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1492 = fsub fast float 1.000000e+00, %1491
  %1493 = call float @dx.op.unary.f32(i32 6, float %1490)  ; FAbs(value)
  %1494 = fsub fast float %1492, %1493
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1488, float %1490, float %1494, float %1488, float %1490, float %1494)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = call float @dx.op.unary.f32(i32 25, float %1495)  ; Rsqrt(value)
  %1497 = fmul fast float %1488, %1496
  %1498 = fmul fast float %1490, %1496
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 67108864
  %1502 = icmp eq i32 %1501, 0
  br i1 %1502, label %1519, label %1503

; <label>:1503                                    ; preds = %1451
  %1504 = add i32 %43, 296
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 65535
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 65535
  %1512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1511)  ; LegacyF16ToF32(value)
  %1513 = lshr i32 %1506, 16
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = fsub fast float %1476, %1514
  %1516 = fmul fast float %1515, %1508
  %1517 = fadd fast float %1516, %1512
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  br label %1519

; <label>:1519                                    ; preds = %1503, %1451
  %1520 = phi float [ %1518, %1503 ], [ %1476, %1451 ]
  %1521 = call float @dx.op.dot2.f32(i32 54, float %1497, float %1498, float %940, float %941)  ; Dot2(ax,ay,bx,by)
  %1522 = call float @dx.op.dot2.f32(i32 54, float %1497, float %1498, float %942, float %943)  ; Dot2(ax,ay,bx,by)
  br label %1523

; <label>:1523                                    ; preds = %1519, %1429
  %1524 = phi float [ %1520, %1519 ], [ 0x3FD6666660000000, %1429 ]
  %1525 = phi float [ %1521, %1519 ], [ 0.000000e+00, %1429 ]
  %1526 = phi float [ %1522, %1519 ], [ 0.000000e+00, %1429 ]
  %1527 = phi float [ %1463, %1519 ], [ 1.000000e+00, %1429 ]
  %1528 = add i32 %43, 176
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = lshr i32 %1530, 22
  %1532 = shl nuw nsw i32 %1531, 5
  %1533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1532)  ; LegacyF16ToF32(value)
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 64
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1571, label %1538

; <label>:1538                                    ; preds = %1523
  %1539 = add i32 %43, 396
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = add i32 %1541, 0
  %1543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 131072
  %1547 = icmp eq i32 %1546, 0
  %1548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1543, %dx.types.Handle %74, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.ResRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.ResRet.f32 %1548, 2
  %1552 = fmul fast float %1549, %245
  %1553 = fmul fast float %1550, %248
  %1554 = fmul fast float %1551, %251
  br i1 %1547, label %1561, label %1555

; <label>:1555                                    ; preds = %1538
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = fmul fast float %1557, %1552
  %1559 = fmul fast float %1557, %1553
  %1560 = fmul fast float %1557, %1554
  br label %1561

; <label>:1561                                    ; preds = %1555, %1538
  %1562 = phi float [ %1558, %1555 ], [ %1552, %1538 ]
  %1563 = phi float [ %1559, %1555 ], [ %1553, %1538 ]
  %1564 = phi float [ %1560, %1555 ], [ %1554, %1538 ]
  %1565 = fmul fast float %1562, %1533
  %1566 = select i1 %183, float %1565, float %1562
  %1567 = call float @dx.op.dot3.f32(i32 55, float %1566, float %1563, float %1564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1568 = select i1 %183, float 0.000000e+00, float %1562
  %1569 = select i1 %183, float %1567, float %1563
  %1570 = select i1 %183, float 0.000000e+00, float %1564
  br label %1571

; <label>:1571                                    ; preds = %1561, %1523
  %1572 = phi float [ %1568, %1561 ], [ 0.000000e+00, %1523 ]
  %1573 = phi float [ %1569, %1561 ], [ 0.000000e+00, %1523 ]
  %1574 = phi float [ %1570, %1561 ], [ 0.000000e+00, %1523 ]
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 65536
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1589, label %1579

; <label>:1579                                    ; preds = %1571
  %1580 = add i32 %43, 476
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %1582, 0
  %1584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1584, %dx.types.Handle %75, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  br label %1589

; <label>:1589                                    ; preds = %1579, %1571
  %1590 = phi float [ %1586, %1579 ], [ 0.000000e+00, %1571 ]
  %1591 = phi float [ %1587, %1579 ], [ 0.000000e+00, %1571 ]
  %1592 = phi float [ %1588, %1579 ], [ 0.000000e+00, %1571 ]
  %1593 = add i32 %43, 112
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = lshr i32 %1595, 8
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1444, float %1445, float %1446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = fmul fast float %1600, %1601
  %1603 = fadd fast float %1602, %1597
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  br i1 %928, label %1606, label %1617

; <label>:1606                                    ; preds = %1589
  %1607 = fsub fast float 1.000000e+00, %1224
  %1608 = fmul fast float %1607, %913
  %1609 = fmul fast float %1607, %914
  %1610 = fmul fast float %1607, %915
  %1611 = fmul fast float %1607, %916
  %1612 = fmul fast float %1607, %917
  %1613 = fmul fast float %1607, %918
  %1614 = fmul fast float %1607, %919
  %1615 = fmul fast float %1607, %920
  %1616 = fmul fast float %1607, %921
  br label %1617

; <label>:1617                                    ; preds = %1606, %1589
  %1618 = phi float [ %1608, %1606 ], [ %913, %1589 ]
  %1619 = phi float [ %1609, %1606 ], [ %914, %1589 ]
  %1620 = phi float [ %1610, %1606 ], [ %915, %1589 ]
  %1621 = phi float [ %1611, %1606 ], [ %916, %1589 ]
  %1622 = phi float [ %1612, %1606 ], [ %917, %1589 ]
  %1623 = phi float [ %1613, %1606 ], [ %918, %1589 ]
  %1624 = phi float [ %1614, %1606 ], [ %919, %1589 ]
  %1625 = phi float [ %1615, %1606 ], [ %920, %1589 ]
  %1626 = phi float [ %1616, %1606 ], [ %921, %1589 ]
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = and i32 %1628, 3
  %1630 = icmp eq i32 %1629, 3
  br i1 %1630, label %1721, label %1631

; <label>:1631                                    ; preds = %1617
  %1632 = and i32 %1628, 16
  %1633 = icmp ne i32 %1632, 0
  %1634 = select i1 %1633, float %1224, float 0.000000e+00
  %1635 = icmp eq i32 %1629, 0
  br i1 %1635, label %1636, label %1676

; <label>:1636                                    ; preds = %1631
  %1637 = and i32 %1628, 64
  %1638 = icmp ne i32 %1637, 0
  %1639 = select i1 %1638, float %1224, float 0.000000e+00
  %1640 = and i32 %1628, 65536
  %1641 = icmp ne i32 %1640, 0
  %1642 = select i1 %1641, float %1224, float 0.000000e+00
  %1643 = fsub fast float %1444, %1618
  %1644 = fsub fast float %1445, %1619
  %1645 = fsub fast float %1446, %1620
  %1646 = fmul fast float %1634, %1643
  %1647 = fmul fast float %1634, %1644
  %1648 = fmul fast float %1634, %1645
  %1649 = fadd fast float %1646, %1618
  %1650 = fadd fast float %1647, %1619
  %1651 = fadd fast float %1648, %1620
  %1652 = fsub fast float %1430, %922
  %1653 = fmul fast float %1634, %1652
  %1654 = fadd fast float %1653, %922
  %1655 = fsub fast float %1572, %1621
  %1656 = fsub fast float %1573, %1622
  %1657 = fsub fast float %1574, %1623
  %1658 = fmul fast float %1639, %1655
  %1659 = fmul fast float %1639, %1656
  %1660 = fmul fast float %1639, %1657
  %1661 = fadd fast float %1658, %1621
  %1662 = fadd fast float %1659, %1622
  %1663 = fadd fast float %1660, %1623
  %1664 = fsub fast float %1590, %1624
  %1665 = fsub fast float %1591, %1625
  %1666 = fsub fast float %1592, %1626
  %1667 = fmul fast float %1642, %1664
  %1668 = fmul fast float %1642, %1665
  %1669 = fmul fast float %1642, %1666
  %1670 = fadd fast float %1667, %1624
  %1671 = fadd fast float %1668, %1625
  %1672 = fadd fast float %1669, %1626
  %1673 = fsub fast float %1605, %926
  %1674 = fmul fast float %1634, %1673
  %1675 = fadd fast float %1674, %926
  br label %1721

; <label>:1676                                    ; preds = %1631
  %1677 = icmp eq i32 %1629, 1
  br i1 %1677, label %1678, label %1691

; <label>:1678                                    ; preds = %1676
  %1679 = fadd fast float %1444, -1.000000e+00
  %1680 = fadd fast float %1445, -1.000000e+00
  %1681 = fadd fast float %1446, -1.000000e+00
  %1682 = fmul fast float %1634, %1679
  %1683 = fmul fast float %1634, %1680
  %1684 = fmul fast float %1634, %1681
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fadd fast float %1684, 1.000000e+00
  %1688 = fmul fast float %1685, %1618
  %1689 = fmul fast float %1686, %1619
  %1690 = fmul fast float %1687, %1620
  br label %1721

; <label>:1691                                    ; preds = %1676
  %1692 = icmp eq i32 %1629, 2
  br i1 %1692, label %1693, label %1721

; <label>:1693                                    ; preds = %1691
  %1694 = call float @dx.op.unary.f32(i32 24, float %1444)  ; Sqrt(value)
  %1695 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1696 = call float @dx.op.unary.f32(i32 24, float %1446)  ; Sqrt(value)
  %1697 = fadd fast float %1694, -5.000000e-01
  %1698 = fadd fast float %1695, -5.000000e-01
  %1699 = fadd fast float %1696, -5.000000e-01
  %1700 = fmul fast float %1697, %1634
  %1701 = fmul fast float %1698, %1634
  %1702 = fmul fast float %1699, %1634
  %1703 = fadd fast float %1700, 5.000000e-01
  %1704 = fadd fast float %1701, 5.000000e-01
  %1705 = fadd fast float %1702, 5.000000e-01
  %1706 = fmul fast float %1703, 2.000000e+00
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = fmul fast float %1707, %1618
  %1709 = fadd fast float %1708, %1706
  %1710 = fmul fast float %1709, %1618
  %1711 = fmul fast float %1704, 2.000000e+00
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = fmul fast float %1712, %1619
  %1714 = fadd fast float %1713, %1711
  %1715 = fmul fast float %1714, %1619
  %1716 = fmul fast float %1705, 2.000000e+00
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1717, %1620
  %1719 = fadd fast float %1718, %1716
  %1720 = fmul fast float %1719, %1620
  br label %1721

; <label>:1721                                    ; preds = %1693, %1691, %1678, %1636, %1617
  %1722 = phi float [ %1618, %1617 ], [ %1710, %1693 ], [ %1618, %1691 ], [ %1688, %1678 ], [ %1649, %1636 ]
  %1723 = phi float [ %1619, %1617 ], [ %1715, %1693 ], [ %1619, %1691 ], [ %1689, %1678 ], [ %1650, %1636 ]
  %1724 = phi float [ %1620, %1617 ], [ %1720, %1693 ], [ %1620, %1691 ], [ %1690, %1678 ], [ %1651, %1636 ]
  %1725 = phi float [ %1621, %1617 ], [ %1621, %1693 ], [ %1621, %1691 ], [ %1621, %1678 ], [ %1661, %1636 ]
  %1726 = phi float [ %1622, %1617 ], [ %1622, %1693 ], [ %1622, %1691 ], [ %1622, %1678 ], [ %1662, %1636 ]
  %1727 = phi float [ %1623, %1617 ], [ %1623, %1693 ], [ %1623, %1691 ], [ %1623, %1678 ], [ %1663, %1636 ]
  %1728 = phi float [ %1624, %1617 ], [ %1624, %1693 ], [ %1624, %1691 ], [ %1624, %1678 ], [ %1670, %1636 ]
  %1729 = phi float [ %1625, %1617 ], [ %1625, %1693 ], [ %1625, %1691 ], [ %1625, %1678 ], [ %1671, %1636 ]
  %1730 = phi float [ %1626, %1617 ], [ %1626, %1693 ], [ %1626, %1691 ], [ %1626, %1678 ], [ %1672, %1636 ]
  %1731 = phi float [ %922, %1617 ], [ %922, %1693 ], [ %922, %1691 ], [ %922, %1678 ], [ %1654, %1636 ]
  %1732 = phi float [ %926, %1617 ], [ %926, %1693 ], [ %926, %1691 ], [ %926, %1678 ], [ %1675, %1636 ]
  %1733 = and i32 %1628, 12
  %1734 = icmp eq i32 %1733, 12
  br i1 %1734, label %1807, label %1735

; <label>:1735                                    ; preds = %1721
  %1736 = and i32 %1628, 2097184
  %1737 = icmp eq i32 %1736, 2097184
  %1738 = select i1 %1737, float %1224, float 0.000000e+00
  %1739 = and i32 %1628, 4194336
  %1740 = icmp eq i32 %1739, 4194336
  %1741 = select i1 %1740, float %1224, float 0.000000e+00
  %1742 = and i32 %1628, 8388640
  %1743 = icmp eq i32 %1742, 8388640
  %1744 = select i1 %1743, float %1224, float 0.000000e+00
  %1745 = icmp eq i32 %1733, 0
  br i1 %1745, label %1746, label %1759

; <label>:1746                                    ; preds = %1735
  %1747 = fsub fast float %1525, %911
  %1748 = fsub fast float %1526, %912
  %1749 = fmul fast float %1738, %1747
  %1750 = fmul fast float %1738, %1748
  %1751 = fadd fast float %1749, %911
  %1752 = fadd fast float %1750, %912
  %1753 = fsub fast float %1527, %925
  %1754 = fmul fast float %1741, %1753
  %1755 = fadd fast float %1754, %925
  %1756 = fsub fast float %1524, %924
  %1757 = fmul fast float %1744, %1756
  %1758 = fadd fast float %1757, %924
  br label %1807

; <label>:1759                                    ; preds = %1735
  %1760 = icmp eq i32 %1733, 4
  br i1 %1760, label %1761, label %1793

; <label>:1761                                    ; preds = %1759
  %1762 = fmul fast float %1738, %1525
  %1763 = fmul fast float %1738, %1526
  %1764 = fadd fast float %1762, %911
  %1765 = fadd fast float %1763, %912
  %1766 = call float @dx.op.binary.f32(i32 36, float %925, float %1527)  ; FMin(a,b)
  %1767 = fsub fast float %1766, %925
  %1768 = fmul fast float %1767, %1741
  %1769 = fadd fast float %1768, %925
  %1770 = fadd fast float %1524, %924
  %1771 = fmul fast float %1770, 0x3FF337FAE0000000
  %1772 = fmul fast float %924, %924
  %1773 = fmul fast float %1524, %1524
  %1774 = fadd fast float %1773, %1772
  %1775 = fmul fast float %1774, 0x3FE5152B00000000
  %1776 = fmul fast float %924, 0xBFCC1F85E0000000
  %1777 = fmul fast float %1776, %1524
  %1778 = fadd fast float %1777, 0xBFE1363700000000
  %1779 = fadd fast float %1778, %1771
  %1780 = fsub fast float %1779, %1775
  %1781 = fmul fast float %1770, 0x3FBA6F0D00000000
  %1782 = fmul fast float %1774, 0x3FD0432880000000
  %1783 = fmul fast float %924, 0xBFEF110800000000
  %1784 = fmul fast float %1783, %1524
  %1785 = fadd fast float %1784, 1.000000e+00
  %1786 = fsub fast float %1785, %1781
  %1787 = fadd fast float %1786, %1782
  %1788 = fdiv fast float %1780, %1787
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fsub fast float %1789, %924
  %1791 = fmul fast float %1790, %1744
  %1792 = fadd fast float %1791, %924
  br label %1807

; <label>:1793                                    ; preds = %1759
  %1794 = icmp eq i32 %1733, 8
  br i1 %1794, label %1795, label %1807

; <label>:1795                                    ; preds = %1793
  %1796 = fmul fast float %1738, %1525
  %1797 = fmul fast float %1738, %1526
  %1798 = fadd fast float %1796, %911
  %1799 = fadd fast float %1797, %912
  %1800 = call float @dx.op.binary.f32(i32 36, float %925, float %1527)  ; FMin(a,b)
  %1801 = fsub fast float %1800, %925
  %1802 = fmul fast float %1801, %1741
  %1803 = fadd fast float %1802, %925
  %1804 = fsub fast float %1524, %924
  %1805 = fmul fast float %1744, %1804
  %1806 = fadd fast float %1805, %924
  br label %1807

; <label>:1807                                    ; preds = %1795, %1793, %1761, %1746, %1721, %1223, %927, %910
  %1808 = phi float [ %911, %1721 ], [ %911, %1223 ], [ %911, %910 ], [ %1798, %1795 ], [ %911, %1793 ], [ %1764, %1761 ], [ %1751, %1746 ], [ %911, %927 ]
  %1809 = phi float [ %912, %1721 ], [ %912, %1223 ], [ %912, %910 ], [ %1799, %1795 ], [ %912, %1793 ], [ %1765, %1761 ], [ %1752, %1746 ], [ %912, %927 ]
  %1810 = phi float [ %1722, %1721 ], [ %913, %1223 ], [ %913, %910 ], [ %1722, %1795 ], [ %1722, %1793 ], [ %1722, %1761 ], [ %1722, %1746 ], [ %913, %927 ]
  %1811 = phi float [ %1723, %1721 ], [ %914, %1223 ], [ %914, %910 ], [ %1723, %1795 ], [ %1723, %1793 ], [ %1723, %1761 ], [ %1723, %1746 ], [ %914, %927 ]
  %1812 = phi float [ %1724, %1721 ], [ %915, %1223 ], [ %915, %910 ], [ %1724, %1795 ], [ %1724, %1793 ], [ %1724, %1761 ], [ %1724, %1746 ], [ %915, %927 ]
  %1813 = phi float [ %1725, %1721 ], [ %916, %1223 ], [ %916, %910 ], [ %1725, %1795 ], [ %1725, %1793 ], [ %1725, %1761 ], [ %1725, %1746 ], [ %916, %927 ]
  %1814 = phi float [ %1726, %1721 ], [ %917, %1223 ], [ %917, %910 ], [ %1726, %1795 ], [ %1726, %1793 ], [ %1726, %1761 ], [ %1726, %1746 ], [ %917, %927 ]
  %1815 = phi float [ %1727, %1721 ], [ %918, %1223 ], [ %918, %910 ], [ %1727, %1795 ], [ %1727, %1793 ], [ %1727, %1761 ], [ %1727, %1746 ], [ %918, %927 ]
  %1816 = phi float [ %1728, %1721 ], [ %919, %1223 ], [ %919, %910 ], [ %1728, %1795 ], [ %1728, %1793 ], [ %1728, %1761 ], [ %1728, %1746 ], [ %919, %927 ]
  %1817 = phi float [ %1729, %1721 ], [ %920, %1223 ], [ %920, %910 ], [ %1729, %1795 ], [ %1729, %1793 ], [ %1729, %1761 ], [ %1729, %1746 ], [ %920, %927 ]
  %1818 = phi float [ %1730, %1721 ], [ %921, %1223 ], [ %921, %910 ], [ %1730, %1795 ], [ %1730, %1793 ], [ %1730, %1761 ], [ %1730, %1746 ], [ %921, %927 ]
  %1819 = phi float [ %1731, %1721 ], [ %922, %1223 ], [ %922, %910 ], [ %1731, %1795 ], [ %1731, %1793 ], [ %1731, %1761 ], [ %1731, %1746 ], [ %922, %927 ]
  %1820 = phi float [ %924, %1721 ], [ %924, %1223 ], [ %924, %910 ], [ %1806, %1795 ], [ %924, %1793 ], [ %1792, %1761 ], [ %1758, %1746 ], [ %924, %927 ]
  %1821 = phi float [ %925, %1721 ], [ %925, %1223 ], [ %925, %910 ], [ %1803, %1795 ], [ %925, %1793 ], [ %1769, %1761 ], [ %1755, %1746 ], [ %925, %927 ]
  %1822 = phi float [ %1732, %1721 ], [ %926, %1223 ], [ %926, %910 ], [ %1732, %1795 ], [ %1732, %1793 ], [ %1732, %1761 ], [ %1732, %1746 ], [ %926, %927 ]
  br i1 %372, label %2703, label %1823

; <label>:1823                                    ; preds = %1807
  %1824 = icmp ult i32 %425, 3
  %1825 = add i32 %43, 56
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = add i32 %43, 60
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = or i32 %1830, %1827
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %2703, label %1833

; <label>:1833                                    ; preds = %1823
  %1834 = and i32 %1827, 262144
  %1835 = icmp ne i32 %1834, 0
  %1836 = select i1 %1835, float %46, float 1.000000e+00
  %1837 = select i1 %1835, float %47, float 0.000000e+00
  %1838 = select i1 %1835, float %48, float 0.000000e+00
  %1839 = select i1 %1835, float %49, float 1.000000e+00
  %1840 = select i1 %1835, float %50, float %66
  %1841 = select i1 %1835, float %51, float %67
  %1842 = add i32 %43, 316
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = lshr i32 %1844, 16
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = fmul fast float %1846, 0x3F50624DE0000000
  %1848 = add i32 %43, 120
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = lshr i32 %1850, 16
  %1852 = and i32 %1851, 255
  %1853 = lshr i32 %1850, 24
  %1854 = add i32 %43, 324
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 65535
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = lshr i32 %1856, 16
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = add i32 %43, 64
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = lshr i32 %1863, 22
  %1865 = shl nuw nsw i32 %1864, 5
  %1866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1865)  ; LegacyF16ToF32(value)
  %1867 = shl i32 %1863, 4
  %1868 = and i32 %1867, 32752
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = lshr i32 %1863, 7
  %1871 = and i32 %1870, 32752
  %1872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1871)  ; LegacyF16ToF32(value)
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1875 = fmul fast float %1874, 1.000000e+03
  %1876 = fmul fast float %322, %1875
  %1877 = call float @dx.op.unary.f32(i32 22, float %1876)  ; Frc(value)
  %1878 = fadd fast float %1877, %312
  %1879 = fmul fast float %323, %1875
  %1880 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1881 = fadd fast float %1880, %314
  %1882 = fmul fast float %1847, %1875
  %1883 = call float @dx.op.unary.f32(i32 22, float %1882)  ; Frc(value)
  %1884 = fmul fast float %1883, 0x401921FB60000000
  %1885 = fadd fast float %1884, %1866
  %1886 = call float @dx.op.unary.f32(i32 13, float %1885)  ; Sin(value)
  %1887 = call float @dx.op.unary.f32(i32 12, float %1885)  ; Cos(value)
  %1888 = fsub fast float -0.000000e+00, %1886
  %1889 = fadd fast float %1840, -5.000000e-01
  %1890 = fadd fast float %1841, -5.000000e-01
  %1891 = fmul fast float %1858, %1889
  %1892 = fmul fast float %1860, %1890
  %1893 = fadd fast float %1891, 5.000000e-01
  %1894 = fadd fast float %1892, 5.000000e-01
  %1895 = fmul fast float %1869, %1893
  %1896 = fmul fast float %1872, %1894
  %1897 = fmul fast float %1887, %1895
  %1898 = call float @dx.op.tertiary.f32(i32 46, float %1888, float %1896, float %1897)  ; FMad(a,b,c)
  %1899 = fmul fast float %1886, %1895
  %1900 = call float @dx.op.tertiary.f32(i32 46, float %1887, float %1896, float %1899)  ; FMad(a,b,c)
  %1901 = fadd fast float %1878, %1898
  %1902 = fadd fast float %1881, %1900
  %1903 = icmp ugt i32 %1852, 1
  %1904 = icmp ugt i32 %1850, 33554431
  %1905 = or i1 %1904, %1903
  br i1 %1905, label %1906, label %1931

; <label>:1906                                    ; preds = %1833
  %1907 = add i32 %43, 260
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = lshr i32 %1909, 16
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = fmul fast float %1874, %1911
  %1913 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1914 = mul nuw nsw i32 %1852, %1853
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1913, %1915
  %1917 = call float @dx.op.unary.f32(i32 27, float %1916)  ; Round_ni(value)
  %1918 = fptoui float %1917 to i32
  %1919 = urem i32 %1918, %1852
  %1920 = udiv i32 %1918, %1853
  %1921 = call float @dx.op.unary.f32(i32 22, float %1901)  ; Frc(value)
  %1922 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1923 = uitofp i32 %1919 to float
  %1924 = uitofp i32 %1920 to float
  %1925 = fadd fast float %1921, %1923
  %1926 = fadd fast float %1922, %1924
  %1927 = uitofp i32 %1852 to float
  %1928 = uitofp i32 %1853 to float
  %1929 = fdiv fast float %1925, %1927
  %1930 = fdiv fast float %1926, %1928
  br label %1931

; <label>:1931                                    ; preds = %1906, %1833
  %1932 = phi float [ %1929, %1906 ], [ %1901, %1833 ]
  %1933 = phi float [ %1930, %1906 ], [ %1902, %1833 ]
  %1934 = and i32 %1827, 16777216
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %2045, label %1936

; <label>:1936                                    ; preds = %1931
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1941 = fadd fast float %1938, %141
  %1942 = fadd fast float %1939, %142
  %1943 = fadd fast float %1940, %143
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = icmp eq i32 %44, 65535
  br i1 %1947, label %2042, label %1948

; <label>:1948                                    ; preds = %1936
  %1949 = lshr i32 %44, 1
  %1950 = shl i32 %1949, 2
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = and i32 %44, 1
  %1954 = icmp ne i32 %1953, 0
  %1955 = lshr i32 %1952, 16
  %1956 = and i32 %1952, 65535
  %1957 = select i1 %1954, i32 %1955, i32 %1956
  %1958 = icmp eq i32 %1957, 65535
  br i1 %1958, label %2038, label %1959

; <label>:1959                                    ; preds = %1948
  %1960 = mul nuw nsw i32 %1957, 40
  %1961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.ResRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1961, 2
  %1965 = add nuw nsw i32 %1960, 12
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = add nuw nsw i32 %1960, 24
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1975 = add nuw nsw i32 %1960, 36
  %1976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = fsub fast float %1941, %1962
  %1979 = fsub fast float %1942, %1963
  %1980 = fsub fast float %1943, %1964
  %1981 = fmul fast float %1977, %1978
  %1982 = fmul fast float %1977, %1979
  %1983 = fmul fast float %1977, %1980
  %1984 = call float @dx.op.unary.f32(i32 27, float %1981)  ; Round_ni(value)
  %1985 = call float @dx.op.unary.f32(i32 27, float %1982)  ; Round_ni(value)
  %1986 = call float @dx.op.unary.f32(i32 27, float %1983)  ; Round_ni(value)
  %1987 = fadd fast float %1984, 5.000000e-01
  %1988 = fadd fast float %1985, 5.000000e-01
  %1989 = fadd fast float %1986, 5.000000e-01
  %1990 = fmul fast float %1987, %1967
  %1991 = fmul fast float %1988, %1968
  %1992 = fmul fast float %1989, %1969
  %1993 = shl i32 %44, 2
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = add i32 %1995, 0
  %1997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1998 = call float @dx.op.unary.f32(i32 22, float %1990)  ; Frc(value)
  %1999 = call float @dx.op.unary.f32(i32 22, float %1991)  ; Frc(value)
  %2000 = call float @dx.op.unary.f32(i32 22, float %1992)  ; Frc(value)
  %2001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1997, %dx.types.Handle %40, float %1998, float %1999, float %2000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = extractvalue %dx.types.ResRet.f32 %2001, 1
  %2004 = extractvalue %dx.types.ResRet.f32 %2001, 2
  %2005 = fmul fast float %2002, 1.023000e+03
  %2006 = fmul fast float %2003, 1.023000e+03
  %2007 = fmul fast float %2004, 1.023000e+03
  %2008 = fadd fast float %2005, 5.000000e-01
  %2009 = fadd fast float %2006, 5.000000e-01
  %2010 = fadd fast float %2007, 5.000000e-01
  %2011 = call float @dx.op.unary.f32(i32 27, float %2008)  ; Round_ni(value)
  %2012 = call float @dx.op.unary.f32(i32 27, float %2009)  ; Round_ni(value)
  %2013 = call float @dx.op.unary.f32(i32 27, float %2010)  ; Round_ni(value)
  %2014 = fsub fast float %1981, %1984
  %2015 = fsub fast float %1982, %1985
  %2016 = fsub fast float %1983, %1986
  %2017 = fmul fast float %2014, 7.500000e-01
  %2018 = fmul fast float %2015, 7.500000e-01
  %2019 = fmul fast float %2016, 7.500000e-01
  %2020 = fadd fast float %1984, 1.250000e-01
  %2021 = fadd fast float %2020, %2017
  %2022 = fadd fast float %2021, %2011
  %2023 = fadd fast float %1985, 1.250000e-01
  %2024 = fadd fast float %2023, %2018
  %2025 = fadd fast float %2024, %2012
  %2026 = fadd fast float %1986, 1.250000e-01
  %2027 = fadd fast float %2026, %2019
  %2028 = fadd fast float %2027, %2013
  %2029 = fmul fast float %2022, %1972
  %2030 = fmul fast float %2025, %1973
  %2031 = fmul fast float %2028, %1974
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %2033, 0
  %2035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2035, %dx.types.Handle %38, float %2029, float %2030, float %2031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  br label %2038

; <label>:2038                                    ; preds = %1959, %1948
  %2039 = phi float [ %2037, %1959 ], [ -1.000000e+00, %1948 ]
  %2040 = fadd fast float %2039, %1946
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  br label %2042

; <label>:2042                                    ; preds = %2038, %1936
  %2043 = phi float [ %2041, %2038 ], [ %1946, %1936 ]
  %2044 = fmul fast float %2043, %421
  br label %2045

; <label>:2045                                    ; preds = %2042, %1931
  %2046 = phi float [ %2044, %2042 ], [ %421, %1931 ]
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = and i32 %2048, 256
  %2050 = icmp eq i32 %2049, 0
  br i1 %2050, label %2097, label %2051

; <label>:2051                                    ; preds = %2045
  %2052 = add i32 %43, 432
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %2054, 0
  %2056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2056, %dx.types.Handle %75, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = add i32 %43, 132
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = shl i32 %2061, 4
  %2063 = and i32 %2062, 32752
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = lshr i32 %2061, 7
  %2066 = and i32 %2065, 32752
  %2067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2066)  ; LegacyF16ToF32(value)
  %2068 = fsub fast float 1.000000e+00, %2046
  %2069 = call float @dx.op.binary.f32(i32 35, float %2068, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2070 = bitcast float %2046 to i32
  %2071 = sitofp i32 %2070 to float
  %2072 = fadd fast float %2071, 0xC1CFBF8940000000
  %2073 = fmul fast float %2067, %2072
  %2074 = fadd fast float %2073, 0x41CFBF8940000000
  %2075 = fptosi float %2074 to i32
  %2076 = bitcast i32 %2075 to float
  %2077 = bitcast float %2069 to i32
  %2078 = sitofp i32 %2077 to float
  %2079 = fadd fast float %2078, 0xC1CFBF8940000000
  %2080 = fmul fast float %2079, %2067
  %2081 = fadd fast float %2080, 0x41CFBF8940000000
  %2082 = fptosi float %2081 to i32
  %2083 = bitcast i32 %2082 to float
  %2084 = fmul fast float %2076, %2064
  %2085 = fmul fast float %2083, %2064
  %2086 = fsub fast float %2069, %2084
  %2087 = fadd fast float %2085, %2069
  %2088 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2089 = call float @dx.op.unary.f32(i32 7, float %2087)  ; Saturate(value)
  %2090 = fsub fast float %2058, %2088
  %2091 = fsub fast float %2089, %2088
  %2092 = bitcast float %2091 to i32
  %2093 = sub nsw i32 2129859010, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2094, %2090
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  br label %2097

; <label>:2097                                    ; preds = %2051, %2045
  %2098 = phi float [ %2096, %2051 ], [ %2046, %2045 ]
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 128
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2119, label %2103

; <label>:2103                                    ; preds = %2097
  %2104 = add i32 %43, 416
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = add i32 %2106, 0
  %2108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2108, %dx.types.Handle %75, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = and i32 %2112, 524288
  %2114 = icmp ne i32 %2113, 0
  %2115 = fcmp fast ogt float %2110, 0x3FE0101020000000
  %2116 = select i1 %2115, float 1.000000e+00, float 0.000000e+00
  %2117 = select i1 %2114, float %2116, float %2110
  %2118 = fmul fast float %2117, %2098
  br label %2119

; <label>:2119                                    ; preds = %2103, %2097
  %2120 = phi float [ %2118, %2103 ], [ %2098, %2097 ]
  %2121 = fcmp fast ult float %2120, 0x3F70101020000000
  br i1 %2121, label %2703, label %2122

; <label>:2122                                    ; preds = %2119
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = and i32 %2124, 16
  %2126 = icmp eq i32 %2125, 0
  br i1 %2126, label %2325, label %2127

; <label>:2127                                    ; preds = %2122
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = add i32 %43, 368
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = add i32 %2132, 0
  %2134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2134, %dx.types.Handle %74, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2139 = extractvalue %dx.types.ResRet.f32 %2135, 3
  %2140 = and i32 %2129, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = lshr i32 %2129, 8
  %2143 = and i32 %2142, 255
  %2144 = uitofp i32 %2143 to float
  %2145 = fmul fast float %2139, %2141
  %2146 = fadd fast float %2145, %2144
  %2147 = fmul fast float %2146, 0x3F70101000000000
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 512
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2160, label %2152

; <label>:2152                                    ; preds = %2127
  %2153 = add i32 %43, 448
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %2155, 0
  %2157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2157, %dx.types.Handle %75, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  br label %2160

; <label>:2160                                    ; preds = %2152, %2127
  %2161 = phi float [ %2159, %2152 ], [ 1.000000e+00, %2127 ]
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 33554432
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2272, label %2166

; <label>:2166                                    ; preds = %2160
  %2167 = add i32 %43, 256
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 65535
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = lshr i32 %2169, 16
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = add i32 %43, 260
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 65535
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 24
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = and i32 %2180, 255
  %2185 = uitofp i32 %2184 to float
  %2186 = fmul fast float %2185, 0x3F70101020000000
  %2187 = lshr i32 %2180, 8
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2189, 0x3F70101020000000
  %2191 = lshr i32 %2180, 16
  %2192 = and i32 %2191, 255
  %2193 = uitofp i32 %2192 to float
  %2194 = fmul fast float %2193, 0x3F70101020000000
  %2195 = add i32 %43, 252
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = lshr i32 %2197, 24
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F70101020000000
  %2201 = and i32 %2197, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 0x3F70101020000000
  %2204 = lshr i32 %2197, 8
  %2205 = and i32 %2204, 255
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2206, 0x3F70101020000000
  %2208 = lshr i32 %2197, 16
  %2209 = and i32 %2208, 255
  %2210 = uitofp i32 %2209 to float
  %2211 = fmul fast float %2210, 0x3F70101020000000
  %2212 = bitcast float %2136 to i32
  %2213 = ashr i32 %2212, 1
  %2214 = sub nsw i32 1597463174, %2213
  %2215 = bitcast i32 %2214 to float
  %2216 = fmul fast float %2136, 5.000000e-01
  %2217 = fmul fast float %2215, %2215
  %2218 = fmul fast float %2217, %2216
  %2219 = fsub fast float 1.500000e+00, %2218
  %2220 = fmul fast float %2215, %2136
  %2221 = fmul fast float %2220, %2219
  %2222 = bitcast float %2137 to i32
  %2223 = ashr i32 %2222, 1
  %2224 = sub nsw i32 1597463174, %2223
  %2225 = bitcast i32 %2224 to float
  %2226 = fmul fast float %2137, 5.000000e-01
  %2227 = fmul fast float %2225, %2225
  %2228 = fmul fast float %2227, %2226
  %2229 = fsub fast float 1.500000e+00, %2228
  %2230 = fmul fast float %2225, %2137
  %2231 = fmul fast float %2230, %2229
  %2232 = bitcast float %2138 to i32
  %2233 = ashr i32 %2232, 1
  %2234 = sub nsw i32 1597463174, %2233
  %2235 = bitcast i32 %2234 to float
  %2236 = fmul fast float %2138, 5.000000e-01
  %2237 = fmul fast float %2235, %2235
  %2238 = fmul fast float %2237, %2236
  %2239 = fsub fast float 1.500000e+00, %2238
  %2240 = fmul fast float %2235, %2138
  %2241 = fmul fast float %2240, %2239
  %2242 = fsub fast float %2221, %2203
  %2243 = fsub fast float %2231, %2207
  %2244 = fsub fast float %2241, %2211
  %2245 = fmul fast float %2242, %2171
  %2246 = fmul fast float %2243, %2173
  %2247 = fmul fast float %2244, %2178
  %2248 = fadd fast float %2245, %2186
  %2249 = fadd fast float %2246, %2190
  %2250 = fadd fast float %2247, %2194
  %2251 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2253 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2254 = fmul fast float %2251, %2251
  %2255 = fmul fast float %2252, %2252
  %2256 = fmul fast float %2253, %2253
  %2257 = fsub fast float %2254, %2136
  %2258 = fsub fast float %2255, %2137
  %2259 = fsub fast float %2256, %2138
  %2260 = fmul fast float %2257, %2161
  %2261 = fmul fast float %2258, %2161
  %2262 = fmul fast float %2259, %2161
  %2263 = fadd fast float %2260, %2136
  %2264 = fadd fast float %2261, %2137
  %2265 = fadd fast float %2262, %2138
  %2266 = fadd fast float %2183, %2147
  %2267 = fsub fast float %2266, %2200
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fsub fast float %2268, %2147
  %2270 = fmul fast float %2269, %2161
  %2271 = fadd fast float %2270, %2147
  br label %2325

; <label>:2272                                    ; preds = %2160
  %2273 = and i32 %2163, 134217728
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2309, label %2275

; <label>:2275                                    ; preds = %2272
  %2276 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2277 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2278 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2279 = fadd fast float %2276, -5.000000e-01
  %2280 = fadd fast float %2277, -5.000000e-01
  %2281 = fadd fast float %2278, -5.000000e-01
  %2282 = fmul fast float %2279, %2161
  %2283 = fmul fast float %2280, %2161
  %2284 = fmul fast float %2281, %2161
  %2285 = fadd fast float %2282, 5.000000e-01
  %2286 = fadd fast float %2283, 5.000000e-01
  %2287 = fadd fast float %2284, 5.000000e-01
  %2288 = call float @dx.op.unary.f32(i32 24, float %2136)  ; Sqrt(value)
  %2289 = call float @dx.op.unary.f32(i32 24, float %2137)  ; Sqrt(value)
  %2290 = call float @dx.op.unary.f32(i32 24, float %2138)  ; Sqrt(value)
  %2291 = fmul fast float %2285, 2.000000e+00
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = fmul fast float %2292, %2288
  %2294 = fadd fast float %2293, %2291
  %2295 = fmul fast float %2294, %2288
  %2296 = fmul fast float %2286, 2.000000e+00
  %2297 = fsub fast float 1.000000e+00, %2296
  %2298 = fmul fast float %2297, %2289
  %2299 = fadd fast float %2298, %2296
  %2300 = fmul fast float %2299, %2289
  %2301 = fmul fast float %2287, 2.000000e+00
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul fast float %2302, %2290
  %2304 = fadd fast float %2303, %2301
  %2305 = fmul fast float %2304, %2290
  %2306 = fmul fast float %2295, %2295
  %2307 = fmul fast float %2300, %2300
  %2308 = fmul fast float %2305, %2305
  br label %2325

; <label>:2309                                    ; preds = %2272
  %2310 = fmul fast float %299, %299
  %2311 = fmul fast float %303, %303
  %2312 = fmul fast float %307, %307
  %2313 = fadd fast float %2310, -1.000000e+00
  %2314 = fadd fast float %2311, -1.000000e+00
  %2315 = fadd fast float %2312, -1.000000e+00
  %2316 = fmul fast float %2161, %2313
  %2317 = fmul fast float %2161, %2314
  %2318 = fmul fast float %2161, %2315
  %2319 = fadd fast float %2316, 1.000000e+00
  %2320 = fadd fast float %2317, 1.000000e+00
  %2321 = fadd fast float %2318, 1.000000e+00
  %2322 = fmul fast float %2319, %2136
  %2323 = fmul fast float %2320, %2137
  %2324 = fmul fast float %2321, %2138
  br label %2325

; <label>:2325                                    ; preds = %2309, %2275, %2166, %2122
  %2326 = phi float [ %2271, %2166 ], [ %2147, %2275 ], [ %2147, %2309 ], [ 0x3FA23C0BE0000000, %2122 ]
  %2327 = phi float [ %2263, %2166 ], [ %2306, %2275 ], [ %2322, %2309 ], [ 1.000000e+00, %2122 ]
  %2328 = phi float [ %2264, %2166 ], [ %2307, %2275 ], [ %2323, %2309 ], [ 1.000000e+00, %2122 ]
  %2329 = phi float [ %2265, %2166 ], [ %2308, %2275 ], [ %2324, %2309 ], [ 1.000000e+00, %2122 ]
  %2330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.i32 %2330, 1
  %2332 = and i32 %2331, 1
  %2333 = icmp ne i32 %2332, 0
  %2334 = add i32 %43, 356
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 32
  %2338 = icmp ne i32 %2337, 0
  %2339 = and i1 %2333, %2338
  %2340 = select i1 %2339, float 1.000000e+00, float %2327
  %2341 = select i1 %2339, float 0x3FD3333340000000, float %2328
  %2342 = select i1 %2339, float 0x3FD3333340000000, float %2329
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 32
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2419, label %2347

; <label>:2347                                    ; preds = %2325
  %2348 = add i32 %43, 124
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %43, 384
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = add i32 %2353, 0
  %2355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2355, %dx.types.Handle %74, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.ResRet.f32 %2356, 3
  %2361 = and i32 %2350, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = lshr i32 %2350, 8
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = lshr i32 %2350, 16
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101000000000
  %2370 = fmul fast float %2357, %2362
  %2371 = fadd fast float %2370, %2365
  %2372 = fmul fast float %2371, 0x3F70101000000000
  %2373 = fadd fast float %2358, -5.000000e-01
  %2374 = fadd fast float %2360, -5.000000e-01
  %2375 = fmul fast float %2373, %2369
  %2376 = fmul fast float %2374, %2369
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fadd fast float %2376, 5.000000e-01
  %2379 = fmul fast float %2377, 2.000000e+00
  %2380 = fadd fast float %2379, -1.000000e+00
  %2381 = fmul fast float %2378, 2.000000e+00
  %2382 = fadd fast float %2381, -1.000000e+00
  %2383 = fadd fast float %2380, %2382
  %2384 = fmul fast float %2383, 5.000000e-01
  %2385 = fsub fast float %2380, %2382
  %2386 = fmul fast float %2385, 5.000000e-01
  %2387 = call float @dx.op.unary.f32(i32 6, float %2384)  ; FAbs(value)
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = call float @dx.op.unary.f32(i32 6, float %2386)  ; FAbs(value)
  %2390 = fsub fast float %2388, %2389
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2384, float %2386, float %2390, float %2384, float %2386, float %2390)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = call float @dx.op.unary.f32(i32 25, float %2391)  ; Rsqrt(value)
  %2393 = fmul fast float %2384, %2392
  %2394 = fmul fast float %2386, %2392
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = and i32 %2396, 67108864
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2415, label %2399

; <label>:2399                                    ; preds = %2347
  %2400 = add i32 %43, 312
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 65535
  %2404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2403)  ; LegacyF16ToF32(value)
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 65535
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = lshr i32 %2402, 16
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = fsub fast float %2372, %2410
  %2412 = fmul fast float %2411, %2404
  %2413 = fadd fast float %2412, %2408
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  br label %2415

; <label>:2415                                    ; preds = %2399, %2347
  %2416 = phi float [ %2414, %2399 ], [ %2372, %2347 ]
  %2417 = call float @dx.op.dot2.f32(i32 54, float %2393, float %2394, float %1836, float %1837)  ; Dot2(ax,ay,bx,by)
  %2418 = call float @dx.op.dot2.f32(i32 54, float %2393, float %2394, float %1838, float %1839)  ; Dot2(ax,ay,bx,by)
  br label %2419

; <label>:2419                                    ; preds = %2415, %2325
  %2420 = phi float [ %2416, %2415 ], [ 0x3FD6666660000000, %2325 ]
  %2421 = phi float [ %2417, %2415 ], [ 0.000000e+00, %2325 ]
  %2422 = phi float [ %2418, %2415 ], [ 0.000000e+00, %2325 ]
  %2423 = phi float [ %2359, %2415 ], [ 1.000000e+00, %2325 ]
  %2424 = add i32 %43, 192
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = lshr i32 %2426, 22
  %2428 = shl nuw nsw i32 %2427, 5
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 64
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2467, label %2434

; <label>:2434                                    ; preds = %2419
  %2435 = add i32 %43, 400
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %2437, 0
  %2439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 131072
  %2443 = icmp eq i32 %2442, 0
  %2444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2439, %dx.types.Handle %74, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = fmul fast float %2445, %287
  %2449 = fmul fast float %2446, %290
  %2450 = fmul fast float %2447, %293
  br i1 %2443, label %2457, label %2451

; <label>:2451                                    ; preds = %2434
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 0
  %2454 = fmul fast float %2453, %2448
  %2455 = fmul fast float %2453, %2449
  %2456 = fmul fast float %2453, %2450
  br label %2457

; <label>:2457                                    ; preds = %2451, %2434
  %2458 = phi float [ %2454, %2451 ], [ %2448, %2434 ]
  %2459 = phi float [ %2455, %2451 ], [ %2449, %2434 ]
  %2460 = phi float [ %2456, %2451 ], [ %2450, %2434 ]
  %2461 = fmul fast float %2458, %2429
  %2462 = select i1 %183, float %2461, float %2458
  %2463 = call float @dx.op.dot3.f32(i32 55, float %2462, float %2459, float %2460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2464 = select i1 %183, float 0.000000e+00, float %2458
  %2465 = select i1 %183, float %2463, float %2459
  %2466 = select i1 %183, float 0.000000e+00, float %2460
  br label %2467

; <label>:2467                                    ; preds = %2457, %2419
  %2468 = phi float [ %2464, %2457 ], [ 0.000000e+00, %2419 ]
  %2469 = phi float [ %2465, %2457 ], [ 0.000000e+00, %2419 ]
  %2470 = phi float [ %2466, %2457 ], [ 0.000000e+00, %2419 ]
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 65536
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2485, label %2475

; <label>:2475                                    ; preds = %2467
  %2476 = add i32 %43, 480
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = add i32 %2478, 0
  %2480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2480, %dx.types.Handle %75, float %1932, float %1933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.ResRet.f32 %2481, 2
  br label %2485

; <label>:2485                                    ; preds = %2475, %2467
  %2486 = phi float [ %2482, %2475 ], [ 0.000000e+00, %2467 ]
  %2487 = phi float [ %2483, %2475 ], [ 0.000000e+00, %2467 ]
  %2488 = phi float [ %2484, %2475 ], [ 0.000000e+00, %2467 ]
  %2489 = add i32 %43, 128
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = lshr i32 %2491, 8
  %2495 = and i32 %2494, 255
  %2496 = uitofp i32 %2495 to float
  %2497 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2498 = fmul fast float %2496, %2497
  %2499 = fadd fast float %2498, %2493
  %2500 = fmul fast float %2499, 0x3F70101020000000
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br i1 %1824, label %2502, label %2513

; <label>:2502                                    ; preds = %2485
  %2503 = fsub fast float 1.000000e+00, %2120
  %2504 = fmul fast float %2503, %1810
  %2505 = fmul fast float %2503, %1811
  %2506 = fmul fast float %2503, %1812
  %2507 = fmul fast float %2503, %1813
  %2508 = fmul fast float %2503, %1814
  %2509 = fmul fast float %2503, %1815
  %2510 = fmul fast float %2503, %1816
  %2511 = fmul fast float %2503, %1817
  %2512 = fmul fast float %2503, %1818
  br label %2513

; <label>:2513                                    ; preds = %2502, %2485
  %2514 = phi float [ %2504, %2502 ], [ %1810, %2485 ]
  %2515 = phi float [ %2505, %2502 ], [ %1811, %2485 ]
  %2516 = phi float [ %2506, %2502 ], [ %1812, %2485 ]
  %2517 = phi float [ %2507, %2502 ], [ %1813, %2485 ]
  %2518 = phi float [ %2508, %2502 ], [ %1814, %2485 ]
  %2519 = phi float [ %2509, %2502 ], [ %1815, %2485 ]
  %2520 = phi float [ %2510, %2502 ], [ %1816, %2485 ]
  %2521 = phi float [ %2511, %2502 ], [ %1817, %2485 ]
  %2522 = phi float [ %2512, %2502 ], [ %1818, %2485 ]
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = and i32 %2524, 3
  %2526 = icmp eq i32 %2525, 3
  br i1 %2526, label %2617, label %2527

; <label>:2527                                    ; preds = %2513
  %2528 = and i32 %2524, 16
  %2529 = icmp ne i32 %2528, 0
  %2530 = select i1 %2529, float %2120, float 0.000000e+00
  %2531 = icmp eq i32 %2525, 0
  br i1 %2531, label %2532, label %2572

; <label>:2532                                    ; preds = %2527
  %2533 = and i32 %2524, 64
  %2534 = icmp ne i32 %2533, 0
  %2535 = select i1 %2534, float %2120, float 0.000000e+00
  %2536 = and i32 %2524, 65536
  %2537 = icmp ne i32 %2536, 0
  %2538 = select i1 %2537, float %2120, float 0.000000e+00
  %2539 = fsub fast float %2340, %2514
  %2540 = fsub fast float %2341, %2515
  %2541 = fsub fast float %2342, %2516
  %2542 = fmul fast float %2530, %2539
  %2543 = fmul fast float %2530, %2540
  %2544 = fmul fast float %2530, %2541
  %2545 = fadd fast float %2542, %2514
  %2546 = fadd fast float %2543, %2515
  %2547 = fadd fast float %2544, %2516
  %2548 = fsub fast float %2326, %1819
  %2549 = fmul fast float %2530, %2548
  %2550 = fadd fast float %2549, %1819
  %2551 = fsub fast float %2468, %2517
  %2552 = fsub fast float %2469, %2518
  %2553 = fsub fast float %2470, %2519
  %2554 = fmul fast float %2535, %2551
  %2555 = fmul fast float %2535, %2552
  %2556 = fmul fast float %2535, %2553
  %2557 = fadd fast float %2554, %2517
  %2558 = fadd fast float %2555, %2518
  %2559 = fadd fast float %2556, %2519
  %2560 = fsub fast float %2486, %2520
  %2561 = fsub fast float %2487, %2521
  %2562 = fsub fast float %2488, %2522
  %2563 = fmul fast float %2538, %2560
  %2564 = fmul fast float %2538, %2561
  %2565 = fmul fast float %2538, %2562
  %2566 = fadd fast float %2563, %2520
  %2567 = fadd fast float %2564, %2521
  %2568 = fadd fast float %2565, %2522
  %2569 = fsub fast float %2501, %1822
  %2570 = fmul fast float %2530, %2569
  %2571 = fadd fast float %2570, %1822
  br label %2617

; <label>:2572                                    ; preds = %2527
  %2573 = icmp eq i32 %2525, 1
  br i1 %2573, label %2574, label %2587

; <label>:2574                                    ; preds = %2572
  %2575 = fadd fast float %2340, -1.000000e+00
  %2576 = fadd fast float %2341, -1.000000e+00
  %2577 = fadd fast float %2342, -1.000000e+00
  %2578 = fmul fast float %2530, %2575
  %2579 = fmul fast float %2530, %2576
  %2580 = fmul fast float %2530, %2577
  %2581 = fadd fast float %2578, 1.000000e+00
  %2582 = fadd fast float %2579, 1.000000e+00
  %2583 = fadd fast float %2580, 1.000000e+00
  %2584 = fmul fast float %2581, %2514
  %2585 = fmul fast float %2582, %2515
  %2586 = fmul fast float %2583, %2516
  br label %2617

; <label>:2587                                    ; preds = %2572
  %2588 = icmp eq i32 %2525, 2
  br i1 %2588, label %2589, label %2617

; <label>:2589                                    ; preds = %2587
  %2590 = call float @dx.op.unary.f32(i32 24, float %2340)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2341)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2593 = fadd fast float %2590, -5.000000e-01
  %2594 = fadd fast float %2591, -5.000000e-01
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fmul fast float %2593, %2530
  %2597 = fmul fast float %2594, %2530
  %2598 = fmul fast float %2595, %2530
  %2599 = fadd fast float %2596, 5.000000e-01
  %2600 = fadd fast float %2597, 5.000000e-01
  %2601 = fadd fast float %2598, 5.000000e-01
  %2602 = fmul fast float %2599, 2.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2603, %2514
  %2605 = fadd fast float %2604, %2602
  %2606 = fmul fast float %2605, %2514
  %2607 = fmul fast float %2600, 2.000000e+00
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = fmul fast float %2608, %2515
  %2610 = fadd fast float %2609, %2607
  %2611 = fmul fast float %2610, %2515
  %2612 = fmul fast float %2601, 2.000000e+00
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2516
  %2615 = fadd fast float %2614, %2612
  %2616 = fmul fast float %2615, %2516
  br label %2617

; <label>:2617                                    ; preds = %2589, %2587, %2574, %2532, %2513
  %2618 = phi float [ %2514, %2513 ], [ %2606, %2589 ], [ %2514, %2587 ], [ %2584, %2574 ], [ %2545, %2532 ]
  %2619 = phi float [ %2515, %2513 ], [ %2611, %2589 ], [ %2515, %2587 ], [ %2585, %2574 ], [ %2546, %2532 ]
  %2620 = phi float [ %2516, %2513 ], [ %2616, %2589 ], [ %2516, %2587 ], [ %2586, %2574 ], [ %2547, %2532 ]
  %2621 = phi float [ %2517, %2513 ], [ %2517, %2589 ], [ %2517, %2587 ], [ %2517, %2574 ], [ %2557, %2532 ]
  %2622 = phi float [ %2518, %2513 ], [ %2518, %2589 ], [ %2518, %2587 ], [ %2518, %2574 ], [ %2558, %2532 ]
  %2623 = phi float [ %2519, %2513 ], [ %2519, %2589 ], [ %2519, %2587 ], [ %2519, %2574 ], [ %2559, %2532 ]
  %2624 = phi float [ %2520, %2513 ], [ %2520, %2589 ], [ %2520, %2587 ], [ %2520, %2574 ], [ %2566, %2532 ]
  %2625 = phi float [ %2521, %2513 ], [ %2521, %2589 ], [ %2521, %2587 ], [ %2521, %2574 ], [ %2567, %2532 ]
  %2626 = phi float [ %2522, %2513 ], [ %2522, %2589 ], [ %2522, %2587 ], [ %2522, %2574 ], [ %2568, %2532 ]
  %2627 = phi float [ %1819, %2513 ], [ %1819, %2589 ], [ %1819, %2587 ], [ %1819, %2574 ], [ %2550, %2532 ]
  %2628 = phi float [ %1822, %2513 ], [ %1822, %2589 ], [ %1822, %2587 ], [ %1822, %2574 ], [ %2571, %2532 ]
  %2629 = and i32 %2524, 12
  %2630 = icmp eq i32 %2629, 12
  br i1 %2630, label %2703, label %2631

; <label>:2631                                    ; preds = %2617
  %2632 = and i32 %2524, 2097184
  %2633 = icmp eq i32 %2632, 2097184
  %2634 = select i1 %2633, float %2120, float 0.000000e+00
  %2635 = and i32 %2524, 4194336
  %2636 = icmp eq i32 %2635, 4194336
  %2637 = select i1 %2636, float %2120, float 0.000000e+00
  %2638 = and i32 %2524, 8388640
  %2639 = icmp eq i32 %2638, 8388640
  %2640 = select i1 %2639, float %2120, float 0.000000e+00
  %2641 = icmp eq i32 %2629, 0
  br i1 %2641, label %2642, label %2655

; <label>:2642                                    ; preds = %2631
  %2643 = fsub fast float %2421, %1808
  %2644 = fsub fast float %2422, %1809
  %2645 = fmul fast float %2634, %2643
  %2646 = fmul fast float %2634, %2644
  %2647 = fadd fast float %2645, %1808
  %2648 = fadd fast float %2646, %1809
  %2649 = fsub fast float %2423, %1821
  %2650 = fmul fast float %2637, %2649
  %2651 = fadd fast float %2650, %1821
  %2652 = fsub fast float %2420, %1820
  %2653 = fmul fast float %2640, %2652
  %2654 = fadd fast float %2653, %1820
  br label %2703

; <label>:2655                                    ; preds = %2631
  %2656 = icmp eq i32 %2629, 4
  br i1 %2656, label %2657, label %2689

; <label>:2657                                    ; preds = %2655
  %2658 = fmul fast float %2634, %2421
  %2659 = fmul fast float %2634, %2422
  %2660 = fadd fast float %2658, %1808
  %2661 = fadd fast float %2659, %1809
  %2662 = call float @dx.op.binary.f32(i32 36, float %1821, float %2423)  ; FMin(a,b)
  %2663 = fsub fast float %2662, %1821
  %2664 = fmul fast float %2663, %2637
  %2665 = fadd fast float %2664, %1821
  %2666 = fadd fast float %2420, %1820
  %2667 = fmul fast float %2666, 0x3FF337FAE0000000
  %2668 = fmul fast float %1820, %1820
  %2669 = fmul fast float %2420, %2420
  %2670 = fadd fast float %2669, %2668
  %2671 = fmul fast float %2670, 0x3FE5152B00000000
  %2672 = fmul fast float %1820, 0xBFCC1F85E0000000
  %2673 = fmul fast float %2672, %2420
  %2674 = fadd fast float %2673, 0xBFE1363700000000
  %2675 = fadd fast float %2674, %2667
  %2676 = fsub fast float %2675, %2671
  %2677 = fmul fast float %2666, 0x3FBA6F0D00000000
  %2678 = fmul fast float %2670, 0x3FD0432880000000
  %2679 = fmul fast float %1820, 0xBFEF110800000000
  %2680 = fmul fast float %2679, %2420
  %2681 = fadd fast float %2680, 1.000000e+00
  %2682 = fsub fast float %2681, %2677
  %2683 = fadd fast float %2682, %2678
  %2684 = fdiv fast float %2676, %2683
  %2685 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  %2686 = fsub fast float %2685, %1820
  %2687 = fmul fast float %2686, %2640
  %2688 = fadd fast float %2687, %1820
  br label %2703

; <label>:2689                                    ; preds = %2655
  %2690 = icmp eq i32 %2629, 8
  br i1 %2690, label %2691, label %2703

; <label>:2691                                    ; preds = %2689
  %2692 = fmul fast float %2634, %2421
  %2693 = fmul fast float %2634, %2422
  %2694 = fadd fast float %2692, %1808
  %2695 = fadd fast float %2693, %1809
  %2696 = call float @dx.op.binary.f32(i32 36, float %1821, float %2423)  ; FMin(a,b)
  %2697 = fsub fast float %2696, %1821
  %2698 = fmul fast float %2697, %2637
  %2699 = fadd fast float %2698, %1821
  %2700 = fsub fast float %2420, %1820
  %2701 = fmul fast float %2640, %2700
  %2702 = fadd fast float %2701, %1820
  br label %2703

; <label>:2703                                    ; preds = %2691, %2689, %2657, %2642, %2617, %2119, %1823, %1807
  %2704 = phi float [ %1808, %2617 ], [ %1808, %2119 ], [ %1808, %1807 ], [ %2694, %2691 ], [ %1808, %2689 ], [ %2660, %2657 ], [ %2647, %2642 ], [ %1808, %1823 ]
  %2705 = phi float [ %1809, %2617 ], [ %1809, %2119 ], [ %1809, %1807 ], [ %2695, %2691 ], [ %1809, %2689 ], [ %2661, %2657 ], [ %2648, %2642 ], [ %1809, %1823 ]
  %2706 = phi float [ %2618, %2617 ], [ %1810, %2119 ], [ %1810, %1807 ], [ %2618, %2691 ], [ %2618, %2689 ], [ %2618, %2657 ], [ %2618, %2642 ], [ %1810, %1823 ]
  %2707 = phi float [ %2619, %2617 ], [ %1811, %2119 ], [ %1811, %1807 ], [ %2619, %2691 ], [ %2619, %2689 ], [ %2619, %2657 ], [ %2619, %2642 ], [ %1811, %1823 ]
  %2708 = phi float [ %2620, %2617 ], [ %1812, %2119 ], [ %1812, %1807 ], [ %2620, %2691 ], [ %2620, %2689 ], [ %2620, %2657 ], [ %2620, %2642 ], [ %1812, %1823 ]
  %2709 = phi float [ %2621, %2617 ], [ %1813, %2119 ], [ %1813, %1807 ], [ %2621, %2691 ], [ %2621, %2689 ], [ %2621, %2657 ], [ %2621, %2642 ], [ %1813, %1823 ]
  %2710 = phi float [ %2622, %2617 ], [ %1814, %2119 ], [ %1814, %1807 ], [ %2622, %2691 ], [ %2622, %2689 ], [ %2622, %2657 ], [ %2622, %2642 ], [ %1814, %1823 ]
  %2711 = phi float [ %2623, %2617 ], [ %1815, %2119 ], [ %1815, %1807 ], [ %2623, %2691 ], [ %2623, %2689 ], [ %2623, %2657 ], [ %2623, %2642 ], [ %1815, %1823 ]
  %2712 = phi float [ %2624, %2617 ], [ %1816, %2119 ], [ %1816, %1807 ], [ %2624, %2691 ], [ %2624, %2689 ], [ %2624, %2657 ], [ %2624, %2642 ], [ %1816, %1823 ]
  %2713 = phi float [ %2625, %2617 ], [ %1817, %2119 ], [ %1817, %1807 ], [ %2625, %2691 ], [ %2625, %2689 ], [ %2625, %2657 ], [ %2625, %2642 ], [ %1817, %1823 ]
  %2714 = phi float [ %2626, %2617 ], [ %1818, %2119 ], [ %1818, %1807 ], [ %2626, %2691 ], [ %2626, %2689 ], [ %2626, %2657 ], [ %2626, %2642 ], [ %1818, %1823 ]
  %2715 = phi float [ %2627, %2617 ], [ %1819, %2119 ], [ %1819, %1807 ], [ %2627, %2691 ], [ %2627, %2689 ], [ %2627, %2657 ], [ %2627, %2642 ], [ %1819, %1823 ]
  %2716 = phi float [ %1820, %2617 ], [ %1820, %2119 ], [ %1820, %1807 ], [ %2702, %2691 ], [ %1820, %2689 ], [ %2688, %2657 ], [ %2654, %2642 ], [ %1820, %1823 ]
  %2717 = phi float [ %1821, %2617 ], [ %1821, %2119 ], [ %1821, %1807 ], [ %2699, %2691 ], [ %1821, %2689 ], [ %2665, %2657 ], [ %2651, %2642 ], [ %1821, %1823 ]
  %2718 = phi float [ %2628, %2617 ], [ %1822, %2119 ], [ %1822, %1807 ], [ %2628, %2691 ], [ %2628, %2689 ], [ %2628, %2657 ], [ %2628, %2642 ], [ %1822, %1823 ]
  br i1 %374, label %3599, label %2719

; <label>:2719                                    ; preds = %2703
  %2720 = icmp ult i32 %425, 4
  %2721 = add i32 %43, 72
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = add i32 %43, 76
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = or i32 %2726, %2723
  %2728 = icmp eq i32 %2727, 0
  br i1 %2728, label %3599, label %2729

; <label>:2729                                    ; preds = %2719
  %2730 = and i32 %2723, 262144
  %2731 = icmp ne i32 %2730, 0
  %2732 = select i1 %2731, float %46, float 1.000000e+00
  %2733 = select i1 %2731, float %47, float 0.000000e+00
  %2734 = select i1 %2731, float %48, float 0.000000e+00
  %2735 = select i1 %2731, float %49, float 1.000000e+00
  %2736 = select i1 %2731, float %50, float %66
  %2737 = select i1 %2731, float %51, float %67
  %2738 = add i32 %43, 332
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = lshr i32 %2740, 16
  %2742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2741)  ; LegacyF16ToF32(value)
  %2743 = fmul fast float %2742, 0x3F50624DE0000000
  %2744 = add i32 %43, 136
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = lshr i32 %2746, 16
  %2748 = and i32 %2747, 255
  %2749 = lshr i32 %2746, 24
  %2750 = add i32 %43, 340
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 65535
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = lshr i32 %2752, 16
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = add i32 %43, 80
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = lshr i32 %2759, 22
  %2761 = shl nuw nsw i32 %2760, 5
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = shl i32 %2759, 4
  %2764 = and i32 %2763, 32752
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = lshr i32 %2759, 7
  %2767 = and i32 %2766, 32752
  %2768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2767)  ; LegacyF16ToF32(value)
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 3
  %2771 = fmul fast float %2770, 1.000000e+03
  %2772 = fmul fast float %364, %2771
  %2773 = call float @dx.op.unary.f32(i32 22, float %2772)  ; Frc(value)
  %2774 = fadd fast float %2773, %354
  %2775 = fmul fast float %365, %2771
  %2776 = call float @dx.op.unary.f32(i32 22, float %2775)  ; Frc(value)
  %2777 = fadd fast float %2776, %356
  %2778 = fmul fast float %2743, %2771
  %2779 = call float @dx.op.unary.f32(i32 22, float %2778)  ; Frc(value)
  %2780 = fmul fast float %2779, 0x401921FB60000000
  %2781 = fadd fast float %2780, %2762
  %2782 = call float @dx.op.unary.f32(i32 13, float %2781)  ; Sin(value)
  %2783 = call float @dx.op.unary.f32(i32 12, float %2781)  ; Cos(value)
  %2784 = fsub fast float -0.000000e+00, %2782
  %2785 = fadd fast float %2736, -5.000000e-01
  %2786 = fadd fast float %2737, -5.000000e-01
  %2787 = fmul fast float %2754, %2785
  %2788 = fmul fast float %2756, %2786
  %2789 = fadd fast float %2787, 5.000000e-01
  %2790 = fadd fast float %2788, 5.000000e-01
  %2791 = fmul fast float %2765, %2789
  %2792 = fmul fast float %2768, %2790
  %2793 = fmul fast float %2783, %2791
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2784, float %2792, float %2793)  ; FMad(a,b,c)
  %2795 = fmul fast float %2782, %2791
  %2796 = call float @dx.op.tertiary.f32(i32 46, float %2783, float %2792, float %2795)  ; FMad(a,b,c)
  %2797 = fadd fast float %2774, %2794
  %2798 = fadd fast float %2777, %2796
  %2799 = icmp ugt i32 %2748, 1
  %2800 = icmp ugt i32 %2746, 33554431
  %2801 = or i1 %2800, %2799
  br i1 %2801, label %2802, label %2827

; <label>:2802                                    ; preds = %2729
  %2803 = add i32 %43, 276
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = lshr i32 %2805, 16
  %2807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2806)  ; LegacyF16ToF32(value)
  %2808 = fmul fast float %2770, %2807
  %2809 = call float @dx.op.unary.f32(i32 22, float %2808)  ; Frc(value)
  %2810 = mul nuw nsw i32 %2748, %2749
  %2811 = uitofp i32 %2810 to float
  %2812 = fmul fast float %2809, %2811
  %2813 = call float @dx.op.unary.f32(i32 27, float %2812)  ; Round_ni(value)
  %2814 = fptoui float %2813 to i32
  %2815 = urem i32 %2814, %2748
  %2816 = udiv i32 %2814, %2749
  %2817 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2818 = call float @dx.op.unary.f32(i32 22, float %2798)  ; Frc(value)
  %2819 = uitofp i32 %2815 to float
  %2820 = uitofp i32 %2816 to float
  %2821 = fadd fast float %2817, %2819
  %2822 = fadd fast float %2818, %2820
  %2823 = uitofp i32 %2748 to float
  %2824 = uitofp i32 %2749 to float
  %2825 = fdiv fast float %2821, %2823
  %2826 = fdiv fast float %2822, %2824
  br label %2827

; <label>:2827                                    ; preds = %2802, %2729
  %2828 = phi float [ %2825, %2802 ], [ %2797, %2729 ]
  %2829 = phi float [ %2826, %2802 ], [ %2798, %2729 ]
  %2830 = and i32 %2723, 16777216
  %2831 = icmp eq i32 %2830, 0
  br i1 %2831, label %2941, label %2832

; <label>:2832                                    ; preds = %2827
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.CBufRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.CBufRet.f32 %2833, 2
  %2837 = fadd fast float %2834, %141
  %2838 = fadd fast float %2835, %142
  %2839 = fadd fast float %2836, %143
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2842 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2843 = icmp eq i32 %44, 65535
  br i1 %2843, label %2938, label %2844

; <label>:2844                                    ; preds = %2832
  %2845 = lshr i32 %44, 1
  %2846 = shl i32 %2845, 2
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = and i32 %44, 1
  %2850 = icmp ne i32 %2849, 0
  %2851 = lshr i32 %2848, 16
  %2852 = and i32 %2848, 65535
  %2853 = select i1 %2850, i32 %2851, i32 %2852
  %2854 = icmp eq i32 %2853, 65535
  br i1 %2854, label %2934, label %2855

; <label>:2855                                    ; preds = %2844
  %2856 = mul nuw nsw i32 %2853, 40
  %2857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.ResRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.ResRet.f32 %2857, 2
  %2861 = add nuw nsw i32 %2856, 12
  %2862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.ResRet.f32 %2862, 1
  %2865 = extractvalue %dx.types.ResRet.f32 %2862, 2
  %2866 = add nuw nsw i32 %2856, 24
  %2867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = extractvalue %dx.types.ResRet.f32 %2867, 1
  %2870 = extractvalue %dx.types.ResRet.f32 %2867, 2
  %2871 = add nuw nsw i32 %2856, 36
  %2872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = fsub fast float %2837, %2858
  %2875 = fsub fast float %2838, %2859
  %2876 = fsub fast float %2839, %2860
  %2877 = fmul fast float %2873, %2874
  %2878 = fmul fast float %2873, %2875
  %2879 = fmul fast float %2873, %2876
  %2880 = call float @dx.op.unary.f32(i32 27, float %2877)  ; Round_ni(value)
  %2881 = call float @dx.op.unary.f32(i32 27, float %2878)  ; Round_ni(value)
  %2882 = call float @dx.op.unary.f32(i32 27, float %2879)  ; Round_ni(value)
  %2883 = fadd fast float %2880, 5.000000e-01
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fmul fast float %2883, %2863
  %2887 = fmul fast float %2884, %2864
  %2888 = fmul fast float %2885, %2865
  %2889 = shl i32 %44, 2
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = add i32 %2891, 0
  %2893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2894 = call float @dx.op.unary.f32(i32 22, float %2886)  ; Frc(value)
  %2895 = call float @dx.op.unary.f32(i32 22, float %2887)  ; Frc(value)
  %2896 = call float @dx.op.unary.f32(i32 22, float %2888)  ; Frc(value)
  %2897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2893, %dx.types.Handle %40, float %2894, float %2895, float %2896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.ResRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.ResRet.f32 %2897, 2
  %2901 = fmul fast float %2898, 1.023000e+03
  %2902 = fmul fast float %2899, 1.023000e+03
  %2903 = fmul fast float %2900, 1.023000e+03
  %2904 = fadd fast float %2901, 5.000000e-01
  %2905 = fadd fast float %2902, 5.000000e-01
  %2906 = fadd fast float %2903, 5.000000e-01
  %2907 = call float @dx.op.unary.f32(i32 27, float %2904)  ; Round_ni(value)
  %2908 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2909 = call float @dx.op.unary.f32(i32 27, float %2906)  ; Round_ni(value)
  %2910 = fsub fast float %2877, %2880
  %2911 = fsub fast float %2878, %2881
  %2912 = fsub fast float %2879, %2882
  %2913 = fmul fast float %2910, 7.500000e-01
  %2914 = fmul fast float %2911, 7.500000e-01
  %2915 = fmul fast float %2912, 7.500000e-01
  %2916 = fadd fast float %2880, 1.250000e-01
  %2917 = fadd fast float %2916, %2913
  %2918 = fadd fast float %2917, %2907
  %2919 = fadd fast float %2881, 1.250000e-01
  %2920 = fadd fast float %2919, %2914
  %2921 = fadd fast float %2920, %2908
  %2922 = fadd fast float %2882, 1.250000e-01
  %2923 = fadd fast float %2922, %2915
  %2924 = fadd fast float %2923, %2909
  %2925 = fmul fast float %2918, %2868
  %2926 = fmul fast float %2921, %2869
  %2927 = fmul fast float %2924, %2870
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %2929, 0
  %2931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2931, %dx.types.Handle %38, float %2925, float %2926, float %2927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  br label %2934

; <label>:2934                                    ; preds = %2855, %2844
  %2935 = phi float [ %2933, %2855 ], [ -1.000000e+00, %2844 ]
  %2936 = fadd fast float %2935, %2842
  %2937 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  br label %2938

; <label>:2938                                    ; preds = %2934, %2832
  %2939 = phi float [ %2937, %2934 ], [ %2842, %2832 ]
  %2940 = fmul fast float %2939, %420
  br label %2941

; <label>:2941                                    ; preds = %2938, %2827
  %2942 = phi float [ %2940, %2938 ], [ %420, %2827 ]
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 256
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2993, label %2947

; <label>:2947                                    ; preds = %2941
  %2948 = add i32 %43, 436
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = add i32 %2950, 0
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2952, %dx.types.Handle %75, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  %2955 = add i32 %43, 148
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = shl i32 %2957, 4
  %2959 = and i32 %2958, 32752
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = lshr i32 %2957, 7
  %2962 = and i32 %2961, 32752
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = fsub fast float 1.000000e+00, %2942
  %2965 = call float @dx.op.binary.f32(i32 35, float %2964, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2966 = bitcast float %2942 to i32
  %2967 = sitofp i32 %2966 to float
  %2968 = fadd fast float %2967, 0xC1CFBF8940000000
  %2969 = fmul fast float %2963, %2968
  %2970 = fadd fast float %2969, 0x41CFBF8940000000
  %2971 = fptosi float %2970 to i32
  %2972 = bitcast i32 %2971 to float
  %2973 = bitcast float %2965 to i32
  %2974 = sitofp i32 %2973 to float
  %2975 = fadd fast float %2974, 0xC1CFBF8940000000
  %2976 = fmul fast float %2975, %2963
  %2977 = fadd fast float %2976, 0x41CFBF8940000000
  %2978 = fptosi float %2977 to i32
  %2979 = bitcast i32 %2978 to float
  %2980 = fmul fast float %2972, %2960
  %2981 = fmul fast float %2979, %2960
  %2982 = fsub fast float %2965, %2980
  %2983 = fadd fast float %2981, %2965
  %2984 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2985 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2986 = fsub fast float %2954, %2984
  %2987 = fsub fast float %2985, %2984
  %2988 = bitcast float %2987 to i32
  %2989 = sub nsw i32 2129859010, %2988
  %2990 = bitcast i32 %2989 to float
  %2991 = fmul fast float %2990, %2986
  %2992 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  br label %2993

; <label>:2993                                    ; preds = %2947, %2941
  %2994 = phi float [ %2992, %2947 ], [ %2942, %2941 ]
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 128
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3015, label %2999

; <label>:2999                                    ; preds = %2993
  %3000 = add i32 %43, 420
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = add i32 %3002, 0
  %3004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3004, %dx.types.Handle %75, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 524288
  %3010 = icmp ne i32 %3009, 0
  %3011 = fcmp fast ogt float %3006, 0x3FE0101020000000
  %3012 = select i1 %3011, float 1.000000e+00, float 0.000000e+00
  %3013 = select i1 %3010, float %3012, float %3006
  %3014 = fmul fast float %3013, %2994
  br label %3015

; <label>:3015                                    ; preds = %2999, %2993
  %3016 = phi float [ %3014, %2999 ], [ %2994, %2993 ]
  %3017 = fcmp fast ult float %3016, 0x3F70101020000000
  br i1 %3017, label %3599, label %3018

; <label>:3018                                    ; preds = %3015
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 16
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3221, label %3023

; <label>:3023                                    ; preds = %3018
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %43, 372
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = add i32 %3028, 0
  %3030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3030, %dx.types.Handle %74, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = extractvalue %dx.types.ResRet.f32 %3031, 3
  %3036 = and i32 %3025, 255
  %3037 = uitofp i32 %3036 to float
  %3038 = lshr i32 %3025, 8
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = fmul fast float %3035, %3037
  %3042 = fadd fast float %3041, %3040
  %3043 = fmul fast float %3042, 0x3F70101000000000
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 512
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3056, label %3048

; <label>:3048                                    ; preds = %3023
  %3049 = add i32 %43, 452
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %75, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  br label %3056

; <label>:3056                                    ; preds = %3048, %3023
  %3057 = phi float [ %3055, %3048 ], [ 1.000000e+00, %3023 ]
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 33554432
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3168, label %3062

; <label>:3062                                    ; preds = %3056
  %3063 = add i32 %43, 272
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, 65535
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = lshr i32 %3065, 16
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = add i32 %43, 276
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 65535
  %3074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3073)  ; LegacyF16ToF32(value)
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = lshr i32 %3076, 24
  %3078 = uitofp i32 %3077 to float
  %3079 = fmul fast float %3078, 0x3F70101020000000
  %3080 = and i32 %3076, 255
  %3081 = uitofp i32 %3080 to float
  %3082 = fmul fast float %3081, 0x3F70101020000000
  %3083 = lshr i32 %3076, 8
  %3084 = and i32 %3083, 255
  %3085 = uitofp i32 %3084 to float
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = lshr i32 %3076, 16
  %3088 = and i32 %3087, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = fmul fast float %3089, 0x3F70101020000000
  %3091 = add i32 %43, 268
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = lshr i32 %3093, 24
  %3095 = uitofp i32 %3094 to float
  %3096 = fmul fast float %3095, 0x3F70101020000000
  %3097 = and i32 %3093, 255
  %3098 = uitofp i32 %3097 to float
  %3099 = fmul fast float %3098, 0x3F70101020000000
  %3100 = lshr i32 %3093, 8
  %3101 = and i32 %3100, 255
  %3102 = uitofp i32 %3101 to float
  %3103 = fmul fast float %3102, 0x3F70101020000000
  %3104 = lshr i32 %3093, 16
  %3105 = and i32 %3104, 255
  %3106 = uitofp i32 %3105 to float
  %3107 = fmul fast float %3106, 0x3F70101020000000
  %3108 = bitcast float %3032 to i32
  %3109 = ashr i32 %3108, 1
  %3110 = sub nsw i32 1597463174, %3109
  %3111 = bitcast i32 %3110 to float
  %3112 = fmul fast float %3032, 5.000000e-01
  %3113 = fmul fast float %3111, %3111
  %3114 = fmul fast float %3113, %3112
  %3115 = fsub fast float 1.500000e+00, %3114
  %3116 = fmul fast float %3111, %3032
  %3117 = fmul fast float %3116, %3115
  %3118 = bitcast float %3033 to i32
  %3119 = ashr i32 %3118, 1
  %3120 = sub nsw i32 1597463174, %3119
  %3121 = bitcast i32 %3120 to float
  %3122 = fmul fast float %3033, 5.000000e-01
  %3123 = fmul fast float %3121, %3121
  %3124 = fmul fast float %3123, %3122
  %3125 = fsub fast float 1.500000e+00, %3124
  %3126 = fmul fast float %3121, %3033
  %3127 = fmul fast float %3126, %3125
  %3128 = bitcast float %3034 to i32
  %3129 = ashr i32 %3128, 1
  %3130 = sub nsw i32 1597463174, %3129
  %3131 = bitcast i32 %3130 to float
  %3132 = fmul fast float %3034, 5.000000e-01
  %3133 = fmul fast float %3131, %3131
  %3134 = fmul fast float %3133, %3132
  %3135 = fsub fast float 1.500000e+00, %3134
  %3136 = fmul fast float %3131, %3034
  %3137 = fmul fast float %3136, %3135
  %3138 = fsub fast float %3117, %3099
  %3139 = fsub fast float %3127, %3103
  %3140 = fsub fast float %3137, %3107
  %3141 = fmul fast float %3138, %3067
  %3142 = fmul fast float %3139, %3069
  %3143 = fmul fast float %3140, %3074
  %3144 = fadd fast float %3141, %3082
  %3145 = fadd fast float %3142, %3086
  %3146 = fadd fast float %3143, %3090
  %3147 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3148 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3149 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3150 = fmul fast float %3147, %3147
  %3151 = fmul fast float %3148, %3148
  %3152 = fmul fast float %3149, %3149
  %3153 = fsub fast float %3150, %3032
  %3154 = fsub fast float %3151, %3033
  %3155 = fsub fast float %3152, %3034
  %3156 = fmul fast float %3153, %3057
  %3157 = fmul fast float %3154, %3057
  %3158 = fmul fast float %3155, %3057
  %3159 = fadd fast float %3156, %3032
  %3160 = fadd fast float %3157, %3033
  %3161 = fadd fast float %3158, %3034
  %3162 = fadd fast float %3079, %3043
  %3163 = fsub fast float %3162, %3096
  %3164 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  %3165 = fsub fast float %3164, %3043
  %3166 = fmul fast float %3165, %3057
  %3167 = fadd fast float %3166, %3043
  br label %3221

; <label>:3168                                    ; preds = %3056
  %3169 = and i32 %3059, 134217728
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3205, label %3171

; <label>:3171                                    ; preds = %3168
  %3172 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3173 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3174 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fadd fast float %3174, -5.000000e-01
  %3178 = fmul fast float %3175, %3057
  %3179 = fmul fast float %3176, %3057
  %3180 = fmul fast float %3177, %3057
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 5.000000e-01
  %3183 = fadd fast float %3180, 5.000000e-01
  %3184 = call float @dx.op.unary.f32(i32 24, float %3032)  ; Sqrt(value)
  %3185 = call float @dx.op.unary.f32(i32 24, float %3033)  ; Sqrt(value)
  %3186 = call float @dx.op.unary.f32(i32 24, float %3034)  ; Sqrt(value)
  %3187 = fmul fast float %3181, 2.000000e+00
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3188, %3184
  %3190 = fadd fast float %3189, %3187
  %3191 = fmul fast float %3190, %3184
  %3192 = fmul fast float %3182, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3185
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3185
  %3197 = fmul fast float %3183, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3186
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3186
  %3202 = fmul fast float %3191, %3191
  %3203 = fmul fast float %3196, %3196
  %3204 = fmul fast float %3201, %3201
  br label %3221

; <label>:3205                                    ; preds = %3168
  %3206 = fmul fast float %341, %341
  %3207 = fmul fast float %345, %345
  %3208 = fmul fast float %349, %349
  %3209 = fadd fast float %3206, -1.000000e+00
  %3210 = fadd fast float %3207, -1.000000e+00
  %3211 = fadd fast float %3208, -1.000000e+00
  %3212 = fmul fast float %3057, %3209
  %3213 = fmul fast float %3057, %3210
  %3214 = fmul fast float %3057, %3211
  %3215 = fadd fast float %3212, 1.000000e+00
  %3216 = fadd fast float %3213, 1.000000e+00
  %3217 = fadd fast float %3214, 1.000000e+00
  %3218 = fmul fast float %3215, %3032
  %3219 = fmul fast float %3216, %3033
  %3220 = fmul fast float %3217, %3034
  br label %3221

; <label>:3221                                    ; preds = %3205, %3171, %3062, %3018
  %3222 = phi float [ %3167, %3062 ], [ %3043, %3171 ], [ %3043, %3205 ], [ 0x3FA23C0BE0000000, %3018 ]
  %3223 = phi float [ %3159, %3062 ], [ %3202, %3171 ], [ %3218, %3205 ], [ 1.000000e+00, %3018 ]
  %3224 = phi float [ %3160, %3062 ], [ %3203, %3171 ], [ %3219, %3205 ], [ 1.000000e+00, %3018 ]
  %3225 = phi float [ %3161, %3062 ], [ %3204, %3171 ], [ %3220, %3205 ], [ 1.000000e+00, %3018 ]
  %3226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.i32 %3226, 1
  %3228 = and i32 %3227, 1
  %3229 = icmp ne i32 %3228, 0
  %3230 = add i32 %43, 356
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 32
  %3234 = icmp ne i32 %3233, 0
  %3235 = and i1 %3229, %3234
  %3236 = select i1 %3235, float 1.000000e+00, float %3223
  %3237 = select i1 %3235, float 0x3FD3333340000000, float %3224
  %3238 = select i1 %3235, float 0x3FD3333340000000, float %3225
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 32
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3315, label %3243

; <label>:3243                                    ; preds = %3221
  %3244 = add i32 %43, 140
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = add i32 %43, 388
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = add i32 %3249, 0
  %3251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3251, %dx.types.Handle %74, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.ResRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.ResRet.f32 %3252, 2
  %3256 = extractvalue %dx.types.ResRet.f32 %3252, 3
  %3257 = and i32 %3246, 255
  %3258 = uitofp i32 %3257 to float
  %3259 = lshr i32 %3246, 8
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = lshr i32 %3246, 16
  %3263 = and i32 %3262, 255
  %3264 = uitofp i32 %3263 to float
  %3265 = fmul fast float %3264, 0x3F70101000000000
  %3266 = fmul fast float %3253, %3258
  %3267 = fadd fast float %3266, %3261
  %3268 = fmul fast float %3267, 0x3F70101000000000
  %3269 = fadd fast float %3254, -5.000000e-01
  %3270 = fadd fast float %3256, -5.000000e-01
  %3271 = fmul fast float %3269, %3265
  %3272 = fmul fast float %3270, %3265
  %3273 = fadd fast float %3271, 5.000000e-01
  %3274 = fadd fast float %3272, 5.000000e-01
  %3275 = fmul fast float %3273, 2.000000e+00
  %3276 = fadd fast float %3275, -1.000000e+00
  %3277 = fmul fast float %3274, 2.000000e+00
  %3278 = fadd fast float %3277, -1.000000e+00
  %3279 = fadd fast float %3276, %3278
  %3280 = fmul fast float %3279, 5.000000e-01
  %3281 = fsub fast float %3276, %3278
  %3282 = fmul fast float %3281, 5.000000e-01
  %3283 = call float @dx.op.unary.f32(i32 6, float %3280)  ; FAbs(value)
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = call float @dx.op.unary.f32(i32 6, float %3282)  ; FAbs(value)
  %3286 = fsub fast float %3284, %3285
  %3287 = call float @dx.op.dot3.f32(i32 55, float %3280, float %3282, float %3286, float %3280, float %3282, float %3286)  ; Dot3(ax,ay,az,bx,by,bz)
  %3288 = call float @dx.op.unary.f32(i32 25, float %3287)  ; Rsqrt(value)
  %3289 = fmul fast float %3280, %3288
  %3290 = fmul fast float %3282, %3288
  %3291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.i32 %3291, 0
  %3293 = and i32 %3292, 67108864
  %3294 = icmp eq i32 %3293, 0
  br i1 %3294, label %3311, label %3295

; <label>:3295                                    ; preds = %3243
  %3296 = add i32 %43, 328
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 65535
  %3300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3299)  ; LegacyF16ToF32(value)
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 65535
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = lshr i32 %3298, 16
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = fsub fast float %3268, %3306
  %3308 = fmul fast float %3307, %3300
  %3309 = fadd fast float %3308, %3304
  %3310 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  br label %3311

; <label>:3311                                    ; preds = %3295, %3243
  %3312 = phi float [ %3310, %3295 ], [ %3268, %3243 ]
  %3313 = call float @dx.op.dot2.f32(i32 54, float %3289, float %3290, float %2732, float %2733)  ; Dot2(ax,ay,bx,by)
  %3314 = call float @dx.op.dot2.f32(i32 54, float %3289, float %3290, float %2734, float %2735)  ; Dot2(ax,ay,bx,by)
  br label %3315

; <label>:3315                                    ; preds = %3311, %3221
  %3316 = phi float [ %3312, %3311 ], [ 0x3FD6666660000000, %3221 ]
  %3317 = phi float [ %3313, %3311 ], [ 0.000000e+00, %3221 ]
  %3318 = phi float [ %3314, %3311 ], [ 0.000000e+00, %3221 ]
  %3319 = phi float [ %3255, %3311 ], [ 1.000000e+00, %3221 ]
  %3320 = add i32 %43, 208
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = lshr i32 %3322, 22
  %3324 = shl nuw nsw i32 %3323, 5
  %3325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3324)  ; LegacyF16ToF32(value)
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = and i32 %3327, 64
  %3329 = icmp eq i32 %3328, 0
  br i1 %3329, label %3363, label %3330

; <label>:3330                                    ; preds = %3315
  %3331 = add i32 %43, 404
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = add i32 %3333, 0
  %3335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = and i32 %3337, 131072
  %3339 = icmp eq i32 %3338, 0
  %3340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3335, %dx.types.Handle %74, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.ResRet.f32 %3340, 1
  %3343 = extractvalue %dx.types.ResRet.f32 %3340, 2
  %3344 = fmul fast float %3341, %329
  %3345 = fmul fast float %3342, %332
  %3346 = fmul fast float %3343, %335
  br i1 %3339, label %3353, label %3347

; <label>:3347                                    ; preds = %3330
  %3348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3349 = extractvalue %dx.types.CBufRet.f32 %3348, 0
  %3350 = fmul fast float %3349, %3344
  %3351 = fmul fast float %3349, %3345
  %3352 = fmul fast float %3349, %3346
  br label %3353

; <label>:3353                                    ; preds = %3347, %3330
  %3354 = phi float [ %3350, %3347 ], [ %3344, %3330 ]
  %3355 = phi float [ %3351, %3347 ], [ %3345, %3330 ]
  %3356 = phi float [ %3352, %3347 ], [ %3346, %3330 ]
  %3357 = fmul fast float %3354, %3325
  %3358 = select i1 %183, float %3357, float %3354
  %3359 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3355, float %3356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3360 = select i1 %183, float 0.000000e+00, float %3354
  %3361 = select i1 %183, float %3359, float %3355
  %3362 = select i1 %183, float 0.000000e+00, float %3356
  br label %3363

; <label>:3363                                    ; preds = %3353, %3315
  %3364 = phi float [ %3360, %3353 ], [ 0.000000e+00, %3315 ]
  %3365 = phi float [ %3361, %3353 ], [ 0.000000e+00, %3315 ]
  %3366 = phi float [ %3362, %3353 ], [ 0.000000e+00, %3315 ]
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 65536
  %3370 = icmp eq i32 %3369, 0
  br i1 %3370, label %3381, label %3371

; <label>:3371                                    ; preds = %3363
  %3372 = add i32 %43, 484
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = add i32 %3374, 0
  %3376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3376, %dx.types.Handle %75, float %2828, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  br label %3381

; <label>:3381                                    ; preds = %3371, %3363
  %3382 = phi float [ %3378, %3371 ], [ 0.000000e+00, %3363 ]
  %3383 = phi float [ %3379, %3371 ], [ 0.000000e+00, %3363 ]
  %3384 = phi float [ %3380, %3371 ], [ 0.000000e+00, %3363 ]
  %3385 = add i32 %43, 144
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 255
  %3389 = uitofp i32 %3388 to float
  %3390 = lshr i32 %3387, 8
  %3391 = and i32 %3390, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = fmul fast float %3392, %3393
  %3395 = fadd fast float %3394, %3389
  %3396 = fmul fast float %3395, 0x3F70101020000000
  %3397 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  br i1 %2720, label %3398, label %3409

; <label>:3398                                    ; preds = %3381
  %3399 = fsub fast float 1.000000e+00, %3016
  %3400 = fmul fast float %3399, %2706
  %3401 = fmul fast float %3399, %2707
  %3402 = fmul fast float %3399, %2708
  %3403 = fmul fast float %3399, %2709
  %3404 = fmul fast float %3399, %2710
  %3405 = fmul fast float %3399, %2711
  %3406 = fmul fast float %3399, %2712
  %3407 = fmul fast float %3399, %2713
  %3408 = fmul fast float %3399, %2714
  br label %3409

; <label>:3409                                    ; preds = %3398, %3381
  %3410 = phi float [ %3400, %3398 ], [ %2706, %3381 ]
  %3411 = phi float [ %3401, %3398 ], [ %2707, %3381 ]
  %3412 = phi float [ %3402, %3398 ], [ %2708, %3381 ]
  %3413 = phi float [ %3403, %3398 ], [ %2709, %3381 ]
  %3414 = phi float [ %3404, %3398 ], [ %2710, %3381 ]
  %3415 = phi float [ %3405, %3398 ], [ %2711, %3381 ]
  %3416 = phi float [ %3406, %3398 ], [ %2712, %3381 ]
  %3417 = phi float [ %3407, %3398 ], [ %2713, %3381 ]
  %3418 = phi float [ %3408, %3398 ], [ %2714, %3381 ]
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 3
  %3422 = icmp eq i32 %3421, 3
  br i1 %3422, label %3513, label %3423

; <label>:3423                                    ; preds = %3409
  %3424 = and i32 %3420, 16
  %3425 = icmp ne i32 %3424, 0
  %3426 = select i1 %3425, float %3016, float 0.000000e+00
  %3427 = icmp eq i32 %3421, 0
  br i1 %3427, label %3428, label %3468

; <label>:3428                                    ; preds = %3423
  %3429 = and i32 %3420, 64
  %3430 = icmp ne i32 %3429, 0
  %3431 = select i1 %3430, float %3016, float 0.000000e+00
  %3432 = and i32 %3420, 65536
  %3433 = icmp ne i32 %3432, 0
  %3434 = select i1 %3433, float %3016, float 0.000000e+00
  %3435 = fsub fast float %3236, %3410
  %3436 = fsub fast float %3237, %3411
  %3437 = fsub fast float %3238, %3412
  %3438 = fmul fast float %3426, %3435
  %3439 = fmul fast float %3426, %3436
  %3440 = fmul fast float %3426, %3437
  %3441 = fadd fast float %3438, %3410
  %3442 = fadd fast float %3439, %3411
  %3443 = fadd fast float %3440, %3412
  %3444 = fsub fast float %3222, %2715
  %3445 = fmul fast float %3426, %3444
  %3446 = fadd fast float %3445, %2715
  %3447 = fsub fast float %3364, %3413
  %3448 = fsub fast float %3365, %3414
  %3449 = fsub fast float %3366, %3415
  %3450 = fmul fast float %3431, %3447
  %3451 = fmul fast float %3431, %3448
  %3452 = fmul fast float %3431, %3449
  %3453 = fadd fast float %3450, %3413
  %3454 = fadd fast float %3451, %3414
  %3455 = fadd fast float %3452, %3415
  %3456 = fsub fast float %3382, %3416
  %3457 = fsub fast float %3383, %3417
  %3458 = fsub fast float %3384, %3418
  %3459 = fmul fast float %3434, %3456
  %3460 = fmul fast float %3434, %3457
  %3461 = fmul fast float %3434, %3458
  %3462 = fadd fast float %3459, %3416
  %3463 = fadd fast float %3460, %3417
  %3464 = fadd fast float %3461, %3418
  %3465 = fsub fast float %3397, %2718
  %3466 = fmul fast float %3426, %3465
  %3467 = fadd fast float %3466, %2718
  br label %3513

; <label>:3468                                    ; preds = %3423
  %3469 = icmp eq i32 %3421, 1
  br i1 %3469, label %3470, label %3483

; <label>:3470                                    ; preds = %3468
  %3471 = fadd fast float %3236, -1.000000e+00
  %3472 = fadd fast float %3237, -1.000000e+00
  %3473 = fadd fast float %3238, -1.000000e+00
  %3474 = fmul fast float %3426, %3471
  %3475 = fmul fast float %3426, %3472
  %3476 = fmul fast float %3426, %3473
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fadd fast float %3476, 1.000000e+00
  %3480 = fmul fast float %3477, %3410
  %3481 = fmul fast float %3478, %3411
  %3482 = fmul fast float %3479, %3412
  br label %3513

; <label>:3483                                    ; preds = %3468
  %3484 = icmp eq i32 %3421, 2
  br i1 %3484, label %3485, label %3513

; <label>:3485                                    ; preds = %3483
  %3486 = call float @dx.op.unary.f32(i32 24, float %3236)  ; Sqrt(value)
  %3487 = call float @dx.op.unary.f32(i32 24, float %3237)  ; Sqrt(value)
  %3488 = call float @dx.op.unary.f32(i32 24, float %3238)  ; Sqrt(value)
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fadd fast float %3487, -5.000000e-01
  %3491 = fadd fast float %3488, -5.000000e-01
  %3492 = fmul fast float %3489, %3426
  %3493 = fmul fast float %3490, %3426
  %3494 = fmul fast float %3491, %3426
  %3495 = fadd fast float %3492, 5.000000e-01
  %3496 = fadd fast float %3493, 5.000000e-01
  %3497 = fadd fast float %3494, 5.000000e-01
  %3498 = fmul fast float %3495, 2.000000e+00
  %3499 = fsub fast float 1.000000e+00, %3498
  %3500 = fmul fast float %3499, %3410
  %3501 = fadd fast float %3500, %3498
  %3502 = fmul fast float %3501, %3410
  %3503 = fmul fast float %3496, 2.000000e+00
  %3504 = fsub fast float 1.000000e+00, %3503
  %3505 = fmul fast float %3504, %3411
  %3506 = fadd fast float %3505, %3503
  %3507 = fmul fast float %3506, %3411
  %3508 = fmul fast float %3497, 2.000000e+00
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = fmul fast float %3509, %3412
  %3511 = fadd fast float %3510, %3508
  %3512 = fmul fast float %3511, %3412
  br label %3513

; <label>:3513                                    ; preds = %3485, %3483, %3470, %3428, %3409
  %3514 = phi float [ %3410, %3409 ], [ %3502, %3485 ], [ %3410, %3483 ], [ %3480, %3470 ], [ %3441, %3428 ]
  %3515 = phi float [ %3411, %3409 ], [ %3507, %3485 ], [ %3411, %3483 ], [ %3481, %3470 ], [ %3442, %3428 ]
  %3516 = phi float [ %3412, %3409 ], [ %3512, %3485 ], [ %3412, %3483 ], [ %3482, %3470 ], [ %3443, %3428 ]
  %3517 = phi float [ %3413, %3409 ], [ %3413, %3485 ], [ %3413, %3483 ], [ %3413, %3470 ], [ %3453, %3428 ]
  %3518 = phi float [ %3414, %3409 ], [ %3414, %3485 ], [ %3414, %3483 ], [ %3414, %3470 ], [ %3454, %3428 ]
  %3519 = phi float [ %3415, %3409 ], [ %3415, %3485 ], [ %3415, %3483 ], [ %3415, %3470 ], [ %3455, %3428 ]
  %3520 = phi float [ %3416, %3409 ], [ %3416, %3485 ], [ %3416, %3483 ], [ %3416, %3470 ], [ %3462, %3428 ]
  %3521 = phi float [ %3417, %3409 ], [ %3417, %3485 ], [ %3417, %3483 ], [ %3417, %3470 ], [ %3463, %3428 ]
  %3522 = phi float [ %3418, %3409 ], [ %3418, %3485 ], [ %3418, %3483 ], [ %3418, %3470 ], [ %3464, %3428 ]
  %3523 = phi float [ %2715, %3409 ], [ %2715, %3485 ], [ %2715, %3483 ], [ %2715, %3470 ], [ %3446, %3428 ]
  %3524 = phi float [ %2718, %3409 ], [ %2718, %3485 ], [ %2718, %3483 ], [ %2718, %3470 ], [ %3467, %3428 ]
  %3525 = and i32 %3420, 12
  %3526 = icmp eq i32 %3525, 12
  br i1 %3526, label %3599, label %3527

; <label>:3527                                    ; preds = %3513
  %3528 = and i32 %3420, 2097184
  %3529 = icmp eq i32 %3528, 2097184
  %3530 = select i1 %3529, float %3016, float 0.000000e+00
  %3531 = and i32 %3420, 4194336
  %3532 = icmp eq i32 %3531, 4194336
  %3533 = select i1 %3532, float %3016, float 0.000000e+00
  %3534 = and i32 %3420, 8388640
  %3535 = icmp eq i32 %3534, 8388640
  %3536 = select i1 %3535, float %3016, float 0.000000e+00
  %3537 = icmp eq i32 %3525, 0
  br i1 %3537, label %3538, label %3551

; <label>:3538                                    ; preds = %3527
  %3539 = fsub fast float %3317, %2704
  %3540 = fsub fast float %3318, %2705
  %3541 = fmul fast float %3530, %3539
  %3542 = fmul fast float %3530, %3540
  %3543 = fadd fast float %3541, %2704
  %3544 = fadd fast float %3542, %2705
  %3545 = fsub fast float %3319, %2717
  %3546 = fmul fast float %3533, %3545
  %3547 = fadd fast float %3546, %2717
  %3548 = fsub fast float %3316, %2716
  %3549 = fmul fast float %3536, %3548
  %3550 = fadd fast float %3549, %2716
  br label %3599

; <label>:3551                                    ; preds = %3527
  %3552 = icmp eq i32 %3525, 4
  br i1 %3552, label %3553, label %3585

; <label>:3553                                    ; preds = %3551
  %3554 = fmul fast float %3530, %3317
  %3555 = fmul fast float %3530, %3318
  %3556 = fadd fast float %3554, %2704
  %3557 = fadd fast float %3555, %2705
  %3558 = call float @dx.op.binary.f32(i32 36, float %2717, float %3319)  ; FMin(a,b)
  %3559 = fsub fast float %3558, %2717
  %3560 = fmul fast float %3559, %3533
  %3561 = fadd fast float %3560, %2717
  %3562 = fadd fast float %3316, %2716
  %3563 = fmul fast float %3562, 0x3FF337FAE0000000
  %3564 = fmul fast float %2716, %2716
  %3565 = fmul fast float %3316, %3316
  %3566 = fadd fast float %3565, %3564
  %3567 = fmul fast float %3566, 0x3FE5152B00000000
  %3568 = fmul fast float %2716, 0xBFCC1F85E0000000
  %3569 = fmul fast float %3568, %3316
  %3570 = fadd fast float %3569, 0xBFE1363700000000
  %3571 = fadd fast float %3570, %3563
  %3572 = fsub fast float %3571, %3567
  %3573 = fmul fast float %3562, 0x3FBA6F0D00000000
  %3574 = fmul fast float %3566, 0x3FD0432880000000
  %3575 = fmul fast float %2716, 0xBFEF110800000000
  %3576 = fmul fast float %3575, %3316
  %3577 = fadd fast float %3576, 1.000000e+00
  %3578 = fsub fast float %3577, %3573
  %3579 = fadd fast float %3578, %3574
  %3580 = fdiv fast float %3572, %3579
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3582 = fsub fast float %3581, %2716
  %3583 = fmul fast float %3582, %3536
  %3584 = fadd fast float %3583, %2716
  br label %3599

; <label>:3585                                    ; preds = %3551
  %3586 = icmp eq i32 %3525, 8
  br i1 %3586, label %3587, label %3599

; <label>:3587                                    ; preds = %3585
  %3588 = fmul fast float %3530, %3317
  %3589 = fmul fast float %3530, %3318
  %3590 = fadd fast float %3588, %2704
  %3591 = fadd fast float %3589, %2705
  %3592 = call float @dx.op.binary.f32(i32 36, float %2717, float %3319)  ; FMin(a,b)
  %3593 = fsub fast float %3592, %2717
  %3594 = fmul fast float %3593, %3533
  %3595 = fadd fast float %3594, %2717
  %3596 = fsub fast float %3316, %2716
  %3597 = fmul fast float %3536, %3596
  %3598 = fadd fast float %3597, %2716
  br label %3599

; <label>:3599                                    ; preds = %3587, %3585, %3553, %3538, %3513, %3015, %2719, %2703
  %3600 = phi float [ %2704, %3513 ], [ %2704, %3015 ], [ %2704, %2703 ], [ %2704, %2719 ], [ %3543, %3538 ], [ %3556, %3553 ], [ %2704, %3585 ], [ %3590, %3587 ]
  %3601 = phi float [ %2705, %3513 ], [ %2705, %3015 ], [ %2705, %2703 ], [ %2705, %2719 ], [ %3544, %3538 ], [ %3557, %3553 ], [ %2705, %3585 ], [ %3591, %3587 ]
  %3602 = phi float [ %3514, %3513 ], [ %2706, %3015 ], [ %2706, %2703 ], [ %2706, %2719 ], [ %3514, %3538 ], [ %3514, %3553 ], [ %3514, %3585 ], [ %3514, %3587 ]
  %3603 = phi float [ %3515, %3513 ], [ %2707, %3015 ], [ %2707, %2703 ], [ %2707, %2719 ], [ %3515, %3538 ], [ %3515, %3553 ], [ %3515, %3585 ], [ %3515, %3587 ]
  %3604 = phi float [ %3516, %3513 ], [ %2708, %3015 ], [ %2708, %2703 ], [ %2708, %2719 ], [ %3516, %3538 ], [ %3516, %3553 ], [ %3516, %3585 ], [ %3516, %3587 ]
  %3605 = phi float [ %3517, %3513 ], [ %2709, %3015 ], [ %2709, %2703 ], [ %2709, %2719 ], [ %3517, %3538 ], [ %3517, %3553 ], [ %3517, %3585 ], [ %3517, %3587 ]
  %3606 = phi float [ %3518, %3513 ], [ %2710, %3015 ], [ %2710, %2703 ], [ %2710, %2719 ], [ %3518, %3538 ], [ %3518, %3553 ], [ %3518, %3585 ], [ %3518, %3587 ]
  %3607 = phi float [ %3519, %3513 ], [ %2711, %3015 ], [ %2711, %2703 ], [ %2711, %2719 ], [ %3519, %3538 ], [ %3519, %3553 ], [ %3519, %3585 ], [ %3519, %3587 ]
  %3608 = phi float [ %3520, %3513 ], [ %2712, %3015 ], [ %2712, %2703 ], [ %2712, %2719 ], [ %3520, %3538 ], [ %3520, %3553 ], [ %3520, %3585 ], [ %3520, %3587 ]
  %3609 = phi float [ %3521, %3513 ], [ %2713, %3015 ], [ %2713, %2703 ], [ %2713, %2719 ], [ %3521, %3538 ], [ %3521, %3553 ], [ %3521, %3585 ], [ %3521, %3587 ]
  %3610 = phi float [ %3522, %3513 ], [ %2714, %3015 ], [ %2714, %2703 ], [ %2714, %2719 ], [ %3522, %3538 ], [ %3522, %3553 ], [ %3522, %3585 ], [ %3522, %3587 ]
  %3611 = phi float [ %3523, %3513 ], [ %2715, %3015 ], [ %2715, %2703 ], [ %2715, %2719 ], [ %3523, %3538 ], [ %3523, %3553 ], [ %3523, %3585 ], [ %3523, %3587 ]
  %3612 = phi float [ %2716, %3513 ], [ %2716, %3015 ], [ %2716, %2703 ], [ %2716, %2719 ], [ %3550, %3538 ], [ %3584, %3553 ], [ %2716, %3585 ], [ %3598, %3587 ]
  %3613 = phi float [ %2717, %3513 ], [ %2717, %3015 ], [ %2717, %2703 ], [ %2717, %2719 ], [ %3547, %3538 ], [ %3561, %3553 ], [ %2717, %3585 ], [ %3595, %3587 ]
  %3614 = phi float [ %3524, %3513 ], [ %2718, %3015 ], [ %2718, %2703 ], [ %2718, %2719 ], [ %3524, %3538 ], [ %3524, %3553 ], [ %3524, %3585 ], [ %3524, %3587 ]
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = call float @dx.op.dot2.f32(i32 54, float %3600, float %3601, float %3600, float %3601)  ; Dot2(ax,ay,bx,by)
  %3618 = fmul fast float %3617, 0x3FE3333340000000
  %3619 = fsub fast float 1.000000e+00, %3618
  %3620 = call float @dx.op.dot3.f32(i32 55, float %3600, float %3601, float %3619, float %3600, float %3601, float %3619)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = call float @dx.op.unary.f32(i32 25, float %3620)  ; Rsqrt(value)
  %3622 = fmul fast float %3621, %3600
  %3623 = fmul fast float %3621, %3601
  %3624 = fmul fast float %3619, %3621
  %3625 = fmul fast float %3624, %85
  %3626 = fmul fast float %3624, %86
  %3627 = fmul fast float %3624, %87
  %3628 = fmul fast float %3622, %59
  %3629 = fmul fast float %3622, %60
  %3630 = fmul fast float %3622, %61
  %3631 = fadd fast float %3625, %3628
  %3632 = fadd fast float %3626, %3629
  %3633 = fadd fast float %3627, %3630
  %3634 = fmul fast float %97, %3623
  %3635 = fmul fast float %98, %3623
  %3636 = fmul fast float %99, %3623
  %3637 = fadd fast float %3631, %3634
  %3638 = fadd fast float %3632, %3635
  %3639 = fadd fast float %3633, %3636
  %3640 = call float @dx.op.dot3.f32(i32 55, float %3637, float %3638, float %3639, float %3637, float %3638, float %3639)  ; Dot3(ax,ay,az,bx,by,bz)
  %3641 = call float @dx.op.unary.f32(i32 25, float %3640)  ; Rsqrt(value)
  %3642 = fmul fast float %3637, %3641
  %3643 = fmul fast float %3638, %3641
  %3644 = fmul fast float %3639, %3641
  %3645 = and i32 %45, 1
  %3646 = icmp eq i32 %3645, 0
  br i1 %3646, label %3647, label %4155

; <label>:3647                                    ; preds = %3599
  %3648 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3649 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3650 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3651 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3652 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3653 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3654 = fadd fast float %3648, %141
  %3655 = fadd fast float %3649, %142
  %3656 = fadd fast float %3650, %143
  %3657 = fadd fast float %3651, %141
  %3658 = fadd fast float %3652, %142
  %3659 = fadd fast float %3653, %143
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 3
  %3667 = fmul fast float %3661, %78
  %3668 = fmul fast float %3667, %3665
  %3669 = fmul fast float %3662, %79
  %3670 = fmul fast float %3669, %3666
  %3671 = fptoui float %3668 to i32
  %3672 = fptoui float %3670 to i32
  %3673 = fadd fast float %3661, -1.000000e+00
  %3674 = fadd fast float %3662, -1.000000e+00
  %3675 = fptoui float %3673 to i32
  %3676 = fptoui float %3674 to i32
  %3677 = call i32 @dx.op.binary.i32(i32 40, i32 %3671, i32 %3675)  ; UMin(a,b)
  %3678 = call i32 @dx.op.binary.i32(i32 40, i32 %3672, i32 %3676)  ; UMin(a,b)
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3681 = extractvalue %dx.types.CBufRet.f32 %3679, 3
  %3682 = fmul fast float %3680, %73
  %3683 = fsub fast float %3682, %3681
  %3684 = fadd fast float %3663, -1.000000e+00
  %3685 = call float @dx.op.binary.f32(i32 36, float %3683, float %3684)  ; FMin(a,b)
  %3686 = fptoui float %3685 to i32
  %3687 = fptoui float %3661 to i32
  %3688 = fptoui float %3662 to i32
  %3689 = mul i32 %3686, %3688
  %3690 = add i32 %3689, %3678
  %3691 = mul i32 %3690, %3687
  %3692 = add i32 %3691, %3677
  %3693 = shl i32 %3692, 2
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 1023
  %3697 = lshr i32 %3695, 10
  %3698 = icmp eq i32 %3696, 0
  br i1 %3698, label %4124, label %3699

; <label>:3699                                    ; preds = %3647
  %3700 = and i32 %3695, 1023
  br label %3701

; <label>:3701                                    ; preds = %3827, %3699
  %3702 = phi i32 [ %3777, %3827 ], [ 0, %3699 ]
  %3703 = phi float [ %3828, %3827 ], [ 0.000000e+00, %3699 ]
  %3704 = phi float [ %3829, %3827 ], [ %3616, %3699 ]
  %3705 = phi float [ %3830, %3827 ], [ %3614, %3699 ]
  %3706 = phi float [ %3831, %3827 ], [ 0.000000e+00, %3699 ]
  %3707 = phi float [ %3832, %3827 ], [ 0.000000e+00, %3699 ]
  %3708 = phi float [ %3833, %3827 ], [ %3605, %3699 ]
  %3709 = phi float [ %3834, %3827 ], [ %3606, %3699 ]
  %3710 = phi float [ %3835, %3827 ], [ %3607, %3699 ]
  %3711 = phi float [ %3836, %3827 ], [ %3642, %3699 ]
  %3712 = phi float [ %3837, %3827 ], [ %3643, %3699 ]
  %3713 = phi float [ %3838, %3827 ], [ %3644, %3699 ]
  %3714 = phi float [ %3839, %3827 ], [ %3613, %3699 ]
  %3715 = phi float [ %3840, %3827 ], [ %3612, %3699 ]
  %3716 = phi float [ %3841, %3827 ], [ 0.000000e+00, %3699 ]
  %3717 = phi float [ %3842, %3827 ], [ %3611, %3699 ]
  %3718 = phi float [ %3843, %3827 ], [ %3602, %3699 ]
  %3719 = phi float [ %3844, %3827 ], [ %3603, %3699 ]
  %3720 = phi float [ %3845, %3827 ], [ %3604, %3699 ]
  %3721 = add nuw nsw i32 %3702, %3697
  %3722 = shl i32 %3721, 2
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = shl i32 %3724, 8
  %3726 = or i32 %3725, 48
  %3727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.ResRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.ResRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.ResRet.f32 %3727, 3
  %3732 = or i32 %3725, 64
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = extractvalue %dx.types.ResRet.i32 %3733, 1
  %3736 = or i32 %3725, 80
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3740 = or i32 %3725, 96
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3745 = extractvalue %dx.types.ResRet.f32 %3741, 3
  %3746 = or i32 %3725, 112
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 2
  %3749 = or i32 %3725, 128
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = extractvalue %dx.types.ResRet.f32 %3750, 3
  %3755 = or i32 %3725, 144
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = extractvalue %dx.types.ResRet.f32 %3756, 2
  %3760 = extractvalue %dx.types.ResRet.f32 %3756, 3
  %3761 = or i32 %3725, 160
  %3762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = extractvalue %dx.types.ResRet.f32 %3762, 3
  %3767 = or i32 %3725, 192
  %3768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.i32 %3768, 0
  %3770 = or i32 %3725, 208
  %3771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = or i32 %3725, 248
  %3774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = add nuw nsw i32 %3702, 1
  %3778 = bitcast float %3731 to i32
  %3779 = and i32 %3778, 512
  %3780 = icmp eq i32 %3779, 0
  %3781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = extractvalue %dx.types.ResRet.f32 %3781, 3
  %3786 = call float @dx.op.dot4.f32(i32 56, float %3782, float %3783, float %3784, float %3785, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3787 = or i32 %3725, 16
  %3788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.ResRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.ResRet.f32 %3788, 2
  %3792 = extractvalue %dx.types.ResRet.f32 %3788, 3
  %3793 = call float @dx.op.dot4.f32(i32 56, float %3789, float %3790, float %3791, float %3792, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3794 = or i32 %3725, 32
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = call float @dx.op.dot4.f32(i32 56, float %3796, float %3797, float %3798, float %3799, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3801 = call float @dx.op.unary.f32(i32 27, float %3786)  ; Round_ni(value)
  %3802 = call float @dx.op.unary.f32(i32 6, float %3801)  ; FAbs(value)
  %3803 = call float @dx.op.unary.f32(i32 27, float %3793)  ; Round_ni(value)
  %3804 = call float @dx.op.unary.f32(i32 6, float %3803)  ; FAbs(value)
  %3805 = call float @dx.op.unary.f32(i32 6, float %3800)  ; FAbs(value)
  %3806 = call float @dx.op.unary.f32(i32 27, float %3805)  ; Round_ni(value)
  %3807 = fadd fast float %3804, %3802
  %3808 = fadd fast float %3807, %3806
  %3809 = fcmp fast oeq float %3808, 0.000000e+00
  %3810 = call float @dx.op.dot4.f32(i32 56, float %3782, float %3783, float %3784, float %3785, float %3654, float %3655, float %3656, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3811 = call float @dx.op.dot4.f32(i32 56, float %3789, float %3790, float %3791, float %3792, float %3654, float %3655, float %3656, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3812 = call float @dx.op.dot4.f32(i32 56, float %3782, float %3783, float %3784, float %3785, float %3657, float %3658, float %3659, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3813 = call float @dx.op.dot4.f32(i32 56, float %3789, float %3790, float %3791, float %3792, float %3657, float %3658, float %3659, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3814 = fsub fast float %3810, %3786
  %3815 = fsub fast float %3812, %3786
  %3816 = fsub fast float %3811, %3793
  %3817 = fsub fast float %3813, %3793
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3730, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 2
  %3821 = fadd fast float %3820, %3818
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3819, 0
  %3824 = fcmp fast ogt float %3822, %3823
  %3825 = and i1 %3809, %3824
  %3826 = and i1 %3780, %3825
  br i1 %3826, label %3847, label %3827

; <label>:3827                                    ; preds = %4110, %3928, %3847, %3701
  %3828 = phi float [ %3703, %3847 ], [ %3931, %3928 ], [ %3931, %4110 ], [ %3703, %3701 ]
  %3829 = phi float [ %3704, %3847 ], [ %3704, %3928 ], [ %4085, %4110 ], [ %3704, %3701 ]
  %3830 = phi float [ %3705, %3847 ], [ %3705, %3928 ], [ %4083, %4110 ], [ %3705, %3701 ]
  %3831 = phi float [ %3706, %3847 ], [ %3706, %3928 ], [ %4055, %4110 ], [ %3706, %3701 ]
  %3832 = phi float [ %3707, %3847 ], [ %3707, %3928 ], [ %4053, %4110 ], [ %3707, %3701 ]
  %3833 = phi float [ %3708, %3847 ], [ %3708, %3928 ], [ %4120, %4110 ], [ %3708, %3701 ]
  %3834 = phi float [ %3709, %3847 ], [ %3709, %3928 ], [ %4121, %4110 ], [ %3709, %3701 ]
  %3835 = phi float [ %3710, %3847 ], [ %3710, %3928 ], [ %4122, %4110 ], [ %3710, %3701 ]
  %3836 = phi float [ %3711, %3847 ], [ %3711, %3928 ], [ %4034, %4110 ], [ %3711, %3701 ]
  %3837 = phi float [ %3712, %3847 ], [ %3712, %3928 ], [ %4035, %4110 ], [ %3712, %3701 ]
  %3838 = phi float [ %3713, %3847 ], [ %3713, %3928 ], [ %4036, %4110 ], [ %3713, %3701 ]
  %3839 = phi float [ %3714, %3847 ], [ %3714, %3928 ], [ %4063, %4110 ], [ %3714, %3701 ]
  %3840 = phi float [ %3715, %3847 ], [ %3715, %3928 ], [ %4060, %4110 ], [ %3715, %3701 ]
  %3841 = phi float [ %3716, %3847 ], [ %3716, %3928 ], [ %4057, %4110 ], [ %3716, %3701 ]
  %3842 = phi float [ %3717, %3847 ], [ %3717, %3928 ], [ %4051, %4110 ], [ %3717, %3701 ]
  %3843 = phi float [ %3718, %3847 ], [ %3718, %3928 ], [ %4046, %4110 ], [ %3718, %3701 ]
  %3844 = phi float [ %3719, %3847 ], [ %3719, %3928 ], [ %4047, %4110 ], [ %3719, %3701 ]
  %3845 = phi float [ %3720, %3847 ], [ %3720, %3928 ], [ %4048, %4110 ], [ %3720, %3701 ]
  %3846 = icmp eq i32 %3777, %3700
  br i1 %3846, label %4123, label %3701

; <label>:3847                                    ; preds = %3701
  %3848 = extractvalue %dx.types.ResRet.f32 %3747, 3
  %3849 = extractvalue %dx.types.ResRet.f32 %3747, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3853 = extractvalue %dx.types.ResRet.i32 %3733, 3
  %3854 = extractvalue %dx.types.ResRet.i32 %3733, 2
  %3855 = add i32 %3853, 0
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3855, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3856, %dx.types.Handle %3857, float %3786, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3814, float %3816, float undef, float %3815, float %3817, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = fmul fast float %3859, %3852
  %3861 = fadd fast float %3860, %3851
  %3862 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3863 = fmul fast float %3786, %3742
  %3864 = call float @dx.op.tertiary.f32(i32 46, float %3743, float %3793, float %3863)  ; FMad(a,b,c)
  %3865 = fadd fast float %3864, %3850
  %3866 = fmul fast float %3786, %3744
  %3867 = call float @dx.op.tertiary.f32(i32 46, float %3745, float %3793, float %3866)  ; FMad(a,b,c)
  %3868 = fadd fast float %3867, %3849
  %3869 = fmul fast float %3814, %3742
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3743, float %3816, float %3869)  ; FMad(a,b,c)
  %3871 = fmul fast float %3814, %3744
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3745, float %3816, float %3871)  ; FMad(a,b,c)
  %3873 = fmul fast float %3815, %3742
  %3874 = call float @dx.op.tertiary.f32(i32 46, float %3743, float %3817, float %3873)  ; FMad(a,b,c)
  %3875 = fmul fast float %3815, %3744
  %3876 = call float @dx.op.tertiary.f32(i32 46, float %3745, float %3817, float %3875)  ; FMad(a,b,c)
  %3877 = add i32 %3854, 0
  %3878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3877, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3879 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3878, %dx.types.Handle %3857, float %3865, float %3868, float undef, float undef, i32 0, i32 0, i32 undef, float %3870, float %3872, float undef, float %3874, float %3876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = and i32 %3778, 1024
  %3882 = icmp ne i32 %3881, 0
  %3883 = fcmp fast ogt float %3880, 0x3FE0101020000000
  %3884 = uitofp i1 %3883 to float
  %3885 = select i1 %3882, float %3884, float %3880
  %3886 = and i32 %3778, 8192
  %3887 = icmp ne i32 %3886, 0
  %3888 = select i1 %3887, float %3848, float 1.000000e+00
  %3889 = fmul fast float %3786, 2.000000e+00
  %3890 = fadd fast float %3889, -1.000000e+00
  %3891 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3892 = fmul fast float %3891, %3775
  %3893 = fsub fast float %3892, %3775
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3793, 2.000000e+00
  %3896 = fadd fast float %3895, -1.000000e+00
  %3897 = call float @dx.op.unary.f32(i32 6, float %3896)  ; FAbs(value)
  %3898 = fmul fast float %3897, %3776
  %3899 = fsub fast float %3898, %3776
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = fmul fast float %3805, %3738
  %3902 = fsub fast float %3901, %3738
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fmul fast float %3862, %3888
  %3905 = fmul fast float %3904, %3859
  %3906 = fmul fast float %3905, %3894
  %3907 = fmul fast float %3906, %3885
  %3908 = fmul fast float %3907, %3900
  %3909 = fmul fast float %3908, %3903
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3912 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3913 = fsub fast float %3822, %3912
  %3914 = fmul fast float %3913, %3911
  %3915 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3916 = fmul fast float %3909, %3739
  %3917 = fadd fast float %3909, %3739
  %3918 = fmul fast float %3917, %3748
  %3919 = fsub fast float %3918, %3748
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = and i32 %3778, 128
  %3922 = icmp ne i32 %3921, 0
  %3923 = select i1 %3922, float %3920, float %3916
  %3924 = fmul fast float %3923, %3915
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = fcmp fast ugt float %3924, %3926
  br i1 %3927, label %3928, label %3827

; <label>:3928                                    ; preds = %3847
  %3929 = select i1 %3887, float %3924, float 0.000000e+00
  %3930 = fadd fast float %3929, %3703
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  br i1 %3887, label %3827, label %3932

; <label>:3932                                    ; preds = %3928
  %3933 = and i32 %3778, 4
  %3934 = and i32 %3778, 8
  %3935 = add i32 %3734, 0
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3935, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3936, %dx.types.Handle %3937, float %3865, float %3868, float undef, float undef, i32 0, i32 0, i32 undef, float %3870, float %3872, float undef, float %3874, float %3876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = bitcast float %3760 to i32
  %3944 = and i32 %3943, 255
  %3945 = uitofp i32 %3944 to float
  %3946 = lshr i32 %3943, 8
  %3947 = and i32 %3946, 255
  %3948 = uitofp i32 %3947 to float
  %3949 = fmul fast float %3942, %3945
  %3950 = fadd fast float %3949, %3948
  %3951 = fmul fast float %3950, 0x3F70101000000000
  %3952 = add i32 %3735, 0
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3953, %dx.types.Handle %3937, float %3865, float %3868, float undef, float undef, i32 0, i32 0, i32 undef, float %3870, float %3872, float undef, float %3874, float %3876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3959 = bitcast float %3754 to i32
  %3960 = and i32 %3959, 255
  %3961 = uitofp i32 %3960 to float
  %3962 = lshr i32 %3959, 8
  %3963 = and i32 %3962, 255
  %3964 = uitofp i32 %3963 to float
  %3965 = lshr i32 %3959, 16
  %3966 = and i32 %3965, 255
  %3967 = uitofp i32 %3966 to float
  %3968 = fmul fast float %3967, 0x3F70101000000000
  %3969 = fmul fast float %3955, %3961
  %3970 = fadd fast float %3969, %3964
  %3971 = fmul fast float %3970, 0x3F70101000000000
  %3972 = fadd fast float %3956, -5.000000e-01
  %3973 = fadd fast float %3958, -5.000000e-01
  %3974 = fmul fast float %3972, %3968
  %3975 = fmul fast float %3973, %3968
  %3976 = fadd fast float %3974, 5.000000e-01
  %3977 = fadd fast float %3975, 5.000000e-01
  %3978 = fmul fast float %3939, %3763
  %3979 = fmul fast float %3940, %3764
  %3980 = fmul fast float %3941, %3765
  %3981 = fmul fast float %3976, 2.000000e+00
  %3982 = fadd fast float %3981, -1.000000e+00
  %3983 = fmul fast float %3977, 2.000000e+00
  %3984 = fadd fast float %3983, -1.000000e+00
  %3985 = fadd fast float %3982, %3984
  %3986 = fmul fast float %3985, 5.000000e-01
  %3987 = fsub fast float %3982, %3984
  %3988 = fmul fast float %3987, 5.000000e-01
  %3989 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3990 = fsub fast float 1.000000e+00, %3989
  %3991 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %3992 = fsub fast float %3990, %3991
  %3993 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3988, float %3992, float %3986, float %3988, float %3992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3994 = call float @dx.op.unary.f32(i32 25, float %3993)  ; Rsqrt(value)
  %3995 = fmul fast float %3986, %3994
  %3996 = fmul fast float %3988, %3994
  %3997 = fmul fast float %3994, %3992
  %3998 = fmul fast float %3997, %3728
  %3999 = fmul fast float %3997, %3729
  %4000 = fmul fast float %3997, %3730
  %4001 = fmul fast float %3995, %3751
  %4002 = fmul fast float %3995, %3752
  %4003 = fmul fast float %3995, %3753
  %4004 = fadd fast float %4001, %3998
  %4005 = fadd fast float %4002, %3999
  %4006 = fadd fast float %4003, %4000
  %4007 = fmul fast float %3996, %3757
  %4008 = fmul fast float %3996, %3758
  %4009 = fmul fast float %3996, %3759
  %4010 = fadd fast float %4004, %4007
  %4011 = fadd fast float %4005, %4008
  %4012 = fadd fast float %4006, %4009
  %4013 = call float @dx.op.dot3.f32(i32 55, float %4010, float %4011, float %4012, float %4010, float %4011, float %4012)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = call float @dx.op.unary.f32(i32 25, float %4013)  ; Rsqrt(value)
  %4015 = fmul fast float %4010, %4014
  %4016 = fmul fast float %4011, %4014
  %4017 = fmul fast float %4012, %4014
  %4018 = icmp ne i32 %3934, 0
  %4019 = select i1 %4018, float 1.000000e+00, float 0.000000e+00
  %4020 = fmul fast float %3924, %4019
  %4021 = and i32 %3778, 1
  %4022 = icmp eq i32 %4021, 0
  br i1 %4022, label %4023, label %4027

; <label>:4023                                    ; preds = %3932
  %4024 = fsub fast float %4015, %3711
  %4025 = fsub fast float %4016, %3712
  %4026 = fsub fast float %4017, %3713
  br label %4027

; <label>:4027                                    ; preds = %4023, %3932
  %4028 = phi float [ %4024, %4023 ], [ %4015, %3932 ]
  %4029 = phi float [ %4025, %4023 ], [ %4016, %3932 ]
  %4030 = phi float [ %4026, %4023 ], [ %4017, %3932 ]
  %4031 = fmul float %4030, %4020
  %4032 = fmul float %4029, %4020
  %4033 = fmul float %4028, %4020
  %4034 = fadd fast float %4033, %3711
  %4035 = fadd fast float %4032, %3712
  %4036 = fadd fast float %4031, %3713
  %4037 = icmp ne i32 %3933, 0
  %4038 = select i1 %4037, float 1.000000e+00, float 0.000000e+00
  %4039 = fmul fast float %3924, %4038
  %4040 = fsub fast float %3978, %3718
  %4041 = fsub fast float %3979, %3719
  %4042 = fsub fast float %3980, %3720
  %4043 = fmul fast float %4040, %4039
  %4044 = fmul fast float %4041, %4039
  %4045 = fmul fast float %4042, %4039
  %4046 = fadd fast float %4043, %3718
  %4047 = fadd fast float %4044, %3719
  %4048 = fadd fast float %4045, %3720
  %4049 = fsub fast float %3951, %3717
  %4050 = fmul fast float %4049, %4039
  %4051 = fadd fast float %4050, %3717
  %4052 = fmul fast float %4039, %3707
  %4053 = fsub fast float %3707, %4052
  %4054 = fmul fast float %4039, %3706
  %4055 = fsub fast float %3706, %4054
  %4056 = fadd fast float %3924, %3716
  %4057 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4058 = fsub fast float %3971, %3715
  %4059 = fmul fast float %4058, %4020
  %4060 = fadd fast float %4059, %3715
  %4061 = fsub fast float %3957, %3714
  %4062 = fmul fast float %4061, %4020
  %4063 = fadd fast float %4062, %3714
  %4064 = call float @dx.op.dot3.f32(i32 55, float %3978, float %3979, float %3980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4068 = fmul fast float %4067, %4064
  %4069 = fadd fast float %4068, %4066
  %4070 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4071 = bitcast float %3766 to i32
  %4072 = and i32 %4071, 65535
  %4073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4072)  ; LegacyF16ToF32(value)
  %4074 = lshr i32 %4071, 16
  %4075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4074)  ; LegacyF16ToF32(value)
  %4076 = fcmp fast oge float %4073, 0.000000e+00
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = select i1 %4076, float %4073, float %4078
  %4080 = fadd fast float %4079, %4075
  %4081 = fsub fast float %4070, %3705
  %4082 = fmul fast float %4081, %3924
  %4083 = fadd fast float %4082, %3705
  %4084 = fmul fast float %4080, %3924
  %4085 = call float @dx.op.binary.f32(i32 35, float %3704, float %4084)  ; FMax(a,b)
  %4086 = and i32 %3778, 16
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4110, label %4088

; <label>:4088                                    ; preds = %4027
  %4089 = bitcast float %3772 to i32
  %4090 = add i32 %3769, 0
  %4091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4090, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4092 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4091, %dx.types.Handle %3937, float %3865, float %3868, float undef, float undef, i32 0, i32 0, i32 undef, float %3870, float %3872, float undef, float %3874, float %3876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = extractvalue %dx.types.ResRet.f32 %4092, 1
  %4095 = extractvalue %dx.types.ResRet.f32 %4092, 2
  %4096 = and i32 %4089, 65535
  %4097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4096)  ; LegacyF16ToF32(value)
  %4098 = fmul fast float %4093, %3763
  %4099 = fmul fast float %4094, %3764
  %4100 = fmul fast float %4095, %3765
  %4101 = and i32 %3778, 16384
  %4102 = icmp ne i32 %4101, 0
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = select i1 %4102, float %4104, float 1.000000e+00
  %4106 = fmul fast float %4105, %4097
  %4107 = fmul fast float %4098, %4106
  %4108 = fmul fast float %4099, %4106
  %4109 = fmul fast float %4100, %4106
  br label %4110

; <label>:4110                                    ; preds = %4088, %4027
  %4111 = phi float [ %4107, %4088 ], [ 0.000000e+00, %4027 ]
  %4112 = phi float [ %4108, %4088 ], [ 0.000000e+00, %4027 ]
  %4113 = phi float [ %4109, %4088 ], [ 0.000000e+00, %4027 ]
  %4114 = fsub fast float %4111, %3708
  %4115 = fsub fast float %4112, %3709
  %4116 = fsub fast float %4113, %3710
  %4117 = fmul fast float %4114, %3924
  %4118 = fmul fast float %4115, %3924
  %4119 = fmul fast float %4116, %3924
  %4120 = fadd fast float %4117, %3708
  %4121 = fadd fast float %4118, %3709
  %4122 = fadd fast float %4119, %3710
  br label %3827

; <label>:4123                                    ; preds = %3827
  br label %4124

; <label>:4124                                    ; preds = %4123, %3647
  %4125 = phi float [ 0.000000e+00, %3647 ], [ %3828, %4123 ]
  %4126 = phi float [ %3616, %3647 ], [ %3829, %4123 ]
  %4127 = phi float [ %3614, %3647 ], [ %3830, %4123 ]
  %4128 = phi float [ 0.000000e+00, %3647 ], [ %3831, %4123 ]
  %4129 = phi float [ 0.000000e+00, %3647 ], [ %3832, %4123 ]
  %4130 = phi float [ %3605, %3647 ], [ %3833, %4123 ]
  %4131 = phi float [ %3606, %3647 ], [ %3834, %4123 ]
  %4132 = phi float [ %3607, %3647 ], [ %3835, %4123 ]
  %4133 = phi float [ %3642, %3647 ], [ %3836, %4123 ]
  %4134 = phi float [ %3643, %3647 ], [ %3837, %4123 ]
  %4135 = phi float [ %3644, %3647 ], [ %3838, %4123 ]
  %4136 = phi float [ %3613, %3647 ], [ %3839, %4123 ]
  %4137 = phi float [ %3612, %3647 ], [ %3840, %4123 ]
  %4138 = phi float [ 0.000000e+00, %3647 ], [ %3841, %4123 ]
  %4139 = phi float [ %3611, %3647 ], [ %3842, %4123 ]
  %4140 = phi float [ %3602, %3647 ], [ %3843, %4123 ]
  %4141 = phi float [ %3603, %3647 ], [ %3844, %4123 ]
  %4142 = phi float [ %3604, %3647 ], [ %3845, %4123 ]
  %4143 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4134, float %4135, float %4133, float %4134, float %4135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4144 = call float @dx.op.unary.f32(i32 25, float %4143)  ; Rsqrt(value)
  %4145 = fmul fast float %4144, %4133
  %4146 = fmul fast float %4144, %4134
  %4147 = fmul fast float %4144, %4135
  %4148 = fadd fast float %4138, %923
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4145, float %4146, float %4147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call float @dx.op.unary.f32(i32 25, float %4150)  ; Rsqrt(value)
  %4152 = fmul fast float %4151, %4145
  %4153 = fmul fast float %4151, %4146
  %4154 = fmul fast float %4151, %4147
  br label %4155

; <label>:4155                                    ; preds = %4124, %3599
  %4156 = phi float [ %4152, %4124 ], [ %3642, %3599 ]
  %4157 = phi float [ %4153, %4124 ], [ %3643, %3599 ]
  %4158 = phi float [ %4154, %4124 ], [ %3644, %3599 ]
  %4159 = phi float [ %4140, %4124 ], [ %3602, %3599 ]
  %4160 = phi float [ %4141, %4124 ], [ %3603, %3599 ]
  %4161 = phi float [ %4142, %4124 ], [ %3604, %3599 ]
  %4162 = phi float [ %4130, %4124 ], [ %3605, %3599 ]
  %4163 = phi float [ %4131, %4124 ], [ %3606, %3599 ]
  %4164 = phi float [ %4132, %4124 ], [ %3607, %3599 ]
  %4165 = phi float [ %4139, %4124 ], [ %3611, %3599 ]
  %4166 = phi float [ %4149, %4124 ], [ %923, %3599 ]
  %4167 = phi float [ %4137, %4124 ], [ %3612, %3599 ]
  %4168 = phi float [ %4136, %4124 ], [ %3613, %3599 ]
  %4169 = phi float [ %4129, %4124 ], [ 0.000000e+00, %3599 ]
  %4170 = phi float [ %4128, %4124 ], [ 0.000000e+00, %3599 ]
  %4171 = phi float [ %4125, %4124 ], [ 0.000000e+00, %3599 ]
  %4172 = phi float [ %4126, %4124 ], [ %3616, %3599 ]
  %4173 = phi float [ %4127, %4124 ], [ %3614, %3599 ]
  %4174 = fadd fast float %4165, 0xBFB99999A0000000
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4175, 0x3FF1C71C80000000
  %4177 = call float @dx.op.binary.f32(i32 36, float %4165, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4178 = fsub fast float 1.000000e+00, %4176
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = fmul fast float %4179, %4159
  %4181 = fmul fast float %4179, %4160
  %4182 = fmul fast float %4179, %4161
  %4183 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4184 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4185 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4186 = fmul fast float %4176, %4159
  %4187 = fmul fast float %4176, %4160
  %4188 = fmul fast float %4176, %4161
  %4189 = fadd fast float %4186, %4177
  %4190 = fadd fast float %4187, %4177
  %4191 = fadd fast float %4188, %4177
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4194 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4195 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.i32 %4196, 3
  %4198 = and i32 %4197, 8
  %4199 = icmp ne i32 %4198, 0
  %4200 = call float @dx.op.binary.f32(i32 35, float %4183, float %4159)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 35, float %4184, float %4159)  ; FMax(a,b)
  %4202 = call float @dx.op.binary.f32(i32 35, float %4185, float %4159)  ; FMax(a,b)
  %4203 = call float @dx.op.dot3.f32(i32 55, float %4183, float %4184, float %4185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4204 = select i1 %183, float %4159, float %4183
  %4205 = select i1 %183, float %4203, float %4184
  %4206 = select i1 %183, float 1.000000e+00, float %4185
  %4207 = select i1 %4199, float %4200, float %4204
  %4208 = select i1 %4199, float %4201, float %4205
  %4209 = select i1 %4199, float %4202, float %4206
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = fadd fast float %4211, %141
  %4215 = fadd fast float %4212, %142
  %4216 = fadd fast float %4213, %143
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4220 = fsub fast float %4214, %4218
  %4221 = fsub fast float %4215, %4219
  %4222 = fmul fast float %4220, %4220
  %4223 = fmul fast float %4221, %4221
  %4224 = fadd fast float %4222, %4223
  %4225 = call float @dx.op.unary.f32(i32 24, float %4224)  ; Sqrt(value)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4217, 2
  %4227 = fcmp fast olt float %4225, %4226
  br i1 %4227, label %4228, label %4295

; <label>:4228                                    ; preds = %4155
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4236 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4237 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4238 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4239 = extractvalue %dx.types.CBufRet.f32 %4231, 3
  %4240 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4241 = fadd fast float %4238, %4214
  %4242 = fadd fast float %4239, %4215
  %4243 = fadd fast float %4240, %4216
  %4244 = fmul fast float %4241, %4230
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4232, float %4244)  ; FMad(a,b,c)
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4243, float %4234, float %4245)  ; FMad(a,b,c)
  %4247 = fmul fast float %4241, %4235
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4236, float %4247)  ; FMad(a,b,c)
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4243, float %4237, float %4248)  ; FMad(a,b,c)
  %4250 = fsub fast float %4246, %4238
  %4251 = fsub fast float %4249, %4239
  %4252 = fsub fast float %4250, %4218
  %4253 = fadd fast float %4252, %4226
  %4254 = fsub fast float %4251, %4219
  %4255 = fadd fast float %4254, %4226
  %4256 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4257 = fmul fast float %4253, %4256
  %4258 = fmul fast float %4255, %4256
  %4259 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4261 = fsub fast float 1.000000e+00, %4259
  %4262 = fsub fast float 1.000000e+00, %4260
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = fcmp fast ugt float %4264, 0.000000e+00
  br i1 %4265, label %4266, label %4569

; <label>:4266                                    ; preds = %4228
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 2
  %4269 = fmul fast float %4268, %4264
  %4270 = extractvalue %dx.types.CBufRet.f32 %4267, 3
  %4271 = fadd fast float %4270, %4269
  %4272 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4273 = fadd fast float %4271, %4240
  %4274 = fmul fast float %4246, %4234
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4249, float %4237, float %4274)  ; FMad(a,b,c)
  %4276 = call float @dx.op.tertiary.f32(i32 46, float %4273, float %4272, float %4275)  ; FMad(a,b,c)
  %4277 = fsub fast float %4276, %4240
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4280 = fsub fast float %4277, %4279
  %4281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.ResRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.ResRet.f32 %4281, 2
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = fadd fast float %4286, %4282
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  %4291 = fadd fast float %4287, %4283
  %4292 = fmul fast float %4291, 0x3F847AE140000000
  %4293 = fadd fast float %4288, %4284
  %4294 = fmul fast float %4293, 0x3F847AE140000000
  br label %4569

; <label>:4295                                    ; preds = %4155
  %4296 = and i32 %159, 1
  %4297 = icmp eq i32 %4296, 0
  br i1 %4297, label %4569, label %4298

; <label>:4298                                    ; preds = %4295
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4309 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4310 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4311 = fadd fast float %4308, %4214
  %4312 = fadd fast float %4309, %4215
  %4313 = fadd fast float %4310, %4216
  %4314 = fmul fast float %4311, %4300
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4312, float %4302, float %4314)  ; FMad(a,b,c)
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4304, float %4315)  ; FMad(a,b,c)
  %4317 = fmul fast float %4311, %4305
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4312, float %4306, float %4317)  ; FMad(a,b,c)
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4307, float %4318)  ; FMad(a,b,c)
  %4320 = fsub fast float %4316, %4308
  %4321 = fsub fast float %4319, %4309
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = extractvalue %dx.types.CBufRet.f32 %4322, 1
  %4325 = extractvalue %dx.types.CBufRet.f32 %4322, 2
  %4326 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 0
  %4331 = extractvalue %dx.types.CBufRet.i32 %4329, 1
  %4332 = udiv i32 %4331, %4330
  %4333 = fsub fast float %4320, %4323
  %4334 = fsub fast float %4321, %4324
  %4335 = call float @dx.op.binary.f32(i32 35, float %4333, float 0.000000e+00)  ; FMax(a,b)
  %4336 = call float @dx.op.binary.f32(i32 35, float %4334, float 0.000000e+00)  ; FMax(a,b)
  %4337 = call float @dx.op.binary.f32(i32 36, float %4335, float %4325)  ; FMin(a,b)
  %4338 = call float @dx.op.binary.f32(i32 36, float %4336, float %4326)  ; FMin(a,b)
  %4339 = add i32 %4330, -1
  %4340 = add i32 %4332, -1
  %4341 = fmul fast float %4337, %4328
  %4342 = fmul fast float %4338, %4328
  %4343 = fptoui float %4341 to i32
  %4344 = fptoui float %4342 to i32
  %4345 = call i32 @dx.op.binary.i32(i32 40, i32 %4343, i32 %4339)  ; UMin(a,b)
  %4346 = call i32 @dx.op.binary.i32(i32 40, i32 %4344, i32 %4340)  ; UMin(a,b)
  %4347 = mul i32 %4346, %4330
  %4348 = add i32 %4347, %4345
  %4349 = shl i32 %4348, 2
  %4350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.i32 %4350, 0
  %4352 = icmp eq i32 %4351, -1
  br i1 %4352, label %4569, label %4353

; <label>:4353                                    ; preds = %4298
  %4354 = mul i32 %4351, 148
  %4355 = add i32 %4354, 4
  %4356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = add i32 %4354, 8
  %4359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = add i32 %4354, 36
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = add i32 %4354, 60
  %4365 = add i32 %4354, 92
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = add i32 %4354, 116
  %4369 = fsub fast float %4320, %4357
  %4370 = fsub fast float %4321, %4360
  %4371 = fmul fast float %4328, %4369
  %4372 = fmul fast float %4328, %4370
  %4373 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4374 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4375 = fsub fast float 1.000000e+00, %4374
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4378 = call float @dx.op.unary.f32(i32 83, float %4373)  ; DerivCoarseX(value)
  %4379 = call float @dx.op.unary.f32(i32 83, float %4375)  ; DerivCoarseX(value)
  %4380 = call float @dx.op.unary.f32(i32 84, float %4373)  ; DerivCoarseY(value)
  %4381 = call float @dx.op.unary.f32(i32 84, float %4375)  ; DerivCoarseY(value)
  %4382 = fmul fast float %4378, %4377
  %4383 = fmul fast float %4379, %4377
  %4384 = fmul fast float %4380, %4377
  %4385 = fmul fast float %4381, %4377
  %4386 = call float @dx.op.dot2.f32(i32 54, float %4384, float %4385, float %4384, float %4385)  ; Dot2(ax,ay,bx,by)
  %4387 = call float @dx.op.dot2.f32(i32 54, float %4382, float %4383, float %4382, float %4383)  ; Dot2(ax,ay,bx,by)
  %4388 = call float @dx.op.binary.f32(i32 35, float %4387, float %4386)  ; FMax(a,b)
  %4389 = call float @dx.op.unary.f32(i32 23, float %4388)  ; Log(value)
  %4390 = fmul fast float %4389, 5.000000e-01
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 1
  %4393 = fadd fast float %4392, %4390
  %4394 = call float @dx.op.binary.f32(i32 35, float %4393, float 0.000000e+00)  ; FMax(a,b)
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4397 = fadd fast float %4396, %4394
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4400 = fadd fast float %4397, %4399
  %4401 = add i32 %4367, 0
  %4402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4401, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4403 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4402, i32 0)  ; GetDimensions(handle,mipLevel)
  %4404 = extractvalue %dx.types.Dimensions %4403, 0
  %4405 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4404)  ; FirstbitLo(value)
  %4406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.i32 %4406, 1
  %4408 = sub nsw i32 %4407, %4405
  %4409 = sitofp i32 %4408 to float
  %4410 = fsub fast float %4400, %4409
  %4411 = call float @dx.op.binary.f32(i32 35, float %4410, float 0.000000e+00)  ; FMax(a,b)
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4402, %dx.types.Handle %37, float %4373, float %4375, float %4363, float undef, i32 0, i32 0, i32 undef, float %4411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = fcmp ule float %4413, 0x3FE0101020000000
  %4415 = extractvalue %dx.types.CBufRet.i32 %4406, 0
  %4416 = and i32 %4415, 128
  %4417 = icmp ne i32 %4416, 0
  %4418 = and i1 %4414, %4417
  br i1 %4418, label %4569, label %4419

; <label>:4419                                    ; preds = %4353
  %4420 = add i32 %4354, 20
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = add i32 %4354, 24
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = add i32 %4354, 40
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4354, 96
  %4430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.i32 %4430, 0
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4434 = fmul fast float %4433, %4373
  %4435 = fmul fast float %4433, %4375
  %4436 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4437 = fadd fast float %4434, %4436
  %4438 = fadd fast float %4435, %4436
  %4439 = add i32 %4431, 0
  %4440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4439, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4441 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4440, i32 0)  ; GetDimensions(handle,mipLevel)
  %4442 = extractvalue %dx.types.Dimensions %4441, 0
  %4443 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4442)  ; FirstbitLo(value)
  %4444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.i32 %4444, 1
  %4446 = sub nsw i32 %4445, %4443
  %4447 = sitofp i32 %4446 to float
  %4448 = fsub fast float %4397, %4447
  %4449 = call float @dx.op.binary.f32(i32 35, float %4448, float 0.000000e+00)  ; FMax(a,b)
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4440, %dx.types.Handle %37, float %4437, float %4438, float %4428, float undef, i32 0, i32 0, i32 undef, float %4449)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = fmul fast float %4451, %4422
  %4453 = fadd fast float %4452, %4425
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.CBufRet.f32 %4454, 2
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 3
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 3
  %4462 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4463 = fadd fast float %4459, %4320
  %4464 = fadd fast float %4461, %4321
  %4465 = fadd fast float %4453, %4462
  %4466 = fmul fast float %4463, %4455
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4456, float %4466)  ; FMad(a,b,c)
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4457, float %4467)  ; FMad(a,b,c)
  %4469 = fsub fast float %4468, %4462
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4472 = fsub fast float %4469, %4471
  %4473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.i32 %4473, 0
  %4475 = call i32 @dx.op.binary.i32(i32 40, i32 %4351, i32 %4474)  ; UMin(a,b)
  %4476 = mul i32 %4475, 36
  %4477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.i32 %4477, 0
  %4479 = add i32 %4476, 4
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 0
  %4482 = fmul fast float %4481, %4373
  %4483 = fmul fast float %4481, %4375
  %4484 = extractvalue %dx.types.CBufRet.f32 %4480, 1
  %4485 = fadd fast float %4482, %4484
  %4486 = fadd fast float %4483, %4484
  %4487 = icmp eq i32 %4478, 0
  br i1 %4487, label %4556, label %4488

; <label>:4488                                    ; preds = %4419
  br label %4489

; <label>:4489                                    ; preds = %4546, %4488
  %4490 = phi float [ %4547, %4546 ], [ 0.000000e+00, %4488 ]
  %4491 = phi float [ %4548, %4546 ], [ 0.000000e+00, %4488 ]
  %4492 = phi float [ %4549, %4546 ], [ 0.000000e+00, %4488 ]
  %4493 = phi float [ %4550, %4546 ], [ 0.000000e+00, %4488 ]
  %4494 = phi float [ %4551, %4546 ], [ 0.000000e+00, %4488 ]
  %4495 = phi float [ %4552, %4546 ], [ 0.000000e+00, %4488 ]
  %4496 = phi i32 [ %4553, %4546 ], [ 0, %4488 ]
  %4497 = shl i32 %4496, 2
  %4498 = add i32 %4364, %4497
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = add i32 %4368, %4497
  %4502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.i32 %4502, 0
  %4504 = add i32 %4503, 0
  %4505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4504, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4506 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4505, i32 0)  ; GetDimensions(handle,mipLevel)
  %4507 = extractvalue %dx.types.Dimensions %4506, 0
  %4508 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4507)  ; FirstbitLo(value)
  %4509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.i32 %4509, 1
  %4511 = sub nsw i32 %4510, %4508
  %4512 = sitofp i32 %4511 to float
  %4513 = fsub fast float %4397, %4512
  %4514 = call float @dx.op.binary.f32(i32 35, float %4513, float 0.000000e+00)  ; FMax(a,b)
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4505, %dx.types.Handle %37, float %4485, float %4486, float %4500, float undef, i32 0, i32 0, i32 undef, float %4514)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = fcmp fast ogt float %4516, 0.000000e+00
  br i1 %4517, label %4518, label %4546

; <label>:4518                                    ; preds = %4489
  %4519 = add i32 %4479, %4497
  %4520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4519, i32 undef)  ; BufferLoad(srv,index,wot)
  %4521 = extractvalue %dx.types.ResRet.i32 %4520, 0
  %4522 = and i32 %4521, 32767
  %4523 = mul nuw nsw i32 %4522, 928
  %4524 = add nuw nsw i32 %4523, 48
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = add nuw nsw i32 %4523, 60
  %4530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.ResRet.f32 %4530, 1
  %4533 = extractvalue %dx.types.ResRet.f32 %4530, 2
  %4534 = fmul fast float %4526, %4516
  %4535 = fmul fast float %4527, %4516
  %4536 = fmul fast float %4528, %4516
  %4537 = fadd fast float %4534, %4490
  %4538 = fadd fast float %4535, %4491
  %4539 = fadd fast float %4536, %4492
  %4540 = fmul fast float %4531, %4516
  %4541 = fmul fast float %4532, %4516
  %4542 = fmul fast float %4533, %4516
  %4543 = fadd fast float %4540, %4493
  %4544 = fadd fast float %4541, %4494
  %4545 = fadd fast float %4542, %4495
  br label %4546

; <label>:4546                                    ; preds = %4518, %4489
  %4547 = phi float [ %4537, %4518 ], [ %4490, %4489 ]
  %4548 = phi float [ %4538, %4518 ], [ %4491, %4489 ]
  %4549 = phi float [ %4539, %4518 ], [ %4492, %4489 ]
  %4550 = phi float [ %4543, %4518 ], [ %4493, %4489 ]
  %4551 = phi float [ %4544, %4518 ], [ %4494, %4489 ]
  %4552 = phi float [ %4545, %4518 ], [ %4495, %4489 ]
  %4553 = add nuw i32 %4496, 1
  %4554 = icmp eq i32 %4553, %4478
  br i1 %4554, label %4555, label %4489

; <label>:4555                                    ; preds = %4546
  br label %4556

; <label>:4556                                    ; preds = %4555, %4419
  %4557 = phi float [ 0.000000e+00, %4419 ], [ %4547, %4555 ]
  %4558 = phi float [ 0.000000e+00, %4419 ], [ %4548, %4555 ]
  %4559 = phi float [ 0.000000e+00, %4419 ], [ %4549, %4555 ]
  %4560 = phi float [ 0.000000e+00, %4419 ], [ %4550, %4555 ]
  %4561 = phi float [ 0.000000e+00, %4419 ], [ %4551, %4555 ]
  %4562 = phi float [ 0.000000e+00, %4419 ], [ %4552, %4555 ]
  %4563 = fadd fast float %4560, %4557
  %4564 = fmul fast float %4563, 0x3F847AE140000000
  %4565 = fadd fast float %4561, %4558
  %4566 = fmul fast float %4565, 0x3F847AE140000000
  %4567 = fadd fast float %4562, %4559
  %4568 = fmul fast float %4567, 0x3F847AE140000000
  br label %4569

; <label>:4569                                    ; preds = %4556, %4353, %4298, %4295, %4266, %4228
  %4570 = phi float [ %4280, %4266 ], [ -1.310720e+05, %4228 ], [ %4472, %4556 ], [ -1.310720e+05, %4298 ], [ -1.310720e+05, %4353 ], [ -1.310720e+05, %4295 ]
  %4571 = phi float [ %4290, %4266 ], [ 0.000000e+00, %4228 ], [ %4564, %4556 ], [ 0.000000e+00, %4298 ], [ 0.000000e+00, %4353 ], [ 0.000000e+00, %4295 ]
  %4572 = phi float [ %4292, %4266 ], [ 0.000000e+00, %4228 ], [ %4566, %4556 ], [ 0.000000e+00, %4298 ], [ 0.000000e+00, %4353 ], [ 0.000000e+00, %4295 ]
  %4573 = phi float [ %4294, %4266 ], [ 0.000000e+00, %4228 ], [ %4568, %4556 ], [ 0.000000e+00, %4298 ], [ 0.000000e+00, %4353 ], [ 0.000000e+00, %4295 ]
  %4574 = phi i1 [ true, %4266 ], [ false, %4228 ], [ true, %4556 ], [ false, %4298 ], [ false, %4353 ], [ false, %4295 ]
  %4575 = and i32 %159, 3
  %4576 = icmp eq i32 %4575, 1
  %4577 = select i1 %4576, float 1.000000e+00, float 0.000000e+00
  %4578 = fsub fast float %4570, %143
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = select i1 %4574, float %4579, float 1.000000e+00
  %4581 = fmul fast float %4580, %4577
  %4582 = icmp eq i32 %4575, 3
  %4583 = select i1 %4582, float 1.000000e+00, float %4581
  %4584 = call float @dx.op.binary.f32(i32 35, float %4171, float %4583)  ; FMax(a,b)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fcmp fast une float %4585, 0.000000e+00
  %4587 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = call float @dx.op.unary.f32(i32 25, float %4587)  ; Rsqrt(value)
  br i1 %4586, label %4596, label %4589

; <label>:4589                                    ; preds = %4569
  %4590 = fmul fast float %4588, %141
  %4591 = fmul fast float %4588, %142
  %4592 = fmul fast float %4588, %143
  %4593 = fsub fast float -0.000000e+00, %4590
  %4594 = fsub fast float -0.000000e+00, %4591
  %4595 = fsub fast float -0.000000e+00, %4592
  br label %4764

; <label>:4596                                    ; preds = %4569
  %4597 = fmul fast float %141, %4588
  %4598 = fsub fast float -0.000000e+00, %4597
  %4599 = fmul fast float %142, %4588
  %4600 = fsub fast float -0.000000e+00, %4599
  %4601 = fmul fast float %143, %4588
  %4602 = fsub fast float -0.000000e+00, %4601
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4598, float %4600, float %4602, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = fmul fast float %4585, 2.500000e+00
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fmul fast float %4585, 0x4013FFFFE0000000
  %4607 = fadd fast float %4606, 0xBFFFFFFFE0000000
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = fmul fast float %4585, 0x4004000020000000
  %4610 = fadd fast float %4609, 0xBFF8000040000000
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4613 = fmul fast float %4174, 1.000000e+01
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fmul fast float %4614, 2.000000e+00
  %4616 = fsub fast float 3.000000e+00, %4615
  %4617 = fmul fast float %4614, %4614
  %4618 = fmul fast float %4617, %4616
  %4619 = fsub fast float 1.000000e+00, %4618
  %4620 = fsub fast float 0x3FE3333340000000, %4195
  %4621 = fmul fast float %4620, 0x400AAAAAA0000000
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = fmul fast float %4619, %4622
  %4624 = fmul fast float %4207, 0x3FEA2B8620000000
  %4625 = fmul fast float %4208, 0x3FEA2B8620000000
  %4626 = fmul fast float %4209, 0x3FEA2B8620000000
  %4627 = fadd fast float %4624, 0x3FC81DFBA0000000
  %4628 = fmul fast float %4627, %4207
  %4629 = fadd fast float %4628, 0x3F910E6020000000
  %4630 = fadd fast float %4625, 0x3FC81DFBA0000000
  %4631 = fmul fast float %4630, %4208
  %4632 = fadd fast float %4631, 0x3F910E6020000000
  %4633 = fadd fast float %4626, 0x3FC81DFBA0000000
  %4634 = fmul fast float %4633, %4209
  %4635 = fadd fast float %4634, 0x3F910E6020000000
  %4636 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = fsub fast float %4636, %4207
  %4640 = fsub fast float %4637, %4208
  %4641 = fsub fast float %4638, %4209
  %4642 = fmul fast float %4639, %4612
  %4643 = fmul fast float %4642, %4623
  %4644 = fmul fast float %4640, %4612
  %4645 = fmul fast float %4644, %4623
  %4646 = fmul fast float %4641, %4612
  %4647 = fmul fast float %4646, %4623
  %4648 = fadd fast float %4643, %4207
  %4649 = fadd fast float %4645, %4208
  %4650 = fadd fast float %4647, %4209
  %4651 = fmul fast float %4168, %4168
  %4652 = fmul fast float %4651, %4651
  %4653 = fadd fast float %4608, 1.000000e+00
  %4654 = fsub fast float %4653, %4623
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = fsub fast float 1.000000e+00, %4652
  %4659 = call float @dx.op.binary.f32(i32 36, float %4655, float %4658)  ; FMin(a,b)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4661 = call float @dx.op.binary.f32(i32 35, float %4659, float %4660)  ; FMax(a,b)
  %4662 = fadd fast float %4657, 0xBFE4CCCCC0000000
  %4663 = fmul fast float %4662, 0x4006DB6DA0000000
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fmul fast float %4664, 2.000000e+00
  %4666 = fsub fast float 3.000000e+00, %4665
  %4667 = bitcast float %4192 to i32
  %4668 = ashr i32 %4667, 1
  %4669 = add nsw i32 %4668, 532487669
  %4670 = bitcast i32 %4669 to float
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = bitcast float %4671 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, 2.000000e+00
  %4676 = bitcast float %4193 to i32
  %4677 = ashr i32 %4676, 1
  %4678 = add nsw i32 %4677, 532487669
  %4679 = bitcast i32 %4678 to float
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, 2.000000e+00
  %4685 = bitcast float %4194 to i32
  %4686 = ashr i32 %4685, 1
  %4687 = add nsw i32 %4686, 532487669
  %4688 = bitcast i32 %4687 to float
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, 2.000000e+00
  %4694 = fsub fast float 0x4002A9FBE0000000, %4675
  %4695 = fadd fast float %4675, 0x3FD54FDF00000000
  %4696 = bitcast float %4695 to i32
  %4697 = sub nsw i32 2129859010, %4696
  %4698 = bitcast i32 %4697 to float
  %4699 = fmul fast float %4698, %4694
  %4700 = fmul fast float %4699, %4699
  %4701 = fsub fast float 0x4002A9FBE0000000, %4684
  %4702 = fadd fast float %4684, 0x3FD54FDF00000000
  %4703 = bitcast float %4702 to i32
  %4704 = sub nsw i32 2129859010, %4703
  %4705 = bitcast i32 %4704 to float
  %4706 = fmul fast float %4705, %4701
  %4707 = fmul fast float %4706, %4706
  %4708 = fsub fast float 0x4002A9FBE0000000, %4693
  %4709 = fadd fast float %4693, 0x3FD54FDF00000000
  %4710 = bitcast float %4709 to i32
  %4711 = sub nsw i32 2129859010, %4710
  %4712 = bitcast i32 %4711 to float
  %4713 = fmul fast float %4712, %4708
  %4714 = fmul fast float %4713, %4713
  %4715 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4700)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4707)  ; FMax(a,b)
  %4717 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4714)  ; FMax(a,b)
  %4718 = fsub fast float 1.000000e+00, %4603
  %4719 = fadd fast float %4718, %4619
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fsub fast float 1.000000e+00, %4583
  %4722 = fmul fast float %4661, %4721
  %4723 = fmul fast float %4664, %4664
  %4724 = fmul fast float %4723, %4722
  %4725 = fmul fast float %4724, %4666
  %4726 = fmul fast float %4721, 0xBFE99999A0000000
  %4727 = fmul fast float %4726, %4612
  %4728 = fmul fast float %4727, %4623
  %4729 = fadd fast float %4728, 1.000000e+00
  %4730 = fadd fast float %4195, -1.000000e+00
  %4731 = fmul fast float %4729, %4730
  %4732 = fadd fast float %4731, 1.000000e+00
  %4733 = fsub fast float %4715, %4192
  %4734 = fsub fast float %4716, %4193
  %4735 = fsub fast float %4717, %4194
  %4736 = fmul fast float %4725, %4733
  %4737 = fmul fast float %4725, %4734
  %4738 = fmul fast float %4725, %4735
  %4739 = fadd fast float %4736, %4192
  %4740 = fadd fast float %4737, %4193
  %4741 = fadd fast float %4738, %4194
  %4742 = fsub fast float %85, %4156
  %4743 = fsub fast float %86, %4157
  %4744 = fsub fast float %87, %4158
  %4745 = fmul fast float %4725, %4742
  %4746 = fmul fast float %4725, %4743
  %4747 = fmul fast float %4725, %4744
  %4748 = fadd fast float %4745, %4156
  %4749 = fadd fast float %4746, %4157
  %4750 = fadd fast float %4747, %4158
  %4751 = fmul fast float %4725, %4720
  %4752 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4753 = fsub fast float 1.000000e+00, %4752
  %4754 = fmul fast float %4751, %4753
  %4755 = fadd fast float %4754, %4752
  %4756 = fsub fast float 1.000000e+00, %4168
  %4757 = fmul fast float %4725, %4756
  %4758 = fadd fast float %4757, %4168
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %4750, float %4748, float %4749, float %4750)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = call float @dx.op.unary.f32(i32 25, float %4759)  ; Rsqrt(value)
  %4761 = fmul fast float %4748, %4760
  %4762 = fmul fast float %4749, %4760
  %4763 = fmul fast float %4750, %4760
  br label %4764

; <label>:4764                                    ; preds = %4596, %4589
  %4765 = phi float [ %4595, %4589 ], [ %4602, %4596 ]
  %4766 = phi float [ %4594, %4589 ], [ %4600, %4596 ]
  %4767 = phi float [ %4593, %4589 ], [ %4598, %4596 ]
  %4768 = phi float [ %4592, %4589 ], [ %4601, %4596 ]
  %4769 = phi float [ %4591, %4589 ], [ %4599, %4596 ]
  %4770 = phi float [ %4590, %4589 ], [ %4597, %4596 ]
  %4771 = phi float [ %4192, %4589 ], [ %4739, %4596 ]
  %4772 = phi float [ %4193, %4589 ], [ %4740, %4596 ]
  %4773 = phi float [ %4194, %4589 ], [ %4741, %4596 ]
  %4774 = phi float [ %4207, %4589 ], [ %4648, %4596 ]
  %4775 = phi float [ %4208, %4589 ], [ %4649, %4596 ]
  %4776 = phi float [ %4209, %4589 ], [ %4650, %4596 ]
  %4777 = phi float [ %4156, %4589 ], [ %4761, %4596 ]
  %4778 = phi float [ %4157, %4589 ], [ %4762, %4596 ]
  %4779 = phi float [ %4158, %4589 ], [ %4763, %4596 ]
  %4780 = phi float [ %4195, %4589 ], [ %4755, %4596 ]
  %4781 = phi float [ %4168, %4589 ], [ %4758, %4596 ]
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 3
  %4785 = fmul fast float %4783, %78
  %4786 = fmul fast float %4784, %79
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4785, float %4786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = fmul fast float %4791, %4789
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = fadd fast float %4793, -1.000000e+00
  %4795 = fmul fast float %4794, %4788
  %4796 = fadd fast float %4795, 1.000000e+00
  %4797 = select i1 %183, float 0.000000e+00, float %4773
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4767, float %4766, float %4765)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4769, float %4768, float %4777, float %4778, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = fmul fast float %4800, 2.000000e+00
  %4802 = fmul fast float %4801, %4777
  %4803 = fmul fast float %4801, %4778
  %4804 = fmul fast float %4801, %4779
  %4805 = fsub fast float %4770, %4802
  %4806 = fsub fast float %4769, %4803
  %4807 = fsub fast float %4768, %4804
  %4808 = call float @dx.op.binary.f32(i32 36, float %4781, float %4796)  ; FMin(a,b)
  %4809 = fsub fast float 1.000000e+00, %4808
  %4810 = bitcast float %4809 to i32
  %4811 = ashr i32 %4810, 1
  %4812 = add nsw i32 %4811, 532487669
  %4813 = bitcast i32 %4812 to float
  %4814 = fsub fast float 1.000000e+00, %4780
  %4815 = call float @dx.op.binary.f32(i32 35, float %4814, float 0x3F847AE140000000)  ; FMax(a,b)
  %4816 = fmul fast float %4815, %4815
  %4817 = fmul fast float %4816, %4816
  %4818 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4813, float %4817, float %4818, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4820 = extractvalue %dx.types.ResRet.f32 %4819, 0
  %4821 = fsub fast float 1.000000e+00, %4781
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = fsub fast float 1.000000e+00, %55
  %4825 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = call float @dx.op.binary.f32(i32 35, float %4825, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4827 = fdiv fast float %4824, %4826
  %4828 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fmul fast float %4829, 5.000000e-01
  %4831 = fadd fast float %4830, 5.000000e-01
  %4832 = fmul fast float %4831, %55
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fmul fast float %4834, %4827
  %4836 = fadd fast float %4832, %4835
  %4837 = fsub fast float 5.000000e-01, %4830
  %4838 = fmul fast float %4837, %4774
  %4839 = fmul fast float %4837, %4775
  %4840 = fmul fast float %4837, %4776
  %4841 = fadd fast float %4836, %4838
  %4842 = fadd fast float %4836, %4839
  %4843 = fadd fast float %4836, %4840
  %4844 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %4807, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fmul fast float %4845, 5.000000e-01
  %4847 = fadd fast float %4846, 5.000000e-01
  %4848 = fmul fast float %4847, %55
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %4807, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = fmul fast float %4850, %4827
  %4852 = fadd fast float %4848, %4851
  %4853 = fsub fast float 5.000000e-01, %4846
  %4854 = fmul fast float %4853, %4774
  %4855 = fmul fast float %4853, %4775
  %4856 = fmul fast float %4853, %4776
  %4857 = fadd fast float %4852, %4854
  %4858 = fadd fast float %4852, %4855
  %4859 = fadd fast float %4852, %4856
  %4860 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = call float @dx.op.binary.f32(i32 36, float %4774, float %4862)  ; FMin(a,b)
  %4864 = fmul fast float %4863, %4809
  %4865 = fsub fast float 1.000000e+00, %4864
  %4866 = bitcast float %4865 to i32
  %4867 = sub nsw i32 2129859010, %4866
  %4868 = bitcast i32 %4867 to float
  %4869 = call float @dx.op.binary.f32(i32 36, float %4775, float %4862)  ; FMin(a,b)
  %4870 = fmul fast float %4869, %4809
  %4871 = fsub fast float 1.000000e+00, %4870
  %4872 = bitcast float %4871 to i32
  %4873 = sub nsw i32 2129859010, %4872
  %4874 = bitcast i32 %4873 to float
  %4875 = call float @dx.op.binary.f32(i32 36, float %4776, float %4862)  ; FMin(a,b)
  %4876 = fmul fast float %4875, %4809
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = bitcast float %4877 to i32
  %4879 = sub nsw i32 2129859010, %4878
  %4880 = bitcast i32 %4879 to float
  %4881 = fmul fast float %4808, %56
  %4882 = fmul fast float %4881, %4841
  %4883 = fmul fast float %4882, %4868
  %4884 = fmul fast float %4808, %57
  %4885 = fmul fast float %4884, %4842
  %4886 = fmul fast float %4885, %4874
  %4887 = fmul fast float %4808, %58
  %4888 = fmul fast float %4887, %4843
  %4889 = fmul fast float %4888, %4880
  %4890 = call float @dx.op.binary.f32(i32 36, float %4771, float %4862)  ; FMin(a,b)
  %4891 = fmul fast float %4890, %4809
  %4892 = fsub fast float 1.000000e+00, %4891
  %4893 = bitcast float %4892 to i32
  %4894 = sub nsw i32 2129859010, %4893
  %4895 = bitcast i32 %4894 to float
  %4896 = call float @dx.op.binary.f32(i32 36, float %4772, float %4862)  ; FMin(a,b)
  %4897 = fmul fast float %4896, %4809
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = call float @dx.op.binary.f32(i32 36, float %4797, float %4862)  ; FMin(a,b)
  %4903 = fmul fast float %4902, %4809
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = bitcast float %4904 to i32
  %4906 = sub nsw i32 2129859010, %4905
  %4907 = bitcast i32 %4906 to float
  %4908 = fmul fast float %4881, %4857
  %4909 = fmul fast float %4908, %4895
  %4910 = fmul fast float %4884, %4858
  %4911 = fmul fast float %4910, %4901
  %4912 = fmul fast float %4887, %4859
  %4913 = fmul fast float %4912, %4907
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4886, float %4889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = select i1 %183, float 0.000000e+00, float %4883
  %4916 = select i1 %183, float %4914, float %4886
  %4917 = select i1 %183, float 0.000000e+00, float %4889
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4911, float %4913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = select i1 %183, float 0.000000e+00, float %4909
  %4920 = select i1 %183, float %4918, float %4911
  %4921 = select i1 %183, float 0.000000e+00, float %4913
  %4922 = fmul fast float %4799, 9.843750e-01
  %4923 = fmul fast float %4780, 9.843750e-01
  %4924 = fadd fast float %4922, 7.812500e-03
  %4925 = fadd fast float %4923, 7.812500e-03
  %4926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4924, float %4925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4927 = extractvalue %dx.types.ResRet.f32 %4926, 2
  %4928 = extractvalue %dx.types.ResRet.f32 %4926, 3
  %4929 = fmul fast float %4927, %4771
  %4930 = fmul fast float %4927, %4772
  %4931 = fmul fast float %4927, %4797
  %4932 = fadd fast float %4929, %4928
  %4933 = fadd fast float %4930, %4928
  %4934 = fadd fast float %4931, %4928
  %4935 = fcmp fast ogt float %4169, 0.000000e+00
  br i1 %4935, label %4936, label %4962

; <label>:4936                                    ; preds = %4764
  %4937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4169, float %4799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4938 = extractvalue %dx.types.ResRet.f32 %4937, 0
  %4939 = extractvalue %dx.types.ResRet.f32 %4937, 1
  %4940 = extractvalue %dx.types.ResRet.f32 %4937, 2
  %4941 = fadd fast float %4938, -5.000000e-01
  %4942 = fadd fast float %4939, -5.000000e-01
  %4943 = fadd fast float %4940, -5.000000e-01
  %4944 = fsub fast float 1.000000e+00, %4771
  %4945 = fsub fast float 1.000000e+00, %4772
  %4946 = fsub fast float 1.000000e+00, %4797
  %4947 = fmul fast float %4771, 4.000000e+00
  %4948 = fmul fast float %4947, %4944
  %4949 = fmul fast float %4948, %4941
  %4950 = fmul fast float %4772, 4.000000e+00
  %4951 = fmul fast float %4950, %4945
  %4952 = fmul fast float %4951, %4942
  %4953 = fmul fast float %4797, 4.000000e+00
  %4954 = fmul fast float %4953, %4946
  %4955 = fmul fast float %4954, %4943
  %4956 = fadd fast float %4949, %4932
  %4957 = fadd fast float %4952, %4933
  %4958 = fadd fast float %4955, %4934
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  br label %4962

; <label>:4962                                    ; preds = %4936, %4764
  %4963 = phi float [ %4959, %4936 ], [ %4932, %4764 ]
  %4964 = phi float [ %4960, %4936 ], [ %4933, %4764 ]
  %4965 = phi float [ %4961, %4936 ], [ %4934, %4764 ]
  %4966 = call float @dx.op.binary.f32(i32 35, float %4964, float %4965)  ; FMax(a,b)
  %4967 = call float @dx.op.binary.f32(i32 35, float %4963, float %4966)  ; FMax(a,b)
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = fmul fast float %4967, %4780
  %4970 = fadd fast float %4969, %4780
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4975 = extractvalue %dx.types.CBufRet.f32 %4971, 3
  %4976 = fmul fast float %4970, %4972
  %4977 = fadd fast float %4976, %4973
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4974, %4970
  %4980 = fadd fast float %4979, %4975
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fsub fast float 1.000000e+00, %4820
  %4983 = fadd fast float %4982, %4981
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fcmp fast olt float %4984, 1.000000e+00
  br i1 %4985, label %4986, label %5841

; <label>:4986                                    ; preds = %4962
  %4987 = fcmp fast olt float %4978, 1.000000e+00
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = fcmp fast ogt float %4989, 0.000000e+00
  %4991 = or i1 %4987, %4990
  %4992 = or i1 %4987, %4990
  %4993 = xor i1 %4992, true
  %4994 = zext i1 %4993 to i32
  br i1 %4991, label %4995, label %5238

; <label>:4995                                    ; preds = %4986
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %4999 = extractvalue %dx.types.CBufRet.f32 %4996, 2
  %5000 = extractvalue %dx.types.CBufRet.f32 %4996, 3
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.CBufRet.f32 %5001, 2
  %5005 = extractvalue %dx.types.CBufRet.f32 %5001, 3
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %5006, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %5006, 3
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5011, 2
  %5015 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5020 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.CBufRet.f32 %5021, 3
  %5026 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %4805, float %4806, float %4807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5029 = fmul fast float %5028, 8.000000e+00
  %5030 = fadd fast float %5029, -6.000000e+00
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fmul fast float %5026, 8.000000e+00
  %5033 = fmul fast float %5032, %4989
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fcmp fast ogt float %5034, 0.000000e+00
  br i1 %5035, label %5036, label %5213, !dx.controlflow.hints !82

; <label>:5036                                    ; preds = %4995
  %5037 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %5038 = extractvalue %dx.types.CBufRet.f32 %4988, 2
  %5039 = fsub fast float %5037, %5038
  %5040 = fmul fast float %5039, %4780
  %5041 = fadd fast float %5040, %5038
  %5042 = fmul fast float %196, 2.000000e+00
  %5043 = fmul fast float %197, 2.000000e+00
  %5044 = fadd fast float %5042, -1.000000e+00
  %5045 = fadd fast float %5043, -1.000000e+00
  %5046 = fmul fast float %5041, %5044
  %5047 = fmul fast float %5041, %5045
  %5048 = fadd fast float %5046, %78
  %5049 = fadd fast float %5047, %79
  %5050 = fmul fast float %5048, %4783
  %5051 = fmul fast float %5049, %4784
  %5052 = fadd fast float %4780, 0xBFE3333340000000
  %5053 = fmul fast float %5052, 0x4004000020000000
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fmul fast float %5055, 3.000000e+00
  %5057 = fadd fast float %5056, %196
  %5058 = call float @dx.op.unary.f32(i32 27, float %5057)  ; Round_ni(value)
  %5059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5050, float %5051, float %5058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  %5061 = fcmp fast une float %5060, 0xFFF0000000000000
  %5062 = fcmp fast une float %5060, 0x7FF0000000000000
  %5063 = and i1 %5061, %5062
  %5064 = fcmp fast olt float %5060, 0.000000e+00
  %5065 = call float @dx.op.unary.f32(i32 6, float %5060)  ; FAbs(value)
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = select i1 %5063, float 1.000000e+00, float 0.000000e+00
  %5068 = fmul fast float %5067, %5034
  %5069 = fcmp fast ogt float %5068, 0.000000e+00
  br i1 %5069, label %5070, label %5213, !dx.controlflow.hints !83

; <label>:5070                                    ; preds = %5036
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.CBufRet.f32 %5071, 2
  %5075 = select i1 %5064, float 0.000000e+00, float %5072
  %5076 = select i1 %5064, float 0.000000e+00, float %5073
  %5077 = select i1 %5064, float 0.000000e+00, float %5074
  %5078 = select i1 %5064, float %4997, float %5012
  %5079 = select i1 %5064, float %5002, float %5017
  %5080 = select i1 %5064, float %5007, float %5022
  %5081 = select i1 %5064, float %4998, float %5013
  %5082 = select i1 %5064, float %5003, float %5018
  %5083 = select i1 %5064, float %5008, float %5023
  %5084 = select i1 %5064, float %4999, float %5014
  %5085 = select i1 %5064, float %5004, float %5019
  %5086 = select i1 %5064, float %5009, float %5024
  %5087 = select i1 %5064, float %5000, float %5015
  %5088 = select i1 %5064, float %5005, float %5020
  %5089 = select i1 %5064, float %5010, float %5025
  %5090 = fadd fast float %5075, %141
  %5091 = fadd fast float %5076, %142
  %5092 = fadd fast float %5077, %143
  %5093 = fmul fast float %5090, %5078
  %5094 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5081, float %5093)  ; FMad(a,b,c)
  %5095 = call float @dx.op.tertiary.f32(i32 46, float %5092, float %5084, float %5094)  ; FMad(a,b,c)
  %5096 = fadd fast float %5095, %5087
  %5097 = fmul fast float %5090, %5079
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5082, float %5097)  ; FMad(a,b,c)
  %5099 = call float @dx.op.tertiary.f32(i32 46, float %5092, float %5085, float %5098)  ; FMad(a,b,c)
  %5100 = fadd fast float %5099, %5088
  %5101 = fmul fast float %5090, %5080
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5083, float %5101)  ; FMad(a,b,c)
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5092, float %5086, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5103, %5089
  %5105 = fdiv fast float 1.000000e+00, %5104
  %5106 = fmul fast float %5105, %5096
  %5107 = fmul fast float %5105, %5100
  %5108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5109 = extractvalue %dx.types.CBufRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.CBufRet.f32 %5108, 1
  %5111 = fmul fast float %5106, %5109
  %5112 = fmul fast float %5107, %5110
  %5113 = extractvalue %dx.types.CBufRet.f32 %5108, 2
  %5114 = extractvalue %dx.types.CBufRet.f32 %5108, 3
  %5115 = fadd fast float %5111, %5113
  %5116 = fadd fast float %5112, %5114
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5119 = fmul fast float %5118, %4805
  %5120 = fmul fast float %5118, %4806
  %5121 = fmul fast float %5118, %4807
  %5122 = fadd fast float %5119, %5090
  %5123 = fadd fast float %5120, %5091
  %5124 = fadd fast float %5121, %5092
  %5125 = fmul fast float %5122, %5078
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5081, float %5125)  ; FMad(a,b,c)
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5084, float %5126)  ; FMad(a,b,c)
  %5128 = fadd fast float %5127, %5087
  %5129 = fmul fast float %5122, %5079
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5082, float %5129)  ; FMad(a,b,c)
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5085, float %5130)  ; FMad(a,b,c)
  %5132 = fadd fast float %5131, %5088
  %5133 = fmul fast float %5122, %5080
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5083, float %5133)  ; FMad(a,b,c)
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5086, float %5134)  ; FMad(a,b,c)
  %5136 = fadd fast float %5135, %5089
  %5137 = fdiv fast float 1.000000e+00, %5136
  %5138 = fmul fast float %5137, %5128
  %5139 = fmul fast float %5137, %5132
  %5140 = fmul fast float %5115, 2.000000e+00
  %5141 = fadd fast float %5140, -1.000000e+00
  %5142 = call float @dx.op.unary.f32(i32 6, float %5141)  ; FAbs(value)
  %5143 = fmul fast float %5142, 5.000000e+00
  %5144 = fadd fast float %5143, -4.000000e+00
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5145, %5031
  %5147 = fsub fast float %5106, %5138
  %5148 = fmul fast float %5109, %5147
  %5149 = fmul fast float %5146, %5148
  %5150 = fsub fast float %5138, %5106
  %5151 = fmul fast float %5109, %5150
  %5152 = fadd fast float %5151, %5149
  %5153 = fsub fast float %5139, %5107
  %5154 = fmul fast float %5110, %5153
  %5155 = fmul fast float %5152, %5066
  %5156 = fmul fast float %5154, %5066
  %5157 = fadd fast float %5155, %5115
  %5158 = fadd fast float %5156, %5116
  %5159 = fsub fast float %5137, %5105
  %5160 = fmul fast float %5159, %5066
  %5161 = fadd fast float %5160, %5105
  %5162 = fdiv fast float 1.000000e+00, %5161
  %5163 = fadd fast float %4780, -1.000000e+00
  %5164 = fsub fast float %5162, %5104
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 2
  %5167 = fmul fast float %5166, %5162
  %5168 = fdiv fast float 1.600000e+02, %5167
  %5169 = fmul fast float %5163, %5163
  %5170 = fmul fast float %5169, 0xBFB5B17960000000
  %5171 = fmul fast float %5170, %5164
  %5172 = fmul fast float %5171, %5168
  %5173 = call float @dx.op.unary.f32(i32 21, float %5172)  ; Exp(value)
  %5174 = fmul fast float %5173, 0x3FF04B2960000000
  %5175 = fsub fast float 0x3FF04B2960000000, %5174
  %5176 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5177 = fmul fast float %5176, 4.000000e+00
  %5178 = fadd fast float %196, -5.000000e-01
  %5179 = fadd fast float %197, -5.000000e-01
  %5180 = fmul fast float %5176, 0x3FBEB851E0000000
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5178
  %5183 = fmul fast float %5181, %5179
  %5184 = fadd fast float %5157, %5182
  %5185 = fadd fast float %5158, %5183
  %5186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5184, float %5185, float undef, float undef, i32 0, i32 0, i32 undef, float %5177)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5192 = fmul fast float %5191, %5187
  %5193 = fmul fast float %5191, %5188
  %5194 = fmul fast float %5191, %5189
  %5195 = select i1 %183, float 0.000000e+00, float %5193
  %5196 = select i1 %183, float 0.000000e+00, float %5194
  %5197 = fmul fast float %5184, 2.000000e+00
  %5198 = fmul fast float %5185, 2.000000e+00
  %5199 = fadd fast float %5197, -1.000000e+00
  %5200 = fadd fast float %5198, -1.000000e+00
  %5201 = fmul fast float %5199, %5199
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fsub fast float 1.000000e+00, %5203
  %5205 = fmul fast float %5204, %5031
  %5206 = fadd fast float %5205, %5203
  %5207 = fmul fast float %5200, %5200
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = fmul fast float %5206, %5209
  %5211 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5212 = fmul fast float %5211, %5068
  br label %5213

; <label>:5213                                    ; preds = %5070, %5036, %4995
  %5214 = phi float [ %5192, %5070 ], [ 0.000000e+00, %5036 ], [ 0.000000e+00, %4995 ]
  %5215 = phi float [ %5195, %5070 ], [ 0.000000e+00, %5036 ], [ 0.000000e+00, %4995 ]
  %5216 = phi float [ %5196, %5070 ], [ 0.000000e+00, %5036 ], [ 0.000000e+00, %4995 ]
  %5217 = phi float [ %5212, %5070 ], [ 0.000000e+00, %5036 ], [ 0.000000e+00, %4995 ]
  %5218 = fcmp fast olt float %5217, 1.000000e+00
  %5219 = or i1 %5218, %4993
  %5220 = zext i1 %5219 to i32
  %5221 = fmul fast float %5217, %4978
  %5222 = fsub fast float %5217, %5221
  %5223 = fsub fast float 1.000000e+00, %4984
  %5224 = fmul fast float %5222, %5223
  %5225 = fadd fast float %5224, %4984
  %5226 = fsub fast float %5225, %5222
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fmul fast float %5227, %4919
  %5229 = fmul fast float %5227, %4920
  %5230 = fmul fast float %5227, %4921
  %5231 = fsub fast float -0.000000e+00, %5225
  %5232 = fmul fast float %5222, %5214
  %5233 = fmul fast float %5222, %5215
  %5234 = fmul fast float %5222, %5216
  %5235 = fadd fast float %5232, %5228
  %5236 = fadd fast float %5233, %5229
  %5237 = fadd fast float %5234, %5230
  br label %5238

; <label>:5238                                    ; preds = %5213, %4986
  %5239 = phi float [ %4984, %4986 ], [ %5231, %5213 ]
  %5240 = phi float [ %4919, %4986 ], [ %5235, %5213 ]
  %5241 = phi float [ %4920, %4986 ], [ %5236, %5213 ]
  %5242 = phi float [ %4921, %4986 ], [ %5237, %5213 ]
  %5243 = phi i32 [ %4994, %4986 ], [ %5220, %5213 ]
  %5244 = icmp eq i32 %5243, 0
  br i1 %5244, label %5841, label %5245

; <label>:5245                                    ; preds = %5238
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5249 = fmul fast float %5247, %78
  %5250 = fmul fast float %5248, %79
  %5251 = fptoui float %5249 to i32
  %5252 = fptoui float %5250 to i32
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.CBufRet.f32 %5253, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5253, 3
  %5257 = fadd fast float %73, -4.000000e+00
  %5258 = call float @dx.op.binary.f32(i32 35, float %5257, float 0.000000e+00)  ; FMax(a,b)
  %5259 = fadd fast float %5258, %5254
  %5260 = fmul fast float %5259, %5255
  %5261 = call float @dx.op.unary.f32(i32 23, float %5260)  ; Log(value)
  %5262 = fmul fast float %5261, %5256
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5265 = fmul fast float %5262, %5264
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.i32 %5267, 1
  %5269 = add i32 %5268, -1
  %5270 = uitofp i32 %5268 to float
  %5271 = fmul fast float %5270, %5266
  %5272 = fptoui float %5271 to i32
  %5273 = call i32 @dx.op.binary.i32(i32 40, i32 %5272, i32 %5269)  ; UMin(a,b)
  %5274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.i32 %5274, 2
  %5276 = extractvalue %dx.types.CBufRet.i32 %5274, 3
  %5277 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5252, i32 %5275, i32 %5251)  ; UMad(a,b,c)
  %5278 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5273, i32 %5276, i32 %5277)  ; UMad(a,b,c)
  %5279 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5280 = fptoui float %5279 to i32
  %5281 = lshr i32 %5280, 5
  %5282 = call i32 @dx.op.binary.i32(i32 40, i32 %5281, i32 8191)  ; UMin(a,b)
  %5283 = fcmp fast ogt float %4579, 0.000000e+00
  %5284 = fcmp fast ogt float %4807, 0.000000e+00
  %5285 = and i1 %5284, %5283
  br i1 %5285, label %5286, label %5315

; <label>:5286                                    ; preds = %5245
  %5287 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %4807, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = call float @dx.op.binary.f32(i32 35, float %5287, float -1.000000e+00)  ; FMax(a,b)
  %5289 = call float @dx.op.binary.f32(i32 36, float %5288, float 1.000000e+00)  ; FMin(a,b)
  %5290 = fmul fast float %5289, %5289
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = fmul fast float %5291, 0x3FFC6E2300000000
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = fcmp fast ogt float %5293, 0.000000e+00
  %5295 = call float @dx.op.unary.f32(i32 24, float %5293)  ; Sqrt(value)
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = call float @dx.op.unary.f32(i32 23, float %5296)  ; Log(value)
  %5298 = fmul fast float %5297, 5.000000e+00
  %5299 = call float @dx.op.unary.f32(i32 21, float %5298)  ; Exp(value)
  %5300 = fmul fast float %5299, 0x3FEF591A60000000
  %5301 = fadd fast float %5300, 0x3F94DCB540000000
  %5302 = select i1 %5294, float %5301, float 1.000000e+00
  %5303 = fcmp fast oge float %5302, 1.000000e+00
  %5304 = fmul fast float %5287, 2.000000e+00
  %5305 = fadd fast float %5304, %4807
  %5306 = select i1 %5303, float %5305, float %4807
  %5307 = fsub fast float %5306, %4807
  %5308 = fmul fast float %5307, %4579
  %5309 = fadd fast float %5308, %4807
  %5310 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %5309, float %4805, float %4806, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = call float @dx.op.unary.f32(i32 25, float %5310)  ; Rsqrt(value)
  %5312 = fmul fast float %5311, %4805
  %5313 = fmul fast float %5311, %4806
  %5314 = fmul fast float %5309, %5311
  br label %5315

; <label>:5315                                    ; preds = %5286, %5245
  %5316 = phi float [ %5312, %5286 ], [ %4805, %5245 ]
  %5317 = phi float [ %5313, %5286 ], [ %4806, %5245 ]
  %5318 = phi float [ %5314, %5286 ], [ %4807, %5245 ]
  %5319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.i32 %5319, 2
  %5321 = add nsw i32 %5320, -1
  %5322 = call i32 @dx.op.binary.i32(i32 37, i32 %5321, i32 0)  ; IMax(a,b)
  %5323 = shl i32 %5282, 2
  %5324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.i32 %5324, 0
  %5326 = lshr i32 %5325, 16
  %5327 = and i32 %5325, 65535
  %5328 = lshr i32 %5325, 21
  %5329 = lshr i32 %5327, 5
  %5330 = call i32 @dx.op.binary.i32(i32 40, i32 %5329, i32 %5322)  ; UMin(a,b)
  %5331 = icmp ugt i32 %5328, %5330
  br i1 %5331, label %5713, label %5332

; <label>:5332                                    ; preds = %5315
  br label %5333

; <label>:5333                                    ; preds = %5702, %5332
  %5334 = phi float [ %5703, %5702 ], [ 0.000000e+00, %5332 ]
  %5335 = phi float [ %5704, %5702 ], [ 0.000000e+00, %5332 ]
  %5336 = phi float [ %5705, %5702 ], [ 0.000000e+00, %5332 ]
  %5337 = phi float [ %5706, %5702 ], [ 1.000000e+00, %5332 ]
  %5338 = phi i32 [ %5710, %5702 ], [ %5328, %5332 ]
  %5339 = phi float [ %5707, %5702 ], [ 0.000000e+00, %5332 ]
  %5340 = phi float [ %5708, %5702 ], [ 0.000000e+00, %5332 ]
  %5341 = phi float [ %5709, %5702 ], [ 0.000000e+00, %5332 ]
  %5342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.i32 %5342, 2
  %5344 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5278, i32 %5343, i32 %5338)  ; UMad(a,b,c)
  %5345 = shl i32 %5344, 2
  %5346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5345, i32 undef)  ; BufferLoad(srv,index,wot)
  %5347 = extractvalue %dx.types.ResRet.i32 %5346, 0
  %5348 = shl i32 %5338, 5
  %5349 = sub nsw i32 %5326, %5348
  %5350 = call i32 @dx.op.binary.i32(i32 37, i32 %5349, i32 0)  ; IMax(a,b)
  %5351 = call i32 @dx.op.binary.i32(i32 38, i32 %5350, i32 31)  ; IMin(a,b)
  %5352 = sub nsw i32 1, %5326
  %5353 = add nsw i32 %5352, %5327
  %5354 = call i32 @dx.op.binary.i32(i32 37, i32 %5353, i32 0)  ; IMax(a,b)
  %5355 = call i32 @dx.op.binary.i32(i32 38, i32 %5354, i32 32)  ; IMin(a,b)
  %5356 = and i32 %5355, 31
  %5357 = shl i32 -1, %5356
  %5358 = xor i32 %5357, -1
  %5359 = and i32 %5351, 31
  %5360 = shl i32 %5358, %5359
  %5361 = icmp eq i32 %5355, 32
  %5362 = select i1 %5361, i32 -1, i32 %5360
  %5363 = and i32 %5362, %5347
  %5364 = icmp eq i32 %5363, 0
  br i1 %5364, label %5702, label %5365

; <label>:5365                                    ; preds = %5333
  br label %5366

; <label>:5366                                    ; preds = %5476, %5365
  %5367 = phi float [ %5477, %5476 ], [ %5334, %5365 ]
  %5368 = phi float [ %5478, %5476 ], [ %5335, %5365 ]
  %5369 = phi float [ %5479, %5476 ], [ %5336, %5365 ]
  %5370 = phi float [ %5480, %5476 ], [ %5337, %5365 ]
  %5371 = phi i32 [ %5379, %5476 ], [ %5363, %5365 ]
  %5372 = phi float [ %5481, %5476 ], [ %5339, %5365 ]
  %5373 = phi float [ %5482, %5476 ], [ %5340, %5365 ]
  %5374 = phi float [ %5483, %5476 ], [ %5341, %5365 ]
  %5375 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5371)  ; FirstbitLo(value)
  %5376 = add i32 %5375, %5348
  %5377 = and i32 %5375, 31
  %5378 = shl i32 1, %5377
  %5379 = xor i32 %5378, %5371
  %5380 = mul i32 %5376, 72
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  %5385 = add i32 %5380, 12
  %5386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5385, i32 undef)  ; BufferLoad(srv,index,wot)
  %5387 = extractvalue %dx.types.ResRet.i32 %5386, 0
  %5388 = add i32 %5380, 16
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = add i32 %5380, 28
  %5394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = add i32 %5380, 32
  %5397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.ResRet.f32 %5397, 1
  %5400 = extractvalue %dx.types.ResRet.f32 %5397, 2
  %5401 = extractvalue %dx.types.ResRet.f32 %5397, 3
  %5402 = add i32 %5380, 48
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.ResRet.f32 %5403, 1
  %5406 = add i32 %5380, 56
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = add i32 %5380, 64
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = mul i32 %5376, 60
  %5415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.ResRet.f32 %5415, 1
  %5418 = extractvalue %dx.types.ResRet.f32 %5415, 2
  %5419 = add i32 %5414, 12
  %5420 = add i32 %5414, 48
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = and i32 %5387, 32767
  %5426 = bitcast float %5382 to i32
  %5427 = icmp eq i32 %5426, -1
  %5428 = bitcast float %5383 to i32
  %5429 = and i32 %5387, 32768
  %5430 = icmp ne i32 %5429, 0
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5435 = fsub fast float %5416, %5432
  %5436 = fsub fast float %5417, %5433
  %5437 = fsub fast float %5418, %5434
  %5438 = fsub fast float %141, %5435
  %5439 = fsub fast float %142, %5436
  %5440 = fsub fast float %143, %5437
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = add i32 %5414, 24
  %5447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = add i32 %5414, 36
  %5453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5452, i32 undef)  ; BufferLoad(srv,index,wot)
  %5454 = extractvalue %dx.types.ResRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.ResRet.f32 %5453, 1
  %5456 = extractvalue %dx.types.ResRet.f32 %5453, 2
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5454, float %5455, float %5456)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5459 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5460 = call float @dx.op.unary.f32(i32 6, float %5457)  ; FAbs(value)
  %5461 = fsub fast float %5422, %5458
  %5462 = fsub fast float %5423, %5459
  %5463 = fsub fast float %5424, %5460
  %5464 = fmul fast float %5461, %5390
  %5465 = fmul fast float %5462, %5391
  %5466 = fmul fast float %5463, %5392
  %5467 = call float @dx.op.binary.f32(i32 36, float %5465, float %5466)  ; FMin(a,b)
  %5468 = call float @dx.op.binary.f32(i32 36, float %5464, float %5467)  ; FMin(a,b)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = call float @dx.op.binary.f32(i32 36, float %5370, float %5469)  ; FMin(a,b)
  %5471 = uitofp i1 %5430 to float
  %5472 = fadd fast float %4579, 1.000000e+00
  %5473 = fsub fast float %5472, %5471
  %5474 = fmul fast float %5470, %5473
  %5475 = fcmp fast ogt float %5474, 0.000000e+00
  br i1 %5475, label %5485, label %5476

; <label>:5476                                    ; preds = %5627, %5366
  %5477 = phi float [ %5691, %5627 ], [ %5367, %5366 ]
  %5478 = phi float [ %5692, %5627 ], [ %5368, %5366 ]
  %5479 = phi float [ %5693, %5627 ], [ %5369, %5366 ]
  %5480 = phi float [ %5700, %5627 ], [ %5370, %5366 ]
  %5481 = phi float [ %5697, %5627 ], [ %5372, %5366 ]
  %5482 = phi float [ %5698, %5627 ], [ %5373, %5366 ]
  %5483 = phi float [ %5699, %5627 ], [ %5374, %5366 ]
  %5484 = icmp eq i32 %5371, %5378
  br i1 %5484, label %5701, label %5366

; <label>:5485                                    ; preds = %5366
  br i1 %5427, label %5543, label %5486

; <label>:5486                                    ; preds = %5485
  %5487 = fsub fast float -0.000000e+00, %5442
  %5488 = fsub fast float -0.000000e+00, %5443
  %5489 = fsub fast float -0.000000e+00, %5444
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fadd fast float %5492, %5405
  %5494 = fadd fast float %5404, %5492
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = fcmp ogt float %5490, -0.000000e+00
  %5497 = select i1 %5496, float %5495, float %5493
  %5498 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5497, %5499
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0.000000e+00)  ; FMax(a,b)
  %5502 = fsub fast float -0.000000e+00, %5448
  %5503 = fsub fast float -0.000000e+00, %5449
  %5504 = fsub fast float -0.000000e+00, %5450
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = fsub fast float -0.000000e+00, %5505
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = fadd fast float %5507, %5409
  %5509 = fadd fast float %5408, %5507
  %5510 = fsub fast float -0.000000e+00, %5509
  %5511 = fcmp ogt float %5505, -0.000000e+00
  %5512 = select i1 %5511, float %5510, float %5508
  %5513 = call float @dx.op.unary.f32(i32 6, float %5506)  ; FAbs(value)
  %5514 = fdiv fast float 1.000000e+00, %5513
  %5515 = fmul fast float %5512, %5514
  %5516 = call float @dx.op.binary.f32(i32 35, float %5515, float 0.000000e+00)  ; FMax(a,b)
  %5517 = fsub fast float -0.000000e+00, %5454
  %5518 = fsub fast float -0.000000e+00, %5455
  %5519 = fsub fast float -0.000000e+00, %5456
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = fsub fast float -0.000000e+00, %5520
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fadd fast float %5522, %5413
  %5524 = fadd fast float %5412, %5522
  %5525 = fsub fast float -0.000000e+00, %5524
  %5526 = fcmp ogt float %5520, -0.000000e+00
  %5527 = select i1 %5526, float %5525, float %5523
  %5528 = call float @dx.op.unary.f32(i32 6, float %5521)  ; FAbs(value)
  %5529 = fdiv fast float 1.000000e+00, %5528
  %5530 = fmul fast float %5527, %5529
  %5531 = call float @dx.op.binary.f32(i32 35, float %5530, float 0.000000e+00)  ; FMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 36, float %5516, float %5531)  ; FMin(a,b)
  %5533 = call float @dx.op.binary.f32(i32 36, float %5501, float %5532)  ; FMin(a,b)
  %5534 = fmul fast float %5533, %5316
  %5535 = fmul fast float %5533, %5317
  %5536 = fmul fast float %5533, %5318
  %5537 = fadd fast float %5534, %141
  %5538 = fadd fast float %5535, %142
  %5539 = fadd fast float %5536, %143
  %5540 = fsub fast float %5537, %5382
  %5541 = fsub fast float %5538, %5383
  %5542 = fsub fast float %5539, %5384
  br label %5550

; <label>:5543                                    ; preds = %5485
  %5544 = fmul fast float %5316, 8.096000e+03
  %5545 = fmul fast float %5317, 8.096000e+03
  %5546 = fmul fast float %5318, 8.096000e+03
  %5547 = fadd fast float %5544, %141
  %5548 = fadd fast float %5545, %142
  %5549 = fadd fast float %5546, %143
  br label %5550

; <label>:5550                                    ; preds = %5543, %5486
  %5551 = phi float [ %5316, %5543 ], [ %5540, %5486 ]
  %5552 = phi float [ %5317, %5543 ], [ %5541, %5486 ]
  %5553 = phi float [ %5318, %5543 ], [ %5542, %5486 ]
  %5554 = phi float [ %5547, %5543 ], [ %5537, %5486 ]
  %5555 = phi float [ %5548, %5543 ], [ %5538, %5486 ]
  %5556 = phi float [ %5549, %5543 ], [ %5539, %5486 ]
  %5557 = fcmp fast olt float %5401, 1.000000e+00
  br i1 %5557, label %5558, label %5589, !dx.controlflow.hints !84

; <label>:5558                                    ; preds = %5550
  %5559 = fmul fast float %5553, %5399
  %5560 = fmul fast float %5552, %5400
  %5561 = fsub fast float %5559, %5560
  %5562 = fmul fast float %5551, %5400
  %5563 = fmul fast float %5553, %5398
  %5564 = fsub fast float %5562, %5563
  %5565 = fmul fast float %5552, %5398
  %5566 = fmul fast float %5551, %5399
  %5567 = fsub fast float %5565, %5566
  %5568 = fmul fast float %5561, 2.000000e+00
  %5569 = fmul fast float %5564, 2.000000e+00
  %5570 = fmul fast float %5567, 2.000000e+00
  %5571 = fmul fast float %5568, %5401
  %5572 = fmul fast float %5569, %5401
  %5573 = fmul fast float %5570, %5401
  %5574 = fmul fast float %5570, %5399
  %5575 = fmul fast float %5569, %5400
  %5576 = fmul fast float %5568, %5400
  %5577 = fmul fast float %5570, %5398
  %5578 = fmul fast float %5569, %5398
  %5579 = fmul fast float %5568, %5399
  %5580 = fadd fast float %5574, %5551
  %5581 = fadd fast float %5580, %5571
  %5582 = fsub fast float %5581, %5575
  %5583 = fsub fast float %5552, %5577
  %5584 = fadd fast float %5583, %5572
  %5585 = fadd fast float %5584, %5576
  %5586 = fadd fast float %5573, %5553
  %5587 = fsub fast float %5586, %5579
  %5588 = fadd fast float %5587, %5578
  br label %5589

; <label>:5589                                    ; preds = %5558, %5550
  %5590 = phi float [ %5582, %5558 ], [ %5551, %5550 ]
  %5591 = phi float [ %5585, %5558 ], [ %5552, %5550 ]
  %5592 = phi float [ %5588, %5558 ], [ %5553, %5550 ]
  br i1 %5427, label %5624, label %5593

; <label>:5593                                    ; preds = %5589
  %5594 = fmul fast float %4780, 0x400187C840000000
  %5595 = fadd fast float %5594, 0xC00EFC2120000000
  %5596 = fmul fast float %5595, %4780
  %5597 = fadd fast float %5596, 0x3FE5D16340000000
  %5598 = fmul fast float %5597, %4780
  %5599 = fadd fast float %5598, 1.000000e+00
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = fsub fast float %5554, %141
  %5602 = fsub fast float %5555, %142
  %5603 = fsub fast float %5556, %143
  %5604 = fsub fast float %5554, %5382
  %5605 = fsub fast float %5555, %5383
  %5606 = fsub fast float %5556, %5384
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5603, float %5601, float %5602, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5606, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fadd fast float %5608, 0x3EE4F8B580000000
  %5610 = fdiv fast float %5607, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = add nsw i32 %5612, 532487669
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %5600
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, 0x4009981AE0000000
  %5618 = fsub fast float 0x40111BBD80000000, %5617
  %5619 = fmul fast float %5618, %5616
  %5620 = fadd fast float %5619, 0xC0009F6020000000
  %5621 = fmul fast float %5620, %5616
  %5622 = fadd fast float %5621, 1.000000e+00
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  br label %5627

; <label>:5624                                    ; preds = %5589
  %5625 = icmp ne i32 %5428, -1
  %5626 = zext i1 %5625 to i32
  br label %5627

; <label>:5627                                    ; preds = %5624, %5593
  %5628 = phi float [ %4780, %5624 ], [ %5623, %5593 ]
  %5629 = phi i32 [ %5626, %5624 ], [ 0, %5593 ]
  %5630 = fmul float %5628, 5.000000e+00
  %5631 = fsub float 5.000000e+00, %5630
  %5632 = icmp ne i32 %5629, 0
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 3
  %5635 = fadd fast float %5634, %5631
  %5636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5635)  ; FMax(a,b)
  %5637 = call float @dx.op.unary.f32(i32 6, float %5590)  ; FAbs(value)
  %5638 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5639 = fadd fast float %5638, %5637
  %5640 = call float @dx.op.unary.f32(i32 6, float %5592)  ; FAbs(value)
  %5641 = fadd fast float %5639, %5640
  %5642 = fcmp fast oeq float %5641, 0.000000e+00
  %5643 = fdiv fast float 1.000000e+00, %5641
  %5644 = select i1 %5642, float 1.000000e+00, float %5643
  %5645 = fmul fast float %5644, %5590
  %5646 = fmul fast float %5644, %5591
  %5647 = call float @dx.op.unary.f32(i32 6, float %5646)  ; FAbs(value)
  %5648 = call float @dx.op.unary.f32(i32 6, float %5645)  ; FAbs(value)
  %5649 = fsub fast float 1.000000e+00, %5647
  %5650 = fsub fast float 1.000000e+00, %5648
  %5651 = fcmp fast oge float %5645, 0.000000e+00
  %5652 = fcmp fast oge float %5646, 0.000000e+00
  %5653 = select i1 %5651, float 1.000000e+00, float -1.000000e+00
  %5654 = select i1 %5652, float 1.000000e+00, float -1.000000e+00
  %5655 = fcmp fast ole float %5592, 0.000000e+00
  %5656 = fmul fast float %5653, %5649
  %5657 = fmul fast float %5654, %5650
  %5658 = select i1 %5655, float %5656, float %5645
  %5659 = select i1 %5655, float %5657, float %5646
  %5660 = fmul fast float %5658, 5.000000e-01
  %5661 = fmul fast float %5659, 5.000000e-01
  %5662 = fadd fast float %5660, 5.000000e-01
  %5663 = fadd fast float %5661, 5.000000e-01
  %5664 = uitofp i32 %5425 to float
  %5665 = call float @dx.op.binary.f32(i32 36, float %5636, float 3.000000e+00)  ; FMin(a,b)
  %5666 = fadd fast float %5665, 2.000000e+00
  %5667 = call float @dx.op.unary.f32(i32 21, float %5666)  ; Exp(value)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5669 = fmul fast float %5668, %5667
  %5670 = fmul fast float %5669, 2.000000e+00
  %5671 = fsub fast float 1.000000e+00, %5670
  %5672 = fmul fast float %5662, %5671
  %5673 = fmul fast float %5663, %5671
  %5674 = fadd fast float %5672, %5669
  %5675 = fadd fast float %5673, %5669
  %5676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5674, float %5675, float %5664, float undef, i32 0, i32 0, i32 undef, float %5636)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 0
  %5678 = extractvalue %dx.types.ResRet.f32 %5676, 1
  %5679 = extractvalue %dx.types.ResRet.f32 %5676, 2
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5682 = fmul fast float %5681, %5395
  %5683 = call float @dx.op.binary.f32(i32 36, float %4860, float %5682)  ; FMin(a,b)
  %5684 = select i1 %5632, float %5683, float %5682
  %5685 = fmul fast float %5677, %5474
  %5686 = fmul fast float %5685, %5684
  %5687 = fmul fast float %5678, %5474
  %5688 = fmul fast float %5687, %5684
  %5689 = fmul fast float %5679, %5474
  %5690 = fmul fast float %5689, %5684
  %5691 = fadd fast float %5686, %5367
  %5692 = fadd fast float %5688, %5368
  %5693 = fadd fast float %5690, %5369
  %5694 = fmul fast float %5554, %5474
  %5695 = fmul fast float %5555, %5474
  %5696 = fmul fast float %5556, %5474
  %5697 = fadd fast float %5694, %5372
  %5698 = fadd fast float %5695, %5373
  %5699 = fadd fast float %5696, %5374
  %5700 = fsub fast float %5370, %5474
  br label %5476

; <label>:5701                                    ; preds = %5476
  br label %5702

; <label>:5702                                    ; preds = %5701, %5333
  %5703 = phi float [ %5334, %5333 ], [ %5477, %5701 ]
  %5704 = phi float [ %5335, %5333 ], [ %5478, %5701 ]
  %5705 = phi float [ %5336, %5333 ], [ %5479, %5701 ]
  %5706 = phi float [ %5337, %5333 ], [ %5480, %5701 ]
  %5707 = phi float [ %5339, %5333 ], [ %5481, %5701 ]
  %5708 = phi float [ %5340, %5333 ], [ %5482, %5701 ]
  %5709 = phi float [ %5341, %5333 ], [ %5483, %5701 ]
  %5710 = add i32 %5338, 1
  %5711 = icmp ugt i32 %5710, %5330
  br i1 %5711, label %5712, label %5333, !llvm.loop !85

; <label>:5712                                    ; preds = %5702
  br label %5713

; <label>:5713                                    ; preds = %5712, %5315
  %5714 = phi float [ 0.000000e+00, %5315 ], [ %5703, %5712 ]
  %5715 = phi float [ 0.000000e+00, %5315 ], [ %5704, %5712 ]
  %5716 = phi float [ 0.000000e+00, %5315 ], [ %5705, %5712 ]
  %5717 = phi float [ 0.000000e+00, %5315 ], [ %5707, %5712 ]
  %5718 = phi float [ 0.000000e+00, %5315 ], [ %5708, %5712 ]
  %5719 = phi float [ 0.000000e+00, %5315 ], [ %5709, %5712 ]
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = select i1 %183, float 0.000000e+00, float %5714
  %5722 = select i1 %183, float %5720, float %5715
  %5723 = select i1 %183, float 0.000000e+00, float %5716
  %5724 = fcmp fast olt float %5239, 0.000000e+00
  %5725 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5726 = fmul fast float %5725, %5240
  %5727 = fmul fast float %5725, %5241
  %5728 = fmul fast float %5725, %5242
  %5729 = select i1 %5724, float %5240, float %5726
  %5730 = select i1 %5724, float %5241, float %5727
  %5731 = select i1 %5724, float %5242, float %5728
  %5732 = fsub fast float 1.000000e+00, %5725
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = fmul fast float %5733, %5721
  %5735 = fmul fast float %5733, %5722
  %5736 = fmul fast float %5733, %5723
  %5737 = fadd fast float %5729, %5734
  %5738 = fadd fast float %5730, %5735
  %5739 = fadd fast float %5731, %5736
  %5740 = fcmp fast une float %4989, 0.000000e+00
  br i1 %5740, label %5841, label %5741

; <label>:5741                                    ; preds = %5713
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5746 = extractvalue %dx.types.CBufRet.f32 %5742, 3
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.CBufRet.f32 %5747, 1
  %5750 = extractvalue %dx.types.CBufRet.f32 %5747, 2
  %5751 = extractvalue %dx.types.CBufRet.f32 %5747, 3
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %4805, float %4806, float %4807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = fadd fast float %4780, -1.000000e+00
  %5761 = fsub fast float %5758, %5759
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5764 = fmul fast float %5763, %5758
  %5765 = fdiv fast float 1.600000e+02, %5764
  %5766 = fmul fast float %5760, %5760
  %5767 = fmul fast float %5766, 0xBFB5B17960000000
  %5768 = fmul fast float %5767, %5761
  %5769 = fmul fast float %5768, %5765
  %5770 = call float @dx.op.unary.f32(i32 21, float %5769)  ; Exp(value)
  %5771 = fmul fast float %5770, 0x3FF04B2960000000
  %5772 = fsub fast float 0x3FF04B2960000000, %5771
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fmul fast float %5773, 4.000000e+00
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = fadd fast float %5776, %5717
  %5780 = fadd fast float %5777, %5718
  %5781 = fadd fast float %5778, %5719
  %5782 = fmul fast float %5779, %5743
  %5783 = call float @dx.op.tertiary.f32(i32 46, float %5780, float %5744, float %5782)  ; FMad(a,b,c)
  %5784 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5745, float %5783)  ; FMad(a,b,c)
  %5785 = fadd fast float %5784, %5746
  %5786 = fmul fast float %5779, %5748
  %5787 = call float @dx.op.tertiary.f32(i32 46, float %5780, float %5749, float %5786)  ; FMad(a,b,c)
  %5788 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5750, float %5787)  ; FMad(a,b,c)
  %5789 = fadd fast float %5788, %5751
  %5790 = fmul fast float %5779, %5753
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5780, float %5754, float %5790)  ; FMad(a,b,c)
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5755, float %5791)  ; FMad(a,b,c)
  %5793 = fadd fast float %5792, %5756
  %5794 = fdiv fast float %5785, %5793
  %5795 = fdiv fast float %5789, %5793
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = fmul fast float %5797, %5794
  %5800 = fmul fast float %5798, %5795
  %5801 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5802 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5803 = fadd fast float %5799, %5801
  %5804 = fadd fast float %5800, %5802
  %5805 = fmul fast float %5757, 8.000000e+00
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5803, 2.000000e+00
  %5808 = fmul fast float %5804, 2.000000e+00
  %5809 = fadd fast float %5807, -1.000000e+00
  %5810 = fadd fast float %5808, -1.000000e+00
  %5811 = fmul fast float %5809, %5809
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fmul fast float %5810, %5810
  %5815 = fsub fast float 1.000000e+00, %5814
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5817 = fmul fast float %4989, %5813
  %5818 = fmul fast float %5817, %5816
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = fmul fast float %5819, %5806
  %5821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5803, float %5804, float undef, float undef, i32 0, i32 0, i32 undef, float %5774)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = select i1 %183, float 0.000000e+00, float %5823
  %5826 = select i1 %183, float 0.000000e+00, float %5824
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5829 = fmul fast float %5828, %5822
  %5830 = fmul fast float %5825, %5828
  %5831 = fmul fast float %5826, %5828
  %5832 = fsub fast float %5829, %5721
  %5833 = fsub fast float %5830, %5722
  %5834 = fsub fast float %5831, %5723
  %5835 = fmul fast float %5832, %5820
  %5836 = fmul fast float %5833, %5820
  %5837 = fmul fast float %5834, %5820
  %5838 = fadd fast float %5835, %5721
  %5839 = fadd fast float %5836, %5722
  %5840 = fadd fast float %5837, %5723
  br label %5841

; <label>:5841                                    ; preds = %5741, %5713, %5238, %4962
  %5842 = phi float [ %5240, %5238 ], [ %5737, %5713 ], [ %4919, %4962 ], [ %5838, %5741 ]
  %5843 = phi float [ %5241, %5238 ], [ %5738, %5713 ], [ %4920, %4962 ], [ %5839, %5741 ]
  %5844 = phi float [ %5242, %5238 ], [ %5739, %5713 ], [ %4921, %4962 ], [ %5840, %5741 ]
  %5845 = fmul fast float %4968, %4915
  %5846 = fmul fast float %4968, %4916
  %5847 = fmul fast float %4968, %4917
  %5848 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4775, float %4776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fcmp fast ogt float %5848, 0x3E7FF19E20000000
  %5850 = fdiv fast float 1.000000e+00, %5848
  %5851 = select i1 %5849, float %5850, float 0.000000e+00
  %5852 = fmul fast float %5851, %4774
  %5853 = fmul fast float %5851, %4775
  %5854 = fmul fast float %5851, %4776
  %5855 = fadd fast float %5852, -1.000000e+00
  %5856 = fadd fast float %5853, -1.000000e+00
  %5857 = fadd fast float %5854, -1.000000e+00
  %5858 = fmul fast float %5855, 5.000000e-01
  %5859 = fmul fast float %5856, 5.000000e-01
  %5860 = fmul fast float %5857, 5.000000e-01
  %5861 = fadd fast float %5858, 1.000000e+00
  %5862 = fadd fast float %5859, 1.000000e+00
  %5863 = fadd fast float %5860, 1.000000e+00
  %5864 = fmul fast float %5842, %4963
  %5865 = fmul fast float %5843, %4964
  %5866 = fmul fast float %5844, %4965
  %5867 = fsub fast float 1.000000e+00, %4799
  %5868 = bitcast float %5867 to i32
  %5869 = sitofp i32 %5868 to float
  %5870 = fmul fast float %5869, 5.000000e+00
  %5871 = fadd fast float %5870, 0xC1EFBF8940000000
  %5872 = fptosi float %5871 to i32
  %5873 = bitcast i32 %5872 to float
  %5874 = fmul fast float %5873, %4170
  %5875 = fmul fast float %4915, %5874
  %5876 = fmul fast float %5875, %4968
  %5877 = fmul fast float %5876, %5861
  %5878 = fmul fast float %4916, %5874
  %5879 = fmul fast float %5878, %4968
  %5880 = fmul fast float %5879, %5862
  %5881 = fmul fast float %4917, %5874
  %5882 = fmul fast float %5881, %4968
  %5883 = fmul fast float %5882, %5863
  %5884 = fmul fast float %5845, %4166
  %5885 = fmul fast float %5846, %4166
  %5886 = fmul fast float %5847, %4166
  %5887 = fadd fast float %5864, %4162
  %5888 = fadd fast float %5887, %5877
  %5889 = fmul fast float %5888, %4166
  %5890 = fadd fast float %5865, %4163
  %5891 = fadd fast float %5890, %5880
  %5892 = fmul fast float %5891, %4166
  %5893 = fadd fast float %5866, %4164
  %5894 = fadd fast float %5893, %5883
  %5895 = fmul fast float %5894, %4166
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5898 = fcmp fast oeq float %5897, 0.000000e+00
  br i1 %5898, label %6125, label %5899

; <label>:5899                                    ; preds = %5841
  %5900 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 3
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5907 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5906, float %5907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = select i1 %183, float %5909, float %5905
  %5913 = select i1 %183, float %5911, float %5906
  %5914 = select i1 %183, float %5910, float %5907
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5917 = fcmp fast une float %5916, 0.000000e+00
  br i1 %5917, label %5918, label %5935

; <label>:5918                                    ; preds = %5899
  %5919 = fptoui float %78 to i32
  %5920 = fptoui float %79 to i32
  %5921 = lshr i32 %5919, 4
  %5922 = lshr i32 %5920, 4
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 0
  %5925 = fptoui float %5924 to i32
  %5926 = add i32 %5925, 15
  %5927 = lshr i32 %5926, 4
  %5928 = mul i32 %5927, %5922
  %5929 = add i32 %5928, %5921
  %5930 = shl i32 %5929, 3
  %5931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5930, i32 undef)  ; BufferLoad(srv,index,wot)
  %5932 = extractvalue %dx.types.ResRet.i32 %5931, 0
  %5933 = and i32 %5932, -268435456
  %5934 = icmp eq i32 %5933, -1342177280
  br i1 %5934, label %5940, label %5935

; <label>:5935                                    ; preds = %5918, %5899
  %5936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4785, float %4786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.ResRet.f32 %5936, 2
  br label %5940

; <label>:5940                                    ; preds = %5935, %5918
  %5941 = phi float [ %5937, %5935 ], [ 0.000000e+00, %5918 ]
  %5942 = phi float [ %5938, %5935 ], [ 0.000000e+00, %5918 ]
  %5943 = phi float [ %5939, %5935 ], [ 0.000000e+00, %5918 ]
  %5944 = call float @dx.op.binary.f32(i32 36, float %5942, float %5943)  ; FMin(a,b)
  %5945 = call float @dx.op.binary.f32(i32 36, float %5941, float %5944)  ; FMin(a,b)
  %5946 = fcmp fast ogt float %5945, 0.000000e+00
  br i1 %5946, label %5947, label %6125, !dx.controlflow.hints !87

; <label>:5947                                    ; preds = %5940
  %5948 = fmul fast float %5941, %5912
  %5949 = fmul fast float %5942, %5913
  %5950 = fmul fast float %5943, %5914
  %5951 = fsub fast float %5900, %4770
  %5952 = fsub fast float %5901, %4769
  %5953 = fsub fast float %5902, %4768
  %5954 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5952, float %5953, float %5951, float %5952, float %5953)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = call float @dx.op.unary.f32(i32 25, float %5954)  ; Rsqrt(value)
  %5956 = fmul fast float %5955, %5951
  %5957 = fmul fast float %5955, %5952
  %5958 = fmul fast float %5955, %5953
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float %4777, float %4778, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4766, float %4765, float %5956, float %5957, float %5958)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  %5962 = bitcast i32 %4823 to float
  %5963 = fmul fast float %5961, %5961
  %5964 = fmul fast float %5963, %5962
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = fmul fast float %5965, %5961
  %5967 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %5956, float %5957, float %5958)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = fmul fast float %5967, %5967
  %5969 = call float @dx.op.unary.f32(i32 6, float %5959)  ; FAbs(value)
  %5970 = fsub fast float 1.000000e+00, %4817
  %5971 = fmul fast float %4799, %4799
  %5972 = fmul fast float %5971, %5970
  %5973 = fadd fast float %5972, %4817
  %5974 = bitcast float %5973 to i32
  %5975 = ashr i32 %5974, 1
  %5976 = add nsw i32 %5975, 532487669
  %5977 = bitcast i32 %5976 to float
  %5978 = fadd fast float %5977, %4799
  %5979 = fmul fast float %4817, %5968
  %5980 = fsub fast float 1.000000e+00, %5968
  %5981 = fadd fast float %5980, %5979
  %5982 = fmul fast float %5969, %5969
  %5983 = fmul fast float %5982, %5970
  %5984 = fadd fast float %5983, %4817
  %5985 = bitcast float %5984 to i32
  %5986 = ashr i32 %5985, 1
  %5987 = add nsw i32 %5986, 532487669
  %5988 = bitcast i32 %5987 to float
  %5989 = fadd fast float %5988, %5969
  %5990 = fmul fast float %5981, %5981
  %5991 = fmul fast float %5990, %5978
  %5992 = fmul fast float %5991, %5989
  %5993 = fdiv fast float 0x3FF0A00000000000, %5992
  %5994 = fmul fast float %5993, %4817
  %5995 = call float @dx.op.unary.f32(i32 6, float %5960)  ; FAbs(value)
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = bitcast float %5996 to i32
  %5998 = sitofp i32 %5997 to float
  %5999 = fmul fast float %5998, 5.000000e+00
  %6000 = fadd fast float %5999, 0xC1EFBF8940000000
  %6001 = fptosi float %6000 to i32
  %6002 = bitcast i32 %6001 to float
  %6003 = fsub fast float 1.000000e+00, %4771
  %6004 = fsub fast float 1.000000e+00, %4772
  %6005 = fsub fast float 1.000000e+00, %4797
  %6006 = fmul fast float %6002, %6003
  %6007 = fmul fast float %6002, %6004
  %6008 = fmul fast float %6002, %6005
  %6009 = fadd fast float %6006, %4771
  %6010 = fadd fast float %6007, %4772
  %6011 = fadd fast float %6008, %4797
  br i1 %4935, label %6012, label %6035

; <label>:6012                                    ; preds = %5947
  %6013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4169, float %5995, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6014 = extractvalue %dx.types.ResRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.ResRet.f32 %6013, 1
  %6016 = extractvalue %dx.types.ResRet.f32 %6013, 2
  %6017 = fadd fast float %6014, -5.000000e-01
  %6018 = fadd fast float %6015, -5.000000e-01
  %6019 = fadd fast float %6016, -5.000000e-01
  %6020 = fmul fast float %4771, 4.000000e+00
  %6021 = fmul fast float %6020, %6003
  %6022 = fmul fast float %6021, %6017
  %6023 = fmul fast float %4772, 4.000000e+00
  %6024 = fmul fast float %6023, %6004
  %6025 = fmul fast float %6024, %6018
  %6026 = fmul fast float %4797, 4.000000e+00
  %6027 = fmul fast float %6026, %6005
  %6028 = fmul fast float %6027, %6019
  %6029 = fadd fast float %6022, %6009
  %6030 = fadd fast float %6025, %6010
  %6031 = fadd fast float %6028, %6011
  %6032 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6033 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6034 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  br label %6035

; <label>:6035                                    ; preds = %6012, %5947
  %6036 = phi float [ %6032, %6012 ], [ %6009, %5947 ]
  %6037 = phi float [ %6033, %6012 ], [ %6010, %5947 ]
  %6038 = phi float [ %6034, %6012 ], [ %6011, %5947 ]
  %6039 = fmul fast float %5959, 9.843750e-01
  %6040 = fadd fast float %6039, 7.812500e-03
  %6041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6040, float %4925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 2
  %6043 = extractvalue %dx.types.ResRet.f32 %6041, 3
  %6044 = fmul fast float %6042, %4771
  %6045 = fmul fast float %6042, %4772
  %6046 = fmul fast float %6042, %4797
  %6047 = fadd fast float %6044, %6043
  %6048 = fadd fast float %6045, %6043
  %6049 = fadd fast float %6046, %6043
  br i1 %4935, label %6050, label %6073

; <label>:6050                                    ; preds = %6035
  %6051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4169, float %5959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fadd fast float %6053, -5.000000e-01
  %6057 = fadd fast float %6054, -5.000000e-01
  %6058 = fmul fast float %4771, 4.000000e+00
  %6059 = fmul fast float %6058, %6003
  %6060 = fmul fast float %6059, %6055
  %6061 = fmul fast float %4772, 4.000000e+00
  %6062 = fmul fast float %6061, %6004
  %6063 = fmul fast float %6062, %6056
  %6064 = fmul fast float %4797, 4.000000e+00
  %6065 = fmul fast float %6064, %6005
  %6066 = fmul fast float %6065, %6057
  %6067 = fadd fast float %6060, %6047
  %6068 = fadd fast float %6063, %6048
  %6069 = fadd fast float %6066, %6049
  %6070 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6071 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  br label %6073

; <label>:6073                                    ; preds = %6050, %6035
  %6074 = phi float [ %6070, %6050 ], [ %6047, %6035 ]
  %6075 = phi float [ %6071, %6050 ], [ %6048, %6035 ]
  %6076 = phi float [ %6072, %6050 ], [ %6049, %6035 ]
  %6077 = call float @dx.op.binary.f32(i32 35, float %6075, float %6076)  ; FMax(a,b)
  %6078 = call float @dx.op.binary.f32(i32 35, float %6074, float %6077)  ; FMax(a,b)
  %6079 = fsub fast float 1.000000e+00, %6078
  %6080 = fmul fast float %6036, %5994
  %6081 = fmul fast float %6037, %5994
  %6082 = fmul fast float %6038, %5994
  %6083 = fsub fast float 1.000000e+00, %5960
  %6084 = bitcast float %6083 to i32
  %6085 = sitofp i32 %6084 to float
  %6086 = fmul fast float %6085, 5.000000e+00
  %6087 = fadd fast float %6086, 0xC1EFBF8940000000
  %6088 = fptosi float %6087 to i32
  %6089 = bitcast i32 %6088 to float
  %6090 = fmul fast float %6089, %4170
  %6091 = fmul fast float %6079, %6090
  %6092 = fmul fast float %6091, %5861
  %6093 = fmul fast float %6091, %5862
  %6094 = fmul fast float %6091, %5863
  %6095 = fmul fast float %5904, %3608
  %6096 = fmul fast float %5904, %3609
  %6097 = fmul fast float %5904, %3610
  %6098 = fadd fast float %6080, %6095
  %6099 = fadd fast float %6098, %6092
  %6100 = fadd fast float %6081, %6096
  %6101 = fadd fast float %6100, %6093
  %6102 = fadd fast float %6082, %6097
  %6103 = fadd fast float %6102, %6094
  %6104 = fmul fast float %5966, %5948
  %6105 = fmul fast float %6104, %6079
  %6106 = fmul fast float %5966, %5949
  %6107 = fmul fast float %6106, %6079
  %6108 = fmul fast float %5966, %5950
  %6109 = fmul fast float %6108, %6079
  %6110 = fmul fast float %6104, %6099
  %6111 = fmul fast float %6106, %6101
  %6112 = fmul fast float %6108, %6103
  %6113 = fadd fast float %6105, %5845
  %6114 = fmul fast float %6113, %4166
  %6115 = fadd fast float %6107, %5846
  %6116 = fmul fast float %6115, %4166
  %6117 = fadd fast float %6109, %5847
  %6118 = fmul fast float %6117, %4166
  %6119 = fadd fast float %6110, %5888
  %6120 = fmul fast float %6119, %4166
  %6121 = fadd fast float %6111, %5891
  %6122 = fmul fast float %6121, %4166
  %6123 = fadd fast float %6112, %5894
  %6124 = fmul fast float %6123, %4166
  br label %6125

; <label>:6125                                    ; preds = %6073, %5940, %5841
  %6126 = phi float [ %5889, %5841 ], [ %5889, %5940 ], [ %6120, %6073 ]
  %6127 = phi float [ %5892, %5841 ], [ %5892, %5940 ], [ %6122, %6073 ]
  %6128 = phi float [ %5895, %5841 ], [ %5895, %5940 ], [ %6124, %6073 ]
  %6129 = phi float [ %5884, %5841 ], [ %5884, %5940 ], [ %6114, %6073 ]
  %6130 = phi float [ %5885, %5841 ], [ %5885, %5940 ], [ %6116, %6073 ]
  %6131 = phi float [ %5886, %5841 ], [ %5886, %5940 ], [ %6118, %6073 ]
  %6132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.i32 %6132, 0
  %6134 = icmp eq i32 %6133, 0
  br i1 %6134, label %6573, label %6135

; <label>:6135                                    ; preds = %6125
  %6136 = fptoui float %78 to i32
  %6137 = fptoui float %79 to i32
  %6138 = lshr i32 %6136, 4
  %6139 = lshr i32 %6137, 4
  %6140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.i32 %6140, 0
  %6142 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6139, i32 %6141, i32 %6138)  ; UMad(a,b,c)
  %6143 = add nsw i32 %6133, -1
  %6144 = call i32 @dx.op.binary.i32(i32 37, i32 %6143, i32 0)  ; IMax(a,b)
  %6145 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6146 = fptoui float %6145 to i32
  %6147 = lshr i32 %6146, 5
  %6148 = call i32 @dx.op.binary.i32(i32 40, i32 %6147, i32 8191)  ; UMin(a,b)
  %6149 = shl i32 %6148, 2
  %6150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6149, i32 undef)  ; BufferLoad(srv,index,wot)
  %6151 = extractvalue %dx.types.ResRet.i32 %6150, 0
  %6152 = lshr i32 %6151, 16
  %6153 = and i32 %6151, 65535
  %6154 = lshr i32 %6151, 21
  %6155 = lshr i32 %6153, 5
  %6156 = call i32 @dx.op.binary.i32(i32 40, i32 %6155, i32 %6144)  ; UMin(a,b)
  %6157 = icmp ugt i32 %6154, %6156
  br i1 %6157, label %6573, label %6158

; <label>:6158                                    ; preds = %6135
  br label %6159

; <label>:6159                                    ; preds = %6563, %6158
  %6160 = phi i32 [ %6570, %6563 ], [ %6154, %6158 ]
  %6161 = phi float [ %6564, %6563 ], [ %6126, %6158 ]
  %6162 = phi float [ %6565, %6563 ], [ %6127, %6158 ]
  %6163 = phi float [ %6566, %6563 ], [ %6128, %6158 ]
  %6164 = phi float [ %6567, %6563 ], [ %6129, %6158 ]
  %6165 = phi float [ %6568, %6563 ], [ %6130, %6158 ]
  %6166 = phi float [ %6569, %6563 ], [ %6131, %6158 ]
  %6167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.i32 %6167, 0
  %6169 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6142, i32 %6168, i32 %6160)  ; UMad(a,b,c)
  %6170 = shl i32 %6169, 2
  %6171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6170, i32 undef)  ; BufferLoad(srv,index,wot)
  %6172 = extractvalue %dx.types.ResRet.i32 %6171, 0
  %6173 = shl i32 %6160, 5
  %6174 = sub nsw i32 %6152, %6173
  %6175 = call i32 @dx.op.binary.i32(i32 37, i32 %6174, i32 0)  ; IMax(a,b)
  %6176 = call i32 @dx.op.binary.i32(i32 38, i32 %6175, i32 31)  ; IMin(a,b)
  %6177 = sub nsw i32 1, %6152
  %6178 = add nsw i32 %6177, %6153
  %6179 = call i32 @dx.op.binary.i32(i32 37, i32 %6178, i32 0)  ; IMax(a,b)
  %6180 = call i32 @dx.op.binary.i32(i32 38, i32 %6179, i32 32)  ; IMin(a,b)
  %6181 = and i32 %6180, 31
  %6182 = shl i32 -1, %6181
  %6183 = xor i32 %6182, -1
  %6184 = and i32 %6176, 31
  %6185 = shl i32 %6183, %6184
  %6186 = icmp eq i32 %6180, 32
  %6187 = select i1 %6186, i32 -1, i32 %6185
  %6188 = and i32 %6187, %6172
  %6189 = icmp eq i32 %6188, 0
  br i1 %6189, label %6563, label %6190

; <label>:6190                                    ; preds = %6159
  br label %6191

; <label>:6191                                    ; preds = %6272, %6190
  %6192 = phi i32 [ %6203, %6272 ], [ %6188, %6190 ]
  %6193 = phi float [ %6273, %6272 ], [ %6161, %6190 ]
  %6194 = phi float [ %6274, %6272 ], [ %6162, %6190 ]
  %6195 = phi float [ %6275, %6272 ], [ %6163, %6190 ]
  %6196 = phi float [ %6276, %6272 ], [ %6164, %6190 ]
  %6197 = phi float [ %6277, %6272 ], [ %6165, %6190 ]
  %6198 = phi float [ %6278, %6272 ], [ %6166, %6190 ]
  %6199 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6192)  ; FirstbitLo(value)
  %6200 = add i32 %6199, %6173
  %6201 = and i32 %6199, 31
  %6202 = shl i32 1, %6201
  %6203 = xor i32 %6202, %6192
  %6204 = mul i32 %6200, 112
  %6205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6204, i32 undef)  ; BufferLoad(srv,index,wot)
  %6206 = extractvalue %dx.types.ResRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.ResRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.ResRet.f32 %6205, 2
  %6209 = or i32 %6204, 12
  %6210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6209, i32 undef)  ; BufferLoad(srv,index,wot)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 0
  %6212 = add i32 %6204, 44
  %6213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6212, i32 undef)  ; BufferLoad(srv,index,wot)
  %6214 = extractvalue %dx.types.ResRet.f32 %6213, 0
  %6215 = add i32 %6204, 48
  %6216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6215, i32 undef)  ; BufferLoad(srv,index,wot)
  %6217 = extractvalue %dx.types.ResRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.ResRet.f32 %6216, 1
  %6219 = extractvalue %dx.types.ResRet.f32 %6216, 2
  %6220 = add i32 %6204, 80
  %6221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6220, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6221, 2
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6206, float %6207, float %6208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = select i1 %183, float %6223, float %6206
  %6227 = select i1 %183, float %6225, float %6207
  %6228 = select i1 %183, float %6224, float %6208
  %6229 = fsub fast float %6217, %141
  %6230 = fsub fast float %6218, %142
  %6231 = fsub fast float %6219, %143
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call float @dx.op.unary.f32(i32 24, float %6232)  ; Sqrt(value)
  %6234 = fdiv fast float 1.000000e+00, %6233
  %6235 = fmul fast float %6234, %6229
  %6236 = fmul fast float %6234, %6230
  %6237 = fmul fast float %6234, %6231
  %6238 = fadd fast float %6233, %6211
  %6239 = fdiv fast float 1.000000e+00, %6238
  %6240 = fmul float %6214, %6239
  %6241 = fmul float %6240, %6240
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = and i32 %6202, %6188
  %6244 = icmp eq i32 %6243, 0
  br i1 %6244, label %6267, label %6245, !dx.controlflow.hints !88

; <label>:6245                                    ; preds = %6191
  %6246 = lshr i32 %6136, 5
  %6247 = lshr i32 %6137, 5
  %6248 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6246, i32 %6247, i32 %6200, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6249 = extractvalue %dx.types.ResRet.i32 %6248, 0
  %6250 = and i32 %6249, 3
  %6251 = icmp eq i32 %6250, 0
  %6252 = select i1 %6251, float 1.000000e+00, float 0.000000e+00
  %6253 = icmp eq i32 %6250, 3
  br i1 %6253, label %6254, label %6267

; <label>:6254                                    ; preds = %6245
  %6255 = lshr i32 %6249, 10
  %6256 = and i32 %6255, 8160
  %6257 = and i32 %6137, 31
  %6258 = or i32 %6256, %6257
  %6259 = lshr i32 %6249, 1
  %6260 = and i32 %6259, 16352
  %6261 = and i32 %6136, 31
  %6262 = or i32 %6260, %6261
  %6263 = lshr i32 %6249, 23
  %6264 = and i32 %6263, 255
  %6265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6262, i32 %6258, i32 %6264, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  br label %6267

; <label>:6267                                    ; preds = %6254, %6245, %6191
  %6268 = phi float [ %6266, %6254 ], [ %6252, %6245 ], [ 0.000000e+00, %6191 ]
  %6269 = call float @dx.op.binary.f32(i32 36, float %6268, float %6268)  ; FMin(a,b)
  %6270 = call float @dx.op.binary.f32(i32 36, float %6268, float %6269)  ; FMin(a,b)
  %6271 = fcmp fast ogt float %6270, 0.000000e+00
  br i1 %6271, label %6280, label %6272, !dx.controlflow.hints !89

; <label>:6272                                    ; preds = %6513, %6267
  %6273 = phi float [ %6193, %6267 ], [ %6559, %6513 ]
  %6274 = phi float [ %6194, %6267 ], [ %6560, %6513 ]
  %6275 = phi float [ %6195, %6267 ], [ %6561, %6513 ]
  %6276 = phi float [ %6196, %6267 ], [ %6553, %6513 ]
  %6277 = phi float [ %6197, %6267 ], [ %6554, %6513 ]
  %6278 = phi float [ %6198, %6267 ], [ %6555, %6513 ]
  %6279 = icmp eq i32 %6192, %6202
  br i1 %6279, label %6562, label %6191

; <label>:6280                                    ; preds = %6267
  %6281 = fmul fast float %6268, %6226
  %6282 = fmul fast float %6268, %6227
  %6283 = fmul fast float %6268, %6228
  %6284 = fsub fast float %6219, %4570
  %6285 = fcmp fast ogt float %6284, 0.000000e+00
  %6286 = fsub fast float %143, %4570
  %6287 = fcmp fast ogt float %6286, 0.000000e+00
  %6288 = xor i1 %6287, %6285
  %6289 = fsub fast float %4570, %6219
  %6290 = fmul fast float %6289, 2.000000e+00
  %6291 = fadd fast float %6290, %6219
  %6292 = select i1 %6288, float %6219, float %6291
  %6293 = fsub fast float %6292, %143
  %6294 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6293, float %6229, float %6230, float %6293)  ; Dot3(ax,ay,az,bx,by,bz)
  %6295 = call float @dx.op.unary.f32(i32 25, float %6294)  ; Rsqrt(value)
  %6296 = fmul fast float %6295, %6229
  %6297 = fmul fast float %6295, %6230
  %6298 = fmul fast float %6295, %6293
  %6299 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4578)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = fdiv fast float 1.000000e+00, %6300
  %6302 = fmul fast float %6301, %6299
  %6303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6286, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = fcmp fast ogt float %6303, 0.000000e+00
  %6305 = fcmp fast olt float %6303, 0.000000e+00
  %6306 = zext i1 %6304 to i32
  %6307 = zext i1 %6305 to i32
  %6308 = sub nsw i32 %6306, %6307
  %6309 = sitofp i32 %6308 to float
  %6310 = fsub fast float %6292, %4570
  %6311 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6310, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = fcmp fast ogt float %6311, 0.000000e+00
  %6313 = fcmp fast olt float %6311, 0.000000e+00
  %6314 = zext i1 %6312 to i32
  %6315 = zext i1 %6313 to i32
  %6316 = sub nsw i32 %6314, %6315
  %6317 = sitofp i32 %6316 to float
  %6318 = fcmp fast une float %6309, %6317
  br i1 %6318, label %6319, label %6329

; <label>:6319                                    ; preds = %6280
  %6320 = fmul fast float %6302, %6298
  %6321 = fmul fast float %6302, %6297
  %6322 = fmul fast float %6302, %6296
  %6323 = fmul fast float %6322, %6322
  %6324 = fmul fast float %6321, %6321
  %6325 = fadd fast float %6323, %6324
  %6326 = fmul fast float %6320, %6320
  %6327 = fadd fast float %6325, %6326
  %6328 = call float @dx.op.unary.f32(i32 24, float %6327)  ; Sqrt(value)
  br label %6341

; <label>:6329                                    ; preds = %6280
  %6330 = icmp slt i32 %6308, 0
  br i1 %6330, label %6331, label %6341

; <label>:6331                                    ; preds = %6329
  %6332 = fsub fast float %141, %6217
  %6333 = fsub fast float %142, %6218
  %6334 = fsub fast float %143, %6292
  %6335 = fmul fast float %6332, %6332
  %6336 = fmul fast float %6333, %6333
  %6337 = fadd fast float %6335, %6336
  %6338 = fmul fast float %6334, %6334
  %6339 = fadd fast float %6337, %6338
  %6340 = call float @dx.op.unary.f32(i32 24, float %6339)  ; Sqrt(value)
  br label %6341

; <label>:6341                                    ; preds = %6331, %6329, %6319
  %6342 = phi float [ %6328, %6319 ], [ %6340, %6331 ], [ 0.000000e+00, %6329 ]
  %6343 = and i1 %6287, %6285
  %6344 = fsub fast float -0.000000e+00, %6342
  %6345 = select i1 %6343, float -0.000000e+00, float %6344
  %6346 = fmul fast float %4571, 0x3FF7154760000000
  %6347 = fmul fast float %6346, %6345
  %6348 = fmul fast float %4572, 0x3FF7154760000000
  %6349 = fmul fast float %6348, %6345
  %6350 = fmul fast float %4573, 0x3FF7154760000000
  %6351 = fmul fast float %6350, %6345
  %6352 = call float @dx.op.unary.f32(i32 21, float %6347)  ; Exp(value)
  %6353 = call float @dx.op.unary.f32(i32 21, float %6349)  ; Exp(value)
  %6354 = call float @dx.op.unary.f32(i32 21, float %6351)  ; Exp(value)
  %6355 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6356 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6357 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6358 = fmul fast float %6281, %6355
  %6359 = fmul fast float %6282, %6356
  %6360 = fmul fast float %6283, %6357
  %6361 = fsub fast float %6235, %4770
  %6362 = fsub fast float %6236, %4769
  %6363 = fsub fast float %6237, %4768
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6361, float %6362, float %6363, float %6361, float %6362, float %6363)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = call float @dx.op.unary.f32(i32 25, float %6364)  ; Rsqrt(value)
  %6366 = fmul fast float %6365, %6361
  %6367 = fmul fast float %6365, %6362
  %6368 = fmul fast float %6365, %6363
  %6369 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %4777, float %4778, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %6370 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4766, float %4765, float %6366, float %6367, float %6368)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6372 = fmul fast float %6371, %6242
  %6373 = bitcast i32 %4823 to float
  %6374 = fmul fast float %6371, %6371
  %6375 = fmul fast float %6374, %6373
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = fmul fast float %6372, %6376
  %6378 = bitcast float %6232 to i32
  %6379 = ashr i32 %6378, 1
  %6380 = sub nsw i32 1597463007, %6379
  %6381 = bitcast i32 %6380 to float
  %6382 = fmul fast float %6381, %6229
  %6383 = fmul fast float %6381, %6230
  %6384 = fmul fast float %6381, %6231
  %6385 = fsub fast float %6382, %4770
  %6386 = fsub fast float %6383, %4769
  %6387 = fsub fast float %6384, %4768
  %6388 = call float @dx.op.dot3.f32(i32 55, float %6385, float %6386, float %6387, float %6385, float %6386, float %6387)  ; Dot3(ax,ay,az,bx,by,bz)
  %6389 = call float @dx.op.unary.f32(i32 25, float %6388)  ; Rsqrt(value)
  %6390 = fmul fast float %6385, %6389
  %6391 = fmul fast float %6386, %6389
  %6392 = fmul fast float %6387, %6389
  %6393 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %6390, float %6391, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = fmul fast float %6393, %6393
  %6395 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6396 = fsub fast float 1.000000e+00, %4817
  %6397 = fmul fast float %4799, %4799
  %6398 = fmul fast float %6397, %6396
  %6399 = fadd fast float %6398, %4817
  %6400 = bitcast float %6399 to i32
  %6401 = ashr i32 %6400, 1
  %6402 = add nsw i32 %6401, 532487669
  %6403 = bitcast i32 %6402 to float
  %6404 = fadd fast float %6403, %4799
  %6405 = fmul fast float %4817, %6394
  %6406 = fsub fast float 1.000000e+00, %6394
  %6407 = fadd fast float %6406, %6405
  %6408 = fmul fast float %6395, %6395
  %6409 = fmul fast float %6408, %6396
  %6410 = fadd fast float %6409, %4817
  %6411 = bitcast float %6410 to i32
  %6412 = ashr i32 %6411, 1
  %6413 = add nsw i32 %6412, 532487669
  %6414 = bitcast i32 %6413 to float
  %6415 = fadd fast float %6414, %6395
  %6416 = fmul fast float %6407, %6407
  %6417 = fmul fast float %6416, %6404
  %6418 = fmul fast float %6417, %6415
  %6419 = fdiv fast float 1.000000e+00, %6418
  %6420 = bitcast float %4817 to i32
  %6421 = sitofp i32 %6420 to float
  %6422 = fmul fast float %6421, 0x3FE7F73180000000
  %6423 = fadd fast float %6422, 0x41AFE27C40000000
  %6424 = fptosi float %6423 to i32
  %6425 = bitcast i32 %6424 to float
  %6426 = fmul fast float %6214, 0x3FD80E9D60000000
  %6427 = fmul fast float %6426, %6381
  %6428 = fadd fast float %6425, %6427
  %6429 = bitcast float %6428 to i32
  %6430 = sub nsw i32 2129859010, %6429
  %6431 = bitcast i32 %6430 to float
  %6432 = fmul fast float %4817, %6419
  %6433 = fmul fast float %6432, %6425
  %6434 = fmul fast float %6433, %6431
  %6435 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6436 = fsub fast float 1.000000e+00, %6435
  %6437 = bitcast float %6436 to i32
  %6438 = sitofp i32 %6437 to float
  %6439 = fmul fast float %6438, 5.000000e+00
  %6440 = fadd fast float %6439, 0xC1EFBF8940000000
  %6441 = fptosi float %6440 to i32
  %6442 = bitcast i32 %6441 to float
  %6443 = fsub fast float 1.000000e+00, %4771
  %6444 = fsub fast float 1.000000e+00, %4772
  %6445 = fsub fast float 1.000000e+00, %4797
  %6446 = fmul fast float %6442, %6443
  %6447 = fmul fast float %6442, %6444
  %6448 = fmul fast float %6442, %6445
  %6449 = fadd fast float %6446, %4771
  %6450 = fadd fast float %6447, %4772
  %6451 = fadd fast float %6448, %4797
  br i1 %4935, label %6452, label %6475

; <label>:6452                                    ; preds = %6341
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4169, float %6435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.ResRet.f32 %6453, 2
  %6457 = fadd fast float %6454, -5.000000e-01
  %6458 = fadd fast float %6455, -5.000000e-01
  %6459 = fadd fast float %6456, -5.000000e-01
  %6460 = fmul fast float %4771, 4.000000e+00
  %6461 = fmul fast float %6460, %6443
  %6462 = fmul fast float %6461, %6457
  %6463 = fmul fast float %4772, 4.000000e+00
  %6464 = fmul fast float %6463, %6444
  %6465 = fmul fast float %6464, %6458
  %6466 = fmul fast float %4797, 4.000000e+00
  %6467 = fmul fast float %6466, %6445
  %6468 = fmul fast float %6467, %6459
  %6469 = fadd fast float %6462, %6449
  %6470 = fadd fast float %6465, %6450
  %6471 = fadd fast float %6468, %6451
  %6472 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6473 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6474 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  br label %6475

; <label>:6475                                    ; preds = %6452, %6341
  %6476 = phi float [ %6472, %6452 ], [ %6449, %6341 ]
  %6477 = phi float [ %6473, %6452 ], [ %6450, %6341 ]
  %6478 = phi float [ %6474, %6452 ], [ %6451, %6341 ]
  %6479 = fmul fast float %6369, 9.843750e-01
  %6480 = fadd fast float %6479, 7.812500e-03
  %6481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6480, float %4925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6482 = extractvalue %dx.types.ResRet.f32 %6481, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6481, 3
  %6484 = fmul fast float %6482, %4771
  %6485 = fmul fast float %6482, %4772
  %6486 = fmul fast float %6482, %4797
  %6487 = fadd fast float %6484, %6483
  %6488 = fadd fast float %6485, %6483
  %6489 = fadd fast float %6486, %6483
  br i1 %4935, label %6490, label %6513

; <label>:6490                                    ; preds = %6475
  %6491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4169, float %6369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = fadd fast float %6492, -5.000000e-01
  %6496 = fadd fast float %6493, -5.000000e-01
  %6497 = fadd fast float %6494, -5.000000e-01
  %6498 = fmul fast float %4771, 4.000000e+00
  %6499 = fmul fast float %6498, %6443
  %6500 = fmul fast float %6499, %6495
  %6501 = fmul fast float %4772, 4.000000e+00
  %6502 = fmul fast float %6501, %6444
  %6503 = fmul fast float %6502, %6496
  %6504 = fmul fast float %4797, 4.000000e+00
  %6505 = fmul fast float %6504, %6445
  %6506 = fmul fast float %6505, %6497
  %6507 = fadd fast float %6500, %6487
  %6508 = fadd fast float %6503, %6488
  %6509 = fadd fast float %6506, %6489
  %6510 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6511 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6512 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  br label %6513

; <label>:6513                                    ; preds = %6490, %6475
  %6514 = phi float [ %6510, %6490 ], [ %6487, %6475 ]
  %6515 = phi float [ %6511, %6490 ], [ %6488, %6475 ]
  %6516 = phi float [ %6512, %6490 ], [ %6489, %6475 ]
  %6517 = call float @dx.op.binary.f32(i32 35, float %6515, float %6516)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 35, float %6514, float %6517)  ; FMax(a,b)
  %6519 = fsub fast float 1.000000e+00, %6518
  %6520 = fmul fast float %6476, %6434
  %6521 = fmul fast float %6477, %6434
  %6522 = fmul fast float %6478, %6434
  %6523 = fsub fast float 1.000000e+00, %6370
  %6524 = bitcast float %6523 to i32
  %6525 = sitofp i32 %6524 to float
  %6526 = fmul fast float %6525, 5.000000e+00
  %6527 = fadd fast float %6526, 0xC1EFBF8940000000
  %6528 = fptosi float %6527 to i32
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %4170
  %6531 = fmul fast float %6519, %6530
  %6532 = fmul fast float %6531, %5861
  %6533 = fmul fast float %6531, %5862
  %6534 = fmul fast float %6531, %5863
  %6535 = fmul fast float %6222, %3608
  %6536 = fmul fast float %6222, %3609
  %6537 = fmul fast float %6222, %3610
  %6538 = fadd fast float %6520, %6535
  %6539 = fadd fast float %6538, %6532
  %6540 = fadd fast float %6521, %6536
  %6541 = fadd fast float %6540, %6533
  %6542 = fadd fast float %6522, %6537
  %6543 = fadd fast float %6542, %6534
  %6544 = fmul fast float %6358, %4166
  %6545 = fmul fast float %6544, %6377
  %6546 = fmul fast float %6545, %6519
  %6547 = fmul fast float %6359, %4166
  %6548 = fmul fast float %6547, %6377
  %6549 = fmul fast float %6548, %6519
  %6550 = fmul fast float %6360, %4166
  %6551 = fmul fast float %6550, %6377
  %6552 = fmul fast float %6551, %6519
  %6553 = fadd fast float %6546, %6196
  %6554 = fadd fast float %6549, %6197
  %6555 = fadd fast float %6552, %6198
  %6556 = fmul fast float %6545, %6539
  %6557 = fmul fast float %6548, %6541
  %6558 = fmul fast float %6551, %6543
  %6559 = fadd fast float %6556, %6193
  %6560 = fadd fast float %6557, %6194
  %6561 = fadd fast float %6558, %6195
  br label %6272

; <label>:6562                                    ; preds = %6272
  br label %6563

; <label>:6563                                    ; preds = %6562, %6159
  %6564 = phi float [ %6161, %6159 ], [ %6273, %6562 ]
  %6565 = phi float [ %6162, %6159 ], [ %6274, %6562 ]
  %6566 = phi float [ %6163, %6159 ], [ %6275, %6562 ]
  %6567 = phi float [ %6164, %6159 ], [ %6276, %6562 ]
  %6568 = phi float [ %6165, %6159 ], [ %6277, %6562 ]
  %6569 = phi float [ %6166, %6159 ], [ %6278, %6562 ]
  %6570 = add i32 %6160, 1
  %6571 = icmp ugt i32 %6570, %6156
  br i1 %6571, label %6572, label %6159

; <label>:6572                                    ; preds = %6563
  br label %6573

; <label>:6573                                    ; preds = %6572, %6135, %6125
  %6574 = phi float [ %6126, %6125 ], [ %6126, %6135 ], [ %6564, %6572 ]
  %6575 = phi float [ %6127, %6125 ], [ %6127, %6135 ], [ %6565, %6572 ]
  %6576 = phi float [ %6128, %6125 ], [ %6128, %6135 ], [ %6566, %6572 ]
  %6577 = phi float [ %6129, %6125 ], [ %6129, %6135 ], [ %6567, %6572 ]
  %6578 = phi float [ %6130, %6125 ], [ %6130, %6135 ], [ %6568, %6572 ]
  %6579 = phi float [ %6131, %6125 ], [ %6131, %6135 ], [ %6569, %6572 ]
  %6580 = call float @dx.op.unary.f32(i32 24, float %4774)  ; Sqrt(value)
  %6581 = call float @dx.op.unary.f32(i32 24, float %4775)  ; Sqrt(value)
  %6582 = call float @dx.op.unary.f32(i32 24, float %4776)  ; Sqrt(value)
  %6583 = fmul fast float %6580, %6577
  %6584 = fmul fast float %6581, %6578
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  br i1 %183, label %6587, label %6610

; <label>:6587                                    ; preds = %6573
  %6588 = fadd fast float %6579, %4172
  %6589 = fmul fast float %6588, %4173
  %6590 = fsub fast float 1.000000e+00, %4173
  %6591 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.f32 %6592, 3
  %6594 = fmul fast float %6593, %6591
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = fmul fast float %6596, %5867
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = fmul fast float %6598, %4795
  %6600 = fadd fast float %6584, %6583
  %6601 = fmul fast float %6586, %6600
  %6602 = extractvalue %dx.types.CBufRet.f32 %6592, 1
  %6603 = fadd fast float %6594, %6589
  %6604 = fsub fast float %6603, %6597
  %6605 = fadd fast float %6604, %6599
  %6606 = fsub fast float %6605, %6602
  %6607 = extractvalue %dx.types.CBufRet.f32 %6592, 2
  %6608 = fmul fast float %6606, %6607
  %6609 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  br label %6626

; <label>:6610                                    ; preds = %6573
  %6611 = fmul fast float %6582, %6579
  %6612 = fmul fast float %6586, %6583
  %6613 = fmul fast float %6586, %6584
  %6614 = fmul fast float %6611, %6586
  %6615 = add i32 %43, 356
  %6616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6615, i32 undef)  ; BufferLoad(srv,index,wot)
  %6617 = extractvalue %dx.types.ResRet.i32 %6616, 0
  %6618 = and i32 %6617, 32
  %6619 = icmp eq i32 %6618, 0
  br i1 %6619, label %6626, label %6620

; <label>:6620                                    ; preds = %6610
  %6621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.f32 %6621, 0
  %6623 = fmul fast float %6622, 0x3FE99999A0000000
  %6624 = fadd fast float %6622, %6612
  %6625 = fadd fast float %6623, %6614
  br label %6626

; <label>:6626                                    ; preds = %6620, %6610, %6587
  %6627 = phi float [ %6601, %6587 ], [ %6624, %6620 ], [ %6612, %6610 ]
  %6628 = phi float [ %6609, %6587 ], [ %6613, %6620 ], [ %6613, %6610 ]
  %6629 = phi float [ 1.000000e+00, %6587 ], [ %6625, %6620 ], [ %6614, %6610 ]
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = fmul fast float %6631, %6575
  %6633 = fmul fast float %6631, %6576
  %6634 = fadd fast float %6575, %6574
  %6635 = select i1 %183, float %6634, float %6574
  %6636 = fmul float %6635, %6631
  %6637 = select i1 %183, float 0.000000e+00, float %6632
  %6638 = select i1 %183, float 0.000000e+00, float %6633
  %6639 = fmul fast float %6627, %6580
  %6640 = fmul fast float %6628, %6581
  %6641 = fmul fast float %6629, %6582
  %6642 = fadd fast float %6636, %6639
  %6643 = fadd fast float %6637, %6640
  %6644 = fadd fast float %6638, %6641
  %6645 = select i1 %183, float %6628, float %6643
  %6646 = select i1 %183, float %6629, float %6644
  %6647 = call float @dx.op.binary.f32(i32 36, float %6642, float 3.225500e+04)  ; FMin(a,b)
  %6648 = call float @dx.op.binary.f32(i32 36, float %6645, float 3.225500e+04)  ; FMin(a,b)
  %6649 = call float @dx.op.binary.f32(i32 36, float %6646, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6647)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6648)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6649)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

