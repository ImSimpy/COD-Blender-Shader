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
; shader hash: 3a28bcd2c663ac07b3fa4cdea33ba6fa
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
  %380 = add i32 %43, 520
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
  %538 = add i32 %43, 408
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
  %561 = add i32 %43, 488
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
  %759 = add i32 %43, 424
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
  %843 = add i32 %43, 440
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
  %1135 = add i32 %43, 476
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
  %1187 = add i32 %43, 460
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
  %1213 = add i32 %43, 412
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
  %1236 = add i32 %43, 492
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
  %1434 = add i32 %43, 428
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
  %1518 = add i32 %43, 444
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
  %1989 = add i32 %43, 480
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
  %2041 = add i32 %43, 464
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
  %2067 = add i32 %43, 416
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
  %2090 = add i32 %43, 496
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
  %2288 = add i32 %43, 432
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
  %2372 = add i32 %43, 448
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
  %2843 = add i32 %43, 484
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
  %2895 = add i32 %43, 468
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
  %2921 = add i32 %43, 420
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
  %2944 = add i32 %43, 500
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
  %3142 = add i32 %43, 436
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
  %3226 = add i32 %43, 452
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
  %3468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3469 = extractvalue %dx.types.CBufRet.f32 %3468, 0
  %3470 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %3456, float %3457)  ; Dot2(ax,ay,bx,by)
  %3471 = fmul fast float %3470, 0x3FE3333340000000
  %3472 = fsub fast float 1.000000e+00, %3471
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3472, float %3456, float %3457, float %3472)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = call float @dx.op.unary.f32(i32 25, float %3473)  ; Rsqrt(value)
  %3475 = fmul fast float %3474, %3456
  %3476 = fmul fast float %3474, %3457
  %3477 = fmul fast float %3472, %3474
  %3478 = fmul fast float %3477, %85
  %3479 = fmul fast float %3477, %86
  %3480 = fmul fast float %3477, %87
  %3481 = fmul fast float %3475, %59
  %3482 = fmul fast float %3475, %60
  %3483 = fmul fast float %3475, %61
  %3484 = fadd fast float %3478, %3481
  %3485 = fadd fast float %3479, %3482
  %3486 = fadd fast float %3480, %3483
  %3487 = fmul fast float %97, %3476
  %3488 = fmul fast float %98, %3476
  %3489 = fmul fast float %99, %3476
  %3490 = fadd fast float %3484, %3487
  %3491 = fadd fast float %3485, %3488
  %3492 = fadd fast float %3486, %3489
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %3490, float %3491, float %3492)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.unary.f32(i32 25, float %3493)  ; Rsqrt(value)
  %3495 = fmul fast float %3490, %3494
  %3496 = fmul fast float %3491, %3494
  %3497 = fmul fast float %3492, %3494
  %3498 = and i32 %45, 1
  %3499 = icmp eq i32 %3498, 0
  br i1 %3499, label %3500, label %4012

; <label>:3500                                    ; preds = %3455
  %3501 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3502 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3503 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3504 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3505 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3506 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3507 = fadd fast float %3501, %141
  %3508 = fadd fast float %3502, %142
  %3509 = fadd fast float %3503, %143
  %3510 = fadd fast float %3504, %141
  %3511 = fadd fast float %3505, %142
  %3512 = fadd fast float %3506, %143
  %3513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.CBufRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.CBufRet.f32 %3513, 2
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3520 = fmul fast float %3514, %78
  %3521 = fmul fast float %3520, %3518
  %3522 = fmul fast float %3515, %79
  %3523 = fmul fast float %3522, %3519
  %3524 = fptoui float %3521 to i32
  %3525 = fptoui float %3523 to i32
  %3526 = fadd fast float %3514, -1.000000e+00
  %3527 = fadd fast float %3515, -1.000000e+00
  %3528 = fptoui float %3526 to i32
  %3529 = fptoui float %3527 to i32
  %3530 = call i32 @dx.op.binary.i32(i32 40, i32 %3524, i32 %3528)  ; UMin(a,b)
  %3531 = call i32 @dx.op.binary.i32(i32 40, i32 %3525, i32 %3529)  ; UMin(a,b)
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 2
  %3534 = extractvalue %dx.types.CBufRet.f32 %3532, 3
  %3535 = fmul fast float %3533, %73
  %3536 = fsub fast float %3535, %3534
  %3537 = fadd fast float %3516, -1.000000e+00
  %3538 = call float @dx.op.binary.f32(i32 36, float %3536, float %3537)  ; FMin(a,b)
  %3539 = fptoui float %3538 to i32
  %3540 = fptoui float %3514 to i32
  %3541 = fptoui float %3515 to i32
  %3542 = mul i32 %3539, %3541
  %3543 = add i32 %3542, %3531
  %3544 = mul i32 %3543, %3540
  %3545 = add i32 %3544, %3530
  %3546 = shl i32 %3545, 2
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, 1023
  %3550 = lshr i32 %3548, 10
  %3551 = icmp eq i32 %3549, 0
  br i1 %3551, label %3980, label %3552

; <label>:3552                                    ; preds = %3500
  %3553 = and i32 %3548, 1023
  br label %3554

; <label>:3554                                    ; preds = %3681, %3552
  %3555 = phi i32 [ %3631, %3681 ], [ 0, %3552 ]
  %3556 = phi float [ %3682, %3681 ], [ 0.000000e+00, %3552 ]
  %3557 = phi float [ %3683, %3681 ], [ %902, %3552 ]
  %3558 = phi float [ %3684, %3681 ], [ %3469, %3552 ]
  %3559 = phi float [ %3685, %3681 ], [ %3467, %3552 ]
  %3560 = phi float [ %3686, %3681 ], [ 0.000000e+00, %3552 ]
  %3561 = phi float [ %3687, %3681 ], [ 0.000000e+00, %3552 ]
  %3562 = phi float [ %3688, %3681 ], [ %3461, %3552 ]
  %3563 = phi float [ %3689, %3681 ], [ %3462, %3552 ]
  %3564 = phi float [ %3690, %3681 ], [ %3463, %3552 ]
  %3565 = phi float [ %3691, %3681 ], [ %3495, %3552 ]
  %3566 = phi float [ %3692, %3681 ], [ %3496, %3552 ]
  %3567 = phi float [ %3693, %3681 ], [ %3497, %3552 ]
  %3568 = phi float [ %3694, %3681 ], [ %3466, %3552 ]
  %3569 = phi float [ %3695, %3681 ], [ %3465, %3552 ]
  %3570 = phi float [ %3696, %3681 ], [ 0.000000e+00, %3552 ]
  %3571 = phi float [ %3697, %3681 ], [ %3464, %3552 ]
  %3572 = phi float [ %3698, %3681 ], [ %3458, %3552 ]
  %3573 = phi float [ %3699, %3681 ], [ %3459, %3552 ]
  %3574 = phi float [ %3700, %3681 ], [ %3460, %3552 ]
  %3575 = add nuw nsw i32 %3555, %3550
  %3576 = shl i32 %3575, 2
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = shl i32 %3578, 8
  %3580 = or i32 %3579, 48
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3586 = or i32 %3579, 64
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.i32 %3587, 1
  %3590 = or i32 %3579, 80
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3594 = or i32 %3579, 96
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3600 = or i32 %3579, 112
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3603 = or i32 %3579, 128
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3609 = or i32 %3579, 144
  %3610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3614 = extractvalue %dx.types.ResRet.f32 %3610, 3
  %3615 = or i32 %3579, 160
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.ResRet.f32 %3616, 3
  %3621 = or i32 %3579, 192
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = or i32 %3579, 208
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = or i32 %3579, 248
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = add nuw nsw i32 %3555, 1
  %3632 = bitcast float %3585 to i32
  %3633 = and i32 %3632, 512
  %3634 = icmp eq i32 %3633, 0
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3640 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3641 = or i32 %3579, 16
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = or i32 %3579, 32
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = call float @dx.op.unary.f32(i32 27, float %3640)  ; Round_ni(value)
  %3656 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3657 = call float @dx.op.unary.f32(i32 27, float %3647)  ; Round_ni(value)
  %3658 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3661 = fadd fast float %3658, %3656
  %3662 = fadd fast float %3661, %3660
  %3663 = fcmp fast oeq float %3662, 0.000000e+00
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %3507, float %3508, float %3509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3507, float %3508, float %3509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = fsub fast float %3664, %3640
  %3669 = fsub fast float %3666, %3640
  %3670 = fsub fast float %3665, %3647
  %3671 = fsub fast float %3667, %3647
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3583, float %3584, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3675 = fadd fast float %3674, %3672
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3678 = fcmp fast ogt float %3676, %3677
  %3679 = and i1 %3663, %3678
  %3680 = and i1 %3634, %3679
  br i1 %3680, label %3702, label %3681

; <label>:3681                                    ; preds = %3966, %3783, %3702, %3554
  %3682 = phi float [ %3556, %3702 ], [ %3786, %3783 ], [ %3786, %3966 ], [ %3556, %3554 ]
  %3683 = phi float [ %3557, %3702 ], [ %3557, %3783 ], [ %3941, %3966 ], [ %3557, %3554 ]
  %3684 = phi float [ %3558, %3702 ], [ %3558, %3783 ], [ %3940, %3966 ], [ %3558, %3554 ]
  %3685 = phi float [ %3559, %3702 ], [ %3559, %3783 ], [ %3938, %3966 ], [ %3559, %3554 ]
  %3686 = phi float [ %3560, %3702 ], [ %3560, %3783 ], [ %3910, %3966 ], [ %3560, %3554 ]
  %3687 = phi float [ %3561, %3702 ], [ %3561, %3783 ], [ %3908, %3966 ], [ %3561, %3554 ]
  %3688 = phi float [ %3562, %3702 ], [ %3562, %3783 ], [ %3976, %3966 ], [ %3562, %3554 ]
  %3689 = phi float [ %3563, %3702 ], [ %3563, %3783 ], [ %3977, %3966 ], [ %3563, %3554 ]
  %3690 = phi float [ %3564, %3702 ], [ %3564, %3783 ], [ %3978, %3966 ], [ %3564, %3554 ]
  %3691 = phi float [ %3565, %3702 ], [ %3565, %3783 ], [ %3889, %3966 ], [ %3565, %3554 ]
  %3692 = phi float [ %3566, %3702 ], [ %3566, %3783 ], [ %3890, %3966 ], [ %3566, %3554 ]
  %3693 = phi float [ %3567, %3702 ], [ %3567, %3783 ], [ %3891, %3966 ], [ %3567, %3554 ]
  %3694 = phi float [ %3568, %3702 ], [ %3568, %3783 ], [ %3918, %3966 ], [ %3568, %3554 ]
  %3695 = phi float [ %3569, %3702 ], [ %3569, %3783 ], [ %3915, %3966 ], [ %3569, %3554 ]
  %3696 = phi float [ %3570, %3702 ], [ %3570, %3783 ], [ %3912, %3966 ], [ %3570, %3554 ]
  %3697 = phi float [ %3571, %3702 ], [ %3571, %3783 ], [ %3906, %3966 ], [ %3571, %3554 ]
  %3698 = phi float [ %3572, %3702 ], [ %3572, %3783 ], [ %3901, %3966 ], [ %3572, %3554 ]
  %3699 = phi float [ %3573, %3702 ], [ %3573, %3783 ], [ %3902, %3966 ], [ %3573, %3554 ]
  %3700 = phi float [ %3574, %3702 ], [ %3574, %3783 ], [ %3903, %3966 ], [ %3574, %3554 ]
  %3701 = icmp eq i32 %3631, %3553
  br i1 %3701, label %3979, label %3554

; <label>:3702                                    ; preds = %3554
  %3703 = extractvalue %dx.types.ResRet.f32 %3601, 3
  %3704 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3708 = extractvalue %dx.types.ResRet.i32 %3587, 3
  %3709 = extractvalue %dx.types.ResRet.i32 %3587, 2
  %3710 = add i32 %3708, 0
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3710, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3713 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3711, %dx.types.Handle %3712, float %3640, float %3647, float undef, float undef, i32 0, i32 0, i32 undef, float %3668, float %3670, float undef, float %3669, float %3671, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = fmul fast float %3714, %3707
  %3716 = fadd fast float %3715, %3706
  %3717 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3718 = fmul fast float %3640, %3596
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3647, float %3718)  ; FMad(a,b,c)
  %3720 = fadd fast float %3719, %3705
  %3721 = fmul fast float %3640, %3598
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3599, float %3647, float %3721)  ; FMad(a,b,c)
  %3723 = fadd fast float %3722, %3704
  %3724 = fmul fast float %3668, %3596
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3670, float %3724)  ; FMad(a,b,c)
  %3726 = fmul fast float %3668, %3598
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3599, float %3670, float %3726)  ; FMad(a,b,c)
  %3728 = fmul fast float %3669, %3596
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3671, float %3728)  ; FMad(a,b,c)
  %3730 = fmul fast float %3669, %3598
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3599, float %3671, float %3730)  ; FMad(a,b,c)
  %3732 = add i32 %3709, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3733, %dx.types.Handle %3712, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = and i32 %3632, 1024
  %3737 = icmp ne i32 %3736, 0
  %3738 = fcmp fast ogt float %3735, 0x3FE0101020000000
  %3739 = uitofp i1 %3738 to float
  %3740 = select i1 %3737, float %3739, float %3735
  %3741 = and i32 %3632, 8192
  %3742 = icmp ne i32 %3741, 0
  %3743 = select i1 %3742, float %3703, float 1.000000e+00
  %3744 = fmul fast float %3640, 2.000000e+00
  %3745 = fadd fast float %3744, -1.000000e+00
  %3746 = call float @dx.op.unary.f32(i32 6, float %3745)  ; FAbs(value)
  %3747 = fmul fast float %3746, %3629
  %3748 = fsub fast float %3747, %3629
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fmul fast float %3647, 2.000000e+00
  %3751 = fadd fast float %3750, -1.000000e+00
  %3752 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3753 = fmul fast float %3752, %3630
  %3754 = fsub fast float %3753, %3630
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3659, %3592
  %3757 = fsub fast float %3756, %3592
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3717, %3743
  %3760 = fmul fast float %3759, %3714
  %3761 = fmul fast float %3760, %3749
  %3762 = fmul fast float %3761, %3740
  %3763 = fmul fast float %3762, %3755
  %3764 = fmul fast float %3763, %3758
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3768 = fsub fast float %3676, %3767
  %3769 = fmul fast float %3768, %3766
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fmul fast float %3764, %3593
  %3772 = fadd fast float %3764, %3593
  %3773 = fmul fast float %3772, %3602
  %3774 = fsub fast float %3773, %3602
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = and i32 %3632, 128
  %3777 = icmp ne i32 %3776, 0
  %3778 = select i1 %3777, float %3775, float %3771
  %3779 = fmul fast float %3778, %3770
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = fcmp fast ugt float %3779, %3781
  br i1 %3782, label %3783, label %3681

; <label>:3783                                    ; preds = %3702
  %3784 = select i1 %3742, float %3779, float 0.000000e+00
  %3785 = fadd fast float %3784, %3556
  %3786 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  br i1 %3742, label %3681, label %3787

; <label>:3787                                    ; preds = %3783
  %3788 = and i32 %3632, 4
  %3789 = and i32 %3632, 8
  %3790 = add i32 %3588, 0
  %3791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3790, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3791, %dx.types.Handle %3792, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = bitcast float %3614 to i32
  %3799 = and i32 %3798, 255
  %3800 = uitofp i32 %3799 to float
  %3801 = lshr i32 %3798, 8
  %3802 = and i32 %3801, 255
  %3803 = uitofp i32 %3802 to float
  %3804 = fmul fast float %3797, %3800
  %3805 = fadd fast float %3804, %3803
  %3806 = fmul fast float %3805, 0x3F70101000000000
  %3807 = add i32 %3589, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3808, %dx.types.Handle %3792, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3814 = bitcast float %3608 to i32
  %3815 = and i32 %3814, 255
  %3816 = uitofp i32 %3815 to float
  %3817 = lshr i32 %3814, 8
  %3818 = and i32 %3817, 255
  %3819 = uitofp i32 %3818 to float
  %3820 = lshr i32 %3814, 16
  %3821 = and i32 %3820, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = fmul fast float %3822, 0x3F70101000000000
  %3824 = fmul fast float %3810, %3816
  %3825 = fadd fast float %3824, %3819
  %3826 = fmul fast float %3825, 0x3F70101000000000
  %3827 = fadd fast float %3811, -5.000000e-01
  %3828 = fadd fast float %3813, -5.000000e-01
  %3829 = fmul fast float %3827, %3823
  %3830 = fmul fast float %3828, %3823
  %3831 = fadd fast float %3829, 5.000000e-01
  %3832 = fadd fast float %3830, 5.000000e-01
  %3833 = fmul fast float %3794, %3617
  %3834 = fmul fast float %3795, %3618
  %3835 = fmul fast float %3796, %3619
  %3836 = fmul fast float %3831, 2.000000e+00
  %3837 = fadd fast float %3836, -1.000000e+00
  %3838 = fmul fast float %3832, 2.000000e+00
  %3839 = fadd fast float %3838, -1.000000e+00
  %3840 = fadd fast float %3837, %3839
  %3841 = fmul fast float %3840, 5.000000e-01
  %3842 = fsub fast float %3837, %3839
  %3843 = fmul fast float %3842, 5.000000e-01
  %3844 = call float @dx.op.unary.f32(i32 6, float %3841)  ; FAbs(value)
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = call float @dx.op.unary.f32(i32 6, float %3843)  ; FAbs(value)
  %3847 = fsub fast float %3845, %3846
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3843, float %3847, float %3841, float %3843, float %3847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = call float @dx.op.unary.f32(i32 25, float %3848)  ; Rsqrt(value)
  %3850 = fmul fast float %3841, %3849
  %3851 = fmul fast float %3843, %3849
  %3852 = fmul fast float %3849, %3847
  %3853 = fmul fast float %3852, %3582
  %3854 = fmul fast float %3852, %3583
  %3855 = fmul fast float %3852, %3584
  %3856 = fmul fast float %3850, %3605
  %3857 = fmul fast float %3850, %3606
  %3858 = fmul fast float %3850, %3607
  %3859 = fadd fast float %3856, %3853
  %3860 = fadd fast float %3857, %3854
  %3861 = fadd fast float %3858, %3855
  %3862 = fmul fast float %3851, %3611
  %3863 = fmul fast float %3851, %3612
  %3864 = fmul fast float %3851, %3613
  %3865 = fadd fast float %3859, %3862
  %3866 = fadd fast float %3860, %3863
  %3867 = fadd fast float %3861, %3864
  %3868 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3866, float %3867, float %3865, float %3866, float %3867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3869 = call float @dx.op.unary.f32(i32 25, float %3868)  ; Rsqrt(value)
  %3870 = fmul fast float %3865, %3869
  %3871 = fmul fast float %3866, %3869
  %3872 = fmul fast float %3867, %3869
  %3873 = icmp ne i32 %3789, 0
  %3874 = select i1 %3873, float 1.000000e+00, float 0.000000e+00
  %3875 = fmul fast float %3779, %3874
  %3876 = and i32 %3632, 1
  %3877 = icmp eq i32 %3876, 0
  br i1 %3877, label %3878, label %3882

; <label>:3878                                    ; preds = %3787
  %3879 = fsub fast float %3870, %3565
  %3880 = fsub fast float %3871, %3566
  %3881 = fsub fast float %3872, %3567
  br label %3882

; <label>:3882                                    ; preds = %3878, %3787
  %3883 = phi float [ %3879, %3878 ], [ %3870, %3787 ]
  %3884 = phi float [ %3880, %3878 ], [ %3871, %3787 ]
  %3885 = phi float [ %3881, %3878 ], [ %3872, %3787 ]
  %3886 = fmul float %3885, %3875
  %3887 = fmul float %3884, %3875
  %3888 = fmul float %3883, %3875
  %3889 = fadd fast float %3888, %3565
  %3890 = fadd fast float %3887, %3566
  %3891 = fadd fast float %3886, %3567
  %3892 = icmp ne i32 %3788, 0
  %3893 = select i1 %3892, float 1.000000e+00, float 0.000000e+00
  %3894 = fmul fast float %3779, %3893
  %3895 = fsub fast float %3833, %3572
  %3896 = fsub fast float %3834, %3573
  %3897 = fsub fast float %3835, %3574
  %3898 = fmul fast float %3895, %3894
  %3899 = fmul fast float %3896, %3894
  %3900 = fmul fast float %3897, %3894
  %3901 = fadd fast float %3898, %3572
  %3902 = fadd fast float %3899, %3573
  %3903 = fadd fast float %3900, %3574
  %3904 = fsub fast float %3806, %3571
  %3905 = fmul fast float %3904, %3894
  %3906 = fadd fast float %3905, %3571
  %3907 = fmul fast float %3894, %3561
  %3908 = fsub fast float %3561, %3907
  %3909 = fmul fast float %3894, %3560
  %3910 = fsub fast float %3560, %3909
  %3911 = fadd fast float %3779, %3570
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fsub fast float %3826, %3569
  %3914 = fmul fast float %3913, %3875
  %3915 = fadd fast float %3914, %3569
  %3916 = fsub fast float %3812, %3568
  %3917 = fmul fast float %3916, %3875
  %3918 = fadd fast float %3917, %3568
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3833, float %3834, float %3835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3923 = fmul fast float %3922, %3919
  %3924 = fadd fast float %3923, %3921
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = bitcast float %3620 to i32
  %3927 = and i32 %3926, 65535
  %3928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3927)  ; LegacyF16ToF32(value)
  %3929 = lshr i32 %3926, 16
  %3930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3929)  ; LegacyF16ToF32(value)
  %3931 = fcmp fast oge float %3928, 0.000000e+00
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = select i1 %3931, float %3928, float %3933
  %3935 = fadd fast float %3934, %3930
  %3936 = fsub fast float %3925, %3559
  %3937 = fmul fast float %3936, %3779
  %3938 = fadd fast float %3937, %3559
  %3939 = fmul fast float %3935, %3779
  %3940 = call float @dx.op.binary.f32(i32 35, float %3558, float %3939)  ; FMax(a,b)
  %3941 = call float @dx.op.binary.f32(i32 35, float %3557, float %3779)  ; FMax(a,b)
  %3942 = and i32 %3632, 16
  %3943 = icmp eq i32 %3942, 0
  br i1 %3943, label %3966, label %3944

; <label>:3944                                    ; preds = %3882
  %3945 = bitcast float %3626 to i32
  %3946 = add i32 %3623, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3792, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = and i32 %3945, 65535
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = fmul fast float %3949, %3617
  %3955 = fmul fast float %3950, %3618
  %3956 = fmul fast float %3951, %3619
  %3957 = and i32 %3632, 16384
  %3958 = icmp ne i32 %3957, 0
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = select i1 %3958, float %3960, float 1.000000e+00
  %3962 = fmul fast float %3961, %3953
  %3963 = fmul fast float %3954, %3962
  %3964 = fmul fast float %3955, %3962
  %3965 = fmul fast float %3956, %3962
  br label %3966

; <label>:3966                                    ; preds = %3944, %3882
  %3967 = phi float [ %3963, %3944 ], [ 0.000000e+00, %3882 ]
  %3968 = phi float [ %3964, %3944 ], [ 0.000000e+00, %3882 ]
  %3969 = phi float [ %3965, %3944 ], [ 0.000000e+00, %3882 ]
  %3970 = fsub fast float %3967, %3562
  %3971 = fsub fast float %3968, %3563
  %3972 = fsub fast float %3969, %3564
  %3973 = fmul fast float %3970, %3779
  %3974 = fmul fast float %3971, %3779
  %3975 = fmul fast float %3972, %3779
  %3976 = fadd fast float %3973, %3562
  %3977 = fadd fast float %3974, %3563
  %3978 = fadd fast float %3975, %3564
  br label %3681

; <label>:3979                                    ; preds = %3681
  br label %3980

; <label>:3980                                    ; preds = %3979, %3500
  %3981 = phi float [ 0.000000e+00, %3500 ], [ %3682, %3979 ]
  %3982 = phi float [ %902, %3500 ], [ %3683, %3979 ]
  %3983 = phi float [ %3469, %3500 ], [ %3684, %3979 ]
  %3984 = phi float [ %3467, %3500 ], [ %3685, %3979 ]
  %3985 = phi float [ 0.000000e+00, %3500 ], [ %3686, %3979 ]
  %3986 = phi float [ 0.000000e+00, %3500 ], [ %3687, %3979 ]
  %3987 = phi float [ %3461, %3500 ], [ %3688, %3979 ]
  %3988 = phi float [ %3462, %3500 ], [ %3689, %3979 ]
  %3989 = phi float [ %3463, %3500 ], [ %3690, %3979 ]
  %3990 = phi float [ %3495, %3500 ], [ %3691, %3979 ]
  %3991 = phi float [ %3496, %3500 ], [ %3692, %3979 ]
  %3992 = phi float [ %3497, %3500 ], [ %3693, %3979 ]
  %3993 = phi float [ %3466, %3500 ], [ %3694, %3979 ]
  %3994 = phi float [ %3465, %3500 ], [ %3695, %3979 ]
  %3995 = phi float [ 0.000000e+00, %3500 ], [ %3696, %3979 ]
  %3996 = phi float [ %3464, %3500 ], [ %3697, %3979 ]
  %3997 = phi float [ %3458, %3500 ], [ %3698, %3979 ]
  %3998 = phi float [ %3459, %3500 ], [ %3699, %3979 ]
  %3999 = phi float [ %3460, %3500 ], [ %3700, %3979 ]
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %3990, float %3991, float %3992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = call float @dx.op.unary.f32(i32 25, float %4000)  ; Rsqrt(value)
  %4002 = fmul fast float %4001, %3990
  %4003 = fmul fast float %4001, %3991
  %4004 = fmul fast float %4001, %3992
  %4005 = fadd fast float %3995, %902
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = call float @dx.op.dot3.f32(i32 55, float %4002, float %4003, float %4004, float %4002, float %4003, float %4004)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.unary.f32(i32 25, float %4007)  ; Rsqrt(value)
  %4009 = fmul fast float %4008, %4002
  %4010 = fmul fast float %4008, %4003
  %4011 = fmul fast float %4008, %4004
  br label %4012

; <label>:4012                                    ; preds = %3980, %3455
  %4013 = phi float [ %4009, %3980 ], [ %3495, %3455 ]
  %4014 = phi float [ %4010, %3980 ], [ %3496, %3455 ]
  %4015 = phi float [ %4011, %3980 ], [ %3497, %3455 ]
  %4016 = phi float [ %3987, %3980 ], [ %3461, %3455 ]
  %4017 = phi float [ %3988, %3980 ], [ %3462, %3455 ]
  %4018 = phi float [ %3989, %3980 ], [ %3463, %3455 ]
  %4019 = phi float [ %3997, %3980 ], [ %3458, %3455 ]
  %4020 = phi float [ %3998, %3980 ], [ %3459, %3455 ]
  %4021 = phi float [ %3999, %3980 ], [ %3460, %3455 ]
  %4022 = phi float [ %3996, %3980 ], [ %3464, %3455 ]
  %4023 = phi float [ %4006, %3980 ], [ %902, %3455 ]
  %4024 = phi float [ %3994, %3980 ], [ %3465, %3455 ]
  %4025 = phi float [ %3993, %3980 ], [ %3466, %3455 ]
  %4026 = phi float [ %3986, %3980 ], [ 0.000000e+00, %3455 ]
  %4027 = phi float [ %3985, %3980 ], [ 0.000000e+00, %3455 ]
  %4028 = phi float [ %3981, %3980 ], [ 0.000000e+00, %3455 ]
  %4029 = phi float [ %3983, %3980 ], [ %3469, %3455 ]
  %4030 = phi float [ %3982, %3980 ], [ %902, %3455 ]
  %4031 = phi float [ %3984, %3980 ], [ %3467, %3455 ]
  %4032 = fadd fast float %4022, 0xBFB99999A0000000
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = fmul fast float %4033, 0x3FF1C71C80000000
  %4035 = call float @dx.op.binary.f32(i32 36, float %4022, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4036 = fsub fast float 1.000000e+00, %4034
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fmul fast float %4037, %4019
  %4039 = fmul fast float %4037, %4020
  %4040 = fmul fast float %4037, %4021
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = fmul fast float %4034, %4019
  %4045 = fmul fast float %4034, %4020
  %4046 = fmul fast float %4034, %4021
  %4047 = fadd fast float %4044, %4035
  %4048 = fadd fast float %4045, %4035
  %4049 = fadd fast float %4046, %4035
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.i32 %4054, 3
  %4056 = and i32 %4055, 8
  %4057 = icmp ne i32 %4056, 0
  %4058 = call float @dx.op.binary.f32(i32 35, float %4041, float %4019)  ; FMax(a,b)
  %4059 = call float @dx.op.binary.f32(i32 35, float %4042, float %4019)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4043, float %4019)  ; FMax(a,b)
  %4061 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = select i1 %183, float %4019, float %4041
  %4063 = select i1 %183, float %4061, float %4042
  %4064 = select i1 %183, float 1.000000e+00, float %4043
  %4065 = select i1 %4057, float %4058, float %4062
  %4066 = select i1 %4057, float %4059, float %4063
  %4067 = select i1 %4057, float %4060, float %4064
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4072 = fadd fast float %4069, %141
  %4073 = fadd fast float %4070, %142
  %4074 = fadd fast float %4071, %143
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4078 = fsub fast float %4072, %4076
  %4079 = fsub fast float %4073, %4077
  %4080 = fmul fast float %4078, %4078
  %4081 = fmul fast float %4079, %4079
  %4082 = fadd fast float %4080, %4081
  %4083 = call float @dx.op.unary.f32(i32 24, float %4082)  ; Sqrt(value)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4075, 2
  %4085 = fcmp fast olt float %4083, %4084
  br i1 %4085, label %4086, label %4153

; <label>:4086                                    ; preds = %4012
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4096 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4097 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4098 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4099 = fadd fast float %4096, %4072
  %4100 = fadd fast float %4097, %4073
  %4101 = fadd fast float %4098, %4074
  %4102 = fmul fast float %4099, %4088
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4090, float %4102)  ; FMad(a,b,c)
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4092, float %4103)  ; FMad(a,b,c)
  %4105 = fmul fast float %4099, %4093
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4094, float %4105)  ; FMad(a,b,c)
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4095, float %4106)  ; FMad(a,b,c)
  %4108 = fsub fast float %4104, %4096
  %4109 = fsub fast float %4107, %4097
  %4110 = fsub fast float %4108, %4076
  %4111 = fadd fast float %4110, %4084
  %4112 = fsub fast float %4109, %4077
  %4113 = fadd fast float %4112, %4084
  %4114 = extractvalue %dx.types.CBufRet.f32 %4075, 3
  %4115 = fmul fast float %4111, %4114
  %4116 = fmul fast float %4113, %4114
  %4117 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4119 = fsub fast float 1.000000e+00, %4117
  %4120 = fsub fast float 1.000000e+00, %4118
  %4121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4119, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = fcmp fast ugt float %4122, 0.000000e+00
  br i1 %4123, label %4124, label %4427

; <label>:4124                                    ; preds = %4086
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4127 = fmul fast float %4126, %4122
  %4128 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4129 = fadd fast float %4128, %4127
  %4130 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4131 = fadd fast float %4129, %4098
  %4132 = fmul fast float %4104, %4092
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4095, float %4132)  ; FMad(a,b,c)
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4130, float %4133)  ; FMad(a,b,c)
  %4135 = fsub fast float %4134, %4098
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 2
  %4138 = fsub fast float %4135, %4137
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4119, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4119, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = fadd fast float %4144, %4140
  %4148 = fmul fast float %4147, 0x3F847AE140000000
  %4149 = fadd fast float %4145, %4141
  %4150 = fmul fast float %4149, 0x3F847AE140000000
  %4151 = fadd fast float %4146, %4142
  %4152 = fmul fast float %4151, 0x3F847AE140000000
  br label %4427

; <label>:4153                                    ; preds = %4012
  %4154 = and i32 %159, 1
  %4155 = icmp eq i32 %4154, 0
  br i1 %4155, label %4427, label %4156

; <label>:4156                                    ; preds = %4153
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4165 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4167 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4168 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4169 = fadd fast float %4166, %4072
  %4170 = fadd fast float %4167, %4073
  %4171 = fadd fast float %4168, %4074
  %4172 = fmul fast float %4169, %4158
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4160, float %4172)  ; FMad(a,b,c)
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4162, float %4173)  ; FMad(a,b,c)
  %4175 = fmul fast float %4169, %4163
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4164, float %4175)  ; FMad(a,b,c)
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4165, float %4176)  ; FMad(a,b,c)
  %4178 = fsub fast float %4174, %4166
  %4179 = fsub fast float %4177, %4167
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4180, 2
  %4184 = extractvalue %dx.types.CBufRet.f32 %4180, 3
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 3
  %4187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.i32 %4187, 0
  %4189 = extractvalue %dx.types.CBufRet.i32 %4187, 1
  %4190 = udiv i32 %4189, %4188
  %4191 = fsub fast float %4178, %4181
  %4192 = fsub fast float %4179, %4182
  %4193 = call float @dx.op.binary.f32(i32 35, float %4191, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call float @dx.op.binary.f32(i32 35, float %4192, float 0.000000e+00)  ; FMax(a,b)
  %4195 = call float @dx.op.binary.f32(i32 36, float %4193, float %4183)  ; FMin(a,b)
  %4196 = call float @dx.op.binary.f32(i32 36, float %4194, float %4184)  ; FMin(a,b)
  %4197 = add i32 %4188, -1
  %4198 = add i32 %4190, -1
  %4199 = fmul fast float %4195, %4186
  %4200 = fmul fast float %4196, %4186
  %4201 = fptoui float %4199 to i32
  %4202 = fptoui float %4200 to i32
  %4203 = call i32 @dx.op.binary.i32(i32 40, i32 %4201, i32 %4197)  ; UMin(a,b)
  %4204 = call i32 @dx.op.binary.i32(i32 40, i32 %4202, i32 %4198)  ; UMin(a,b)
  %4205 = mul i32 %4204, %4188
  %4206 = add i32 %4205, %4203
  %4207 = shl i32 %4206, 2
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = icmp eq i32 %4209, -1
  br i1 %4210, label %4427, label %4211

; <label>:4211                                    ; preds = %4156
  %4212 = mul i32 %4209, 148
  %4213 = add i32 %4212, 4
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = add i32 %4212, 8
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = add i32 %4212, 36
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4212, 60
  %4223 = add i32 %4212, 92
  %4224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.i32 %4224, 0
  %4226 = add i32 %4212, 116
  %4227 = fsub fast float %4178, %4215
  %4228 = fsub fast float %4179, %4218
  %4229 = fmul fast float %4186, %4227
  %4230 = fmul fast float %4186, %4228
  %4231 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4233 = fsub fast float 1.000000e+00, %4232
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 2
  %4236 = call float @dx.op.unary.f32(i32 83, float %4231)  ; DerivCoarseX(value)
  %4237 = call float @dx.op.unary.f32(i32 83, float %4233)  ; DerivCoarseX(value)
  %4238 = call float @dx.op.unary.f32(i32 84, float %4231)  ; DerivCoarseY(value)
  %4239 = call float @dx.op.unary.f32(i32 84, float %4233)  ; DerivCoarseY(value)
  %4240 = fmul fast float %4236, %4235
  %4241 = fmul fast float %4237, %4235
  %4242 = fmul fast float %4238, %4235
  %4243 = fmul fast float %4239, %4235
  %4244 = call float @dx.op.dot2.f32(i32 54, float %4242, float %4243, float %4242, float %4243)  ; Dot2(ax,ay,bx,by)
  %4245 = call float @dx.op.dot2.f32(i32 54, float %4240, float %4241, float %4240, float %4241)  ; Dot2(ax,ay,bx,by)
  %4246 = call float @dx.op.binary.f32(i32 35, float %4245, float %4244)  ; FMax(a,b)
  %4247 = call float @dx.op.unary.f32(i32 23, float %4246)  ; Log(value)
  %4248 = fmul fast float %4247, 5.000000e-01
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4251 = fadd fast float %4250, %4248
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float 0.000000e+00)  ; FMax(a,b)
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4255 = fadd fast float %4254, %4252
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4258 = fadd fast float %4255, %4257
  %4259 = add i32 %4225, 0
  %4260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4260, i32 0)  ; GetDimensions(handle,mipLevel)
  %4262 = extractvalue %dx.types.Dimensions %4261, 0
  %4263 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4262)  ; FirstbitLo(value)
  %4264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.i32 %4264, 1
  %4266 = sub nsw i32 %4265, %4263
  %4267 = sitofp i32 %4266 to float
  %4268 = fsub fast float %4258, %4267
  %4269 = call float @dx.op.binary.f32(i32 35, float %4268, float 0.000000e+00)  ; FMax(a,b)
  %4270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4260, %dx.types.Handle %37, float %4231, float %4233, float %4221, float undef, i32 0, i32 0, i32 undef, float %4269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = fcmp ule float %4271, 0x3FE0101020000000
  %4273 = extractvalue %dx.types.CBufRet.i32 %4264, 0
  %4274 = and i32 %4273, 128
  %4275 = icmp ne i32 %4274, 0
  %4276 = and i1 %4272, %4275
  br i1 %4276, label %4427, label %4277

; <label>:4277                                    ; preds = %4211
  %4278 = add i32 %4212, 20
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = add i32 %4212, 24
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4212, 40
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4212, 96
  %4288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.i32 %4288, 0
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4292 = fmul fast float %4291, %4231
  %4293 = fmul fast float %4291, %4233
  %4294 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4295 = fadd fast float %4292, %4294
  %4296 = fadd fast float %4293, %4294
  %4297 = add i32 %4289, 0
  %4298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4299 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4298, i32 0)  ; GetDimensions(handle,mipLevel)
  %4300 = extractvalue %dx.types.Dimensions %4299, 0
  %4301 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4300)  ; FirstbitLo(value)
  %4302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.i32 %4302, 1
  %4304 = sub nsw i32 %4303, %4301
  %4305 = sitofp i32 %4304 to float
  %4306 = fsub fast float %4255, %4305
  %4307 = call float @dx.op.binary.f32(i32 35, float %4306, float 0.000000e+00)  ; FMax(a,b)
  %4308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4298, %dx.types.Handle %37, float %4295, float %4296, float %4286, float undef, i32 0, i32 0, i32 undef, float %4307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4309 = extractvalue %dx.types.ResRet.f32 %4308, 0
  %4310 = fmul fast float %4309, %4280
  %4311 = fadd fast float %4310, %4283
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4320 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4321 = fadd fast float %4317, %4178
  %4322 = fadd fast float %4319, %4179
  %4323 = fadd fast float %4311, %4320
  %4324 = fmul fast float %4321, %4313
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4322, float %4314, float %4324)  ; FMad(a,b,c)
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4315, float %4325)  ; FMad(a,b,c)
  %4327 = fsub fast float %4326, %4320
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4330 = fsub fast float %4327, %4329
  %4331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.i32 %4331, 0
  %4333 = call i32 @dx.op.binary.i32(i32 40, i32 %4209, i32 %4332)  ; UMin(a,b)
  %4334 = mul i32 %4333, 36
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = add i32 %4334, 4
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = fmul fast float %4339, %4231
  %4341 = fmul fast float %4339, %4233
  %4342 = extractvalue %dx.types.CBufRet.f32 %4338, 1
  %4343 = fadd fast float %4340, %4342
  %4344 = fadd fast float %4341, %4342
  %4345 = icmp eq i32 %4336, 0
  br i1 %4345, label %4414, label %4346

; <label>:4346                                    ; preds = %4277
  br label %4347

; <label>:4347                                    ; preds = %4404, %4346
  %4348 = phi float [ %4405, %4404 ], [ 0.000000e+00, %4346 ]
  %4349 = phi float [ %4406, %4404 ], [ 0.000000e+00, %4346 ]
  %4350 = phi float [ %4407, %4404 ], [ 0.000000e+00, %4346 ]
  %4351 = phi float [ %4408, %4404 ], [ 0.000000e+00, %4346 ]
  %4352 = phi float [ %4409, %4404 ], [ 0.000000e+00, %4346 ]
  %4353 = phi float [ %4410, %4404 ], [ 0.000000e+00, %4346 ]
  %4354 = phi i32 [ %4411, %4404 ], [ 0, %4346 ]
  %4355 = shl i32 %4354, 2
  %4356 = add i32 %4222, %4355
  %4357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = add i32 %4226, %4355
  %4360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.i32 %4360, 0
  %4362 = add i32 %4361, 0
  %4363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4363, i32 0)  ; GetDimensions(handle,mipLevel)
  %4365 = extractvalue %dx.types.Dimensions %4364, 0
  %4366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4365)  ; FirstbitLo(value)
  %4367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.i32 %4367, 1
  %4369 = sub nsw i32 %4368, %4366
  %4370 = sitofp i32 %4369 to float
  %4371 = fsub fast float %4255, %4370
  %4372 = call float @dx.op.binary.f32(i32 35, float %4371, float 0.000000e+00)  ; FMax(a,b)
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4363, %dx.types.Handle %37, float %4343, float %4344, float %4358, float undef, i32 0, i32 0, i32 undef, float %4372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = fcmp fast ogt float %4374, 0.000000e+00
  br i1 %4375, label %4376, label %4404

; <label>:4376                                    ; preds = %4347
  %4377 = add i32 %4337, %4355
  %4378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.i32 %4378, 0
  %4380 = and i32 %4379, 32767
  %4381 = mul nuw nsw i32 %4380, 928
  %4382 = add nuw nsw i32 %4381, 48
  %4383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = add nuw nsw i32 %4381, 60
  %4388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4387, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = fmul fast float %4384, %4374
  %4393 = fmul fast float %4385, %4374
  %4394 = fmul fast float %4386, %4374
  %4395 = fadd fast float %4392, %4348
  %4396 = fadd fast float %4393, %4349
  %4397 = fadd fast float %4394, %4350
  %4398 = fmul fast float %4389, %4374
  %4399 = fmul fast float %4390, %4374
  %4400 = fmul fast float %4391, %4374
  %4401 = fadd fast float %4398, %4351
  %4402 = fadd fast float %4399, %4352
  %4403 = fadd fast float %4400, %4353
  br label %4404

; <label>:4404                                    ; preds = %4376, %4347
  %4405 = phi float [ %4395, %4376 ], [ %4348, %4347 ]
  %4406 = phi float [ %4396, %4376 ], [ %4349, %4347 ]
  %4407 = phi float [ %4397, %4376 ], [ %4350, %4347 ]
  %4408 = phi float [ %4401, %4376 ], [ %4351, %4347 ]
  %4409 = phi float [ %4402, %4376 ], [ %4352, %4347 ]
  %4410 = phi float [ %4403, %4376 ], [ %4353, %4347 ]
  %4411 = add nuw i32 %4354, 1
  %4412 = icmp eq i32 %4411, %4336
  br i1 %4412, label %4413, label %4347

; <label>:4413                                    ; preds = %4404
  br label %4414

; <label>:4414                                    ; preds = %4413, %4277
  %4415 = phi float [ 0.000000e+00, %4277 ], [ %4405, %4413 ]
  %4416 = phi float [ 0.000000e+00, %4277 ], [ %4406, %4413 ]
  %4417 = phi float [ 0.000000e+00, %4277 ], [ %4407, %4413 ]
  %4418 = phi float [ 0.000000e+00, %4277 ], [ %4408, %4413 ]
  %4419 = phi float [ 0.000000e+00, %4277 ], [ %4409, %4413 ]
  %4420 = phi float [ 0.000000e+00, %4277 ], [ %4410, %4413 ]
  %4421 = fadd fast float %4418, %4415
  %4422 = fmul fast float %4421, 0x3F847AE140000000
  %4423 = fadd fast float %4419, %4416
  %4424 = fmul fast float %4423, 0x3F847AE140000000
  %4425 = fadd fast float %4420, %4417
  %4426 = fmul fast float %4425, 0x3F847AE140000000
  br label %4427

; <label>:4427                                    ; preds = %4414, %4211, %4156, %4153, %4124, %4086
  %4428 = phi float [ %4138, %4124 ], [ -1.310720e+05, %4086 ], [ %4330, %4414 ], [ -1.310720e+05, %4156 ], [ -1.310720e+05, %4211 ], [ -1.310720e+05, %4153 ]
  %4429 = phi float [ %4148, %4124 ], [ 0.000000e+00, %4086 ], [ %4422, %4414 ], [ 0.000000e+00, %4156 ], [ 0.000000e+00, %4211 ], [ 0.000000e+00, %4153 ]
  %4430 = phi float [ %4150, %4124 ], [ 0.000000e+00, %4086 ], [ %4424, %4414 ], [ 0.000000e+00, %4156 ], [ 0.000000e+00, %4211 ], [ 0.000000e+00, %4153 ]
  %4431 = phi float [ %4152, %4124 ], [ 0.000000e+00, %4086 ], [ %4426, %4414 ], [ 0.000000e+00, %4156 ], [ 0.000000e+00, %4211 ], [ 0.000000e+00, %4153 ]
  %4432 = phi i1 [ true, %4124 ], [ false, %4086 ], [ true, %4414 ], [ false, %4156 ], [ false, %4211 ], [ false, %4153 ]
  %4433 = and i32 %159, 3
  %4434 = icmp eq i32 %4433, 1
  %4435 = select i1 %4434, float 1.000000e+00, float 0.000000e+00
  %4436 = fsub fast float %4428, %143
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = select i1 %4432, float %4437, float 1.000000e+00
  %4439 = fmul fast float %4438, %4435
  %4440 = icmp eq i32 %4433, 3
  %4441 = select i1 %4440, float 1.000000e+00, float %4439
  %4442 = call float @dx.op.binary.f32(i32 35, float %4028, float %4441)  ; FMax(a,b)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fcmp fast une float %4443, 0.000000e+00
  %4445 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 25, float %4445)  ; Rsqrt(value)
  br i1 %4444, label %4454, label %4447

; <label>:4447                                    ; preds = %4427
  %4448 = fmul fast float %4446, %141
  %4449 = fmul fast float %4446, %142
  %4450 = fmul fast float %4446, %143
  %4451 = fsub fast float -0.000000e+00, %4448
  %4452 = fsub fast float -0.000000e+00, %4449
  %4453 = fsub fast float -0.000000e+00, %4450
  br label %4622

; <label>:4454                                    ; preds = %4427
  %4455 = fmul fast float %141, %4446
  %4456 = fsub fast float -0.000000e+00, %4455
  %4457 = fmul fast float %142, %4446
  %4458 = fsub fast float -0.000000e+00, %4457
  %4459 = fmul fast float %143, %4446
  %4460 = fsub fast float -0.000000e+00, %4459
  %4461 = call float @dx.op.dot3.f32(i32 55, float %4456, float %4458, float %4460, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4462 = fmul fast float %4443, 2.500000e+00
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fmul fast float %4443, 0x4013FFFFE0000000
  %4465 = fadd fast float %4464, 0xBFFFFFFFE0000000
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4443, 0x4004000020000000
  %4468 = fadd fast float %4467, 0xBFF8000040000000
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4471 = fmul fast float %4032, 1.000000e+01
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4472, 2.000000e+00
  %4474 = fsub fast float 3.000000e+00, %4473
  %4475 = fmul fast float %4472, %4472
  %4476 = fmul fast float %4475, %4474
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = fsub fast float 0x3FE3333340000000, %4053
  %4479 = fmul fast float %4478, 0x400AAAAAA0000000
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4477, %4480
  %4482 = fmul fast float %4065, 0x3FEA2B8620000000
  %4483 = fmul fast float %4066, 0x3FEA2B8620000000
  %4484 = fmul fast float %4067, 0x3FEA2B8620000000
  %4485 = fadd fast float %4482, 0x3FC81DFBA0000000
  %4486 = fmul fast float %4485, %4065
  %4487 = fadd fast float %4486, 0x3F910E6020000000
  %4488 = fadd fast float %4483, 0x3FC81DFBA0000000
  %4489 = fmul fast float %4488, %4066
  %4490 = fadd fast float %4489, 0x3F910E6020000000
  %4491 = fadd fast float %4484, 0x3FC81DFBA0000000
  %4492 = fmul fast float %4491, %4067
  %4493 = fadd fast float %4492, 0x3F910E6020000000
  %4494 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = fsub fast float %4494, %4065
  %4498 = fsub fast float %4495, %4066
  %4499 = fsub fast float %4496, %4067
  %4500 = fmul fast float %4497, %4470
  %4501 = fmul fast float %4500, %4481
  %4502 = fmul fast float %4498, %4470
  %4503 = fmul fast float %4502, %4481
  %4504 = fmul fast float %4499, %4470
  %4505 = fmul fast float %4504, %4481
  %4506 = fadd fast float %4501, %4065
  %4507 = fadd fast float %4503, %4066
  %4508 = fadd fast float %4505, %4067
  %4509 = fmul fast float %4025, %4025
  %4510 = fmul fast float %4509, %4509
  %4511 = fadd fast float %4466, 1.000000e+00
  %4512 = fsub fast float %4511, %4481
  %4513 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4514 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fsub fast float 1.000000e+00, %4510
  %4517 = call float @dx.op.binary.f32(i32 36, float %4513, float %4516)  ; FMin(a,b)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4519 = call float @dx.op.binary.f32(i32 35, float %4517, float %4518)  ; FMax(a,b)
  %4520 = fadd fast float %4515, 0xBFE4CCCCC0000000
  %4521 = fmul fast float %4520, 0x4006DB6DA0000000
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, 2.000000e+00
  %4524 = fsub fast float 3.000000e+00, %4523
  %4525 = bitcast float %4050 to i32
  %4526 = ashr i32 %4525, 1
  %4527 = add nsw i32 %4526, 532487669
  %4528 = bitcast i32 %4527 to float
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = fmul fast float %4532, 2.000000e+00
  %4534 = bitcast float %4051 to i32
  %4535 = ashr i32 %4534, 1
  %4536 = add nsw i32 %4535, 532487669
  %4537 = bitcast i32 %4536 to float
  %4538 = fsub fast float 1.000000e+00, %4537
  %4539 = bitcast float %4538 to i32
  %4540 = sub nsw i32 2129859010, %4539
  %4541 = bitcast i32 %4540 to float
  %4542 = fmul fast float %4541, 2.000000e+00
  %4543 = bitcast float %4052 to i32
  %4544 = ashr i32 %4543, 1
  %4545 = add nsw i32 %4544, 532487669
  %4546 = bitcast i32 %4545 to float
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = fsub fast float 0x4002A9FBE0000000, %4533
  %4553 = fadd fast float %4533, 0x3FD54FDF00000000
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, %4552
  %4558 = fmul fast float %4557, %4557
  %4559 = fsub fast float 0x4002A9FBE0000000, %4542
  %4560 = fadd fast float %4542, 0x3FD54FDF00000000
  %4561 = bitcast float %4560 to i32
  %4562 = sub nsw i32 2129859010, %4561
  %4563 = bitcast i32 %4562 to float
  %4564 = fmul fast float %4563, %4559
  %4565 = fmul fast float %4564, %4564
  %4566 = fsub fast float 0x4002A9FBE0000000, %4551
  %4567 = fadd fast float %4551, 0x3FD54FDF00000000
  %4568 = bitcast float %4567 to i32
  %4569 = sub nsw i32 2129859010, %4568
  %4570 = bitcast i32 %4569 to float
  %4571 = fmul fast float %4570, %4566
  %4572 = fmul fast float %4571, %4571
  %4573 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4558)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4565)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4572)  ; FMax(a,b)
  %4576 = fsub fast float 1.000000e+00, %4461
  %4577 = fadd fast float %4576, %4477
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fsub fast float 1.000000e+00, %4441
  %4580 = fmul fast float %4519, %4579
  %4581 = fmul fast float %4522, %4522
  %4582 = fmul fast float %4581, %4580
  %4583 = fmul fast float %4582, %4524
  %4584 = fmul fast float %4579, 0xBFE99999A0000000
  %4585 = fmul fast float %4584, %4470
  %4586 = fmul fast float %4585, %4481
  %4587 = fadd fast float %4586, 1.000000e+00
  %4588 = fadd fast float %4053, -1.000000e+00
  %4589 = fmul fast float %4587, %4588
  %4590 = fadd fast float %4589, 1.000000e+00
  %4591 = fsub fast float %4573, %4050
  %4592 = fsub fast float %4574, %4051
  %4593 = fsub fast float %4575, %4052
  %4594 = fmul fast float %4583, %4591
  %4595 = fmul fast float %4583, %4592
  %4596 = fmul fast float %4583, %4593
  %4597 = fadd fast float %4594, %4050
  %4598 = fadd fast float %4595, %4051
  %4599 = fadd fast float %4596, %4052
  %4600 = fsub fast float %85, %4013
  %4601 = fsub fast float %86, %4014
  %4602 = fsub fast float %87, %4015
  %4603 = fmul fast float %4583, %4600
  %4604 = fmul fast float %4583, %4601
  %4605 = fmul fast float %4583, %4602
  %4606 = fadd fast float %4603, %4013
  %4607 = fadd fast float %4604, %4014
  %4608 = fadd fast float %4605, %4015
  %4609 = fmul fast float %4583, %4578
  %4610 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4611 = fsub fast float 1.000000e+00, %4610
  %4612 = fmul fast float %4609, %4611
  %4613 = fadd fast float %4612, %4610
  %4614 = fsub fast float 1.000000e+00, %4025
  %4615 = fmul fast float %4583, %4614
  %4616 = fadd fast float %4615, %4025
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.unary.f32(i32 25, float %4617)  ; Rsqrt(value)
  %4619 = fmul fast float %4606, %4618
  %4620 = fmul fast float %4607, %4618
  %4621 = fmul fast float %4608, %4618
  br label %4622

; <label>:4622                                    ; preds = %4454, %4447
  %4623 = phi float [ %4453, %4447 ], [ %4460, %4454 ]
  %4624 = phi float [ %4452, %4447 ], [ %4458, %4454 ]
  %4625 = phi float [ %4451, %4447 ], [ %4456, %4454 ]
  %4626 = phi float [ %4450, %4447 ], [ %4459, %4454 ]
  %4627 = phi float [ %4449, %4447 ], [ %4457, %4454 ]
  %4628 = phi float [ %4448, %4447 ], [ %4455, %4454 ]
  %4629 = phi float [ %4050, %4447 ], [ %4597, %4454 ]
  %4630 = phi float [ %4051, %4447 ], [ %4598, %4454 ]
  %4631 = phi float [ %4052, %4447 ], [ %4599, %4454 ]
  %4632 = phi float [ %4065, %4447 ], [ %4506, %4454 ]
  %4633 = phi float [ %4066, %4447 ], [ %4507, %4454 ]
  %4634 = phi float [ %4067, %4447 ], [ %4508, %4454 ]
  %4635 = phi float [ %4013, %4447 ], [ %4619, %4454 ]
  %4636 = phi float [ %4014, %4447 ], [ %4620, %4454 ]
  %4637 = phi float [ %4015, %4447 ], [ %4621, %4454 ]
  %4638 = phi float [ %4053, %4447 ], [ %4613, %4454 ]
  %4639 = phi float [ %4025, %4447 ], [ %4616, %4454 ]
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 2
  %4642 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4643 = fmul fast float %4641, %78
  %4644 = fmul fast float %4642, %79
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.CBufRet.f32 %4645, 1
  %4648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4643, float %4644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = fmul fast float %4649, %4647
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fadd fast float %4651, -1.000000e+00
  %4653 = fmul fast float %4652, %4646
  %4654 = fadd fast float %4653, 1.000000e+00
  %4655 = select i1 %183, float 0.000000e+00, float %4631
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %4625, float %4624, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4627, float %4626, float %4635, float %4636, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = fmul fast float %4658, 2.000000e+00
  %4660 = fmul fast float %4659, %4635
  %4661 = fmul fast float %4659, %4636
  %4662 = fmul fast float %4659, %4637
  %4663 = fsub fast float %4628, %4660
  %4664 = fsub fast float %4627, %4661
  %4665 = fsub fast float %4626, %4662
  %4666 = call float @dx.op.binary.f32(i32 36, float %4639, float %4654)  ; FMin(a,b)
  %4667 = fsub fast float 1.000000e+00, %4666
  %4668 = bitcast float %4667 to i32
  %4669 = ashr i32 %4668, 1
  %4670 = add nsw i32 %4669, 532487669
  %4671 = bitcast i32 %4670 to float
  %4672 = fsub fast float 1.000000e+00, %4638
  %4673 = call float @dx.op.binary.f32(i32 35, float %4672, float 0x3F847AE140000000)  ; FMax(a,b)
  %4674 = fmul fast float %4673, %4673
  %4675 = fmul fast float %4674, %4674
  %4676 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4671, float %4675, float %4676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = fsub fast float 1.000000e+00, %4639
  %4680 = bitcast float %4679 to i32
  %4681 = sub nsw i32 2129859010, %4680
  %4682 = fsub fast float 1.000000e+00, %55
  %4683 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = call float @dx.op.binary.f32(i32 35, float %4683, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4685 = fdiv fast float %4682, %4684
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fmul fast float %4687, 5.000000e-01
  %4689 = fadd fast float %4688, 5.000000e-01
  %4690 = fmul fast float %4689, %55
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4692, %4685
  %4694 = fadd fast float %4690, %4693
  %4695 = fsub fast float 5.000000e-01, %4688
  %4696 = fmul fast float %4695, %4632
  %4697 = fmul fast float %4695, %4633
  %4698 = fmul fast float %4695, %4634
  %4699 = fadd fast float %4694, %4696
  %4700 = fadd fast float %4694, %4697
  %4701 = fadd fast float %4694, %4698
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, 5.000000e-01
  %4705 = fadd fast float %4704, 5.000000e-01
  %4706 = fmul fast float %4705, %55
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = fmul fast float %4708, %4685
  %4710 = fadd fast float %4706, %4709
  %4711 = fsub fast float 5.000000e-01, %4704
  %4712 = fmul fast float %4711, %4632
  %4713 = fmul fast float %4711, %4633
  %4714 = fmul fast float %4711, %4634
  %4715 = fadd fast float %4710, %4712
  %4716 = fadd fast float %4710, %4713
  %4717 = fadd fast float %4710, %4714
  %4718 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4721 = call float @dx.op.binary.f32(i32 36, float %4632, float %4720)  ; FMin(a,b)
  %4722 = fmul fast float %4721, %4667
  %4723 = fsub fast float 1.000000e+00, %4722
  %4724 = bitcast float %4723 to i32
  %4725 = sub nsw i32 2129859010, %4724
  %4726 = bitcast i32 %4725 to float
  %4727 = call float @dx.op.binary.f32(i32 36, float %4633, float %4720)  ; FMin(a,b)
  %4728 = fmul fast float %4727, %4667
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = bitcast float %4729 to i32
  %4731 = sub nsw i32 2129859010, %4730
  %4732 = bitcast i32 %4731 to float
  %4733 = call float @dx.op.binary.f32(i32 36, float %4634, float %4720)  ; FMin(a,b)
  %4734 = fmul fast float %4733, %4667
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = bitcast float %4735 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = fmul fast float %4666, %56
  %4740 = fmul fast float %4739, %4699
  %4741 = fmul fast float %4740, %4726
  %4742 = fmul fast float %4666, %57
  %4743 = fmul fast float %4742, %4700
  %4744 = fmul fast float %4743, %4732
  %4745 = fmul fast float %4666, %58
  %4746 = fmul fast float %4745, %4701
  %4747 = fmul fast float %4746, %4738
  %4748 = call float @dx.op.binary.f32(i32 36, float %4629, float %4720)  ; FMin(a,b)
  %4749 = fmul fast float %4748, %4667
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = bitcast float %4750 to i32
  %4752 = sub nsw i32 2129859010, %4751
  %4753 = bitcast i32 %4752 to float
  %4754 = call float @dx.op.binary.f32(i32 36, float %4630, float %4720)  ; FMin(a,b)
  %4755 = fmul fast float %4754, %4667
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = bitcast float %4756 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = call float @dx.op.binary.f32(i32 36, float %4655, float %4720)  ; FMin(a,b)
  %4761 = fmul fast float %4760, %4667
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = bitcast float %4762 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = fmul fast float %4739, %4715
  %4767 = fmul fast float %4766, %4753
  %4768 = fmul fast float %4742, %4716
  %4769 = fmul fast float %4768, %4759
  %4770 = fmul fast float %4745, %4717
  %4771 = fmul fast float %4770, %4765
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4741, float %4744, float %4747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = select i1 %183, float 0.000000e+00, float %4741
  %4774 = select i1 %183, float %4772, float %4744
  %4775 = select i1 %183, float 0.000000e+00, float %4747
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4769, float %4771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = select i1 %183, float 0.000000e+00, float %4767
  %4778 = select i1 %183, float %4776, float %4769
  %4779 = select i1 %183, float 0.000000e+00, float %4771
  %4780 = fmul fast float %4657, 9.843750e-01
  %4781 = fmul fast float %4638, 9.843750e-01
  %4782 = fadd fast float %4780, 7.812500e-03
  %4783 = fadd fast float %4781, 7.812500e-03
  %4784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4782, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4785 = extractvalue %dx.types.ResRet.f32 %4784, 2
  %4786 = extractvalue %dx.types.ResRet.f32 %4784, 3
  %4787 = fmul fast float %4785, %4629
  %4788 = fmul fast float %4785, %4630
  %4789 = fmul fast float %4785, %4655
  %4790 = fadd fast float %4787, %4786
  %4791 = fadd fast float %4788, %4786
  %4792 = fadd fast float %4789, %4786
  %4793 = fcmp fast ogt float %4026, 0.000000e+00
  br i1 %4793, label %4794, label %4820

; <label>:4794                                    ; preds = %4622
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %4657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.ResRet.f32 %4795, 2
  %4799 = fadd fast float %4796, -5.000000e-01
  %4800 = fadd fast float %4797, -5.000000e-01
  %4801 = fadd fast float %4798, -5.000000e-01
  %4802 = fsub fast float 1.000000e+00, %4629
  %4803 = fsub fast float 1.000000e+00, %4630
  %4804 = fsub fast float 1.000000e+00, %4655
  %4805 = fmul fast float %4629, 4.000000e+00
  %4806 = fmul fast float %4805, %4802
  %4807 = fmul fast float %4806, %4799
  %4808 = fmul fast float %4630, 4.000000e+00
  %4809 = fmul fast float %4808, %4803
  %4810 = fmul fast float %4809, %4800
  %4811 = fmul fast float %4655, 4.000000e+00
  %4812 = fmul fast float %4811, %4804
  %4813 = fmul fast float %4812, %4801
  %4814 = fadd fast float %4807, %4790
  %4815 = fadd fast float %4810, %4791
  %4816 = fadd fast float %4813, %4792
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  br label %4820

; <label>:4820                                    ; preds = %4794, %4622
  %4821 = phi float [ %4817, %4794 ], [ %4790, %4622 ]
  %4822 = phi float [ %4818, %4794 ], [ %4791, %4622 ]
  %4823 = phi float [ %4819, %4794 ], [ %4792, %4622 ]
  %4824 = call float @dx.op.binary.f32(i32 35, float %4822, float %4823)  ; FMax(a,b)
  %4825 = call float @dx.op.binary.f32(i32 35, float %4821, float %4824)  ; FMax(a,b)
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = fmul fast float %4825, %4638
  %4828 = fadd fast float %4827, %4638
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 0
  %4831 = extractvalue %dx.types.CBufRet.f32 %4829, 1
  %4832 = extractvalue %dx.types.CBufRet.f32 %4829, 2
  %4833 = extractvalue %dx.types.CBufRet.f32 %4829, 3
  %4834 = fmul fast float %4828, %4830
  %4835 = fadd fast float %4834, %4831
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = fmul fast float %4832, %4828
  %4838 = fadd fast float %4837, %4833
  %4839 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4840 = fsub fast float 1.000000e+00, %4678
  %4841 = fadd fast float %4840, %4839
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fcmp fast olt float %4842, 1.000000e+00
  br i1 %4843, label %4844, label %5699

; <label>:4844                                    ; preds = %4820
  %4845 = fcmp fast olt float %4836, 1.000000e+00
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = fcmp fast ogt float %4847, 0.000000e+00
  %4849 = or i1 %4845, %4848
  %4850 = or i1 %4845, %4848
  %4851 = xor i1 %4850, true
  %4852 = zext i1 %4851 to i32
  br i1 %4849, label %4853, label %5096

; <label>:4853                                    ; preds = %4844
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4858 = extractvalue %dx.types.CBufRet.f32 %4854, 3
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.CBufRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.CBufRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.CBufRet.f32 %4859, 3
  %4864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.f32 %4864, 0
  %4866 = extractvalue %dx.types.CBufRet.f32 %4864, 1
  %4867 = extractvalue %dx.types.CBufRet.f32 %4864, 2
  %4868 = extractvalue %dx.types.CBufRet.f32 %4864, 3
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4881, float %4882, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = call float @dx.op.unary.f32(i32 6, float %4885)  ; FAbs(value)
  %4887 = fmul fast float %4886, 8.000000e+00
  %4888 = fadd fast float %4887, -6.000000e+00
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %4884, 8.000000e+00
  %4891 = fmul fast float %4890, %4847
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fcmp fast ogt float %4892, 0.000000e+00
  br i1 %4893, label %4894, label %5071, !dx.controlflow.hints !82

; <label>:4894                                    ; preds = %4853
  %4895 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4846, 2
  %4897 = fsub fast float %4895, %4896
  %4898 = fmul fast float %4897, %4638
  %4899 = fadd fast float %4898, %4896
  %4900 = fmul fast float %196, 2.000000e+00
  %4901 = fmul fast float %197, 2.000000e+00
  %4902 = fadd fast float %4900, -1.000000e+00
  %4903 = fadd fast float %4901, -1.000000e+00
  %4904 = fmul fast float %4899, %4902
  %4905 = fmul fast float %4899, %4903
  %4906 = fadd fast float %4904, %78
  %4907 = fadd fast float %4905, %79
  %4908 = fmul fast float %4906, %4641
  %4909 = fmul fast float %4907, %4642
  %4910 = fadd fast float %4638, 0xBFE3333340000000
  %4911 = fmul fast float %4910, 0x4004000020000000
  %4912 = fsub fast float 1.000000e+00, %4911
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = fmul fast float %4913, 3.000000e+00
  %4915 = fadd fast float %4914, %196
  %4916 = call float @dx.op.unary.f32(i32 27, float %4915)  ; Round_ni(value)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4908, float %4909, float %4916, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = fcmp fast une float %4918, 0xFFF0000000000000
  %4920 = fcmp fast une float %4918, 0x7FF0000000000000
  %4921 = and i1 %4919, %4920
  %4922 = fcmp fast olt float %4918, 0.000000e+00
  %4923 = call float @dx.op.unary.f32(i32 6, float %4918)  ; FAbs(value)
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = select i1 %4921, float 1.000000e+00, float 0.000000e+00
  %4926 = fmul fast float %4925, %4892
  %4927 = fcmp fast ogt float %4926, 0.000000e+00
  br i1 %4927, label %4928, label %5071, !dx.controlflow.hints !83

; <label>:4928                                    ; preds = %4894
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.CBufRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4933 = select i1 %4922, float 0.000000e+00, float %4930
  %4934 = select i1 %4922, float 0.000000e+00, float %4931
  %4935 = select i1 %4922, float 0.000000e+00, float %4932
  %4936 = select i1 %4922, float %4855, float %4870
  %4937 = select i1 %4922, float %4860, float %4875
  %4938 = select i1 %4922, float %4865, float %4880
  %4939 = select i1 %4922, float %4856, float %4871
  %4940 = select i1 %4922, float %4861, float %4876
  %4941 = select i1 %4922, float %4866, float %4881
  %4942 = select i1 %4922, float %4857, float %4872
  %4943 = select i1 %4922, float %4862, float %4877
  %4944 = select i1 %4922, float %4867, float %4882
  %4945 = select i1 %4922, float %4858, float %4873
  %4946 = select i1 %4922, float %4863, float %4878
  %4947 = select i1 %4922, float %4868, float %4883
  %4948 = fadd fast float %4933, %141
  %4949 = fadd fast float %4934, %142
  %4950 = fadd fast float %4935, %143
  %4951 = fmul fast float %4948, %4936
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4949, float %4939, float %4951)  ; FMad(a,b,c)
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4950, float %4942, float %4952)  ; FMad(a,b,c)
  %4954 = fadd fast float %4953, %4945
  %4955 = fmul fast float %4948, %4937
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4949, float %4940, float %4955)  ; FMad(a,b,c)
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4950, float %4943, float %4956)  ; FMad(a,b,c)
  %4958 = fadd fast float %4957, %4946
  %4959 = fmul fast float %4948, %4938
  %4960 = call float @dx.op.tertiary.f32(i32 46, float %4949, float %4941, float %4959)  ; FMad(a,b,c)
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4950, float %4944, float %4960)  ; FMad(a,b,c)
  %4962 = fadd fast float %4961, %4947
  %4963 = fdiv fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4963, %4954
  %4965 = fmul fast float %4963, %4958
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.CBufRet.f32 %4966, 1
  %4969 = fmul fast float %4964, %4967
  %4970 = fmul fast float %4965, %4968
  %4971 = extractvalue %dx.types.CBufRet.f32 %4966, 2
  %4972 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %4973 = fadd fast float %4969, %4971
  %4974 = fadd fast float %4970, %4972
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 3
  %4977 = fmul fast float %4976, %4663
  %4978 = fmul fast float %4976, %4664
  %4979 = fmul fast float %4976, %4665
  %4980 = fadd fast float %4977, %4948
  %4981 = fadd fast float %4978, %4949
  %4982 = fadd fast float %4979, %4950
  %4983 = fmul fast float %4980, %4936
  %4984 = call float @dx.op.tertiary.f32(i32 46, float %4981, float %4939, float %4983)  ; FMad(a,b,c)
  %4985 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4942, float %4984)  ; FMad(a,b,c)
  %4986 = fadd fast float %4985, %4945
  %4987 = fmul fast float %4980, %4937
  %4988 = call float @dx.op.tertiary.f32(i32 46, float %4981, float %4940, float %4987)  ; FMad(a,b,c)
  %4989 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4943, float %4988)  ; FMad(a,b,c)
  %4990 = fadd fast float %4989, %4946
  %4991 = fmul fast float %4980, %4938
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4981, float %4941, float %4991)  ; FMad(a,b,c)
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4944, float %4992)  ; FMad(a,b,c)
  %4994 = fadd fast float %4993, %4947
  %4995 = fdiv fast float 1.000000e+00, %4994
  %4996 = fmul fast float %4995, %4986
  %4997 = fmul fast float %4995, %4990
  %4998 = fmul fast float %4973, 2.000000e+00
  %4999 = fadd fast float %4998, -1.000000e+00
  %5000 = call float @dx.op.unary.f32(i32 6, float %4999)  ; FAbs(value)
  %5001 = fmul fast float %5000, 5.000000e+00
  %5002 = fadd fast float %5001, -4.000000e+00
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = fmul fast float %5003, %4889
  %5005 = fsub fast float %4964, %4996
  %5006 = fmul fast float %4967, %5005
  %5007 = fmul fast float %5004, %5006
  %5008 = fsub fast float %4996, %4964
  %5009 = fmul fast float %4967, %5008
  %5010 = fadd fast float %5009, %5007
  %5011 = fsub fast float %4997, %4965
  %5012 = fmul fast float %4968, %5011
  %5013 = fmul fast float %5010, %4924
  %5014 = fmul fast float %5012, %4924
  %5015 = fadd fast float %5013, %4973
  %5016 = fadd fast float %5014, %4974
  %5017 = fsub fast float %4995, %4963
  %5018 = fmul fast float %5017, %4924
  %5019 = fadd fast float %5018, %4963
  %5020 = fdiv fast float 1.000000e+00, %5019
  %5021 = fadd fast float %4638, -1.000000e+00
  %5022 = fsub fast float %5020, %4962
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 2
  %5025 = fmul fast float %5024, %5020
  %5026 = fdiv fast float 1.600000e+02, %5025
  %5027 = fmul fast float %5021, %5021
  %5028 = fmul fast float %5027, 0xBFB5B17960000000
  %5029 = fmul fast float %5028, %5022
  %5030 = fmul fast float %5029, %5026
  %5031 = call float @dx.op.unary.f32(i32 21, float %5030)  ; Exp(value)
  %5032 = fmul fast float %5031, 0x3FF04B2960000000
  %5033 = fsub fast float 0x3FF04B2960000000, %5032
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %5034, 4.000000e+00
  %5036 = fadd fast float %196, -5.000000e-01
  %5037 = fadd fast float %197, -5.000000e-01
  %5038 = fmul fast float %5034, 0x3FBEB851E0000000
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5039, %5036
  %5041 = fmul fast float %5039, %5037
  %5042 = fadd fast float %5015, %5040
  %5043 = fadd fast float %5016, %5041
  %5044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5042, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float %5035)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5045 = extractvalue %dx.types.ResRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.ResRet.f32 %5044, 1
  %5047 = extractvalue %dx.types.ResRet.f32 %5044, 2
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5050 = fmul fast float %5049, %5045
  %5051 = fmul fast float %5049, %5046
  %5052 = fmul fast float %5049, %5047
  %5053 = select i1 %183, float 0.000000e+00, float %5051
  %5054 = select i1 %183, float 0.000000e+00, float %5052
  %5055 = fmul fast float %5042, 2.000000e+00
  %5056 = fmul fast float %5043, 2.000000e+00
  %5057 = fadd fast float %5055, -1.000000e+00
  %5058 = fadd fast float %5056, -1.000000e+00
  %5059 = fmul fast float %5057, %5057
  %5060 = fsub fast float 1.000000e+00, %5059
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = fmul fast float %5062, %4889
  %5064 = fadd fast float %5063, %5061
  %5065 = fmul fast float %5058, %5058
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fmul fast float %5064, %5067
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fmul fast float %5069, %4926
  br label %5071

; <label>:5071                                    ; preds = %4928, %4894, %4853
  %5072 = phi float [ %5050, %4928 ], [ 0.000000e+00, %4894 ], [ 0.000000e+00, %4853 ]
  %5073 = phi float [ %5053, %4928 ], [ 0.000000e+00, %4894 ], [ 0.000000e+00, %4853 ]
  %5074 = phi float [ %5054, %4928 ], [ 0.000000e+00, %4894 ], [ 0.000000e+00, %4853 ]
  %5075 = phi float [ %5070, %4928 ], [ 0.000000e+00, %4894 ], [ 0.000000e+00, %4853 ]
  %5076 = fcmp fast olt float %5075, 1.000000e+00
  %5077 = or i1 %5076, %4851
  %5078 = zext i1 %5077 to i32
  %5079 = fmul fast float %5075, %4836
  %5080 = fsub fast float %5075, %5079
  %5081 = fsub fast float 1.000000e+00, %4842
  %5082 = fmul fast float %5080, %5081
  %5083 = fadd fast float %5082, %4842
  %5084 = fsub fast float %5083, %5080
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, %4777
  %5087 = fmul fast float %5085, %4778
  %5088 = fmul fast float %5085, %4779
  %5089 = fsub fast float -0.000000e+00, %5083
  %5090 = fmul fast float %5080, %5072
  %5091 = fmul fast float %5080, %5073
  %5092 = fmul fast float %5080, %5074
  %5093 = fadd fast float %5090, %5086
  %5094 = fadd fast float %5091, %5087
  %5095 = fadd fast float %5092, %5088
  br label %5096

; <label>:5096                                    ; preds = %5071, %4844
  %5097 = phi float [ %4842, %4844 ], [ %5089, %5071 ]
  %5098 = phi float [ %4777, %4844 ], [ %5093, %5071 ]
  %5099 = phi float [ %4778, %4844 ], [ %5094, %5071 ]
  %5100 = phi float [ %4779, %4844 ], [ %5095, %5071 ]
  %5101 = phi i32 [ %4852, %4844 ], [ %5078, %5071 ]
  %5102 = icmp eq i32 %5101, 0
  br i1 %5102, label %5699, label %5103

; <label>:5103                                    ; preds = %5096
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 3
  %5107 = fmul fast float %5105, %78
  %5108 = fmul fast float %5106, %79
  %5109 = fptoui float %5107 to i32
  %5110 = fptoui float %5108 to i32
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5114 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5115 = fadd fast float %73, -4.000000e+00
  %5116 = call float @dx.op.binary.f32(i32 35, float %5115, float 0.000000e+00)  ; FMax(a,b)
  %5117 = fadd fast float %5116, %5112
  %5118 = fmul fast float %5117, %5113
  %5119 = call float @dx.op.unary.f32(i32 23, float %5118)  ; Log(value)
  %5120 = fmul fast float %5119, %5114
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5123 = fmul fast float %5120, %5122
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.i32 %5125, 1
  %5127 = add i32 %5126, -1
  %5128 = uitofp i32 %5126 to float
  %5129 = fmul fast float %5128, %5124
  %5130 = fptoui float %5129 to i32
  %5131 = call i32 @dx.op.binary.i32(i32 40, i32 %5130, i32 %5127)  ; UMin(a,b)
  %5132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.i32 %5132, 2
  %5134 = extractvalue %dx.types.CBufRet.i32 %5132, 3
  %5135 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5110, i32 %5133, i32 %5109)  ; UMad(a,b,c)
  %5136 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5131, i32 %5134, i32 %5135)  ; UMad(a,b,c)
  %5137 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5138 = fptoui float %5137 to i32
  %5139 = lshr i32 %5138, 5
  %5140 = call i32 @dx.op.binary.i32(i32 40, i32 %5139, i32 8191)  ; UMin(a,b)
  %5141 = fcmp fast ogt float %4437, 0.000000e+00
  %5142 = fcmp fast ogt float %4665, 0.000000e+00
  %5143 = and i1 %5142, %5141
  br i1 %5143, label %5144, label %5173

; <label>:5144                                    ; preds = %5103
  %5145 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = call float @dx.op.binary.f32(i32 35, float %5145, float -1.000000e+00)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 36, float %5146, float 1.000000e+00)  ; FMin(a,b)
  %5148 = fmul fast float %5147, %5147
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = fmul fast float %5149, 0x3FFC6E2300000000
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fcmp fast ogt float %5151, 0.000000e+00
  %5153 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = call float @dx.op.unary.f32(i32 23, float %5154)  ; Log(value)
  %5156 = fmul fast float %5155, 5.000000e+00
  %5157 = call float @dx.op.unary.f32(i32 21, float %5156)  ; Exp(value)
  %5158 = fmul fast float %5157, 0x3FEF591A60000000
  %5159 = fadd fast float %5158, 0x3F94DCB540000000
  %5160 = select i1 %5152, float %5159, float 1.000000e+00
  %5161 = fcmp fast oge float %5160, 1.000000e+00
  %5162 = fmul fast float %5145, 2.000000e+00
  %5163 = fadd fast float %5162, %4665
  %5164 = select i1 %5161, float %5163, float %4665
  %5165 = fsub fast float %5164, %4665
  %5166 = fmul fast float %5165, %4437
  %5167 = fadd fast float %5166, %4665
  %5168 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %5167, float %4663, float %4664, float %5167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.unary.f32(i32 25, float %5168)  ; Rsqrt(value)
  %5170 = fmul fast float %5169, %4663
  %5171 = fmul fast float %5169, %4664
  %5172 = fmul fast float %5167, %5169
  br label %5173

; <label>:5173                                    ; preds = %5144, %5103
  %5174 = phi float [ %5170, %5144 ], [ %4663, %5103 ]
  %5175 = phi float [ %5171, %5144 ], [ %4664, %5103 ]
  %5176 = phi float [ %5172, %5144 ], [ %4665, %5103 ]
  %5177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.i32 %5177, 2
  %5179 = add nsw i32 %5178, -1
  %5180 = call i32 @dx.op.binary.i32(i32 37, i32 %5179, i32 0)  ; IMax(a,b)
  %5181 = shl i32 %5140, 2
  %5182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5181, i32 undef)  ; BufferLoad(srv,index,wot)
  %5183 = extractvalue %dx.types.ResRet.i32 %5182, 0
  %5184 = lshr i32 %5183, 16
  %5185 = and i32 %5183, 65535
  %5186 = lshr i32 %5183, 21
  %5187 = lshr i32 %5185, 5
  %5188 = call i32 @dx.op.binary.i32(i32 40, i32 %5187, i32 %5180)  ; UMin(a,b)
  %5189 = icmp ugt i32 %5186, %5188
  br i1 %5189, label %5571, label %5190

; <label>:5190                                    ; preds = %5173
  br label %5191

; <label>:5191                                    ; preds = %5560, %5190
  %5192 = phi float [ %5561, %5560 ], [ 0.000000e+00, %5190 ]
  %5193 = phi float [ %5562, %5560 ], [ 0.000000e+00, %5190 ]
  %5194 = phi float [ %5563, %5560 ], [ 0.000000e+00, %5190 ]
  %5195 = phi float [ %5564, %5560 ], [ 1.000000e+00, %5190 ]
  %5196 = phi i32 [ %5568, %5560 ], [ %5186, %5190 ]
  %5197 = phi float [ %5565, %5560 ], [ 0.000000e+00, %5190 ]
  %5198 = phi float [ %5566, %5560 ], [ 0.000000e+00, %5190 ]
  %5199 = phi float [ %5567, %5560 ], [ 0.000000e+00, %5190 ]
  %5200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.i32 %5200, 2
  %5202 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5136, i32 %5201, i32 %5196)  ; UMad(a,b,c)
  %5203 = shl i32 %5202, 2
  %5204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5203, i32 undef)  ; BufferLoad(srv,index,wot)
  %5205 = extractvalue %dx.types.ResRet.i32 %5204, 0
  %5206 = shl i32 %5196, 5
  %5207 = sub nsw i32 %5184, %5206
  %5208 = call i32 @dx.op.binary.i32(i32 37, i32 %5207, i32 0)  ; IMax(a,b)
  %5209 = call i32 @dx.op.binary.i32(i32 38, i32 %5208, i32 31)  ; IMin(a,b)
  %5210 = sub nsw i32 1, %5184
  %5211 = add nsw i32 %5210, %5185
  %5212 = call i32 @dx.op.binary.i32(i32 37, i32 %5211, i32 0)  ; IMax(a,b)
  %5213 = call i32 @dx.op.binary.i32(i32 38, i32 %5212, i32 32)  ; IMin(a,b)
  %5214 = and i32 %5213, 31
  %5215 = shl i32 -1, %5214
  %5216 = xor i32 %5215, -1
  %5217 = and i32 %5209, 31
  %5218 = shl i32 %5216, %5217
  %5219 = icmp eq i32 %5213, 32
  %5220 = select i1 %5219, i32 -1, i32 %5218
  %5221 = and i32 %5220, %5205
  %5222 = icmp eq i32 %5221, 0
  br i1 %5222, label %5560, label %5223

; <label>:5223                                    ; preds = %5191
  br label %5224

; <label>:5224                                    ; preds = %5334, %5223
  %5225 = phi float [ %5335, %5334 ], [ %5192, %5223 ]
  %5226 = phi float [ %5336, %5334 ], [ %5193, %5223 ]
  %5227 = phi float [ %5337, %5334 ], [ %5194, %5223 ]
  %5228 = phi float [ %5338, %5334 ], [ %5195, %5223 ]
  %5229 = phi i32 [ %5237, %5334 ], [ %5221, %5223 ]
  %5230 = phi float [ %5339, %5334 ], [ %5197, %5223 ]
  %5231 = phi float [ %5340, %5334 ], [ %5198, %5223 ]
  %5232 = phi float [ %5341, %5334 ], [ %5199, %5223 ]
  %5233 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5229)  ; FirstbitLo(value)
  %5234 = add i32 %5233, %5206
  %5235 = and i32 %5233, 31
  %5236 = shl i32 1, %5235
  %5237 = xor i32 %5236, %5229
  %5238 = mul i32 %5234, 72
  %5239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.ResRet.f32 %5239, 2
  %5243 = add i32 %5238, 12
  %5244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5245 = extractvalue %dx.types.ResRet.i32 %5244, 0
  %5246 = add i32 %5238, 16
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = add i32 %5238, 28
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = add i32 %5238, 32
  %5255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 1
  %5258 = extractvalue %dx.types.ResRet.f32 %5255, 2
  %5259 = extractvalue %dx.types.ResRet.f32 %5255, 3
  %5260 = add i32 %5238, 48
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = add i32 %5238, 56
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = add i32 %5238, 64
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = mul i32 %5234, 60
  %5273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = add i32 %5272, 12
  %5278 = add i32 %5272, 48
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = and i32 %5245, 32767
  %5284 = bitcast float %5240 to i32
  %5285 = icmp eq i32 %5284, -1
  %5286 = bitcast float %5241 to i32
  %5287 = and i32 %5245, 32768
  %5288 = icmp ne i32 %5287, 0
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5293 = fsub fast float %5274, %5290
  %5294 = fsub fast float %5275, %5291
  %5295 = fsub fast float %5276, %5292
  %5296 = fsub fast float %141, %5293
  %5297 = fsub fast float %142, %5294
  %5298 = fsub fast float %143, %5295
  %5299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5300, float %5301, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = add i32 %5272, 24
  %5305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5305, 2
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = add i32 %5272, 36
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 6, float %5303)  ; FAbs(value)
  %5317 = call float @dx.op.unary.f32(i32 6, float %5309)  ; FAbs(value)
  %5318 = call float @dx.op.unary.f32(i32 6, float %5315)  ; FAbs(value)
  %5319 = fsub fast float %5280, %5316
  %5320 = fsub fast float %5281, %5317
  %5321 = fsub fast float %5282, %5318
  %5322 = fmul fast float %5319, %5248
  %5323 = fmul fast float %5320, %5249
  %5324 = fmul fast float %5321, %5250
  %5325 = call float @dx.op.binary.f32(i32 36, float %5323, float %5324)  ; FMin(a,b)
  %5326 = call float @dx.op.binary.f32(i32 36, float %5322, float %5325)  ; FMin(a,b)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = call float @dx.op.binary.f32(i32 36, float %5228, float %5327)  ; FMin(a,b)
  %5329 = uitofp i1 %5288 to float
  %5330 = fadd fast float %4437, 1.000000e+00
  %5331 = fsub fast float %5330, %5329
  %5332 = fmul fast float %5328, %5331
  %5333 = fcmp fast ogt float %5332, 0.000000e+00
  br i1 %5333, label %5343, label %5334

; <label>:5334                                    ; preds = %5485, %5224
  %5335 = phi float [ %5549, %5485 ], [ %5225, %5224 ]
  %5336 = phi float [ %5550, %5485 ], [ %5226, %5224 ]
  %5337 = phi float [ %5551, %5485 ], [ %5227, %5224 ]
  %5338 = phi float [ %5558, %5485 ], [ %5228, %5224 ]
  %5339 = phi float [ %5555, %5485 ], [ %5230, %5224 ]
  %5340 = phi float [ %5556, %5485 ], [ %5231, %5224 ]
  %5341 = phi float [ %5557, %5485 ], [ %5232, %5224 ]
  %5342 = icmp eq i32 %5229, %5236
  br i1 %5342, label %5559, label %5224

; <label>:5343                                    ; preds = %5224
  br i1 %5285, label %5401, label %5344

; <label>:5344                                    ; preds = %5343
  %5345 = fsub fast float -0.000000e+00, %5300
  %5346 = fsub fast float -0.000000e+00, %5301
  %5347 = fsub fast float -0.000000e+00, %5302
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5345, float %5346, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = fsub fast float -0.000000e+00, %5348
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5345, float %5346, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fadd fast float %5350, %5263
  %5352 = fadd fast float %5262, %5350
  %5353 = fsub fast float -0.000000e+00, %5352
  %5354 = fcmp ogt float %5348, -0.000000e+00
  %5355 = select i1 %5354, float %5353, float %5351
  %5356 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5357 = fdiv fast float 1.000000e+00, %5356
  %5358 = fmul fast float %5355, %5357
  %5359 = call float @dx.op.binary.f32(i32 35, float %5358, float 0.000000e+00)  ; FMax(a,b)
  %5360 = fsub fast float -0.000000e+00, %5306
  %5361 = fsub fast float -0.000000e+00, %5307
  %5362 = fsub fast float -0.000000e+00, %5308
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fsub fast float -0.000000e+00, %5363
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fadd fast float %5365, %5267
  %5367 = fadd fast float %5266, %5365
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = fcmp ogt float %5363, -0.000000e+00
  %5370 = select i1 %5369, float %5368, float %5366
  %5371 = call float @dx.op.unary.f32(i32 6, float %5364)  ; FAbs(value)
  %5372 = fdiv fast float 1.000000e+00, %5371
  %5373 = fmul fast float %5370, %5372
  %5374 = call float @dx.op.binary.f32(i32 35, float %5373, float 0.000000e+00)  ; FMax(a,b)
  %5375 = fsub fast float -0.000000e+00, %5312
  %5376 = fsub fast float -0.000000e+00, %5313
  %5377 = fsub fast float -0.000000e+00, %5314
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fsub fast float -0.000000e+00, %5378
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fadd fast float %5380, %5271
  %5382 = fadd fast float %5270, %5380
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = fcmp ogt float %5378, -0.000000e+00
  %5385 = select i1 %5384, float %5383, float %5381
  %5386 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5387 = fdiv fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5385, %5387
  %5389 = call float @dx.op.binary.f32(i32 35, float %5388, float 0.000000e+00)  ; FMax(a,b)
  %5390 = call float @dx.op.binary.f32(i32 36, float %5374, float %5389)  ; FMin(a,b)
  %5391 = call float @dx.op.binary.f32(i32 36, float %5359, float %5390)  ; FMin(a,b)
  %5392 = fmul fast float %5391, %5174
  %5393 = fmul fast float %5391, %5175
  %5394 = fmul fast float %5391, %5176
  %5395 = fadd fast float %5392, %141
  %5396 = fadd fast float %5393, %142
  %5397 = fadd fast float %5394, %143
  %5398 = fsub fast float %5395, %5240
  %5399 = fsub fast float %5396, %5241
  %5400 = fsub fast float %5397, %5242
  br label %5408

; <label>:5401                                    ; preds = %5343
  %5402 = fmul fast float %5174, 8.096000e+03
  %5403 = fmul fast float %5175, 8.096000e+03
  %5404 = fmul fast float %5176, 8.096000e+03
  %5405 = fadd fast float %5402, %141
  %5406 = fadd fast float %5403, %142
  %5407 = fadd fast float %5404, %143
  br label %5408

; <label>:5408                                    ; preds = %5401, %5344
  %5409 = phi float [ %5174, %5401 ], [ %5398, %5344 ]
  %5410 = phi float [ %5175, %5401 ], [ %5399, %5344 ]
  %5411 = phi float [ %5176, %5401 ], [ %5400, %5344 ]
  %5412 = phi float [ %5405, %5401 ], [ %5395, %5344 ]
  %5413 = phi float [ %5406, %5401 ], [ %5396, %5344 ]
  %5414 = phi float [ %5407, %5401 ], [ %5397, %5344 ]
  %5415 = fcmp fast olt float %5259, 1.000000e+00
  br i1 %5415, label %5416, label %5447, !dx.controlflow.hints !84

; <label>:5416                                    ; preds = %5408
  %5417 = fmul fast float %5411, %5257
  %5418 = fmul fast float %5410, %5258
  %5419 = fsub fast float %5417, %5418
  %5420 = fmul fast float %5409, %5258
  %5421 = fmul fast float %5411, %5256
  %5422 = fsub fast float %5420, %5421
  %5423 = fmul fast float %5410, %5256
  %5424 = fmul fast float %5409, %5257
  %5425 = fsub fast float %5423, %5424
  %5426 = fmul fast float %5419, 2.000000e+00
  %5427 = fmul fast float %5422, 2.000000e+00
  %5428 = fmul fast float %5425, 2.000000e+00
  %5429 = fmul fast float %5426, %5259
  %5430 = fmul fast float %5427, %5259
  %5431 = fmul fast float %5428, %5259
  %5432 = fmul fast float %5428, %5257
  %5433 = fmul fast float %5427, %5258
  %5434 = fmul fast float %5426, %5258
  %5435 = fmul fast float %5428, %5256
  %5436 = fmul fast float %5427, %5256
  %5437 = fmul fast float %5426, %5257
  %5438 = fadd fast float %5432, %5409
  %5439 = fadd fast float %5438, %5429
  %5440 = fsub fast float %5439, %5433
  %5441 = fsub fast float %5410, %5435
  %5442 = fadd fast float %5441, %5430
  %5443 = fadd fast float %5442, %5434
  %5444 = fadd fast float %5431, %5411
  %5445 = fsub fast float %5444, %5437
  %5446 = fadd fast float %5445, %5436
  br label %5447

; <label>:5447                                    ; preds = %5416, %5408
  %5448 = phi float [ %5440, %5416 ], [ %5409, %5408 ]
  %5449 = phi float [ %5443, %5416 ], [ %5410, %5408 ]
  %5450 = phi float [ %5446, %5416 ], [ %5411, %5408 ]
  br i1 %5285, label %5482, label %5451

; <label>:5451                                    ; preds = %5447
  %5452 = fmul fast float %4638, 0x400187C840000000
  %5453 = fadd fast float %5452, 0xC00EFC2120000000
  %5454 = fmul fast float %5453, %4638
  %5455 = fadd fast float %5454, 0x3FE5D16340000000
  %5456 = fmul fast float %5455, %4638
  %5457 = fadd fast float %5456, 1.000000e+00
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = fsub fast float %5412, %141
  %5460 = fsub fast float %5413, %142
  %5461 = fsub fast float %5414, %143
  %5462 = fsub fast float %5412, %5240
  %5463 = fsub fast float %5413, %5241
  %5464 = fsub fast float %5414, %5242
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5462, float %5463, float %5464)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = fadd fast float %5466, 0x3EE4F8B580000000
  %5468 = fdiv fast float %5465, %5467
  %5469 = bitcast float %5468 to i32
  %5470 = ashr i32 %5469, 1
  %5471 = add nsw i32 %5470, 532487669
  %5472 = bitcast i32 %5471 to float
  %5473 = fmul fast float %5472, %5458
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fmul fast float %5474, 0x4009981AE0000000
  %5476 = fsub fast float 0x40111BBD80000000, %5475
  %5477 = fmul fast float %5476, %5474
  %5478 = fadd fast float %5477, 0xC0009F6020000000
  %5479 = fmul fast float %5478, %5474
  %5480 = fadd fast float %5479, 1.000000e+00
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  br label %5485

; <label>:5482                                    ; preds = %5447
  %5483 = icmp ne i32 %5286, -1
  %5484 = zext i1 %5483 to i32
  br label %5485

; <label>:5485                                    ; preds = %5482, %5451
  %5486 = phi float [ %4638, %5482 ], [ %5481, %5451 ]
  %5487 = phi i32 [ %5484, %5482 ], [ 0, %5451 ]
  %5488 = fmul float %5486, 5.000000e+00
  %5489 = fsub float 5.000000e+00, %5488
  %5490 = icmp ne i32 %5487, 0
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5493 = fadd fast float %5492, %5489
  %5494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5493)  ; FMax(a,b)
  %5495 = call float @dx.op.unary.f32(i32 6, float %5448)  ; FAbs(value)
  %5496 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5497 = fadd fast float %5496, %5495
  %5498 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5499 = fadd fast float %5497, %5498
  %5500 = fcmp fast oeq float %5499, 0.000000e+00
  %5501 = fdiv fast float 1.000000e+00, %5499
  %5502 = select i1 %5500, float 1.000000e+00, float %5501
  %5503 = fmul fast float %5502, %5448
  %5504 = fmul fast float %5502, %5449
  %5505 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5506 = call float @dx.op.unary.f32(i32 6, float %5503)  ; FAbs(value)
  %5507 = fsub fast float 1.000000e+00, %5505
  %5508 = fsub fast float 1.000000e+00, %5506
  %5509 = fcmp fast oge float %5503, 0.000000e+00
  %5510 = fcmp fast oge float %5504, 0.000000e+00
  %5511 = select i1 %5509, float 1.000000e+00, float -1.000000e+00
  %5512 = select i1 %5510, float 1.000000e+00, float -1.000000e+00
  %5513 = fcmp fast ole float %5450, 0.000000e+00
  %5514 = fmul fast float %5511, %5507
  %5515 = fmul fast float %5512, %5508
  %5516 = select i1 %5513, float %5514, float %5503
  %5517 = select i1 %5513, float %5515, float %5504
  %5518 = fmul fast float %5516, 5.000000e-01
  %5519 = fmul fast float %5517, 5.000000e-01
  %5520 = fadd fast float %5518, 5.000000e-01
  %5521 = fadd fast float %5519, 5.000000e-01
  %5522 = uitofp i32 %5283 to float
  %5523 = call float @dx.op.binary.f32(i32 36, float %5494, float 3.000000e+00)  ; FMin(a,b)
  %5524 = fadd fast float %5523, 2.000000e+00
  %5525 = call float @dx.op.unary.f32(i32 21, float %5524)  ; Exp(value)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5491, 1
  %5527 = fmul fast float %5526, %5525
  %5528 = fmul fast float %5527, 2.000000e+00
  %5529 = fsub fast float 1.000000e+00, %5528
  %5530 = fmul fast float %5520, %5529
  %5531 = fmul fast float %5521, %5529
  %5532 = fadd fast float %5530, %5527
  %5533 = fadd fast float %5531, %5527
  %5534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5532, float %5533, float %5522, float undef, i32 0, i32 0, i32 undef, float %5494)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 3
  %5540 = fmul fast float %5539, %5253
  %5541 = call float @dx.op.binary.f32(i32 36, float %4718, float %5540)  ; FMin(a,b)
  %5542 = select i1 %5490, float %5541, float %5540
  %5543 = fmul fast float %5535, %5332
  %5544 = fmul fast float %5543, %5542
  %5545 = fmul fast float %5536, %5332
  %5546 = fmul fast float %5545, %5542
  %5547 = fmul fast float %5537, %5332
  %5548 = fmul fast float %5547, %5542
  %5549 = fadd fast float %5544, %5225
  %5550 = fadd fast float %5546, %5226
  %5551 = fadd fast float %5548, %5227
  %5552 = fmul fast float %5412, %5332
  %5553 = fmul fast float %5413, %5332
  %5554 = fmul fast float %5414, %5332
  %5555 = fadd fast float %5552, %5230
  %5556 = fadd fast float %5553, %5231
  %5557 = fadd fast float %5554, %5232
  %5558 = fsub fast float %5228, %5332
  br label %5334

; <label>:5559                                    ; preds = %5334
  br label %5560

; <label>:5560                                    ; preds = %5559, %5191
  %5561 = phi float [ %5192, %5191 ], [ %5335, %5559 ]
  %5562 = phi float [ %5193, %5191 ], [ %5336, %5559 ]
  %5563 = phi float [ %5194, %5191 ], [ %5337, %5559 ]
  %5564 = phi float [ %5195, %5191 ], [ %5338, %5559 ]
  %5565 = phi float [ %5197, %5191 ], [ %5339, %5559 ]
  %5566 = phi float [ %5198, %5191 ], [ %5340, %5559 ]
  %5567 = phi float [ %5199, %5191 ], [ %5341, %5559 ]
  %5568 = add i32 %5196, 1
  %5569 = icmp ugt i32 %5568, %5188
  br i1 %5569, label %5570, label %5191, !llvm.loop !85

; <label>:5570                                    ; preds = %5560
  br label %5571

; <label>:5571                                    ; preds = %5570, %5173
  %5572 = phi float [ 0.000000e+00, %5173 ], [ %5561, %5570 ]
  %5573 = phi float [ 0.000000e+00, %5173 ], [ %5562, %5570 ]
  %5574 = phi float [ 0.000000e+00, %5173 ], [ %5563, %5570 ]
  %5575 = phi float [ 0.000000e+00, %5173 ], [ %5565, %5570 ]
  %5576 = phi float [ 0.000000e+00, %5173 ], [ %5566, %5570 ]
  %5577 = phi float [ 0.000000e+00, %5173 ], [ %5567, %5570 ]
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5573, float %5574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = select i1 %183, float 0.000000e+00, float %5572
  %5580 = select i1 %183, float %5578, float %5573
  %5581 = select i1 %183, float 0.000000e+00, float %5574
  %5582 = fcmp fast olt float %5097, 0.000000e+00
  %5583 = call float @dx.op.unary.f32(i32 6, float %5097)  ; FAbs(value)
  %5584 = fmul fast float %5583, %5098
  %5585 = fmul fast float %5583, %5099
  %5586 = fmul fast float %5583, %5100
  %5587 = select i1 %5582, float %5098, float %5584
  %5588 = select i1 %5582, float %5099, float %5585
  %5589 = select i1 %5582, float %5100, float %5586
  %5590 = fsub fast float 1.000000e+00, %5583
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = fmul fast float %5591, %5579
  %5593 = fmul fast float %5591, %5580
  %5594 = fmul fast float %5591, %5581
  %5595 = fadd fast float %5587, %5592
  %5596 = fadd fast float %5588, %5593
  %5597 = fadd fast float %5589, %5594
  %5598 = fcmp fast une float %4847, 0.000000e+00
  br i1 %5598, label %5699, label %5599

; <label>:5599                                    ; preds = %5571
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.CBufRet.f32 %5610, 3
  %5615 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fadd fast float %4638, -1.000000e+00
  %5619 = fsub fast float %5616, %5617
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5622 = fmul fast float %5621, %5616
  %5623 = fdiv fast float 1.600000e+02, %5622
  %5624 = fmul fast float %5618, %5618
  %5625 = fmul fast float %5624, 0xBFB5B17960000000
  %5626 = fmul fast float %5625, %5619
  %5627 = fmul fast float %5626, %5623
  %5628 = call float @dx.op.unary.f32(i32 21, float %5627)  ; Exp(value)
  %5629 = fmul fast float %5628, 0x3FF04B2960000000
  %5630 = fsub fast float 0x3FF04B2960000000, %5629
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = fmul fast float %5631, 4.000000e+00
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5637 = fadd fast float %5634, %5575
  %5638 = fadd fast float %5635, %5576
  %5639 = fadd fast float %5636, %5577
  %5640 = fmul fast float %5637, %5601
  %5641 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5602, float %5640)  ; FMad(a,b,c)
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5639, float %5603, float %5641)  ; FMad(a,b,c)
  %5643 = fadd fast float %5642, %5604
  %5644 = fmul fast float %5637, %5606
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5607, float %5644)  ; FMad(a,b,c)
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5639, float %5608, float %5645)  ; FMad(a,b,c)
  %5647 = fadd fast float %5646, %5609
  %5648 = fmul fast float %5637, %5611
  %5649 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5612, float %5648)  ; FMad(a,b,c)
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %5639, float %5613, float %5649)  ; FMad(a,b,c)
  %5651 = fadd fast float %5650, %5614
  %5652 = fdiv fast float %5643, %5651
  %5653 = fdiv fast float %5647, %5651
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.CBufRet.f32 %5654, 1
  %5657 = fmul fast float %5655, %5652
  %5658 = fmul fast float %5656, %5653
  %5659 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5660 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5661 = fadd fast float %5657, %5659
  %5662 = fadd fast float %5658, %5660
  %5663 = fmul fast float %5615, 8.000000e+00
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = fmul fast float %5661, 2.000000e+00
  %5666 = fmul fast float %5662, 2.000000e+00
  %5667 = fadd fast float %5665, -1.000000e+00
  %5668 = fadd fast float %5666, -1.000000e+00
  %5669 = fmul fast float %5667, %5667
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fmul fast float %5668, %5668
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5675 = fmul fast float %4847, %5671
  %5676 = fmul fast float %5675, %5674
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fmul fast float %5677, %5664
  %5679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5661, float %5662, float undef, float undef, i32 0, i32 0, i32 undef, float %5632)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5680 = extractvalue %dx.types.ResRet.f32 %5679, 0
  %5681 = extractvalue %dx.types.ResRet.f32 %5679, 1
  %5682 = extractvalue %dx.types.ResRet.f32 %5679, 2
  %5683 = select i1 %183, float 0.000000e+00, float %5681
  %5684 = select i1 %183, float 0.000000e+00, float %5682
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5687 = fmul fast float %5686, %5680
  %5688 = fmul fast float %5683, %5686
  %5689 = fmul fast float %5684, %5686
  %5690 = fsub fast float %5687, %5579
  %5691 = fsub fast float %5688, %5580
  %5692 = fsub fast float %5689, %5581
  %5693 = fmul fast float %5690, %5678
  %5694 = fmul fast float %5691, %5678
  %5695 = fmul fast float %5692, %5678
  %5696 = fadd fast float %5693, %5579
  %5697 = fadd fast float %5694, %5580
  %5698 = fadd fast float %5695, %5581
  br label %5699

; <label>:5699                                    ; preds = %5599, %5571, %5096, %4820
  %5700 = phi float [ %5098, %5096 ], [ %5595, %5571 ], [ %4777, %4820 ], [ %5696, %5599 ]
  %5701 = phi float [ %5099, %5096 ], [ %5596, %5571 ], [ %4778, %4820 ], [ %5697, %5599 ]
  %5702 = phi float [ %5100, %5096 ], [ %5597, %5571 ], [ %4779, %4820 ], [ %5698, %5599 ]
  %5703 = fmul fast float %4826, %4773
  %5704 = fmul fast float %4826, %4774
  %5705 = fmul fast float %4826, %4775
  %5706 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = fcmp fast ogt float %5706, 0x3E7FF19E20000000
  %5708 = fdiv fast float 1.000000e+00, %5706
  %5709 = select i1 %5707, float %5708, float 0.000000e+00
  %5710 = fmul fast float %5709, %4632
  %5711 = fmul fast float %5709, %4633
  %5712 = fmul fast float %5709, %4634
  %5713 = fadd fast float %5710, -1.000000e+00
  %5714 = fadd fast float %5711, -1.000000e+00
  %5715 = fadd fast float %5712, -1.000000e+00
  %5716 = fmul fast float %5713, 5.000000e-01
  %5717 = fmul fast float %5714, 5.000000e-01
  %5718 = fmul fast float %5715, 5.000000e-01
  %5719 = fadd fast float %5716, 1.000000e+00
  %5720 = fadd fast float %5717, 1.000000e+00
  %5721 = fadd fast float %5718, 1.000000e+00
  %5722 = fmul fast float %5700, %4821
  %5723 = fmul fast float %5701, %4822
  %5724 = fmul fast float %5702, %4823
  %5725 = fsub fast float 1.000000e+00, %4657
  %5726 = bitcast float %5725 to i32
  %5727 = sitofp i32 %5726 to float
  %5728 = fmul fast float %5727, 5.000000e+00
  %5729 = fadd fast float %5728, 0xC1EFBF8940000000
  %5730 = fptosi float %5729 to i32
  %5731 = bitcast i32 %5730 to float
  %5732 = fmul fast float %5731, %4027
  %5733 = fmul fast float %4773, %5732
  %5734 = fmul fast float %5733, %4826
  %5735 = fmul fast float %5734, %5719
  %5736 = fmul fast float %4774, %5732
  %5737 = fmul fast float %5736, %4826
  %5738 = fmul fast float %5737, %5720
  %5739 = fmul fast float %4775, %5732
  %5740 = fmul fast float %5739, %4826
  %5741 = fmul fast float %5740, %5721
  %5742 = fmul fast float %5703, %4023
  %5743 = fmul fast float %5704, %4023
  %5744 = fmul fast float %5705, %4023
  %5745 = fadd fast float %5722, %4016
  %5746 = fadd fast float %5745, %5735
  %5747 = fmul fast float %5746, %4023
  %5748 = fadd fast float %5723, %4017
  %5749 = fadd fast float %5748, %5738
  %5750 = fmul fast float %5749, %4023
  %5751 = fadd fast float %5724, %4018
  %5752 = fadd fast float %5751, %5741
  %5753 = fmul fast float %5752, %4023
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5756 = fcmp fast oeq float %5755, 0.000000e+00
  br i1 %5756, label %5976, label %5757

; <label>:5757                                    ; preds = %5699
  %5758 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5759 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5760 = extractvalue %dx.types.CBufRet.f32 %5754, 2
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5764 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = select i1 %183, float %5766, float %5762
  %5770 = select i1 %183, float %5768, float %5763
  %5771 = select i1 %183, float %5767, float %5764
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5774 = fcmp fast une float %5773, 0.000000e+00
  br i1 %5774, label %5775, label %5792

; <label>:5775                                    ; preds = %5757
  %5776 = fptoui float %78 to i32
  %5777 = fptoui float %79 to i32
  %5778 = lshr i32 %5776, 4
  %5779 = lshr i32 %5777, 4
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5782 = fptoui float %5781 to i32
  %5783 = add i32 %5782, 15
  %5784 = lshr i32 %5783, 4
  %5785 = mul i32 %5784, %5779
  %5786 = add i32 %5785, %5778
  %5787 = shl i32 %5786, 3
  %5788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5787, i32 undef)  ; BufferLoad(srv,index,wot)
  %5789 = extractvalue %dx.types.ResRet.i32 %5788, 0
  %5790 = and i32 %5789, -268435456
  %5791 = icmp eq i32 %5790, -1342177280
  br i1 %5791, label %5797, label %5792

; <label>:5792                                    ; preds = %5775, %5757
  %5793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4643, float %4644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5794 = extractvalue %dx.types.ResRet.f32 %5793, 0
  %5795 = extractvalue %dx.types.ResRet.f32 %5793, 1
  %5796 = extractvalue %dx.types.ResRet.f32 %5793, 2
  br label %5797

; <label>:5797                                    ; preds = %5792, %5775
  %5798 = phi float [ %5794, %5792 ], [ 0.000000e+00, %5775 ]
  %5799 = phi float [ %5795, %5792 ], [ 0.000000e+00, %5775 ]
  %5800 = phi float [ %5796, %5792 ], [ 0.000000e+00, %5775 ]
  %5801 = call float @dx.op.binary.f32(i32 36, float %5799, float %5800)  ; FMin(a,b)
  %5802 = call float @dx.op.binary.f32(i32 36, float %5798, float %5801)  ; FMin(a,b)
  %5803 = fcmp fast ogt float %5802, 0.000000e+00
  br i1 %5803, label %5804, label %5976, !dx.controlflow.hints !87

; <label>:5804                                    ; preds = %5797
  %5805 = fmul fast float %5798, %5769
  %5806 = fmul fast float %5799, %5770
  %5807 = fmul fast float %5800, %5771
  %5808 = fsub fast float %5758, %4628
  %5809 = fsub fast float %5759, %4627
  %5810 = fsub fast float %5760, %4626
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5809, float %5810, float %5808, float %5809, float %5810)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.unary.f32(i32 25, float %5811)  ; Rsqrt(value)
  %5813 = fmul fast float %5812, %5808
  %5814 = fmul fast float %5812, %5809
  %5815 = fmul fast float %5812, %5810
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5760, float %4635, float %4636, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4624, float %4623, float %5813, float %5814, float %5815)  ; Dot3(ax,ay,az,bx,by,bz)
  %5818 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5819 = bitcast i32 %4681 to float
  %5820 = fmul fast float %5818, %5818
  %5821 = fmul fast float %5820, %5819
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = fmul fast float %5822, %5818
  %5824 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %5813, float %5814, float %5815)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = fmul fast float %5824, %5824
  %5826 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %5827 = fsub fast float 1.000000e+00, %4675
  %5828 = fmul fast float %4657, %4657
  %5829 = fmul fast float %5828, %5827
  %5830 = fadd fast float %5829, %4675
  %5831 = bitcast float %5830 to i32
  %5832 = ashr i32 %5831, 1
  %5833 = add nsw i32 %5832, 532487669
  %5834 = bitcast i32 %5833 to float
  %5835 = fadd fast float %5834, %4657
  %5836 = fmul fast float %4675, %5825
  %5837 = fsub fast float 1.000000e+00, %5825
  %5838 = fadd fast float %5837, %5836
  %5839 = fmul fast float %5826, %5826
  %5840 = fmul fast float %5839, %5827
  %5841 = fadd fast float %5840, %4675
  %5842 = bitcast float %5841 to i32
  %5843 = ashr i32 %5842, 1
  %5844 = add nsw i32 %5843, 532487669
  %5845 = bitcast i32 %5844 to float
  %5846 = fadd fast float %5845, %5826
  %5847 = fmul fast float %5838, %5838
  %5848 = fmul fast float %5847, %5835
  %5849 = fmul fast float %5848, %5846
  %5850 = fdiv fast float 0x3FF0A00000000000, %5849
  %5851 = fmul fast float %5850, %4675
  %5852 = call float @dx.op.unary.f32(i32 6, float %5817)  ; FAbs(value)
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = bitcast float %5853 to i32
  %5855 = sitofp i32 %5854 to float
  %5856 = fmul fast float %5855, 5.000000e+00
  %5857 = fadd fast float %5856, 0xC1EFBF8940000000
  %5858 = fptosi float %5857 to i32
  %5859 = bitcast i32 %5858 to float
  %5860 = fsub fast float 1.000000e+00, %4629
  %5861 = fsub fast float 1.000000e+00, %4630
  %5862 = fsub fast float 1.000000e+00, %4655
  %5863 = fmul fast float %5859, %5860
  %5864 = fmul fast float %5859, %5861
  %5865 = fmul fast float %5859, %5862
  %5866 = fadd fast float %5863, %4629
  %5867 = fadd fast float %5864, %4630
  %5868 = fadd fast float %5865, %4655
  br i1 %4793, label %5869, label %5892

; <label>:5869                                    ; preds = %5804
  %5870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %5852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5874 = fadd fast float %5871, -5.000000e-01
  %5875 = fadd fast float %5872, -5.000000e-01
  %5876 = fadd fast float %5873, -5.000000e-01
  %5877 = fmul fast float %4629, 4.000000e+00
  %5878 = fmul fast float %5877, %5860
  %5879 = fmul fast float %5878, %5874
  %5880 = fmul fast float %4630, 4.000000e+00
  %5881 = fmul fast float %5880, %5861
  %5882 = fmul fast float %5881, %5875
  %5883 = fmul fast float %4655, 4.000000e+00
  %5884 = fmul fast float %5883, %5862
  %5885 = fmul fast float %5884, %5876
  %5886 = fadd fast float %5879, %5866
  %5887 = fadd fast float %5882, %5867
  %5888 = fadd fast float %5885, %5868
  %5889 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5890 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5891 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  br label %5892

; <label>:5892                                    ; preds = %5869, %5804
  %5893 = phi float [ %5889, %5869 ], [ %5866, %5804 ]
  %5894 = phi float [ %5890, %5869 ], [ %5867, %5804 ]
  %5895 = phi float [ %5891, %5869 ], [ %5868, %5804 ]
  %5896 = fmul fast float %5816, 9.843750e-01
  %5897 = fadd fast float %5896, 7.812500e-03
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5897, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 2
  %5900 = extractvalue %dx.types.ResRet.f32 %5898, 3
  %5901 = fmul fast float %5899, %4629
  %5902 = fmul fast float %5899, %4630
  %5903 = fmul fast float %5899, %4655
  %5904 = fadd fast float %5901, %5900
  %5905 = fadd fast float %5902, %5900
  %5906 = fadd fast float %5903, %5900
  br i1 %4793, label %5907, label %5930

; <label>:5907                                    ; preds = %5892
  %5908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %5816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.ResRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.ResRet.f32 %5908, 2
  %5912 = fadd fast float %5909, -5.000000e-01
  %5913 = fadd fast float %5910, -5.000000e-01
  %5914 = fadd fast float %5911, -5.000000e-01
  %5915 = fmul fast float %4629, 4.000000e+00
  %5916 = fmul fast float %5915, %5860
  %5917 = fmul fast float %5916, %5912
  %5918 = fmul fast float %4630, 4.000000e+00
  %5919 = fmul fast float %5918, %5861
  %5920 = fmul fast float %5919, %5913
  %5921 = fmul fast float %4655, 4.000000e+00
  %5922 = fmul fast float %5921, %5862
  %5923 = fmul fast float %5922, %5914
  %5924 = fadd fast float %5917, %5904
  %5925 = fadd fast float %5920, %5905
  %5926 = fadd fast float %5923, %5906
  %5927 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5928 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5929 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  br label %5930

; <label>:5930                                    ; preds = %5907, %5892
  %5931 = phi float [ %5927, %5907 ], [ %5904, %5892 ]
  %5932 = phi float [ %5928, %5907 ], [ %5905, %5892 ]
  %5933 = phi float [ %5929, %5907 ], [ %5906, %5892 ]
  %5934 = call float @dx.op.binary.f32(i32 35, float %5932, float %5933)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5931, float %5934)  ; FMax(a,b)
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = fmul fast float %5893, %5851
  %5938 = fmul fast float %5894, %5851
  %5939 = fmul fast float %5895, %5851
  %5940 = fsub fast float 1.000000e+00, %5817
  %5941 = bitcast float %5940 to i32
  %5942 = sitofp i32 %5941 to float
  %5943 = fmul fast float %5942, 5.000000e+00
  %5944 = fadd fast float %5943, 0xC1EFBF8940000000
  %5945 = fptosi float %5944 to i32
  %5946 = bitcast i32 %5945 to float
  %5947 = fmul fast float %5946, %4027
  %5948 = fmul fast float %5936, %5947
  %5949 = fmul fast float %5948, %5719
  %5950 = fmul fast float %5948, %5720
  %5951 = fmul fast float %5948, %5721
  %5952 = fadd fast float %5949, %5937
  %5953 = fadd fast float %5950, %5938
  %5954 = fadd fast float %5951, %5939
  %5955 = fmul fast float %5823, %5805
  %5956 = fmul fast float %5955, %5936
  %5957 = fmul fast float %5823, %5806
  %5958 = fmul fast float %5957, %5936
  %5959 = fmul fast float %5823, %5807
  %5960 = fmul fast float %5959, %5936
  %5961 = fmul fast float %5955, %5952
  %5962 = fmul fast float %5957, %5953
  %5963 = fmul fast float %5959, %5954
  %5964 = fadd fast float %5956, %5703
  %5965 = fmul fast float %5964, %4023
  %5966 = fadd fast float %5958, %5704
  %5967 = fmul fast float %5966, %4023
  %5968 = fadd fast float %5960, %5705
  %5969 = fmul fast float %5968, %4023
  %5970 = fadd fast float %5961, %5746
  %5971 = fmul fast float %5970, %4023
  %5972 = fadd fast float %5962, %5749
  %5973 = fmul fast float %5972, %4023
  %5974 = fadd fast float %5963, %5752
  %5975 = fmul fast float %5974, %4023
  br label %5976

; <label>:5976                                    ; preds = %5930, %5797, %5699
  %5977 = phi float [ %5747, %5699 ], [ %5747, %5797 ], [ %5971, %5930 ]
  %5978 = phi float [ %5750, %5699 ], [ %5750, %5797 ], [ %5973, %5930 ]
  %5979 = phi float [ %5753, %5699 ], [ %5753, %5797 ], [ %5975, %5930 ]
  %5980 = phi float [ %5742, %5699 ], [ %5742, %5797 ], [ %5965, %5930 ]
  %5981 = phi float [ %5743, %5699 ], [ %5743, %5797 ], [ %5967, %5930 ]
  %5982 = phi float [ %5744, %5699 ], [ %5744, %5797 ], [ %5969, %5930 ]
  %5983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.i32 %5983, 0
  %5985 = icmp eq i32 %5984, 0
  br i1 %5985, label %6417, label %5986

; <label>:5986                                    ; preds = %5976
  %5987 = fptoui float %78 to i32
  %5988 = fptoui float %79 to i32
  %5989 = lshr i32 %5987, 4
  %5990 = lshr i32 %5988, 4
  %5991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.i32 %5991, 0
  %5993 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5990, i32 %5992, i32 %5989)  ; UMad(a,b,c)
  %5994 = add nsw i32 %5984, -1
  %5995 = call i32 @dx.op.binary.i32(i32 37, i32 %5994, i32 0)  ; IMax(a,b)
  %5996 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5997 = fptoui float %5996 to i32
  %5998 = lshr i32 %5997, 5
  %5999 = call i32 @dx.op.binary.i32(i32 40, i32 %5998, i32 8191)  ; UMin(a,b)
  %6000 = shl i32 %5999, 2
  %6001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6000, i32 undef)  ; BufferLoad(srv,index,wot)
  %6002 = extractvalue %dx.types.ResRet.i32 %6001, 0
  %6003 = lshr i32 %6002, 16
  %6004 = and i32 %6002, 65535
  %6005 = lshr i32 %6002, 21
  %6006 = lshr i32 %6004, 5
  %6007 = call i32 @dx.op.binary.i32(i32 40, i32 %6006, i32 %5995)  ; UMin(a,b)
  %6008 = icmp ugt i32 %6005, %6007
  br i1 %6008, label %6417, label %6009

; <label>:6009                                    ; preds = %5986
  br label %6010

; <label>:6010                                    ; preds = %6407, %6009
  %6011 = phi i32 [ %6414, %6407 ], [ %6005, %6009 ]
  %6012 = phi float [ %6408, %6407 ], [ %5977, %6009 ]
  %6013 = phi float [ %6409, %6407 ], [ %5978, %6009 ]
  %6014 = phi float [ %6410, %6407 ], [ %5979, %6009 ]
  %6015 = phi float [ %6411, %6407 ], [ %5980, %6009 ]
  %6016 = phi float [ %6412, %6407 ], [ %5981, %6009 ]
  %6017 = phi float [ %6413, %6407 ], [ %5982, %6009 ]
  %6018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.i32 %6018, 0
  %6020 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5993, i32 %6019, i32 %6011)  ; UMad(a,b,c)
  %6021 = shl i32 %6020, 2
  %6022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6021, i32 undef)  ; BufferLoad(srv,index,wot)
  %6023 = extractvalue %dx.types.ResRet.i32 %6022, 0
  %6024 = shl i32 %6011, 5
  %6025 = sub nsw i32 %6003, %6024
  %6026 = call i32 @dx.op.binary.i32(i32 37, i32 %6025, i32 0)  ; IMax(a,b)
  %6027 = call i32 @dx.op.binary.i32(i32 38, i32 %6026, i32 31)  ; IMin(a,b)
  %6028 = sub nsw i32 1, %6003
  %6029 = add nsw i32 %6028, %6004
  %6030 = call i32 @dx.op.binary.i32(i32 37, i32 %6029, i32 0)  ; IMax(a,b)
  %6031 = call i32 @dx.op.binary.i32(i32 38, i32 %6030, i32 32)  ; IMin(a,b)
  %6032 = and i32 %6031, 31
  %6033 = shl i32 -1, %6032
  %6034 = xor i32 %6033, -1
  %6035 = and i32 %6027, 31
  %6036 = shl i32 %6034, %6035
  %6037 = icmp eq i32 %6031, 32
  %6038 = select i1 %6037, i32 -1, i32 %6036
  %6039 = and i32 %6038, %6023
  %6040 = icmp eq i32 %6039, 0
  br i1 %6040, label %6407, label %6041

; <label>:6041                                    ; preds = %6010
  br label %6042

; <label>:6042                                    ; preds = %6122, %6041
  %6043 = phi i32 [ %6054, %6122 ], [ %6039, %6041 ]
  %6044 = phi float [ %6123, %6122 ], [ %6012, %6041 ]
  %6045 = phi float [ %6124, %6122 ], [ %6013, %6041 ]
  %6046 = phi float [ %6125, %6122 ], [ %6014, %6041 ]
  %6047 = phi float [ %6126, %6122 ], [ %6015, %6041 ]
  %6048 = phi float [ %6127, %6122 ], [ %6016, %6041 ]
  %6049 = phi float [ %6128, %6122 ], [ %6017, %6041 ]
  %6050 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6043)  ; FirstbitLo(value)
  %6051 = add i32 %6050, %6024
  %6052 = and i32 %6050, 31
  %6053 = shl i32 1, %6052
  %6054 = xor i32 %6053, %6043
  %6055 = mul i32 %6051, 112
  %6056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = or i32 %6055, 12
  %6061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6060, i32 undef)  ; BufferLoad(srv,index,wot)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 0
  %6063 = add i32 %6055, 44
  %6064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6063, i32 undef)  ; BufferLoad(srv,index,wot)
  %6065 = extractvalue %dx.types.ResRet.f32 %6064, 0
  %6066 = add i32 %6055, 48
  %6067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6066, i32 undef)  ; BufferLoad(srv,index,wot)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.ResRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.ResRet.f32 %6067, 2
  %6071 = add i32 %6055, 80
  %6072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6071, i32 undef)  ; BufferLoad(srv,index,wot)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6075 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6076 = select i1 %183, float %6073, float %6057
  %6077 = select i1 %183, float %6075, float %6058
  %6078 = select i1 %183, float %6074, float %6059
  %6079 = fsub fast float %6068, %141
  %6080 = fsub fast float %6069, %142
  %6081 = fsub fast float %6070, %143
  %6082 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6081, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = call float @dx.op.unary.f32(i32 24, float %6082)  ; Sqrt(value)
  %6084 = fdiv fast float 1.000000e+00, %6083
  %6085 = fmul fast float %6084, %6079
  %6086 = fmul fast float %6084, %6080
  %6087 = fmul fast float %6084, %6081
  %6088 = fadd fast float %6083, %6062
  %6089 = fdiv fast float 1.000000e+00, %6088
  %6090 = fmul float %6065, %6089
  %6091 = fmul float %6090, %6090
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = and i32 %6053, %6039
  %6094 = icmp eq i32 %6093, 0
  br i1 %6094, label %6117, label %6095, !dx.controlflow.hints !88

; <label>:6095                                    ; preds = %6042
  %6096 = lshr i32 %5987, 5
  %6097 = lshr i32 %5988, 5
  %6098 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6096, i32 %6097, i32 %6051, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6099 = extractvalue %dx.types.ResRet.i32 %6098, 0
  %6100 = and i32 %6099, 3
  %6101 = icmp eq i32 %6100, 0
  %6102 = select i1 %6101, float 1.000000e+00, float 0.000000e+00
  %6103 = icmp eq i32 %6100, 3
  br i1 %6103, label %6104, label %6117

; <label>:6104                                    ; preds = %6095
  %6105 = lshr i32 %6099, 10
  %6106 = and i32 %6105, 8160
  %6107 = and i32 %5988, 31
  %6108 = or i32 %6106, %6107
  %6109 = lshr i32 %6099, 1
  %6110 = and i32 %6109, 16352
  %6111 = and i32 %5987, 31
  %6112 = or i32 %6110, %6111
  %6113 = lshr i32 %6099, 23
  %6114 = and i32 %6113, 255
  %6115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6112, i32 %6108, i32 %6114, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 0
  br label %6117

; <label>:6117                                    ; preds = %6104, %6095, %6042
  %6118 = phi float [ %6116, %6104 ], [ %6102, %6095 ], [ 0.000000e+00, %6042 ]
  %6119 = call float @dx.op.binary.f32(i32 36, float %6118, float %6118)  ; FMin(a,b)
  %6120 = call float @dx.op.binary.f32(i32 36, float %6118, float %6119)  ; FMin(a,b)
  %6121 = fcmp fast ogt float %6120, 0.000000e+00
  br i1 %6121, label %6130, label %6122, !dx.controlflow.hints !89

; <label>:6122                                    ; preds = %6363, %6117
  %6123 = phi float [ %6044, %6117 ], [ %6403, %6363 ]
  %6124 = phi float [ %6045, %6117 ], [ %6404, %6363 ]
  %6125 = phi float [ %6046, %6117 ], [ %6405, %6363 ]
  %6126 = phi float [ %6047, %6117 ], [ %6397, %6363 ]
  %6127 = phi float [ %6048, %6117 ], [ %6398, %6363 ]
  %6128 = phi float [ %6049, %6117 ], [ %6399, %6363 ]
  %6129 = icmp eq i32 %6043, %6053
  br i1 %6129, label %6406, label %6042

; <label>:6130                                    ; preds = %6117
  %6131 = fmul fast float %6118, %6076
  %6132 = fmul fast float %6118, %6077
  %6133 = fmul fast float %6118, %6078
  %6134 = fsub fast float %6070, %4428
  %6135 = fcmp fast ogt float %6134, 0.000000e+00
  %6136 = fsub fast float %143, %4428
  %6137 = fcmp fast ogt float %6136, 0.000000e+00
  %6138 = xor i1 %6137, %6135
  %6139 = fsub fast float %4428, %6070
  %6140 = fmul fast float %6139, 2.000000e+00
  %6141 = fadd fast float %6140, %6070
  %6142 = select i1 %6138, float %6070, float %6141
  %6143 = fsub fast float %6142, %143
  %6144 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6143, float %6079, float %6080, float %6143)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = call float @dx.op.unary.f32(i32 25, float %6144)  ; Rsqrt(value)
  %6146 = fmul fast float %6145, %6079
  %6147 = fmul fast float %6145, %6080
  %6148 = fmul fast float %6145, %6143
  %6149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6146, float %6147, float %6148)  ; Dot3(ax,ay,az,bx,by,bz)
  %6151 = fdiv fast float 1.000000e+00, %6150
  %6152 = fmul fast float %6151, %6149
  %6153 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6136, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = fcmp fast olt float %6153, 0.000000e+00
  %6156 = zext i1 %6154 to i32
  %6157 = zext i1 %6155 to i32
  %6158 = sub nsw i32 %6156, %6157
  %6159 = sitofp i32 %6158 to float
  %6160 = fsub fast float %6142, %4428
  %6161 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6160, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6162 = fcmp fast ogt float %6161, 0.000000e+00
  %6163 = fcmp fast olt float %6161, 0.000000e+00
  %6164 = zext i1 %6162 to i32
  %6165 = zext i1 %6163 to i32
  %6166 = sub nsw i32 %6164, %6165
  %6167 = sitofp i32 %6166 to float
  %6168 = fcmp fast une float %6159, %6167
  br i1 %6168, label %6169, label %6179

; <label>:6169                                    ; preds = %6130
  %6170 = fmul fast float %6152, %6148
  %6171 = fmul fast float %6152, %6147
  %6172 = fmul fast float %6152, %6146
  %6173 = fmul fast float %6172, %6172
  %6174 = fmul fast float %6171, %6171
  %6175 = fadd fast float %6173, %6174
  %6176 = fmul fast float %6170, %6170
  %6177 = fadd fast float %6175, %6176
  %6178 = call float @dx.op.unary.f32(i32 24, float %6177)  ; Sqrt(value)
  br label %6191

; <label>:6179                                    ; preds = %6130
  %6180 = icmp slt i32 %6158, 0
  br i1 %6180, label %6181, label %6191

; <label>:6181                                    ; preds = %6179
  %6182 = fsub fast float %141, %6068
  %6183 = fsub fast float %142, %6069
  %6184 = fsub fast float %143, %6142
  %6185 = fmul fast float %6182, %6182
  %6186 = fmul fast float %6183, %6183
  %6187 = fadd fast float %6185, %6186
  %6188 = fmul fast float %6184, %6184
  %6189 = fadd fast float %6187, %6188
  %6190 = call float @dx.op.unary.f32(i32 24, float %6189)  ; Sqrt(value)
  br label %6191

; <label>:6191                                    ; preds = %6181, %6179, %6169
  %6192 = phi float [ %6178, %6169 ], [ %6190, %6181 ], [ 0.000000e+00, %6179 ]
  %6193 = and i1 %6137, %6135
  %6194 = fsub fast float -0.000000e+00, %6192
  %6195 = select i1 %6193, float -0.000000e+00, float %6194
  %6196 = fmul fast float %4429, 0x3FF7154760000000
  %6197 = fmul fast float %6196, %6195
  %6198 = fmul fast float %4430, 0x3FF7154760000000
  %6199 = fmul fast float %6198, %6195
  %6200 = fmul fast float %4431, 0x3FF7154760000000
  %6201 = fmul fast float %6200, %6195
  %6202 = call float @dx.op.unary.f32(i32 21, float %6197)  ; Exp(value)
  %6203 = call float @dx.op.unary.f32(i32 21, float %6199)  ; Exp(value)
  %6204 = call float @dx.op.unary.f32(i32 21, float %6201)  ; Exp(value)
  %6205 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6206 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6207 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6208 = fmul fast float %6131, %6205
  %6209 = fmul fast float %6132, %6206
  %6210 = fmul fast float %6133, %6207
  %6211 = fsub fast float %6085, %4628
  %6212 = fsub fast float %6086, %4627
  %6213 = fsub fast float %6087, %4626
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6211, float %6212, float %6213, float %6211, float %6212, float %6213)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = call float @dx.op.unary.f32(i32 25, float %6214)  ; Rsqrt(value)
  %6216 = fmul fast float %6215, %6211
  %6217 = fmul fast float %6215, %6212
  %6218 = fmul fast float %6215, %6213
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6087, float %4635, float %4636, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4624, float %4623, float %6216, float %6217, float %6218)  ; Dot3(ax,ay,az,bx,by,bz)
  %6221 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6222 = fmul fast float %6221, %6092
  %6223 = bitcast i32 %4681 to float
  %6224 = fmul fast float %6221, %6221
  %6225 = fmul fast float %6224, %6223
  %6226 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6227 = fmul fast float %6222, %6226
  %6228 = bitcast float %6082 to i32
  %6229 = ashr i32 %6228, 1
  %6230 = sub nsw i32 1597463007, %6229
  %6231 = bitcast i32 %6230 to float
  %6232 = fmul fast float %6231, %6079
  %6233 = fmul fast float %6231, %6080
  %6234 = fmul fast float %6231, %6081
  %6235 = fsub fast float %6232, %4628
  %6236 = fsub fast float %6233, %4627
  %6237 = fsub fast float %6234, %4626
  %6238 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6235, float %6236, float %6237)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = call float @dx.op.unary.f32(i32 25, float %6238)  ; Rsqrt(value)
  %6240 = fmul fast float %6235, %6239
  %6241 = fmul fast float %6236, %6239
  %6242 = fmul fast float %6237, %6239
  %6243 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %6240, float %6241, float %6242)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = fmul fast float %6243, %6243
  %6245 = call float @dx.op.unary.f32(i32 6, float %6219)  ; FAbs(value)
  %6246 = fsub fast float 1.000000e+00, %4675
  %6247 = fmul fast float %4657, %4657
  %6248 = fmul fast float %6247, %6246
  %6249 = fadd fast float %6248, %4675
  %6250 = bitcast float %6249 to i32
  %6251 = ashr i32 %6250, 1
  %6252 = add nsw i32 %6251, 532487669
  %6253 = bitcast i32 %6252 to float
  %6254 = fadd fast float %6253, %4657
  %6255 = fmul fast float %4675, %6244
  %6256 = fsub fast float 1.000000e+00, %6244
  %6257 = fadd fast float %6256, %6255
  %6258 = fmul fast float %6245, %6245
  %6259 = fmul fast float %6258, %6246
  %6260 = fadd fast float %6259, %4675
  %6261 = bitcast float %6260 to i32
  %6262 = ashr i32 %6261, 1
  %6263 = add nsw i32 %6262, 532487669
  %6264 = bitcast i32 %6263 to float
  %6265 = fadd fast float %6264, %6245
  %6266 = fmul fast float %6257, %6257
  %6267 = fmul fast float %6266, %6254
  %6268 = fmul fast float %6267, %6265
  %6269 = fdiv fast float 1.000000e+00, %6268
  %6270 = bitcast float %4675 to i32
  %6271 = sitofp i32 %6270 to float
  %6272 = fmul fast float %6271, 0x3FE7F73180000000
  %6273 = fadd fast float %6272, 0x41AFE27C40000000
  %6274 = fptosi float %6273 to i32
  %6275 = bitcast i32 %6274 to float
  %6276 = fmul fast float %6065, 0x3FD80E9D60000000
  %6277 = fmul fast float %6276, %6231
  %6278 = fadd fast float %6275, %6277
  %6279 = bitcast float %6278 to i32
  %6280 = sub nsw i32 2129859010, %6279
  %6281 = bitcast i32 %6280 to float
  %6282 = fmul fast float %4675, %6269
  %6283 = fmul fast float %6282, %6275
  %6284 = fmul fast float %6283, %6281
  %6285 = call float @dx.op.unary.f32(i32 6, float %6220)  ; FAbs(value)
  %6286 = fsub fast float 1.000000e+00, %6285
  %6287 = bitcast float %6286 to i32
  %6288 = sitofp i32 %6287 to float
  %6289 = fmul fast float %6288, 5.000000e+00
  %6290 = fadd fast float %6289, 0xC1EFBF8940000000
  %6291 = fptosi float %6290 to i32
  %6292 = bitcast i32 %6291 to float
  %6293 = fsub fast float 1.000000e+00, %4629
  %6294 = fsub fast float 1.000000e+00, %4630
  %6295 = fsub fast float 1.000000e+00, %4655
  %6296 = fmul fast float %6292, %6293
  %6297 = fmul fast float %6292, %6294
  %6298 = fmul fast float %6292, %6295
  %6299 = fadd fast float %6296, %4629
  %6300 = fadd fast float %6297, %4630
  %6301 = fadd fast float %6298, %4655
  br i1 %4793, label %6302, label %6325

; <label>:6302                                    ; preds = %6191
  %6303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %6285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6304 = extractvalue %dx.types.ResRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.ResRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.ResRet.f32 %6303, 2
  %6307 = fadd fast float %6304, -5.000000e-01
  %6308 = fadd fast float %6305, -5.000000e-01
  %6309 = fadd fast float %6306, -5.000000e-01
  %6310 = fmul fast float %4629, 4.000000e+00
  %6311 = fmul fast float %6310, %6293
  %6312 = fmul fast float %6311, %6307
  %6313 = fmul fast float %4630, 4.000000e+00
  %6314 = fmul fast float %6313, %6294
  %6315 = fmul fast float %6314, %6308
  %6316 = fmul fast float %4655, 4.000000e+00
  %6317 = fmul fast float %6316, %6295
  %6318 = fmul fast float %6317, %6309
  %6319 = fadd fast float %6312, %6299
  %6320 = fadd fast float %6315, %6300
  %6321 = fadd fast float %6318, %6301
  %6322 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6323 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6324 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  br label %6325

; <label>:6325                                    ; preds = %6302, %6191
  %6326 = phi float [ %6322, %6302 ], [ %6299, %6191 ]
  %6327 = phi float [ %6323, %6302 ], [ %6300, %6191 ]
  %6328 = phi float [ %6324, %6302 ], [ %6301, %6191 ]
  %6329 = fmul fast float %6219, 9.843750e-01
  %6330 = fadd fast float %6329, 7.812500e-03
  %6331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6330, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6332 = extractvalue %dx.types.ResRet.f32 %6331, 2
  %6333 = extractvalue %dx.types.ResRet.f32 %6331, 3
  %6334 = fmul fast float %6332, %4629
  %6335 = fmul fast float %6332, %4630
  %6336 = fmul fast float %6332, %4655
  %6337 = fadd fast float %6334, %6333
  %6338 = fadd fast float %6335, %6333
  %6339 = fadd fast float %6336, %6333
  br i1 %4793, label %6340, label %6363

; <label>:6340                                    ; preds = %6325
  %6341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %6219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6342 = extractvalue %dx.types.ResRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.ResRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.ResRet.f32 %6341, 2
  %6345 = fadd fast float %6342, -5.000000e-01
  %6346 = fadd fast float %6343, -5.000000e-01
  %6347 = fadd fast float %6344, -5.000000e-01
  %6348 = fmul fast float %4629, 4.000000e+00
  %6349 = fmul fast float %6348, %6293
  %6350 = fmul fast float %6349, %6345
  %6351 = fmul fast float %4630, 4.000000e+00
  %6352 = fmul fast float %6351, %6294
  %6353 = fmul fast float %6352, %6346
  %6354 = fmul fast float %4655, 4.000000e+00
  %6355 = fmul fast float %6354, %6295
  %6356 = fmul fast float %6355, %6347
  %6357 = fadd fast float %6350, %6337
  %6358 = fadd fast float %6353, %6338
  %6359 = fadd fast float %6356, %6339
  %6360 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  %6361 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6362 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  br label %6363

; <label>:6363                                    ; preds = %6340, %6325
  %6364 = phi float [ %6360, %6340 ], [ %6337, %6325 ]
  %6365 = phi float [ %6361, %6340 ], [ %6338, %6325 ]
  %6366 = phi float [ %6362, %6340 ], [ %6339, %6325 ]
  %6367 = call float @dx.op.binary.f32(i32 35, float %6365, float %6366)  ; FMax(a,b)
  %6368 = call float @dx.op.binary.f32(i32 35, float %6364, float %6367)  ; FMax(a,b)
  %6369 = fsub fast float 1.000000e+00, %6368
  %6370 = fmul fast float %6326, %6284
  %6371 = fmul fast float %6327, %6284
  %6372 = fmul fast float %6328, %6284
  %6373 = fsub fast float 1.000000e+00, %6220
  %6374 = bitcast float %6373 to i32
  %6375 = sitofp i32 %6374 to float
  %6376 = fmul fast float %6375, 5.000000e+00
  %6377 = fadd fast float %6376, 0xC1EFBF8940000000
  %6378 = fptosi float %6377 to i32
  %6379 = bitcast i32 %6378 to float
  %6380 = fmul fast float %6379, %4027
  %6381 = fmul fast float %6369, %6380
  %6382 = fmul fast float %6381, %5719
  %6383 = fmul fast float %6381, %5720
  %6384 = fmul fast float %6381, %5721
  %6385 = fadd fast float %6382, %6370
  %6386 = fadd fast float %6383, %6371
  %6387 = fadd fast float %6384, %6372
  %6388 = fmul fast float %6208, %4023
  %6389 = fmul fast float %6388, %6227
  %6390 = fmul fast float %6389, %6369
  %6391 = fmul fast float %6209, %4023
  %6392 = fmul fast float %6391, %6227
  %6393 = fmul fast float %6392, %6369
  %6394 = fmul fast float %6210, %4023
  %6395 = fmul fast float %6394, %6227
  %6396 = fmul fast float %6395, %6369
  %6397 = fadd fast float %6390, %6047
  %6398 = fadd fast float %6393, %6048
  %6399 = fadd fast float %6396, %6049
  %6400 = fmul fast float %6389, %6385
  %6401 = fmul fast float %6392, %6386
  %6402 = fmul fast float %6395, %6387
  %6403 = fadd fast float %6400, %6044
  %6404 = fadd fast float %6401, %6045
  %6405 = fadd fast float %6402, %6046
  br label %6122

; <label>:6406                                    ; preds = %6122
  br label %6407

; <label>:6407                                    ; preds = %6406, %6010
  %6408 = phi float [ %6012, %6010 ], [ %6123, %6406 ]
  %6409 = phi float [ %6013, %6010 ], [ %6124, %6406 ]
  %6410 = phi float [ %6014, %6010 ], [ %6125, %6406 ]
  %6411 = phi float [ %6015, %6010 ], [ %6126, %6406 ]
  %6412 = phi float [ %6016, %6010 ], [ %6127, %6406 ]
  %6413 = phi float [ %6017, %6010 ], [ %6128, %6406 ]
  %6414 = add i32 %6011, 1
  %6415 = icmp ugt i32 %6414, %6007
  br i1 %6415, label %6416, label %6010

; <label>:6416                                    ; preds = %6407
  br label %6417

; <label>:6417                                    ; preds = %6416, %5986, %5976
  %6418 = phi float [ %5977, %5976 ], [ %5977, %5986 ], [ %6408, %6416 ]
  %6419 = phi float [ %5978, %5976 ], [ %5978, %5986 ], [ %6409, %6416 ]
  %6420 = phi float [ %5979, %5976 ], [ %5979, %5986 ], [ %6410, %6416 ]
  %6421 = phi float [ %5980, %5976 ], [ %5980, %5986 ], [ %6411, %6416 ]
  %6422 = phi float [ %5981, %5976 ], [ %5981, %5986 ], [ %6412, %6416 ]
  %6423 = phi float [ %5982, %5976 ], [ %5982, %5986 ], [ %6413, %6416 ]
  %6424 = call float @dx.op.unary.f32(i32 24, float %4632)  ; Sqrt(value)
  %6425 = call float @dx.op.unary.f32(i32 24, float %4633)  ; Sqrt(value)
  %6426 = call float @dx.op.unary.f32(i32 24, float %4634)  ; Sqrt(value)
  %6427 = fmul fast float %6424, %6421
  %6428 = fmul fast float %6425, %6422
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  br i1 %183, label %6431, label %6463

; <label>:6431                                    ; preds = %6417
  %6432 = fadd fast float %6423, %4029
  %6433 = fmul fast float %6432, %4031
  %6434 = fsub fast float 1.000000e+00, %4031
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6438 = fmul fast float %6437, %6435
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6441 = fmul fast float %6440, %5725
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = fmul fast float %6442, %4653
  %6444 = fadd fast float %6428, %6427
  %6445 = fmul fast float %6430, %6444
  %6446 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6447 = fadd fast float %6438, %6433
  %6448 = fsub fast float %6447, %6441
  %6449 = fadd fast float %6448, %6443
  %6450 = fsub fast float %6449, %6446
  %6451 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6452 = fmul fast float %6450, %6451
  %6453 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  %6456 = fsub fast float %6453, %6455
  %6457 = fmul fast float %6456, 1.000000e+01
  %6458 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6459 = fadd fast float %4030, -1.000000e+00
  %6460 = fmul fast float %6458, %6459
  %6461 = fadd fast float %6460, 1.000000e+00
  %6462 = fmul fast float %6461, %6453
  br label %6479

; <label>:6463                                    ; preds = %6417
  %6464 = fmul fast float %6426, %6423
  %6465 = fmul fast float %6430, %6427
  %6466 = fmul fast float %6430, %6428
  %6467 = fmul fast float %6464, %6430
  %6468 = add i32 %43, 356
  %6469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6468, i32 undef)  ; BufferLoad(srv,index,wot)
  %6470 = extractvalue %dx.types.ResRet.i32 %6469, 0
  %6471 = and i32 %6470, 32
  %6472 = icmp eq i32 %6471, 0
  br i1 %6472, label %6479, label %6473

; <label>:6473                                    ; preds = %6463
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6476 = fmul fast float %6475, 0x3FE99999A0000000
  %6477 = fadd fast float %6475, %6465
  %6478 = fadd fast float %6476, %6467
  br label %6479

; <label>:6479                                    ; preds = %6473, %6463, %6431
  %6480 = phi float [ %6445, %6431 ], [ %6477, %6473 ], [ %6465, %6463 ]
  %6481 = phi float [ %6462, %6431 ], [ %6466, %6473 ], [ %6466, %6463 ]
  %6482 = phi float [ %6461, %6431 ], [ %6478, %6473 ], [ %6467, %6463 ]
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = fmul fast float %6484, %6419
  %6486 = fmul fast float %6484, %6420
  %6487 = fadd fast float %6419, %6418
  %6488 = select i1 %183, float %6487, float %6418
  %6489 = fmul float %6488, %6484
  %6490 = select i1 %183, float 0.000000e+00, float %6485
  %6491 = select i1 %183, float 0.000000e+00, float %6486
  %6492 = fmul fast float %6480, %6424
  %6493 = fmul fast float %6481, %6425
  %6494 = fmul fast float %6482, %6426
  %6495 = fadd fast float %6489, %6492
  %6496 = fadd fast float %6490, %6493
  %6497 = fadd fast float %6491, %6494
  %6498 = select i1 %183, float %6481, float %6496
  %6499 = select i1 %183, float %6482, float %6497
  %6500 = call float @dx.op.binary.f32(i32 36, float %6495, float 3.225500e+04)  ; FMin(a,b)
  %6501 = call float @dx.op.binary.f32(i32 36, float %6498, float 3.225500e+04)  ; FMin(a,b)
  %6502 = call float @dx.op.binary.f32(i32 36, float %6499, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6500)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6501)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6502)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

