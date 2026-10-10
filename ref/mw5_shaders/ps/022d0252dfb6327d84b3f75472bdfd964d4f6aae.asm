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
; shader hash: d45d018f5968154aa9530f8fc7cb4127
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
;                                   texture    byte         r/o     T35     t11,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;                                   texture     f32          2d     T37     t48,space2     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %69
  %77 = fmul fast float %75, %70
  %78 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %82, %61
  %84 = fmul fast float %82, %62
  %85 = fmul fast float %82, %63
  %86 = fmul fast float %62, %59
  %87 = fmul fast float %63, %58
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %63, %57
  %90 = fmul fast float %61, %59
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %61, %58
  %93 = fmul fast float %62, %57
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %88, %60
  %96 = fmul fast float %91, %60
  %97 = fmul fast float %94, %60
  %98 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %99 = bitcast float %98 to i32
  %100 = ashr i32 %99, 1
  %101 = sub nsw i32 1597250115, %100
  %102 = bitcast i32 %101 to float
  %103 = fmul fast float %102, %50
  %104 = fmul fast float %102, %51
  %105 = fmul fast float %102, %52
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %76, 2.000000e+00
  %110 = fmul fast float %109, %107
  %111 = fmul fast float %77, 2.000000e+00
  %112 = fmul fast float %111, %108
  %113 = fsub fast float 1.000000e+00, %110
  %114 = fsub fast float 1.000000e+00, %112
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %113, %116
  %120 = fmul fast float %113, %117
  %121 = fmul fast float %113, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fmul fast float %114, %123
  %127 = fmul fast float %114, %124
  %128 = fmul fast float %114, %125
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fadd fast float %126, %130
  %134 = fadd fast float %133, %119
  %135 = fadd fast float %127, %131
  %136 = fadd fast float %135, %120
  %137 = fadd fast float %128, %132
  %138 = fadd fast float %137, %121
  %139 = fmul fast float %134, %71
  %140 = fmul fast float %136, %71
  %141 = fmul fast float %138, %71
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %145 = fmul fast float %143, %76
  %146 = fmul fast float %144, %77
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = and i32 %148, 114688
  %150 = icmp ne i32 %149, 0
  %151 = select i1 %150, float %145, float 0.000000e+00
  %152 = select i1 %150, float %146, float 0.000000e+00
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %151, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fmul fast float %154, 2.550000e+02
  %156 = fptoui float %155 to i32
  %157 = select i1 %150, i32 %156, i32 0
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  %163 = and i32 %160, 4
  %164 = icmp ne i32 %163, 0
  %165 = and i1 %162, %164
  br i1 %165, label %166, label %177

; <label>:166                                     ; preds = %0
  %167 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %168 = fmul fast float %167, %77
  %169 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %170 = fmul fast float %169, %76
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %170, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = fsub fast float 1.000000e+00, %172
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = fcmp fast olt float %173, %175
  br label %180

; <label>:177                                     ; preds = %0
  %178 = icmp eq i32 %163, 0
  %179 = and i1 %162, %178
  br label %180

; <label>:180                                     ; preds = %177, %166
  %181 = phi i1 [ %176, %166 ], [ %179, %177 ]
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %76, 2.560000e+02
  %186 = frem fast float %77, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = fadd fast float %190, %184
  %193 = fadd fast float %191, %184
  %194 = call float @dx.op.unary.f32(i32 22, float %192)  ; Frc(value)
  %195 = call float @dx.op.unary.f32(i32 22, float %193)  ; Frc(value)
  %196 = add i32 %41, 156
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = shl i32 %198, 4
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %198, 7
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %198, 22
  %206 = shl nuw nsw i32 %205, 5
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = add i32 %41, 216
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = lshr i32 %210, 8
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %210, 16
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = add i32 %41, 36
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %224, 16
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = add i32 %41, 288
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %231, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = fmul fast float %233, 0x3F50624DE0000000
  %237 = fmul fast float %235, 0x3F50624DE0000000
  %238 = add i32 %41, 172
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = shl i32 %240, 4
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %240, 7
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %240, 22
  %248 = shl nuw nsw i32 %247, 5
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %41, 232
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %252, 8
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %252, 16
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = add i32 %41, 52
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %41, 304
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %275, 0x3F50624DE0000000
  %279 = fmul fast float %277, 0x3F50624DE0000000
  %280 = add i32 %41, 188
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %41, 248
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %41, 68
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %41, 320
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %41, 204
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %41, 264
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %41, 84
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %41, 336
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %359, 0x3F50624DE0000000
  %363 = fmul fast float %361, 0x3F50624DE0000000
  %364 = add i32 %41, 348
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 32
  %368 = icmp eq i32 %367, 0
  %369 = and i32 %366, 64
  %370 = icmp eq i32 %369, 0
  %371 = and i32 %366, 128
  %372 = icmp eq i32 %371, 0
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 2
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %390, label %377

; <label>:377                                     ; preds = %180
  %378 = add i32 %41, 552
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = add i32 %380, 0
  %382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %382, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = fmul fast float %384, %66
  %388 = fmul fast float %385, %67
  %389 = fmul fast float %386, %68
  br label %390

; <label>:390                                     ; preds = %377, %180
  %391 = phi float [ %68, %180 ], [ %389, %377 ]
  %392 = phi float [ %67, %180 ], [ %388, %377 ]
  %393 = phi float [ %66, %180 ], [ %387, %377 ]
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 2
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %417, label %398

; <label>:398                                     ; preds = %390
  %399 = add i32 %41, 44
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 1
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %393, float 1.000000e+00
  %405 = add i32 %41, 60
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %392, float 1.000000e+00
  %411 = add i32 %41, 76
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %391, float 1.000000e+00
  br label %417

; <label>:417                                     ; preds = %398, %390
  %418 = phi float [ %391, %390 ], [ %416, %398 ]
  %419 = phi float [ %392, %390 ], [ %410, %398 ]
  %420 = phi float [ %393, %390 ], [ %404, %398 ]
  %421 = lshr i32 %395, 20
  %422 = and i32 %421, 3
  %423 = add nuw nsw i32 %422, 1
  %424 = add i32 %41, 24
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %41, 28
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = or i32 %429, %426
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %890, label %432

; <label>:432                                     ; preds = %417
  %433 = and i32 %426, 262144
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %44, float 1.000000e+00
  %436 = select i1 %434, float %45, float 0.000000e+00
  %437 = select i1 %434, float %46, float 0.000000e+00
  %438 = select i1 %434, float %47, float 1.000000e+00
  %439 = select i1 %434, float %48, float %64
  %440 = select i1 %434, float %49, float %65
  %441 = add i32 %41, 284
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %445, 0x3F50624DE0000000
  %447 = add i32 %41, 88
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = and i32 %450, 255
  %452 = lshr i32 %449, 24
  %453 = add i32 %41, 292
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %41, 32
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 22
  %464 = shl nuw nsw i32 %463, 5
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = shl i32 %462, 4
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %462, 7
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %474 = fmul fast float %473, 1.000000e+03
  %475 = fmul fast float %236, %474
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fadd fast float %476, %226
  %478 = fmul fast float %237, %474
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fadd fast float %479, %228
  %481 = fmul fast float %446, %474
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fmul fast float %482, 0x401921FB60000000
  %484 = fadd fast float %483, %465
  %485 = call float @dx.op.unary.f32(i32 13, float %484)  ; Sin(value)
  %486 = call float @dx.op.unary.f32(i32 12, float %484)  ; Cos(value)
  %487 = fsub fast float -0.000000e+00, %485
  %488 = fadd fast float %439, -5.000000e-01
  %489 = fadd fast float %440, -5.000000e-01
  %490 = fmul fast float %457, %488
  %491 = fmul fast float %459, %489
  %492 = fadd fast float %490, 5.000000e-01
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fmul fast float %468, %492
  %495 = fmul fast float %471, %493
  %496 = fmul fast float %486, %494
  %497 = call float @dx.op.tertiary.f32(i32 46, float %487, float %495, float %496)  ; FMad(a,b,c)
  %498 = fmul fast float %485, %494
  %499 = call float @dx.op.tertiary.f32(i32 46, float %486, float %495, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %477, %497
  %501 = fadd fast float %480, %499
  %502 = icmp ugt i32 %451, 1
  %503 = icmp ugt i32 %449, 33554431
  %504 = or i1 %503, %502
  br i1 %504, label %505, label %530

; <label>:505                                     ; preds = %432
  %506 = add i32 %41, 228
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = fmul fast float %473, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = mul nuw nsw i32 %451, %452
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %512, %514
  %516 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %517 = fptoui float %516 to i32
  %518 = urem i32 %517, %451
  %519 = udiv i32 %517, %452
  %520 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %521 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %522 = uitofp i32 %518 to float
  %523 = uitofp i32 %519 to float
  %524 = fadd fast float %520, %522
  %525 = fadd fast float %521, %523
  %526 = uitofp i32 %451 to float
  %527 = uitofp i32 %452 to float
  %528 = fdiv fast float %524, %526
  %529 = fdiv fast float %525, %527
  br label %530

; <label>:530                                     ; preds = %505, %432
  %531 = phi float [ %528, %505 ], [ %500, %432 ]
  %532 = phi float [ %529, %505 ], [ %501, %432 ]
  %533 = and i32 %426, 16
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %731, label %535

; <label>:535                                     ; preds = %530
  %536 = add i32 %41, 440
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %540, %dx.types.Handle %72, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = and i32 %449, 255
  %547 = uitofp i32 %546 to float
  %548 = lshr i32 %449, 8
  %549 = and i32 %548, 255
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %545, %547
  %552 = fadd fast float %551, %550
  %553 = fmul fast float %552, 0x3F70101000000000
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 512
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %566, label %558

; <label>:558                                     ; preds = %535
  %559 = add i32 %41, 520
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = add i32 %561, 0
  %563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %563, %dx.types.Handle %73, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  br label %566

; <label>:566                                     ; preds = %558, %535
  %567 = phi float [ %565, %558 ], [ 1.000000e+00, %535 ]
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 33554432
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %678, label %572

; <label>:572                                     ; preds = %566
  %573 = add i32 %41, 224
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %575, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = add i32 %41, 228
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 24
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = and i32 %586, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = lshr i32 %586, 8
  %594 = and i32 %593, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %586, 16
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = add i32 %41, 220
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = lshr i32 %603, 24
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = and i32 %603, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %603, 8
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %603, 16
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = bitcast float %542 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %542, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %542
  %627 = fmul fast float %626, %625
  %628 = bitcast float %543 to i32
  %629 = ashr i32 %628, 1
  %630 = sub nsw i32 1597463174, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %543, 5.000000e-01
  %633 = fmul fast float %631, %631
  %634 = fmul fast float %633, %632
  %635 = fsub fast float 1.500000e+00, %634
  %636 = fmul fast float %631, %543
  %637 = fmul fast float %636, %635
  %638 = bitcast float %544 to i32
  %639 = ashr i32 %638, 1
  %640 = sub nsw i32 1597463174, %639
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %544, 5.000000e-01
  %643 = fmul fast float %641, %641
  %644 = fmul fast float %643, %642
  %645 = fsub fast float 1.500000e+00, %644
  %646 = fmul fast float %641, %544
  %647 = fmul fast float %646, %645
  %648 = fsub fast float %627, %609
  %649 = fsub fast float %637, %613
  %650 = fsub fast float %647, %617
  %651 = fmul fast float %648, %577
  %652 = fmul fast float %649, %579
  %653 = fmul fast float %650, %584
  %654 = fadd fast float %651, %592
  %655 = fadd fast float %652, %596
  %656 = fadd fast float %653, %600
  %657 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %658 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %660 = fmul fast float %657, %657
  %661 = fmul fast float %658, %658
  %662 = fmul fast float %659, %659
  %663 = fsub fast float %660, %542
  %664 = fsub fast float %661, %543
  %665 = fsub fast float %662, %544
  %666 = fmul fast float %663, %567
  %667 = fmul fast float %664, %567
  %668 = fmul fast float %665, %567
  %669 = fadd fast float %666, %542
  %670 = fadd fast float %667, %543
  %671 = fadd fast float %668, %544
  %672 = fadd fast float %589, %553
  %673 = fsub fast float %672, %606
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fsub fast float %674, %553
  %676 = fmul fast float %675, %567
  %677 = fadd fast float %676, %553
  br label %731

; <label>:678                                     ; preds = %566
  %679 = and i32 %569, 134217728
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %715, label %681

; <label>:681                                     ; preds = %678
  %682 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %683 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %684 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %685 = fadd fast float %682, -5.000000e-01
  %686 = fadd fast float %683, -5.000000e-01
  %687 = fadd fast float %684, -5.000000e-01
  %688 = fmul fast float %685, %567
  %689 = fmul fast float %686, %567
  %690 = fmul fast float %687, %567
  %691 = fadd fast float %688, 5.000000e-01
  %692 = fadd fast float %689, 5.000000e-01
  %693 = fadd fast float %690, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 24, float %542)  ; Sqrt(value)
  %695 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %697 = fmul fast float %691, 2.000000e+00
  %698 = fsub fast float 1.000000e+00, %697
  %699 = fmul fast float %698, %694
  %700 = fadd fast float %699, %697
  %701 = fmul fast float %700, %694
  %702 = fmul fast float %692, 2.000000e+00
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %695
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %705, %695
  %707 = fmul fast float %693, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %696
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %696
  %712 = fmul fast float %701, %701
  %713 = fmul fast float %706, %706
  %714 = fmul fast float %711, %711
  br label %731

; <label>:715                                     ; preds = %678
  %716 = fmul fast float %213, %213
  %717 = fmul fast float %217, %217
  %718 = fmul fast float %221, %221
  %719 = fadd fast float %716, -1.000000e+00
  %720 = fadd fast float %717, -1.000000e+00
  %721 = fadd fast float %718, -1.000000e+00
  %722 = fmul fast float %567, %719
  %723 = fmul fast float %567, %720
  %724 = fmul fast float %567, %721
  %725 = fadd fast float %722, 1.000000e+00
  %726 = fadd fast float %723, 1.000000e+00
  %727 = fadd fast float %724, 1.000000e+00
  %728 = fmul fast float %725, %542
  %729 = fmul fast float %726, %543
  %730 = fmul fast float %727, %544
  br label %731

; <label>:731                                     ; preds = %715, %681, %572, %530
  %732 = phi float [ %677, %572 ], [ %553, %681 ], [ %553, %715 ], [ 0x3FA23C0BE0000000, %530 ]
  %733 = phi float [ %669, %572 ], [ %712, %681 ], [ %728, %715 ], [ 1.000000e+00, %530 ]
  %734 = phi float [ %670, %572 ], [ %713, %681 ], [ %729, %715 ], [ 1.000000e+00, %530 ]
  %735 = phi float [ %671, %572 ], [ %714, %681 ], [ %730, %715 ], [ 1.000000e+00, %530 ]
  %736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.i32 %736, 1
  %738 = and i32 %737, 1
  %739 = icmp ne i32 %738, 0
  %740 = add i32 %41, 356
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 32
  %744 = icmp ne i32 %743, 0
  %745 = and i1 %739, %744
  %746 = select i1 %745, float 1.000000e+00, float %733
  %747 = select i1 %745, float 0x3FD3333340000000, float %734
  %748 = select i1 %745, float 0x3FD3333340000000, float %735
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 32
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %825, label %753

; <label>:753                                     ; preds = %731
  %754 = add i32 %41, 92
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %41, 456
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = add i32 %759, 0
  %761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %761, %dx.types.Handle %72, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = and i32 %756, 255
  %768 = uitofp i32 %767 to float
  %769 = lshr i32 %756, 8
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = lshr i32 %756, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101000000000
  %776 = fmul fast float %763, %768
  %777 = fadd fast float %776, %771
  %778 = fmul fast float %777, 0x3F70101000000000
  %779 = fadd fast float %764, -5.000000e-01
  %780 = fadd fast float %766, -5.000000e-01
  %781 = fmul fast float %779, %775
  %782 = fmul fast float %780, %775
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fmul fast float %783, 2.000000e+00
  %786 = fadd fast float %785, -1.000000e+00
  %787 = fmul fast float %784, 2.000000e+00
  %788 = fadd fast float %787, -1.000000e+00
  %789 = fadd fast float %786, %788
  %790 = fmul fast float %789, 5.000000e-01
  %791 = fsub fast float %786, %788
  %792 = fmul fast float %791, 5.000000e-01
  %793 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %794 = fsub fast float 1.000000e+00, %793
  %795 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %796 = fsub fast float %794, %795
  %797 = call float @dx.op.dot3.f32(i32 55, float %790, float %792, float %796, float %790, float %792, float %796)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.unary.f32(i32 25, float %797)  ; Rsqrt(value)
  %799 = fmul fast float %790, %798
  %800 = fmul fast float %792, %798
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 67108864
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %821, label %805

; <label>:805                                     ; preds = %753
  %806 = add i32 %41, 280
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %808, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = fsub fast float %778, %816
  %818 = fmul fast float %817, %810
  %819 = fadd fast float %818, %814
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  br label %821

; <label>:821                                     ; preds = %805, %753
  %822 = phi float [ %820, %805 ], [ %778, %753 ]
  %823 = call float @dx.op.dot2.f32(i32 54, float %799, float %800, float %435, float %436)  ; Dot2(ax,ay,bx,by)
  %824 = call float @dx.op.dot2.f32(i32 54, float %799, float %800, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  br label %825

; <label>:825                                     ; preds = %821, %731
  %826 = phi float [ %822, %821 ], [ 0x3FD6666660000000, %731 ]
  %827 = phi float [ %823, %821 ], [ 0.000000e+00, %731 ]
  %828 = phi float [ %824, %821 ], [ 0.000000e+00, %731 ]
  %829 = phi float [ %765, %821 ], [ 1.000000e+00, %731 ]
  %830 = add i32 %41, 160
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 22
  %834 = shl nuw nsw i32 %833, 5
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 64
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %873, label %840

; <label>:840                                     ; preds = %825
  %841 = add i32 %41, 472
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = add i32 %843, 0
  %845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 131072
  %849 = icmp eq i32 %848, 0
  %850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %845, %dx.types.Handle %72, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = fmul fast float %851, %201
  %855 = fmul fast float %852, %204
  %856 = fmul fast float %853, %207
  br i1 %849, label %863, label %857

; <label>:857                                     ; preds = %840
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = fmul fast float %859, %854
  %861 = fmul fast float %859, %855
  %862 = fmul fast float %859, %856
  br label %863

; <label>:863                                     ; preds = %857, %840
  %864 = phi float [ %860, %857 ], [ %854, %840 ]
  %865 = phi float [ %861, %857 ], [ %855, %840 ]
  %866 = phi float [ %862, %857 ], [ %856, %840 ]
  %867 = fmul fast float %864, %835
  %868 = select i1 %181, float %867, float %864
  %869 = call float @dx.op.dot3.f32(i32 55, float %868, float %865, float %866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = select i1 %181, float 0.000000e+00, float %864
  %871 = select i1 %181, float %869, float %865
  %872 = select i1 %181, float 0.000000e+00, float %866
  br label %873

; <label>:873                                     ; preds = %863, %825
  %874 = phi float [ %870, %863 ], [ 0.000000e+00, %825 ]
  %875 = phi float [ %871, %863 ], [ 0.000000e+00, %825 ]
  %876 = phi float [ %872, %863 ], [ 0.000000e+00, %825 ]
  %877 = add i32 %41, 96
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = lshr i32 %879, 8
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = call float @dx.op.dot3.f32(i32 55, float %746, float %747, float %748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = fmul fast float %884, %885
  %887 = fadd fast float %886, %881
  %888 = fmul fast float %887, 0x3F70101020000000
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  br label %890

; <label>:890                                     ; preds = %873, %417
  %891 = phi float [ 0.000000e+00, %417 ], [ %827, %873 ]
  %892 = phi float [ 0.000000e+00, %417 ], [ %828, %873 ]
  %893 = phi float [ 0.000000e+00, %417 ], [ %746, %873 ]
  %894 = phi float [ 0.000000e+00, %417 ], [ %747, %873 ]
  %895 = phi float [ 0.000000e+00, %417 ], [ %748, %873 ]
  %896 = phi float [ 0.000000e+00, %417 ], [ %874, %873 ]
  %897 = phi float [ 0.000000e+00, %417 ], [ %875, %873 ]
  %898 = phi float [ 0.000000e+00, %417 ], [ %876, %873 ]
  %899 = phi float [ 0.000000e+00, %417 ], [ %732, %873 ]
  %900 = phi float [ 0.000000e+00, %417 ], [ 1.000000e+00, %873 ]
  %901 = phi float [ 0.000000e+00, %417 ], [ %826, %873 ]
  %902 = phi float [ 0.000000e+00, %417 ], [ %829, %873 ]
  %903 = phi float [ 0.000000e+00, %417 ], [ %889, %873 ]
  br i1 %368, label %1745, label %904

; <label>:904                                     ; preds = %890
  %905 = icmp ult i32 %423, 2
  %906 = add i32 %41, 40
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %41, 44
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = or i32 %911, %908
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %1745, label %914

; <label>:914                                     ; preds = %904
  %915 = and i32 %908, 262144
  %916 = icmp ne i32 %915, 0
  %917 = select i1 %916, float %44, float 1.000000e+00
  %918 = select i1 %916, float %45, float 0.000000e+00
  %919 = select i1 %916, float %46, float 0.000000e+00
  %920 = select i1 %916, float %47, float 1.000000e+00
  %921 = select i1 %916, float %48, float %64
  %922 = select i1 %916, float %49, float %65
  %923 = add i32 %41, 300
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = lshr i32 %925, 16
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = fmul fast float %927, 0x3F50624DE0000000
  %929 = add i32 %41, 104
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 16
  %933 = and i32 %932, 255
  %934 = lshr i32 %931, 24
  %935 = add i32 %41, 308
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %937, 16
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = add i32 %41, 48
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 22
  %946 = shl nuw nsw i32 %945, 5
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = shl i32 %944, 4
  %949 = and i32 %948, 32752
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = lshr i32 %944, 7
  %952 = and i32 %951, 32752
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %956 = fmul fast float %955, 1.000000e+03
  %957 = fmul fast float %278, %956
  %958 = call float @dx.op.unary.f32(i32 22, float %957)  ; Frc(value)
  %959 = fadd fast float %958, %268
  %960 = fmul fast float %279, %956
  %961 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %962 = fadd fast float %961, %270
  %963 = fmul fast float %928, %956
  %964 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %965 = fmul fast float %964, 0x401921FB60000000
  %966 = fadd fast float %965, %947
  %967 = call float @dx.op.unary.f32(i32 13, float %966)  ; Sin(value)
  %968 = call float @dx.op.unary.f32(i32 12, float %966)  ; Cos(value)
  %969 = fsub fast float -0.000000e+00, %967
  %970 = fadd fast float %921, -5.000000e-01
  %971 = fadd fast float %922, -5.000000e-01
  %972 = fmul fast float %939, %970
  %973 = fmul fast float %941, %971
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fmul fast float %950, %974
  %977 = fmul fast float %953, %975
  %978 = fmul fast float %968, %976
  %979 = call float @dx.op.tertiary.f32(i32 46, float %969, float %977, float %978)  ; FMad(a,b,c)
  %980 = fmul fast float %967, %976
  %981 = call float @dx.op.tertiary.f32(i32 46, float %968, float %977, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %959, %979
  %983 = fadd fast float %962, %981
  %984 = icmp ugt i32 %933, 1
  %985 = icmp ugt i32 %931, 33554431
  %986 = or i1 %985, %984
  br i1 %986, label %987, label %1012

; <label>:987                                     ; preds = %914
  %988 = add i32 %41, 244
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 16
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = fmul fast float %955, %992
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = mul nuw nsw i32 %933, %934
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %994, %996
  %998 = call float @dx.op.unary.f32(i32 27, float %997)  ; Round_ni(value)
  %999 = fptoui float %998 to i32
  %1000 = urem i32 %999, %933
  %1001 = udiv i32 %999, %934
  %1002 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %1003 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %1004 = uitofp i32 %1000 to float
  %1005 = uitofp i32 %1001 to float
  %1006 = fadd fast float %1002, %1004
  %1007 = fadd fast float %1003, %1005
  %1008 = uitofp i32 %933 to float
  %1009 = uitofp i32 %934 to float
  %1010 = fdiv fast float %1006, %1008
  %1011 = fdiv fast float %1007, %1009
  br label %1012

; <label>:1012                                    ; preds = %987, %914
  %1013 = phi float [ %1010, %987 ], [ %982, %914 ]
  %1014 = phi float [ %1011, %987 ], [ %983, %914 ]
  %1015 = and i32 %908, 16777216
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1126, label %1017

; <label>:1017                                    ; preds = %1012
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fadd fast float %1019, %139
  %1023 = fadd fast float %1020, %140
  %1024 = fadd fast float %1021, %141
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = icmp eq i32 %42, 65535
  br i1 %1028, label %1123, label %1029

; <label>:1029                                    ; preds = %1017
  %1030 = lshr i32 %42, 1
  %1031 = shl i32 %1030, 2
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %42, 1
  %1035 = icmp ne i32 %1034, 0
  %1036 = lshr i32 %1033, 16
  %1037 = and i32 %1033, 65535
  %1038 = select i1 %1035, i32 %1036, i32 %1037
  %1039 = icmp eq i32 %1038, 65535
  br i1 %1039, label %1119, label %1040

; <label>:1040                                    ; preds = %1029
  %1041 = mul nuw nsw i32 %1038, 40
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = add nuw nsw i32 %1041, 12
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = add nuw nsw i32 %1041, 24
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = add nuw nsw i32 %1041, 36
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = fsub fast float %1022, %1043
  %1060 = fsub fast float %1023, %1044
  %1061 = fsub fast float %1024, %1045
  %1062 = fmul fast float %1058, %1059
  %1063 = fmul fast float %1058, %1060
  %1064 = fmul fast float %1058, %1061
  %1065 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1067 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fmul fast float %1068, %1048
  %1072 = fmul fast float %1069, %1049
  %1073 = fmul fast float %1070, %1050
  %1074 = shl i32 %42, 2
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %1076, 0
  %1078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1079 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1081 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1078, %dx.types.Handle %38, float %1079, float %1080, float %1081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = fmul fast float %1083, 1.023000e+03
  %1087 = fmul fast float %1084, 1.023000e+03
  %1088 = fmul fast float %1085, 1.023000e+03
  %1089 = fadd fast float %1086, 5.000000e-01
  %1090 = fadd fast float %1087, 5.000000e-01
  %1091 = fadd fast float %1088, 5.000000e-01
  %1092 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = fsub fast float %1062, %1065
  %1096 = fsub fast float %1063, %1066
  %1097 = fsub fast float %1064, %1067
  %1098 = fmul fast float %1095, 7.500000e-01
  %1099 = fmul fast float %1096, 7.500000e-01
  %1100 = fmul fast float %1097, 7.500000e-01
  %1101 = fadd fast float %1065, 1.250000e-01
  %1102 = fadd fast float %1101, %1098
  %1103 = fadd fast float %1102, %1092
  %1104 = fadd fast float %1066, 1.250000e-01
  %1105 = fadd fast float %1104, %1099
  %1106 = fadd fast float %1105, %1093
  %1107 = fadd fast float %1067, 1.250000e-01
  %1108 = fadd fast float %1107, %1100
  %1109 = fadd fast float %1108, %1094
  %1110 = fmul fast float %1103, %1053
  %1111 = fmul fast float %1106, %1054
  %1112 = fmul fast float %1109, %1055
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1116, %dx.types.Handle %36, float %1110, float %1111, float %1112, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  br label %1119

; <label>:1119                                    ; preds = %1040, %1029
  %1120 = phi float [ %1118, %1040 ], [ -1.000000e+00, %1029 ]
  %1121 = fadd fast float %1120, %1027
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  br label %1123

; <label>:1123                                    ; preds = %1119, %1017
  %1124 = phi float [ %1122, %1119 ], [ %1027, %1017 ]
  %1125 = fmul fast float %1124, %420
  br label %1126

; <label>:1126                                    ; preds = %1123, %1012
  %1127 = phi float [ %1125, %1123 ], [ %420, %1012 ]
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 256
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1178, label %1132

; <label>:1132                                    ; preds = %1126
  %1133 = add i32 %41, 508
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = add i32 %1135, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %73, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = add i32 %41, 116
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = shl i32 %1142, 4
  %1144 = and i32 %1143, 32752
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = lshr i32 %1142, 7
  %1147 = and i32 %1146, 32752
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = fsub fast float 1.000000e+00, %1127
  %1150 = call float @dx.op.binary.f32(i32 35, float %1149, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1151 = bitcast float %1127 to i32
  %1152 = sitofp i32 %1151 to float
  %1153 = fadd fast float %1152, 0xC1CFBF8940000000
  %1154 = fmul fast float %1148, %1153
  %1155 = fadd fast float %1154, 0x41CFBF8940000000
  %1156 = fptosi float %1155 to i32
  %1157 = bitcast i32 %1156 to float
  %1158 = bitcast float %1150 to i32
  %1159 = sitofp i32 %1158 to float
  %1160 = fadd fast float %1159, 0xC1CFBF8940000000
  %1161 = fmul fast float %1160, %1148
  %1162 = fadd fast float %1161, 0x41CFBF8940000000
  %1163 = fptosi float %1162 to i32
  %1164 = bitcast i32 %1163 to float
  %1165 = fmul fast float %1157, %1145
  %1166 = fmul fast float %1164, %1145
  %1167 = fsub fast float %1150, %1165
  %1168 = fadd fast float %1166, %1150
  %1169 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1171 = fsub fast float %1139, %1169
  %1172 = fsub fast float %1170, %1169
  %1173 = bitcast float %1172 to i32
  %1174 = sub nsw i32 2129859010, %1173
  %1175 = bitcast i32 %1174 to float
  %1176 = fmul fast float %1175, %1171
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  br label %1178

; <label>:1178                                    ; preds = %1132, %1126
  %1179 = phi float [ %1177, %1132 ], [ %1127, %1126 ]
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 128
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1200, label %1184

; <label>:1184                                    ; preds = %1178
  %1185 = add i32 %41, 492
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = add i32 %1187, 0
  %1189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1189, %dx.types.Handle %73, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 524288
  %1195 = icmp ne i32 %1194, 0
  %1196 = fcmp fast ogt float %1191, 0x3FE0101020000000
  %1197 = select i1 %1196, float 1.000000e+00, float 0.000000e+00
  %1198 = select i1 %1195, float %1197, float %1191
  %1199 = fmul fast float %1198, %1179
  br label %1200

; <label>:1200                                    ; preds = %1184, %1178
  %1201 = phi float [ %1199, %1184 ], [ %1179, %1178 ]
  %1202 = fcmp fast ult float %1201, 0x3F70101020000000
  br i1 %1202, label %1745, label %1203

; <label>:1203                                    ; preds = %1200
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 16
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1406, label %1208

; <label>:1208                                    ; preds = %1203
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = add i32 %41, 444
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %1213, 0
  %1215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1215, %dx.types.Handle %72, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1221 = and i32 %1210, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = lshr i32 %1210, 8
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1220, %1222
  %1227 = fadd fast float %1226, %1225
  %1228 = fmul fast float %1227, 0x3F70101000000000
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 512
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1241, label %1233

; <label>:1233                                    ; preds = %1208
  %1234 = add i32 %41, 524
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = add i32 %1236, 0
  %1238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1238, %dx.types.Handle %73, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  br label %1241

; <label>:1241                                    ; preds = %1233, %1208
  %1242 = phi float [ %1240, %1233 ], [ 1.000000e+00, %1208 ]
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 33554432
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1353, label %1247

; <label>:1247                                    ; preds = %1241
  %1248 = add i32 %41, 240
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 65535
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = lshr i32 %1250, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = add i32 %41, 244
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 65535
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = lshr i32 %1261, 24
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = and i32 %1261, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F70101020000000
  %1268 = lshr i32 %1261, 8
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = lshr i32 %1261, 16
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = add i32 %41, 236
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = lshr i32 %1278, 24
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = and i32 %1278, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = lshr i32 %1278, 8
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = lshr i32 %1278, 16
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = bitcast float %1217 to i32
  %1294 = ashr i32 %1293, 1
  %1295 = sub nsw i32 1597463174, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1217, 5.000000e-01
  %1298 = fmul fast float %1296, %1296
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float 1.500000e+00, %1299
  %1301 = fmul fast float %1296, %1217
  %1302 = fmul fast float %1301, %1300
  %1303 = bitcast float %1218 to i32
  %1304 = ashr i32 %1303, 1
  %1305 = sub nsw i32 1597463174, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1218, 5.000000e-01
  %1308 = fmul fast float %1306, %1306
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float 1.500000e+00, %1309
  %1311 = fmul fast float %1306, %1218
  %1312 = fmul fast float %1311, %1310
  %1313 = bitcast float %1219 to i32
  %1314 = ashr i32 %1313, 1
  %1315 = sub nsw i32 1597463174, %1314
  %1316 = bitcast i32 %1315 to float
  %1317 = fmul fast float %1219, 5.000000e-01
  %1318 = fmul fast float %1316, %1316
  %1319 = fmul fast float %1318, %1317
  %1320 = fsub fast float 1.500000e+00, %1319
  %1321 = fmul fast float %1316, %1219
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float %1302, %1284
  %1324 = fsub fast float %1312, %1288
  %1325 = fsub fast float %1322, %1292
  %1326 = fmul fast float %1323, %1252
  %1327 = fmul fast float %1324, %1254
  %1328 = fmul fast float %1325, %1259
  %1329 = fadd fast float %1326, %1267
  %1330 = fadd fast float %1327, %1271
  %1331 = fadd fast float %1328, %1275
  %1332 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1333 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = fmul fast float %1332, %1332
  %1336 = fmul fast float %1333, %1333
  %1337 = fmul fast float %1334, %1334
  %1338 = fsub fast float %1335, %1217
  %1339 = fsub fast float %1336, %1218
  %1340 = fsub fast float %1337, %1219
  %1341 = fmul fast float %1338, %1242
  %1342 = fmul fast float %1339, %1242
  %1343 = fmul fast float %1340, %1242
  %1344 = fadd fast float %1341, %1217
  %1345 = fadd fast float %1342, %1218
  %1346 = fadd fast float %1343, %1219
  %1347 = fadd fast float %1264, %1228
  %1348 = fsub fast float %1347, %1281
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fsub fast float %1349, %1228
  %1351 = fmul fast float %1350, %1242
  %1352 = fadd fast float %1351, %1228
  br label %1406

; <label>:1353                                    ; preds = %1241
  %1354 = and i32 %1244, 134217728
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1390, label %1356

; <label>:1356                                    ; preds = %1353
  %1357 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %1358 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1359 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1360 = fadd fast float %1357, -5.000000e-01
  %1361 = fadd fast float %1358, -5.000000e-01
  %1362 = fadd fast float %1359, -5.000000e-01
  %1363 = fmul fast float %1360, %1242
  %1364 = fmul fast float %1361, %1242
  %1365 = fmul fast float %1362, %1242
  %1366 = fadd fast float %1363, 5.000000e-01
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1370 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1371 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1372 = fmul fast float %1366, 2.000000e+00
  %1373 = fsub fast float 1.000000e+00, %1372
  %1374 = fmul fast float %1373, %1369
  %1375 = fadd fast float %1374, %1372
  %1376 = fmul fast float %1375, %1369
  %1377 = fmul fast float %1367, 2.000000e+00
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, %1370
  %1380 = fadd fast float %1379, %1377
  %1381 = fmul fast float %1380, %1370
  %1382 = fmul fast float %1368, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1371
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1371
  %1387 = fmul fast float %1376, %1376
  %1388 = fmul fast float %1381, %1381
  %1389 = fmul fast float %1386, %1386
  br label %1406

; <label>:1390                                    ; preds = %1353
  %1391 = fmul fast float %255, %255
  %1392 = fmul fast float %259, %259
  %1393 = fmul fast float %263, %263
  %1394 = fadd fast float %1391, -1.000000e+00
  %1395 = fadd fast float %1392, -1.000000e+00
  %1396 = fadd fast float %1393, -1.000000e+00
  %1397 = fmul fast float %1242, %1394
  %1398 = fmul fast float %1242, %1395
  %1399 = fmul fast float %1242, %1396
  %1400 = fadd fast float %1397, 1.000000e+00
  %1401 = fadd fast float %1398, 1.000000e+00
  %1402 = fadd fast float %1399, 1.000000e+00
  %1403 = fmul fast float %1400, %1217
  %1404 = fmul fast float %1401, %1218
  %1405 = fmul fast float %1402, %1219
  br label %1406

; <label>:1406                                    ; preds = %1390, %1356, %1247, %1203
  %1407 = phi float [ %1352, %1247 ], [ %1228, %1356 ], [ %1228, %1390 ], [ 0x3FA23C0BE0000000, %1203 ]
  %1408 = phi float [ %1344, %1247 ], [ %1387, %1356 ], [ %1403, %1390 ], [ 1.000000e+00, %1203 ]
  %1409 = phi float [ %1345, %1247 ], [ %1388, %1356 ], [ %1404, %1390 ], [ 1.000000e+00, %1203 ]
  %1410 = phi float [ %1346, %1247 ], [ %1389, %1356 ], [ %1405, %1390 ], [ 1.000000e+00, %1203 ]
  %1411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.i32 %1411, 1
  %1413 = and i32 %1412, 1
  %1414 = icmp ne i32 %1413, 0
  %1415 = add i32 %41, 356
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 32
  %1419 = icmp ne i32 %1418, 0
  %1420 = and i1 %1414, %1419
  %1421 = select i1 %1420, float 1.000000e+00, float %1408
  %1422 = select i1 %1420, float 0x3FD3333340000000, float %1409
  %1423 = select i1 %1420, float 0x3FD3333340000000, float %1410
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 32
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1500, label %1428

; <label>:1428                                    ; preds = %1406
  %1429 = add i32 %41, 108
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %41, 460
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %72, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  %1442 = and i32 %1431, 255
  %1443 = uitofp i32 %1442 to float
  %1444 = lshr i32 %1431, 8
  %1445 = and i32 %1444, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = lshr i32 %1431, 16
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = fmul fast float %1449, 0x3F70101000000000
  %1451 = fmul fast float %1438, %1443
  %1452 = fadd fast float %1451, %1446
  %1453 = fmul fast float %1452, 0x3F70101000000000
  %1454 = fadd fast float %1439, -5.000000e-01
  %1455 = fadd fast float %1441, -5.000000e-01
  %1456 = fmul fast float %1454, %1450
  %1457 = fmul fast float %1455, %1450
  %1458 = fadd fast float %1456, 5.000000e-01
  %1459 = fadd fast float %1457, 5.000000e-01
  %1460 = fmul fast float %1458, 2.000000e+00
  %1461 = fadd fast float %1460, -1.000000e+00
  %1462 = fmul fast float %1459, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = fadd fast float %1461, %1463
  %1465 = fmul fast float %1464, 5.000000e-01
  %1466 = fsub fast float %1461, %1463
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1469 = fsub fast float 1.000000e+00, %1468
  %1470 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1471 = fsub fast float %1469, %1470
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1467, float %1471, float %1465, float %1467, float %1471)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 25, float %1472)  ; Rsqrt(value)
  %1474 = fmul fast float %1465, %1473
  %1475 = fmul fast float %1467, %1473
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 67108864
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1496, label %1480

; <label>:1480                                    ; preds = %1428
  %1481 = add i32 %41, 296
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = lshr i32 %1483, 16
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = fsub fast float %1453, %1491
  %1493 = fmul fast float %1492, %1485
  %1494 = fadd fast float %1493, %1489
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  br label %1496

; <label>:1496                                    ; preds = %1480, %1428
  %1497 = phi float [ %1495, %1480 ], [ %1453, %1428 ]
  %1498 = call float @dx.op.dot2.f32(i32 54, float %1474, float %1475, float %917, float %918)  ; Dot2(ax,ay,bx,by)
  %1499 = call float @dx.op.dot2.f32(i32 54, float %1474, float %1475, float %919, float %920)  ; Dot2(ax,ay,bx,by)
  br label %1500

; <label>:1500                                    ; preds = %1496, %1406
  %1501 = phi float [ %1497, %1496 ], [ 0x3FD6666660000000, %1406 ]
  %1502 = phi float [ %1498, %1496 ], [ 0.000000e+00, %1406 ]
  %1503 = phi float [ %1499, %1496 ], [ 0.000000e+00, %1406 ]
  %1504 = phi float [ %1440, %1496 ], [ 1.000000e+00, %1406 ]
  %1505 = add i32 %41, 176
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = lshr i32 %1507, 22
  %1509 = shl nuw nsw i32 %1508, 5
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 64
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1548, label %1515

; <label>:1515                                    ; preds = %1500
  %1516 = add i32 %41, 476
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %1518, 0
  %1520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 131072
  %1524 = icmp eq i32 %1523, 0
  %1525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1520, %dx.types.Handle %72, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = fmul fast float %1526, %243
  %1530 = fmul fast float %1527, %246
  %1531 = fmul fast float %1528, %249
  br i1 %1524, label %1538, label %1532

; <label>:1532                                    ; preds = %1515
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = fmul fast float %1534, %1529
  %1536 = fmul fast float %1534, %1530
  %1537 = fmul fast float %1534, %1531
  br label %1538

; <label>:1538                                    ; preds = %1532, %1515
  %1539 = phi float [ %1535, %1532 ], [ %1529, %1515 ]
  %1540 = phi float [ %1536, %1532 ], [ %1530, %1515 ]
  %1541 = phi float [ %1537, %1532 ], [ %1531, %1515 ]
  %1542 = fmul fast float %1539, %1510
  %1543 = select i1 %181, float %1542, float %1539
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1540, float %1541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = select i1 %181, float 0.000000e+00, float %1539
  %1546 = select i1 %181, float %1544, float %1540
  %1547 = select i1 %181, float 0.000000e+00, float %1541
  br label %1548

; <label>:1548                                    ; preds = %1538, %1500
  %1549 = phi float [ %1545, %1538 ], [ 0.000000e+00, %1500 ]
  %1550 = phi float [ %1546, %1538 ], [ 0.000000e+00, %1500 ]
  %1551 = phi float [ %1547, %1538 ], [ 0.000000e+00, %1500 ]
  %1552 = add i32 %41, 112
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 255
  %1556 = uitofp i32 %1555 to float
  %1557 = lshr i32 %1554, 8
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = fmul fast float %1559, %1560
  %1562 = fadd fast float %1561, %1556
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  br i1 %905, label %1565, label %1573

; <label>:1565                                    ; preds = %1548
  %1566 = fsub fast float 1.000000e+00, %1201
  %1567 = fmul fast float %1566, %893
  %1568 = fmul fast float %1566, %894
  %1569 = fmul fast float %1566, %895
  %1570 = fmul fast float %1566, %896
  %1571 = fmul fast float %1566, %897
  %1572 = fmul fast float %1566, %898
  br label %1573

; <label>:1573                                    ; preds = %1565, %1548
  %1574 = phi float [ %1567, %1565 ], [ %893, %1548 ]
  %1575 = phi float [ %1568, %1565 ], [ %894, %1548 ]
  %1576 = phi float [ %1569, %1565 ], [ %895, %1548 ]
  %1577 = phi float [ %1570, %1565 ], [ %896, %1548 ]
  %1578 = phi float [ %1571, %1565 ], [ %897, %1548 ]
  %1579 = phi float [ %1572, %1565 ], [ %898, %1548 ]
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 3
  %1583 = icmp eq i32 %1582, 3
  br i1 %1583, label %1662, label %1584

; <label>:1584                                    ; preds = %1573
  %1585 = and i32 %1581, 16
  %1586 = icmp ne i32 %1585, 0
  %1587 = select i1 %1586, float %1201, float 0.000000e+00
  %1588 = icmp eq i32 %1582, 0
  br i1 %1588, label %1589, label %1617

; <label>:1589                                    ; preds = %1584
  %1590 = and i32 %1581, 64
  %1591 = icmp ne i32 %1590, 0
  %1592 = select i1 %1591, float %1201, float 0.000000e+00
  %1593 = fsub fast float %1421, %1574
  %1594 = fsub fast float %1422, %1575
  %1595 = fsub fast float %1423, %1576
  %1596 = fmul fast float %1587, %1593
  %1597 = fmul fast float %1587, %1594
  %1598 = fmul fast float %1587, %1595
  %1599 = fadd fast float %1596, %1574
  %1600 = fadd fast float %1597, %1575
  %1601 = fadd fast float %1598, %1576
  %1602 = fsub fast float %1407, %899
  %1603 = fmul fast float %1587, %1602
  %1604 = fadd fast float %1603, %899
  %1605 = fsub fast float %1549, %1577
  %1606 = fsub fast float %1550, %1578
  %1607 = fsub fast float %1551, %1579
  %1608 = fmul fast float %1592, %1605
  %1609 = fmul fast float %1592, %1606
  %1610 = fmul fast float %1592, %1607
  %1611 = fadd fast float %1608, %1577
  %1612 = fadd fast float %1609, %1578
  %1613 = fadd fast float %1610, %1579
  %1614 = fsub fast float %1564, %903
  %1615 = fmul fast float %1587, %1614
  %1616 = fadd fast float %1615, %903
  br label %1662

; <label>:1617                                    ; preds = %1584
  %1618 = icmp eq i32 %1582, 1
  br i1 %1618, label %1619, label %1632

; <label>:1619                                    ; preds = %1617
  %1620 = fadd fast float %1421, -1.000000e+00
  %1621 = fadd fast float %1422, -1.000000e+00
  %1622 = fadd fast float %1423, -1.000000e+00
  %1623 = fmul fast float %1587, %1620
  %1624 = fmul fast float %1587, %1621
  %1625 = fmul fast float %1587, %1622
  %1626 = fadd fast float %1623, 1.000000e+00
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fmul fast float %1626, %1574
  %1630 = fmul fast float %1627, %1575
  %1631 = fmul fast float %1628, %1576
  br label %1662

; <label>:1632                                    ; preds = %1617
  %1633 = icmp eq i32 %1582, 2
  br i1 %1633, label %1634, label %1662

; <label>:1634                                    ; preds = %1632
  %1635 = call float @dx.op.unary.f32(i32 24, float %1421)  ; Sqrt(value)
  %1636 = call float @dx.op.unary.f32(i32 24, float %1422)  ; Sqrt(value)
  %1637 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fmul fast float %1638, %1587
  %1642 = fmul fast float %1639, %1587
  %1643 = fmul fast float %1640, %1587
  %1644 = fadd fast float %1641, 5.000000e-01
  %1645 = fadd fast float %1642, 5.000000e-01
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fmul fast float %1644, 2.000000e+00
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = fmul fast float %1648, %1574
  %1650 = fadd fast float %1649, %1647
  %1651 = fmul fast float %1650, %1574
  %1652 = fmul fast float %1645, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1575
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1575
  %1657 = fmul fast float %1646, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1576
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1576
  br label %1662

; <label>:1662                                    ; preds = %1634, %1632, %1619, %1589, %1573
  %1663 = phi float [ %1574, %1573 ], [ %1651, %1634 ], [ %1574, %1632 ], [ %1629, %1619 ], [ %1599, %1589 ]
  %1664 = phi float [ %1575, %1573 ], [ %1656, %1634 ], [ %1575, %1632 ], [ %1630, %1619 ], [ %1600, %1589 ]
  %1665 = phi float [ %1576, %1573 ], [ %1661, %1634 ], [ %1576, %1632 ], [ %1631, %1619 ], [ %1601, %1589 ]
  %1666 = phi float [ %1577, %1573 ], [ %1577, %1634 ], [ %1577, %1632 ], [ %1577, %1619 ], [ %1611, %1589 ]
  %1667 = phi float [ %1578, %1573 ], [ %1578, %1634 ], [ %1578, %1632 ], [ %1578, %1619 ], [ %1612, %1589 ]
  %1668 = phi float [ %1579, %1573 ], [ %1579, %1634 ], [ %1579, %1632 ], [ %1579, %1619 ], [ %1613, %1589 ]
  %1669 = phi float [ %899, %1573 ], [ %899, %1634 ], [ %899, %1632 ], [ %899, %1619 ], [ %1604, %1589 ]
  %1670 = phi float [ %903, %1573 ], [ %903, %1634 ], [ %903, %1632 ], [ %903, %1619 ], [ %1616, %1589 ]
  %1671 = and i32 %1581, 12
  %1672 = icmp eq i32 %1671, 12
  br i1 %1672, label %1745, label %1673

; <label>:1673                                    ; preds = %1662
  %1674 = and i32 %1581, 2097184
  %1675 = icmp eq i32 %1674, 2097184
  %1676 = select i1 %1675, float %1201, float 0.000000e+00
  %1677 = and i32 %1581, 4194336
  %1678 = icmp eq i32 %1677, 4194336
  %1679 = select i1 %1678, float %1201, float 0.000000e+00
  %1680 = and i32 %1581, 8388640
  %1681 = icmp eq i32 %1680, 8388640
  %1682 = select i1 %1681, float %1201, float 0.000000e+00
  %1683 = icmp eq i32 %1671, 0
  br i1 %1683, label %1684, label %1697

; <label>:1684                                    ; preds = %1673
  %1685 = fsub fast float %1502, %891
  %1686 = fsub fast float %1503, %892
  %1687 = fmul fast float %1676, %1685
  %1688 = fmul fast float %1676, %1686
  %1689 = fadd fast float %1687, %891
  %1690 = fadd fast float %1688, %892
  %1691 = fsub fast float %1504, %902
  %1692 = fmul fast float %1679, %1691
  %1693 = fadd fast float %1692, %902
  %1694 = fsub fast float %1501, %901
  %1695 = fmul fast float %1682, %1694
  %1696 = fadd fast float %1695, %901
  br label %1745

; <label>:1697                                    ; preds = %1673
  %1698 = icmp eq i32 %1671, 4
  br i1 %1698, label %1699, label %1731

; <label>:1699                                    ; preds = %1697
  %1700 = fmul fast float %1676, %1502
  %1701 = fmul fast float %1676, %1503
  %1702 = fadd fast float %1700, %891
  %1703 = fadd fast float %1701, %892
  %1704 = call float @dx.op.binary.f32(i32 36, float %902, float %1504)  ; FMin(a,b)
  %1705 = fsub fast float %1704, %902
  %1706 = fmul fast float %1705, %1679
  %1707 = fadd fast float %1706, %902
  %1708 = fadd fast float %1501, %901
  %1709 = fmul fast float %1708, 0x3FF337FAE0000000
  %1710 = fmul fast float %901, %901
  %1711 = fmul fast float %1501, %1501
  %1712 = fadd fast float %1711, %1710
  %1713 = fmul fast float %1712, 0x3FE5152B00000000
  %1714 = fmul fast float %901, 0xBFCC1F85E0000000
  %1715 = fmul fast float %1714, %1501
  %1716 = fadd fast float %1715, 0xBFE1363700000000
  %1717 = fadd fast float %1716, %1709
  %1718 = fsub fast float %1717, %1713
  %1719 = fmul fast float %1708, 0x3FBA6F0D00000000
  %1720 = fmul fast float %1712, 0x3FD0432880000000
  %1721 = fmul fast float %901, 0xBFEF110800000000
  %1722 = fmul fast float %1721, %1501
  %1723 = fadd fast float %1722, 1.000000e+00
  %1724 = fsub fast float %1723, %1719
  %1725 = fadd fast float %1724, %1720
  %1726 = fdiv fast float %1718, %1725
  %1727 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  %1728 = fsub fast float %1727, %901
  %1729 = fmul fast float %1728, %1682
  %1730 = fadd fast float %1729, %901
  br label %1745

; <label>:1731                                    ; preds = %1697
  %1732 = icmp eq i32 %1671, 8
  br i1 %1732, label %1733, label %1745

; <label>:1733                                    ; preds = %1731
  %1734 = fmul fast float %1676, %1502
  %1735 = fmul fast float %1676, %1503
  %1736 = fadd fast float %1734, %891
  %1737 = fadd fast float %1735, %892
  %1738 = call float @dx.op.binary.f32(i32 36, float %902, float %1504)  ; FMin(a,b)
  %1739 = fsub fast float %1738, %902
  %1740 = fmul fast float %1739, %1679
  %1741 = fadd fast float %1740, %902
  %1742 = fsub fast float %1501, %901
  %1743 = fmul fast float %1682, %1742
  %1744 = fadd fast float %1743, %901
  br label %1745

; <label>:1745                                    ; preds = %1733, %1731, %1699, %1684, %1662, %1200, %904, %890
  %1746 = phi float [ %891, %1662 ], [ %891, %1200 ], [ %891, %890 ], [ %1736, %1733 ], [ %891, %1731 ], [ %1702, %1699 ], [ %1689, %1684 ], [ %891, %904 ]
  %1747 = phi float [ %892, %1662 ], [ %892, %1200 ], [ %892, %890 ], [ %1737, %1733 ], [ %892, %1731 ], [ %1703, %1699 ], [ %1690, %1684 ], [ %892, %904 ]
  %1748 = phi float [ %1663, %1662 ], [ %893, %1200 ], [ %893, %890 ], [ %1663, %1733 ], [ %1663, %1731 ], [ %1663, %1699 ], [ %1663, %1684 ], [ %893, %904 ]
  %1749 = phi float [ %1664, %1662 ], [ %894, %1200 ], [ %894, %890 ], [ %1664, %1733 ], [ %1664, %1731 ], [ %1664, %1699 ], [ %1664, %1684 ], [ %894, %904 ]
  %1750 = phi float [ %1665, %1662 ], [ %895, %1200 ], [ %895, %890 ], [ %1665, %1733 ], [ %1665, %1731 ], [ %1665, %1699 ], [ %1665, %1684 ], [ %895, %904 ]
  %1751 = phi float [ %1666, %1662 ], [ %896, %1200 ], [ %896, %890 ], [ %1666, %1733 ], [ %1666, %1731 ], [ %1666, %1699 ], [ %1666, %1684 ], [ %896, %904 ]
  %1752 = phi float [ %1667, %1662 ], [ %897, %1200 ], [ %897, %890 ], [ %1667, %1733 ], [ %1667, %1731 ], [ %1667, %1699 ], [ %1667, %1684 ], [ %897, %904 ]
  %1753 = phi float [ %1668, %1662 ], [ %898, %1200 ], [ %898, %890 ], [ %1668, %1733 ], [ %1668, %1731 ], [ %1668, %1699 ], [ %1668, %1684 ], [ %898, %904 ]
  %1754 = phi float [ %1669, %1662 ], [ %899, %1200 ], [ %899, %890 ], [ %1669, %1733 ], [ %1669, %1731 ], [ %1669, %1699 ], [ %1669, %1684 ], [ %899, %904 ]
  %1755 = phi float [ %901, %1662 ], [ %901, %1200 ], [ %901, %890 ], [ %1744, %1733 ], [ %901, %1731 ], [ %1730, %1699 ], [ %1696, %1684 ], [ %901, %904 ]
  %1756 = phi float [ %902, %1662 ], [ %902, %1200 ], [ %902, %890 ], [ %1741, %1733 ], [ %902, %1731 ], [ %1707, %1699 ], [ %1693, %1684 ], [ %902, %904 ]
  %1757 = phi float [ %1670, %1662 ], [ %903, %1200 ], [ %903, %890 ], [ %1670, %1733 ], [ %1670, %1731 ], [ %1670, %1699 ], [ %1670, %1684 ], [ %903, %904 ]
  br i1 %370, label %2599, label %1758

; <label>:1758                                    ; preds = %1745
  %1759 = icmp ult i32 %423, 3
  %1760 = add i32 %41, 56
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = add i32 %41, 60
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = or i32 %1765, %1762
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %2599, label %1768

; <label>:1768                                    ; preds = %1758
  %1769 = and i32 %1762, 262144
  %1770 = icmp ne i32 %1769, 0
  %1771 = select i1 %1770, float %44, float 1.000000e+00
  %1772 = select i1 %1770, float %45, float 0.000000e+00
  %1773 = select i1 %1770, float %46, float 0.000000e+00
  %1774 = select i1 %1770, float %47, float 1.000000e+00
  %1775 = select i1 %1770, float %48, float %64
  %1776 = select i1 %1770, float %49, float %65
  %1777 = add i32 %41, 316
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = lshr i32 %1779, 16
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = fmul fast float %1781, 0x3F50624DE0000000
  %1783 = add i32 %41, 120
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = lshr i32 %1785, 16
  %1787 = and i32 %1786, 255
  %1788 = lshr i32 %1785, 24
  %1789 = add i32 %41, 324
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 65535
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = lshr i32 %1791, 16
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = add i32 %41, 64
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = lshr i32 %1798, 22
  %1800 = shl nuw nsw i32 %1799, 5
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = shl i32 %1798, 4
  %1803 = and i32 %1802, 32752
  %1804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1803)  ; LegacyF16ToF32(value)
  %1805 = lshr i32 %1798, 7
  %1806 = and i32 %1805, 32752
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 3
  %1810 = fmul fast float %1809, 1.000000e+03
  %1811 = fmul fast float %320, %1810
  %1812 = call float @dx.op.unary.f32(i32 22, float %1811)  ; Frc(value)
  %1813 = fadd fast float %1812, %310
  %1814 = fmul fast float %321, %1810
  %1815 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1816 = fadd fast float %1815, %312
  %1817 = fmul fast float %1782, %1810
  %1818 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1819 = fmul fast float %1818, 0x401921FB60000000
  %1820 = fadd fast float %1819, %1801
  %1821 = call float @dx.op.unary.f32(i32 13, float %1820)  ; Sin(value)
  %1822 = call float @dx.op.unary.f32(i32 12, float %1820)  ; Cos(value)
  %1823 = fsub fast float -0.000000e+00, %1821
  %1824 = fadd fast float %1775, -5.000000e-01
  %1825 = fadd fast float %1776, -5.000000e-01
  %1826 = fmul fast float %1793, %1824
  %1827 = fmul fast float %1795, %1825
  %1828 = fadd fast float %1826, 5.000000e-01
  %1829 = fadd fast float %1827, 5.000000e-01
  %1830 = fmul fast float %1804, %1828
  %1831 = fmul fast float %1807, %1829
  %1832 = fmul fast float %1822, %1830
  %1833 = call float @dx.op.tertiary.f32(i32 46, float %1823, float %1831, float %1832)  ; FMad(a,b,c)
  %1834 = fmul fast float %1821, %1830
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %1831, float %1834)  ; FMad(a,b,c)
  %1836 = fadd fast float %1813, %1833
  %1837 = fadd fast float %1816, %1835
  %1838 = icmp ugt i32 %1787, 1
  %1839 = icmp ugt i32 %1785, 33554431
  %1840 = or i1 %1839, %1838
  br i1 %1840, label %1841, label %1866

; <label>:1841                                    ; preds = %1768
  %1842 = add i32 %41, 260
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = lshr i32 %1844, 16
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = fmul fast float %1809, %1846
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = mul nuw nsw i32 %1787, %1788
  %1850 = uitofp i32 %1849 to float
  %1851 = fmul fast float %1848, %1850
  %1852 = call float @dx.op.unary.f32(i32 27, float %1851)  ; Round_ni(value)
  %1853 = fptoui float %1852 to i32
  %1854 = urem i32 %1853, %1787
  %1855 = udiv i32 %1853, %1788
  %1856 = call float @dx.op.unary.f32(i32 22, float %1836)  ; Frc(value)
  %1857 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1858 = uitofp i32 %1854 to float
  %1859 = uitofp i32 %1855 to float
  %1860 = fadd fast float %1856, %1858
  %1861 = fadd fast float %1857, %1859
  %1862 = uitofp i32 %1787 to float
  %1863 = uitofp i32 %1788 to float
  %1864 = fdiv fast float %1860, %1862
  %1865 = fdiv fast float %1861, %1863
  br label %1866

; <label>:1866                                    ; preds = %1841, %1768
  %1867 = phi float [ %1864, %1841 ], [ %1836, %1768 ]
  %1868 = phi float [ %1865, %1841 ], [ %1837, %1768 ]
  %1869 = and i32 %1762, 16777216
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1980, label %1871

; <label>:1871                                    ; preds = %1866
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1876 = fadd fast float %1873, %139
  %1877 = fadd fast float %1874, %140
  %1878 = fadd fast float %1875, %141
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = icmp eq i32 %42, 65535
  br i1 %1882, label %1977, label %1883

; <label>:1883                                    ; preds = %1871
  %1884 = lshr i32 %42, 1
  %1885 = shl i32 %1884, 2
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %42, 1
  %1889 = icmp ne i32 %1888, 0
  %1890 = lshr i32 %1887, 16
  %1891 = and i32 %1887, 65535
  %1892 = select i1 %1889, i32 %1890, i32 %1891
  %1893 = icmp eq i32 %1892, 65535
  br i1 %1893, label %1973, label %1894

; <label>:1894                                    ; preds = %1883
  %1895 = mul nuw nsw i32 %1892, 40
  %1896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1896, 2
  %1900 = add nuw nsw i32 %1895, 12
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.f32 %1901, 2
  %1905 = add nuw nsw i32 %1895, 24
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = add nuw nsw i32 %1895, 36
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = fsub fast float %1876, %1897
  %1914 = fsub fast float %1877, %1898
  %1915 = fsub fast float %1878, %1899
  %1916 = fmul fast float %1912, %1913
  %1917 = fmul fast float %1912, %1914
  %1918 = fmul fast float %1912, %1915
  %1919 = call float @dx.op.unary.f32(i32 27, float %1916)  ; Round_ni(value)
  %1920 = call float @dx.op.unary.f32(i32 27, float %1917)  ; Round_ni(value)
  %1921 = call float @dx.op.unary.f32(i32 27, float %1918)  ; Round_ni(value)
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fmul fast float %1922, %1902
  %1926 = fmul fast float %1923, %1903
  %1927 = fmul fast float %1924, %1904
  %1928 = shl i32 %42, 2
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = add i32 %1930, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1934 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1932, %dx.types.Handle %38, float %1933, float %1934, float %1935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = fmul fast float %1937, 1.023000e+03
  %1941 = fmul fast float %1938, 1.023000e+03
  %1942 = fmul fast float %1939, 1.023000e+03
  %1943 = fadd fast float %1940, 5.000000e-01
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = call float @dx.op.unary.f32(i32 27, float %1943)  ; Round_ni(value)
  %1947 = call float @dx.op.unary.f32(i32 27, float %1944)  ; Round_ni(value)
  %1948 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1949 = fsub fast float %1916, %1919
  %1950 = fsub fast float %1917, %1920
  %1951 = fsub fast float %1918, %1921
  %1952 = fmul fast float %1949, 7.500000e-01
  %1953 = fmul fast float %1950, 7.500000e-01
  %1954 = fmul fast float %1951, 7.500000e-01
  %1955 = fadd fast float %1919, 1.250000e-01
  %1956 = fadd fast float %1955, %1952
  %1957 = fadd fast float %1956, %1946
  %1958 = fadd fast float %1920, 1.250000e-01
  %1959 = fadd fast float %1958, %1953
  %1960 = fadd fast float %1959, %1947
  %1961 = fadd fast float %1921, 1.250000e-01
  %1962 = fadd fast float %1961, %1954
  %1963 = fadd fast float %1962, %1948
  %1964 = fmul fast float %1957, %1907
  %1965 = fmul fast float %1960, %1908
  %1966 = fmul fast float %1963, %1909
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1970, %dx.types.Handle %36, float %1964, float %1965, float %1966, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  br label %1973

; <label>:1973                                    ; preds = %1894, %1883
  %1974 = phi float [ %1972, %1894 ], [ -1.000000e+00, %1883 ]
  %1975 = fadd fast float %1974, %1881
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  br label %1977

; <label>:1977                                    ; preds = %1973, %1871
  %1978 = phi float [ %1976, %1973 ], [ %1881, %1871 ]
  %1979 = fmul fast float %1978, %419
  br label %1980

; <label>:1980                                    ; preds = %1977, %1866
  %1981 = phi float [ %1979, %1977 ], [ %419, %1866 ]
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 256
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %2032, label %1986

; <label>:1986                                    ; preds = %1980
  %1987 = add i32 %41, 512
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %1989, 0
  %1991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1991, %dx.types.Handle %73, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = add i32 %41, 132
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = shl i32 %1996, 4
  %1998 = and i32 %1997, 32752
  %1999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1998)  ; LegacyF16ToF32(value)
  %2000 = lshr i32 %1996, 7
  %2001 = and i32 %2000, 32752
  %2002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2001)  ; LegacyF16ToF32(value)
  %2003 = fsub fast float 1.000000e+00, %1981
  %2004 = call float @dx.op.binary.f32(i32 35, float %2003, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2005 = bitcast float %1981 to i32
  %2006 = sitofp i32 %2005 to float
  %2007 = fadd fast float %2006, 0xC1CFBF8940000000
  %2008 = fmul fast float %2002, %2007
  %2009 = fadd fast float %2008, 0x41CFBF8940000000
  %2010 = fptosi float %2009 to i32
  %2011 = bitcast i32 %2010 to float
  %2012 = bitcast float %2004 to i32
  %2013 = sitofp i32 %2012 to float
  %2014 = fadd fast float %2013, 0xC1CFBF8940000000
  %2015 = fmul fast float %2014, %2002
  %2016 = fadd fast float %2015, 0x41CFBF8940000000
  %2017 = fptosi float %2016 to i32
  %2018 = bitcast i32 %2017 to float
  %2019 = fmul fast float %2011, %1999
  %2020 = fmul fast float %2018, %1999
  %2021 = fsub fast float %2004, %2019
  %2022 = fadd fast float %2020, %2004
  %2023 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2025 = fsub fast float %1993, %2023
  %2026 = fsub fast float %2024, %2023
  %2027 = bitcast float %2026 to i32
  %2028 = sub nsw i32 2129859010, %2027
  %2029 = bitcast i32 %2028 to float
  %2030 = fmul fast float %2029, %2025
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  br label %2032

; <label>:2032                                    ; preds = %1986, %1980
  %2033 = phi float [ %2031, %1986 ], [ %1981, %1980 ]
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = and i32 %2035, 128
  %2037 = icmp eq i32 %2036, 0
  br i1 %2037, label %2054, label %2038

; <label>:2038                                    ; preds = %2032
  %2039 = add i32 %41, 496
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = add i32 %2041, 0
  %2043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2043, %dx.types.Handle %73, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 524288
  %2049 = icmp ne i32 %2048, 0
  %2050 = fcmp fast ogt float %2045, 0x3FE0101020000000
  %2051 = select i1 %2050, float 1.000000e+00, float 0.000000e+00
  %2052 = select i1 %2049, float %2051, float %2045
  %2053 = fmul fast float %2052, %2033
  br label %2054

; <label>:2054                                    ; preds = %2038, %2032
  %2055 = phi float [ %2053, %2038 ], [ %2033, %2032 ]
  %2056 = fcmp fast ult float %2055, 0x3F70101020000000
  br i1 %2056, label %2599, label %2057

; <label>:2057                                    ; preds = %2054
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 16
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2260, label %2062

; <label>:2062                                    ; preds = %2057
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %41, 448
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %2067, 0
  %2069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2069, %dx.types.Handle %72, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.ResRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.ResRet.f32 %2070, 2
  %2074 = extractvalue %dx.types.ResRet.f32 %2070, 3
  %2075 = and i32 %2064, 255
  %2076 = uitofp i32 %2075 to float
  %2077 = lshr i32 %2064, 8
  %2078 = and i32 %2077, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2074, %2076
  %2081 = fadd fast float %2080, %2079
  %2082 = fmul fast float %2081, 0x3F70101000000000
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 512
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2095, label %2087

; <label>:2087                                    ; preds = %2062
  %2088 = add i32 %41, 528
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = add i32 %2090, 0
  %2092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2092, %dx.types.Handle %73, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  br label %2095

; <label>:2095                                    ; preds = %2087, %2062
  %2096 = phi float [ %2094, %2087 ], [ 1.000000e+00, %2062 ]
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = and i32 %2098, 33554432
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2207, label %2101

; <label>:2101                                    ; preds = %2095
  %2102 = add i32 %41, 256
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 65535
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = lshr i32 %2104, 16
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = add i32 %41, 260
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 65535
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 24
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = and i32 %2115, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2120, 0x3F70101020000000
  %2122 = lshr i32 %2115, 8
  %2123 = and i32 %2122, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = lshr i32 %2115, 16
  %2127 = and i32 %2126, 255
  %2128 = uitofp i32 %2127 to float
  %2129 = fmul fast float %2128, 0x3F70101020000000
  %2130 = add i32 %41, 252
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = lshr i32 %2132, 24
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = and i32 %2132, 255
  %2137 = uitofp i32 %2136 to float
  %2138 = fmul fast float %2137, 0x3F70101020000000
  %2139 = lshr i32 %2132, 8
  %2140 = and i32 %2139, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F70101020000000
  %2143 = lshr i32 %2132, 16
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = fmul fast float %2145, 0x3F70101020000000
  %2147 = bitcast float %2071 to i32
  %2148 = ashr i32 %2147, 1
  %2149 = sub nsw i32 1597463174, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2071, 5.000000e-01
  %2152 = fmul fast float %2150, %2150
  %2153 = fmul fast float %2152, %2151
  %2154 = fsub fast float 1.500000e+00, %2153
  %2155 = fmul fast float %2150, %2071
  %2156 = fmul fast float %2155, %2154
  %2157 = bitcast float %2072 to i32
  %2158 = ashr i32 %2157, 1
  %2159 = sub nsw i32 1597463174, %2158
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2072, 5.000000e-01
  %2162 = fmul fast float %2160, %2160
  %2163 = fmul fast float %2162, %2161
  %2164 = fsub fast float 1.500000e+00, %2163
  %2165 = fmul fast float %2160, %2072
  %2166 = fmul fast float %2165, %2164
  %2167 = bitcast float %2073 to i32
  %2168 = ashr i32 %2167, 1
  %2169 = sub nsw i32 1597463174, %2168
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2073, 5.000000e-01
  %2172 = fmul fast float %2170, %2170
  %2173 = fmul fast float %2172, %2171
  %2174 = fsub fast float 1.500000e+00, %2173
  %2175 = fmul fast float %2170, %2073
  %2176 = fmul fast float %2175, %2174
  %2177 = fsub fast float %2156, %2138
  %2178 = fsub fast float %2166, %2142
  %2179 = fsub fast float %2176, %2146
  %2180 = fmul fast float %2177, %2106
  %2181 = fmul fast float %2178, %2108
  %2182 = fmul fast float %2179, %2113
  %2183 = fadd fast float %2180, %2121
  %2184 = fadd fast float %2181, %2125
  %2185 = fadd fast float %2182, %2129
  %2186 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = fmul fast float %2186, %2186
  %2190 = fmul fast float %2187, %2187
  %2191 = fmul fast float %2188, %2188
  %2192 = fsub fast float %2189, %2071
  %2193 = fsub fast float %2190, %2072
  %2194 = fsub fast float %2191, %2073
  %2195 = fmul fast float %2192, %2096
  %2196 = fmul fast float %2193, %2096
  %2197 = fmul fast float %2194, %2096
  %2198 = fadd fast float %2195, %2071
  %2199 = fadd fast float %2196, %2072
  %2200 = fadd fast float %2197, %2073
  %2201 = fadd fast float %2118, %2082
  %2202 = fsub fast float %2201, %2135
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fsub fast float %2203, %2082
  %2205 = fmul fast float %2204, %2096
  %2206 = fadd fast float %2205, %2082
  br label %2260

; <label>:2207                                    ; preds = %2095
  %2208 = and i32 %2098, 134217728
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2244, label %2210

; <label>:2210                                    ; preds = %2207
  %2211 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %2212 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2213 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2214 = fadd fast float %2211, -5.000000e-01
  %2215 = fadd fast float %2212, -5.000000e-01
  %2216 = fadd fast float %2213, -5.000000e-01
  %2217 = fmul fast float %2214, %2096
  %2218 = fmul fast float %2215, %2096
  %2219 = fmul fast float %2216, %2096
  %2220 = fadd fast float %2217, 5.000000e-01
  %2221 = fadd fast float %2218, 5.000000e-01
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = call float @dx.op.unary.f32(i32 24, float %2071)  ; Sqrt(value)
  %2224 = call float @dx.op.unary.f32(i32 24, float %2072)  ; Sqrt(value)
  %2225 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2226 = fmul fast float %2220, 2.000000e+00
  %2227 = fsub fast float 1.000000e+00, %2226
  %2228 = fmul fast float %2227, %2223
  %2229 = fadd fast float %2228, %2226
  %2230 = fmul fast float %2229, %2223
  %2231 = fmul fast float %2221, 2.000000e+00
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2232, %2224
  %2234 = fadd fast float %2233, %2231
  %2235 = fmul fast float %2234, %2224
  %2236 = fmul fast float %2222, 2.000000e+00
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2237, %2225
  %2239 = fadd fast float %2238, %2236
  %2240 = fmul fast float %2239, %2225
  %2241 = fmul fast float %2230, %2230
  %2242 = fmul fast float %2235, %2235
  %2243 = fmul fast float %2240, %2240
  br label %2260

; <label>:2244                                    ; preds = %2207
  %2245 = fmul fast float %297, %297
  %2246 = fmul fast float %301, %301
  %2247 = fmul fast float %305, %305
  %2248 = fadd fast float %2245, -1.000000e+00
  %2249 = fadd fast float %2246, -1.000000e+00
  %2250 = fadd fast float %2247, -1.000000e+00
  %2251 = fmul fast float %2096, %2248
  %2252 = fmul fast float %2096, %2249
  %2253 = fmul fast float %2096, %2250
  %2254 = fadd fast float %2251, 1.000000e+00
  %2255 = fadd fast float %2252, 1.000000e+00
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fmul fast float %2254, %2071
  %2258 = fmul fast float %2255, %2072
  %2259 = fmul fast float %2256, %2073
  br label %2260

; <label>:2260                                    ; preds = %2244, %2210, %2101, %2057
  %2261 = phi float [ %2206, %2101 ], [ %2082, %2210 ], [ %2082, %2244 ], [ 0x3FA23C0BE0000000, %2057 ]
  %2262 = phi float [ %2198, %2101 ], [ %2241, %2210 ], [ %2257, %2244 ], [ 1.000000e+00, %2057 ]
  %2263 = phi float [ %2199, %2101 ], [ %2242, %2210 ], [ %2258, %2244 ], [ 1.000000e+00, %2057 ]
  %2264 = phi float [ %2200, %2101 ], [ %2243, %2210 ], [ %2259, %2244 ], [ 1.000000e+00, %2057 ]
  %2265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.i32 %2265, 1
  %2267 = and i32 %2266, 1
  %2268 = icmp ne i32 %2267, 0
  %2269 = add i32 %41, 356
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 32
  %2273 = icmp ne i32 %2272, 0
  %2274 = and i1 %2268, %2273
  %2275 = select i1 %2274, float 1.000000e+00, float %2262
  %2276 = select i1 %2274, float 0x3FD3333340000000, float %2263
  %2277 = select i1 %2274, float 0x3FD3333340000000, float %2264
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 32
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2354, label %2282

; <label>:2282                                    ; preds = %2260
  %2283 = add i32 %41, 124
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = add i32 %41, 464
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = add i32 %2288, 0
  %2290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2290, %dx.types.Handle %72, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.f32 %2291, 1
  %2294 = extractvalue %dx.types.ResRet.f32 %2291, 2
  %2295 = extractvalue %dx.types.ResRet.f32 %2291, 3
  %2296 = and i32 %2285, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = lshr i32 %2285, 8
  %2299 = and i32 %2298, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = lshr i32 %2285, 16
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101000000000
  %2305 = fmul fast float %2292, %2297
  %2306 = fadd fast float %2305, %2300
  %2307 = fmul fast float %2306, 0x3F70101000000000
  %2308 = fadd fast float %2293, -5.000000e-01
  %2309 = fadd fast float %2295, -5.000000e-01
  %2310 = fmul fast float %2308, %2304
  %2311 = fmul fast float %2309, %2304
  %2312 = fadd fast float %2310, 5.000000e-01
  %2313 = fadd fast float %2311, 5.000000e-01
  %2314 = fmul fast float %2312, 2.000000e+00
  %2315 = fadd fast float %2314, -1.000000e+00
  %2316 = fmul fast float %2313, 2.000000e+00
  %2317 = fadd fast float %2316, -1.000000e+00
  %2318 = fadd fast float %2315, %2317
  %2319 = fmul fast float %2318, 5.000000e-01
  %2320 = fsub fast float %2315, %2317
  %2321 = fmul fast float %2320, 5.000000e-01
  %2322 = call float @dx.op.unary.f32(i32 6, float %2319)  ; FAbs(value)
  %2323 = fsub fast float 1.000000e+00, %2322
  %2324 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2325 = fsub fast float %2323, %2324
  %2326 = call float @dx.op.dot3.f32(i32 55, float %2319, float %2321, float %2325, float %2319, float %2321, float %2325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2327 = call float @dx.op.unary.f32(i32 25, float %2326)  ; Rsqrt(value)
  %2328 = fmul fast float %2319, %2327
  %2329 = fmul fast float %2321, %2327
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 67108864
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2350, label %2334

; <label>:2334                                    ; preds = %2282
  %2335 = add i32 %41, 312
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = lshr i32 %2337, 16
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = fsub fast float %2307, %2345
  %2347 = fmul fast float %2346, %2339
  %2348 = fadd fast float %2347, %2343
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  br label %2350

; <label>:2350                                    ; preds = %2334, %2282
  %2351 = phi float [ %2349, %2334 ], [ %2307, %2282 ]
  %2352 = call float @dx.op.dot2.f32(i32 54, float %2328, float %2329, float %1771, float %1772)  ; Dot2(ax,ay,bx,by)
  %2353 = call float @dx.op.dot2.f32(i32 54, float %2328, float %2329, float %1773, float %1774)  ; Dot2(ax,ay,bx,by)
  br label %2354

; <label>:2354                                    ; preds = %2350, %2260
  %2355 = phi float [ %2351, %2350 ], [ 0x3FD6666660000000, %2260 ]
  %2356 = phi float [ %2352, %2350 ], [ 0.000000e+00, %2260 ]
  %2357 = phi float [ %2353, %2350 ], [ 0.000000e+00, %2260 ]
  %2358 = phi float [ %2294, %2350 ], [ 1.000000e+00, %2260 ]
  %2359 = add i32 %41, 192
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = lshr i32 %2361, 22
  %2363 = shl nuw nsw i32 %2362, 5
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 64
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2402, label %2369

; <label>:2369                                    ; preds = %2354
  %2370 = add i32 %41, 480
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = add i32 %2372, 0
  %2374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 131072
  %2378 = icmp eq i32 %2377, 0
  %2379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2374, %dx.types.Handle %72, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.ResRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.ResRet.f32 %2379, 2
  %2383 = fmul fast float %2380, %285
  %2384 = fmul fast float %2381, %288
  %2385 = fmul fast float %2382, %291
  br i1 %2378, label %2392, label %2386

; <label>:2386                                    ; preds = %2369
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = fmul fast float %2388, %2383
  %2390 = fmul fast float %2388, %2384
  %2391 = fmul fast float %2388, %2385
  br label %2392

; <label>:2392                                    ; preds = %2386, %2369
  %2393 = phi float [ %2389, %2386 ], [ %2383, %2369 ]
  %2394 = phi float [ %2390, %2386 ], [ %2384, %2369 ]
  %2395 = phi float [ %2391, %2386 ], [ %2385, %2369 ]
  %2396 = fmul fast float %2393, %2364
  %2397 = select i1 %181, float %2396, float %2393
  %2398 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2394, float %2395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = select i1 %181, float 0.000000e+00, float %2393
  %2400 = select i1 %181, float %2398, float %2394
  %2401 = select i1 %181, float 0.000000e+00, float %2395
  br label %2402

; <label>:2402                                    ; preds = %2392, %2354
  %2403 = phi float [ %2399, %2392 ], [ 0.000000e+00, %2354 ]
  %2404 = phi float [ %2400, %2392 ], [ 0.000000e+00, %2354 ]
  %2405 = phi float [ %2401, %2392 ], [ 0.000000e+00, %2354 ]
  %2406 = add i32 %41, 128
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = and i32 %2408, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = lshr i32 %2408, 8
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = fmul fast float %2413, %2414
  %2416 = fadd fast float %2415, %2410
  %2417 = fmul fast float %2416, 0x3F70101020000000
  %2418 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  br i1 %1759, label %2419, label %2427

; <label>:2419                                    ; preds = %2402
  %2420 = fsub fast float 1.000000e+00, %2055
  %2421 = fmul fast float %2420, %1748
  %2422 = fmul fast float %2420, %1749
  %2423 = fmul fast float %2420, %1750
  %2424 = fmul fast float %2420, %1751
  %2425 = fmul fast float %2420, %1752
  %2426 = fmul fast float %2420, %1753
  br label %2427

; <label>:2427                                    ; preds = %2419, %2402
  %2428 = phi float [ %2421, %2419 ], [ %1748, %2402 ]
  %2429 = phi float [ %2422, %2419 ], [ %1749, %2402 ]
  %2430 = phi float [ %2423, %2419 ], [ %1750, %2402 ]
  %2431 = phi float [ %2424, %2419 ], [ %1751, %2402 ]
  %2432 = phi float [ %2425, %2419 ], [ %1752, %2402 ]
  %2433 = phi float [ %2426, %2419 ], [ %1753, %2402 ]
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %2435, 3
  %2437 = icmp eq i32 %2436, 3
  br i1 %2437, label %2516, label %2438

; <label>:2438                                    ; preds = %2427
  %2439 = and i32 %2435, 16
  %2440 = icmp ne i32 %2439, 0
  %2441 = select i1 %2440, float %2055, float 0.000000e+00
  %2442 = icmp eq i32 %2436, 0
  br i1 %2442, label %2443, label %2471

; <label>:2443                                    ; preds = %2438
  %2444 = and i32 %2435, 64
  %2445 = icmp ne i32 %2444, 0
  %2446 = select i1 %2445, float %2055, float 0.000000e+00
  %2447 = fsub fast float %2275, %2428
  %2448 = fsub fast float %2276, %2429
  %2449 = fsub fast float %2277, %2430
  %2450 = fmul fast float %2441, %2447
  %2451 = fmul fast float %2441, %2448
  %2452 = fmul fast float %2441, %2449
  %2453 = fadd fast float %2450, %2428
  %2454 = fadd fast float %2451, %2429
  %2455 = fadd fast float %2452, %2430
  %2456 = fsub fast float %2261, %1754
  %2457 = fmul fast float %2441, %2456
  %2458 = fadd fast float %2457, %1754
  %2459 = fsub fast float %2403, %2431
  %2460 = fsub fast float %2404, %2432
  %2461 = fsub fast float %2405, %2433
  %2462 = fmul fast float %2446, %2459
  %2463 = fmul fast float %2446, %2460
  %2464 = fmul fast float %2446, %2461
  %2465 = fadd fast float %2462, %2431
  %2466 = fadd fast float %2463, %2432
  %2467 = fadd fast float %2464, %2433
  %2468 = fsub fast float %2418, %1757
  %2469 = fmul fast float %2441, %2468
  %2470 = fadd fast float %2469, %1757
  br label %2516

; <label>:2471                                    ; preds = %2438
  %2472 = icmp eq i32 %2436, 1
  br i1 %2472, label %2473, label %2486

; <label>:2473                                    ; preds = %2471
  %2474 = fadd fast float %2275, -1.000000e+00
  %2475 = fadd fast float %2276, -1.000000e+00
  %2476 = fadd fast float %2277, -1.000000e+00
  %2477 = fmul fast float %2441, %2474
  %2478 = fmul fast float %2441, %2475
  %2479 = fmul fast float %2441, %2476
  %2480 = fadd fast float %2477, 1.000000e+00
  %2481 = fadd fast float %2478, 1.000000e+00
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fmul fast float %2480, %2428
  %2484 = fmul fast float %2481, %2429
  %2485 = fmul fast float %2482, %2430
  br label %2516

; <label>:2486                                    ; preds = %2471
  %2487 = icmp eq i32 %2436, 2
  br i1 %2487, label %2488, label %2516

; <label>:2488                                    ; preds = %2486
  %2489 = call float @dx.op.unary.f32(i32 24, float %2275)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %2276)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2492 = fadd fast float %2489, -5.000000e-01
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fmul fast float %2492, %2441
  %2496 = fmul fast float %2493, %2441
  %2497 = fmul fast float %2494, %2441
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fmul fast float %2498, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2428
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2428
  %2506 = fmul fast float %2499, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2429
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2429
  %2511 = fmul fast float %2500, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2430
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2430
  br label %2516

; <label>:2516                                    ; preds = %2488, %2486, %2473, %2443, %2427
  %2517 = phi float [ %2428, %2427 ], [ %2505, %2488 ], [ %2428, %2486 ], [ %2483, %2473 ], [ %2453, %2443 ]
  %2518 = phi float [ %2429, %2427 ], [ %2510, %2488 ], [ %2429, %2486 ], [ %2484, %2473 ], [ %2454, %2443 ]
  %2519 = phi float [ %2430, %2427 ], [ %2515, %2488 ], [ %2430, %2486 ], [ %2485, %2473 ], [ %2455, %2443 ]
  %2520 = phi float [ %2431, %2427 ], [ %2431, %2488 ], [ %2431, %2486 ], [ %2431, %2473 ], [ %2465, %2443 ]
  %2521 = phi float [ %2432, %2427 ], [ %2432, %2488 ], [ %2432, %2486 ], [ %2432, %2473 ], [ %2466, %2443 ]
  %2522 = phi float [ %2433, %2427 ], [ %2433, %2488 ], [ %2433, %2486 ], [ %2433, %2473 ], [ %2467, %2443 ]
  %2523 = phi float [ %1754, %2427 ], [ %1754, %2488 ], [ %1754, %2486 ], [ %1754, %2473 ], [ %2458, %2443 ]
  %2524 = phi float [ %1757, %2427 ], [ %1757, %2488 ], [ %1757, %2486 ], [ %1757, %2473 ], [ %2470, %2443 ]
  %2525 = and i32 %2435, 12
  %2526 = icmp eq i32 %2525, 12
  br i1 %2526, label %2599, label %2527

; <label>:2527                                    ; preds = %2516
  %2528 = and i32 %2435, 2097184
  %2529 = icmp eq i32 %2528, 2097184
  %2530 = select i1 %2529, float %2055, float 0.000000e+00
  %2531 = and i32 %2435, 4194336
  %2532 = icmp eq i32 %2531, 4194336
  %2533 = select i1 %2532, float %2055, float 0.000000e+00
  %2534 = and i32 %2435, 8388640
  %2535 = icmp eq i32 %2534, 8388640
  %2536 = select i1 %2535, float %2055, float 0.000000e+00
  %2537 = icmp eq i32 %2525, 0
  br i1 %2537, label %2538, label %2551

; <label>:2538                                    ; preds = %2527
  %2539 = fsub fast float %2356, %1746
  %2540 = fsub fast float %2357, %1747
  %2541 = fmul fast float %2530, %2539
  %2542 = fmul fast float %2530, %2540
  %2543 = fadd fast float %2541, %1746
  %2544 = fadd fast float %2542, %1747
  %2545 = fsub fast float %2358, %1756
  %2546 = fmul fast float %2533, %2545
  %2547 = fadd fast float %2546, %1756
  %2548 = fsub fast float %2355, %1755
  %2549 = fmul fast float %2536, %2548
  %2550 = fadd fast float %2549, %1755
  br label %2599

; <label>:2551                                    ; preds = %2527
  %2552 = icmp eq i32 %2525, 4
  br i1 %2552, label %2553, label %2585

; <label>:2553                                    ; preds = %2551
  %2554 = fmul fast float %2530, %2356
  %2555 = fmul fast float %2530, %2357
  %2556 = fadd fast float %2554, %1746
  %2557 = fadd fast float %2555, %1747
  %2558 = call float @dx.op.binary.f32(i32 36, float %1756, float %2358)  ; FMin(a,b)
  %2559 = fsub fast float %2558, %1756
  %2560 = fmul fast float %2559, %2533
  %2561 = fadd fast float %2560, %1756
  %2562 = fadd fast float %2355, %1755
  %2563 = fmul fast float %2562, 0x3FF337FAE0000000
  %2564 = fmul fast float %1755, %1755
  %2565 = fmul fast float %2355, %2355
  %2566 = fadd fast float %2565, %2564
  %2567 = fmul fast float %2566, 0x3FE5152B00000000
  %2568 = fmul fast float %1755, 0xBFCC1F85E0000000
  %2569 = fmul fast float %2568, %2355
  %2570 = fadd fast float %2569, 0xBFE1363700000000
  %2571 = fadd fast float %2570, %2563
  %2572 = fsub fast float %2571, %2567
  %2573 = fmul fast float %2562, 0x3FBA6F0D00000000
  %2574 = fmul fast float %2566, 0x3FD0432880000000
  %2575 = fmul fast float %1755, 0xBFEF110800000000
  %2576 = fmul fast float %2575, %2355
  %2577 = fadd fast float %2576, 1.000000e+00
  %2578 = fsub fast float %2577, %2573
  %2579 = fadd fast float %2578, %2574
  %2580 = fdiv fast float %2572, %2579
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2582 = fsub fast float %2581, %1755
  %2583 = fmul fast float %2582, %2536
  %2584 = fadd fast float %2583, %1755
  br label %2599

; <label>:2585                                    ; preds = %2551
  %2586 = icmp eq i32 %2525, 8
  br i1 %2586, label %2587, label %2599

; <label>:2587                                    ; preds = %2585
  %2588 = fmul fast float %2530, %2356
  %2589 = fmul fast float %2530, %2357
  %2590 = fadd fast float %2588, %1746
  %2591 = fadd fast float %2589, %1747
  %2592 = call float @dx.op.binary.f32(i32 36, float %1756, float %2358)  ; FMin(a,b)
  %2593 = fsub fast float %2592, %1756
  %2594 = fmul fast float %2593, %2533
  %2595 = fadd fast float %2594, %1756
  %2596 = fsub fast float %2355, %1755
  %2597 = fmul fast float %2536, %2596
  %2598 = fadd fast float %2597, %1755
  br label %2599

; <label>:2599                                    ; preds = %2587, %2585, %2553, %2538, %2516, %2054, %1758, %1745
  %2600 = phi float [ %1746, %2516 ], [ %1746, %2054 ], [ %1746, %1745 ], [ %2590, %2587 ], [ %1746, %2585 ], [ %2556, %2553 ], [ %2543, %2538 ], [ %1746, %1758 ]
  %2601 = phi float [ %1747, %2516 ], [ %1747, %2054 ], [ %1747, %1745 ], [ %2591, %2587 ], [ %1747, %2585 ], [ %2557, %2553 ], [ %2544, %2538 ], [ %1747, %1758 ]
  %2602 = phi float [ %2517, %2516 ], [ %1748, %2054 ], [ %1748, %1745 ], [ %2517, %2587 ], [ %2517, %2585 ], [ %2517, %2553 ], [ %2517, %2538 ], [ %1748, %1758 ]
  %2603 = phi float [ %2518, %2516 ], [ %1749, %2054 ], [ %1749, %1745 ], [ %2518, %2587 ], [ %2518, %2585 ], [ %2518, %2553 ], [ %2518, %2538 ], [ %1749, %1758 ]
  %2604 = phi float [ %2519, %2516 ], [ %1750, %2054 ], [ %1750, %1745 ], [ %2519, %2587 ], [ %2519, %2585 ], [ %2519, %2553 ], [ %2519, %2538 ], [ %1750, %1758 ]
  %2605 = phi float [ %2520, %2516 ], [ %1751, %2054 ], [ %1751, %1745 ], [ %2520, %2587 ], [ %2520, %2585 ], [ %2520, %2553 ], [ %2520, %2538 ], [ %1751, %1758 ]
  %2606 = phi float [ %2521, %2516 ], [ %1752, %2054 ], [ %1752, %1745 ], [ %2521, %2587 ], [ %2521, %2585 ], [ %2521, %2553 ], [ %2521, %2538 ], [ %1752, %1758 ]
  %2607 = phi float [ %2522, %2516 ], [ %1753, %2054 ], [ %1753, %1745 ], [ %2522, %2587 ], [ %2522, %2585 ], [ %2522, %2553 ], [ %2522, %2538 ], [ %1753, %1758 ]
  %2608 = phi float [ %2523, %2516 ], [ %1754, %2054 ], [ %1754, %1745 ], [ %2523, %2587 ], [ %2523, %2585 ], [ %2523, %2553 ], [ %2523, %2538 ], [ %1754, %1758 ]
  %2609 = phi float [ %1755, %2516 ], [ %1755, %2054 ], [ %1755, %1745 ], [ %2598, %2587 ], [ %1755, %2585 ], [ %2584, %2553 ], [ %2550, %2538 ], [ %1755, %1758 ]
  %2610 = phi float [ %1756, %2516 ], [ %1756, %2054 ], [ %1756, %1745 ], [ %2595, %2587 ], [ %1756, %2585 ], [ %2561, %2553 ], [ %2547, %2538 ], [ %1756, %1758 ]
  %2611 = phi float [ %2524, %2516 ], [ %1757, %2054 ], [ %1757, %1745 ], [ %2524, %2587 ], [ %2524, %2585 ], [ %2524, %2553 ], [ %2524, %2538 ], [ %1757, %1758 ]
  br i1 %372, label %3453, label %2612

; <label>:2612                                    ; preds = %2599
  %2613 = icmp ult i32 %423, 4
  %2614 = add i32 %41, 72
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = add i32 %41, 76
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = or i32 %2619, %2616
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %3453, label %2622

; <label>:2622                                    ; preds = %2612
  %2623 = and i32 %2616, 262144
  %2624 = icmp ne i32 %2623, 0
  %2625 = select i1 %2624, float %44, float 1.000000e+00
  %2626 = select i1 %2624, float %45, float 0.000000e+00
  %2627 = select i1 %2624, float %46, float 0.000000e+00
  %2628 = select i1 %2624, float %47, float 1.000000e+00
  %2629 = select i1 %2624, float %48, float %64
  %2630 = select i1 %2624, float %49, float %65
  %2631 = add i32 %41, 332
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 16
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = fmul fast float %2635, 0x3F50624DE0000000
  %2637 = add i32 %41, 136
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 16
  %2641 = and i32 %2640, 255
  %2642 = lshr i32 %2639, 24
  %2643 = add i32 %41, 340
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 65535
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = lshr i32 %2645, 16
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = add i32 %41, 80
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = lshr i32 %2652, 22
  %2654 = shl nuw nsw i32 %2653, 5
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = shl i32 %2652, 4
  %2657 = and i32 %2656, 32752
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = lshr i32 %2652, 7
  %2660 = and i32 %2659, 32752
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 3
  %2664 = fmul fast float %2663, 1.000000e+03
  %2665 = fmul fast float %362, %2664
  %2666 = call float @dx.op.unary.f32(i32 22, float %2665)  ; Frc(value)
  %2667 = fadd fast float %2666, %352
  %2668 = fmul fast float %363, %2664
  %2669 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2670 = fadd fast float %2669, %354
  %2671 = fmul fast float %2636, %2664
  %2672 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2673 = fmul fast float %2672, 0x401921FB60000000
  %2674 = fadd fast float %2673, %2655
  %2675 = call float @dx.op.unary.f32(i32 13, float %2674)  ; Sin(value)
  %2676 = call float @dx.op.unary.f32(i32 12, float %2674)  ; Cos(value)
  %2677 = fsub fast float -0.000000e+00, %2675
  %2678 = fadd fast float %2629, -5.000000e-01
  %2679 = fadd fast float %2630, -5.000000e-01
  %2680 = fmul fast float %2647, %2678
  %2681 = fmul fast float %2649, %2679
  %2682 = fadd fast float %2680, 5.000000e-01
  %2683 = fadd fast float %2681, 5.000000e-01
  %2684 = fmul fast float %2658, %2682
  %2685 = fmul fast float %2661, %2683
  %2686 = fmul fast float %2676, %2684
  %2687 = call float @dx.op.tertiary.f32(i32 46, float %2677, float %2685, float %2686)  ; FMad(a,b,c)
  %2688 = fmul fast float %2675, %2684
  %2689 = call float @dx.op.tertiary.f32(i32 46, float %2676, float %2685, float %2688)  ; FMad(a,b,c)
  %2690 = fadd fast float %2667, %2687
  %2691 = fadd fast float %2670, %2689
  %2692 = icmp ugt i32 %2641, 1
  %2693 = icmp ugt i32 %2639, 33554431
  %2694 = or i1 %2693, %2692
  br i1 %2694, label %2695, label %2720

; <label>:2695                                    ; preds = %2622
  %2696 = add i32 %41, 276
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = lshr i32 %2698, 16
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = fmul fast float %2663, %2700
  %2702 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2703 = mul nuw nsw i32 %2641, %2642
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2702, %2704
  %2706 = call float @dx.op.unary.f32(i32 27, float %2705)  ; Round_ni(value)
  %2707 = fptoui float %2706 to i32
  %2708 = urem i32 %2707, %2641
  %2709 = udiv i32 %2707, %2642
  %2710 = call float @dx.op.unary.f32(i32 22, float %2690)  ; Frc(value)
  %2711 = call float @dx.op.unary.f32(i32 22, float %2691)  ; Frc(value)
  %2712 = uitofp i32 %2708 to float
  %2713 = uitofp i32 %2709 to float
  %2714 = fadd fast float %2710, %2712
  %2715 = fadd fast float %2711, %2713
  %2716 = uitofp i32 %2641 to float
  %2717 = uitofp i32 %2642 to float
  %2718 = fdiv fast float %2714, %2716
  %2719 = fdiv fast float %2715, %2717
  br label %2720

; <label>:2720                                    ; preds = %2695, %2622
  %2721 = phi float [ %2718, %2695 ], [ %2690, %2622 ]
  %2722 = phi float [ %2719, %2695 ], [ %2691, %2622 ]
  %2723 = and i32 %2616, 16777216
  %2724 = icmp eq i32 %2723, 0
  br i1 %2724, label %2834, label %2725

; <label>:2725                                    ; preds = %2720
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = fadd fast float %2727, %139
  %2731 = fadd fast float %2728, %140
  %2732 = fadd fast float %2729, %141
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2736 = icmp eq i32 %42, 65535
  br i1 %2736, label %2831, label %2737

; <label>:2737                                    ; preds = %2725
  %2738 = lshr i32 %42, 1
  %2739 = shl i32 %2738, 2
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %42, 1
  %2743 = icmp ne i32 %2742, 0
  %2744 = lshr i32 %2741, 16
  %2745 = and i32 %2741, 65535
  %2746 = select i1 %2743, i32 %2744, i32 %2745
  %2747 = icmp eq i32 %2746, 65535
  br i1 %2747, label %2827, label %2748

; <label>:2748                                    ; preds = %2737
  %2749 = mul nuw nsw i32 %2746, 40
  %2750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2750, 2
  %2754 = add nuw nsw i32 %2749, 12
  %2755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = add nuw nsw i32 %2749, 24
  %2760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.ResRet.f32 %2760, 2
  %2764 = add nuw nsw i32 %2749, 36
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = fsub fast float %2730, %2751
  %2768 = fsub fast float %2731, %2752
  %2769 = fsub fast float %2732, %2753
  %2770 = fmul fast float %2766, %2767
  %2771 = fmul fast float %2766, %2768
  %2772 = fmul fast float %2766, %2769
  %2773 = call float @dx.op.unary.f32(i32 27, float %2770)  ; Round_ni(value)
  %2774 = call float @dx.op.unary.f32(i32 27, float %2771)  ; Round_ni(value)
  %2775 = call float @dx.op.unary.f32(i32 27, float %2772)  ; Round_ni(value)
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fmul fast float %2776, %2756
  %2780 = fmul fast float %2777, %2757
  %2781 = fmul fast float %2778, %2758
  %2782 = shl i32 %42, 2
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = add i32 %2784, 0
  %2786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2787 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2788 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2789 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2786, %dx.types.Handle %38, float %2787, float %2788, float %2789, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = fmul fast float %2791, 1.023000e+03
  %2795 = fmul fast float %2792, 1.023000e+03
  %2796 = fmul fast float %2793, 1.023000e+03
  %2797 = fadd fast float %2794, 5.000000e-01
  %2798 = fadd fast float %2795, 5.000000e-01
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = call float @dx.op.unary.f32(i32 27, float %2797)  ; Round_ni(value)
  %2801 = call float @dx.op.unary.f32(i32 27, float %2798)  ; Round_ni(value)
  %2802 = call float @dx.op.unary.f32(i32 27, float %2799)  ; Round_ni(value)
  %2803 = fsub fast float %2770, %2773
  %2804 = fsub fast float %2771, %2774
  %2805 = fsub fast float %2772, %2775
  %2806 = fmul fast float %2803, 7.500000e-01
  %2807 = fmul fast float %2804, 7.500000e-01
  %2808 = fmul fast float %2805, 7.500000e-01
  %2809 = fadd fast float %2773, 1.250000e-01
  %2810 = fadd fast float %2809, %2806
  %2811 = fadd fast float %2810, %2800
  %2812 = fadd fast float %2774, 1.250000e-01
  %2813 = fadd fast float %2812, %2807
  %2814 = fadd fast float %2813, %2801
  %2815 = fadd fast float %2775, 1.250000e-01
  %2816 = fadd fast float %2815, %2808
  %2817 = fadd fast float %2816, %2802
  %2818 = fmul fast float %2811, %2761
  %2819 = fmul fast float %2814, %2762
  %2820 = fmul fast float %2817, %2763
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = add i32 %2822, 0
  %2824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2824, %dx.types.Handle %36, float %2818, float %2819, float %2820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  br label %2827

; <label>:2827                                    ; preds = %2748, %2737
  %2828 = phi float [ %2826, %2748 ], [ -1.000000e+00, %2737 ]
  %2829 = fadd fast float %2828, %2735
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  br label %2831

; <label>:2831                                    ; preds = %2827, %2725
  %2832 = phi float [ %2830, %2827 ], [ %2735, %2725 ]
  %2833 = fmul fast float %2832, %418
  br label %2834

; <label>:2834                                    ; preds = %2831, %2720
  %2835 = phi float [ %2833, %2831 ], [ %418, %2720 ]
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 256
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2886, label %2840

; <label>:2840                                    ; preds = %2834
  %2841 = add i32 %41, 516
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %73, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = add i32 %41, 148
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = shl i32 %2850, 4
  %2852 = and i32 %2851, 32752
  %2853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2852)  ; LegacyF16ToF32(value)
  %2854 = lshr i32 %2850, 7
  %2855 = and i32 %2854, 32752
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = fsub fast float 1.000000e+00, %2835
  %2858 = call float @dx.op.binary.f32(i32 35, float %2857, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2859 = bitcast float %2835 to i32
  %2860 = sitofp i32 %2859 to float
  %2861 = fadd fast float %2860, 0xC1CFBF8940000000
  %2862 = fmul fast float %2856, %2861
  %2863 = fadd fast float %2862, 0x41CFBF8940000000
  %2864 = fptosi float %2863 to i32
  %2865 = bitcast i32 %2864 to float
  %2866 = bitcast float %2858 to i32
  %2867 = sitofp i32 %2866 to float
  %2868 = fadd fast float %2867, 0xC1CFBF8940000000
  %2869 = fmul fast float %2868, %2856
  %2870 = fadd fast float %2869, 0x41CFBF8940000000
  %2871 = fptosi float %2870 to i32
  %2872 = bitcast i32 %2871 to float
  %2873 = fmul fast float %2865, %2853
  %2874 = fmul fast float %2872, %2853
  %2875 = fsub fast float %2858, %2873
  %2876 = fadd fast float %2874, %2858
  %2877 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  %2878 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2879 = fsub fast float %2847, %2877
  %2880 = fsub fast float %2878, %2877
  %2881 = bitcast float %2880 to i32
  %2882 = sub nsw i32 2129859010, %2881
  %2883 = bitcast i32 %2882 to float
  %2884 = fmul fast float %2883, %2879
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  br label %2886

; <label>:2886                                    ; preds = %2840, %2834
  %2887 = phi float [ %2885, %2840 ], [ %2835, %2834 ]
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 128
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2908, label %2892

; <label>:2892                                    ; preds = %2886
  %2893 = add i32 %41, 500
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %2895, 0
  %2897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2897, %dx.types.Handle %73, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = and i32 %2901, 524288
  %2903 = icmp ne i32 %2902, 0
  %2904 = fcmp fast ogt float %2899, 0x3FE0101020000000
  %2905 = select i1 %2904, float 1.000000e+00, float 0.000000e+00
  %2906 = select i1 %2903, float %2905, float %2899
  %2907 = fmul fast float %2906, %2887
  br label %2908

; <label>:2908                                    ; preds = %2892, %2886
  %2909 = phi float [ %2907, %2892 ], [ %2887, %2886 ]
  %2910 = fcmp fast ult float %2909, 0x3F70101020000000
  br i1 %2910, label %3453, label %2911

; <label>:2911                                    ; preds = %2908
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 16
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %3114, label %2916

; <label>:2916                                    ; preds = %2911
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = add i32 %41, 452
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %72, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.ResRet.f32 %2924, 2
  %2928 = extractvalue %dx.types.ResRet.f32 %2924, 3
  %2929 = and i32 %2918, 255
  %2930 = uitofp i32 %2929 to float
  %2931 = lshr i32 %2918, 8
  %2932 = and i32 %2931, 255
  %2933 = uitofp i32 %2932 to float
  %2934 = fmul fast float %2928, %2930
  %2935 = fadd fast float %2934, %2933
  %2936 = fmul fast float %2935, 0x3F70101000000000
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 512
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %2949, label %2941

; <label>:2941                                    ; preds = %2916
  %2942 = add i32 %41, 532
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = add i32 %2944, 0
  %2946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2946, %dx.types.Handle %73, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  br label %2949

; <label>:2949                                    ; preds = %2941, %2916
  %2950 = phi float [ %2948, %2941 ], [ 1.000000e+00, %2916 ]
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 33554432
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3061, label %2955

; <label>:2955                                    ; preds = %2949
  %2956 = add i32 %41, 272
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = lshr i32 %2958, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = add i32 %41, 276
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 65535
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = lshr i32 %2969, 24
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = and i32 %2969, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2969, 8
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = lshr i32 %2969, 16
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = add i32 %41, 268
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = lshr i32 %2986, 24
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = and i32 %2986, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2986, 8
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2986, 16
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = bitcast float %2925 to i32
  %3002 = ashr i32 %3001, 1
  %3003 = sub nsw i32 1597463174, %3002
  %3004 = bitcast i32 %3003 to float
  %3005 = fmul fast float %2925, 5.000000e-01
  %3006 = fmul fast float %3004, %3004
  %3007 = fmul fast float %3006, %3005
  %3008 = fsub fast float 1.500000e+00, %3007
  %3009 = fmul fast float %3004, %2925
  %3010 = fmul fast float %3009, %3008
  %3011 = bitcast float %2926 to i32
  %3012 = ashr i32 %3011, 1
  %3013 = sub nsw i32 1597463174, %3012
  %3014 = bitcast i32 %3013 to float
  %3015 = fmul fast float %2926, 5.000000e-01
  %3016 = fmul fast float %3014, %3014
  %3017 = fmul fast float %3016, %3015
  %3018 = fsub fast float 1.500000e+00, %3017
  %3019 = fmul fast float %3014, %2926
  %3020 = fmul fast float %3019, %3018
  %3021 = bitcast float %2927 to i32
  %3022 = ashr i32 %3021, 1
  %3023 = sub nsw i32 1597463174, %3022
  %3024 = bitcast i32 %3023 to float
  %3025 = fmul fast float %2927, 5.000000e-01
  %3026 = fmul fast float %3024, %3024
  %3027 = fmul fast float %3026, %3025
  %3028 = fsub fast float 1.500000e+00, %3027
  %3029 = fmul fast float %3024, %2927
  %3030 = fmul fast float %3029, %3028
  %3031 = fsub fast float %3010, %2992
  %3032 = fsub fast float %3020, %2996
  %3033 = fsub fast float %3030, %3000
  %3034 = fmul fast float %3031, %2960
  %3035 = fmul fast float %3032, %2962
  %3036 = fmul fast float %3033, %2967
  %3037 = fadd fast float %3034, %2975
  %3038 = fadd fast float %3035, %2979
  %3039 = fadd fast float %3036, %2983
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = fmul fast float %3040, %3040
  %3044 = fmul fast float %3041, %3041
  %3045 = fmul fast float %3042, %3042
  %3046 = fsub fast float %3043, %2925
  %3047 = fsub fast float %3044, %2926
  %3048 = fsub fast float %3045, %2927
  %3049 = fmul fast float %3046, %2950
  %3050 = fmul fast float %3047, %2950
  %3051 = fmul fast float %3048, %2950
  %3052 = fadd fast float %3049, %2925
  %3053 = fadd fast float %3050, %2926
  %3054 = fadd fast float %3051, %2927
  %3055 = fadd fast float %2972, %2936
  %3056 = fsub fast float %3055, %2989
  %3057 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3058 = fsub fast float %3057, %2936
  %3059 = fmul fast float %3058, %2950
  %3060 = fadd fast float %3059, %2936
  br label %3114

; <label>:3061                                    ; preds = %2949
  %3062 = and i32 %2952, 134217728
  %3063 = icmp eq i32 %3062, 0
  br i1 %3063, label %3098, label %3064

; <label>:3064                                    ; preds = %3061
  %3065 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %3066 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3067 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3068 = fadd fast float %3065, -5.000000e-01
  %3069 = fadd fast float %3066, -5.000000e-01
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fmul fast float %3068, %2950
  %3072 = fmul fast float %3069, %2950
  %3073 = fmul fast float %3070, %2950
  %3074 = fadd fast float %3071, 5.000000e-01
  %3075 = fadd fast float %3072, 5.000000e-01
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = call float @dx.op.unary.f32(i32 24, float %2925)  ; Sqrt(value)
  %3078 = call float @dx.op.unary.f32(i32 24, float %2926)  ; Sqrt(value)
  %3079 = call float @dx.op.unary.f32(i32 24, float %2927)  ; Sqrt(value)
  %3080 = fmul fast float %3074, 2.000000e+00
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = fmul fast float %3081, %3077
  %3083 = fadd fast float %3082, %3080
  %3084 = fmul fast float %3083, %3077
  %3085 = fmul fast float %3075, 2.000000e+00
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %3086, %3078
  %3088 = fadd fast float %3087, %3085
  %3089 = fmul fast float %3088, %3078
  %3090 = fmul fast float %3076, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3079
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3079
  %3095 = fmul fast float %3084, %3084
  %3096 = fmul fast float %3089, %3089
  %3097 = fmul fast float %3094, %3094
  br label %3114

; <label>:3098                                    ; preds = %3061
  %3099 = fmul fast float %339, %339
  %3100 = fmul fast float %343, %343
  %3101 = fmul fast float %347, %347
  %3102 = fadd fast float %3099, -1.000000e+00
  %3103 = fadd fast float %3100, -1.000000e+00
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = fmul fast float %2950, %3102
  %3106 = fmul fast float %2950, %3103
  %3107 = fmul fast float %2950, %3104
  %3108 = fadd fast float %3105, 1.000000e+00
  %3109 = fadd fast float %3106, 1.000000e+00
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fmul fast float %3108, %2925
  %3112 = fmul fast float %3109, %2926
  %3113 = fmul fast float %3110, %2927
  br label %3114

; <label>:3114                                    ; preds = %3098, %3064, %2955, %2911
  %3115 = phi float [ %3060, %2955 ], [ %2936, %3064 ], [ %2936, %3098 ], [ 0x3FA23C0BE0000000, %2911 ]
  %3116 = phi float [ %3052, %2955 ], [ %3095, %3064 ], [ %3111, %3098 ], [ 1.000000e+00, %2911 ]
  %3117 = phi float [ %3053, %2955 ], [ %3096, %3064 ], [ %3112, %3098 ], [ 1.000000e+00, %2911 ]
  %3118 = phi float [ %3054, %2955 ], [ %3097, %3064 ], [ %3113, %3098 ], [ 1.000000e+00, %2911 ]
  %3119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.i32 %3119, 1
  %3121 = and i32 %3120, 1
  %3122 = icmp ne i32 %3121, 0
  %3123 = add i32 %41, 356
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 32
  %3127 = icmp ne i32 %3126, 0
  %3128 = and i1 %3122, %3127
  %3129 = select i1 %3128, float 1.000000e+00, float %3116
  %3130 = select i1 %3128, float 0x3FD3333340000000, float %3117
  %3131 = select i1 %3128, float 0x3FD3333340000000, float %3118
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 32
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3208, label %3136

; <label>:3136                                    ; preds = %3114
  %3137 = add i32 %41, 140
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = add i32 %41, 468
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = add i32 %3142, 0
  %3144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3144, %dx.types.Handle %72, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3146 = extractvalue %dx.types.ResRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.ResRet.f32 %3145, 1
  %3148 = extractvalue %dx.types.ResRet.f32 %3145, 2
  %3149 = extractvalue %dx.types.ResRet.f32 %3145, 3
  %3150 = and i32 %3139, 255
  %3151 = uitofp i32 %3150 to float
  %3152 = lshr i32 %3139, 8
  %3153 = and i32 %3152, 255
  %3154 = uitofp i32 %3153 to float
  %3155 = lshr i32 %3139, 16
  %3156 = and i32 %3155, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3157, 0x3F70101000000000
  %3159 = fmul fast float %3146, %3151
  %3160 = fadd fast float %3159, %3154
  %3161 = fmul fast float %3160, 0x3F70101000000000
  %3162 = fadd fast float %3147, -5.000000e-01
  %3163 = fadd fast float %3149, -5.000000e-01
  %3164 = fmul fast float %3162, %3158
  %3165 = fmul fast float %3163, %3158
  %3166 = fadd fast float %3164, 5.000000e-01
  %3167 = fadd fast float %3165, 5.000000e-01
  %3168 = fmul fast float %3166, 2.000000e+00
  %3169 = fadd fast float %3168, -1.000000e+00
  %3170 = fmul fast float %3167, 2.000000e+00
  %3171 = fadd fast float %3170, -1.000000e+00
  %3172 = fadd fast float %3169, %3171
  %3173 = fmul fast float %3172, 5.000000e-01
  %3174 = fsub fast float %3169, %3171
  %3175 = fmul fast float %3174, 5.000000e-01
  %3176 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3177 = fsub fast float 1.000000e+00, %3176
  %3178 = call float @dx.op.unary.f32(i32 6, float %3175)  ; FAbs(value)
  %3179 = fsub fast float %3177, %3178
  %3180 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3175, float %3179, float %3173, float %3175, float %3179)  ; Dot3(ax,ay,az,bx,by,bz)
  %3181 = call float @dx.op.unary.f32(i32 25, float %3180)  ; Rsqrt(value)
  %3182 = fmul fast float %3173, %3181
  %3183 = fmul fast float %3175, %3181
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 67108864
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3204, label %3188

; <label>:3188                                    ; preds = %3136
  %3189 = add i32 %41, 328
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = lshr i32 %3191, 16
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fsub fast float %3161, %3199
  %3201 = fmul fast float %3200, %3193
  %3202 = fadd fast float %3201, %3197
  %3203 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  br label %3204

; <label>:3204                                    ; preds = %3188, %3136
  %3205 = phi float [ %3203, %3188 ], [ %3161, %3136 ]
  %3206 = call float @dx.op.dot2.f32(i32 54, float %3182, float %3183, float %2625, float %2626)  ; Dot2(ax,ay,bx,by)
  %3207 = call float @dx.op.dot2.f32(i32 54, float %3182, float %3183, float %2627, float %2628)  ; Dot2(ax,ay,bx,by)
  br label %3208

; <label>:3208                                    ; preds = %3204, %3114
  %3209 = phi float [ %3205, %3204 ], [ 0x3FD6666660000000, %3114 ]
  %3210 = phi float [ %3206, %3204 ], [ 0.000000e+00, %3114 ]
  %3211 = phi float [ %3207, %3204 ], [ 0.000000e+00, %3114 ]
  %3212 = phi float [ %3148, %3204 ], [ 1.000000e+00, %3114 ]
  %3213 = add i32 %41, 208
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = lshr i32 %3215, 22
  %3217 = shl nuw nsw i32 %3216, 5
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 64
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3256, label %3223

; <label>:3223                                    ; preds = %3208
  %3224 = add i32 %41, 484
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = add i32 %3226, 0
  %3228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 131072
  %3232 = icmp eq i32 %3231, 0
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3228, %dx.types.Handle %72, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = fmul fast float %3234, %327
  %3238 = fmul fast float %3235, %330
  %3239 = fmul fast float %3236, %333
  br i1 %3232, label %3246, label %3240

; <label>:3240                                    ; preds = %3223
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = fmul fast float %3242, %3237
  %3244 = fmul fast float %3242, %3238
  %3245 = fmul fast float %3242, %3239
  br label %3246

; <label>:3246                                    ; preds = %3240, %3223
  %3247 = phi float [ %3243, %3240 ], [ %3237, %3223 ]
  %3248 = phi float [ %3244, %3240 ], [ %3238, %3223 ]
  %3249 = phi float [ %3245, %3240 ], [ %3239, %3223 ]
  %3250 = fmul fast float %3247, %3218
  %3251 = select i1 %181, float %3250, float %3247
  %3252 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3248, float %3249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3253 = select i1 %181, float 0.000000e+00, float %3247
  %3254 = select i1 %181, float %3252, float %3248
  %3255 = select i1 %181, float 0.000000e+00, float %3249
  br label %3256

; <label>:3256                                    ; preds = %3246, %3208
  %3257 = phi float [ %3253, %3246 ], [ 0.000000e+00, %3208 ]
  %3258 = phi float [ %3254, %3246 ], [ 0.000000e+00, %3208 ]
  %3259 = phi float [ %3255, %3246 ], [ 0.000000e+00, %3208 ]
  %3260 = add i32 %41, 144
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = and i32 %3262, 255
  %3264 = uitofp i32 %3263 to float
  %3265 = lshr i32 %3262, 8
  %3266 = and i32 %3265, 255
  %3267 = uitofp i32 %3266 to float
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3129, float %3130, float %3131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = fmul fast float %3267, %3268
  %3270 = fadd fast float %3269, %3264
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  br i1 %2613, label %3273, label %3281

; <label>:3273                                    ; preds = %3256
  %3274 = fsub fast float 1.000000e+00, %2909
  %3275 = fmul fast float %3274, %2602
  %3276 = fmul fast float %3274, %2603
  %3277 = fmul fast float %3274, %2604
  %3278 = fmul fast float %3274, %2605
  %3279 = fmul fast float %3274, %2606
  %3280 = fmul fast float %3274, %2607
  br label %3281

; <label>:3281                                    ; preds = %3273, %3256
  %3282 = phi float [ %3275, %3273 ], [ %2602, %3256 ]
  %3283 = phi float [ %3276, %3273 ], [ %2603, %3256 ]
  %3284 = phi float [ %3277, %3273 ], [ %2604, %3256 ]
  %3285 = phi float [ %3278, %3273 ], [ %2605, %3256 ]
  %3286 = phi float [ %3279, %3273 ], [ %2606, %3256 ]
  %3287 = phi float [ %3280, %3273 ], [ %2607, %3256 ]
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = and i32 %3289, 3
  %3291 = icmp eq i32 %3290, 3
  br i1 %3291, label %3370, label %3292

; <label>:3292                                    ; preds = %3281
  %3293 = and i32 %3289, 16
  %3294 = icmp ne i32 %3293, 0
  %3295 = select i1 %3294, float %2909, float 0.000000e+00
  %3296 = icmp eq i32 %3290, 0
  br i1 %3296, label %3297, label %3325

; <label>:3297                                    ; preds = %3292
  %3298 = and i32 %3289, 64
  %3299 = icmp ne i32 %3298, 0
  %3300 = select i1 %3299, float %2909, float 0.000000e+00
  %3301 = fsub fast float %3129, %3282
  %3302 = fsub fast float %3130, %3283
  %3303 = fsub fast float %3131, %3284
  %3304 = fmul fast float %3295, %3301
  %3305 = fmul fast float %3295, %3302
  %3306 = fmul fast float %3295, %3303
  %3307 = fadd fast float %3304, %3282
  %3308 = fadd fast float %3305, %3283
  %3309 = fadd fast float %3306, %3284
  %3310 = fsub fast float %3115, %2608
  %3311 = fmul fast float %3295, %3310
  %3312 = fadd fast float %3311, %2608
  %3313 = fsub fast float %3257, %3285
  %3314 = fsub fast float %3258, %3286
  %3315 = fsub fast float %3259, %3287
  %3316 = fmul fast float %3300, %3313
  %3317 = fmul fast float %3300, %3314
  %3318 = fmul fast float %3300, %3315
  %3319 = fadd fast float %3316, %3285
  %3320 = fadd fast float %3317, %3286
  %3321 = fadd fast float %3318, %3287
  %3322 = fsub fast float %3272, %2611
  %3323 = fmul fast float %3295, %3322
  %3324 = fadd fast float %3323, %2611
  br label %3370

; <label>:3325                                    ; preds = %3292
  %3326 = icmp eq i32 %3290, 1
  br i1 %3326, label %3327, label %3340

; <label>:3327                                    ; preds = %3325
  %3328 = fadd fast float %3129, -1.000000e+00
  %3329 = fadd fast float %3130, -1.000000e+00
  %3330 = fadd fast float %3131, -1.000000e+00
  %3331 = fmul fast float %3295, %3328
  %3332 = fmul fast float %3295, %3329
  %3333 = fmul fast float %3295, %3330
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fadd fast float %3332, 1.000000e+00
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fmul fast float %3334, %3282
  %3338 = fmul fast float %3335, %3283
  %3339 = fmul fast float %3336, %3284
  br label %3370

; <label>:3340                                    ; preds = %3325
  %3341 = icmp eq i32 %3290, 2
  br i1 %3341, label %3342, label %3370

; <label>:3342                                    ; preds = %3340
  %3343 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3344 = call float @dx.op.unary.f32(i32 24, float %3130)  ; Sqrt(value)
  %3345 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3346 = fadd fast float %3343, -5.000000e-01
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fmul fast float %3346, %3295
  %3350 = fmul fast float %3347, %3295
  %3351 = fmul fast float %3348, %3295
  %3352 = fadd fast float %3349, 5.000000e-01
  %3353 = fadd fast float %3350, 5.000000e-01
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = fmul fast float %3352, 2.000000e+00
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = fmul fast float %3356, %3282
  %3358 = fadd fast float %3357, %3355
  %3359 = fmul fast float %3358, %3282
  %3360 = fmul fast float %3353, 2.000000e+00
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %3283
  %3363 = fadd fast float %3362, %3360
  %3364 = fmul fast float %3363, %3283
  %3365 = fmul fast float %3354, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3284
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3284
  br label %3370

; <label>:3370                                    ; preds = %3342, %3340, %3327, %3297, %3281
  %3371 = phi float [ %3282, %3281 ], [ %3359, %3342 ], [ %3282, %3340 ], [ %3337, %3327 ], [ %3307, %3297 ]
  %3372 = phi float [ %3283, %3281 ], [ %3364, %3342 ], [ %3283, %3340 ], [ %3338, %3327 ], [ %3308, %3297 ]
  %3373 = phi float [ %3284, %3281 ], [ %3369, %3342 ], [ %3284, %3340 ], [ %3339, %3327 ], [ %3309, %3297 ]
  %3374 = phi float [ %3285, %3281 ], [ %3285, %3342 ], [ %3285, %3340 ], [ %3285, %3327 ], [ %3319, %3297 ]
  %3375 = phi float [ %3286, %3281 ], [ %3286, %3342 ], [ %3286, %3340 ], [ %3286, %3327 ], [ %3320, %3297 ]
  %3376 = phi float [ %3287, %3281 ], [ %3287, %3342 ], [ %3287, %3340 ], [ %3287, %3327 ], [ %3321, %3297 ]
  %3377 = phi float [ %2608, %3281 ], [ %2608, %3342 ], [ %2608, %3340 ], [ %2608, %3327 ], [ %3312, %3297 ]
  %3378 = phi float [ %2611, %3281 ], [ %2611, %3342 ], [ %2611, %3340 ], [ %2611, %3327 ], [ %3324, %3297 ]
  %3379 = and i32 %3289, 12
  %3380 = icmp eq i32 %3379, 12
  br i1 %3380, label %3453, label %3381

; <label>:3381                                    ; preds = %3370
  %3382 = and i32 %3289, 2097184
  %3383 = icmp eq i32 %3382, 2097184
  %3384 = select i1 %3383, float %2909, float 0.000000e+00
  %3385 = and i32 %3289, 4194336
  %3386 = icmp eq i32 %3385, 4194336
  %3387 = select i1 %3386, float %2909, float 0.000000e+00
  %3388 = and i32 %3289, 8388640
  %3389 = icmp eq i32 %3388, 8388640
  %3390 = select i1 %3389, float %2909, float 0.000000e+00
  %3391 = icmp eq i32 %3379, 0
  br i1 %3391, label %3392, label %3405

; <label>:3392                                    ; preds = %3381
  %3393 = fsub fast float %3210, %2600
  %3394 = fsub fast float %3211, %2601
  %3395 = fmul fast float %3384, %3393
  %3396 = fmul fast float %3384, %3394
  %3397 = fadd fast float %3395, %2600
  %3398 = fadd fast float %3396, %2601
  %3399 = fsub fast float %3212, %2610
  %3400 = fmul fast float %3387, %3399
  %3401 = fadd fast float %3400, %2610
  %3402 = fsub fast float %3209, %2609
  %3403 = fmul fast float %3390, %3402
  %3404 = fadd fast float %3403, %2609
  br label %3453

; <label>:3405                                    ; preds = %3381
  %3406 = icmp eq i32 %3379, 4
  br i1 %3406, label %3407, label %3439

; <label>:3407                                    ; preds = %3405
  %3408 = fmul fast float %3384, %3210
  %3409 = fmul fast float %3384, %3211
  %3410 = fadd fast float %3408, %2600
  %3411 = fadd fast float %3409, %2601
  %3412 = call float @dx.op.binary.f32(i32 36, float %2610, float %3212)  ; FMin(a,b)
  %3413 = fsub fast float %3412, %2610
  %3414 = fmul fast float %3413, %3387
  %3415 = fadd fast float %3414, %2610
  %3416 = fadd fast float %3209, %2609
  %3417 = fmul fast float %3416, 0x3FF337FAE0000000
  %3418 = fmul fast float %2609, %2609
  %3419 = fmul fast float %3209, %3209
  %3420 = fadd fast float %3419, %3418
  %3421 = fmul fast float %3420, 0x3FE5152B00000000
  %3422 = fmul fast float %2609, 0xBFCC1F85E0000000
  %3423 = fmul fast float %3422, %3209
  %3424 = fadd fast float %3423, 0xBFE1363700000000
  %3425 = fadd fast float %3424, %3417
  %3426 = fsub fast float %3425, %3421
  %3427 = fmul fast float %3416, 0x3FBA6F0D00000000
  %3428 = fmul fast float %3420, 0x3FD0432880000000
  %3429 = fmul fast float %2609, 0xBFEF110800000000
  %3430 = fmul fast float %3429, %3209
  %3431 = fadd fast float %3430, 1.000000e+00
  %3432 = fsub fast float %3431, %3427
  %3433 = fadd fast float %3432, %3428
  %3434 = fdiv fast float %3426, %3433
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = fsub fast float %3435, %2609
  %3437 = fmul fast float %3436, %3390
  %3438 = fadd fast float %3437, %2609
  br label %3453

; <label>:3439                                    ; preds = %3405
  %3440 = icmp eq i32 %3379, 8
  br i1 %3440, label %3441, label %3453

; <label>:3441                                    ; preds = %3439
  %3442 = fmul fast float %3384, %3210
  %3443 = fmul fast float %3384, %3211
  %3444 = fadd fast float %3442, %2600
  %3445 = fadd fast float %3443, %2601
  %3446 = call float @dx.op.binary.f32(i32 36, float %2610, float %3212)  ; FMin(a,b)
  %3447 = fsub fast float %3446, %2610
  %3448 = fmul fast float %3447, %3387
  %3449 = fadd fast float %3448, %2610
  %3450 = fsub fast float %3209, %2609
  %3451 = fmul fast float %3390, %3450
  %3452 = fadd fast float %3451, %2609
  br label %3453

; <label>:3453                                    ; preds = %3441, %3439, %3407, %3392, %3370, %2908, %2612, %2599
  %3454 = phi float [ %2600, %3370 ], [ %2600, %2908 ], [ %2600, %2599 ], [ %2600, %2612 ], [ %3397, %3392 ], [ %3410, %3407 ], [ %2600, %3439 ], [ %3444, %3441 ]
  %3455 = phi float [ %2601, %3370 ], [ %2601, %2908 ], [ %2601, %2599 ], [ %2601, %2612 ], [ %3398, %3392 ], [ %3411, %3407 ], [ %2601, %3439 ], [ %3445, %3441 ]
  %3456 = phi float [ %3371, %3370 ], [ %2602, %2908 ], [ %2602, %2599 ], [ %2602, %2612 ], [ %3371, %3392 ], [ %3371, %3407 ], [ %3371, %3439 ], [ %3371, %3441 ]
  %3457 = phi float [ %3372, %3370 ], [ %2603, %2908 ], [ %2603, %2599 ], [ %2603, %2612 ], [ %3372, %3392 ], [ %3372, %3407 ], [ %3372, %3439 ], [ %3372, %3441 ]
  %3458 = phi float [ %3373, %3370 ], [ %2604, %2908 ], [ %2604, %2599 ], [ %2604, %2612 ], [ %3373, %3392 ], [ %3373, %3407 ], [ %3373, %3439 ], [ %3373, %3441 ]
  %3459 = phi float [ %3374, %3370 ], [ %2605, %2908 ], [ %2605, %2599 ], [ %2605, %2612 ], [ %3374, %3392 ], [ %3374, %3407 ], [ %3374, %3439 ], [ %3374, %3441 ]
  %3460 = phi float [ %3375, %3370 ], [ %2606, %2908 ], [ %2606, %2599 ], [ %2606, %2612 ], [ %3375, %3392 ], [ %3375, %3407 ], [ %3375, %3439 ], [ %3375, %3441 ]
  %3461 = phi float [ %3376, %3370 ], [ %2607, %2908 ], [ %2607, %2599 ], [ %2607, %2612 ], [ %3376, %3392 ], [ %3376, %3407 ], [ %3376, %3439 ], [ %3376, %3441 ]
  %3462 = phi float [ %3377, %3370 ], [ %2608, %2908 ], [ %2608, %2599 ], [ %2608, %2612 ], [ %3377, %3392 ], [ %3377, %3407 ], [ %3377, %3439 ], [ %3377, %3441 ]
  %3463 = phi float [ %2609, %3370 ], [ %2609, %2908 ], [ %2609, %2599 ], [ %2609, %2612 ], [ %3404, %3392 ], [ %3438, %3407 ], [ %2609, %3439 ], [ %3452, %3441 ]
  %3464 = phi float [ %2610, %3370 ], [ %2610, %2908 ], [ %2610, %2599 ], [ %2610, %2612 ], [ %3401, %3392 ], [ %3415, %3407 ], [ %2610, %3439 ], [ %3449, %3441 ]
  %3465 = phi float [ %3378, %3370 ], [ %2611, %2908 ], [ %2611, %2599 ], [ %2611, %2612 ], [ %3378, %3392 ], [ %3378, %3407 ], [ %3378, %3439 ], [ %3378, %3441 ]
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = call float @dx.op.dot2.f32(i32 54, float %3454, float %3455, float %3454, float %3455)  ; Dot2(ax,ay,bx,by)
  %3469 = fmul fast float %3468, 0x3FE3333340000000
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3454, float %3455, float %3470, float %3454, float %3455, float %3470)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.unary.f32(i32 25, float %3471)  ; Rsqrt(value)
  %3473 = fmul fast float %3472, %3454
  %3474 = fmul fast float %3472, %3455
  %3475 = fmul fast float %3470, %3472
  %3476 = fmul fast float %3475, %83
  %3477 = fmul fast float %3475, %84
  %3478 = fmul fast float %3475, %85
  %3479 = fmul fast float %3473, %57
  %3480 = fmul fast float %3473, %58
  %3481 = fmul fast float %3473, %59
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = fadd fast float %3478, %3481
  %3485 = fmul fast float %95, %3474
  %3486 = fmul fast float %96, %3474
  %3487 = fmul fast float %97, %3474
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3490, float %3488, float %3489, float %3490)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = call float @dx.op.unary.f32(i32 25, float %3491)  ; Rsqrt(value)
  %3493 = fmul fast float %3488, %3492
  %3494 = fmul fast float %3489, %3492
  %3495 = fmul fast float %3490, %3492
  %3496 = and i32 %43, 1
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %3498, label %4006

; <label>:3498                                    ; preds = %3453
  %3499 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %3500 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %3501 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3502 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %3503 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %3504 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3505 = fadd fast float %3499, %139
  %3506 = fadd fast float %3500, %140
  %3507 = fadd fast float %3501, %141
  %3508 = fadd fast float %3502, %139
  %3509 = fadd fast float %3503, %140
  %3510 = fadd fast float %3504, %141
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3517 = extractvalue %dx.types.CBufRet.f32 %3515, 3
  %3518 = fmul fast float %3512, %76
  %3519 = fmul fast float %3518, %3516
  %3520 = fmul fast float %3513, %77
  %3521 = fmul fast float %3520, %3517
  %3522 = fptoui float %3519 to i32
  %3523 = fptoui float %3521 to i32
  %3524 = fadd fast float %3512, -1.000000e+00
  %3525 = fadd fast float %3513, -1.000000e+00
  %3526 = fptoui float %3524 to i32
  %3527 = fptoui float %3525 to i32
  %3528 = call i32 @dx.op.binary.i32(i32 40, i32 %3522, i32 %3526)  ; UMin(a,b)
  %3529 = call i32 @dx.op.binary.i32(i32 40, i32 %3523, i32 %3527)  ; UMin(a,b)
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3533 = fmul fast float %3531, %71
  %3534 = fsub fast float %3533, %3532
  %3535 = fadd fast float %3514, -1.000000e+00
  %3536 = call float @dx.op.binary.f32(i32 36, float %3534, float %3535)  ; FMin(a,b)
  %3537 = fptoui float %3536 to i32
  %3538 = fptoui float %3512 to i32
  %3539 = fptoui float %3513 to i32
  %3540 = mul i32 %3537, %3539
  %3541 = add i32 %3540, %3529
  %3542 = mul i32 %3541, %3538
  %3543 = add i32 %3542, %3528
  %3544 = shl i32 %3543, 2
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 1023
  %3548 = lshr i32 %3546, 10
  %3549 = icmp eq i32 %3547, 0
  br i1 %3549, label %3975, label %3550

; <label>:3550                                    ; preds = %3498
  %3551 = and i32 %3546, 1023
  br label %3552

; <label>:3552                                    ; preds = %3678, %3550
  %3553 = phi i32 [ %3628, %3678 ], [ 0, %3550 ]
  %3554 = phi float [ %3679, %3678 ], [ 0.000000e+00, %3550 ]
  %3555 = phi float [ %3680, %3678 ], [ %3467, %3550 ]
  %3556 = phi float [ %3681, %3678 ], [ %3465, %3550 ]
  %3557 = phi float [ %3682, %3678 ], [ 0.000000e+00, %3550 ]
  %3558 = phi float [ %3683, %3678 ], [ 0.000000e+00, %3550 ]
  %3559 = phi float [ %3684, %3678 ], [ %3459, %3550 ]
  %3560 = phi float [ %3685, %3678 ], [ %3460, %3550 ]
  %3561 = phi float [ %3686, %3678 ], [ %3461, %3550 ]
  %3562 = phi float [ %3687, %3678 ], [ %3493, %3550 ]
  %3563 = phi float [ %3688, %3678 ], [ %3494, %3550 ]
  %3564 = phi float [ %3689, %3678 ], [ %3495, %3550 ]
  %3565 = phi float [ %3690, %3678 ], [ %3464, %3550 ]
  %3566 = phi float [ %3691, %3678 ], [ %3463, %3550 ]
  %3567 = phi float [ %3692, %3678 ], [ 0.000000e+00, %3550 ]
  %3568 = phi float [ %3693, %3678 ], [ %3462, %3550 ]
  %3569 = phi float [ %3694, %3678 ], [ %3456, %3550 ]
  %3570 = phi float [ %3695, %3678 ], [ %3457, %3550 ]
  %3571 = phi float [ %3696, %3678 ], [ %3458, %3550 ]
  %3572 = add nuw nsw i32 %3553, %3548
  %3573 = shl i32 %3572, 2
  %3574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = shl i32 %3575, 8
  %3577 = or i32 %3576, 48
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = or i32 %3576, 64
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.i32 %3584, 1
  %3587 = or i32 %3576, 80
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 3
  %3591 = or i32 %3576, 96
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3592, 3
  %3597 = or i32 %3576, 112
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3600 = or i32 %3576, 128
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.ResRet.f32 %3601, 3
  %3606 = or i32 %3576, 144
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = or i32 %3576, 160
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = or i32 %3576, 192
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = or i32 %3576, 208
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = or i32 %3576, 248
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = add nuw nsw i32 %3553, 1
  %3629 = bitcast float %3582 to i32
  %3630 = and i32 %3629, 512
  %3631 = icmp eq i32 %3630, 0
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %139, float %140, float %141, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = or i32 %3576, 16
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %139, float %140, float %141, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = or i32 %3576, 32
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.ResRet.f32 %3646, 2
  %3650 = extractvalue %dx.types.ResRet.f32 %3646, 3
  %3651 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %139, float %140, float %141, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3652 = call float @dx.op.unary.f32(i32 27, float %3637)  ; Round_ni(value)
  %3653 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3654 = call float @dx.op.unary.f32(i32 27, float %3644)  ; Round_ni(value)
  %3655 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3656 = call float @dx.op.unary.f32(i32 6, float %3651)  ; FAbs(value)
  %3657 = call float @dx.op.unary.f32(i32 27, float %3656)  ; Round_ni(value)
  %3658 = fadd fast float %3655, %3653
  %3659 = fadd fast float %3658, %3657
  %3660 = fcmp fast oeq float %3659, 0.000000e+00
  %3661 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3505, float %3506, float %3507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3662 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %3505, float %3506, float %3507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3508, float %3509, float %3510, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %3508, float %3509, float %3510, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = fsub fast float %3661, %3637
  %3666 = fsub fast float %3663, %3637
  %3667 = fsub fast float %3662, %3644
  %3668 = fsub fast float %3664, %3644
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3579, float %3580, float %3581, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3671 = extractvalue %dx.types.CBufRet.f32 %3670, 2
  %3672 = fadd fast float %3671, %3669
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3670, 0
  %3675 = fcmp fast ogt float %3673, %3674
  %3676 = and i1 %3660, %3675
  %3677 = and i1 %3631, %3676
  br i1 %3677, label %3698, label %3678

; <label>:3678                                    ; preds = %3961, %3779, %3698, %3552
  %3679 = phi float [ %3554, %3698 ], [ %3782, %3779 ], [ %3782, %3961 ], [ %3554, %3552 ]
  %3680 = phi float [ %3555, %3698 ], [ %3555, %3779 ], [ %3936, %3961 ], [ %3555, %3552 ]
  %3681 = phi float [ %3556, %3698 ], [ %3556, %3779 ], [ %3934, %3961 ], [ %3556, %3552 ]
  %3682 = phi float [ %3557, %3698 ], [ %3557, %3779 ], [ %3906, %3961 ], [ %3557, %3552 ]
  %3683 = phi float [ %3558, %3698 ], [ %3558, %3779 ], [ %3904, %3961 ], [ %3558, %3552 ]
  %3684 = phi float [ %3559, %3698 ], [ %3559, %3779 ], [ %3971, %3961 ], [ %3559, %3552 ]
  %3685 = phi float [ %3560, %3698 ], [ %3560, %3779 ], [ %3972, %3961 ], [ %3560, %3552 ]
  %3686 = phi float [ %3561, %3698 ], [ %3561, %3779 ], [ %3973, %3961 ], [ %3561, %3552 ]
  %3687 = phi float [ %3562, %3698 ], [ %3562, %3779 ], [ %3885, %3961 ], [ %3562, %3552 ]
  %3688 = phi float [ %3563, %3698 ], [ %3563, %3779 ], [ %3886, %3961 ], [ %3563, %3552 ]
  %3689 = phi float [ %3564, %3698 ], [ %3564, %3779 ], [ %3887, %3961 ], [ %3564, %3552 ]
  %3690 = phi float [ %3565, %3698 ], [ %3565, %3779 ], [ %3914, %3961 ], [ %3565, %3552 ]
  %3691 = phi float [ %3566, %3698 ], [ %3566, %3779 ], [ %3911, %3961 ], [ %3566, %3552 ]
  %3692 = phi float [ %3567, %3698 ], [ %3567, %3779 ], [ %3908, %3961 ], [ %3567, %3552 ]
  %3693 = phi float [ %3568, %3698 ], [ %3568, %3779 ], [ %3902, %3961 ], [ %3568, %3552 ]
  %3694 = phi float [ %3569, %3698 ], [ %3569, %3779 ], [ %3897, %3961 ], [ %3569, %3552 ]
  %3695 = phi float [ %3570, %3698 ], [ %3570, %3779 ], [ %3898, %3961 ], [ %3570, %3552 ]
  %3696 = phi float [ %3571, %3698 ], [ %3571, %3779 ], [ %3899, %3961 ], [ %3571, %3552 ]
  %3697 = icmp eq i32 %3628, %3551
  br i1 %3697, label %3974, label %3552

; <label>:3698                                    ; preds = %3552
  %3699 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3700 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3702 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3704 = extractvalue %dx.types.ResRet.i32 %3584, 3
  %3705 = extractvalue %dx.types.ResRet.i32 %3584, 2
  %3706 = add i32 %3704, 0
  %3707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3706, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3709 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3707, %dx.types.Handle %3708, float %3637, float %3644, float undef, float undef, i32 0, i32 0, i32 undef, float %3665, float %3667, float undef, float %3666, float %3668, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = fmul fast float %3710, %3703
  %3712 = fadd fast float %3711, %3702
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fmul fast float %3637, %3593
  %3715 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3644, float %3714)  ; FMad(a,b,c)
  %3716 = fadd fast float %3715, %3701
  %3717 = fmul fast float %3637, %3595
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3644, float %3717)  ; FMad(a,b,c)
  %3719 = fadd fast float %3718, %3700
  %3720 = fmul fast float %3665, %3593
  %3721 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3667, float %3720)  ; FMad(a,b,c)
  %3722 = fmul fast float %3665, %3595
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3667, float %3722)  ; FMad(a,b,c)
  %3724 = fmul fast float %3666, %3593
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3668, float %3724)  ; FMad(a,b,c)
  %3726 = fmul fast float %3666, %3595
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3668, float %3726)  ; FMad(a,b,c)
  %3728 = add i32 %3705, 0
  %3729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3728, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3729, %dx.types.Handle %3708, float %3716, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float %3721, float %3723, float undef, float %3725, float %3727, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = and i32 %3629, 1024
  %3733 = icmp ne i32 %3732, 0
  %3734 = fcmp fast ogt float %3731, 0x3FE0101020000000
  %3735 = uitofp i1 %3734 to float
  %3736 = select i1 %3733, float %3735, float %3731
  %3737 = and i32 %3629, 8192
  %3738 = icmp ne i32 %3737, 0
  %3739 = select i1 %3738, float %3699, float 1.000000e+00
  %3740 = fmul fast float %3637, 2.000000e+00
  %3741 = fadd fast float %3740, -1.000000e+00
  %3742 = call float @dx.op.unary.f32(i32 6, float %3741)  ; FAbs(value)
  %3743 = fmul fast float %3742, %3626
  %3744 = fsub fast float %3743, %3626
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = fmul fast float %3644, 2.000000e+00
  %3747 = fadd fast float %3746, -1.000000e+00
  %3748 = call float @dx.op.unary.f32(i32 6, float %3747)  ; FAbs(value)
  %3749 = fmul fast float %3748, %3627
  %3750 = fsub fast float %3749, %3627
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3752 = fmul fast float %3656, %3589
  %3753 = fsub fast float %3752, %3589
  %3754 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3755 = fmul fast float %3713, %3739
  %3756 = fmul fast float %3755, %3710
  %3757 = fmul fast float %3756, %3745
  %3758 = fmul fast float %3757, %3736
  %3759 = fmul fast float %3758, %3751
  %3760 = fmul fast float %3759, %3754
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3764 = fsub fast float %3673, %3763
  %3765 = fmul fast float %3764, %3762
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fmul fast float %3760, %3590
  %3768 = fadd fast float %3760, %3590
  %3769 = fmul fast float %3768, %3599
  %3770 = fsub fast float %3769, %3599
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = and i32 %3629, 128
  %3773 = icmp ne i32 %3772, 0
  %3774 = select i1 %3773, float %3771, float %3767
  %3775 = fmul fast float %3774, %3766
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = fcmp fast ugt float %3775, %3777
  br i1 %3778, label %3779, label %3678

; <label>:3779                                    ; preds = %3698
  %3780 = select i1 %3738, float %3775, float 0.000000e+00
  %3781 = fadd fast float %3780, %3554
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  br i1 %3738, label %3678, label %3783

; <label>:3783                                    ; preds = %3779
  %3784 = and i32 %3629, 4
  %3785 = and i32 %3629, 8
  %3786 = add i32 %3585, 0
  %3787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3789 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3787, %dx.types.Handle %3788, float %3716, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float %3721, float %3723, float undef, float %3725, float %3727, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = bitcast float %3611 to i32
  %3795 = and i32 %3794, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = lshr i32 %3794, 8
  %3798 = and i32 %3797, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = fmul fast float %3793, %3796
  %3801 = fadd fast float %3800, %3799
  %3802 = fmul fast float %3801, 0x3F70101000000000
  %3803 = add i32 %3586, 0
  %3804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3803, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3804, %dx.types.Handle %3788, float %3716, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float %3721, float %3723, float undef, float %3725, float %3727, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3805, 3
  %3810 = bitcast float %3605 to i32
  %3811 = and i32 %3810, 255
  %3812 = uitofp i32 %3811 to float
  %3813 = lshr i32 %3810, 8
  %3814 = and i32 %3813, 255
  %3815 = uitofp i32 %3814 to float
  %3816 = lshr i32 %3810, 16
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = fmul fast float %3818, 0x3F70101000000000
  %3820 = fmul fast float %3806, %3812
  %3821 = fadd fast float %3820, %3815
  %3822 = fmul fast float %3821, 0x3F70101000000000
  %3823 = fadd fast float %3807, -5.000000e-01
  %3824 = fadd fast float %3809, -5.000000e-01
  %3825 = fmul fast float %3823, %3819
  %3826 = fmul fast float %3824, %3819
  %3827 = fadd fast float %3825, 5.000000e-01
  %3828 = fadd fast float %3826, 5.000000e-01
  %3829 = fmul fast float %3790, %3614
  %3830 = fmul fast float %3791, %3615
  %3831 = fmul fast float %3792, %3616
  %3832 = fmul fast float %3827, 2.000000e+00
  %3833 = fadd fast float %3832, -1.000000e+00
  %3834 = fmul fast float %3828, 2.000000e+00
  %3835 = fadd fast float %3834, -1.000000e+00
  %3836 = fadd fast float %3833, %3835
  %3837 = fmul fast float %3836, 5.000000e-01
  %3838 = fsub fast float %3833, %3835
  %3839 = fmul fast float %3838, 5.000000e-01
  %3840 = call float @dx.op.unary.f32(i32 6, float %3837)  ; FAbs(value)
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = call float @dx.op.unary.f32(i32 6, float %3839)  ; FAbs(value)
  %3843 = fsub fast float %3841, %3842
  %3844 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3839, float %3843, float %3837, float %3839, float %3843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3845 = call float @dx.op.unary.f32(i32 25, float %3844)  ; Rsqrt(value)
  %3846 = fmul fast float %3837, %3845
  %3847 = fmul fast float %3839, %3845
  %3848 = fmul fast float %3845, %3843
  %3849 = fmul fast float %3848, %3579
  %3850 = fmul fast float %3848, %3580
  %3851 = fmul fast float %3848, %3581
  %3852 = fmul fast float %3846, %3602
  %3853 = fmul fast float %3846, %3603
  %3854 = fmul fast float %3846, %3604
  %3855 = fadd fast float %3852, %3849
  %3856 = fadd fast float %3853, %3850
  %3857 = fadd fast float %3854, %3851
  %3858 = fmul fast float %3847, %3608
  %3859 = fmul fast float %3847, %3609
  %3860 = fmul fast float %3847, %3610
  %3861 = fadd fast float %3855, %3858
  %3862 = fadd fast float %3856, %3859
  %3863 = fadd fast float %3857, %3860
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float %3861, float %3862, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = call float @dx.op.unary.f32(i32 25, float %3864)  ; Rsqrt(value)
  %3866 = fmul fast float %3861, %3865
  %3867 = fmul fast float %3862, %3865
  %3868 = fmul fast float %3863, %3865
  %3869 = icmp ne i32 %3785, 0
  %3870 = select i1 %3869, float 1.000000e+00, float 0.000000e+00
  %3871 = fmul fast float %3775, %3870
  %3872 = and i32 %3629, 1
  %3873 = icmp eq i32 %3872, 0
  br i1 %3873, label %3874, label %3878

; <label>:3874                                    ; preds = %3783
  %3875 = fsub fast float %3866, %3562
  %3876 = fsub fast float %3867, %3563
  %3877 = fsub fast float %3868, %3564
  br label %3878

; <label>:3878                                    ; preds = %3874, %3783
  %3879 = phi float [ %3875, %3874 ], [ %3866, %3783 ]
  %3880 = phi float [ %3876, %3874 ], [ %3867, %3783 ]
  %3881 = phi float [ %3877, %3874 ], [ %3868, %3783 ]
  %3882 = fmul float %3881, %3871
  %3883 = fmul float %3880, %3871
  %3884 = fmul float %3879, %3871
  %3885 = fadd fast float %3884, %3562
  %3886 = fadd fast float %3883, %3563
  %3887 = fadd fast float %3882, %3564
  %3888 = icmp ne i32 %3784, 0
  %3889 = select i1 %3888, float 1.000000e+00, float 0.000000e+00
  %3890 = fmul fast float %3775, %3889
  %3891 = fsub fast float %3829, %3569
  %3892 = fsub fast float %3830, %3570
  %3893 = fsub fast float %3831, %3571
  %3894 = fmul fast float %3891, %3890
  %3895 = fmul fast float %3892, %3890
  %3896 = fmul fast float %3893, %3890
  %3897 = fadd fast float %3894, %3569
  %3898 = fadd fast float %3895, %3570
  %3899 = fadd fast float %3896, %3571
  %3900 = fsub fast float %3802, %3568
  %3901 = fmul fast float %3900, %3890
  %3902 = fadd fast float %3901, %3568
  %3903 = fmul fast float %3890, %3558
  %3904 = fsub fast float %3558, %3903
  %3905 = fmul fast float %3890, %3557
  %3906 = fsub fast float %3557, %3905
  %3907 = fadd fast float %3775, %3567
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = fsub fast float %3822, %3566
  %3910 = fmul fast float %3909, %3871
  %3911 = fadd fast float %3910, %3566
  %3912 = fsub fast float %3808, %3565
  %3913 = fmul fast float %3912, %3871
  %3914 = fadd fast float %3913, %3565
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.CBufRet.f32 %3916, 1
  %3919 = fmul fast float %3918, %3915
  %3920 = fadd fast float %3919, %3917
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = bitcast float %3617 to i32
  %3923 = and i32 %3922, 65535
  %3924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3923)  ; LegacyF16ToF32(value)
  %3925 = lshr i32 %3922, 16
  %3926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3925)  ; LegacyF16ToF32(value)
  %3927 = fcmp fast oge float %3924, 0.000000e+00
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = select i1 %3927, float %3924, float %3929
  %3931 = fadd fast float %3930, %3926
  %3932 = fsub fast float %3921, %3556
  %3933 = fmul fast float %3932, %3775
  %3934 = fadd fast float %3933, %3556
  %3935 = fmul fast float %3931, %3775
  %3936 = call float @dx.op.binary.f32(i32 35, float %3555, float %3935)  ; FMax(a,b)
  %3937 = and i32 %3629, 16
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3961, label %3939

; <label>:3939                                    ; preds = %3878
  %3940 = bitcast float %3623 to i32
  %3941 = add i32 %3620, 0
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3942, %dx.types.Handle %3788, float %3716, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float %3721, float %3723, float undef, float %3725, float %3727, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = and i32 %3940, 65535
  %3948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3947)  ; LegacyF16ToF32(value)
  %3949 = fmul fast float %3944, %3614
  %3950 = fmul fast float %3945, %3615
  %3951 = fmul fast float %3946, %3616
  %3952 = and i32 %3629, 16384
  %3953 = icmp ne i32 %3952, 0
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = select i1 %3953, float %3955, float 1.000000e+00
  %3957 = fmul fast float %3956, %3948
  %3958 = fmul fast float %3949, %3957
  %3959 = fmul fast float %3950, %3957
  %3960 = fmul fast float %3951, %3957
  br label %3961

; <label>:3961                                    ; preds = %3939, %3878
  %3962 = phi float [ %3958, %3939 ], [ 0.000000e+00, %3878 ]
  %3963 = phi float [ %3959, %3939 ], [ 0.000000e+00, %3878 ]
  %3964 = phi float [ %3960, %3939 ], [ 0.000000e+00, %3878 ]
  %3965 = fsub fast float %3962, %3559
  %3966 = fsub fast float %3963, %3560
  %3967 = fsub fast float %3964, %3561
  %3968 = fmul fast float %3965, %3775
  %3969 = fmul fast float %3966, %3775
  %3970 = fmul fast float %3967, %3775
  %3971 = fadd fast float %3968, %3559
  %3972 = fadd fast float %3969, %3560
  %3973 = fadd fast float %3970, %3561
  br label %3678

; <label>:3974                                    ; preds = %3678
  br label %3975

; <label>:3975                                    ; preds = %3974, %3498
  %3976 = phi float [ 0.000000e+00, %3498 ], [ %3679, %3974 ]
  %3977 = phi float [ %3467, %3498 ], [ %3680, %3974 ]
  %3978 = phi float [ %3465, %3498 ], [ %3681, %3974 ]
  %3979 = phi float [ 0.000000e+00, %3498 ], [ %3682, %3974 ]
  %3980 = phi float [ 0.000000e+00, %3498 ], [ %3683, %3974 ]
  %3981 = phi float [ %3459, %3498 ], [ %3684, %3974 ]
  %3982 = phi float [ %3460, %3498 ], [ %3685, %3974 ]
  %3983 = phi float [ %3461, %3498 ], [ %3686, %3974 ]
  %3984 = phi float [ %3493, %3498 ], [ %3687, %3974 ]
  %3985 = phi float [ %3494, %3498 ], [ %3688, %3974 ]
  %3986 = phi float [ %3495, %3498 ], [ %3689, %3974 ]
  %3987 = phi float [ %3464, %3498 ], [ %3690, %3974 ]
  %3988 = phi float [ %3463, %3498 ], [ %3691, %3974 ]
  %3989 = phi float [ 0.000000e+00, %3498 ], [ %3692, %3974 ]
  %3990 = phi float [ %3462, %3498 ], [ %3693, %3974 ]
  %3991 = phi float [ %3456, %3498 ], [ %3694, %3974 ]
  %3992 = phi float [ %3457, %3498 ], [ %3695, %3974 ]
  %3993 = phi float [ %3458, %3498 ], [ %3696, %3974 ]
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3984, float %3985, float %3986, float %3984, float %3985, float %3986)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = call float @dx.op.unary.f32(i32 25, float %3994)  ; Rsqrt(value)
  %3996 = fmul fast float %3995, %3984
  %3997 = fmul fast float %3995, %3985
  %3998 = fmul fast float %3995, %3986
  %3999 = fadd fast float %3989, %900
  %4000 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3997, float %3998, float %3996, float %3997, float %3998)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call float @dx.op.unary.f32(i32 25, float %4001)  ; Rsqrt(value)
  %4003 = fmul fast float %4002, %3996
  %4004 = fmul fast float %4002, %3997
  %4005 = fmul fast float %4002, %3998
  br label %4006

; <label>:4006                                    ; preds = %3975, %3453
  %4007 = phi float [ %4003, %3975 ], [ %3493, %3453 ]
  %4008 = phi float [ %4004, %3975 ], [ %3494, %3453 ]
  %4009 = phi float [ %4005, %3975 ], [ %3495, %3453 ]
  %4010 = phi float [ %3991, %3975 ], [ %3456, %3453 ]
  %4011 = phi float [ %3992, %3975 ], [ %3457, %3453 ]
  %4012 = phi float [ %3993, %3975 ], [ %3458, %3453 ]
  %4013 = phi float [ %3981, %3975 ], [ %3459, %3453 ]
  %4014 = phi float [ %3982, %3975 ], [ %3460, %3453 ]
  %4015 = phi float [ %3983, %3975 ], [ %3461, %3453 ]
  %4016 = phi float [ %3990, %3975 ], [ %3462, %3453 ]
  %4017 = phi float [ %4000, %3975 ], [ %900, %3453 ]
  %4018 = phi float [ %3988, %3975 ], [ %3463, %3453 ]
  %4019 = phi float [ %3987, %3975 ], [ %3464, %3453 ]
  %4020 = phi float [ %3980, %3975 ], [ 0.000000e+00, %3453 ]
  %4021 = phi float [ %3979, %3975 ], [ 0.000000e+00, %3453 ]
  %4022 = phi float [ %3976, %3975 ], [ 0.000000e+00, %3453 ]
  %4023 = phi float [ %3977, %3975 ], [ %3467, %3453 ]
  %4024 = phi float [ %3978, %3975 ], [ %3465, %3453 ]
  %4025 = fadd fast float %4016, 0xBFB99999A0000000
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fmul fast float %4026, 0x3FF1C71C80000000
  %4028 = call float @dx.op.binary.f32(i32 36, float %4016, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4029 = fsub fast float 1.000000e+00, %4027
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %4030, %4010
  %4032 = fmul fast float %4030, %4011
  %4033 = fmul fast float %4030, %4012
  %4034 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4036 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4037 = fmul fast float %4027, %4010
  %4038 = fmul fast float %4027, %4011
  %4039 = fmul fast float %4027, %4012
  %4040 = fadd fast float %4037, %4028
  %4041 = fadd fast float %4038, %4028
  %4042 = fadd fast float %4039, %4028
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.i32 %4047, 3
  %4049 = and i32 %4048, 8
  %4050 = icmp ne i32 %4049, 0
  %4051 = call float @dx.op.binary.f32(i32 35, float %4034, float %4010)  ; FMax(a,b)
  %4052 = call float @dx.op.binary.f32(i32 35, float %4035, float %4010)  ; FMax(a,b)
  %4053 = call float @dx.op.binary.f32(i32 35, float %4036, float %4010)  ; FMax(a,b)
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = select i1 %181, float %4010, float %4034
  %4056 = select i1 %181, float %4054, float %4035
  %4057 = select i1 %181, float 1.000000e+00, float %4036
  %4058 = select i1 %4050, float %4051, float %4055
  %4059 = select i1 %4050, float %4052, float %4056
  %4060 = select i1 %4050, float %4053, float %4057
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4065 = fadd fast float %4062, %139
  %4066 = fadd fast float %4063, %140
  %4067 = fadd fast float %4064, %141
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = fsub fast float %4065, %4069
  %4072 = fsub fast float %4066, %4070
  %4073 = fmul fast float %4071, %4071
  %4074 = fmul fast float %4072, %4072
  %4075 = fadd fast float %4073, %4074
  %4076 = call float @dx.op.unary.f32(i32 24, float %4075)  ; Sqrt(value)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4078 = fcmp fast olt float %4076, %4077
  br i1 %4078, label %4079, label %4146

; <label>:4079                                    ; preds = %4006
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4088 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4090 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4091 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4092 = fadd fast float %4089, %4065
  %4093 = fadd fast float %4090, %4066
  %4094 = fadd fast float %4091, %4067
  %4095 = fmul fast float %4092, %4081
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4083, float %4095)  ; FMad(a,b,c)
  %4097 = call float @dx.op.tertiary.f32(i32 46, float %4094, float %4085, float %4096)  ; FMad(a,b,c)
  %4098 = fmul fast float %4092, %4086
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4087, float %4098)  ; FMad(a,b,c)
  %4100 = call float @dx.op.tertiary.f32(i32 46, float %4094, float %4088, float %4099)  ; FMad(a,b,c)
  %4101 = fsub fast float %4097, %4089
  %4102 = fsub fast float %4100, %4090
  %4103 = fsub fast float %4101, %4069
  %4104 = fadd fast float %4103, %4077
  %4105 = fsub fast float %4102, %4070
  %4106 = fadd fast float %4105, %4077
  %4107 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4108 = fmul fast float %4104, %4107
  %4109 = fmul fast float %4106, %4107
  %4110 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4112 = fsub fast float 1.000000e+00, %4110
  %4113 = fsub fast float 1.000000e+00, %4111
  %4114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %37, float %4112, float %4113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = fcmp fast ugt float %4115, 0.000000e+00
  br i1 %4116, label %4117, label %4420

; <label>:4117                                    ; preds = %4079
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 2
  %4120 = fmul fast float %4119, %4115
  %4121 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4122 = fadd fast float %4121, %4120
  %4123 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4124 = fadd fast float %4122, %4091
  %4125 = fmul fast float %4097, %4085
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4088, float %4125)  ; FMad(a,b,c)
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4123, float %4126)  ; FMad(a,b,c)
  %4128 = fsub fast float %4127, %4091
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fsub fast float %4128, %4130
  %4132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %37, float %4112, float %4113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %37, float %4112, float %4113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4140 = fadd fast float %4137, %4133
  %4141 = fmul fast float %4140, 0x3F847AE140000000
  %4142 = fadd fast float %4138, %4134
  %4143 = fmul fast float %4142, 0x3F847AE140000000
  %4144 = fadd fast float %4139, %4135
  %4145 = fmul fast float %4144, 0x3F847AE140000000
  br label %4420

; <label>:4146                                    ; preds = %4006
  %4147 = and i32 %157, 1
  %4148 = icmp eq i32 %4147, 0
  br i1 %4148, label %4420, label %4149

; <label>:4149                                    ; preds = %4146
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4160 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4161 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4162 = fadd fast float %4159, %4065
  %4163 = fadd fast float %4160, %4066
  %4164 = fadd fast float %4161, %4067
  %4165 = fmul fast float %4162, %4151
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4153, float %4165)  ; FMad(a,b,c)
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4162, %4156
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4158, float %4169)  ; FMad(a,b,c)
  %4171 = fsub fast float %4167, %4159
  %4172 = fsub fast float %4170, %4160
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.i32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.i32 %4180, 1
  %4183 = udiv i32 %4182, %4181
  %4184 = fsub fast float %4171, %4174
  %4185 = fsub fast float %4172, %4175
  %4186 = call float @dx.op.binary.f32(i32 35, float %4184, float 0.000000e+00)  ; FMax(a,b)
  %4187 = call float @dx.op.binary.f32(i32 35, float %4185, float 0.000000e+00)  ; FMax(a,b)
  %4188 = call float @dx.op.binary.f32(i32 36, float %4186, float %4176)  ; FMin(a,b)
  %4189 = call float @dx.op.binary.f32(i32 36, float %4187, float %4177)  ; FMin(a,b)
  %4190 = add i32 %4181, -1
  %4191 = add i32 %4183, -1
  %4192 = fmul fast float %4188, %4179
  %4193 = fmul fast float %4189, %4179
  %4194 = fptoui float %4192 to i32
  %4195 = fptoui float %4193 to i32
  %4196 = call i32 @dx.op.binary.i32(i32 40, i32 %4194, i32 %4190)  ; UMin(a,b)
  %4197 = call i32 @dx.op.binary.i32(i32 40, i32 %4195, i32 %4191)  ; UMin(a,b)
  %4198 = mul i32 %4197, %4181
  %4199 = add i32 %4198, %4196
  %4200 = shl i32 %4199, 2
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = icmp eq i32 %4202, -1
  br i1 %4203, label %4420, label %4204

; <label>:4204                                    ; preds = %4149
  %4205 = mul i32 %4202, 148
  %4206 = add i32 %4205, 4
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = add i32 %4205, 8
  %4210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = add i32 %4205, 36
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = add i32 %4205, 60
  %4216 = add i32 %4205, 92
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = add i32 %4205, 116
  %4220 = fsub fast float %4171, %4208
  %4221 = fsub fast float %4172, %4211
  %4222 = fmul fast float %4179, %4220
  %4223 = fmul fast float %4179, %4221
  %4224 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4225 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4226 = fsub fast float 1.000000e+00, %4225
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 2
  %4229 = call float @dx.op.unary.f32(i32 83, float %4224)  ; DerivCoarseX(value)
  %4230 = call float @dx.op.unary.f32(i32 83, float %4226)  ; DerivCoarseX(value)
  %4231 = call float @dx.op.unary.f32(i32 84, float %4224)  ; DerivCoarseY(value)
  %4232 = call float @dx.op.unary.f32(i32 84, float %4226)  ; DerivCoarseY(value)
  %4233 = fmul fast float %4229, %4228
  %4234 = fmul fast float %4230, %4228
  %4235 = fmul fast float %4231, %4228
  %4236 = fmul fast float %4232, %4228
  %4237 = call float @dx.op.dot2.f32(i32 54, float %4235, float %4236, float %4235, float %4236)  ; Dot2(ax,ay,bx,by)
  %4238 = call float @dx.op.dot2.f32(i32 54, float %4233, float %4234, float %4233, float %4234)  ; Dot2(ax,ay,bx,by)
  %4239 = call float @dx.op.binary.f32(i32 35, float %4238, float %4237)  ; FMax(a,b)
  %4240 = call float @dx.op.unary.f32(i32 23, float %4239)  ; Log(value)
  %4241 = fmul fast float %4240, 5.000000e-01
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4244 = fadd fast float %4243, %4241
  %4245 = call float @dx.op.binary.f32(i32 35, float %4244, float 0.000000e+00)  ; FMax(a,b)
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 3
  %4248 = fadd fast float %4247, %4245
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4251 = fadd fast float %4248, %4250
  %4252 = add i32 %4218, 0
  %4253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4252, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4254 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4253, i32 0)  ; GetDimensions(handle,mipLevel)
  %4255 = extractvalue %dx.types.Dimensions %4254, 0
  %4256 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4255)  ; FirstbitLo(value)
  %4257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.i32 %4257, 1
  %4259 = sub nsw i32 %4258, %4256
  %4260 = sitofp i32 %4259 to float
  %4261 = fsub fast float %4251, %4260
  %4262 = call float @dx.op.binary.f32(i32 35, float %4261, float 0.000000e+00)  ; FMax(a,b)
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4253, %dx.types.Handle %35, float %4224, float %4226, float %4214, float undef, i32 0, i32 0, i32 undef, float %4262)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = fcmp ule float %4264, 0x3FE0101020000000
  %4266 = extractvalue %dx.types.CBufRet.i32 %4257, 0
  %4267 = and i32 %4266, 128
  %4268 = icmp ne i32 %4267, 0
  %4269 = and i1 %4265, %4268
  br i1 %4269, label %4420, label %4270

; <label>:4270                                    ; preds = %4204
  %4271 = add i32 %4205, 20
  %4272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = add i32 %4205, 24
  %4275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4274, i32 undef)  ; BufferLoad(srv,index,wot)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = add i32 %4205, 40
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = add i32 %4205, 96
  %4281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.i32 %4281, 0
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 2
  %4285 = fmul fast float %4284, %4224
  %4286 = fmul fast float %4284, %4226
  %4287 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4288 = fadd fast float %4285, %4287
  %4289 = fadd fast float %4286, %4287
  %4290 = add i32 %4282, 0
  %4291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4290, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4292 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4291, i32 0)  ; GetDimensions(handle,mipLevel)
  %4293 = extractvalue %dx.types.Dimensions %4292, 0
  %4294 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4293)  ; FirstbitLo(value)
  %4295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.i32 %4295, 1
  %4297 = sub nsw i32 %4296, %4294
  %4298 = sitofp i32 %4297 to float
  %4299 = fsub fast float %4248, %4298
  %4300 = call float @dx.op.binary.f32(i32 35, float %4299, float 0.000000e+00)  ; FMax(a,b)
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4291, %dx.types.Handle %35, float %4288, float %4289, float %4279, float undef, i32 0, i32 0, i32 undef, float %4300)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = fmul fast float %4302, %4273
  %4304 = fadd fast float %4303, %4276
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4313 = extractvalue %dx.types.CBufRet.f32 %4305, 3
  %4314 = fadd fast float %4310, %4171
  %4315 = fadd fast float %4312, %4172
  %4316 = fadd fast float %4304, %4313
  %4317 = fmul fast float %4314, %4306
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4307, float %4317)  ; FMad(a,b,c)
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4308, float %4318)  ; FMad(a,b,c)
  %4320 = fsub fast float %4319, %4313
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 2
  %4323 = fsub fast float %4320, %4322
  %4324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.i32 %4324, 0
  %4326 = call i32 @dx.op.binary.i32(i32 40, i32 %4202, i32 %4325)  ; UMin(a,b)
  %4327 = mul i32 %4326, 36
  %4328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.i32 %4328, 0
  %4330 = add i32 %4327, 4
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = fmul fast float %4332, %4224
  %4334 = fmul fast float %4332, %4226
  %4335 = extractvalue %dx.types.CBufRet.f32 %4331, 1
  %4336 = fadd fast float %4333, %4335
  %4337 = fadd fast float %4334, %4335
  %4338 = icmp eq i32 %4329, 0
  br i1 %4338, label %4407, label %4339

; <label>:4339                                    ; preds = %4270
  br label %4340

; <label>:4340                                    ; preds = %4397, %4339
  %4341 = phi float [ %4398, %4397 ], [ 0.000000e+00, %4339 ]
  %4342 = phi float [ %4399, %4397 ], [ 0.000000e+00, %4339 ]
  %4343 = phi float [ %4400, %4397 ], [ 0.000000e+00, %4339 ]
  %4344 = phi float [ %4401, %4397 ], [ 0.000000e+00, %4339 ]
  %4345 = phi float [ %4402, %4397 ], [ 0.000000e+00, %4339 ]
  %4346 = phi float [ %4403, %4397 ], [ 0.000000e+00, %4339 ]
  %4347 = phi i32 [ %4404, %4397 ], [ 0, %4339 ]
  %4348 = shl i32 %4347, 2
  %4349 = add i32 %4215, %4348
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = add i32 %4219, %4348
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = add i32 %4354, 0
  %4356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4355, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4357 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4356, i32 0)  ; GetDimensions(handle,mipLevel)
  %4358 = extractvalue %dx.types.Dimensions %4357, 0
  %4359 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4358)  ; FirstbitLo(value)
  %4360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.i32 %4360, 1
  %4362 = sub nsw i32 %4361, %4359
  %4363 = sitofp i32 %4362 to float
  %4364 = fsub fast float %4248, %4363
  %4365 = call float @dx.op.binary.f32(i32 35, float %4364, float 0.000000e+00)  ; FMax(a,b)
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4356, %dx.types.Handle %35, float %4336, float %4337, float %4351, float undef, i32 0, i32 0, i32 undef, float %4365)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = fcmp fast ogt float %4367, 0.000000e+00
  br i1 %4368, label %4369, label %4397

; <label>:4369                                    ; preds = %4340
  %4370 = add i32 %4330, %4348
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = and i32 %4372, 32767
  %4374 = mul nuw nsw i32 %4373, 928
  %4375 = add nuw nsw i32 %4374, 48
  %4376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = add nuw nsw i32 %4374, 60
  %4381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.f32 %4381, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4381, 2
  %4385 = fmul fast float %4377, %4367
  %4386 = fmul fast float %4378, %4367
  %4387 = fmul fast float %4379, %4367
  %4388 = fadd fast float %4385, %4341
  %4389 = fadd fast float %4386, %4342
  %4390 = fadd fast float %4387, %4343
  %4391 = fmul fast float %4382, %4367
  %4392 = fmul fast float %4383, %4367
  %4393 = fmul fast float %4384, %4367
  %4394 = fadd fast float %4391, %4344
  %4395 = fadd fast float %4392, %4345
  %4396 = fadd fast float %4393, %4346
  br label %4397

; <label>:4397                                    ; preds = %4369, %4340
  %4398 = phi float [ %4388, %4369 ], [ %4341, %4340 ]
  %4399 = phi float [ %4389, %4369 ], [ %4342, %4340 ]
  %4400 = phi float [ %4390, %4369 ], [ %4343, %4340 ]
  %4401 = phi float [ %4394, %4369 ], [ %4344, %4340 ]
  %4402 = phi float [ %4395, %4369 ], [ %4345, %4340 ]
  %4403 = phi float [ %4396, %4369 ], [ %4346, %4340 ]
  %4404 = add nuw i32 %4347, 1
  %4405 = icmp eq i32 %4404, %4329
  br i1 %4405, label %4406, label %4340

; <label>:4406                                    ; preds = %4397
  br label %4407

; <label>:4407                                    ; preds = %4406, %4270
  %4408 = phi float [ 0.000000e+00, %4270 ], [ %4398, %4406 ]
  %4409 = phi float [ 0.000000e+00, %4270 ], [ %4399, %4406 ]
  %4410 = phi float [ 0.000000e+00, %4270 ], [ %4400, %4406 ]
  %4411 = phi float [ 0.000000e+00, %4270 ], [ %4401, %4406 ]
  %4412 = phi float [ 0.000000e+00, %4270 ], [ %4402, %4406 ]
  %4413 = phi float [ 0.000000e+00, %4270 ], [ %4403, %4406 ]
  %4414 = fadd fast float %4411, %4408
  %4415 = fmul fast float %4414, 0x3F847AE140000000
  %4416 = fadd fast float %4412, %4409
  %4417 = fmul fast float %4416, 0x3F847AE140000000
  %4418 = fadd fast float %4413, %4410
  %4419 = fmul fast float %4418, 0x3F847AE140000000
  br label %4420

; <label>:4420                                    ; preds = %4407, %4204, %4149, %4146, %4117, %4079
  %4421 = phi float [ %4131, %4117 ], [ -1.310720e+05, %4079 ], [ %4323, %4407 ], [ -1.310720e+05, %4149 ], [ -1.310720e+05, %4204 ], [ -1.310720e+05, %4146 ]
  %4422 = phi float [ %4141, %4117 ], [ 0.000000e+00, %4079 ], [ %4415, %4407 ], [ 0.000000e+00, %4149 ], [ 0.000000e+00, %4204 ], [ 0.000000e+00, %4146 ]
  %4423 = phi float [ %4143, %4117 ], [ 0.000000e+00, %4079 ], [ %4417, %4407 ], [ 0.000000e+00, %4149 ], [ 0.000000e+00, %4204 ], [ 0.000000e+00, %4146 ]
  %4424 = phi float [ %4145, %4117 ], [ 0.000000e+00, %4079 ], [ %4419, %4407 ], [ 0.000000e+00, %4149 ], [ 0.000000e+00, %4204 ], [ 0.000000e+00, %4146 ]
  %4425 = phi i1 [ true, %4117 ], [ false, %4079 ], [ true, %4407 ], [ false, %4149 ], [ false, %4204 ], [ false, %4146 ]
  %4426 = and i32 %157, 3
  %4427 = icmp eq i32 %4426, 1
  %4428 = select i1 %4427, float 1.000000e+00, float 0.000000e+00
  %4429 = fsub fast float %4421, %141
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = select i1 %4425, float %4430, float 1.000000e+00
  %4432 = fmul fast float %4431, %4428
  %4433 = icmp eq i32 %4426, 3
  %4434 = select i1 %4433, float 1.000000e+00, float %4432
  %4435 = call float @dx.op.binary.f32(i32 35, float %4022, float %4434)  ; FMax(a,b)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fcmp fast une float %4436, 0.000000e+00
  %4438 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = call float @dx.op.unary.f32(i32 25, float %4438)  ; Rsqrt(value)
  br i1 %4437, label %4447, label %4440

; <label>:4440                                    ; preds = %4420
  %4441 = fmul fast float %4439, %139
  %4442 = fmul fast float %4439, %140
  %4443 = fmul fast float %4439, %141
  %4444 = fsub fast float -0.000000e+00, %4441
  %4445 = fsub fast float -0.000000e+00, %4442
  %4446 = fsub fast float -0.000000e+00, %4443
  br label %4615

; <label>:4447                                    ; preds = %4420
  %4448 = fmul fast float %139, %4439
  %4449 = fsub fast float -0.000000e+00, %4448
  %4450 = fmul fast float %140, %4439
  %4451 = fsub fast float -0.000000e+00, %4450
  %4452 = fmul fast float %141, %4439
  %4453 = fsub fast float -0.000000e+00, %4452
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4451, float %4453, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = fmul fast float %4436, 2.500000e+00
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = fmul fast float %4436, 0x4013FFFFE0000000
  %4458 = fadd fast float %4457, 0xBFFFFFFFE0000000
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fmul fast float %4436, 0x4004000020000000
  %4461 = fadd fast float %4460, 0xBFF8000040000000
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4464 = fmul fast float %4025, 1.000000e+01
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4465, 2.000000e+00
  %4467 = fsub fast float 3.000000e+00, %4466
  %4468 = fmul fast float %4465, %4465
  %4469 = fmul fast float %4468, %4467
  %4470 = fsub fast float 1.000000e+00, %4469
  %4471 = fsub fast float 0x3FE3333340000000, %4046
  %4472 = fmul fast float %4471, 0x400AAAAAA0000000
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = fmul fast float %4470, %4473
  %4475 = fmul fast float %4058, 0x3FEA2B8620000000
  %4476 = fmul fast float %4059, 0x3FEA2B8620000000
  %4477 = fmul fast float %4060, 0x3FEA2B8620000000
  %4478 = fadd fast float %4475, 0x3FC81DFBA0000000
  %4479 = fmul fast float %4478, %4058
  %4480 = fadd fast float %4479, 0x3F910E6020000000
  %4481 = fadd fast float %4476, 0x3FC81DFBA0000000
  %4482 = fmul fast float %4481, %4059
  %4483 = fadd fast float %4482, 0x3F910E6020000000
  %4484 = fadd fast float %4477, 0x3FC81DFBA0000000
  %4485 = fmul fast float %4484, %4060
  %4486 = fadd fast float %4485, 0x3F910E6020000000
  %4487 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = fsub fast float %4487, %4058
  %4491 = fsub fast float %4488, %4059
  %4492 = fsub fast float %4489, %4060
  %4493 = fmul fast float %4490, %4463
  %4494 = fmul fast float %4493, %4474
  %4495 = fmul fast float %4491, %4463
  %4496 = fmul fast float %4495, %4474
  %4497 = fmul fast float %4492, %4463
  %4498 = fmul fast float %4497, %4474
  %4499 = fadd fast float %4494, %4058
  %4500 = fadd fast float %4496, %4059
  %4501 = fadd fast float %4498, %4060
  %4502 = fmul fast float %4019, %4019
  %4503 = fmul fast float %4502, %4502
  %4504 = fadd fast float %4459, 1.000000e+00
  %4505 = fsub fast float %4504, %4474
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fsub fast float 1.000000e+00, %4503
  %4510 = call float @dx.op.binary.f32(i32 36, float %4506, float %4509)  ; FMin(a,b)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4512 = call float @dx.op.binary.f32(i32 35, float %4510, float %4511)  ; FMax(a,b)
  %4513 = fadd fast float %4508, 0xBFE4CCCCC0000000
  %4514 = fmul fast float %4513, 0x4006DB6DA0000000
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fmul fast float %4515, 2.000000e+00
  %4517 = fsub fast float 3.000000e+00, %4516
  %4518 = bitcast float %4043 to i32
  %4519 = ashr i32 %4518, 1
  %4520 = add nsw i32 %4519, 532487669
  %4521 = bitcast i32 %4520 to float
  %4522 = fsub fast float 1.000000e+00, %4521
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, 2.000000e+00
  %4527 = bitcast float %4044 to i32
  %4528 = ashr i32 %4527, 1
  %4529 = add nsw i32 %4528, 532487669
  %4530 = bitcast i32 %4529 to float
  %4531 = fsub fast float 1.000000e+00, %4530
  %4532 = bitcast float %4531 to i32
  %4533 = sub nsw i32 2129859010, %4532
  %4534 = bitcast i32 %4533 to float
  %4535 = fmul fast float %4534, 2.000000e+00
  %4536 = bitcast float %4045 to i32
  %4537 = ashr i32 %4536, 1
  %4538 = add nsw i32 %4537, 532487669
  %4539 = bitcast i32 %4538 to float
  %4540 = fsub fast float 1.000000e+00, %4539
  %4541 = bitcast float %4540 to i32
  %4542 = sub nsw i32 2129859010, %4541
  %4543 = bitcast i32 %4542 to float
  %4544 = fmul fast float %4543, 2.000000e+00
  %4545 = fsub fast float 0x4002A9FBE0000000, %4526
  %4546 = fadd fast float %4526, 0x3FD54FDF00000000
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, %4545
  %4551 = fmul fast float %4550, %4550
  %4552 = fsub fast float 0x4002A9FBE0000000, %4535
  %4553 = fadd fast float %4535, 0x3FD54FDF00000000
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, %4552
  %4558 = fmul fast float %4557, %4557
  %4559 = fsub fast float 0x4002A9FBE0000000, %4544
  %4560 = fadd fast float %4544, 0x3FD54FDF00000000
  %4561 = bitcast float %4560 to i32
  %4562 = sub nsw i32 2129859010, %4561
  %4563 = bitcast i32 %4562 to float
  %4564 = fmul fast float %4563, %4559
  %4565 = fmul fast float %4564, %4564
  %4566 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4551)  ; FMax(a,b)
  %4567 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4558)  ; FMax(a,b)
  %4568 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4565)  ; FMax(a,b)
  %4569 = fsub fast float 1.000000e+00, %4454
  %4570 = fadd fast float %4569, %4470
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fsub fast float 1.000000e+00, %4434
  %4573 = fmul fast float %4512, %4572
  %4574 = fmul fast float %4515, %4515
  %4575 = fmul fast float %4574, %4573
  %4576 = fmul fast float %4575, %4517
  %4577 = fmul fast float %4572, 0xBFE99999A0000000
  %4578 = fmul fast float %4577, %4463
  %4579 = fmul fast float %4578, %4474
  %4580 = fadd fast float %4579, 1.000000e+00
  %4581 = fadd fast float %4046, -1.000000e+00
  %4582 = fmul fast float %4580, %4581
  %4583 = fadd fast float %4582, 1.000000e+00
  %4584 = fsub fast float %4566, %4043
  %4585 = fsub fast float %4567, %4044
  %4586 = fsub fast float %4568, %4045
  %4587 = fmul fast float %4576, %4584
  %4588 = fmul fast float %4576, %4585
  %4589 = fmul fast float %4576, %4586
  %4590 = fadd fast float %4587, %4043
  %4591 = fadd fast float %4588, %4044
  %4592 = fadd fast float %4589, %4045
  %4593 = fsub fast float %83, %4007
  %4594 = fsub fast float %84, %4008
  %4595 = fsub fast float %85, %4009
  %4596 = fmul fast float %4576, %4593
  %4597 = fmul fast float %4576, %4594
  %4598 = fmul fast float %4576, %4595
  %4599 = fadd fast float %4596, %4007
  %4600 = fadd fast float %4597, %4008
  %4601 = fadd fast float %4598, %4009
  %4602 = fmul fast float %4576, %4571
  %4603 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4604 = fsub fast float 1.000000e+00, %4603
  %4605 = fmul fast float %4602, %4604
  %4606 = fadd fast float %4605, %4603
  %4607 = fsub fast float 1.000000e+00, %4019
  %4608 = fmul fast float %4576, %4607
  %4609 = fadd fast float %4608, %4019
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4600, float %4601, float %4599, float %4600, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = call float @dx.op.unary.f32(i32 25, float %4610)  ; Rsqrt(value)
  %4612 = fmul fast float %4599, %4611
  %4613 = fmul fast float %4600, %4611
  %4614 = fmul fast float %4601, %4611
  br label %4615

; <label>:4615                                    ; preds = %4447, %4440
  %4616 = phi float [ %4446, %4440 ], [ %4453, %4447 ]
  %4617 = phi float [ %4445, %4440 ], [ %4451, %4447 ]
  %4618 = phi float [ %4444, %4440 ], [ %4449, %4447 ]
  %4619 = phi float [ %4443, %4440 ], [ %4452, %4447 ]
  %4620 = phi float [ %4442, %4440 ], [ %4450, %4447 ]
  %4621 = phi float [ %4441, %4440 ], [ %4448, %4447 ]
  %4622 = phi float [ %4058, %4440 ], [ %4499, %4447 ]
  %4623 = phi float [ %4059, %4440 ], [ %4500, %4447 ]
  %4624 = phi float [ %4060, %4440 ], [ %4501, %4447 ]
  %4625 = phi float [ %4007, %4440 ], [ %4612, %4447 ]
  %4626 = phi float [ %4008, %4440 ], [ %4613, %4447 ]
  %4627 = phi float [ %4009, %4440 ], [ %4614, %4447 ]
  %4628 = phi float [ %4043, %4440 ], [ %4590, %4447 ]
  %4629 = phi float [ %4044, %4440 ], [ %4591, %4447 ]
  %4630 = phi float [ %4045, %4440 ], [ %4592, %4447 ]
  %4631 = phi float [ %4046, %4440 ], [ %4606, %4447 ]
  %4632 = phi float [ %4019, %4440 ], [ %4609, %4447 ]
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 2
  %4635 = extractvalue %dx.types.CBufRet.f32 %4633, 3
  %4636 = fmul fast float %4634, %76
  %4637 = fmul fast float %4635, %77
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %37, float %4636, float %4637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = fmul fast float %4642, %4640
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fadd fast float %4644, -1.000000e+00
  %4646 = fmul fast float %4645, %4639
  %4647 = fadd fast float %4646, 1.000000e+00
  %4648 = select i1 %181, float 0.000000e+00, float %4630
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float %4618, float %4617, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4620, float %4619, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = fmul fast float %4651, 2.000000e+00
  %4653 = fmul fast float %4652, %4625
  %4654 = fmul fast float %4652, %4626
  %4655 = fmul fast float %4652, %4627
  %4656 = fsub fast float %4621, %4653
  %4657 = fsub fast float %4620, %4654
  %4658 = fsub fast float %4619, %4655
  %4659 = call float @dx.op.binary.f32(i32 36, float %4632, float %4647)  ; FMin(a,b)
  %4660 = fsub fast float 1.000000e+00, %4659
  %4661 = bitcast float %4660 to i32
  %4662 = ashr i32 %4661, 1
  %4663 = add nsw i32 %4662, 532487669
  %4664 = bitcast i32 %4663 to float
  %4665 = fsub fast float 1.000000e+00, %4631
  %4666 = call float @dx.op.binary.f32(i32 35, float %4665, float 0x3F847AE140000000)  ; FMax(a,b)
  %4667 = fmul fast float %4666, %4666
  %4668 = fmul fast float %4667, %4667
  %4669 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %4664, float %4668, float %4669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = fsub fast float 1.000000e+00, %4632
  %4673 = bitcast float %4672 to i32
  %4674 = sub nsw i32 2129859010, %4673
  %4675 = fsub fast float 1.000000e+00, %53
  %4676 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.binary.f32(i32 35, float %4676, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4678 = fdiv fast float %4675, %4677
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fmul fast float %4680, 5.000000e-01
  %4682 = fadd fast float %4681, 5.000000e-01
  %4683 = fmul fast float %4682, %53
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4685, %4678
  %4687 = fadd fast float %4683, %4686
  %4688 = fsub fast float 5.000000e-01, %4681
  %4689 = fmul fast float %4688, %4622
  %4690 = fmul fast float %4688, %4623
  %4691 = fmul fast float %4688, %4624
  %4692 = fadd fast float %4687, %4689
  %4693 = fadd fast float %4687, %4690
  %4694 = fadd fast float %4687, %4691
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fmul fast float %4696, 5.000000e-01
  %4698 = fadd fast float %4697, 5.000000e-01
  %4699 = fmul fast float %4698, %53
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fmul fast float %4701, %4678
  %4703 = fadd fast float %4699, %4702
  %4704 = fsub fast float 5.000000e-01, %4697
  %4705 = fmul fast float %4704, %4622
  %4706 = fmul fast float %4704, %4623
  %4707 = fmul fast float %4704, %4624
  %4708 = fadd fast float %4703, %4705
  %4709 = fadd fast float %4703, %4706
  %4710 = fadd fast float %4703, %4707
  %4711 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = call float @dx.op.binary.f32(i32 36, float %4622, float %4713)  ; FMin(a,b)
  %4715 = fmul fast float %4714, %4660
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = call float @dx.op.binary.f32(i32 36, float %4623, float %4713)  ; FMin(a,b)
  %4721 = fmul fast float %4720, %4660
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = bitcast float %4722 to i32
  %4724 = sub nsw i32 2129859010, %4723
  %4725 = bitcast i32 %4724 to float
  %4726 = call float @dx.op.binary.f32(i32 36, float %4624, float %4713)  ; FMin(a,b)
  %4727 = fmul fast float %4726, %4660
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = bitcast float %4728 to i32
  %4730 = sub nsw i32 2129859010, %4729
  %4731 = bitcast i32 %4730 to float
  %4732 = fmul fast float %4659, %54
  %4733 = fmul fast float %4732, %4692
  %4734 = fmul fast float %4733, %4719
  %4735 = fmul fast float %4659, %55
  %4736 = fmul fast float %4735, %4693
  %4737 = fmul fast float %4736, %4725
  %4738 = fmul fast float %4659, %56
  %4739 = fmul fast float %4738, %4694
  %4740 = fmul fast float %4739, %4731
  %4741 = call float @dx.op.binary.f32(i32 36, float %4628, float %4713)  ; FMin(a,b)
  %4742 = fmul fast float %4741, %4660
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = bitcast float %4743 to i32
  %4745 = sub nsw i32 2129859010, %4744
  %4746 = bitcast i32 %4745 to float
  %4747 = call float @dx.op.binary.f32(i32 36, float %4629, float %4713)  ; FMin(a,b)
  %4748 = fmul fast float %4747, %4660
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = bitcast float %4749 to i32
  %4751 = sub nsw i32 2129859010, %4750
  %4752 = bitcast i32 %4751 to float
  %4753 = call float @dx.op.binary.f32(i32 36, float %4648, float %4713)  ; FMin(a,b)
  %4754 = fmul fast float %4753, %4660
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = bitcast float %4755 to i32
  %4757 = sub nsw i32 2129859010, %4756
  %4758 = bitcast i32 %4757 to float
  %4759 = fmul fast float %4732, %4708
  %4760 = fmul fast float %4759, %4746
  %4761 = fmul fast float %4735, %4709
  %4762 = fmul fast float %4761, %4752
  %4763 = fmul fast float %4738, %4710
  %4764 = fmul fast float %4763, %4758
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4737, float %4740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = select i1 %181, float 0.000000e+00, float %4734
  %4767 = select i1 %181, float %4765, float %4737
  %4768 = select i1 %181, float 0.000000e+00, float %4740
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4762, float %4764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = select i1 %181, float 0.000000e+00, float %4760
  %4771 = select i1 %181, float %4769, float %4762
  %4772 = select i1 %181, float 0.000000e+00, float %4764
  %4773 = fmul fast float %4650, 9.843750e-01
  %4774 = fmul fast float %4631, 9.843750e-01
  %4775 = fadd fast float %4773, 7.812500e-03
  %4776 = fadd fast float %4774, 7.812500e-03
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %37, float %4775, float %4776, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 3
  %4780 = fmul fast float %4778, %4628
  %4781 = fmul fast float %4778, %4629
  %4782 = fmul fast float %4778, %4648
  %4783 = fadd fast float %4780, %4779
  %4784 = fadd fast float %4781, %4779
  %4785 = fadd fast float %4782, %4779
  %4786 = fcmp fast ogt float %4020, 0.000000e+00
  br i1 %4786, label %4787, label %4813

; <label>:4787                                    ; preds = %4615
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4020, float %4650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = fadd fast float %4789, -5.000000e-01
  %4793 = fadd fast float %4790, -5.000000e-01
  %4794 = fadd fast float %4791, -5.000000e-01
  %4795 = fsub fast float 1.000000e+00, %4628
  %4796 = fsub fast float 1.000000e+00, %4629
  %4797 = fsub fast float 1.000000e+00, %4648
  %4798 = fmul fast float %4628, 4.000000e+00
  %4799 = fmul fast float %4798, %4795
  %4800 = fmul fast float %4799, %4792
  %4801 = fmul fast float %4629, 4.000000e+00
  %4802 = fmul fast float %4801, %4796
  %4803 = fmul fast float %4802, %4793
  %4804 = fmul fast float %4648, 4.000000e+00
  %4805 = fmul fast float %4804, %4797
  %4806 = fmul fast float %4805, %4794
  %4807 = fadd fast float %4800, %4783
  %4808 = fadd fast float %4803, %4784
  %4809 = fadd fast float %4806, %4785
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  br label %4813

; <label>:4813                                    ; preds = %4787, %4615
  %4814 = phi float [ %4810, %4787 ], [ %4783, %4615 ]
  %4815 = phi float [ %4811, %4787 ], [ %4784, %4615 ]
  %4816 = phi float [ %4812, %4787 ], [ %4785, %4615 ]
  %4817 = call float @dx.op.binary.f32(i32 35, float %4815, float %4816)  ; FMax(a,b)
  %4818 = call float @dx.op.binary.f32(i32 35, float %4814, float %4817)  ; FMax(a,b)
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = fmul fast float %4818, %4631
  %4821 = fadd fast float %4820, %4631
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4826 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4827 = fmul fast float %4821, %4823
  %4828 = fadd fast float %4827, %4824
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fmul fast float %4825, %4821
  %4831 = fadd fast float %4830, %4826
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = fsub fast float 1.000000e+00, %4671
  %4834 = fadd fast float %4833, %4832
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = fcmp fast olt float %4835, 1.000000e+00
  br i1 %4836, label %4837, label %5692

; <label>:4837                                    ; preds = %4813
  %4838 = fcmp fast olt float %4829, 1.000000e+00
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 0
  %4841 = fcmp fast ogt float %4840, 0.000000e+00
  %4842 = or i1 %4838, %4841
  %4843 = or i1 %4838, %4841
  %4844 = xor i1 %4843, true
  %4845 = zext i1 %4844 to i32
  br i1 %4842, label %4846, label %5089

; <label>:4846                                    ; preds = %4837
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.CBufRet.f32 %4857, 2
  %4861 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.CBufRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4866 = extractvalue %dx.types.CBufRet.f32 %4862, 3
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4871 = extractvalue %dx.types.CBufRet.f32 %4867, 3
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4874, float %4875, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = call float @dx.op.unary.f32(i32 6, float %4878)  ; FAbs(value)
  %4880 = fmul fast float %4879, 8.000000e+00
  %4881 = fadd fast float %4880, -6.000000e+00
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fmul fast float %4877, 8.000000e+00
  %4884 = fmul fast float %4883, %4840
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fcmp fast ogt float %4885, 0.000000e+00
  br i1 %4886, label %4887, label %5064, !dx.controlflow.hints !80

; <label>:4887                                    ; preds = %4846
  %4888 = extractvalue %dx.types.CBufRet.f32 %4839, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4839, 2
  %4890 = fsub fast float %4888, %4889
  %4891 = fmul fast float %4890, %4631
  %4892 = fadd fast float %4891, %4889
  %4893 = fmul fast float %194, 2.000000e+00
  %4894 = fmul fast float %195, 2.000000e+00
  %4895 = fadd fast float %4893, -1.000000e+00
  %4896 = fadd fast float %4894, -1.000000e+00
  %4897 = fmul fast float %4892, %4895
  %4898 = fmul fast float %4892, %4896
  %4899 = fadd fast float %4897, %76
  %4900 = fadd fast float %4898, %77
  %4901 = fmul fast float %4899, %4634
  %4902 = fmul fast float %4900, %4635
  %4903 = fadd fast float %4631, 0xBFE3333340000000
  %4904 = fmul fast float %4903, 0x4004000020000000
  %4905 = fsub fast float 1.000000e+00, %4904
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, 3.000000e+00
  %4908 = fadd fast float %4907, %194
  %4909 = call float @dx.op.unary.f32(i32 27, float %4908)  ; Round_ni(value)
  %4910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %4901, float %4902, float %4909, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = fcmp fast une float %4911, 0xFFF0000000000000
  %4913 = fcmp fast une float %4911, 0x7FF0000000000000
  %4914 = and i1 %4912, %4913
  %4915 = fcmp fast olt float %4911, 0.000000e+00
  %4916 = call float @dx.op.unary.f32(i32 6, float %4911)  ; FAbs(value)
  %4917 = fsub fast float 1.000000e+00, %4916
  %4918 = select i1 %4914, float 1.000000e+00, float 0.000000e+00
  %4919 = fmul fast float %4918, %4885
  %4920 = fcmp fast ogt float %4919, 0.000000e+00
  br i1 %4920, label %4921, label %5064, !dx.controlflow.hints !81

; <label>:4921                                    ; preds = %4887
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.CBufRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.CBufRet.f32 %4922, 2
  %4926 = select i1 %4915, float 0.000000e+00, float %4923
  %4927 = select i1 %4915, float 0.000000e+00, float %4924
  %4928 = select i1 %4915, float 0.000000e+00, float %4925
  %4929 = select i1 %4915, float %4848, float %4863
  %4930 = select i1 %4915, float %4853, float %4868
  %4931 = select i1 %4915, float %4858, float %4873
  %4932 = select i1 %4915, float %4849, float %4864
  %4933 = select i1 %4915, float %4854, float %4869
  %4934 = select i1 %4915, float %4859, float %4874
  %4935 = select i1 %4915, float %4850, float %4865
  %4936 = select i1 %4915, float %4855, float %4870
  %4937 = select i1 %4915, float %4860, float %4875
  %4938 = select i1 %4915, float %4851, float %4866
  %4939 = select i1 %4915, float %4856, float %4871
  %4940 = select i1 %4915, float %4861, float %4876
  %4941 = fadd fast float %4926, %139
  %4942 = fadd fast float %4927, %140
  %4943 = fadd fast float %4928, %141
  %4944 = fmul fast float %4941, %4929
  %4945 = call float @dx.op.tertiary.f32(i32 46, float %4942, float %4932, float %4944)  ; FMad(a,b,c)
  %4946 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4935, float %4945)  ; FMad(a,b,c)
  %4947 = fadd fast float %4946, %4938
  %4948 = fmul fast float %4941, %4930
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4942, float %4933, float %4948)  ; FMad(a,b,c)
  %4950 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4936, float %4949)  ; FMad(a,b,c)
  %4951 = fadd fast float %4950, %4939
  %4952 = fmul fast float %4941, %4931
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4942, float %4934, float %4952)  ; FMad(a,b,c)
  %4954 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4937, float %4953)  ; FMad(a,b,c)
  %4955 = fadd fast float %4954, %4940
  %4956 = fdiv fast float 1.000000e+00, %4955
  %4957 = fmul fast float %4956, %4947
  %4958 = fmul fast float %4956, %4951
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4962 = fmul fast float %4957, %4960
  %4963 = fmul fast float %4958, %4961
  %4964 = extractvalue %dx.types.CBufRet.f32 %4959, 2
  %4965 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %4966 = fadd fast float %4962, %4964
  %4967 = fadd fast float %4963, %4965
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 3
  %4970 = fmul fast float %4969, %4656
  %4971 = fmul fast float %4969, %4657
  %4972 = fmul fast float %4969, %4658
  %4973 = fadd fast float %4970, %4941
  %4974 = fadd fast float %4971, %4942
  %4975 = fadd fast float %4972, %4943
  %4976 = fmul fast float %4973, %4929
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4932, float %4976)  ; FMad(a,b,c)
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4935, float %4977)  ; FMad(a,b,c)
  %4979 = fadd fast float %4978, %4938
  %4980 = fmul fast float %4973, %4930
  %4981 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4933, float %4980)  ; FMad(a,b,c)
  %4982 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4936, float %4981)  ; FMad(a,b,c)
  %4983 = fadd fast float %4982, %4939
  %4984 = fmul fast float %4973, %4931
  %4985 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4934, float %4984)  ; FMad(a,b,c)
  %4986 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4937, float %4985)  ; FMad(a,b,c)
  %4987 = fadd fast float %4986, %4940
  %4988 = fdiv fast float 1.000000e+00, %4987
  %4989 = fmul fast float %4988, %4979
  %4990 = fmul fast float %4988, %4983
  %4991 = fmul fast float %4966, 2.000000e+00
  %4992 = fadd fast float %4991, -1.000000e+00
  %4993 = call float @dx.op.unary.f32(i32 6, float %4992)  ; FAbs(value)
  %4994 = fmul fast float %4993, 5.000000e+00
  %4995 = fadd fast float %4994, -4.000000e+00
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = fmul fast float %4996, %4882
  %4998 = fsub fast float %4957, %4989
  %4999 = fmul fast float %4960, %4998
  %5000 = fmul fast float %4997, %4999
  %5001 = fsub fast float %4989, %4957
  %5002 = fmul fast float %4960, %5001
  %5003 = fadd fast float %5002, %5000
  %5004 = fsub fast float %4990, %4958
  %5005 = fmul fast float %4961, %5004
  %5006 = fmul fast float %5003, %4917
  %5007 = fmul fast float %5005, %4917
  %5008 = fadd fast float %5006, %4966
  %5009 = fadd fast float %5007, %4967
  %5010 = fsub fast float %4988, %4956
  %5011 = fmul fast float %5010, %4917
  %5012 = fadd fast float %5011, %4956
  %5013 = fdiv fast float 1.000000e+00, %5012
  %5014 = fadd fast float %4631, -1.000000e+00
  %5015 = fsub fast float %5013, %4955
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5018 = fmul fast float %5017, %5013
  %5019 = fdiv fast float 1.600000e+02, %5018
  %5020 = fmul fast float %5014, %5014
  %5021 = fmul fast float %5020, 0xBFB5B17960000000
  %5022 = fmul fast float %5021, %5015
  %5023 = fmul fast float %5022, %5019
  %5024 = call float @dx.op.unary.f32(i32 21, float %5023)  ; Exp(value)
  %5025 = fmul fast float %5024, 0x3FF04B2960000000
  %5026 = fsub fast float 0x3FF04B2960000000, %5025
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fmul fast float %5027, 4.000000e+00
  %5029 = fadd fast float %194, -5.000000e-01
  %5030 = fadd fast float %195, -5.000000e-01
  %5031 = fmul fast float %5027, 0x3FBEB851E0000000
  %5032 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5033 = fmul fast float %5032, %5029
  %5034 = fmul fast float %5032, %5030
  %5035 = fadd fast float %5008, %5033
  %5036 = fadd fast float %5009, %5034
  %5037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %5035, float %5036, float undef, float undef, i32 0, i32 0, i32 undef, float %5028)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.ResRet.f32 %5037, 2
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 2
  %5043 = fmul fast float %5042, %5038
  %5044 = fmul fast float %5042, %5039
  %5045 = fmul fast float %5042, %5040
  %5046 = select i1 %181, float 0.000000e+00, float %5044
  %5047 = select i1 %181, float 0.000000e+00, float %5045
  %5048 = fmul fast float %5035, 2.000000e+00
  %5049 = fmul fast float %5036, 2.000000e+00
  %5050 = fadd fast float %5048, -1.000000e+00
  %5051 = fadd fast float %5049, -1.000000e+00
  %5052 = fmul fast float %5050, %5050
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fsub fast float 1.000000e+00, %5054
  %5056 = fmul fast float %5055, %4882
  %5057 = fadd fast float %5056, %5054
  %5058 = fmul fast float %5051, %5051
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = fmul fast float %5057, %5060
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, %4919
  br label %5064

; <label>:5064                                    ; preds = %4921, %4887, %4846
  %5065 = phi float [ %5043, %4921 ], [ 0.000000e+00, %4887 ], [ 0.000000e+00, %4846 ]
  %5066 = phi float [ %5046, %4921 ], [ 0.000000e+00, %4887 ], [ 0.000000e+00, %4846 ]
  %5067 = phi float [ %5047, %4921 ], [ 0.000000e+00, %4887 ], [ 0.000000e+00, %4846 ]
  %5068 = phi float [ %5063, %4921 ], [ 0.000000e+00, %4887 ], [ 0.000000e+00, %4846 ]
  %5069 = fcmp fast olt float %5068, 1.000000e+00
  %5070 = or i1 %5069, %4844
  %5071 = zext i1 %5070 to i32
  %5072 = fmul fast float %5068, %4829
  %5073 = fsub fast float %5068, %5072
  %5074 = fsub fast float 1.000000e+00, %4835
  %5075 = fmul fast float %5073, %5074
  %5076 = fadd fast float %5075, %4835
  %5077 = fsub fast float %5076, %5073
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, %4770
  %5080 = fmul fast float %5078, %4771
  %5081 = fmul fast float %5078, %4772
  %5082 = fsub fast float -0.000000e+00, %5076
  %5083 = fmul fast float %5073, %5065
  %5084 = fmul fast float %5073, %5066
  %5085 = fmul fast float %5073, %5067
  %5086 = fadd fast float %5083, %5079
  %5087 = fadd fast float %5084, %5080
  %5088 = fadd fast float %5085, %5081
  br label %5089

; <label>:5089                                    ; preds = %5064, %4837
  %5090 = phi float [ %4835, %4837 ], [ %5082, %5064 ]
  %5091 = phi float [ %4770, %4837 ], [ %5086, %5064 ]
  %5092 = phi float [ %4771, %4837 ], [ %5087, %5064 ]
  %5093 = phi float [ %4772, %4837 ], [ %5088, %5064 ]
  %5094 = phi i32 [ %4845, %4837 ], [ %5071, %5064 ]
  %5095 = icmp eq i32 %5094, 0
  br i1 %5095, label %5692, label %5096

; <label>:5096                                    ; preds = %5089
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 2
  %5099 = extractvalue %dx.types.CBufRet.f32 %5097, 3
  %5100 = fmul fast float %5098, %76
  %5101 = fmul fast float %5099, %77
  %5102 = fptoui float %5100 to i32
  %5103 = fptoui float %5101 to i32
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5107 = extractvalue %dx.types.CBufRet.f32 %5104, 3
  %5108 = fadd fast float %71, -4.000000e+00
  %5109 = call float @dx.op.binary.f32(i32 35, float %5108, float 0.000000e+00)  ; FMax(a,b)
  %5110 = fadd fast float %5109, %5105
  %5111 = fmul fast float %5110, %5106
  %5112 = call float @dx.op.unary.f32(i32 23, float %5111)  ; Log(value)
  %5113 = fmul fast float %5112, %5107
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5116 = fmul fast float %5113, %5115
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.i32 %5118, 1
  %5120 = add i32 %5119, -1
  %5121 = uitofp i32 %5119 to float
  %5122 = fmul fast float %5121, %5117
  %5123 = fptoui float %5122 to i32
  %5124 = call i32 @dx.op.binary.i32(i32 40, i32 %5123, i32 %5120)  ; UMin(a,b)
  %5125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.i32 %5125, 2
  %5127 = extractvalue %dx.types.CBufRet.i32 %5125, 3
  %5128 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5103, i32 %5126, i32 %5102)  ; UMad(a,b,c)
  %5129 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5124, i32 %5127, i32 %5128)  ; UMad(a,b,c)
  %5130 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5131 = fptoui float %5130 to i32
  %5132 = lshr i32 %5131, 5
  %5133 = call i32 @dx.op.binary.i32(i32 40, i32 %5132, i32 8191)  ; UMin(a,b)
  %5134 = fcmp fast ogt float %4430, 0.000000e+00
  %5135 = fcmp fast ogt float %4658, 0.000000e+00
  %5136 = and i1 %5135, %5134
  br i1 %5136, label %5137, label %5166

; <label>:5137                                    ; preds = %5096
  %5138 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5138, float -1.000000e+00)  ; FMax(a,b)
  %5140 = call float @dx.op.binary.f32(i32 36, float %5139, float 1.000000e+00)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5140
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = fmul fast float %5142, 0x3FFC6E2300000000
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fcmp fast ogt float %5144, 0.000000e+00
  %5146 = call float @dx.op.unary.f32(i32 24, float %5144)  ; Sqrt(value)
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = call float @dx.op.unary.f32(i32 23, float %5147)  ; Log(value)
  %5149 = fmul fast float %5148, 5.000000e+00
  %5150 = call float @dx.op.unary.f32(i32 21, float %5149)  ; Exp(value)
  %5151 = fmul fast float %5150, 0x3FEF591A60000000
  %5152 = fadd fast float %5151, 0x3F94DCB540000000
  %5153 = select i1 %5145, float %5152, float 1.000000e+00
  %5154 = fcmp fast oge float %5153, 1.000000e+00
  %5155 = fmul fast float %5138, 2.000000e+00
  %5156 = fadd fast float %5155, %4658
  %5157 = select i1 %5154, float %5156, float %4658
  %5158 = fsub fast float %5157, %4658
  %5159 = fmul fast float %5158, %4430
  %5160 = fadd fast float %5159, %4658
  %5161 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %5160, float %4656, float %4657, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.unary.f32(i32 25, float %5161)  ; Rsqrt(value)
  %5163 = fmul fast float %5162, %4656
  %5164 = fmul fast float %5162, %4657
  %5165 = fmul fast float %5160, %5162
  br label %5166

; <label>:5166                                    ; preds = %5137, %5096
  %5167 = phi float [ %5163, %5137 ], [ %4656, %5096 ]
  %5168 = phi float [ %5164, %5137 ], [ %4657, %5096 ]
  %5169 = phi float [ %5165, %5137 ], [ %4658, %5096 ]
  %5170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.i32 %5170, 2
  %5172 = add nsw i32 %5171, -1
  %5173 = call i32 @dx.op.binary.i32(i32 37, i32 %5172, i32 0)  ; IMax(a,b)
  %5174 = shl i32 %5133, 2
  %5175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.i32 %5175, 0
  %5177 = lshr i32 %5176, 16
  %5178 = and i32 %5176, 65535
  %5179 = lshr i32 %5176, 21
  %5180 = lshr i32 %5178, 5
  %5181 = call i32 @dx.op.binary.i32(i32 40, i32 %5180, i32 %5173)  ; UMin(a,b)
  %5182 = icmp ugt i32 %5179, %5181
  br i1 %5182, label %5564, label %5183

; <label>:5183                                    ; preds = %5166
  br label %5184

; <label>:5184                                    ; preds = %5553, %5183
  %5185 = phi float [ %5554, %5553 ], [ 0.000000e+00, %5183 ]
  %5186 = phi float [ %5555, %5553 ], [ 0.000000e+00, %5183 ]
  %5187 = phi float [ %5556, %5553 ], [ 0.000000e+00, %5183 ]
  %5188 = phi float [ %5557, %5553 ], [ 1.000000e+00, %5183 ]
  %5189 = phi i32 [ %5561, %5553 ], [ %5179, %5183 ]
  %5190 = phi float [ %5558, %5553 ], [ 0.000000e+00, %5183 ]
  %5191 = phi float [ %5559, %5553 ], [ 0.000000e+00, %5183 ]
  %5192 = phi float [ %5560, %5553 ], [ 0.000000e+00, %5183 ]
  %5193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.i32 %5193, 2
  %5195 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5129, i32 %5194, i32 %5189)  ; UMad(a,b,c)
  %5196 = shl i32 %5195, 2
  %5197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.i32 %5197, 0
  %5199 = shl i32 %5189, 5
  %5200 = sub nsw i32 %5177, %5199
  %5201 = call i32 @dx.op.binary.i32(i32 37, i32 %5200, i32 0)  ; IMax(a,b)
  %5202 = call i32 @dx.op.binary.i32(i32 38, i32 %5201, i32 31)  ; IMin(a,b)
  %5203 = sub nsw i32 1, %5177
  %5204 = add nsw i32 %5203, %5178
  %5205 = call i32 @dx.op.binary.i32(i32 37, i32 %5204, i32 0)  ; IMax(a,b)
  %5206 = call i32 @dx.op.binary.i32(i32 38, i32 %5205, i32 32)  ; IMin(a,b)
  %5207 = and i32 %5206, 31
  %5208 = shl i32 -1, %5207
  %5209 = xor i32 %5208, -1
  %5210 = and i32 %5202, 31
  %5211 = shl i32 %5209, %5210
  %5212 = icmp eq i32 %5206, 32
  %5213 = select i1 %5212, i32 -1, i32 %5211
  %5214 = and i32 %5213, %5198
  %5215 = icmp eq i32 %5214, 0
  br i1 %5215, label %5553, label %5216

; <label>:5216                                    ; preds = %5184
  br label %5217

; <label>:5217                                    ; preds = %5327, %5216
  %5218 = phi float [ %5328, %5327 ], [ %5185, %5216 ]
  %5219 = phi float [ %5329, %5327 ], [ %5186, %5216 ]
  %5220 = phi float [ %5330, %5327 ], [ %5187, %5216 ]
  %5221 = phi float [ %5331, %5327 ], [ %5188, %5216 ]
  %5222 = phi i32 [ %5230, %5327 ], [ %5214, %5216 ]
  %5223 = phi float [ %5332, %5327 ], [ %5190, %5216 ]
  %5224 = phi float [ %5333, %5327 ], [ %5191, %5216 ]
  %5225 = phi float [ %5334, %5327 ], [ %5192, %5216 ]
  %5226 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5222)  ; FirstbitLo(value)
  %5227 = add i32 %5226, %5199
  %5228 = and i32 %5226, 31
  %5229 = shl i32 1, %5228
  %5230 = xor i32 %5229, %5222
  %5231 = mul i32 %5227, 72
  %5232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = add i32 %5231, 12
  %5237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.i32 %5237, 0
  %5239 = add i32 %5231, 16
  %5240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 0
  %5242 = extractvalue %dx.types.ResRet.f32 %5240, 1
  %5243 = extractvalue %dx.types.ResRet.f32 %5240, 2
  %5244 = add i32 %5231, 28
  %5245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5244, i32 undef)  ; BufferLoad(srv,index,wot)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = add i32 %5231, 32
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = extractvalue %dx.types.ResRet.f32 %5248, 2
  %5252 = extractvalue %dx.types.ResRet.f32 %5248, 3
  %5253 = add i32 %5231, 48
  %5254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5257 = add i32 %5231, 56
  %5258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.ResRet.f32 %5258, 1
  %5261 = add i32 %5231, 64
  %5262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5261, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = mul i32 %5227, 60
  %5266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  %5270 = add i32 %5265, 12
  %5271 = add i32 %5265, 48
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5271, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = and i32 %5238, 32767
  %5277 = bitcast float %5233 to i32
  %5278 = icmp eq i32 %5277, -1
  %5279 = bitcast float %5234 to i32
  %5280 = and i32 %5238, 32768
  %5281 = icmp ne i32 %5280, 0
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.CBufRet.f32 %5282, 1
  %5285 = extractvalue %dx.types.CBufRet.f32 %5282, 2
  %5286 = fsub fast float %5267, %5283
  %5287 = fsub fast float %5268, %5284
  %5288 = fsub fast float %5269, %5285
  %5289 = fsub fast float %139, %5286
  %5290 = fsub fast float %140, %5287
  %5291 = fsub fast float %141, %5288
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = add i32 %5265, 24
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = add i32 %5265, 36
  %5304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5305, float %5306, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 6, float %5296)  ; FAbs(value)
  %5310 = call float @dx.op.unary.f32(i32 6, float %5302)  ; FAbs(value)
  %5311 = call float @dx.op.unary.f32(i32 6, float %5308)  ; FAbs(value)
  %5312 = fsub fast float %5273, %5309
  %5313 = fsub fast float %5274, %5310
  %5314 = fsub fast float %5275, %5311
  %5315 = fmul fast float %5312, %5241
  %5316 = fmul fast float %5313, %5242
  %5317 = fmul fast float %5314, %5243
  %5318 = call float @dx.op.binary.f32(i32 36, float %5316, float %5317)  ; FMin(a,b)
  %5319 = call float @dx.op.binary.f32(i32 36, float %5315, float %5318)  ; FMin(a,b)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = call float @dx.op.binary.f32(i32 36, float %5221, float %5320)  ; FMin(a,b)
  %5322 = uitofp i1 %5281 to float
  %5323 = fadd fast float %4430, 1.000000e+00
  %5324 = fsub fast float %5323, %5322
  %5325 = fmul fast float %5321, %5324
  %5326 = fcmp fast ogt float %5325, 0.000000e+00
  br i1 %5326, label %5336, label %5327

; <label>:5327                                    ; preds = %5478, %5217
  %5328 = phi float [ %5542, %5478 ], [ %5218, %5217 ]
  %5329 = phi float [ %5543, %5478 ], [ %5219, %5217 ]
  %5330 = phi float [ %5544, %5478 ], [ %5220, %5217 ]
  %5331 = phi float [ %5551, %5478 ], [ %5221, %5217 ]
  %5332 = phi float [ %5548, %5478 ], [ %5223, %5217 ]
  %5333 = phi float [ %5549, %5478 ], [ %5224, %5217 ]
  %5334 = phi float [ %5550, %5478 ], [ %5225, %5217 ]
  %5335 = icmp eq i32 %5222, %5229
  br i1 %5335, label %5552, label %5217

; <label>:5336                                    ; preds = %5217
  br i1 %5278, label %5394, label %5337

; <label>:5337                                    ; preds = %5336
  %5338 = fsub fast float -0.000000e+00, %5293
  %5339 = fsub fast float -0.000000e+00, %5294
  %5340 = fsub fast float -0.000000e+00, %5295
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5338, float %5339, float %5340)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = fsub fast float -0.000000e+00, %5341
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5338, float %5339, float %5340)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = fadd fast float %5343, %5256
  %5345 = fadd fast float %5255, %5343
  %5346 = fsub fast float -0.000000e+00, %5345
  %5347 = fcmp ogt float %5341, -0.000000e+00
  %5348 = select i1 %5347, float %5346, float %5344
  %5349 = call float @dx.op.unary.f32(i32 6, float %5342)  ; FAbs(value)
  %5350 = fdiv fast float 1.000000e+00, %5349
  %5351 = fmul fast float %5348, %5350
  %5352 = call float @dx.op.binary.f32(i32 35, float %5351, float 0.000000e+00)  ; FMax(a,b)
  %5353 = fsub fast float -0.000000e+00, %5299
  %5354 = fsub fast float -0.000000e+00, %5300
  %5355 = fsub fast float -0.000000e+00, %5301
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fsub fast float -0.000000e+00, %5356
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = fadd fast float %5358, %5260
  %5360 = fadd fast float %5259, %5358
  %5361 = fsub fast float -0.000000e+00, %5360
  %5362 = fcmp ogt float %5356, -0.000000e+00
  %5363 = select i1 %5362, float %5361, float %5359
  %5364 = call float @dx.op.unary.f32(i32 6, float %5357)  ; FAbs(value)
  %5365 = fdiv fast float 1.000000e+00, %5364
  %5366 = fmul fast float %5363, %5365
  %5367 = call float @dx.op.binary.f32(i32 35, float %5366, float 0.000000e+00)  ; FMax(a,b)
  %5368 = fsub fast float -0.000000e+00, %5305
  %5369 = fsub fast float -0.000000e+00, %5306
  %5370 = fsub fast float -0.000000e+00, %5307
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fsub fast float -0.000000e+00, %5371
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fadd fast float %5373, %5264
  %5375 = fadd fast float %5263, %5373
  %5376 = fsub fast float -0.000000e+00, %5375
  %5377 = fcmp ogt float %5371, -0.000000e+00
  %5378 = select i1 %5377, float %5376, float %5374
  %5379 = call float @dx.op.unary.f32(i32 6, float %5372)  ; FAbs(value)
  %5380 = fdiv fast float 1.000000e+00, %5379
  %5381 = fmul fast float %5378, %5380
  %5382 = call float @dx.op.binary.f32(i32 35, float %5381, float 0.000000e+00)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 36, float %5367, float %5382)  ; FMin(a,b)
  %5384 = call float @dx.op.binary.f32(i32 36, float %5352, float %5383)  ; FMin(a,b)
  %5385 = fmul fast float %5384, %5167
  %5386 = fmul fast float %5384, %5168
  %5387 = fmul fast float %5384, %5169
  %5388 = fadd fast float %5385, %139
  %5389 = fadd fast float %5386, %140
  %5390 = fadd fast float %5387, %141
  %5391 = fsub fast float %5388, %5233
  %5392 = fsub fast float %5389, %5234
  %5393 = fsub fast float %5390, %5235
  br label %5401

; <label>:5394                                    ; preds = %5336
  %5395 = fmul fast float %5167, 8.096000e+03
  %5396 = fmul fast float %5168, 8.096000e+03
  %5397 = fmul fast float %5169, 8.096000e+03
  %5398 = fadd fast float %5395, %139
  %5399 = fadd fast float %5396, %140
  %5400 = fadd fast float %5397, %141
  br label %5401

; <label>:5401                                    ; preds = %5394, %5337
  %5402 = phi float [ %5167, %5394 ], [ %5391, %5337 ]
  %5403 = phi float [ %5168, %5394 ], [ %5392, %5337 ]
  %5404 = phi float [ %5169, %5394 ], [ %5393, %5337 ]
  %5405 = phi float [ %5398, %5394 ], [ %5388, %5337 ]
  %5406 = phi float [ %5399, %5394 ], [ %5389, %5337 ]
  %5407 = phi float [ %5400, %5394 ], [ %5390, %5337 ]
  %5408 = fcmp fast olt float %5252, 1.000000e+00
  br i1 %5408, label %5409, label %5440, !dx.controlflow.hints !82

; <label>:5409                                    ; preds = %5401
  %5410 = fmul fast float %5404, %5250
  %5411 = fmul fast float %5403, %5251
  %5412 = fsub fast float %5410, %5411
  %5413 = fmul fast float %5402, %5251
  %5414 = fmul fast float %5404, %5249
  %5415 = fsub fast float %5413, %5414
  %5416 = fmul fast float %5403, %5249
  %5417 = fmul fast float %5402, %5250
  %5418 = fsub fast float %5416, %5417
  %5419 = fmul fast float %5412, 2.000000e+00
  %5420 = fmul fast float %5415, 2.000000e+00
  %5421 = fmul fast float %5418, 2.000000e+00
  %5422 = fmul fast float %5419, %5252
  %5423 = fmul fast float %5420, %5252
  %5424 = fmul fast float %5421, %5252
  %5425 = fmul fast float %5421, %5250
  %5426 = fmul fast float %5420, %5251
  %5427 = fmul fast float %5419, %5251
  %5428 = fmul fast float %5421, %5249
  %5429 = fmul fast float %5420, %5249
  %5430 = fmul fast float %5419, %5250
  %5431 = fadd fast float %5425, %5402
  %5432 = fadd fast float %5431, %5422
  %5433 = fsub fast float %5432, %5426
  %5434 = fsub fast float %5403, %5428
  %5435 = fadd fast float %5434, %5423
  %5436 = fadd fast float %5435, %5427
  %5437 = fadd fast float %5424, %5404
  %5438 = fsub fast float %5437, %5430
  %5439 = fadd fast float %5438, %5429
  br label %5440

; <label>:5440                                    ; preds = %5409, %5401
  %5441 = phi float [ %5433, %5409 ], [ %5402, %5401 ]
  %5442 = phi float [ %5436, %5409 ], [ %5403, %5401 ]
  %5443 = phi float [ %5439, %5409 ], [ %5404, %5401 ]
  br i1 %5278, label %5475, label %5444

; <label>:5444                                    ; preds = %5440
  %5445 = fmul fast float %4631, 0x400187C840000000
  %5446 = fadd fast float %5445, 0xC00EFC2120000000
  %5447 = fmul fast float %5446, %4631
  %5448 = fadd fast float %5447, 0x3FE5D16340000000
  %5449 = fmul fast float %5448, %4631
  %5450 = fadd fast float %5449, 1.000000e+00
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = fsub fast float %5405, %139
  %5453 = fsub fast float %5406, %140
  %5454 = fsub fast float %5407, %141
  %5455 = fsub fast float %5405, %5233
  %5456 = fsub fast float %5406, %5234
  %5457 = fsub fast float %5407, %5235
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = fadd fast float %5459, 0x3EE4F8B580000000
  %5461 = fdiv fast float %5458, %5460
  %5462 = bitcast float %5461 to i32
  %5463 = ashr i32 %5462, 1
  %5464 = add nsw i32 %5463, 532487669
  %5465 = bitcast i32 %5464 to float
  %5466 = fmul fast float %5465, %5451
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = fmul fast float %5467, 0x4009981AE0000000
  %5469 = fsub fast float 0x40111BBD80000000, %5468
  %5470 = fmul fast float %5469, %5467
  %5471 = fadd fast float %5470, 0xC0009F6020000000
  %5472 = fmul fast float %5471, %5467
  %5473 = fadd fast float %5472, 1.000000e+00
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  br label %5478

; <label>:5475                                    ; preds = %5440
  %5476 = icmp ne i32 %5279, -1
  %5477 = zext i1 %5476 to i32
  br label %5478

; <label>:5478                                    ; preds = %5475, %5444
  %5479 = phi float [ %4631, %5475 ], [ %5474, %5444 ]
  %5480 = phi i32 [ %5477, %5475 ], [ 0, %5444 ]
  %5481 = fmul float %5479, 5.000000e+00
  %5482 = fsub float 5.000000e+00, %5481
  %5483 = icmp ne i32 %5480, 0
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5486 = fadd fast float %5485, %5482
  %5487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5486)  ; FMax(a,b)
  %5488 = call float @dx.op.unary.f32(i32 6, float %5441)  ; FAbs(value)
  %5489 = call float @dx.op.unary.f32(i32 6, float %5442)  ; FAbs(value)
  %5490 = fadd fast float %5489, %5488
  %5491 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5492 = fadd fast float %5490, %5491
  %5493 = fcmp fast oeq float %5492, 0.000000e+00
  %5494 = fdiv fast float 1.000000e+00, %5492
  %5495 = select i1 %5493, float 1.000000e+00, float %5494
  %5496 = fmul fast float %5495, %5441
  %5497 = fmul fast float %5495, %5442
  %5498 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5499 = call float @dx.op.unary.f32(i32 6, float %5496)  ; FAbs(value)
  %5500 = fsub fast float 1.000000e+00, %5498
  %5501 = fsub fast float 1.000000e+00, %5499
  %5502 = fcmp fast oge float %5496, 0.000000e+00
  %5503 = fcmp fast oge float %5497, 0.000000e+00
  %5504 = select i1 %5502, float 1.000000e+00, float -1.000000e+00
  %5505 = select i1 %5503, float 1.000000e+00, float -1.000000e+00
  %5506 = fcmp fast ole float %5443, 0.000000e+00
  %5507 = fmul fast float %5504, %5500
  %5508 = fmul fast float %5505, %5501
  %5509 = select i1 %5506, float %5507, float %5496
  %5510 = select i1 %5506, float %5508, float %5497
  %5511 = fmul fast float %5509, 5.000000e-01
  %5512 = fmul fast float %5510, 5.000000e-01
  %5513 = fadd fast float %5511, 5.000000e-01
  %5514 = fadd fast float %5512, 5.000000e-01
  %5515 = uitofp i32 %5276 to float
  %5516 = call float @dx.op.binary.f32(i32 36, float %5487, float 3.000000e+00)  ; FMin(a,b)
  %5517 = fadd fast float %5516, 2.000000e+00
  %5518 = call float @dx.op.unary.f32(i32 21, float %5517)  ; Exp(value)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5520 = fmul fast float %5519, %5518
  %5521 = fmul fast float %5520, 2.000000e+00
  %5522 = fsub fast float 1.000000e+00, %5521
  %5523 = fmul fast float %5513, %5522
  %5524 = fmul fast float %5514, %5522
  %5525 = fadd fast float %5523, %5520
  %5526 = fadd fast float %5524, %5520
  %5527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %5525, float %5526, float %5515, float undef, i32 0, i32 0, i32 undef, float %5487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5528 = extractvalue %dx.types.ResRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.ResRet.f32 %5527, 1
  %5530 = extractvalue %dx.types.ResRet.f32 %5527, 2
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 3
  %5533 = fmul fast float %5532, %5246
  %5534 = call float @dx.op.binary.f32(i32 36, float %4711, float %5533)  ; FMin(a,b)
  %5535 = select i1 %5483, float %5534, float %5533
  %5536 = fmul fast float %5528, %5325
  %5537 = fmul fast float %5536, %5535
  %5538 = fmul fast float %5529, %5325
  %5539 = fmul fast float %5538, %5535
  %5540 = fmul fast float %5530, %5325
  %5541 = fmul fast float %5540, %5535
  %5542 = fadd fast float %5537, %5218
  %5543 = fadd fast float %5539, %5219
  %5544 = fadd fast float %5541, %5220
  %5545 = fmul fast float %5405, %5325
  %5546 = fmul fast float %5406, %5325
  %5547 = fmul fast float %5407, %5325
  %5548 = fadd fast float %5545, %5223
  %5549 = fadd fast float %5546, %5224
  %5550 = fadd fast float %5547, %5225
  %5551 = fsub fast float %5221, %5325
  br label %5327

; <label>:5552                                    ; preds = %5327
  br label %5553

; <label>:5553                                    ; preds = %5552, %5184
  %5554 = phi float [ %5185, %5184 ], [ %5328, %5552 ]
  %5555 = phi float [ %5186, %5184 ], [ %5329, %5552 ]
  %5556 = phi float [ %5187, %5184 ], [ %5330, %5552 ]
  %5557 = phi float [ %5188, %5184 ], [ %5331, %5552 ]
  %5558 = phi float [ %5190, %5184 ], [ %5332, %5552 ]
  %5559 = phi float [ %5191, %5184 ], [ %5333, %5552 ]
  %5560 = phi float [ %5192, %5184 ], [ %5334, %5552 ]
  %5561 = add i32 %5189, 1
  %5562 = icmp ugt i32 %5561, %5181
  br i1 %5562, label %5563, label %5184, !llvm.loop !83

; <label>:5563                                    ; preds = %5553
  br label %5564

; <label>:5564                                    ; preds = %5563, %5166
  %5565 = phi float [ 0.000000e+00, %5166 ], [ %5554, %5563 ]
  %5566 = phi float [ 0.000000e+00, %5166 ], [ %5555, %5563 ]
  %5567 = phi float [ 0.000000e+00, %5166 ], [ %5556, %5563 ]
  %5568 = phi float [ 0.000000e+00, %5166 ], [ %5558, %5563 ]
  %5569 = phi float [ 0.000000e+00, %5166 ], [ %5559, %5563 ]
  %5570 = phi float [ 0.000000e+00, %5166 ], [ %5560, %5563 ]
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = select i1 %181, float 0.000000e+00, float %5565
  %5573 = select i1 %181, float %5571, float %5566
  %5574 = select i1 %181, float 0.000000e+00, float %5567
  %5575 = fcmp fast olt float %5090, 0.000000e+00
  %5576 = call float @dx.op.unary.f32(i32 6, float %5090)  ; FAbs(value)
  %5577 = fmul fast float %5576, %5091
  %5578 = fmul fast float %5576, %5092
  %5579 = fmul fast float %5576, %5093
  %5580 = select i1 %5575, float %5091, float %5577
  %5581 = select i1 %5575, float %5092, float %5578
  %5582 = select i1 %5575, float %5093, float %5579
  %5583 = fsub fast float 1.000000e+00, %5576
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = fmul fast float %5584, %5572
  %5586 = fmul fast float %5584, %5573
  %5587 = fmul fast float %5584, %5574
  %5588 = fadd fast float %5580, %5585
  %5589 = fadd fast float %5581, %5586
  %5590 = fadd fast float %5582, %5587
  %5591 = fcmp fast une float %4840, 0.000000e+00
  br i1 %5591, label %5692, label %5592

; <label>:5592                                    ; preds = %5564
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5597 = extractvalue %dx.types.CBufRet.f32 %5593, 3
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.CBufRet.f32 %5603, 2
  %5607 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5606, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = fadd fast float %4631, -1.000000e+00
  %5612 = fsub fast float %5609, %5610
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 2
  %5615 = fmul fast float %5614, %5609
  %5616 = fdiv fast float 1.600000e+02, %5615
  %5617 = fmul fast float %5611, %5611
  %5618 = fmul fast float %5617, 0xBFB5B17960000000
  %5619 = fmul fast float %5618, %5612
  %5620 = fmul fast float %5619, %5616
  %5621 = call float @dx.op.unary.f32(i32 21, float %5620)  ; Exp(value)
  %5622 = fmul fast float %5621, 0x3FF04B2960000000
  %5623 = fsub fast float 0x3FF04B2960000000, %5622
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = fmul fast float %5624, 4.000000e+00
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5630 = fadd fast float %5627, %5568
  %5631 = fadd fast float %5628, %5569
  %5632 = fadd fast float %5629, %5570
  %5633 = fmul fast float %5630, %5594
  %5634 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5595, float %5633)  ; FMad(a,b,c)
  %5635 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5596, float %5634)  ; FMad(a,b,c)
  %5636 = fadd fast float %5635, %5597
  %5637 = fmul fast float %5630, %5599
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5600, float %5637)  ; FMad(a,b,c)
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5601, float %5638)  ; FMad(a,b,c)
  %5640 = fadd fast float %5639, %5602
  %5641 = fmul fast float %5630, %5604
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5605, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5606, float %5642)  ; FMad(a,b,c)
  %5644 = fadd fast float %5643, %5607
  %5645 = fdiv fast float %5636, %5644
  %5646 = fdiv fast float %5640, %5644
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5650 = fmul fast float %5648, %5645
  %5651 = fmul fast float %5649, %5646
  %5652 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5653 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5654 = fadd fast float %5650, %5652
  %5655 = fadd fast float %5651, %5653
  %5656 = fmul fast float %5608, 8.000000e+00
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = fmul fast float %5654, 2.000000e+00
  %5659 = fmul fast float %5655, 2.000000e+00
  %5660 = fadd fast float %5658, -1.000000e+00
  %5661 = fadd fast float %5659, -1.000000e+00
  %5662 = fmul fast float %5660, %5660
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = fmul fast float %5661, %5661
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %4840, %5664
  %5669 = fmul fast float %5668, %5667
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fmul fast float %5670, %5657
  %5672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %5654, float %5655, float undef, float undef, i32 0, i32 0, i32 undef, float %5625)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5676 = select i1 %181, float 0.000000e+00, float %5674
  %5677 = select i1 %181, float 0.000000e+00, float %5675
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 2
  %5680 = fmul fast float %5679, %5673
  %5681 = fmul fast float %5676, %5679
  %5682 = fmul fast float %5677, %5679
  %5683 = fsub fast float %5680, %5572
  %5684 = fsub fast float %5681, %5573
  %5685 = fsub fast float %5682, %5574
  %5686 = fmul fast float %5683, %5671
  %5687 = fmul fast float %5684, %5671
  %5688 = fmul fast float %5685, %5671
  %5689 = fadd fast float %5686, %5572
  %5690 = fadd fast float %5687, %5573
  %5691 = fadd fast float %5688, %5574
  br label %5692

; <label>:5692                                    ; preds = %5592, %5564, %5089, %4813
  %5693 = phi float [ %5091, %5089 ], [ %5588, %5564 ], [ %4770, %4813 ], [ %5689, %5592 ]
  %5694 = phi float [ %5092, %5089 ], [ %5589, %5564 ], [ %4771, %4813 ], [ %5690, %5592 ]
  %5695 = phi float [ %5093, %5089 ], [ %5590, %5564 ], [ %4772, %4813 ], [ %5691, %5592 ]
  %5696 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = fcmp fast ogt float %5696, 0x3E7FF19E20000000
  %5698 = fdiv fast float 1.000000e+00, %5696
  %5699 = select i1 %5697, float %5698, float 0.000000e+00
  %5700 = fmul fast float %5699, %4622
  %5701 = fmul fast float %5699, %4623
  %5702 = fmul fast float %5699, %4624
  %5703 = fadd fast float %5700, -1.000000e+00
  %5704 = fadd fast float %5701, -1.000000e+00
  %5705 = fadd fast float %5702, -1.000000e+00
  %5706 = fmul fast float %5703, 5.000000e-01
  %5707 = fmul fast float %5704, 5.000000e-01
  %5708 = fmul fast float %5705, 5.000000e-01
  %5709 = fadd fast float %5706, 1.000000e+00
  %5710 = fadd fast float %5707, 1.000000e+00
  %5711 = fadd fast float %5708, 1.000000e+00
  %5712 = fmul fast float %5693, %4814
  %5713 = fmul fast float %5694, %4815
  %5714 = fmul fast float %5695, %4816
  %5715 = fsub fast float 1.000000e+00, %4650
  %5716 = bitcast float %5715 to i32
  %5717 = sitofp i32 %5716 to float
  %5718 = fmul fast float %5717, 5.000000e+00
  %5719 = fadd fast float %5718, 0xC1EFBF8940000000
  %5720 = fptosi float %5719 to i32
  %5721 = bitcast i32 %5720 to float
  %5722 = fmul fast float %5721, %4021
  %5723 = fmul fast float %4766, %5722
  %5724 = fmul fast float %5723, %4819
  %5725 = fmul fast float %5724, %5709
  %5726 = fmul fast float %4767, %5722
  %5727 = fmul fast float %5726, %4819
  %5728 = fmul fast float %5727, %5710
  %5729 = fmul fast float %4768, %5722
  %5730 = fmul fast float %5729, %4819
  %5731 = fmul fast float %5730, %5711
  %5732 = fmul fast float %4766, %4017
  %5733 = fmul fast float %5732, %4819
  %5734 = fmul fast float %4767, %4017
  %5735 = fmul fast float %5734, %4819
  %5736 = fmul fast float %4768, %4017
  %5737 = fmul fast float %5736, %4819
  %5738 = fadd fast float %5712, %4013
  %5739 = fadd fast float %5738, %5725
  %5740 = fmul fast float %5739, %4017
  %5741 = fadd fast float %5713, %4014
  %5742 = fadd fast float %5741, %5728
  %5743 = fmul fast float %5742, %4017
  %5744 = fadd fast float %5714, %4015
  %5745 = fadd fast float %5744, %5731
  %5746 = fmul fast float %5745, %4017
  %5747 = bitcast i32 %4674 to float
  %5748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.i32 %5748, 0
  %5750 = icmp eq i32 %5749, 0
  br i1 %5750, label %6181, label %5751

; <label>:5751                                    ; preds = %5692
  %5752 = fptoui float %76 to i32
  %5753 = fptoui float %77 to i32
  %5754 = lshr i32 %5752, 4
  %5755 = lshr i32 %5753, 4
  %5756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.i32 %5756, 0
  %5758 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5755, i32 %5757, i32 %5754)  ; UMad(a,b,c)
  %5759 = add nsw i32 %5749, -1
  %5760 = call i32 @dx.op.binary.i32(i32 37, i32 %5759, i32 0)  ; IMax(a,b)
  %5761 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5762 = fptoui float %5761 to i32
  %5763 = lshr i32 %5762, 5
  %5764 = call i32 @dx.op.binary.i32(i32 40, i32 %5763, i32 8191)  ; UMin(a,b)
  %5765 = shl i32 %5764, 2
  %5766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.i32 %5766, 0
  %5768 = lshr i32 %5767, 16
  %5769 = and i32 %5767, 65535
  %5770 = lshr i32 %5767, 21
  %5771 = lshr i32 %5769, 5
  %5772 = call i32 @dx.op.binary.i32(i32 40, i32 %5771, i32 %5760)  ; UMin(a,b)
  %5773 = icmp ugt i32 %5770, %5772
  br i1 %5773, label %6181, label %5774

; <label>:5774                                    ; preds = %5751
  br label %5775

; <label>:5775                                    ; preds = %6171, %5774
  %5776 = phi i32 [ %6178, %6171 ], [ %5770, %5774 ]
  %5777 = phi float [ %6172, %6171 ], [ %5740, %5774 ]
  %5778 = phi float [ %6173, %6171 ], [ %5743, %5774 ]
  %5779 = phi float [ %6174, %6171 ], [ %5746, %5774 ]
  %5780 = phi float [ %6175, %6171 ], [ %5733, %5774 ]
  %5781 = phi float [ %6176, %6171 ], [ %5735, %5774 ]
  %5782 = phi float [ %6177, %6171 ], [ %5737, %5774 ]
  %5783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.i32 %5783, 0
  %5785 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5758, i32 %5784, i32 %5776)  ; UMad(a,b,c)
  %5786 = shl i32 %5785, 2
  %5787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5786, i32 undef)  ; BufferLoad(srv,index,wot)
  %5788 = extractvalue %dx.types.ResRet.i32 %5787, 0
  %5789 = shl i32 %5776, 5
  %5790 = sub nsw i32 %5768, %5789
  %5791 = call i32 @dx.op.binary.i32(i32 37, i32 %5790, i32 0)  ; IMax(a,b)
  %5792 = call i32 @dx.op.binary.i32(i32 38, i32 %5791, i32 31)  ; IMin(a,b)
  %5793 = sub nsw i32 1, %5768
  %5794 = add nsw i32 %5793, %5769
  %5795 = call i32 @dx.op.binary.i32(i32 37, i32 %5794, i32 0)  ; IMax(a,b)
  %5796 = call i32 @dx.op.binary.i32(i32 38, i32 %5795, i32 32)  ; IMin(a,b)
  %5797 = and i32 %5796, 31
  %5798 = shl i32 -1, %5797
  %5799 = xor i32 %5798, -1
  %5800 = and i32 %5792, 31
  %5801 = shl i32 %5799, %5800
  %5802 = icmp eq i32 %5796, 32
  %5803 = select i1 %5802, i32 -1, i32 %5801
  %5804 = and i32 %5803, %5788
  %5805 = icmp eq i32 %5804, 0
  br i1 %5805, label %6171, label %5806

; <label>:5806                                    ; preds = %5775
  br label %5807

; <label>:5807                                    ; preds = %5887, %5806
  %5808 = phi i32 [ %5819, %5887 ], [ %5804, %5806 ]
  %5809 = phi float [ %5888, %5887 ], [ %5777, %5806 ]
  %5810 = phi float [ %5889, %5887 ], [ %5778, %5806 ]
  %5811 = phi float [ %5890, %5887 ], [ %5779, %5806 ]
  %5812 = phi float [ %5891, %5887 ], [ %5780, %5806 ]
  %5813 = phi float [ %5892, %5887 ], [ %5781, %5806 ]
  %5814 = phi float [ %5893, %5887 ], [ %5782, %5806 ]
  %5815 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5808)  ; FirstbitLo(value)
  %5816 = add i32 %5815, %5789
  %5817 = and i32 %5815, 31
  %5818 = shl i32 1, %5817
  %5819 = xor i32 %5818, %5808
  %5820 = mul i32 %5816, 112
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = or i32 %5820, 12
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = add i32 %5820, 44
  %5829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = add i32 %5820, 48
  %5832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %5831, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.ResRet.f32 %5832, 1
  %5835 = extractvalue %dx.types.ResRet.f32 %5832, 2
  %5836 = add i32 %5820, 80
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 2
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = select i1 %181, float %5838, float %5822
  %5842 = select i1 %181, float %5840, float %5823
  %5843 = select i1 %181, float %5839, float %5824
  %5844 = fsub fast float %5833, %139
  %5845 = fsub fast float %5834, %140
  %5846 = fsub fast float %5835, %141
  %5847 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5844, float %5845, float %5846)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = call float @dx.op.unary.f32(i32 24, float %5847)  ; Sqrt(value)
  %5849 = fdiv fast float 1.000000e+00, %5848
  %5850 = fmul fast float %5849, %5844
  %5851 = fmul fast float %5849, %5845
  %5852 = fmul fast float %5849, %5846
  %5853 = fadd fast float %5848, %5827
  %5854 = fdiv fast float 1.000000e+00, %5853
  %5855 = fmul float %5830, %5854
  %5856 = fmul float %5855, %5855
  %5857 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5858 = and i32 %5818, %5804
  %5859 = icmp eq i32 %5858, 0
  br i1 %5859, label %5882, label %5860, !dx.controlflow.hints !85

; <label>:5860                                    ; preds = %5807
  %5861 = lshr i32 %5752, 5
  %5862 = lshr i32 %5753, 5
  %5863 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %5861, i32 %5862, i32 %5816, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5864 = extractvalue %dx.types.ResRet.i32 %5863, 0
  %5865 = and i32 %5864, 3
  %5866 = icmp eq i32 %5865, 0
  %5867 = select i1 %5866, float 1.000000e+00, float 0.000000e+00
  %5868 = icmp eq i32 %5865, 3
  br i1 %5868, label %5869, label %5882

; <label>:5869                                    ; preds = %5860
  %5870 = lshr i32 %5864, 10
  %5871 = and i32 %5870, 8160
  %5872 = and i32 %5753, 31
  %5873 = or i32 %5871, %5872
  %5874 = lshr i32 %5864, 1
  %5875 = and i32 %5874, 16352
  %5876 = and i32 %5752, 31
  %5877 = or i32 %5875, %5876
  %5878 = lshr i32 %5864, 23
  %5879 = and i32 %5878, 255
  %5880 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5877, i32 %5873, i32 %5879, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  br label %5882

; <label>:5882                                    ; preds = %5869, %5860, %5807
  %5883 = phi float [ %5881, %5869 ], [ %5867, %5860 ], [ 0.000000e+00, %5807 ]
  %5884 = call float @dx.op.binary.f32(i32 36, float %5883, float %5883)  ; FMin(a,b)
  %5885 = call float @dx.op.binary.f32(i32 36, float %5883, float %5884)  ; FMin(a,b)
  %5886 = fcmp fast ogt float %5885, 0.000000e+00
  br i1 %5886, label %5895, label %5887, !dx.controlflow.hints !86

; <label>:5887                                    ; preds = %6127, %5882
  %5888 = phi float [ %5809, %5882 ], [ %6167, %6127 ]
  %5889 = phi float [ %5810, %5882 ], [ %6168, %6127 ]
  %5890 = phi float [ %5811, %5882 ], [ %6169, %6127 ]
  %5891 = phi float [ %5812, %5882 ], [ %6161, %6127 ]
  %5892 = phi float [ %5813, %5882 ], [ %6162, %6127 ]
  %5893 = phi float [ %5814, %5882 ], [ %6163, %6127 ]
  %5894 = icmp eq i32 %5808, %5818
  br i1 %5894, label %6170, label %5807

; <label>:5895                                    ; preds = %5882
  %5896 = fmul fast float %5883, %5841
  %5897 = fmul fast float %5883, %5842
  %5898 = fmul fast float %5883, %5843
  %5899 = fsub fast float %5835, %4421
  %5900 = fcmp fast ogt float %5899, 0.000000e+00
  %5901 = fsub fast float %141, %4421
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  %5903 = xor i1 %5902, %5900
  %5904 = fsub fast float %4421, %5835
  %5905 = fmul fast float %5904, 2.000000e+00
  %5906 = fadd fast float %5905, %5835
  %5907 = select i1 %5903, float %5835, float %5906
  %5908 = fsub fast float %5907, %141
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5908, float %5844, float %5845, float %5908)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = call float @dx.op.unary.f32(i32 25, float %5909)  ; Rsqrt(value)
  %5911 = fmul fast float %5910, %5844
  %5912 = fmul fast float %5910, %5845
  %5913 = fmul fast float %5910, %5908
  %5914 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = fdiv fast float 1.000000e+00, %5915
  %5917 = fmul fast float %5916, %5914
  %5918 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5901, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5919 = fcmp fast ogt float %5918, 0.000000e+00
  %5920 = fcmp fast olt float %5918, 0.000000e+00
  %5921 = zext i1 %5919 to i32
  %5922 = zext i1 %5920 to i32
  %5923 = sub nsw i32 %5921, %5922
  %5924 = sitofp i32 %5923 to float
  %5925 = fsub fast float %5907, %4421
  %5926 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5925, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5927 = fcmp fast ogt float %5926, 0.000000e+00
  %5928 = fcmp fast olt float %5926, 0.000000e+00
  %5929 = zext i1 %5927 to i32
  %5930 = zext i1 %5928 to i32
  %5931 = sub nsw i32 %5929, %5930
  %5932 = sitofp i32 %5931 to float
  %5933 = fcmp fast une float %5924, %5932
  br i1 %5933, label %5934, label %5944

; <label>:5934                                    ; preds = %5895
  %5935 = fmul fast float %5917, %5913
  %5936 = fmul fast float %5917, %5912
  %5937 = fmul fast float %5917, %5911
  %5938 = fmul fast float %5937, %5937
  %5939 = fmul fast float %5936, %5936
  %5940 = fadd fast float %5938, %5939
  %5941 = fmul fast float %5935, %5935
  %5942 = fadd fast float %5940, %5941
  %5943 = call float @dx.op.unary.f32(i32 24, float %5942)  ; Sqrt(value)
  br label %5956

; <label>:5944                                    ; preds = %5895
  %5945 = icmp slt i32 %5923, 0
  br i1 %5945, label %5946, label %5956

; <label>:5946                                    ; preds = %5944
  %5947 = fsub fast float %139, %5833
  %5948 = fsub fast float %140, %5834
  %5949 = fsub fast float %141, %5907
  %5950 = fmul fast float %5947, %5947
  %5951 = fmul fast float %5948, %5948
  %5952 = fadd fast float %5950, %5951
  %5953 = fmul fast float %5949, %5949
  %5954 = fadd fast float %5952, %5953
  %5955 = call float @dx.op.unary.f32(i32 24, float %5954)  ; Sqrt(value)
  br label %5956

; <label>:5956                                    ; preds = %5946, %5944, %5934
  %5957 = phi float [ %5943, %5934 ], [ %5955, %5946 ], [ 0.000000e+00, %5944 ]
  %5958 = and i1 %5902, %5900
  %5959 = fsub fast float -0.000000e+00, %5957
  %5960 = select i1 %5958, float -0.000000e+00, float %5959
  %5961 = fmul fast float %4422, 0x3FF7154760000000
  %5962 = fmul fast float %5961, %5960
  %5963 = fmul fast float %4423, 0x3FF7154760000000
  %5964 = fmul fast float %5963, %5960
  %5965 = fmul fast float %4424, 0x3FF7154760000000
  %5966 = fmul fast float %5965, %5960
  %5967 = call float @dx.op.unary.f32(i32 21, float %5962)  ; Exp(value)
  %5968 = call float @dx.op.unary.f32(i32 21, float %5964)  ; Exp(value)
  %5969 = call float @dx.op.unary.f32(i32 21, float %5966)  ; Exp(value)
  %5970 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5971 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5972 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5973 = fmul fast float %5896, %5970
  %5974 = fmul fast float %5897, %5971
  %5975 = fmul fast float %5898, %5972
  %5976 = fsub fast float %5850, %4621
  %5977 = fsub fast float %5851, %4620
  %5978 = fsub fast float %5852, %4619
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5976, float %5977, float %5978, float %5976, float %5977, float %5978)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = call float @dx.op.unary.f32(i32 25, float %5979)  ; Rsqrt(value)
  %5981 = fmul fast float %5980, %5976
  %5982 = fmul fast float %5980, %5977
  %5983 = fmul fast float %5980, %5978
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = call float @dx.op.dot3.f32(i32 55, float %4618, float %4617, float %4616, float %5981, float %5982, float %5983)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5987 = fmul fast float %5986, %5857
  %5988 = fmul fast float %5986, %5986
  %5989 = fmul fast float %5988, %5747
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = fmul fast float %5987, %5990
  %5992 = bitcast float %5847 to i32
  %5993 = ashr i32 %5992, 1
  %5994 = sub nsw i32 1597463007, %5993
  %5995 = bitcast i32 %5994 to float
  %5996 = fmul fast float %5995, %5844
  %5997 = fmul fast float %5995, %5845
  %5998 = fmul fast float %5995, %5846
  %5999 = fsub fast float %5996, %4621
  %6000 = fsub fast float %5997, %4620
  %6001 = fsub fast float %5998, %4619
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5999, float %6000, float %6001, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.unary.f32(i32 25, float %6002)  ; Rsqrt(value)
  %6004 = fmul fast float %5999, %6003
  %6005 = fmul fast float %6000, %6003
  %6006 = fmul fast float %6001, %6003
  %6007 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float %6004, float %6005, float %6006)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = fmul fast float %6007, %6007
  %6009 = call float @dx.op.unary.f32(i32 6, float %5984)  ; FAbs(value)
  %6010 = fsub fast float 1.000000e+00, %4668
  %6011 = fmul fast float %4650, %4650
  %6012 = fmul fast float %6011, %6010
  %6013 = fadd fast float %6012, %4668
  %6014 = bitcast float %6013 to i32
  %6015 = ashr i32 %6014, 1
  %6016 = add nsw i32 %6015, 532487669
  %6017 = bitcast i32 %6016 to float
  %6018 = fadd fast float %6017, %4650
  %6019 = fmul fast float %4668, %6008
  %6020 = fsub fast float 1.000000e+00, %6008
  %6021 = fadd fast float %6020, %6019
  %6022 = fmul fast float %6009, %6009
  %6023 = fmul fast float %6022, %6010
  %6024 = fadd fast float %6023, %4668
  %6025 = bitcast float %6024 to i32
  %6026 = ashr i32 %6025, 1
  %6027 = add nsw i32 %6026, 532487669
  %6028 = bitcast i32 %6027 to float
  %6029 = fadd fast float %6028, %6009
  %6030 = fmul fast float %6021, %6021
  %6031 = fmul fast float %6030, %6018
  %6032 = fmul fast float %6031, %6029
  %6033 = fdiv fast float 1.000000e+00, %6032
  %6034 = bitcast float %4668 to i32
  %6035 = sitofp i32 %6034 to float
  %6036 = fmul fast float %6035, 0x3FE7F73180000000
  %6037 = fadd fast float %6036, 0x41AFE27C40000000
  %6038 = fptosi float %6037 to i32
  %6039 = bitcast i32 %6038 to float
  %6040 = fmul fast float %5830, 0x3FD80E9D60000000
  %6041 = fmul fast float %6040, %5995
  %6042 = fadd fast float %6039, %6041
  %6043 = bitcast float %6042 to i32
  %6044 = sub nsw i32 2129859010, %6043
  %6045 = bitcast i32 %6044 to float
  %6046 = fmul fast float %4668, %6033
  %6047 = fmul fast float %6046, %6039
  %6048 = fmul fast float %6047, %6045
  %6049 = call float @dx.op.unary.f32(i32 6, float %5985)  ; FAbs(value)
  %6050 = fsub fast float 1.000000e+00, %6049
  %6051 = bitcast float %6050 to i32
  %6052 = sitofp i32 %6051 to float
  %6053 = fmul fast float %6052, 5.000000e+00
  %6054 = fadd fast float %6053, 0xC1EFBF8940000000
  %6055 = fptosi float %6054 to i32
  %6056 = bitcast i32 %6055 to float
  %6057 = fsub fast float 1.000000e+00, %4628
  %6058 = fsub fast float 1.000000e+00, %4629
  %6059 = fsub fast float 1.000000e+00, %4648
  %6060 = fmul fast float %6056, %6057
  %6061 = fmul fast float %6056, %6058
  %6062 = fmul fast float %6056, %6059
  %6063 = fadd fast float %6060, %4628
  %6064 = fadd fast float %6061, %4629
  %6065 = fadd fast float %6062, %4648
  br i1 %4786, label %6066, label %6089

; <label>:6066                                    ; preds = %5956
  %6067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4020, float %6049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.ResRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.ResRet.f32 %6067, 2
  %6071 = fadd fast float %6068, -5.000000e-01
  %6072 = fadd fast float %6069, -5.000000e-01
  %6073 = fadd fast float %6070, -5.000000e-01
  %6074 = fmul fast float %4628, 4.000000e+00
  %6075 = fmul fast float %6074, %6057
  %6076 = fmul fast float %6075, %6071
  %6077 = fmul fast float %4629, 4.000000e+00
  %6078 = fmul fast float %6077, %6058
  %6079 = fmul fast float %6078, %6072
  %6080 = fmul fast float %4648, 4.000000e+00
  %6081 = fmul fast float %6080, %6059
  %6082 = fmul fast float %6081, %6073
  %6083 = fadd fast float %6076, %6063
  %6084 = fadd fast float %6079, %6064
  %6085 = fadd fast float %6082, %6065
  %6086 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6088 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  br label %6089

; <label>:6089                                    ; preds = %6066, %5956
  %6090 = phi float [ %6086, %6066 ], [ %6063, %5956 ]
  %6091 = phi float [ %6087, %6066 ], [ %6064, %5956 ]
  %6092 = phi float [ %6088, %6066 ], [ %6065, %5956 ]
  %6093 = fmul fast float %5984, 9.843750e-01
  %6094 = fadd fast float %6093, 7.812500e-03
  %6095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %37, float %6094, float %4776, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6096 = extractvalue %dx.types.ResRet.f32 %6095, 2
  %6097 = extractvalue %dx.types.ResRet.f32 %6095, 3
  %6098 = fmul fast float %6096, %4628
  %6099 = fmul fast float %6096, %4629
  %6100 = fmul fast float %6096, %4648
  %6101 = fadd fast float %6098, %6097
  %6102 = fadd fast float %6099, %6097
  %6103 = fadd fast float %6100, %6097
  br i1 %4786, label %6104, label %6127

; <label>:6104                                    ; preds = %6089
  %6105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4020, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6106 = extractvalue %dx.types.ResRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.ResRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.ResRet.f32 %6105, 2
  %6109 = fadd fast float %6106, -5.000000e-01
  %6110 = fadd fast float %6107, -5.000000e-01
  %6111 = fadd fast float %6108, -5.000000e-01
  %6112 = fmul fast float %4628, 4.000000e+00
  %6113 = fmul fast float %6112, %6057
  %6114 = fmul fast float %6113, %6109
  %6115 = fmul fast float %4629, 4.000000e+00
  %6116 = fmul fast float %6115, %6058
  %6117 = fmul fast float %6116, %6110
  %6118 = fmul fast float %4648, 4.000000e+00
  %6119 = fmul fast float %6118, %6059
  %6120 = fmul fast float %6119, %6111
  %6121 = fadd fast float %6114, %6101
  %6122 = fadd fast float %6117, %6102
  %6123 = fadd fast float %6120, %6103
  %6124 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6126 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  br label %6127

; <label>:6127                                    ; preds = %6104, %6089
  %6128 = phi float [ %6124, %6104 ], [ %6101, %6089 ]
  %6129 = phi float [ %6125, %6104 ], [ %6102, %6089 ]
  %6130 = phi float [ %6126, %6104 ], [ %6103, %6089 ]
  %6131 = call float @dx.op.binary.f32(i32 35, float %6129, float %6130)  ; FMax(a,b)
  %6132 = call float @dx.op.binary.f32(i32 35, float %6128, float %6131)  ; FMax(a,b)
  %6133 = fsub fast float 1.000000e+00, %6132
  %6134 = fmul fast float %6090, %6048
  %6135 = fmul fast float %6091, %6048
  %6136 = fmul fast float %6092, %6048
  %6137 = fsub fast float 1.000000e+00, %5985
  %6138 = bitcast float %6137 to i32
  %6139 = sitofp i32 %6138 to float
  %6140 = fmul fast float %6139, 5.000000e+00
  %6141 = fadd fast float %6140, 0xC1EFBF8940000000
  %6142 = fptosi float %6141 to i32
  %6143 = bitcast i32 %6142 to float
  %6144 = fmul fast float %6143, %4021
  %6145 = fmul fast float %6133, %6144
  %6146 = fmul fast float %6145, %5709
  %6147 = fmul fast float %6145, %5710
  %6148 = fmul fast float %6145, %5711
  %6149 = fadd fast float %6146, %6134
  %6150 = fadd fast float %6147, %6135
  %6151 = fadd fast float %6148, %6136
  %6152 = fmul fast float %5973, %4017
  %6153 = fmul fast float %6152, %5991
  %6154 = fmul fast float %6153, %6133
  %6155 = fmul fast float %5974, %4017
  %6156 = fmul fast float %6155, %5991
  %6157 = fmul fast float %6156, %6133
  %6158 = fmul fast float %5975, %4017
  %6159 = fmul fast float %6158, %5991
  %6160 = fmul fast float %6159, %6133
  %6161 = fadd fast float %6154, %5812
  %6162 = fadd fast float %6157, %5813
  %6163 = fadd fast float %6160, %5814
  %6164 = fmul fast float %6153, %6149
  %6165 = fmul fast float %6156, %6150
  %6166 = fmul fast float %6159, %6151
  %6167 = fadd fast float %6164, %5809
  %6168 = fadd fast float %6165, %5810
  %6169 = fadd fast float %6166, %5811
  br label %5887

; <label>:6170                                    ; preds = %5887
  br label %6171

; <label>:6171                                    ; preds = %6170, %5775
  %6172 = phi float [ %5777, %5775 ], [ %5888, %6170 ]
  %6173 = phi float [ %5778, %5775 ], [ %5889, %6170 ]
  %6174 = phi float [ %5779, %5775 ], [ %5890, %6170 ]
  %6175 = phi float [ %5780, %5775 ], [ %5891, %6170 ]
  %6176 = phi float [ %5781, %5775 ], [ %5892, %6170 ]
  %6177 = phi float [ %5782, %5775 ], [ %5893, %6170 ]
  %6178 = add i32 %5776, 1
  %6179 = icmp ugt i32 %6178, %5772
  br i1 %6179, label %6180, label %5775

; <label>:6180                                    ; preds = %6171
  br label %6181

; <label>:6181                                    ; preds = %6180, %5751, %5692
  %6182 = phi float [ %5740, %5692 ], [ %5740, %5751 ], [ %6172, %6180 ]
  %6183 = phi float [ %5743, %5692 ], [ %5743, %5751 ], [ %6173, %6180 ]
  %6184 = phi float [ %5746, %5692 ], [ %5746, %5751 ], [ %6174, %6180 ]
  %6185 = phi float [ %5733, %5692 ], [ %5733, %5751 ], [ %6175, %6180 ]
  %6186 = phi float [ %5735, %5692 ], [ %5735, %5751 ], [ %6176, %6180 ]
  %6187 = phi float [ %5737, %5692 ], [ %5737, %5751 ], [ %6177, %6180 ]
  %6188 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %6189 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %6190 = call float @dx.op.unary.f32(i32 24, float %4624)  ; Sqrt(value)
  %6191 = fmul fast float %6188, %6185
  %6192 = fmul fast float %6189, %6186
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  br i1 %181, label %6195, label %6218

; <label>:6195                                    ; preds = %6181
  %6196 = fadd fast float %6187, %4023
  %6197 = fmul fast float %6196, %4024
  %6198 = fsub fast float 1.000000e+00, %4024
  %6199 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6202 = fmul fast float %6201, %6199
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = fmul fast float %6204, %5715
  %6206 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6207 = fmul fast float %6206, %4646
  %6208 = fadd fast float %6192, %6191
  %6209 = fmul fast float %6194, %6208
  %6210 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6211 = fadd fast float %6202, %6197
  %6212 = fsub fast float %6211, %6205
  %6213 = fadd fast float %6212, %6207
  %6214 = fsub fast float %6213, %6210
  %6215 = extractvalue %dx.types.CBufRet.f32 %6200, 2
  %6216 = fmul fast float %6214, %6215
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  br label %6234

; <label>:6218                                    ; preds = %6181
  %6219 = fmul fast float %6190, %6187
  %6220 = fmul fast float %6194, %6191
  %6221 = fmul fast float %6194, %6192
  %6222 = fmul fast float %6219, %6194
  %6223 = add i32 %41, 356
  %6224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6223, i32 undef)  ; BufferLoad(srv,index,wot)
  %6225 = extractvalue %dx.types.ResRet.i32 %6224, 0
  %6226 = and i32 %6225, 32
  %6227 = icmp eq i32 %6226, 0
  br i1 %6227, label %6234, label %6228

; <label>:6228                                    ; preds = %6218
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = fmul fast float %6230, 0x3FE99999A0000000
  %6232 = fadd fast float %6230, %6220
  %6233 = fadd fast float %6231, %6222
  br label %6234

; <label>:6234                                    ; preds = %6228, %6218, %6195
  %6235 = phi float [ %6209, %6195 ], [ %6232, %6228 ], [ %6220, %6218 ]
  %6236 = phi float [ %6217, %6195 ], [ %6221, %6228 ], [ %6221, %6218 ]
  %6237 = phi float [ 1.000000e+00, %6195 ], [ %6233, %6228 ], [ %6222, %6218 ]
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = fmul fast float %6239, %6183
  %6241 = fmul fast float %6239, %6184
  %6242 = fadd fast float %6183, %6182
  %6243 = select i1 %181, float %6242, float %6182
  %6244 = fmul float %6243, %6239
  %6245 = select i1 %181, float 0.000000e+00, float %6240
  %6246 = select i1 %181, float 0.000000e+00, float %6241
  %6247 = fmul fast float %6235, %6188
  %6248 = fmul fast float %6236, %6189
  %6249 = fmul fast float %6237, %6190
  %6250 = fadd fast float %6244, %6247
  %6251 = fadd fast float %6245, %6248
  %6252 = fadd fast float %6246, %6249
  %6253 = select i1 %181, float %6236, float %6251
  %6254 = select i1 %181, float %6237, float %6252
  %6255 = call float @dx.op.binary.f32(i32 36, float %6250, float 3.225500e+04)  ; FMin(a,b)
  %6256 = call float @dx.op.binary.f32(i32 36, float %6253, float 3.225500e+04)  ; FMin(a,b)
  %6257 = call float @dx.op.binary.f32(i32 36, float %6254, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6255)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6256)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!55}
!dx.entryPoints = !{!56}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !46, !49}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
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
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!46 = !{!47, !48}
!47 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!48 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!49 = !{!50, !51, !52, !53, !54}
!50 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!51 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!56 = !{void ()* @ps_main, !"ps_main", !57, !4, !79}
!57 = !{!58, !77, null}
!58 = !{!59, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76}
!59 = !{i32 0, !"SV_Position", i8 9, i8 3, !60, i8 4, i32 1, i8 4, i32 0, i8 0, !61}
!60 = !{i32 0}
!61 = !{i32 3, i32 11}
!62 = !{i32 1, !"COLOR", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 1, i8 0, !63}
!63 = !{i32 3, i32 14}
!64 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 2, i8 0, !65}
!65 = !{i32 3, i32 3}
!66 = !{i32 3, !"NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 4, !"TANGENT", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!69 = !{i32 3, i32 15}
!70 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !60, i8 2, i32 1, i8 3, i32 5, i8 0, !67}
!71 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!72 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 2, i32 7, i8 0, !65}
!73 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 8, i8 0, !69}
!74 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !60, i8 1, i32 1, i8 4, i32 9, i8 0, !75}
!75 = !{i32 3, i32 13}
!76 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !60, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!77 = !{!78}
!78 = !{i32 0, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!79 = !{i32 0, i64 24}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}

