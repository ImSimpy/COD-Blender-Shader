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
; shader hash: 9b31af2fc65dd8f299c7c9608be66bb2
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
  %144 = add i32 %43, 360
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = extractvalue %dx.types.ResRet.i32 %145, 1
  %148 = extractvalue %dx.types.ResRet.i32 %145, 2
  %149 = extractvalue %dx.types.ResRet.i32 %145, 3
  %150 = bitcast i32 %146 to float
  %151 = bitcast i32 %147 to float
  %152 = bitcast i32 %148 to float
  %153 = bitcast i32 %149 to float
  %154 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %155 = call float @dx.op.unary.f32(i32 25, float %154)  ; Rsqrt(value)
  %156 = fmul fast float %155, %85
  %157 = fmul fast float %155, %86
  %158 = fmul fast float %155, %87
  %159 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %160 = call float @dx.op.unary.f32(i32 25, float %159)  ; Rsqrt(value)
  %161 = fmul fast float %160, %141
  %162 = fmul fast float %160, %142
  %163 = fmul fast float %160, %143
  %164 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = fmul fast float %164, %164
  %166 = fmul fast float %165, %152
  %167 = fadd fast float %166, %153
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %171 = fmul fast float %170, %159
  %172 = fsub fast float %150, %171
  %173 = fmul fast float %172, %151
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fmul fast float %174, %168
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %179 = fmul fast float %177, %78
  %180 = fmul fast float %178, %79
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 114688
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %184, float %179, float 0.000000e+00
  %186 = select i1 %184, float %180, float 0.000000e+00
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fmul fast float %188, 2.550000e+02
  %190 = fptoui float %189 to i32
  %191 = select i1 %184, i32 %190, i32 0
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 3
  %195 = and i32 %194, 3
  %196 = icmp ne i32 %195, 0
  %197 = and i32 %194, 4
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %196, %198
  br i1 %199, label %200, label %211

; <label>:200                                     ; preds = %0
  %201 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %202 = fmul fast float %201, %79
  %203 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %204 = fmul fast float %203, %78
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %204, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %214

; <label>:211                                     ; preds = %0
  %212 = icmp eq i32 %197, 0
  %213 = and i1 %196, %212
  br label %214

; <label>:214                                     ; preds = %211, %200
  %215 = phi i1 [ %210, %200 ], [ %213, %211 ]
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, 0x3FE3C6EF40000000
  %219 = frem fast float %78, 2.560000e+02
  %220 = frem fast float %79, 2.560000e+02
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = fadd fast float %224, %218
  %227 = fadd fast float %225, %218
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %230 = add i32 %43, 156
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %43, 216
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %244, 8
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %244, 16
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = add i32 %43, 36
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %43, 288
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %267, 0x3F50624DE0000000
  %271 = fmul fast float %269, 0x3F50624DE0000000
  %272 = add i32 %43, 172
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %43, 232
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %43, 52
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %43, 304
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %43, 188
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %43, 248
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %43, 68
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %43, 320
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %43, 204
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %43, 264
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %43, 84
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %43, 336
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %43, 348
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 32
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %400, 64
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %400, 128
  %406 = icmp eq i32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %424, label %411

; <label>:411                                     ; preds = %214
  %412 = add i32 %43, 536
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %414, 0
  %416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %416, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = fmul fast float %418, %68
  %422 = fmul fast float %419, %69
  %423 = fmul fast float %420, %70
  br label %424

; <label>:424                                     ; preds = %411, %214
  %425 = phi float [ %70, %214 ], [ %423, %411 ]
  %426 = phi float [ %69, %214 ], [ %422, %411 ]
  %427 = phi float [ %68, %214 ], [ %421, %411 ]
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 2
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %451, label %432

; <label>:432                                     ; preds = %424
  %433 = add i32 %43, 44
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %427, float 1.000000e+00
  %439 = add i32 %43, 60
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 1
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %426, float 1.000000e+00
  %445 = add i32 %43, 76
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 1
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %425, float 1.000000e+00
  br label %451

; <label>:451                                     ; preds = %432, %424
  %452 = phi float [ %425, %424 ], [ %450, %432 ]
  %453 = phi float [ %426, %424 ], [ %444, %432 ]
  %454 = phi float [ %427, %424 ], [ %438, %432 ]
  %455 = lshr i32 %429, 20
  %456 = and i32 %455, 3
  %457 = add nuw nsw i32 %456, 1
  %458 = add i32 %43, 24
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %43, 28
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = or i32 %463, %460
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %924, label %466

; <label>:466                                     ; preds = %451
  %467 = and i32 %460, 262144
  %468 = icmp ne i32 %467, 0
  %469 = select i1 %468, float %46, float 1.000000e+00
  %470 = select i1 %468, float %47, float 0.000000e+00
  %471 = select i1 %468, float %48, float 0.000000e+00
  %472 = select i1 %468, float %49, float 1.000000e+00
  %473 = select i1 %468, float %50, float %66
  %474 = select i1 %468, float %51, float %67
  %475 = add i32 %43, 284
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = fmul fast float %479, 0x3F50624DE0000000
  %481 = add i32 %43, 88
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 16
  %485 = and i32 %484, 255
  %486 = lshr i32 %483, 24
  %487 = add i32 %43, 292
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 65535
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %489, 16
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = add i32 %43, 32
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 22
  %498 = shl nuw nsw i32 %497, 5
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = shl i32 %496, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %496, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %508 = fmul fast float %507, 1.000000e+03
  %509 = fmul fast float %270, %508
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fadd fast float %510, %260
  %512 = fmul fast float %271, %508
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fadd fast float %513, %262
  %515 = fmul fast float %480, %508
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fmul fast float %516, 0x401921FB60000000
  %518 = fadd fast float %517, %499
  %519 = call float @dx.op.unary.f32(i32 13, float %518)  ; Sin(value)
  %520 = call float @dx.op.unary.f32(i32 12, float %518)  ; Cos(value)
  %521 = fsub fast float -0.000000e+00, %519
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fadd fast float %474, -5.000000e-01
  %524 = fmul fast float %491, %522
  %525 = fmul fast float %493, %523
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fmul fast float %502, %526
  %529 = fmul fast float %505, %527
  %530 = fmul fast float %520, %528
  %531 = call float @dx.op.tertiary.f32(i32 46, float %521, float %529, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %519, %528
  %533 = call float @dx.op.tertiary.f32(i32 46, float %520, float %529, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %511, %531
  %535 = fadd fast float %514, %533
  %536 = icmp ugt i32 %485, 1
  %537 = icmp ugt i32 %483, 33554431
  %538 = or i1 %537, %536
  br i1 %538, label %539, label %564

; <label>:539                                     ; preds = %466
  %540 = add i32 %43, 228
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = lshr i32 %542, 16
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = fmul fast float %507, %544
  %546 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %547 = mul nuw nsw i32 %485, %486
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %546, %548
  %550 = call float @dx.op.unary.f32(i32 27, float %549)  ; Round_ni(value)
  %551 = fptoui float %550 to i32
  %552 = urem i32 %551, %485
  %553 = udiv i32 %551, %486
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %556 = uitofp i32 %552 to float
  %557 = uitofp i32 %553 to float
  %558 = fadd fast float %554, %556
  %559 = fadd fast float %555, %557
  %560 = uitofp i32 %485 to float
  %561 = uitofp i32 %486 to float
  %562 = fdiv fast float %558, %560
  %563 = fdiv fast float %559, %561
  br label %564

; <label>:564                                     ; preds = %539, %466
  %565 = phi float [ %562, %539 ], [ %534, %466 ]
  %566 = phi float [ %563, %539 ], [ %535, %466 ]
  %567 = and i32 %460, 16
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %765, label %569

; <label>:569                                     ; preds = %564
  %570 = add i32 %43, 424
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %74, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = extractvalue %dx.types.ResRet.f32 %575, 3
  %580 = and i32 %483, 255
  %581 = uitofp i32 %580 to float
  %582 = lshr i32 %483, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %579, %581
  %586 = fadd fast float %585, %584
  %587 = fmul fast float %586, 0x3F70101000000000
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 512
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %600, label %592

; <label>:592                                     ; preds = %569
  %593 = add i32 %43, 504
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = add i32 %595, 0
  %597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %597, %dx.types.Handle %75, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  br label %600

; <label>:600                                     ; preds = %592, %569
  %601 = phi float [ %599, %592 ], [ 1.000000e+00, %569 ]
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 33554432
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %712, label %606

; <label>:606                                     ; preds = %600
  %607 = add i32 %43, 224
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %609, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = add i32 %43, 228
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = lshr i32 %620, 24
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = and i32 %620, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %620, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %620, 16
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = add i32 %43, 220
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = lshr i32 %637, 24
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = and i32 %637, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %637, 8
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = lshr i32 %637, 16
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = bitcast float %576 to i32
  %653 = ashr i32 %652, 1
  %654 = sub nsw i32 1597463174, %653
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %576, 5.000000e-01
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %657, %656
  %659 = fsub fast float 1.500000e+00, %658
  %660 = fmul fast float %655, %576
  %661 = fmul fast float %660, %659
  %662 = bitcast float %577 to i32
  %663 = ashr i32 %662, 1
  %664 = sub nsw i32 1597463174, %663
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %577, 5.000000e-01
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %667, %666
  %669 = fsub fast float 1.500000e+00, %668
  %670 = fmul fast float %665, %577
  %671 = fmul fast float %670, %669
  %672 = bitcast float %578 to i32
  %673 = ashr i32 %672, 1
  %674 = sub nsw i32 1597463174, %673
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %578, 5.000000e-01
  %677 = fmul fast float %675, %675
  %678 = fmul fast float %677, %676
  %679 = fsub fast float 1.500000e+00, %678
  %680 = fmul fast float %675, %578
  %681 = fmul fast float %680, %679
  %682 = fsub fast float %661, %643
  %683 = fsub fast float %671, %647
  %684 = fsub fast float %681, %651
  %685 = fmul fast float %682, %611
  %686 = fmul fast float %683, %613
  %687 = fmul fast float %684, %618
  %688 = fadd fast float %685, %626
  %689 = fadd fast float %686, %630
  %690 = fadd fast float %687, %634
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fmul fast float %693, %693
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fsub fast float %696, %578
  %700 = fmul fast float %697, %601
  %701 = fmul fast float %698, %601
  %702 = fmul fast float %699, %601
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %702, %578
  %706 = fadd fast float %623, %587
  %707 = fsub fast float %706, %640
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = fsub fast float %708, %587
  %710 = fmul fast float %709, %601
  %711 = fadd fast float %710, %587
  br label %765

; <label>:712                                     ; preds = %600
  %713 = and i32 %603, 134217728
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %749, label %715

; <label>:715                                     ; preds = %712
  %716 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %718 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fadd fast float %718, -5.000000e-01
  %722 = fmul fast float %719, %601
  %723 = fmul fast float %720, %601
  %724 = fmul fast float %721, %601
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = fadd fast float %724, 5.000000e-01
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = call float @dx.op.unary.f32(i32 24, float %578)  ; Sqrt(value)
  %731 = fmul fast float %725, 2.000000e+00
  %732 = fsub fast float 1.000000e+00, %731
  %733 = fmul fast float %732, %728
  %734 = fadd fast float %733, %731
  %735 = fmul fast float %734, %728
  %736 = fmul fast float %726, 2.000000e+00
  %737 = fsub fast float 1.000000e+00, %736
  %738 = fmul fast float %737, %729
  %739 = fadd fast float %738, %736
  %740 = fmul fast float %739, %729
  %741 = fmul fast float %727, 2.000000e+00
  %742 = fsub fast float 1.000000e+00, %741
  %743 = fmul fast float %742, %730
  %744 = fadd fast float %743, %741
  %745 = fmul fast float %744, %730
  %746 = fmul fast float %735, %735
  %747 = fmul fast float %740, %740
  %748 = fmul fast float %745, %745
  br label %765

; <label>:749                                     ; preds = %712
  %750 = fmul fast float %247, %247
  %751 = fmul fast float %251, %251
  %752 = fmul fast float %255, %255
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fadd fast float %752, -1.000000e+00
  %756 = fmul fast float %601, %753
  %757 = fmul fast float %601, %754
  %758 = fmul fast float %601, %755
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fadd fast float %758, 1.000000e+00
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  %764 = fmul fast float %761, %578
  br label %765

; <label>:765                                     ; preds = %749, %715, %606, %564
  %766 = phi float [ %711, %606 ], [ %587, %715 ], [ %587, %749 ], [ 0x3FA23C0BE0000000, %564 ]
  %767 = phi float [ %703, %606 ], [ %746, %715 ], [ %762, %749 ], [ 1.000000e+00, %564 ]
  %768 = phi float [ %704, %606 ], [ %747, %715 ], [ %763, %749 ], [ 1.000000e+00, %564 ]
  %769 = phi float [ %705, %606 ], [ %748, %715 ], [ %764, %749 ], [ 1.000000e+00, %564 ]
  %770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.i32 %770, 1
  %772 = and i32 %771, 1
  %773 = icmp ne i32 %772, 0
  %774 = add i32 %43, 356
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 32
  %778 = icmp ne i32 %777, 0
  %779 = and i1 %773, %778
  %780 = select i1 %779, float 1.000000e+00, float %767
  %781 = select i1 %779, float 0x3FD3333340000000, float %768
  %782 = select i1 %779, float 0x3FD3333340000000, float %769
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 32
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %859, label %787

; <label>:787                                     ; preds = %765
  %788 = add i32 %43, 92
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = add i32 %43, 440
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %74, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = and i32 %790, 255
  %802 = uitofp i32 %801 to float
  %803 = lshr i32 %790, 8
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = lshr i32 %790, 16
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, 0x3F70101000000000
  %810 = fmul fast float %797, %802
  %811 = fadd fast float %810, %805
  %812 = fmul fast float %811, 0x3F70101000000000
  %813 = fadd fast float %798, -5.000000e-01
  %814 = fadd fast float %800, -5.000000e-01
  %815 = fmul fast float %813, %809
  %816 = fmul fast float %814, %809
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fadd fast float %816, 5.000000e-01
  %819 = fmul fast float %817, 2.000000e+00
  %820 = fadd fast float %819, -1.000000e+00
  %821 = fmul fast float %818, 2.000000e+00
  %822 = fadd fast float %821, -1.000000e+00
  %823 = fadd fast float %820, %822
  %824 = fmul fast float %823, 5.000000e-01
  %825 = fsub fast float %820, %822
  %826 = fmul fast float %825, 5.000000e-01
  %827 = call float @dx.op.unary.f32(i32 6, float %824)  ; FAbs(value)
  %828 = fsub fast float 1.000000e+00, %827
  %829 = call float @dx.op.unary.f32(i32 6, float %826)  ; FAbs(value)
  %830 = fsub fast float %828, %829
  %831 = call float @dx.op.dot3.f32(i32 55, float %824, float %826, float %830, float %824, float %826, float %830)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = call float @dx.op.unary.f32(i32 25, float %831)  ; Rsqrt(value)
  %833 = fmul fast float %824, %832
  %834 = fmul fast float %826, %832
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 67108864
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %855, label %839

; <label>:839                                     ; preds = %787
  %840 = add i32 %43, 280
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 65535
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = lshr i32 %842, 16
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = fsub fast float %812, %850
  %852 = fmul fast float %851, %844
  %853 = fadd fast float %852, %848
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  br label %855

; <label>:855                                     ; preds = %839, %787
  %856 = phi float [ %854, %839 ], [ %812, %787 ]
  %857 = call float @dx.op.dot2.f32(i32 54, float %833, float %834, float %469, float %470)  ; Dot2(ax,ay,bx,by)
  %858 = call float @dx.op.dot2.f32(i32 54, float %833, float %834, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  br label %859

; <label>:859                                     ; preds = %855, %765
  %860 = phi float [ %856, %855 ], [ 0x3FD6666660000000, %765 ]
  %861 = phi float [ %857, %855 ], [ 0.000000e+00, %765 ]
  %862 = phi float [ %858, %855 ], [ 0.000000e+00, %765 ]
  %863 = phi float [ %799, %855 ], [ 1.000000e+00, %765 ]
  %864 = add i32 %43, 160
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = lshr i32 %866, 22
  %868 = shl nuw nsw i32 %867, 5
  %869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %868)  ; LegacyF16ToF32(value)
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 64
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %907, label %874

; <label>:874                                     ; preds = %859
  %875 = add i32 %43, 456
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = add i32 %877, 0
  %879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 131072
  %883 = icmp eq i32 %882, 0
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %879, %dx.types.Handle %74, float %565, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = fmul fast float %885, %235
  %889 = fmul fast float %886, %238
  %890 = fmul fast float %887, %241
  br i1 %883, label %897, label %891

; <label>:891                                     ; preds = %874
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = fmul fast float %893, %888
  %895 = fmul fast float %893, %889
  %896 = fmul fast float %893, %890
  br label %897

; <label>:897                                     ; preds = %891, %874
  %898 = phi float [ %894, %891 ], [ %888, %874 ]
  %899 = phi float [ %895, %891 ], [ %889, %874 ]
  %900 = phi float [ %896, %891 ], [ %890, %874 ]
  %901 = fmul fast float %898, %869
  %902 = select i1 %215, float %901, float %898
  %903 = call float @dx.op.dot3.f32(i32 55, float %902, float %899, float %900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = select i1 %215, float 0.000000e+00, float %898
  %905 = select i1 %215, float %903, float %899
  %906 = select i1 %215, float 0.000000e+00, float %900
  br label %907

; <label>:907                                     ; preds = %897, %859
  %908 = phi float [ %904, %897 ], [ 0.000000e+00, %859 ]
  %909 = phi float [ %905, %897 ], [ 0.000000e+00, %859 ]
  %910 = phi float [ %906, %897 ], [ 0.000000e+00, %859 ]
  %911 = add i32 %43, 96
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %913, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = call float @dx.op.dot3.f32(i32 55, float %780, float %781, float %782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = fmul fast float %918, %919
  %921 = fadd fast float %920, %915
  %922 = fmul fast float %921, 0x3F70101020000000
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  br label %924

; <label>:924                                     ; preds = %907, %451
  %925 = phi float [ 0.000000e+00, %451 ], [ %861, %907 ]
  %926 = phi float [ 0.000000e+00, %451 ], [ %862, %907 ]
  %927 = phi float [ 0.000000e+00, %451 ], [ %780, %907 ]
  %928 = phi float [ 0.000000e+00, %451 ], [ %781, %907 ]
  %929 = phi float [ 0.000000e+00, %451 ], [ %782, %907 ]
  %930 = phi float [ 0.000000e+00, %451 ], [ %908, %907 ]
  %931 = phi float [ 0.000000e+00, %451 ], [ %909, %907 ]
  %932 = phi float [ 0.000000e+00, %451 ], [ %910, %907 ]
  %933 = phi float [ 0.000000e+00, %451 ], [ %766, %907 ]
  %934 = phi float [ 0.000000e+00, %451 ], [ 1.000000e+00, %907 ]
  %935 = phi float [ 0.000000e+00, %451 ], [ %860, %907 ]
  %936 = phi float [ 0.000000e+00, %451 ], [ %863, %907 ]
  %937 = phi float [ 0.000000e+00, %451 ], [ %923, %907 ]
  br i1 %402, label %1779, label %938

; <label>:938                                     ; preds = %924
  %939 = icmp ult i32 %457, 2
  %940 = add i32 %43, 40
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = add i32 %43, 44
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = or i32 %945, %942
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %1779, label %948

; <label>:948                                     ; preds = %938
  %949 = and i32 %942, 262144
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %950, float %46, float 1.000000e+00
  %952 = select i1 %950, float %47, float 0.000000e+00
  %953 = select i1 %950, float %48, float 0.000000e+00
  %954 = select i1 %950, float %49, float 1.000000e+00
  %955 = select i1 %950, float %50, float %66
  %956 = select i1 %950, float %51, float %67
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
  %991 = fmul fast float %312, %990
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fadd fast float %992, %302
  %994 = fmul fast float %313, %990
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fadd fast float %995, %304
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
  %1056 = fadd fast float %1053, %141
  %1057 = fadd fast float %1054, %142
  %1058 = fadd fast float %1055, %143
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
  %1159 = fmul fast float %1158, %454
  br label %1160

; <label>:1160                                    ; preds = %1157, %1046
  %1161 = phi float [ %1159, %1157 ], [ %454, %1046 ]
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 256
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1212, label %1166

; <label>:1166                                    ; preds = %1160
  %1167 = add i32 %43, 492
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %75, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1219 = add i32 %43, 476
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %1221, 0
  %1223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1223, %dx.types.Handle %75, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  br i1 %1236, label %1779, label %1237

; <label>:1237                                    ; preds = %1234
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 16
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1440, label %1242

; <label>:1242                                    ; preds = %1237
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %43, 428
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %1247, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1249, %dx.types.Handle %74, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1268 = add i32 %43, 508
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %1270, 0
  %1272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1272, %dx.types.Handle %75, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1391 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
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
  %1425 = fmul fast float %289, %289
  %1426 = fmul fast float %293, %293
  %1427 = fmul fast float %297, %297
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
  %1466 = add i32 %43, 444
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %74, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1550 = add i32 %43, 460
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 131072
  %1558 = icmp eq i32 %1557, 0
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %74, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = fmul fast float %1560, %277
  %1564 = fmul fast float %1561, %280
  %1565 = fmul fast float %1562, %283
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
  %1577 = select i1 %215, float %1576, float %1573
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1574, float %1575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = select i1 %215, float 0.000000e+00, float %1573
  %1580 = select i1 %215, float %1578, float %1574
  %1581 = select i1 %215, float 0.000000e+00, float %1575
  br label %1582

; <label>:1582                                    ; preds = %1572, %1534
  %1583 = phi float [ %1579, %1572 ], [ 0.000000e+00, %1534 ]
  %1584 = phi float [ %1580, %1572 ], [ 0.000000e+00, %1534 ]
  %1585 = phi float [ %1581, %1572 ], [ 0.000000e+00, %1534 ]
  %1586 = add i32 %43, 112
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = lshr i32 %1588, 8
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1595 = fmul fast float %1593, %1594
  %1596 = fadd fast float %1595, %1590
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  br i1 %939, label %1599, label %1607

; <label>:1599                                    ; preds = %1582
  %1600 = fsub fast float 1.000000e+00, %1235
  %1601 = fmul fast float %1600, %927
  %1602 = fmul fast float %1600, %928
  %1603 = fmul fast float %1600, %929
  %1604 = fmul fast float %1600, %930
  %1605 = fmul fast float %1600, %931
  %1606 = fmul fast float %1600, %932
  br label %1607

; <label>:1607                                    ; preds = %1599, %1582
  %1608 = phi float [ %1601, %1599 ], [ %927, %1582 ]
  %1609 = phi float [ %1602, %1599 ], [ %928, %1582 ]
  %1610 = phi float [ %1603, %1599 ], [ %929, %1582 ]
  %1611 = phi float [ %1604, %1599 ], [ %930, %1582 ]
  %1612 = phi float [ %1605, %1599 ], [ %931, %1582 ]
  %1613 = phi float [ %1606, %1599 ], [ %932, %1582 ]
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 3
  %1617 = icmp eq i32 %1616, 3
  br i1 %1617, label %1696, label %1618

; <label>:1618                                    ; preds = %1607
  %1619 = and i32 %1615, 16
  %1620 = icmp ne i32 %1619, 0
  %1621 = select i1 %1620, float %1235, float 0.000000e+00
  %1622 = icmp eq i32 %1616, 0
  br i1 %1622, label %1623, label %1651

; <label>:1623                                    ; preds = %1618
  %1624 = and i32 %1615, 64
  %1625 = icmp ne i32 %1624, 0
  %1626 = select i1 %1625, float %1235, float 0.000000e+00
  %1627 = fsub fast float %1455, %1608
  %1628 = fsub fast float %1456, %1609
  %1629 = fsub fast float %1457, %1610
  %1630 = fmul fast float %1621, %1627
  %1631 = fmul fast float %1621, %1628
  %1632 = fmul fast float %1621, %1629
  %1633 = fadd fast float %1630, %1608
  %1634 = fadd fast float %1631, %1609
  %1635 = fadd fast float %1632, %1610
  %1636 = fsub fast float %1441, %933
  %1637 = fmul fast float %1621, %1636
  %1638 = fadd fast float %1637, %933
  %1639 = fsub fast float %1583, %1611
  %1640 = fsub fast float %1584, %1612
  %1641 = fsub fast float %1585, %1613
  %1642 = fmul fast float %1626, %1639
  %1643 = fmul fast float %1626, %1640
  %1644 = fmul fast float %1626, %1641
  %1645 = fadd fast float %1642, %1611
  %1646 = fadd fast float %1643, %1612
  %1647 = fadd fast float %1644, %1613
  %1648 = fsub fast float %1598, %937
  %1649 = fmul fast float %1621, %1648
  %1650 = fadd fast float %1649, %937
  br label %1696

; <label>:1651                                    ; preds = %1618
  %1652 = icmp eq i32 %1616, 1
  br i1 %1652, label %1653, label %1666

; <label>:1653                                    ; preds = %1651
  %1654 = fadd fast float %1455, -1.000000e+00
  %1655 = fadd fast float %1456, -1.000000e+00
  %1656 = fadd fast float %1457, -1.000000e+00
  %1657 = fmul fast float %1621, %1654
  %1658 = fmul fast float %1621, %1655
  %1659 = fmul fast float %1621, %1656
  %1660 = fadd fast float %1657, 1.000000e+00
  %1661 = fadd fast float %1658, 1.000000e+00
  %1662 = fadd fast float %1659, 1.000000e+00
  %1663 = fmul fast float %1660, %1608
  %1664 = fmul fast float %1661, %1609
  %1665 = fmul fast float %1662, %1610
  br label %1696

; <label>:1666                                    ; preds = %1651
  %1667 = icmp eq i32 %1616, 2
  br i1 %1667, label %1668, label %1696

; <label>:1668                                    ; preds = %1666
  %1669 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1670 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1671 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1672 = fadd fast float %1669, -5.000000e-01
  %1673 = fadd fast float %1670, -5.000000e-01
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fmul fast float %1672, %1621
  %1676 = fmul fast float %1673, %1621
  %1677 = fmul fast float %1674, %1621
  %1678 = fadd fast float %1675, 5.000000e-01
  %1679 = fadd fast float %1676, 5.000000e-01
  %1680 = fadd fast float %1677, 5.000000e-01
  %1681 = fmul fast float %1678, 2.000000e+00
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1682, %1608
  %1684 = fadd fast float %1683, %1681
  %1685 = fmul fast float %1684, %1608
  %1686 = fmul fast float %1679, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1609
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1609
  %1691 = fmul fast float %1680, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1610
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1610
  br label %1696

; <label>:1696                                    ; preds = %1668, %1666, %1653, %1623, %1607
  %1697 = phi float [ %1608, %1607 ], [ %1685, %1668 ], [ %1608, %1666 ], [ %1663, %1653 ], [ %1633, %1623 ]
  %1698 = phi float [ %1609, %1607 ], [ %1690, %1668 ], [ %1609, %1666 ], [ %1664, %1653 ], [ %1634, %1623 ]
  %1699 = phi float [ %1610, %1607 ], [ %1695, %1668 ], [ %1610, %1666 ], [ %1665, %1653 ], [ %1635, %1623 ]
  %1700 = phi float [ %1611, %1607 ], [ %1611, %1668 ], [ %1611, %1666 ], [ %1611, %1653 ], [ %1645, %1623 ]
  %1701 = phi float [ %1612, %1607 ], [ %1612, %1668 ], [ %1612, %1666 ], [ %1612, %1653 ], [ %1646, %1623 ]
  %1702 = phi float [ %1613, %1607 ], [ %1613, %1668 ], [ %1613, %1666 ], [ %1613, %1653 ], [ %1647, %1623 ]
  %1703 = phi float [ %933, %1607 ], [ %933, %1668 ], [ %933, %1666 ], [ %933, %1653 ], [ %1638, %1623 ]
  %1704 = phi float [ %937, %1607 ], [ %937, %1668 ], [ %937, %1666 ], [ %937, %1653 ], [ %1650, %1623 ]
  %1705 = and i32 %1615, 12
  %1706 = icmp eq i32 %1705, 12
  br i1 %1706, label %1779, label %1707

; <label>:1707                                    ; preds = %1696
  %1708 = and i32 %1615, 2097184
  %1709 = icmp eq i32 %1708, 2097184
  %1710 = select i1 %1709, float %1235, float 0.000000e+00
  %1711 = and i32 %1615, 4194336
  %1712 = icmp eq i32 %1711, 4194336
  %1713 = select i1 %1712, float %1235, float 0.000000e+00
  %1714 = and i32 %1615, 8388640
  %1715 = icmp eq i32 %1714, 8388640
  %1716 = select i1 %1715, float %1235, float 0.000000e+00
  %1717 = icmp eq i32 %1705, 0
  br i1 %1717, label %1718, label %1731

; <label>:1718                                    ; preds = %1707
  %1719 = fsub fast float %1536, %925
  %1720 = fsub fast float %1537, %926
  %1721 = fmul fast float %1710, %1719
  %1722 = fmul fast float %1710, %1720
  %1723 = fadd fast float %1721, %925
  %1724 = fadd fast float %1722, %926
  %1725 = fsub fast float %1538, %936
  %1726 = fmul fast float %1713, %1725
  %1727 = fadd fast float %1726, %936
  %1728 = fsub fast float %1535, %935
  %1729 = fmul fast float %1716, %1728
  %1730 = fadd fast float %1729, %935
  br label %1779

; <label>:1731                                    ; preds = %1707
  %1732 = icmp eq i32 %1705, 4
  br i1 %1732, label %1733, label %1765

; <label>:1733                                    ; preds = %1731
  %1734 = fmul fast float %1710, %1536
  %1735 = fmul fast float %1710, %1537
  %1736 = fadd fast float %1734, %925
  %1737 = fadd fast float %1735, %926
  %1738 = call float @dx.op.binary.f32(i32 36, float %936, float %1538)  ; FMin(a,b)
  %1739 = fsub fast float %1738, %936
  %1740 = fmul fast float %1739, %1713
  %1741 = fadd fast float %1740, %936
  %1742 = fadd fast float %1535, %935
  %1743 = fmul fast float %1742, 0x3FF337FAE0000000
  %1744 = fmul fast float %935, %935
  %1745 = fmul fast float %1535, %1535
  %1746 = fadd fast float %1745, %1744
  %1747 = fmul fast float %1746, 0x3FE5152B00000000
  %1748 = fmul fast float %935, 0xBFCC1F85E0000000
  %1749 = fmul fast float %1748, %1535
  %1750 = fadd fast float %1749, 0xBFE1363700000000
  %1751 = fadd fast float %1750, %1743
  %1752 = fsub fast float %1751, %1747
  %1753 = fmul fast float %1742, 0x3FBA6F0D00000000
  %1754 = fmul fast float %1746, 0x3FD0432880000000
  %1755 = fmul fast float %935, 0xBFEF110800000000
  %1756 = fmul fast float %1755, %1535
  %1757 = fadd fast float %1756, 1.000000e+00
  %1758 = fsub fast float %1757, %1753
  %1759 = fadd fast float %1758, %1754
  %1760 = fdiv fast float %1752, %1759
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1762 = fsub fast float %1761, %935
  %1763 = fmul fast float %1762, %1716
  %1764 = fadd fast float %1763, %935
  br label %1779

; <label>:1765                                    ; preds = %1731
  %1766 = icmp eq i32 %1705, 8
  br i1 %1766, label %1767, label %1779

; <label>:1767                                    ; preds = %1765
  %1768 = fmul fast float %1710, %1536
  %1769 = fmul fast float %1710, %1537
  %1770 = fadd fast float %1768, %925
  %1771 = fadd fast float %1769, %926
  %1772 = call float @dx.op.binary.f32(i32 36, float %936, float %1538)  ; FMin(a,b)
  %1773 = fsub fast float %1772, %936
  %1774 = fmul fast float %1773, %1713
  %1775 = fadd fast float %1774, %936
  %1776 = fsub fast float %1535, %935
  %1777 = fmul fast float %1716, %1776
  %1778 = fadd fast float %1777, %935
  br label %1779

; <label>:1779                                    ; preds = %1767, %1765, %1733, %1718, %1696, %1234, %938, %924
  %1780 = phi float [ %925, %1696 ], [ %925, %1234 ], [ %925, %924 ], [ %1770, %1767 ], [ %925, %1765 ], [ %1736, %1733 ], [ %1723, %1718 ], [ %925, %938 ]
  %1781 = phi float [ %926, %1696 ], [ %926, %1234 ], [ %926, %924 ], [ %1771, %1767 ], [ %926, %1765 ], [ %1737, %1733 ], [ %1724, %1718 ], [ %926, %938 ]
  %1782 = phi float [ %1697, %1696 ], [ %927, %1234 ], [ %927, %924 ], [ %1697, %1767 ], [ %1697, %1765 ], [ %1697, %1733 ], [ %1697, %1718 ], [ %927, %938 ]
  %1783 = phi float [ %1698, %1696 ], [ %928, %1234 ], [ %928, %924 ], [ %1698, %1767 ], [ %1698, %1765 ], [ %1698, %1733 ], [ %1698, %1718 ], [ %928, %938 ]
  %1784 = phi float [ %1699, %1696 ], [ %929, %1234 ], [ %929, %924 ], [ %1699, %1767 ], [ %1699, %1765 ], [ %1699, %1733 ], [ %1699, %1718 ], [ %929, %938 ]
  %1785 = phi float [ %1700, %1696 ], [ %930, %1234 ], [ %930, %924 ], [ %1700, %1767 ], [ %1700, %1765 ], [ %1700, %1733 ], [ %1700, %1718 ], [ %930, %938 ]
  %1786 = phi float [ %1701, %1696 ], [ %931, %1234 ], [ %931, %924 ], [ %1701, %1767 ], [ %1701, %1765 ], [ %1701, %1733 ], [ %1701, %1718 ], [ %931, %938 ]
  %1787 = phi float [ %1702, %1696 ], [ %932, %1234 ], [ %932, %924 ], [ %1702, %1767 ], [ %1702, %1765 ], [ %1702, %1733 ], [ %1702, %1718 ], [ %932, %938 ]
  %1788 = phi float [ %1703, %1696 ], [ %933, %1234 ], [ %933, %924 ], [ %1703, %1767 ], [ %1703, %1765 ], [ %1703, %1733 ], [ %1703, %1718 ], [ %933, %938 ]
  %1789 = phi float [ %935, %1696 ], [ %935, %1234 ], [ %935, %924 ], [ %1778, %1767 ], [ %935, %1765 ], [ %1764, %1733 ], [ %1730, %1718 ], [ %935, %938 ]
  %1790 = phi float [ %936, %1696 ], [ %936, %1234 ], [ %936, %924 ], [ %1775, %1767 ], [ %936, %1765 ], [ %1741, %1733 ], [ %1727, %1718 ], [ %936, %938 ]
  %1791 = phi float [ %1704, %1696 ], [ %937, %1234 ], [ %937, %924 ], [ %1704, %1767 ], [ %1704, %1765 ], [ %1704, %1733 ], [ %1704, %1718 ], [ %937, %938 ]
  br i1 %404, label %2633, label %1792

; <label>:1792                                    ; preds = %1779
  %1793 = icmp ult i32 %457, 3
  %1794 = add i32 %43, 56
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = add i32 %43, 60
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = or i32 %1799, %1796
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %2633, label %1802

; <label>:1802                                    ; preds = %1792
  %1803 = and i32 %1796, 262144
  %1804 = icmp ne i32 %1803, 0
  %1805 = select i1 %1804, float %46, float 1.000000e+00
  %1806 = select i1 %1804, float %47, float 0.000000e+00
  %1807 = select i1 %1804, float %48, float 0.000000e+00
  %1808 = select i1 %1804, float %49, float 1.000000e+00
  %1809 = select i1 %1804, float %50, float %66
  %1810 = select i1 %1804, float %51, float %67
  %1811 = add i32 %43, 316
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = lshr i32 %1813, 16
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = fmul fast float %1815, 0x3F50624DE0000000
  %1817 = add i32 %43, 120
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = lshr i32 %1819, 16
  %1821 = and i32 %1820, 255
  %1822 = lshr i32 %1819, 24
  %1823 = add i32 %43, 324
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 65535
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = lshr i32 %1825, 16
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = add i32 %43, 64
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 22
  %1834 = shl nuw nsw i32 %1833, 5
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = shl i32 %1832, 4
  %1837 = and i32 %1836, 32752
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = lshr i32 %1832, 7
  %1840 = and i32 %1839, 32752
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 3
  %1844 = fmul fast float %1843, 1.000000e+03
  %1845 = fmul fast float %354, %1844
  %1846 = call float @dx.op.unary.f32(i32 22, float %1845)  ; Frc(value)
  %1847 = fadd fast float %1846, %344
  %1848 = fmul fast float %355, %1844
  %1849 = call float @dx.op.unary.f32(i32 22, float %1848)  ; Frc(value)
  %1850 = fadd fast float %1849, %346
  %1851 = fmul fast float %1816, %1844
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = fmul fast float %1852, 0x401921FB60000000
  %1854 = fadd fast float %1853, %1835
  %1855 = call float @dx.op.unary.f32(i32 13, float %1854)  ; Sin(value)
  %1856 = call float @dx.op.unary.f32(i32 12, float %1854)  ; Cos(value)
  %1857 = fsub fast float -0.000000e+00, %1855
  %1858 = fadd fast float %1809, -5.000000e-01
  %1859 = fadd fast float %1810, -5.000000e-01
  %1860 = fmul fast float %1827, %1858
  %1861 = fmul fast float %1829, %1859
  %1862 = fadd fast float %1860, 5.000000e-01
  %1863 = fadd fast float %1861, 5.000000e-01
  %1864 = fmul fast float %1838, %1862
  %1865 = fmul fast float %1841, %1863
  %1866 = fmul fast float %1856, %1864
  %1867 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1865, float %1866)  ; FMad(a,b,c)
  %1868 = fmul fast float %1855, %1864
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1856, float %1865, float %1868)  ; FMad(a,b,c)
  %1870 = fadd fast float %1847, %1867
  %1871 = fadd fast float %1850, %1869
  %1872 = icmp ugt i32 %1821, 1
  %1873 = icmp ugt i32 %1819, 33554431
  %1874 = or i1 %1873, %1872
  br i1 %1874, label %1875, label %1900

; <label>:1875                                    ; preds = %1802
  %1876 = add i32 %43, 260
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = lshr i32 %1878, 16
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = fmul fast float %1843, %1880
  %1882 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1883 = mul nuw nsw i32 %1821, %1822
  %1884 = uitofp i32 %1883 to float
  %1885 = fmul fast float %1882, %1884
  %1886 = call float @dx.op.unary.f32(i32 27, float %1885)  ; Round_ni(value)
  %1887 = fptoui float %1886 to i32
  %1888 = urem i32 %1887, %1821
  %1889 = udiv i32 %1887, %1822
  %1890 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1891 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1892 = uitofp i32 %1888 to float
  %1893 = uitofp i32 %1889 to float
  %1894 = fadd fast float %1890, %1892
  %1895 = fadd fast float %1891, %1893
  %1896 = uitofp i32 %1821 to float
  %1897 = uitofp i32 %1822 to float
  %1898 = fdiv fast float %1894, %1896
  %1899 = fdiv fast float %1895, %1897
  br label %1900

; <label>:1900                                    ; preds = %1875, %1802
  %1901 = phi float [ %1898, %1875 ], [ %1870, %1802 ]
  %1902 = phi float [ %1899, %1875 ], [ %1871, %1802 ]
  %1903 = and i32 %1796, 16777216
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %2014, label %1905

; <label>:1905                                    ; preds = %1900
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1910 = fadd fast float %1907, %141
  %1911 = fadd fast float %1908, %142
  %1912 = fadd fast float %1909, %143
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = call float @dx.op.unary.f32(i32 7, float %1914)  ; Saturate(value)
  %1916 = icmp eq i32 %44, 65535
  br i1 %1916, label %2011, label %1917

; <label>:1917                                    ; preds = %1905
  %1918 = lshr i32 %44, 1
  %1919 = shl i32 %1918, 2
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %44, 1
  %1923 = icmp ne i32 %1922, 0
  %1924 = lshr i32 %1921, 16
  %1925 = and i32 %1921, 65535
  %1926 = select i1 %1923, i32 %1924, i32 %1925
  %1927 = icmp eq i32 %1926, 65535
  br i1 %1927, label %2007, label %1928

; <label>:1928                                    ; preds = %1917
  %1929 = mul nuw nsw i32 %1926, 40
  %1930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = add nuw nsw i32 %1929, 12
  %1935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.ResRet.f32 %1935, 2
  %1939 = add nuw nsw i32 %1929, 24
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1944 = add nuw nsw i32 %1929, 36
  %1945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = fsub fast float %1910, %1931
  %1948 = fsub fast float %1911, %1932
  %1949 = fsub fast float %1912, %1933
  %1950 = fmul fast float %1946, %1947
  %1951 = fmul fast float %1946, %1948
  %1952 = fmul fast float %1946, %1949
  %1953 = call float @dx.op.unary.f32(i32 27, float %1950)  ; Round_ni(value)
  %1954 = call float @dx.op.unary.f32(i32 27, float %1951)  ; Round_ni(value)
  %1955 = call float @dx.op.unary.f32(i32 27, float %1952)  ; Round_ni(value)
  %1956 = fadd fast float %1953, 5.000000e-01
  %1957 = fadd fast float %1954, 5.000000e-01
  %1958 = fadd fast float %1955, 5.000000e-01
  %1959 = fmul fast float %1956, %1936
  %1960 = fmul fast float %1957, %1937
  %1961 = fmul fast float %1958, %1938
  %1962 = shl i32 %44, 2
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = add i32 %1964, 0
  %1966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1967 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1968 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1969 = call float @dx.op.unary.f32(i32 22, float %1961)  ; Frc(value)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1966, %dx.types.Handle %40, float %1967, float %1968, float %1969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1974 = fmul fast float %1971, 1.023000e+03
  %1975 = fmul fast float %1972, 1.023000e+03
  %1976 = fmul fast float %1973, 1.023000e+03
  %1977 = fadd fast float %1974, 5.000000e-01
  %1978 = fadd fast float %1975, 5.000000e-01
  %1979 = fadd fast float %1976, 5.000000e-01
  %1980 = call float @dx.op.unary.f32(i32 27, float %1977)  ; Round_ni(value)
  %1981 = call float @dx.op.unary.f32(i32 27, float %1978)  ; Round_ni(value)
  %1982 = call float @dx.op.unary.f32(i32 27, float %1979)  ; Round_ni(value)
  %1983 = fsub fast float %1950, %1953
  %1984 = fsub fast float %1951, %1954
  %1985 = fsub fast float %1952, %1955
  %1986 = fmul fast float %1983, 7.500000e-01
  %1987 = fmul fast float %1984, 7.500000e-01
  %1988 = fmul fast float %1985, 7.500000e-01
  %1989 = fadd fast float %1953, 1.250000e-01
  %1990 = fadd fast float %1989, %1986
  %1991 = fadd fast float %1990, %1980
  %1992 = fadd fast float %1954, 1.250000e-01
  %1993 = fadd fast float %1992, %1987
  %1994 = fadd fast float %1993, %1981
  %1995 = fadd fast float %1955, 1.250000e-01
  %1996 = fadd fast float %1995, %1988
  %1997 = fadd fast float %1996, %1982
  %1998 = fmul fast float %1991, %1941
  %1999 = fmul fast float %1994, %1942
  %2000 = fmul fast float %1997, %1943
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %2002, 0
  %2004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2004, %dx.types.Handle %38, float %1998, float %1999, float %2000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  br label %2007

; <label>:2007                                    ; preds = %1928, %1917
  %2008 = phi float [ %2006, %1928 ], [ -1.000000e+00, %1917 ]
  %2009 = fadd fast float %2008, %1915
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  br label %2011

; <label>:2011                                    ; preds = %2007, %1905
  %2012 = phi float [ %2010, %2007 ], [ %1915, %1905 ]
  %2013 = fmul fast float %2012, %453
  br label %2014

; <label>:2014                                    ; preds = %2011, %1900
  %2015 = phi float [ %2013, %2011 ], [ %453, %1900 ]
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 256
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2066, label %2020

; <label>:2020                                    ; preds = %2014
  %2021 = add i32 %43, 496
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = add i32 %2023, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2025, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = add i32 %43, 132
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = shl i32 %2030, 4
  %2032 = and i32 %2031, 32752
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = lshr i32 %2030, 7
  %2035 = and i32 %2034, 32752
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = fsub fast float 1.000000e+00, %2015
  %2038 = call float @dx.op.binary.f32(i32 35, float %2037, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2039 = bitcast float %2015 to i32
  %2040 = sitofp i32 %2039 to float
  %2041 = fadd fast float %2040, 0xC1CFBF8940000000
  %2042 = fmul fast float %2036, %2041
  %2043 = fadd fast float %2042, 0x41CFBF8940000000
  %2044 = fptosi float %2043 to i32
  %2045 = bitcast i32 %2044 to float
  %2046 = bitcast float %2038 to i32
  %2047 = sitofp i32 %2046 to float
  %2048 = fadd fast float %2047, 0xC1CFBF8940000000
  %2049 = fmul fast float %2048, %2036
  %2050 = fadd fast float %2049, 0x41CFBF8940000000
  %2051 = fptosi float %2050 to i32
  %2052 = bitcast i32 %2051 to float
  %2053 = fmul fast float %2045, %2033
  %2054 = fmul fast float %2052, %2033
  %2055 = fsub fast float %2038, %2053
  %2056 = fadd fast float %2054, %2038
  %2057 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2058 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2059 = fsub fast float %2027, %2057
  %2060 = fsub fast float %2058, %2057
  %2061 = bitcast float %2060 to i32
  %2062 = sub nsw i32 2129859010, %2061
  %2063 = bitcast i32 %2062 to float
  %2064 = fmul fast float %2063, %2059
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  br label %2066

; <label>:2066                                    ; preds = %2020, %2014
  %2067 = phi float [ %2065, %2020 ], [ %2015, %2014 ]
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = and i32 %2069, 128
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2088, label %2072

; <label>:2072                                    ; preds = %2066
  %2073 = add i32 %43, 480
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = add i32 %2075, 0
  %2077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2077, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = and i32 %2081, 524288
  %2083 = icmp ne i32 %2082, 0
  %2084 = fcmp fast ogt float %2079, 0x3FE0101020000000
  %2085 = select i1 %2084, float 1.000000e+00, float 0.000000e+00
  %2086 = select i1 %2083, float %2085, float %2079
  %2087 = fmul fast float %2086, %2067
  br label %2088

; <label>:2088                                    ; preds = %2072, %2066
  %2089 = phi float [ %2087, %2072 ], [ %2067, %2066 ]
  %2090 = fcmp fast ult float %2089, 0x3F70101020000000
  br i1 %2090, label %2633, label %2091

; <label>:2091                                    ; preds = %2088
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 16
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2294, label %2096

; <label>:2096                                    ; preds = %2091
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = add i32 %43, 432
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = add i32 %2101, 0
  %2103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2103, %dx.types.Handle %74, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.ResRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.ResRet.f32 %2104, 2
  %2108 = extractvalue %dx.types.ResRet.f32 %2104, 3
  %2109 = and i32 %2098, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = lshr i32 %2098, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2108, %2110
  %2115 = fadd fast float %2114, %2113
  %2116 = fmul fast float %2115, 0x3F70101000000000
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = and i32 %2118, 512
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %2129, label %2121

; <label>:2121                                    ; preds = %2096
  %2122 = add i32 %43, 512
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = add i32 %2124, 0
  %2126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2126, %dx.types.Handle %75, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2128 = extractvalue %dx.types.ResRet.f32 %2127, 0
  br label %2129

; <label>:2129                                    ; preds = %2121, %2096
  %2130 = phi float [ %2128, %2121 ], [ 1.000000e+00, %2096 ]
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 33554432
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2241, label %2135

; <label>:2135                                    ; preds = %2129
  %2136 = add i32 %43, 256
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 65535
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = lshr i32 %2138, 16
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = add i32 %43, 260
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 65535
  %2147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2146)  ; LegacyF16ToF32(value)
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = lshr i32 %2149, 24
  %2151 = uitofp i32 %2150 to float
  %2152 = fmul fast float %2151, 0x3F70101020000000
  %2153 = and i32 %2149, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3F70101020000000
  %2156 = lshr i32 %2149, 8
  %2157 = and i32 %2156, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = fmul fast float %2158, 0x3F70101020000000
  %2160 = lshr i32 %2149, 16
  %2161 = and i32 %2160, 255
  %2162 = uitofp i32 %2161 to float
  %2163 = fmul fast float %2162, 0x3F70101020000000
  %2164 = add i32 %43, 252
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = lshr i32 %2166, 24
  %2168 = uitofp i32 %2167 to float
  %2169 = fmul fast float %2168, 0x3F70101020000000
  %2170 = and i32 %2166, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = fmul fast float %2171, 0x3F70101020000000
  %2173 = lshr i32 %2166, 8
  %2174 = and i32 %2173, 255
  %2175 = uitofp i32 %2174 to float
  %2176 = fmul fast float %2175, 0x3F70101020000000
  %2177 = lshr i32 %2166, 16
  %2178 = and i32 %2177, 255
  %2179 = uitofp i32 %2178 to float
  %2180 = fmul fast float %2179, 0x3F70101020000000
  %2181 = bitcast float %2105 to i32
  %2182 = ashr i32 %2181, 1
  %2183 = sub nsw i32 1597463174, %2182
  %2184 = bitcast i32 %2183 to float
  %2185 = fmul fast float %2105, 5.000000e-01
  %2186 = fmul fast float %2184, %2184
  %2187 = fmul fast float %2186, %2185
  %2188 = fsub fast float 1.500000e+00, %2187
  %2189 = fmul fast float %2184, %2105
  %2190 = fmul fast float %2189, %2188
  %2191 = bitcast float %2106 to i32
  %2192 = ashr i32 %2191, 1
  %2193 = sub nsw i32 1597463174, %2192
  %2194 = bitcast i32 %2193 to float
  %2195 = fmul fast float %2106, 5.000000e-01
  %2196 = fmul fast float %2194, %2194
  %2197 = fmul fast float %2196, %2195
  %2198 = fsub fast float 1.500000e+00, %2197
  %2199 = fmul fast float %2194, %2106
  %2200 = fmul fast float %2199, %2198
  %2201 = bitcast float %2107 to i32
  %2202 = ashr i32 %2201, 1
  %2203 = sub nsw i32 1597463174, %2202
  %2204 = bitcast i32 %2203 to float
  %2205 = fmul fast float %2107, 5.000000e-01
  %2206 = fmul fast float %2204, %2204
  %2207 = fmul fast float %2206, %2205
  %2208 = fsub fast float 1.500000e+00, %2207
  %2209 = fmul fast float %2204, %2107
  %2210 = fmul fast float %2209, %2208
  %2211 = fsub fast float %2190, %2172
  %2212 = fsub fast float %2200, %2176
  %2213 = fsub fast float %2210, %2180
  %2214 = fmul fast float %2211, %2140
  %2215 = fmul fast float %2212, %2142
  %2216 = fmul fast float %2213, %2147
  %2217 = fadd fast float %2214, %2155
  %2218 = fadd fast float %2215, %2159
  %2219 = fadd fast float %2216, %2163
  %2220 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2221 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2222 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2223 = fmul fast float %2220, %2220
  %2224 = fmul fast float %2221, %2221
  %2225 = fmul fast float %2222, %2222
  %2226 = fsub fast float %2223, %2105
  %2227 = fsub fast float %2224, %2106
  %2228 = fsub fast float %2225, %2107
  %2229 = fmul fast float %2226, %2130
  %2230 = fmul fast float %2227, %2130
  %2231 = fmul fast float %2228, %2130
  %2232 = fadd fast float %2229, %2105
  %2233 = fadd fast float %2230, %2106
  %2234 = fadd fast float %2231, %2107
  %2235 = fadd fast float %2152, %2116
  %2236 = fsub fast float %2235, %2169
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fsub fast float %2237, %2116
  %2239 = fmul fast float %2238, %2130
  %2240 = fadd fast float %2239, %2116
  br label %2294

; <label>:2241                                    ; preds = %2129
  %2242 = and i32 %2132, 134217728
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2278, label %2244

; <label>:2244                                    ; preds = %2241
  %2245 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2246 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2247 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2248 = fadd fast float %2245, -5.000000e-01
  %2249 = fadd fast float %2246, -5.000000e-01
  %2250 = fadd fast float %2247, -5.000000e-01
  %2251 = fmul fast float %2248, %2130
  %2252 = fmul fast float %2249, %2130
  %2253 = fmul fast float %2250, %2130
  %2254 = fadd fast float %2251, 5.000000e-01
  %2255 = fadd fast float %2252, 5.000000e-01
  %2256 = fadd fast float %2253, 5.000000e-01
  %2257 = call float @dx.op.unary.f32(i32 24, float %2105)  ; Sqrt(value)
  %2258 = call float @dx.op.unary.f32(i32 24, float %2106)  ; Sqrt(value)
  %2259 = call float @dx.op.unary.f32(i32 24, float %2107)  ; Sqrt(value)
  %2260 = fmul fast float %2254, 2.000000e+00
  %2261 = fsub fast float 1.000000e+00, %2260
  %2262 = fmul fast float %2261, %2257
  %2263 = fadd fast float %2262, %2260
  %2264 = fmul fast float %2263, %2257
  %2265 = fmul fast float %2255, 2.000000e+00
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fmul fast float %2266, %2258
  %2268 = fadd fast float %2267, %2265
  %2269 = fmul fast float %2268, %2258
  %2270 = fmul fast float %2256, 2.000000e+00
  %2271 = fsub fast float 1.000000e+00, %2270
  %2272 = fmul fast float %2271, %2259
  %2273 = fadd fast float %2272, %2270
  %2274 = fmul fast float %2273, %2259
  %2275 = fmul fast float %2264, %2264
  %2276 = fmul fast float %2269, %2269
  %2277 = fmul fast float %2274, %2274
  br label %2294

; <label>:2278                                    ; preds = %2241
  %2279 = fmul fast float %331, %331
  %2280 = fmul fast float %335, %335
  %2281 = fmul fast float %339, %339
  %2282 = fadd fast float %2279, -1.000000e+00
  %2283 = fadd fast float %2280, -1.000000e+00
  %2284 = fadd fast float %2281, -1.000000e+00
  %2285 = fmul fast float %2130, %2282
  %2286 = fmul fast float %2130, %2283
  %2287 = fmul fast float %2130, %2284
  %2288 = fadd fast float %2285, 1.000000e+00
  %2289 = fadd fast float %2286, 1.000000e+00
  %2290 = fadd fast float %2287, 1.000000e+00
  %2291 = fmul fast float %2288, %2105
  %2292 = fmul fast float %2289, %2106
  %2293 = fmul fast float %2290, %2107
  br label %2294

; <label>:2294                                    ; preds = %2278, %2244, %2135, %2091
  %2295 = phi float [ %2240, %2135 ], [ %2116, %2244 ], [ %2116, %2278 ], [ 0x3FA23C0BE0000000, %2091 ]
  %2296 = phi float [ %2232, %2135 ], [ %2275, %2244 ], [ %2291, %2278 ], [ 1.000000e+00, %2091 ]
  %2297 = phi float [ %2233, %2135 ], [ %2276, %2244 ], [ %2292, %2278 ], [ 1.000000e+00, %2091 ]
  %2298 = phi float [ %2234, %2135 ], [ %2277, %2244 ], [ %2293, %2278 ], [ 1.000000e+00, %2091 ]
  %2299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.i32 %2299, 1
  %2301 = and i32 %2300, 1
  %2302 = icmp ne i32 %2301, 0
  %2303 = add i32 %43, 356
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = and i32 %2305, 32
  %2307 = icmp ne i32 %2306, 0
  %2308 = and i1 %2302, %2307
  %2309 = select i1 %2308, float 1.000000e+00, float %2296
  %2310 = select i1 %2308, float 0x3FD3333340000000, float %2297
  %2311 = select i1 %2308, float 0x3FD3333340000000, float %2298
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 32
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2388, label %2316

; <label>:2316                                    ; preds = %2294
  %2317 = add i32 %43, 124
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %43, 448
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %2322, 0
  %2324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2324, %dx.types.Handle %74, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.ResRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.ResRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.ResRet.f32 %2325, 3
  %2330 = and i32 %2319, 255
  %2331 = uitofp i32 %2330 to float
  %2332 = lshr i32 %2319, 8
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = lshr i32 %2319, 16
  %2336 = and i32 %2335, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2337, 0x3F70101000000000
  %2339 = fmul fast float %2326, %2331
  %2340 = fadd fast float %2339, %2334
  %2341 = fmul fast float %2340, 0x3F70101000000000
  %2342 = fadd fast float %2327, -5.000000e-01
  %2343 = fadd fast float %2329, -5.000000e-01
  %2344 = fmul fast float %2342, %2338
  %2345 = fmul fast float %2343, %2338
  %2346 = fadd fast float %2344, 5.000000e-01
  %2347 = fadd fast float %2345, 5.000000e-01
  %2348 = fmul fast float %2346, 2.000000e+00
  %2349 = fadd fast float %2348, -1.000000e+00
  %2350 = fmul fast float %2347, 2.000000e+00
  %2351 = fadd fast float %2350, -1.000000e+00
  %2352 = fadd fast float %2349, %2351
  %2353 = fmul fast float %2352, 5.000000e-01
  %2354 = fsub fast float %2349, %2351
  %2355 = fmul fast float %2354, 5.000000e-01
  %2356 = call float @dx.op.unary.f32(i32 6, float %2353)  ; FAbs(value)
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = call float @dx.op.unary.f32(i32 6, float %2355)  ; FAbs(value)
  %2359 = fsub fast float %2357, %2358
  %2360 = call float @dx.op.dot3.f32(i32 55, float %2353, float %2355, float %2359, float %2353, float %2355, float %2359)  ; Dot3(ax,ay,az,bx,by,bz)
  %2361 = call float @dx.op.unary.f32(i32 25, float %2360)  ; Rsqrt(value)
  %2362 = fmul fast float %2353, %2361
  %2363 = fmul fast float %2355, %2361
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = and i32 %2365, 67108864
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2384, label %2368

; <label>:2368                                    ; preds = %2316
  %2369 = add i32 %43, 312
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 65535
  %2373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2372)  ; LegacyF16ToF32(value)
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 65535
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = lshr i32 %2371, 16
  %2379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2378)  ; LegacyF16ToF32(value)
  %2380 = fsub fast float %2341, %2379
  %2381 = fmul fast float %2380, %2373
  %2382 = fadd fast float %2381, %2377
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  br label %2384

; <label>:2384                                    ; preds = %2368, %2316
  %2385 = phi float [ %2383, %2368 ], [ %2341, %2316 ]
  %2386 = call float @dx.op.dot2.f32(i32 54, float %2362, float %2363, float %1805, float %1806)  ; Dot2(ax,ay,bx,by)
  %2387 = call float @dx.op.dot2.f32(i32 54, float %2362, float %2363, float %1807, float %1808)  ; Dot2(ax,ay,bx,by)
  br label %2388

; <label>:2388                                    ; preds = %2384, %2294
  %2389 = phi float [ %2385, %2384 ], [ 0x3FD6666660000000, %2294 ]
  %2390 = phi float [ %2386, %2384 ], [ 0.000000e+00, %2294 ]
  %2391 = phi float [ %2387, %2384 ], [ 0.000000e+00, %2294 ]
  %2392 = phi float [ %2328, %2384 ], [ 1.000000e+00, %2294 ]
  %2393 = add i32 %43, 192
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = lshr i32 %2395, 22
  %2397 = shl nuw nsw i32 %2396, 5
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 64
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2436, label %2403

; <label>:2403                                    ; preds = %2388
  %2404 = add i32 %43, 464
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %2406, 0
  %2408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 131072
  %2412 = icmp eq i32 %2411, 0
  %2413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2408, %dx.types.Handle %74, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = extractvalue %dx.types.ResRet.f32 %2413, 2
  %2417 = fmul fast float %2414, %319
  %2418 = fmul fast float %2415, %322
  %2419 = fmul fast float %2416, %325
  br i1 %2412, label %2426, label %2420

; <label>:2420                                    ; preds = %2403
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = fmul fast float %2422, %2417
  %2424 = fmul fast float %2422, %2418
  %2425 = fmul fast float %2422, %2419
  br label %2426

; <label>:2426                                    ; preds = %2420, %2403
  %2427 = phi float [ %2423, %2420 ], [ %2417, %2403 ]
  %2428 = phi float [ %2424, %2420 ], [ %2418, %2403 ]
  %2429 = phi float [ %2425, %2420 ], [ %2419, %2403 ]
  %2430 = fmul fast float %2427, %2398
  %2431 = select i1 %215, float %2430, float %2427
  %2432 = call float @dx.op.dot3.f32(i32 55, float %2431, float %2428, float %2429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2433 = select i1 %215, float 0.000000e+00, float %2427
  %2434 = select i1 %215, float %2432, float %2428
  %2435 = select i1 %215, float 0.000000e+00, float %2429
  br label %2436

; <label>:2436                                    ; preds = %2426, %2388
  %2437 = phi float [ %2433, %2426 ], [ 0.000000e+00, %2388 ]
  %2438 = phi float [ %2434, %2426 ], [ 0.000000e+00, %2388 ]
  %2439 = phi float [ %2435, %2426 ], [ 0.000000e+00, %2388 ]
  %2440 = add i32 %43, 128
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 255
  %2444 = uitofp i32 %2443 to float
  %2445 = lshr i32 %2442, 8
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2309, float %2310, float %2311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = fmul fast float %2447, %2448
  %2450 = fadd fast float %2449, %2444
  %2451 = fmul fast float %2450, 0x3F70101020000000
  %2452 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  br i1 %1793, label %2453, label %2461

; <label>:2453                                    ; preds = %2436
  %2454 = fsub fast float 1.000000e+00, %2089
  %2455 = fmul fast float %2454, %1782
  %2456 = fmul fast float %2454, %1783
  %2457 = fmul fast float %2454, %1784
  %2458 = fmul fast float %2454, %1785
  %2459 = fmul fast float %2454, %1786
  %2460 = fmul fast float %2454, %1787
  br label %2461

; <label>:2461                                    ; preds = %2453, %2436
  %2462 = phi float [ %2455, %2453 ], [ %1782, %2436 ]
  %2463 = phi float [ %2456, %2453 ], [ %1783, %2436 ]
  %2464 = phi float [ %2457, %2453 ], [ %1784, %2436 ]
  %2465 = phi float [ %2458, %2453 ], [ %1785, %2436 ]
  %2466 = phi float [ %2459, %2453 ], [ %1786, %2436 ]
  %2467 = phi float [ %2460, %2453 ], [ %1787, %2436 ]
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 3
  %2471 = icmp eq i32 %2470, 3
  br i1 %2471, label %2550, label %2472

; <label>:2472                                    ; preds = %2461
  %2473 = and i32 %2469, 16
  %2474 = icmp ne i32 %2473, 0
  %2475 = select i1 %2474, float %2089, float 0.000000e+00
  %2476 = icmp eq i32 %2470, 0
  br i1 %2476, label %2477, label %2505

; <label>:2477                                    ; preds = %2472
  %2478 = and i32 %2469, 64
  %2479 = icmp ne i32 %2478, 0
  %2480 = select i1 %2479, float %2089, float 0.000000e+00
  %2481 = fsub fast float %2309, %2462
  %2482 = fsub fast float %2310, %2463
  %2483 = fsub fast float %2311, %2464
  %2484 = fmul fast float %2475, %2481
  %2485 = fmul fast float %2475, %2482
  %2486 = fmul fast float %2475, %2483
  %2487 = fadd fast float %2484, %2462
  %2488 = fadd fast float %2485, %2463
  %2489 = fadd fast float %2486, %2464
  %2490 = fsub fast float %2295, %1788
  %2491 = fmul fast float %2475, %2490
  %2492 = fadd fast float %2491, %1788
  %2493 = fsub fast float %2437, %2465
  %2494 = fsub fast float %2438, %2466
  %2495 = fsub fast float %2439, %2467
  %2496 = fmul fast float %2480, %2493
  %2497 = fmul fast float %2480, %2494
  %2498 = fmul fast float %2480, %2495
  %2499 = fadd fast float %2496, %2465
  %2500 = fadd fast float %2497, %2466
  %2501 = fadd fast float %2498, %2467
  %2502 = fsub fast float %2452, %1791
  %2503 = fmul fast float %2475, %2502
  %2504 = fadd fast float %2503, %1791
  br label %2550

; <label>:2505                                    ; preds = %2472
  %2506 = icmp eq i32 %2470, 1
  br i1 %2506, label %2507, label %2520

; <label>:2507                                    ; preds = %2505
  %2508 = fadd fast float %2309, -1.000000e+00
  %2509 = fadd fast float %2310, -1.000000e+00
  %2510 = fadd fast float %2311, -1.000000e+00
  %2511 = fmul fast float %2475, %2508
  %2512 = fmul fast float %2475, %2509
  %2513 = fmul fast float %2475, %2510
  %2514 = fadd fast float %2511, 1.000000e+00
  %2515 = fadd fast float %2512, 1.000000e+00
  %2516 = fadd fast float %2513, 1.000000e+00
  %2517 = fmul fast float %2514, %2462
  %2518 = fmul fast float %2515, %2463
  %2519 = fmul fast float %2516, %2464
  br label %2550

; <label>:2520                                    ; preds = %2505
  %2521 = icmp eq i32 %2470, 2
  br i1 %2521, label %2522, label %2550

; <label>:2522                                    ; preds = %2520
  %2523 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2524 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2525 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2526 = fadd fast float %2523, -5.000000e-01
  %2527 = fadd fast float %2524, -5.000000e-01
  %2528 = fadd fast float %2525, -5.000000e-01
  %2529 = fmul fast float %2526, %2475
  %2530 = fmul fast float %2527, %2475
  %2531 = fmul fast float %2528, %2475
  %2532 = fadd fast float %2529, 5.000000e-01
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fadd fast float %2531, 5.000000e-01
  %2535 = fmul fast float %2532, 2.000000e+00
  %2536 = fsub fast float 1.000000e+00, %2535
  %2537 = fmul fast float %2536, %2462
  %2538 = fadd fast float %2537, %2535
  %2539 = fmul fast float %2538, %2462
  %2540 = fmul fast float %2533, 2.000000e+00
  %2541 = fsub fast float 1.000000e+00, %2540
  %2542 = fmul fast float %2541, %2463
  %2543 = fadd fast float %2542, %2540
  %2544 = fmul fast float %2543, %2463
  %2545 = fmul fast float %2534, 2.000000e+00
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = fmul fast float %2546, %2464
  %2548 = fadd fast float %2547, %2545
  %2549 = fmul fast float %2548, %2464
  br label %2550

; <label>:2550                                    ; preds = %2522, %2520, %2507, %2477, %2461
  %2551 = phi float [ %2462, %2461 ], [ %2539, %2522 ], [ %2462, %2520 ], [ %2517, %2507 ], [ %2487, %2477 ]
  %2552 = phi float [ %2463, %2461 ], [ %2544, %2522 ], [ %2463, %2520 ], [ %2518, %2507 ], [ %2488, %2477 ]
  %2553 = phi float [ %2464, %2461 ], [ %2549, %2522 ], [ %2464, %2520 ], [ %2519, %2507 ], [ %2489, %2477 ]
  %2554 = phi float [ %2465, %2461 ], [ %2465, %2522 ], [ %2465, %2520 ], [ %2465, %2507 ], [ %2499, %2477 ]
  %2555 = phi float [ %2466, %2461 ], [ %2466, %2522 ], [ %2466, %2520 ], [ %2466, %2507 ], [ %2500, %2477 ]
  %2556 = phi float [ %2467, %2461 ], [ %2467, %2522 ], [ %2467, %2520 ], [ %2467, %2507 ], [ %2501, %2477 ]
  %2557 = phi float [ %1788, %2461 ], [ %1788, %2522 ], [ %1788, %2520 ], [ %1788, %2507 ], [ %2492, %2477 ]
  %2558 = phi float [ %1791, %2461 ], [ %1791, %2522 ], [ %1791, %2520 ], [ %1791, %2507 ], [ %2504, %2477 ]
  %2559 = and i32 %2469, 12
  %2560 = icmp eq i32 %2559, 12
  br i1 %2560, label %2633, label %2561

; <label>:2561                                    ; preds = %2550
  %2562 = and i32 %2469, 2097184
  %2563 = icmp eq i32 %2562, 2097184
  %2564 = select i1 %2563, float %2089, float 0.000000e+00
  %2565 = and i32 %2469, 4194336
  %2566 = icmp eq i32 %2565, 4194336
  %2567 = select i1 %2566, float %2089, float 0.000000e+00
  %2568 = and i32 %2469, 8388640
  %2569 = icmp eq i32 %2568, 8388640
  %2570 = select i1 %2569, float %2089, float 0.000000e+00
  %2571 = icmp eq i32 %2559, 0
  br i1 %2571, label %2572, label %2585

; <label>:2572                                    ; preds = %2561
  %2573 = fsub fast float %2390, %1780
  %2574 = fsub fast float %2391, %1781
  %2575 = fmul fast float %2564, %2573
  %2576 = fmul fast float %2564, %2574
  %2577 = fadd fast float %2575, %1780
  %2578 = fadd fast float %2576, %1781
  %2579 = fsub fast float %2392, %1790
  %2580 = fmul fast float %2567, %2579
  %2581 = fadd fast float %2580, %1790
  %2582 = fsub fast float %2389, %1789
  %2583 = fmul fast float %2570, %2582
  %2584 = fadd fast float %2583, %1789
  br label %2633

; <label>:2585                                    ; preds = %2561
  %2586 = icmp eq i32 %2559, 4
  br i1 %2586, label %2587, label %2619

; <label>:2587                                    ; preds = %2585
  %2588 = fmul fast float %2564, %2390
  %2589 = fmul fast float %2564, %2391
  %2590 = fadd fast float %2588, %1780
  %2591 = fadd fast float %2589, %1781
  %2592 = call float @dx.op.binary.f32(i32 36, float %1790, float %2392)  ; FMin(a,b)
  %2593 = fsub fast float %2592, %1790
  %2594 = fmul fast float %2593, %2567
  %2595 = fadd fast float %2594, %1790
  %2596 = fadd fast float %2389, %1789
  %2597 = fmul fast float %2596, 0x3FF337FAE0000000
  %2598 = fmul fast float %1789, %1789
  %2599 = fmul fast float %2389, %2389
  %2600 = fadd fast float %2599, %2598
  %2601 = fmul fast float %2600, 0x3FE5152B00000000
  %2602 = fmul fast float %1789, 0xBFCC1F85E0000000
  %2603 = fmul fast float %2602, %2389
  %2604 = fadd fast float %2603, 0xBFE1363700000000
  %2605 = fadd fast float %2604, %2597
  %2606 = fsub fast float %2605, %2601
  %2607 = fmul fast float %2596, 0x3FBA6F0D00000000
  %2608 = fmul fast float %2600, 0x3FD0432880000000
  %2609 = fmul fast float %1789, 0xBFEF110800000000
  %2610 = fmul fast float %2609, %2389
  %2611 = fadd fast float %2610, 1.000000e+00
  %2612 = fsub fast float %2611, %2607
  %2613 = fadd fast float %2612, %2608
  %2614 = fdiv fast float %2606, %2613
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = fsub fast float %2615, %1789
  %2617 = fmul fast float %2616, %2570
  %2618 = fadd fast float %2617, %1789
  br label %2633

; <label>:2619                                    ; preds = %2585
  %2620 = icmp eq i32 %2559, 8
  br i1 %2620, label %2621, label %2633

; <label>:2621                                    ; preds = %2619
  %2622 = fmul fast float %2564, %2390
  %2623 = fmul fast float %2564, %2391
  %2624 = fadd fast float %2622, %1780
  %2625 = fadd fast float %2623, %1781
  %2626 = call float @dx.op.binary.f32(i32 36, float %1790, float %2392)  ; FMin(a,b)
  %2627 = fsub fast float %2626, %1790
  %2628 = fmul fast float %2627, %2567
  %2629 = fadd fast float %2628, %1790
  %2630 = fsub fast float %2389, %1789
  %2631 = fmul fast float %2570, %2630
  %2632 = fadd fast float %2631, %1789
  br label %2633

; <label>:2633                                    ; preds = %2621, %2619, %2587, %2572, %2550, %2088, %1792, %1779
  %2634 = phi float [ %1780, %2550 ], [ %1780, %2088 ], [ %1780, %1779 ], [ %2624, %2621 ], [ %1780, %2619 ], [ %2590, %2587 ], [ %2577, %2572 ], [ %1780, %1792 ]
  %2635 = phi float [ %1781, %2550 ], [ %1781, %2088 ], [ %1781, %1779 ], [ %2625, %2621 ], [ %1781, %2619 ], [ %2591, %2587 ], [ %2578, %2572 ], [ %1781, %1792 ]
  %2636 = phi float [ %2551, %2550 ], [ %1782, %2088 ], [ %1782, %1779 ], [ %2551, %2621 ], [ %2551, %2619 ], [ %2551, %2587 ], [ %2551, %2572 ], [ %1782, %1792 ]
  %2637 = phi float [ %2552, %2550 ], [ %1783, %2088 ], [ %1783, %1779 ], [ %2552, %2621 ], [ %2552, %2619 ], [ %2552, %2587 ], [ %2552, %2572 ], [ %1783, %1792 ]
  %2638 = phi float [ %2553, %2550 ], [ %1784, %2088 ], [ %1784, %1779 ], [ %2553, %2621 ], [ %2553, %2619 ], [ %2553, %2587 ], [ %2553, %2572 ], [ %1784, %1792 ]
  %2639 = phi float [ %2554, %2550 ], [ %1785, %2088 ], [ %1785, %1779 ], [ %2554, %2621 ], [ %2554, %2619 ], [ %2554, %2587 ], [ %2554, %2572 ], [ %1785, %1792 ]
  %2640 = phi float [ %2555, %2550 ], [ %1786, %2088 ], [ %1786, %1779 ], [ %2555, %2621 ], [ %2555, %2619 ], [ %2555, %2587 ], [ %2555, %2572 ], [ %1786, %1792 ]
  %2641 = phi float [ %2556, %2550 ], [ %1787, %2088 ], [ %1787, %1779 ], [ %2556, %2621 ], [ %2556, %2619 ], [ %2556, %2587 ], [ %2556, %2572 ], [ %1787, %1792 ]
  %2642 = phi float [ %2557, %2550 ], [ %1788, %2088 ], [ %1788, %1779 ], [ %2557, %2621 ], [ %2557, %2619 ], [ %2557, %2587 ], [ %2557, %2572 ], [ %1788, %1792 ]
  %2643 = phi float [ %1789, %2550 ], [ %1789, %2088 ], [ %1789, %1779 ], [ %2632, %2621 ], [ %1789, %2619 ], [ %2618, %2587 ], [ %2584, %2572 ], [ %1789, %1792 ]
  %2644 = phi float [ %1790, %2550 ], [ %1790, %2088 ], [ %1790, %1779 ], [ %2629, %2621 ], [ %1790, %2619 ], [ %2595, %2587 ], [ %2581, %2572 ], [ %1790, %1792 ]
  %2645 = phi float [ %2558, %2550 ], [ %1791, %2088 ], [ %1791, %1779 ], [ %2558, %2621 ], [ %2558, %2619 ], [ %2558, %2587 ], [ %2558, %2572 ], [ %1791, %1792 ]
  br i1 %406, label %3487, label %2646

; <label>:2646                                    ; preds = %2633
  %2647 = icmp ult i32 %457, 4
  %2648 = add i32 %43, 72
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = add i32 %43, 76
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = or i32 %2653, %2650
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %3487, label %2656

; <label>:2656                                    ; preds = %2646
  %2657 = and i32 %2650, 262144
  %2658 = icmp ne i32 %2657, 0
  %2659 = select i1 %2658, float %46, float 1.000000e+00
  %2660 = select i1 %2658, float %47, float 0.000000e+00
  %2661 = select i1 %2658, float %48, float 0.000000e+00
  %2662 = select i1 %2658, float %49, float 1.000000e+00
  %2663 = select i1 %2658, float %50, float %66
  %2664 = select i1 %2658, float %51, float %67
  %2665 = add i32 %43, 332
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = lshr i32 %2667, 16
  %2669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2668)  ; LegacyF16ToF32(value)
  %2670 = fmul fast float %2669, 0x3F50624DE0000000
  %2671 = add i32 %43, 136
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = lshr i32 %2673, 16
  %2675 = and i32 %2674, 255
  %2676 = lshr i32 %2673, 24
  %2677 = add i32 %43, 340
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 65535
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = lshr i32 %2679, 16
  %2683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2682)  ; LegacyF16ToF32(value)
  %2684 = add i32 %43, 80
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = lshr i32 %2686, 22
  %2688 = shl nuw nsw i32 %2687, 5
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = shl i32 %2686, 4
  %2691 = and i32 %2690, 32752
  %2692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2691)  ; LegacyF16ToF32(value)
  %2693 = lshr i32 %2686, 7
  %2694 = and i32 %2693, 32752
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2696, 3
  %2698 = fmul fast float %2697, 1.000000e+03
  %2699 = fmul fast float %396, %2698
  %2700 = call float @dx.op.unary.f32(i32 22, float %2699)  ; Frc(value)
  %2701 = fadd fast float %2700, %386
  %2702 = fmul fast float %397, %2698
  %2703 = call float @dx.op.unary.f32(i32 22, float %2702)  ; Frc(value)
  %2704 = fadd fast float %2703, %388
  %2705 = fmul fast float %2670, %2698
  %2706 = call float @dx.op.unary.f32(i32 22, float %2705)  ; Frc(value)
  %2707 = fmul fast float %2706, 0x401921FB60000000
  %2708 = fadd fast float %2707, %2689
  %2709 = call float @dx.op.unary.f32(i32 13, float %2708)  ; Sin(value)
  %2710 = call float @dx.op.unary.f32(i32 12, float %2708)  ; Cos(value)
  %2711 = fsub fast float -0.000000e+00, %2709
  %2712 = fadd fast float %2663, -5.000000e-01
  %2713 = fadd fast float %2664, -5.000000e-01
  %2714 = fmul fast float %2681, %2712
  %2715 = fmul fast float %2683, %2713
  %2716 = fadd fast float %2714, 5.000000e-01
  %2717 = fadd fast float %2715, 5.000000e-01
  %2718 = fmul fast float %2692, %2716
  %2719 = fmul fast float %2695, %2717
  %2720 = fmul fast float %2710, %2718
  %2721 = call float @dx.op.tertiary.f32(i32 46, float %2711, float %2719, float %2720)  ; FMad(a,b,c)
  %2722 = fmul fast float %2709, %2718
  %2723 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2719, float %2722)  ; FMad(a,b,c)
  %2724 = fadd fast float %2701, %2721
  %2725 = fadd fast float %2704, %2723
  %2726 = icmp ugt i32 %2675, 1
  %2727 = icmp ugt i32 %2673, 33554431
  %2728 = or i1 %2727, %2726
  br i1 %2728, label %2729, label %2754

; <label>:2729                                    ; preds = %2656
  %2730 = add i32 %43, 276
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = lshr i32 %2732, 16
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = fmul fast float %2697, %2734
  %2736 = call float @dx.op.unary.f32(i32 22, float %2735)  ; Frc(value)
  %2737 = mul nuw nsw i32 %2675, %2676
  %2738 = uitofp i32 %2737 to float
  %2739 = fmul fast float %2736, %2738
  %2740 = call float @dx.op.unary.f32(i32 27, float %2739)  ; Round_ni(value)
  %2741 = fptoui float %2740 to i32
  %2742 = urem i32 %2741, %2675
  %2743 = udiv i32 %2741, %2676
  %2744 = call float @dx.op.unary.f32(i32 22, float %2724)  ; Frc(value)
  %2745 = call float @dx.op.unary.f32(i32 22, float %2725)  ; Frc(value)
  %2746 = uitofp i32 %2742 to float
  %2747 = uitofp i32 %2743 to float
  %2748 = fadd fast float %2744, %2746
  %2749 = fadd fast float %2745, %2747
  %2750 = uitofp i32 %2675 to float
  %2751 = uitofp i32 %2676 to float
  %2752 = fdiv fast float %2748, %2750
  %2753 = fdiv fast float %2749, %2751
  br label %2754

; <label>:2754                                    ; preds = %2729, %2656
  %2755 = phi float [ %2752, %2729 ], [ %2724, %2656 ]
  %2756 = phi float [ %2753, %2729 ], [ %2725, %2656 ]
  %2757 = and i32 %2650, 16777216
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2868, label %2759

; <label>:2759                                    ; preds = %2754
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2764 = fadd fast float %2761, %141
  %2765 = fadd fast float %2762, %142
  %2766 = fadd fast float %2763, %143
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2770 = icmp eq i32 %44, 65535
  br i1 %2770, label %2865, label %2771

; <label>:2771                                    ; preds = %2759
  %2772 = lshr i32 %44, 1
  %2773 = shl i32 %2772, 2
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %44, 1
  %2777 = icmp ne i32 %2776, 0
  %2778 = lshr i32 %2775, 16
  %2779 = and i32 %2775, 65535
  %2780 = select i1 %2777, i32 %2778, i32 %2779
  %2781 = icmp eq i32 %2780, 65535
  br i1 %2781, label %2861, label %2782

; <label>:2782                                    ; preds = %2771
  %2783 = mul nuw nsw i32 %2780, 40
  %2784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.f32 %2784, 2
  %2788 = add nuw nsw i32 %2783, 12
  %2789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.ResRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.ResRet.f32 %2789, 2
  %2793 = add nuw nsw i32 %2783, 24
  %2794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = add nuw nsw i32 %2783, 36
  %2799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.f32 %2799, 0
  %2801 = fsub fast float %2764, %2785
  %2802 = fsub fast float %2765, %2786
  %2803 = fsub fast float %2766, %2787
  %2804 = fmul fast float %2800, %2801
  %2805 = fmul fast float %2800, %2802
  %2806 = fmul fast float %2800, %2803
  %2807 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2808 = call float @dx.op.unary.f32(i32 27, float %2805)  ; Round_ni(value)
  %2809 = call float @dx.op.unary.f32(i32 27, float %2806)  ; Round_ni(value)
  %2810 = fadd fast float %2807, 5.000000e-01
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = fadd fast float %2809, 5.000000e-01
  %2813 = fmul fast float %2810, %2790
  %2814 = fmul fast float %2811, %2791
  %2815 = fmul fast float %2812, %2792
  %2816 = shl i32 %44, 2
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = add i32 %2818, 0
  %2820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2821 = call float @dx.op.unary.f32(i32 22, float %2813)  ; Frc(value)
  %2822 = call float @dx.op.unary.f32(i32 22, float %2814)  ; Frc(value)
  %2823 = call float @dx.op.unary.f32(i32 22, float %2815)  ; Frc(value)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2820, %dx.types.Handle %40, float %2821, float %2822, float %2823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.ResRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.ResRet.f32 %2824, 2
  %2828 = fmul fast float %2825, 1.023000e+03
  %2829 = fmul fast float %2826, 1.023000e+03
  %2830 = fmul fast float %2827, 1.023000e+03
  %2831 = fadd fast float %2828, 5.000000e-01
  %2832 = fadd fast float %2829, 5.000000e-01
  %2833 = fadd fast float %2830, 5.000000e-01
  %2834 = call float @dx.op.unary.f32(i32 27, float %2831)  ; Round_ni(value)
  %2835 = call float @dx.op.unary.f32(i32 27, float %2832)  ; Round_ni(value)
  %2836 = call float @dx.op.unary.f32(i32 27, float %2833)  ; Round_ni(value)
  %2837 = fsub fast float %2804, %2807
  %2838 = fsub fast float %2805, %2808
  %2839 = fsub fast float %2806, %2809
  %2840 = fmul fast float %2837, 7.500000e-01
  %2841 = fmul fast float %2838, 7.500000e-01
  %2842 = fmul fast float %2839, 7.500000e-01
  %2843 = fadd fast float %2807, 1.250000e-01
  %2844 = fadd fast float %2843, %2840
  %2845 = fadd fast float %2844, %2834
  %2846 = fadd fast float %2808, 1.250000e-01
  %2847 = fadd fast float %2846, %2841
  %2848 = fadd fast float %2847, %2835
  %2849 = fadd fast float %2809, 1.250000e-01
  %2850 = fadd fast float %2849, %2842
  %2851 = fadd fast float %2850, %2836
  %2852 = fmul fast float %2845, %2795
  %2853 = fmul fast float %2848, %2796
  %2854 = fmul fast float %2851, %2797
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = add i32 %2856, 0
  %2858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2858, %dx.types.Handle %38, float %2852, float %2853, float %2854, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  br label %2861

; <label>:2861                                    ; preds = %2782, %2771
  %2862 = phi float [ %2860, %2782 ], [ -1.000000e+00, %2771 ]
  %2863 = fadd fast float %2862, %2769
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  br label %2865

; <label>:2865                                    ; preds = %2861, %2759
  %2866 = phi float [ %2864, %2861 ], [ %2769, %2759 ]
  %2867 = fmul fast float %2866, %452
  br label %2868

; <label>:2868                                    ; preds = %2865, %2754
  %2869 = phi float [ %2867, %2865 ], [ %452, %2754 ]
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 256
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2920, label %2874

; <label>:2874                                    ; preds = %2868
  %2875 = add i32 %43, 500
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = add i32 %2877, 0
  %2879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2879, %dx.types.Handle %75, float %2755, float %2756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = add i32 %43, 148
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = shl i32 %2884, 4
  %2886 = and i32 %2885, 32752
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = lshr i32 %2884, 7
  %2889 = and i32 %2888, 32752
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = fsub fast float 1.000000e+00, %2869
  %2892 = call float @dx.op.binary.f32(i32 35, float %2891, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2893 = bitcast float %2869 to i32
  %2894 = sitofp i32 %2893 to float
  %2895 = fadd fast float %2894, 0xC1CFBF8940000000
  %2896 = fmul fast float %2890, %2895
  %2897 = fadd fast float %2896, 0x41CFBF8940000000
  %2898 = fptosi float %2897 to i32
  %2899 = bitcast i32 %2898 to float
  %2900 = bitcast float %2892 to i32
  %2901 = sitofp i32 %2900 to float
  %2902 = fadd fast float %2901, 0xC1CFBF8940000000
  %2903 = fmul fast float %2902, %2890
  %2904 = fadd fast float %2903, 0x41CFBF8940000000
  %2905 = fptosi float %2904 to i32
  %2906 = bitcast i32 %2905 to float
  %2907 = fmul fast float %2899, %2887
  %2908 = fmul fast float %2906, %2887
  %2909 = fsub fast float %2892, %2907
  %2910 = fadd fast float %2908, %2892
  %2911 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2912 = call float @dx.op.unary.f32(i32 7, float %2910)  ; Saturate(value)
  %2913 = fsub fast float %2881, %2911
  %2914 = fsub fast float %2912, %2911
  %2915 = bitcast float %2914 to i32
  %2916 = sub nsw i32 2129859010, %2915
  %2917 = bitcast i32 %2916 to float
  %2918 = fmul fast float %2917, %2913
  %2919 = call float @dx.op.unary.f32(i32 7, float %2918)  ; Saturate(value)
  br label %2920

; <label>:2920                                    ; preds = %2874, %2868
  %2921 = phi float [ %2919, %2874 ], [ %2869, %2868 ]
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 128
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %2942, label %2926

; <label>:2926                                    ; preds = %2920
  %2927 = add i32 %43, 484
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %2929, 0
  %2931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2931, %dx.types.Handle %75, float %2755, float %2756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 524288
  %2937 = icmp ne i32 %2936, 0
  %2938 = fcmp fast ogt float %2933, 0x3FE0101020000000
  %2939 = select i1 %2938, float 1.000000e+00, float 0.000000e+00
  %2940 = select i1 %2937, float %2939, float %2933
  %2941 = fmul fast float %2940, %2921
  br label %2942

; <label>:2942                                    ; preds = %2926, %2920
  %2943 = phi float [ %2941, %2926 ], [ %2921, %2920 ]
  %2944 = fcmp fast ult float %2943, 0x3F70101020000000
  br i1 %2944, label %3487, label %2945

; <label>:2945                                    ; preds = %2942
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 16
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %3148, label %2950

; <label>:2950                                    ; preds = %2945
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %43, 436
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = add i32 %2955, 0
  %2957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2957, %dx.types.Handle %74, float %2755, float %2756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2963 = and i32 %2952, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = lshr i32 %2952, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2962, %2964
  %2969 = fadd fast float %2968, %2967
  %2970 = fmul fast float %2969, 0x3F70101000000000
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 512
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %2983, label %2975

; <label>:2975                                    ; preds = %2950
  %2976 = add i32 %43, 516
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %75, float %2755, float %2756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  br label %2983

; <label>:2983                                    ; preds = %2975, %2950
  %2984 = phi float [ %2982, %2975 ], [ 1.000000e+00, %2950 ]
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, 33554432
  %2988 = icmp eq i32 %2987, 0
  br i1 %2988, label %3095, label %2989

; <label>:2989                                    ; preds = %2983
  %2990 = add i32 %43, 272
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = and i32 %2992, 65535
  %2994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2993)  ; LegacyF16ToF32(value)
  %2995 = lshr i32 %2992, 16
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = add i32 %43, 276
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = and i32 %2999, 65535
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = lshr i32 %3003, 24
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = and i32 %3003, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = lshr i32 %3003, 8
  %3011 = and i32 %3010, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = lshr i32 %3003, 16
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F70101020000000
  %3018 = add i32 %43, 268
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = lshr i32 %3020, 24
  %3022 = uitofp i32 %3021 to float
  %3023 = fmul fast float %3022, 0x3F70101020000000
  %3024 = and i32 %3020, 255
  %3025 = uitofp i32 %3024 to float
  %3026 = fmul fast float %3025, 0x3F70101020000000
  %3027 = lshr i32 %3020, 8
  %3028 = and i32 %3027, 255
  %3029 = uitofp i32 %3028 to float
  %3030 = fmul fast float %3029, 0x3F70101020000000
  %3031 = lshr i32 %3020, 16
  %3032 = and i32 %3031, 255
  %3033 = uitofp i32 %3032 to float
  %3034 = fmul fast float %3033, 0x3F70101020000000
  %3035 = bitcast float %2959 to i32
  %3036 = ashr i32 %3035, 1
  %3037 = sub nsw i32 1597463174, %3036
  %3038 = bitcast i32 %3037 to float
  %3039 = fmul fast float %2959, 5.000000e-01
  %3040 = fmul fast float %3038, %3038
  %3041 = fmul fast float %3040, %3039
  %3042 = fsub fast float 1.500000e+00, %3041
  %3043 = fmul fast float %3038, %2959
  %3044 = fmul fast float %3043, %3042
  %3045 = bitcast float %2960 to i32
  %3046 = ashr i32 %3045, 1
  %3047 = sub nsw i32 1597463174, %3046
  %3048 = bitcast i32 %3047 to float
  %3049 = fmul fast float %2960, 5.000000e-01
  %3050 = fmul fast float %3048, %3048
  %3051 = fmul fast float %3050, %3049
  %3052 = fsub fast float 1.500000e+00, %3051
  %3053 = fmul fast float %3048, %2960
  %3054 = fmul fast float %3053, %3052
  %3055 = bitcast float %2961 to i32
  %3056 = ashr i32 %3055, 1
  %3057 = sub nsw i32 1597463174, %3056
  %3058 = bitcast i32 %3057 to float
  %3059 = fmul fast float %2961, 5.000000e-01
  %3060 = fmul fast float %3058, %3058
  %3061 = fmul fast float %3060, %3059
  %3062 = fsub fast float 1.500000e+00, %3061
  %3063 = fmul fast float %3058, %2961
  %3064 = fmul fast float %3063, %3062
  %3065 = fsub fast float %3044, %3026
  %3066 = fsub fast float %3054, %3030
  %3067 = fsub fast float %3064, %3034
  %3068 = fmul fast float %3065, %2994
  %3069 = fmul fast float %3066, %2996
  %3070 = fmul fast float %3067, %3001
  %3071 = fadd fast float %3068, %3009
  %3072 = fadd fast float %3069, %3013
  %3073 = fadd fast float %3070, %3017
  %3074 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3075 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3076 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3077 = fmul fast float %3074, %3074
  %3078 = fmul fast float %3075, %3075
  %3079 = fmul fast float %3076, %3076
  %3080 = fsub fast float %3077, %2959
  %3081 = fsub fast float %3078, %2960
  %3082 = fsub fast float %3079, %2961
  %3083 = fmul fast float %3080, %2984
  %3084 = fmul fast float %3081, %2984
  %3085 = fmul fast float %3082, %2984
  %3086 = fadd fast float %3083, %2959
  %3087 = fadd fast float %3084, %2960
  %3088 = fadd fast float %3085, %2961
  %3089 = fadd fast float %3006, %2970
  %3090 = fsub fast float %3089, %3023
  %3091 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3092 = fsub fast float %3091, %2970
  %3093 = fmul fast float %3092, %2984
  %3094 = fadd fast float %3093, %2970
  br label %3148

; <label>:3095                                    ; preds = %2983
  %3096 = and i32 %2986, 134217728
  %3097 = icmp eq i32 %3096, 0
  br i1 %3097, label %3132, label %3098

; <label>:3098                                    ; preds = %3095
  %3099 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %3100 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3101 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3102 = fadd fast float %3099, -5.000000e-01
  %3103 = fadd fast float %3100, -5.000000e-01
  %3104 = fadd fast float %3101, -5.000000e-01
  %3105 = fmul fast float %3102, %2984
  %3106 = fmul fast float %3103, %2984
  %3107 = fmul fast float %3104, %2984
  %3108 = fadd fast float %3105, 5.000000e-01
  %3109 = fadd fast float %3106, 5.000000e-01
  %3110 = fadd fast float %3107, 5.000000e-01
  %3111 = call float @dx.op.unary.f32(i32 24, float %2959)  ; Sqrt(value)
  %3112 = call float @dx.op.unary.f32(i32 24, float %2960)  ; Sqrt(value)
  %3113 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %3114 = fmul fast float %3108, 2.000000e+00
  %3115 = fsub fast float 1.000000e+00, %3114
  %3116 = fmul fast float %3115, %3111
  %3117 = fadd fast float %3116, %3114
  %3118 = fmul fast float %3117, %3111
  %3119 = fmul fast float %3109, 2.000000e+00
  %3120 = fsub fast float 1.000000e+00, %3119
  %3121 = fmul fast float %3120, %3112
  %3122 = fadd fast float %3121, %3119
  %3123 = fmul fast float %3122, %3112
  %3124 = fmul fast float %3110, 2.000000e+00
  %3125 = fsub fast float 1.000000e+00, %3124
  %3126 = fmul fast float %3125, %3113
  %3127 = fadd fast float %3126, %3124
  %3128 = fmul fast float %3127, %3113
  %3129 = fmul fast float %3118, %3118
  %3130 = fmul fast float %3123, %3123
  %3131 = fmul fast float %3128, %3128
  br label %3148

; <label>:3132                                    ; preds = %3095
  %3133 = fmul fast float %373, %373
  %3134 = fmul fast float %377, %377
  %3135 = fmul fast float %381, %381
  %3136 = fadd fast float %3133, -1.000000e+00
  %3137 = fadd fast float %3134, -1.000000e+00
  %3138 = fadd fast float %3135, -1.000000e+00
  %3139 = fmul fast float %2984, %3136
  %3140 = fmul fast float %2984, %3137
  %3141 = fmul fast float %2984, %3138
  %3142 = fadd fast float %3139, 1.000000e+00
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fmul fast float %3142, %2959
  %3146 = fmul fast float %3143, %2960
  %3147 = fmul fast float %3144, %2961
  br label %3148

; <label>:3148                                    ; preds = %3132, %3098, %2989, %2945
  %3149 = phi float [ %3094, %2989 ], [ %2970, %3098 ], [ %2970, %3132 ], [ 0x3FA23C0BE0000000, %2945 ]
  %3150 = phi float [ %3086, %2989 ], [ %3129, %3098 ], [ %3145, %3132 ], [ 1.000000e+00, %2945 ]
  %3151 = phi float [ %3087, %2989 ], [ %3130, %3098 ], [ %3146, %3132 ], [ 1.000000e+00, %2945 ]
  %3152 = phi float [ %3088, %2989 ], [ %3131, %3098 ], [ %3147, %3132 ], [ 1.000000e+00, %2945 ]
  %3153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.i32 %3153, 1
  %3155 = and i32 %3154, 1
  %3156 = icmp ne i32 %3155, 0
  %3157 = add i32 %43, 356
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 32
  %3161 = icmp ne i32 %3160, 0
  %3162 = and i1 %3156, %3161
  %3163 = select i1 %3162, float 1.000000e+00, float %3150
  %3164 = select i1 %3162, float 0x3FD3333340000000, float %3151
  %3165 = select i1 %3162, float 0x3FD3333340000000, float %3152
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 32
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3242, label %3170

; <label>:3170                                    ; preds = %3148
  %3171 = add i32 %43, 140
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = add i32 %43, 452
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = add i32 %3176, 0
  %3178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3178, %dx.types.Handle %74, float %2755, float %2756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.ResRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.ResRet.f32 %3179, 2
  %3183 = extractvalue %dx.types.ResRet.f32 %3179, 3
  %3184 = and i32 %3173, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = lshr i32 %3173, 8
  %3187 = and i32 %3186, 255
  %3188 = uitofp i32 %3187 to float
  %3189 = lshr i32 %3173, 16
  %3190 = and i32 %3189, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101000000000
  %3193 = fmul fast float %3180, %3185
  %3194 = fadd fast float %3193, %3188
  %3195 = fmul fast float %3194, 0x3F70101000000000
  %3196 = fadd fast float %3181, -5.000000e-01
  %3197 = fadd fast float %3183, -5.000000e-01
  %3198 = fmul fast float %3196, %3192
  %3199 = fmul fast float %3197, %3192
  %3200 = fadd fast float %3198, 5.000000e-01
  %3201 = fadd fast float %3199, 5.000000e-01
  %3202 = fmul fast float %3200, 2.000000e+00
  %3203 = fadd fast float %3202, -1.000000e+00
  %3204 = fmul fast float %3201, 2.000000e+00
  %3205 = fadd fast float %3204, -1.000000e+00
  %3206 = fadd fast float %3203, %3205
  %3207 = fmul fast float %3206, 5.000000e-01
  %3208 = fsub fast float %3203, %3205
  %3209 = fmul fast float %3208, 5.000000e-01
  %3210 = call float @dx.op.unary.f32(i32 6, float %3207)  ; FAbs(value)
  %3211 = fsub fast float 1.000000e+00, %3210
  %3212 = call float @dx.op.unary.f32(i32 6, float %3209)  ; FAbs(value)
  %3213 = fsub fast float %3211, %3212
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3207, float %3209, float %3213, float %3207, float %3209, float %3213)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = call float @dx.op.unary.f32(i32 25, float %3214)  ; Rsqrt(value)
  %3216 = fmul fast float %3207, %3215
  %3217 = fmul fast float %3209, %3215
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = and i32 %3219, 67108864
  %3221 = icmp eq i32 %3220, 0
  br i1 %3221, label %3238, label %3222

; <label>:3222                                    ; preds = %3170
  %3223 = add i32 %43, 328
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 65535
  %3227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3226)  ; LegacyF16ToF32(value)
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = and i32 %3229, 65535
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = lshr i32 %3225, 16
  %3233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3232)  ; LegacyF16ToF32(value)
  %3234 = fsub fast float %3195, %3233
  %3235 = fmul fast float %3234, %3227
  %3236 = fadd fast float %3235, %3231
  %3237 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  br label %3238

; <label>:3238                                    ; preds = %3222, %3170
  %3239 = phi float [ %3237, %3222 ], [ %3195, %3170 ]
  %3240 = call float @dx.op.dot2.f32(i32 54, float %3216, float %3217, float %2659, float %2660)  ; Dot2(ax,ay,bx,by)
  %3241 = call float @dx.op.dot2.f32(i32 54, float %3216, float %3217, float %2661, float %2662)  ; Dot2(ax,ay,bx,by)
  br label %3242

; <label>:3242                                    ; preds = %3238, %3148
  %3243 = phi float [ %3239, %3238 ], [ 0x3FD6666660000000, %3148 ]
  %3244 = phi float [ %3240, %3238 ], [ 0.000000e+00, %3148 ]
  %3245 = phi float [ %3241, %3238 ], [ 0.000000e+00, %3148 ]
  %3246 = phi float [ %3182, %3238 ], [ 1.000000e+00, %3148 ]
  %3247 = add i32 %43, 208
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = lshr i32 %3249, 22
  %3251 = shl nuw nsw i32 %3250, 5
  %3252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3251)  ; LegacyF16ToF32(value)
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = and i32 %3254, 64
  %3256 = icmp eq i32 %3255, 0
  br i1 %3256, label %3290, label %3257

; <label>:3257                                    ; preds = %3242
  %3258 = add i32 %43, 468
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = add i32 %3260, 0
  %3262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 131072
  %3266 = icmp eq i32 %3265, 0
  %3267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3262, %dx.types.Handle %74, float %2755, float %2756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = fmul fast float %3268, %361
  %3272 = fmul fast float %3269, %364
  %3273 = fmul fast float %3270, %367
  br i1 %3266, label %3280, label %3274

; <label>:3274                                    ; preds = %3257
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = fmul fast float %3276, %3271
  %3278 = fmul fast float %3276, %3272
  %3279 = fmul fast float %3276, %3273
  br label %3280

; <label>:3280                                    ; preds = %3274, %3257
  %3281 = phi float [ %3277, %3274 ], [ %3271, %3257 ]
  %3282 = phi float [ %3278, %3274 ], [ %3272, %3257 ]
  %3283 = phi float [ %3279, %3274 ], [ %3273, %3257 ]
  %3284 = fmul fast float %3281, %3252
  %3285 = select i1 %215, float %3284, float %3281
  %3286 = call float @dx.op.dot3.f32(i32 55, float %3285, float %3282, float %3283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3287 = select i1 %215, float 0.000000e+00, float %3281
  %3288 = select i1 %215, float %3286, float %3282
  %3289 = select i1 %215, float 0.000000e+00, float %3283
  br label %3290

; <label>:3290                                    ; preds = %3280, %3242
  %3291 = phi float [ %3287, %3280 ], [ 0.000000e+00, %3242 ]
  %3292 = phi float [ %3288, %3280 ], [ 0.000000e+00, %3242 ]
  %3293 = phi float [ %3289, %3280 ], [ 0.000000e+00, %3242 ]
  %3294 = add i32 %43, 144
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = and i32 %3296, 255
  %3298 = uitofp i32 %3297 to float
  %3299 = lshr i32 %3296, 8
  %3300 = and i32 %3299, 255
  %3301 = uitofp i32 %3300 to float
  %3302 = call float @dx.op.dot3.f32(i32 55, float %3163, float %3164, float %3165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3303 = fmul fast float %3301, %3302
  %3304 = fadd fast float %3303, %3298
  %3305 = fmul fast float %3304, 0x3F70101020000000
  %3306 = call float @dx.op.unary.f32(i32 7, float %3305)  ; Saturate(value)
  br i1 %2647, label %3307, label %3315

; <label>:3307                                    ; preds = %3290
  %3308 = fsub fast float 1.000000e+00, %2943
  %3309 = fmul fast float %3308, %2636
  %3310 = fmul fast float %3308, %2637
  %3311 = fmul fast float %3308, %2638
  %3312 = fmul fast float %3308, %2639
  %3313 = fmul fast float %3308, %2640
  %3314 = fmul fast float %3308, %2641
  br label %3315

; <label>:3315                                    ; preds = %3307, %3290
  %3316 = phi float [ %3309, %3307 ], [ %2636, %3290 ]
  %3317 = phi float [ %3310, %3307 ], [ %2637, %3290 ]
  %3318 = phi float [ %3311, %3307 ], [ %2638, %3290 ]
  %3319 = phi float [ %3312, %3307 ], [ %2639, %3290 ]
  %3320 = phi float [ %3313, %3307 ], [ %2640, %3290 ]
  %3321 = phi float [ %3314, %3307 ], [ %2641, %3290 ]
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = and i32 %3323, 3
  %3325 = icmp eq i32 %3324, 3
  br i1 %3325, label %3404, label %3326

; <label>:3326                                    ; preds = %3315
  %3327 = and i32 %3323, 16
  %3328 = icmp ne i32 %3327, 0
  %3329 = select i1 %3328, float %2943, float 0.000000e+00
  %3330 = icmp eq i32 %3324, 0
  br i1 %3330, label %3331, label %3359

; <label>:3331                                    ; preds = %3326
  %3332 = and i32 %3323, 64
  %3333 = icmp ne i32 %3332, 0
  %3334 = select i1 %3333, float %2943, float 0.000000e+00
  %3335 = fsub fast float %3163, %3316
  %3336 = fsub fast float %3164, %3317
  %3337 = fsub fast float %3165, %3318
  %3338 = fmul fast float %3329, %3335
  %3339 = fmul fast float %3329, %3336
  %3340 = fmul fast float %3329, %3337
  %3341 = fadd fast float %3338, %3316
  %3342 = fadd fast float %3339, %3317
  %3343 = fadd fast float %3340, %3318
  %3344 = fsub fast float %3149, %2642
  %3345 = fmul fast float %3329, %3344
  %3346 = fadd fast float %3345, %2642
  %3347 = fsub fast float %3291, %3319
  %3348 = fsub fast float %3292, %3320
  %3349 = fsub fast float %3293, %3321
  %3350 = fmul fast float %3334, %3347
  %3351 = fmul fast float %3334, %3348
  %3352 = fmul fast float %3334, %3349
  %3353 = fadd fast float %3350, %3319
  %3354 = fadd fast float %3351, %3320
  %3355 = fadd fast float %3352, %3321
  %3356 = fsub fast float %3306, %2645
  %3357 = fmul fast float %3329, %3356
  %3358 = fadd fast float %3357, %2645
  br label %3404

; <label>:3359                                    ; preds = %3326
  %3360 = icmp eq i32 %3324, 1
  br i1 %3360, label %3361, label %3374

; <label>:3361                                    ; preds = %3359
  %3362 = fadd fast float %3163, -1.000000e+00
  %3363 = fadd fast float %3164, -1.000000e+00
  %3364 = fadd fast float %3165, -1.000000e+00
  %3365 = fmul fast float %3329, %3362
  %3366 = fmul fast float %3329, %3363
  %3367 = fmul fast float %3329, %3364
  %3368 = fadd fast float %3365, 1.000000e+00
  %3369 = fadd fast float %3366, 1.000000e+00
  %3370 = fadd fast float %3367, 1.000000e+00
  %3371 = fmul fast float %3368, %3316
  %3372 = fmul fast float %3369, %3317
  %3373 = fmul fast float %3370, %3318
  br label %3404

; <label>:3374                                    ; preds = %3359
  %3375 = icmp eq i32 %3324, 2
  br i1 %3375, label %3376, label %3404

; <label>:3376                                    ; preds = %3374
  %3377 = call float @dx.op.unary.f32(i32 24, float %3163)  ; Sqrt(value)
  %3378 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3379 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3380 = fadd fast float %3377, -5.000000e-01
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fadd fast float %3379, -5.000000e-01
  %3383 = fmul fast float %3380, %3329
  %3384 = fmul fast float %3381, %3329
  %3385 = fmul fast float %3382, %3329
  %3386 = fadd fast float %3383, 5.000000e-01
  %3387 = fadd fast float %3384, 5.000000e-01
  %3388 = fadd fast float %3385, 5.000000e-01
  %3389 = fmul fast float %3386, 2.000000e+00
  %3390 = fsub fast float 1.000000e+00, %3389
  %3391 = fmul fast float %3390, %3316
  %3392 = fadd fast float %3391, %3389
  %3393 = fmul fast float %3392, %3316
  %3394 = fmul fast float %3387, 2.000000e+00
  %3395 = fsub fast float 1.000000e+00, %3394
  %3396 = fmul fast float %3395, %3317
  %3397 = fadd fast float %3396, %3394
  %3398 = fmul fast float %3397, %3317
  %3399 = fmul fast float %3388, 2.000000e+00
  %3400 = fsub fast float 1.000000e+00, %3399
  %3401 = fmul fast float %3400, %3318
  %3402 = fadd fast float %3401, %3399
  %3403 = fmul fast float %3402, %3318
  br label %3404

; <label>:3404                                    ; preds = %3376, %3374, %3361, %3331, %3315
  %3405 = phi float [ %3316, %3315 ], [ %3393, %3376 ], [ %3316, %3374 ], [ %3371, %3361 ], [ %3341, %3331 ]
  %3406 = phi float [ %3317, %3315 ], [ %3398, %3376 ], [ %3317, %3374 ], [ %3372, %3361 ], [ %3342, %3331 ]
  %3407 = phi float [ %3318, %3315 ], [ %3403, %3376 ], [ %3318, %3374 ], [ %3373, %3361 ], [ %3343, %3331 ]
  %3408 = phi float [ %3319, %3315 ], [ %3319, %3376 ], [ %3319, %3374 ], [ %3319, %3361 ], [ %3353, %3331 ]
  %3409 = phi float [ %3320, %3315 ], [ %3320, %3376 ], [ %3320, %3374 ], [ %3320, %3361 ], [ %3354, %3331 ]
  %3410 = phi float [ %3321, %3315 ], [ %3321, %3376 ], [ %3321, %3374 ], [ %3321, %3361 ], [ %3355, %3331 ]
  %3411 = phi float [ %2642, %3315 ], [ %2642, %3376 ], [ %2642, %3374 ], [ %2642, %3361 ], [ %3346, %3331 ]
  %3412 = phi float [ %2645, %3315 ], [ %2645, %3376 ], [ %2645, %3374 ], [ %2645, %3361 ], [ %3358, %3331 ]
  %3413 = and i32 %3323, 12
  %3414 = icmp eq i32 %3413, 12
  br i1 %3414, label %3487, label %3415

; <label>:3415                                    ; preds = %3404
  %3416 = and i32 %3323, 2097184
  %3417 = icmp eq i32 %3416, 2097184
  %3418 = select i1 %3417, float %2943, float 0.000000e+00
  %3419 = and i32 %3323, 4194336
  %3420 = icmp eq i32 %3419, 4194336
  %3421 = select i1 %3420, float %2943, float 0.000000e+00
  %3422 = and i32 %3323, 8388640
  %3423 = icmp eq i32 %3422, 8388640
  %3424 = select i1 %3423, float %2943, float 0.000000e+00
  %3425 = icmp eq i32 %3413, 0
  br i1 %3425, label %3426, label %3439

; <label>:3426                                    ; preds = %3415
  %3427 = fsub fast float %3244, %2634
  %3428 = fsub fast float %3245, %2635
  %3429 = fmul fast float %3418, %3427
  %3430 = fmul fast float %3418, %3428
  %3431 = fadd fast float %3429, %2634
  %3432 = fadd fast float %3430, %2635
  %3433 = fsub fast float %3246, %2644
  %3434 = fmul fast float %3421, %3433
  %3435 = fadd fast float %3434, %2644
  %3436 = fsub fast float %3243, %2643
  %3437 = fmul fast float %3424, %3436
  %3438 = fadd fast float %3437, %2643
  br label %3487

; <label>:3439                                    ; preds = %3415
  %3440 = icmp eq i32 %3413, 4
  br i1 %3440, label %3441, label %3473

; <label>:3441                                    ; preds = %3439
  %3442 = fmul fast float %3418, %3244
  %3443 = fmul fast float %3418, %3245
  %3444 = fadd fast float %3442, %2634
  %3445 = fadd fast float %3443, %2635
  %3446 = call float @dx.op.binary.f32(i32 36, float %2644, float %3246)  ; FMin(a,b)
  %3447 = fsub fast float %3446, %2644
  %3448 = fmul fast float %3447, %3421
  %3449 = fadd fast float %3448, %2644
  %3450 = fadd fast float %3243, %2643
  %3451 = fmul fast float %3450, 0x3FF337FAE0000000
  %3452 = fmul fast float %2643, %2643
  %3453 = fmul fast float %3243, %3243
  %3454 = fadd fast float %3453, %3452
  %3455 = fmul fast float %3454, 0x3FE5152B00000000
  %3456 = fmul fast float %2643, 0xBFCC1F85E0000000
  %3457 = fmul fast float %3456, %3243
  %3458 = fadd fast float %3457, 0xBFE1363700000000
  %3459 = fadd fast float %3458, %3451
  %3460 = fsub fast float %3459, %3455
  %3461 = fmul fast float %3450, 0x3FBA6F0D00000000
  %3462 = fmul fast float %3454, 0x3FD0432880000000
  %3463 = fmul fast float %2643, 0xBFEF110800000000
  %3464 = fmul fast float %3463, %3243
  %3465 = fadd fast float %3464, 1.000000e+00
  %3466 = fsub fast float %3465, %3461
  %3467 = fadd fast float %3466, %3462
  %3468 = fdiv fast float %3460, %3467
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fsub fast float %3469, %2643
  %3471 = fmul fast float %3470, %3424
  %3472 = fadd fast float %3471, %2643
  br label %3487

; <label>:3473                                    ; preds = %3439
  %3474 = icmp eq i32 %3413, 8
  br i1 %3474, label %3475, label %3487

; <label>:3475                                    ; preds = %3473
  %3476 = fmul fast float %3418, %3244
  %3477 = fmul fast float %3418, %3245
  %3478 = fadd fast float %3476, %2634
  %3479 = fadd fast float %3477, %2635
  %3480 = call float @dx.op.binary.f32(i32 36, float %2644, float %3246)  ; FMin(a,b)
  %3481 = fsub fast float %3480, %2644
  %3482 = fmul fast float %3481, %3421
  %3483 = fadd fast float %3482, %2644
  %3484 = fsub fast float %3243, %2643
  %3485 = fmul fast float %3424, %3484
  %3486 = fadd fast float %3485, %2643
  br label %3487

; <label>:3487                                    ; preds = %3475, %3473, %3441, %3426, %3404, %2942, %2646, %2633
  %3488 = phi float [ %2634, %3404 ], [ %2634, %2942 ], [ %2634, %2633 ], [ %2634, %2646 ], [ %3431, %3426 ], [ %3444, %3441 ], [ %2634, %3473 ], [ %3478, %3475 ]
  %3489 = phi float [ %2635, %3404 ], [ %2635, %2942 ], [ %2635, %2633 ], [ %2635, %2646 ], [ %3432, %3426 ], [ %3445, %3441 ], [ %2635, %3473 ], [ %3479, %3475 ]
  %3490 = phi float [ %3405, %3404 ], [ %2636, %2942 ], [ %2636, %2633 ], [ %2636, %2646 ], [ %3405, %3426 ], [ %3405, %3441 ], [ %3405, %3473 ], [ %3405, %3475 ]
  %3491 = phi float [ %3406, %3404 ], [ %2637, %2942 ], [ %2637, %2633 ], [ %2637, %2646 ], [ %3406, %3426 ], [ %3406, %3441 ], [ %3406, %3473 ], [ %3406, %3475 ]
  %3492 = phi float [ %3407, %3404 ], [ %2638, %2942 ], [ %2638, %2633 ], [ %2638, %2646 ], [ %3407, %3426 ], [ %3407, %3441 ], [ %3407, %3473 ], [ %3407, %3475 ]
  %3493 = phi float [ %3408, %3404 ], [ %2639, %2942 ], [ %2639, %2633 ], [ %2639, %2646 ], [ %3408, %3426 ], [ %3408, %3441 ], [ %3408, %3473 ], [ %3408, %3475 ]
  %3494 = phi float [ %3409, %3404 ], [ %2640, %2942 ], [ %2640, %2633 ], [ %2640, %2646 ], [ %3409, %3426 ], [ %3409, %3441 ], [ %3409, %3473 ], [ %3409, %3475 ]
  %3495 = phi float [ %3410, %3404 ], [ %2641, %2942 ], [ %2641, %2633 ], [ %2641, %2646 ], [ %3410, %3426 ], [ %3410, %3441 ], [ %3410, %3473 ], [ %3410, %3475 ]
  %3496 = phi float [ %3411, %3404 ], [ %2642, %2942 ], [ %2642, %2633 ], [ %2642, %2646 ], [ %3411, %3426 ], [ %3411, %3441 ], [ %3411, %3473 ], [ %3411, %3475 ]
  %3497 = phi float [ %2643, %3404 ], [ %2643, %2942 ], [ %2643, %2633 ], [ %2643, %2646 ], [ %3438, %3426 ], [ %3472, %3441 ], [ %2643, %3473 ], [ %3486, %3475 ]
  %3498 = phi float [ %2644, %3404 ], [ %2644, %2942 ], [ %2644, %2633 ], [ %2644, %2646 ], [ %3435, %3426 ], [ %3449, %3441 ], [ %2644, %3473 ], [ %3483, %3475 ]
  %3499 = phi float [ %3412, %3404 ], [ %2645, %2942 ], [ %2645, %2633 ], [ %2645, %2646 ], [ %3412, %3426 ], [ %3412, %3441 ], [ %3412, %3473 ], [ %3412, %3475 ]
  %3500 = add i32 %43, 408
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = bitcast i32 %3502 to float
  %3504 = fcmp fast oge float %3503, 0.000000e+00
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = select i1 %3504, float %3503, float %3506
  %3508 = call float @dx.op.dot2.f32(i32 54, float %3488, float %3489, float %3488, float %3489)  ; Dot2(ax,ay,bx,by)
  %3509 = fmul fast float %3508, 0x3FE3333340000000
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3510, float %3488, float %3489, float %3510)  ; Dot3(ax,ay,az,bx,by,bz)
  %3512 = call float @dx.op.unary.f32(i32 25, float %3511)  ; Rsqrt(value)
  %3513 = fmul fast float %3512, %3488
  %3514 = fmul fast float %3512, %3489
  %3515 = fmul fast float %3510, %3512
  %3516 = fmul fast float %3515, %85
  %3517 = fmul fast float %3515, %86
  %3518 = fmul fast float %3515, %87
  %3519 = fmul fast float %3513, %59
  %3520 = fmul fast float %3513, %60
  %3521 = fmul fast float %3513, %61
  %3522 = fadd fast float %3516, %3519
  %3523 = fadd fast float %3517, %3520
  %3524 = fadd fast float %3518, %3521
  %3525 = fmul fast float %97, %3514
  %3526 = fmul fast float %98, %3514
  %3527 = fmul fast float %99, %3514
  %3528 = fadd fast float %3522, %3525
  %3529 = fadd fast float %3523, %3526
  %3530 = fadd fast float %3524, %3527
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3528, float %3529, float %3530, float %3528, float %3529, float %3530)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3528, %3532
  %3534 = fmul fast float %3529, %3532
  %3535 = fmul fast float %3530, %3532
  %3536 = and i32 %45, 1
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %3538, label %4050

; <label>:3538                                    ; preds = %3487
  %3539 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3540 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3541 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3542 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3543 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3544 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3545 = fadd fast float %3539, %141
  %3546 = fadd fast float %3540, %142
  %3547 = fadd fast float %3541, %143
  %3548 = fadd fast float %3542, %141
  %3549 = fadd fast float %3543, %142
  %3550 = fadd fast float %3544, %143
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.CBufRet.f32 %3551, 1
  %3554 = extractvalue %dx.types.CBufRet.f32 %3551, 2
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 3
  %3558 = fmul fast float %3552, %78
  %3559 = fmul fast float %3558, %3556
  %3560 = fmul fast float %3553, %79
  %3561 = fmul fast float %3560, %3557
  %3562 = fptoui float %3559 to i32
  %3563 = fptoui float %3561 to i32
  %3564 = fadd fast float %3552, -1.000000e+00
  %3565 = fadd fast float %3553, -1.000000e+00
  %3566 = fptoui float %3564 to i32
  %3567 = fptoui float %3565 to i32
  %3568 = call i32 @dx.op.binary.i32(i32 40, i32 %3562, i32 %3566)  ; UMin(a,b)
  %3569 = call i32 @dx.op.binary.i32(i32 40, i32 %3563, i32 %3567)  ; UMin(a,b)
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 3
  %3573 = fmul fast float %3571, %73
  %3574 = fsub fast float %3573, %3572
  %3575 = fadd fast float %3554, -1.000000e+00
  %3576 = call float @dx.op.binary.f32(i32 36, float %3574, float %3575)  ; FMin(a,b)
  %3577 = fptoui float %3576 to i32
  %3578 = fptoui float %3552 to i32
  %3579 = fptoui float %3553 to i32
  %3580 = mul i32 %3577, %3579
  %3581 = add i32 %3580, %3569
  %3582 = mul i32 %3581, %3578
  %3583 = add i32 %3582, %3568
  %3584 = shl i32 %3583, 2
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 1023
  %3588 = lshr i32 %3586, 10
  %3589 = icmp eq i32 %3587, 0
  br i1 %3589, label %4018, label %3590

; <label>:3590                                    ; preds = %3538
  %3591 = and i32 %3586, 1023
  br label %3592

; <label>:3592                                    ; preds = %3719, %3590
  %3593 = phi i32 [ %3669, %3719 ], [ 0, %3590 ]
  %3594 = phi float [ %3720, %3719 ], [ 0.000000e+00, %3590 ]
  %3595 = phi float [ %3721, %3719 ], [ %934, %3590 ]
  %3596 = phi float [ %3722, %3719 ], [ %3507, %3590 ]
  %3597 = phi float [ %3723, %3719 ], [ %3499, %3590 ]
  %3598 = phi float [ %3724, %3719 ], [ 0.000000e+00, %3590 ]
  %3599 = phi float [ %3725, %3719 ], [ 0.000000e+00, %3590 ]
  %3600 = phi float [ %3726, %3719 ], [ %3493, %3590 ]
  %3601 = phi float [ %3727, %3719 ], [ %3494, %3590 ]
  %3602 = phi float [ %3728, %3719 ], [ %3495, %3590 ]
  %3603 = phi float [ %3729, %3719 ], [ %3533, %3590 ]
  %3604 = phi float [ %3730, %3719 ], [ %3534, %3590 ]
  %3605 = phi float [ %3731, %3719 ], [ %3535, %3590 ]
  %3606 = phi float [ %3732, %3719 ], [ %3498, %3590 ]
  %3607 = phi float [ %3733, %3719 ], [ %3497, %3590 ]
  %3608 = phi float [ %3734, %3719 ], [ 0.000000e+00, %3590 ]
  %3609 = phi float [ %3735, %3719 ], [ %3496, %3590 ]
  %3610 = phi float [ %3736, %3719 ], [ %3490, %3590 ]
  %3611 = phi float [ %3737, %3719 ], [ %3491, %3590 ]
  %3612 = phi float [ %3738, %3719 ], [ %3492, %3590 ]
  %3613 = add nuw nsw i32 %3593, %3588
  %3614 = shl i32 %3613, 2
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = shl i32 %3616, 8
  %3618 = or i32 %3617, 48
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = or i32 %3617, 64
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.i32 %3625, 1
  %3628 = or i32 %3617, 80
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 3
  %3632 = or i32 %3617, 96
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3638 = or i32 %3617, 112
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3641 = or i32 %3617, 128
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = or i32 %3617, 144
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = or i32 %3617, 160
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3659 = or i32 %3617, 192
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = or i32 %3617, 208
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = or i32 %3617, 248
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = add nuw nsw i32 %3593, 1
  %3670 = bitcast float %3623 to i32
  %3671 = and i32 %3670, 512
  %3672 = icmp eq i32 %3671, 0
  %3673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = extractvalue %dx.types.ResRet.f32 %3673, 3
  %3678 = call float @dx.op.dot4.f32(i32 56, float %3674, float %3675, float %3676, float %3677, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3679 = or i32 %3617, 16
  %3680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3685 = call float @dx.op.dot4.f32(i32 56, float %3681, float %3682, float %3683, float %3684, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3686 = or i32 %3617, 32
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.ResRet.f32 %3687, 1
  %3690 = extractvalue %dx.types.ResRet.f32 %3687, 2
  %3691 = extractvalue %dx.types.ResRet.f32 %3687, 3
  %3692 = call float @dx.op.dot4.f32(i32 56, float %3688, float %3689, float %3690, float %3691, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3693 = call float @dx.op.unary.f32(i32 27, float %3678)  ; Round_ni(value)
  %3694 = call float @dx.op.unary.f32(i32 6, float %3693)  ; FAbs(value)
  %3695 = call float @dx.op.unary.f32(i32 27, float %3685)  ; Round_ni(value)
  %3696 = call float @dx.op.unary.f32(i32 6, float %3695)  ; FAbs(value)
  %3697 = call float @dx.op.unary.f32(i32 6, float %3692)  ; FAbs(value)
  %3698 = call float @dx.op.unary.f32(i32 27, float %3697)  ; Round_ni(value)
  %3699 = fadd fast float %3696, %3694
  %3700 = fadd fast float %3699, %3698
  %3701 = fcmp fast oeq float %3700, 0.000000e+00
  %3702 = call float @dx.op.dot4.f32(i32 56, float %3674, float %3675, float %3676, float %3677, float %3545, float %3546, float %3547, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3703 = call float @dx.op.dot4.f32(i32 56, float %3681, float %3682, float %3683, float %3684, float %3545, float %3546, float %3547, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3704 = call float @dx.op.dot4.f32(i32 56, float %3674, float %3675, float %3676, float %3677, float %3548, float %3549, float %3550, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3705 = call float @dx.op.dot4.f32(i32 56, float %3681, float %3682, float %3683, float %3684, float %3548, float %3549, float %3550, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3706 = fsub fast float %3702, %3678
  %3707 = fsub fast float %3704, %3678
  %3708 = fsub fast float %3703, %3685
  %3709 = fsub fast float %3705, %3685
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3620, float %3621, float %3622, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 2
  %3713 = fadd fast float %3712, %3710
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3716 = fcmp fast ogt float %3714, %3715
  %3717 = and i1 %3701, %3716
  %3718 = and i1 %3672, %3717
  br i1 %3718, label %3740, label %3719

; <label>:3719                                    ; preds = %4004, %3821, %3740, %3592
  %3720 = phi float [ %3594, %3740 ], [ %3824, %3821 ], [ %3824, %4004 ], [ %3594, %3592 ]
  %3721 = phi float [ %3595, %3740 ], [ %3595, %3821 ], [ %3979, %4004 ], [ %3595, %3592 ]
  %3722 = phi float [ %3596, %3740 ], [ %3596, %3821 ], [ %3978, %4004 ], [ %3596, %3592 ]
  %3723 = phi float [ %3597, %3740 ], [ %3597, %3821 ], [ %3976, %4004 ], [ %3597, %3592 ]
  %3724 = phi float [ %3598, %3740 ], [ %3598, %3821 ], [ %3948, %4004 ], [ %3598, %3592 ]
  %3725 = phi float [ %3599, %3740 ], [ %3599, %3821 ], [ %3946, %4004 ], [ %3599, %3592 ]
  %3726 = phi float [ %3600, %3740 ], [ %3600, %3821 ], [ %4014, %4004 ], [ %3600, %3592 ]
  %3727 = phi float [ %3601, %3740 ], [ %3601, %3821 ], [ %4015, %4004 ], [ %3601, %3592 ]
  %3728 = phi float [ %3602, %3740 ], [ %3602, %3821 ], [ %4016, %4004 ], [ %3602, %3592 ]
  %3729 = phi float [ %3603, %3740 ], [ %3603, %3821 ], [ %3927, %4004 ], [ %3603, %3592 ]
  %3730 = phi float [ %3604, %3740 ], [ %3604, %3821 ], [ %3928, %4004 ], [ %3604, %3592 ]
  %3731 = phi float [ %3605, %3740 ], [ %3605, %3821 ], [ %3929, %4004 ], [ %3605, %3592 ]
  %3732 = phi float [ %3606, %3740 ], [ %3606, %3821 ], [ %3956, %4004 ], [ %3606, %3592 ]
  %3733 = phi float [ %3607, %3740 ], [ %3607, %3821 ], [ %3953, %4004 ], [ %3607, %3592 ]
  %3734 = phi float [ %3608, %3740 ], [ %3608, %3821 ], [ %3950, %4004 ], [ %3608, %3592 ]
  %3735 = phi float [ %3609, %3740 ], [ %3609, %3821 ], [ %3944, %4004 ], [ %3609, %3592 ]
  %3736 = phi float [ %3610, %3740 ], [ %3610, %3821 ], [ %3939, %4004 ], [ %3610, %3592 ]
  %3737 = phi float [ %3611, %3740 ], [ %3611, %3821 ], [ %3940, %4004 ], [ %3611, %3592 ]
  %3738 = phi float [ %3612, %3740 ], [ %3612, %3821 ], [ %3941, %4004 ], [ %3612, %3592 ]
  %3739 = icmp eq i32 %3669, %3591
  br i1 %3739, label %4017, label %3592

; <label>:3740                                    ; preds = %3592
  %3741 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3742 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3743 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3744 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3745 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3746 = extractvalue %dx.types.ResRet.i32 %3625, 3
  %3747 = extractvalue %dx.types.ResRet.i32 %3625, 2
  %3748 = add i32 %3746, 0
  %3749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3748, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3749, %dx.types.Handle %3750, float %3678, float %3685, float undef, float undef, i32 0, i32 0, i32 undef, float %3706, float %3708, float undef, float %3707, float %3709, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = fmul fast float %3752, %3745
  %3754 = fadd fast float %3753, %3744
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3678, %3634
  %3757 = call float @dx.op.tertiary.f32(i32 46, float %3635, float %3685, float %3756)  ; FMad(a,b,c)
  %3758 = fadd fast float %3757, %3743
  %3759 = fmul fast float %3678, %3636
  %3760 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3685, float %3759)  ; FMad(a,b,c)
  %3761 = fadd fast float %3760, %3742
  %3762 = fmul fast float %3706, %3634
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %3635, float %3708, float %3762)  ; FMad(a,b,c)
  %3764 = fmul fast float %3706, %3636
  %3765 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3708, float %3764)  ; FMad(a,b,c)
  %3766 = fmul fast float %3707, %3634
  %3767 = call float @dx.op.tertiary.f32(i32 46, float %3635, float %3709, float %3766)  ; FMad(a,b,c)
  %3768 = fmul fast float %3707, %3636
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3709, float %3768)  ; FMad(a,b,c)
  %3770 = add i32 %3747, 0
  %3771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3770, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3771, %dx.types.Handle %3750, float %3758, float %3761, float undef, float undef, i32 0, i32 0, i32 undef, float %3763, float %3765, float undef, float %3767, float %3769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = and i32 %3670, 1024
  %3775 = icmp ne i32 %3774, 0
  %3776 = fcmp fast ogt float %3773, 0x3FE0101020000000
  %3777 = uitofp i1 %3776 to float
  %3778 = select i1 %3775, float %3777, float %3773
  %3779 = and i32 %3670, 8192
  %3780 = icmp ne i32 %3779, 0
  %3781 = select i1 %3780, float %3741, float 1.000000e+00
  %3782 = fmul fast float %3678, 2.000000e+00
  %3783 = fadd fast float %3782, -1.000000e+00
  %3784 = call float @dx.op.unary.f32(i32 6, float %3783)  ; FAbs(value)
  %3785 = fmul fast float %3784, %3667
  %3786 = fsub fast float %3785, %3667
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3685, 2.000000e+00
  %3789 = fadd fast float %3788, -1.000000e+00
  %3790 = call float @dx.op.unary.f32(i32 6, float %3789)  ; FAbs(value)
  %3791 = fmul fast float %3790, %3668
  %3792 = fsub fast float %3791, %3668
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fmul fast float %3697, %3630
  %3795 = fsub fast float %3794, %3630
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = fmul fast float %3755, %3781
  %3798 = fmul fast float %3797, %3752
  %3799 = fmul fast float %3798, %3787
  %3800 = fmul fast float %3799, %3778
  %3801 = fmul fast float %3800, %3793
  %3802 = fmul fast float %3801, %3796
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 1
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3806 = fsub fast float %3714, %3805
  %3807 = fmul fast float %3806, %3804
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = fmul fast float %3802, %3631
  %3810 = fadd fast float %3802, %3631
  %3811 = fmul fast float %3810, %3640
  %3812 = fsub fast float %3811, %3640
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = and i32 %3670, 128
  %3815 = icmp ne i32 %3814, 0
  %3816 = select i1 %3815, float %3813, float %3809
  %3817 = fmul fast float %3816, %3808
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = fcmp fast ugt float %3817, %3819
  br i1 %3820, label %3821, label %3719

; <label>:3821                                    ; preds = %3740
  %3822 = select i1 %3780, float %3817, float 0.000000e+00
  %3823 = fadd fast float %3822, %3594
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  br i1 %3780, label %3719, label %3825

; <label>:3825                                    ; preds = %3821
  %3826 = and i32 %3670, 4
  %3827 = and i32 %3670, 8
  %3828 = add i32 %3626, 0
  %3829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3828, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3831 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3829, %dx.types.Handle %3830, float %3758, float %3761, float undef, float undef, i32 0, i32 0, i32 undef, float %3763, float %3765, float undef, float %3767, float %3769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = bitcast float %3652 to i32
  %3837 = and i32 %3836, 255
  %3838 = uitofp i32 %3837 to float
  %3839 = lshr i32 %3836, 8
  %3840 = and i32 %3839, 255
  %3841 = uitofp i32 %3840 to float
  %3842 = fmul fast float %3835, %3838
  %3843 = fadd fast float %3842, %3841
  %3844 = fmul fast float %3843, 0x3F70101000000000
  %3845 = add i32 %3627, 0
  %3846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3845, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3847 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3846, %dx.types.Handle %3830, float %3758, float %3761, float undef, float undef, i32 0, i32 0, i32 undef, float %3763, float %3765, float undef, float %3767, float %3769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = bitcast float %3646 to i32
  %3853 = and i32 %3852, 255
  %3854 = uitofp i32 %3853 to float
  %3855 = lshr i32 %3852, 8
  %3856 = and i32 %3855, 255
  %3857 = uitofp i32 %3856 to float
  %3858 = lshr i32 %3852, 16
  %3859 = and i32 %3858, 255
  %3860 = uitofp i32 %3859 to float
  %3861 = fmul fast float %3860, 0x3F70101000000000
  %3862 = fmul fast float %3848, %3854
  %3863 = fadd fast float %3862, %3857
  %3864 = fmul fast float %3863, 0x3F70101000000000
  %3865 = fadd fast float %3849, -5.000000e-01
  %3866 = fadd fast float %3851, -5.000000e-01
  %3867 = fmul fast float %3865, %3861
  %3868 = fmul fast float %3866, %3861
  %3869 = fadd fast float %3867, 5.000000e-01
  %3870 = fadd fast float %3868, 5.000000e-01
  %3871 = fmul fast float %3832, %3655
  %3872 = fmul fast float %3833, %3656
  %3873 = fmul fast float %3834, %3657
  %3874 = fmul fast float %3869, 2.000000e+00
  %3875 = fadd fast float %3874, -1.000000e+00
  %3876 = fmul fast float %3870, 2.000000e+00
  %3877 = fadd fast float %3876, -1.000000e+00
  %3878 = fadd fast float %3875, %3877
  %3879 = fmul fast float %3878, 5.000000e-01
  %3880 = fsub fast float %3875, %3877
  %3881 = fmul fast float %3880, 5.000000e-01
  %3882 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = call float @dx.op.unary.f32(i32 6, float %3881)  ; FAbs(value)
  %3885 = fsub fast float %3883, %3884
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3881, float %3885, float %3879, float %3881, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3879, %3887
  %3889 = fmul fast float %3881, %3887
  %3890 = fmul fast float %3887, %3885
  %3891 = fmul fast float %3890, %3620
  %3892 = fmul fast float %3890, %3621
  %3893 = fmul fast float %3890, %3622
  %3894 = fmul fast float %3888, %3643
  %3895 = fmul fast float %3888, %3644
  %3896 = fmul fast float %3888, %3645
  %3897 = fadd fast float %3894, %3891
  %3898 = fadd fast float %3895, %3892
  %3899 = fadd fast float %3896, %3893
  %3900 = fmul fast float %3889, %3649
  %3901 = fmul fast float %3889, %3650
  %3902 = fmul fast float %3889, %3651
  %3903 = fadd fast float %3897, %3900
  %3904 = fadd fast float %3898, %3901
  %3905 = fadd fast float %3899, %3902
  %3906 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float %3903, float %3904, float %3905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3907 = call float @dx.op.unary.f32(i32 25, float %3906)  ; Rsqrt(value)
  %3908 = fmul fast float %3903, %3907
  %3909 = fmul fast float %3904, %3907
  %3910 = fmul fast float %3905, %3907
  %3911 = icmp ne i32 %3827, 0
  %3912 = select i1 %3911, float 1.000000e+00, float 0.000000e+00
  %3913 = fmul fast float %3817, %3912
  %3914 = and i32 %3670, 1
  %3915 = icmp eq i32 %3914, 0
  br i1 %3915, label %3916, label %3920

; <label>:3916                                    ; preds = %3825
  %3917 = fsub fast float %3908, %3603
  %3918 = fsub fast float %3909, %3604
  %3919 = fsub fast float %3910, %3605
  br label %3920

; <label>:3920                                    ; preds = %3916, %3825
  %3921 = phi float [ %3917, %3916 ], [ %3908, %3825 ]
  %3922 = phi float [ %3918, %3916 ], [ %3909, %3825 ]
  %3923 = phi float [ %3919, %3916 ], [ %3910, %3825 ]
  %3924 = fmul float %3923, %3913
  %3925 = fmul float %3922, %3913
  %3926 = fmul float %3921, %3913
  %3927 = fadd fast float %3926, %3603
  %3928 = fadd fast float %3925, %3604
  %3929 = fadd fast float %3924, %3605
  %3930 = icmp ne i32 %3826, 0
  %3931 = select i1 %3930, float 1.000000e+00, float 0.000000e+00
  %3932 = fmul fast float %3817, %3931
  %3933 = fsub fast float %3871, %3610
  %3934 = fsub fast float %3872, %3611
  %3935 = fsub fast float %3873, %3612
  %3936 = fmul fast float %3933, %3932
  %3937 = fmul fast float %3934, %3932
  %3938 = fmul fast float %3935, %3932
  %3939 = fadd fast float %3936, %3610
  %3940 = fadd fast float %3937, %3611
  %3941 = fadd fast float %3938, %3612
  %3942 = fsub fast float %3844, %3609
  %3943 = fmul fast float %3942, %3932
  %3944 = fadd fast float %3943, %3609
  %3945 = fmul fast float %3932, %3599
  %3946 = fsub fast float %3599, %3945
  %3947 = fmul fast float %3932, %3598
  %3948 = fsub fast float %3598, %3947
  %3949 = fadd fast float %3817, %3608
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fsub fast float %3864, %3607
  %3952 = fmul fast float %3951, %3913
  %3953 = fadd fast float %3952, %3607
  %3954 = fsub fast float %3850, %3606
  %3955 = fmul fast float %3954, %3913
  %3956 = fadd fast float %3955, %3606
  %3957 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3961 = fmul fast float %3960, %3957
  %3962 = fadd fast float %3961, %3959
  %3963 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %3964 = bitcast float %3658 to i32
  %3965 = and i32 %3964, 65535
  %3966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3965)  ; LegacyF16ToF32(value)
  %3967 = lshr i32 %3964, 16
  %3968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3967)  ; LegacyF16ToF32(value)
  %3969 = fcmp fast oge float %3966, 0.000000e+00
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = select i1 %3969, float %3966, float %3971
  %3973 = fadd fast float %3972, %3968
  %3974 = fsub fast float %3963, %3597
  %3975 = fmul fast float %3974, %3817
  %3976 = fadd fast float %3975, %3597
  %3977 = fmul fast float %3973, %3817
  %3978 = call float @dx.op.binary.f32(i32 35, float %3596, float %3977)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 35, float %3595, float %3817)  ; FMax(a,b)
  %3980 = and i32 %3670, 16
  %3981 = icmp eq i32 %3980, 0
  br i1 %3981, label %4004, label %3982

; <label>:3982                                    ; preds = %3920
  %3983 = bitcast float %3664 to i32
  %3984 = add i32 %3661, 0
  %3985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3986 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3985, %dx.types.Handle %3830, float %3758, float %3761, float undef, float undef, i32 0, i32 0, i32 undef, float %3763, float %3765, float undef, float %3767, float %3769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.ResRet.f32 %3986, 1
  %3989 = extractvalue %dx.types.ResRet.f32 %3986, 2
  %3990 = and i32 %3983, 65535
  %3991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3990)  ; LegacyF16ToF32(value)
  %3992 = fmul fast float %3987, %3655
  %3993 = fmul fast float %3988, %3656
  %3994 = fmul fast float %3989, %3657
  %3995 = and i32 %3670, 16384
  %3996 = icmp ne i32 %3995, 0
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = select i1 %3996, float %3998, float 1.000000e+00
  %4000 = fmul fast float %3999, %3991
  %4001 = fmul fast float %3992, %4000
  %4002 = fmul fast float %3993, %4000
  %4003 = fmul fast float %3994, %4000
  br label %4004

; <label>:4004                                    ; preds = %3982, %3920
  %4005 = phi float [ %4001, %3982 ], [ 0.000000e+00, %3920 ]
  %4006 = phi float [ %4002, %3982 ], [ 0.000000e+00, %3920 ]
  %4007 = phi float [ %4003, %3982 ], [ 0.000000e+00, %3920 ]
  %4008 = fsub fast float %4005, %3600
  %4009 = fsub fast float %4006, %3601
  %4010 = fsub fast float %4007, %3602
  %4011 = fmul fast float %4008, %3817
  %4012 = fmul fast float %4009, %3817
  %4013 = fmul fast float %4010, %3817
  %4014 = fadd fast float %4011, %3600
  %4015 = fadd fast float %4012, %3601
  %4016 = fadd fast float %4013, %3602
  br label %3719

; <label>:4017                                    ; preds = %3719
  br label %4018

; <label>:4018                                    ; preds = %4017, %3538
  %4019 = phi float [ 0.000000e+00, %3538 ], [ %3720, %4017 ]
  %4020 = phi float [ %934, %3538 ], [ %3721, %4017 ]
  %4021 = phi float [ %3507, %3538 ], [ %3722, %4017 ]
  %4022 = phi float [ %3499, %3538 ], [ %3723, %4017 ]
  %4023 = phi float [ 0.000000e+00, %3538 ], [ %3724, %4017 ]
  %4024 = phi float [ 0.000000e+00, %3538 ], [ %3725, %4017 ]
  %4025 = phi float [ %3493, %3538 ], [ %3726, %4017 ]
  %4026 = phi float [ %3494, %3538 ], [ %3727, %4017 ]
  %4027 = phi float [ %3495, %3538 ], [ %3728, %4017 ]
  %4028 = phi float [ %3533, %3538 ], [ %3729, %4017 ]
  %4029 = phi float [ %3534, %3538 ], [ %3730, %4017 ]
  %4030 = phi float [ %3535, %3538 ], [ %3731, %4017 ]
  %4031 = phi float [ %3498, %3538 ], [ %3732, %4017 ]
  %4032 = phi float [ %3497, %3538 ], [ %3733, %4017 ]
  %4033 = phi float [ 0.000000e+00, %3538 ], [ %3734, %4017 ]
  %4034 = phi float [ %3496, %3538 ], [ %3735, %4017 ]
  %4035 = phi float [ %3490, %3538 ], [ %3736, %4017 ]
  %4036 = phi float [ %3491, %3538 ], [ %3737, %4017 ]
  %4037 = phi float [ %3492, %3538 ], [ %3738, %4017 ]
  %4038 = call float @dx.op.dot3.f32(i32 55, float %4028, float %4029, float %4030, float %4028, float %4029, float %4030)  ; Dot3(ax,ay,az,bx,by,bz)
  %4039 = call float @dx.op.unary.f32(i32 25, float %4038)  ; Rsqrt(value)
  %4040 = fmul fast float %4039, %4028
  %4041 = fmul fast float %4039, %4029
  %4042 = fmul fast float %4039, %4030
  %4043 = fadd fast float %4033, %934
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = call float @dx.op.dot3.f32(i32 55, float %4040, float %4041, float %4042, float %4040, float %4041, float %4042)  ; Dot3(ax,ay,az,bx,by,bz)
  %4046 = call float @dx.op.unary.f32(i32 25, float %4045)  ; Rsqrt(value)
  %4047 = fmul fast float %4046, %4040
  %4048 = fmul fast float %4046, %4041
  %4049 = fmul fast float %4046, %4042
  br label %4050

; <label>:4050                                    ; preds = %4018, %3487
  %4051 = phi float [ %4047, %4018 ], [ %3533, %3487 ]
  %4052 = phi float [ %4048, %4018 ], [ %3534, %3487 ]
  %4053 = phi float [ %4049, %4018 ], [ %3535, %3487 ]
  %4054 = phi float [ %4035, %4018 ], [ %3490, %3487 ]
  %4055 = phi float [ %4036, %4018 ], [ %3491, %3487 ]
  %4056 = phi float [ %4037, %4018 ], [ %3492, %3487 ]
  %4057 = phi float [ %4025, %4018 ], [ %3493, %3487 ]
  %4058 = phi float [ %4026, %4018 ], [ %3494, %3487 ]
  %4059 = phi float [ %4027, %4018 ], [ %3495, %3487 ]
  %4060 = phi float [ %4034, %4018 ], [ %3496, %3487 ]
  %4061 = phi float [ %4044, %4018 ], [ %934, %3487 ]
  %4062 = phi float [ %4032, %4018 ], [ %3497, %3487 ]
  %4063 = phi float [ %4031, %4018 ], [ %3498, %3487 ]
  %4064 = phi float [ %4024, %4018 ], [ 0.000000e+00, %3487 ]
  %4065 = phi float [ %4023, %4018 ], [ 0.000000e+00, %3487 ]
  %4066 = phi float [ %4019, %4018 ], [ 0.000000e+00, %3487 ]
  %4067 = phi float [ %4021, %4018 ], [ %3507, %3487 ]
  %4068 = phi float [ %4020, %4018 ], [ %934, %3487 ]
  %4069 = phi float [ %4022, %4018 ], [ %3499, %3487 ]
  %4070 = add i32 %43, 392
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.i32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.i32 %4071, 2
  %4075 = extractvalue %dx.types.ResRet.i32 %4071, 3
  %4076 = bitcast i32 %4072 to float
  %4077 = bitcast i32 %4073 to float
  %4078 = bitcast i32 %4074 to float
  %4079 = bitcast i32 %4075 to float
  %4080 = fsub fast float %4054, %4076
  %4081 = fsub fast float %4055, %4077
  %4082 = fsub fast float %4056, %4078
  %4083 = fmul fast float %4080, %175
  %4084 = fmul fast float %4081, %175
  %4085 = fmul fast float %4082, %175
  %4086 = fadd fast float %4083, %4076
  %4087 = fadd fast float %4084, %4077
  %4088 = fadd fast float %4085, %4078
  %4089 = fsub fast float %4061, %4079
  %4090 = fmul fast float %4089, %175
  %4091 = fadd fast float %4090, %4079
  %4092 = fadd fast float %4060, 0xBFB99999A0000000
  %4093 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4094 = fmul fast float %4093, 0x3FF1C71C80000000
  %4095 = call float @dx.op.binary.f32(i32 36, float %4060, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4096 = fsub fast float 1.000000e+00, %4094
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %4086, %4097
  %4099 = fmul fast float %4087, %4097
  %4100 = fmul fast float %4088, %4097
  %4101 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4102 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4103 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4104 = fmul fast float %4086, %4094
  %4105 = fmul fast float %4087, %4094
  %4106 = fmul fast float %4088, %4094
  %4107 = fadd fast float %4104, %4095
  %4108 = fadd fast float %4105, %4095
  %4109 = fadd fast float %4106, %4095
  %4110 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.i32 %4114, 3
  %4116 = and i32 %4115, 8
  %4117 = icmp ne i32 %4116, 0
  %4118 = call float @dx.op.binary.f32(i32 35, float %4101, float %4086)  ; FMax(a,b)
  %4119 = call float @dx.op.binary.f32(i32 35, float %4102, float %4086)  ; FMax(a,b)
  %4120 = call float @dx.op.binary.f32(i32 35, float %4103, float %4086)  ; FMax(a,b)
  %4121 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4102, float %4103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4122 = select i1 %215, float %4086, float %4101
  %4123 = select i1 %215, float %4121, float %4102
  %4124 = select i1 %215, float 1.000000e+00, float %4103
  %4125 = select i1 %4117, float %4118, float %4122
  %4126 = select i1 %4117, float %4119, float %4123
  %4127 = select i1 %4117, float %4120, float %4124
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4132 = fadd fast float %4129, %141
  %4133 = fadd fast float %4130, %142
  %4134 = fadd fast float %4131, %143
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4138 = fsub fast float %4132, %4136
  %4139 = fsub fast float %4133, %4137
  %4140 = fmul fast float %4138, %4138
  %4141 = fmul fast float %4139, %4139
  %4142 = fadd fast float %4140, %4141
  %4143 = call float @dx.op.unary.f32(i32 24, float %4142)  ; Sqrt(value)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4135, 2
  %4145 = fcmp fast olt float %4143, %4144
  br i1 %4145, label %4146, label %4213

; <label>:4146                                    ; preds = %4050
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4155 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4156 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4157 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4158 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4159 = fadd fast float %4156, %4132
  %4160 = fadd fast float %4157, %4133
  %4161 = fadd fast float %4158, %4134
  %4162 = fmul fast float %4159, %4148
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4150, float %4162)  ; FMad(a,b,c)
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4152, float %4163)  ; FMad(a,b,c)
  %4165 = fmul fast float %4159, %4153
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4154, float %4165)  ; FMad(a,b,c)
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = fsub fast float %4164, %4156
  %4169 = fsub fast float %4167, %4157
  %4170 = fsub fast float %4168, %4136
  %4171 = fadd fast float %4170, %4144
  %4172 = fsub fast float %4169, %4137
  %4173 = fadd fast float %4172, %4144
  %4174 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4175 = fmul fast float %4171, %4174
  %4176 = fmul fast float %4173, %4174
  %4177 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4178 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4179 = fsub fast float 1.000000e+00, %4177
  %4180 = fsub fast float 1.000000e+00, %4178
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4179, float %4180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = fcmp fast ugt float %4182, 0.000000e+00
  br i1 %4183, label %4184, label %4487

; <label>:4184                                    ; preds = %4146
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4187 = fmul fast float %4186, %4182
  %4188 = extractvalue %dx.types.CBufRet.f32 %4185, 3
  %4189 = fadd fast float %4188, %4187
  %4190 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4191 = fadd fast float %4189, %4158
  %4192 = fmul fast float %4164, %4152
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4167, float %4155, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4190, float %4193)  ; FMad(a,b,c)
  %4195 = fsub fast float %4194, %4158
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4198 = fsub fast float %4195, %4197
  %4199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4179, float %4180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4179, float %4180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = fadd fast float %4204, %4200
  %4208 = fmul fast float %4207, 0x3F847AE140000000
  %4209 = fadd fast float %4205, %4201
  %4210 = fmul fast float %4209, 0x3F847AE140000000
  %4211 = fadd fast float %4206, %4202
  %4212 = fmul fast float %4211, 0x3F847AE140000000
  br label %4487

; <label>:4213                                    ; preds = %4050
  %4214 = and i32 %191, 1
  %4215 = icmp eq i32 %4214, 0
  br i1 %4215, label %4487, label %4216

; <label>:4216                                    ; preds = %4213
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4224 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4225 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4226 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4227 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4228 = extractvalue %dx.types.CBufRet.f32 %4221, 3
  %4229 = fadd fast float %4226, %4132
  %4230 = fadd fast float %4227, %4133
  %4231 = fadd fast float %4228, %4134
  %4232 = fmul fast float %4229, %4218
  %4233 = call float @dx.op.tertiary.f32(i32 46, float %4230, float %4220, float %4232)  ; FMad(a,b,c)
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4222, float %4233)  ; FMad(a,b,c)
  %4235 = fmul fast float %4229, %4223
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4230, float %4224, float %4235)  ; FMad(a,b,c)
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4225, float %4236)  ; FMad(a,b,c)
  %4238 = fsub fast float %4234, %4226
  %4239 = fsub fast float %4237, %4227
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.i32 %4247, 0
  %4249 = extractvalue %dx.types.CBufRet.i32 %4247, 1
  %4250 = udiv i32 %4249, %4248
  %4251 = fsub fast float %4238, %4241
  %4252 = fsub fast float %4239, %4242
  %4253 = call float @dx.op.binary.f32(i32 35, float %4251, float 0.000000e+00)  ; FMax(a,b)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4252, float 0.000000e+00)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 36, float %4253, float %4243)  ; FMin(a,b)
  %4256 = call float @dx.op.binary.f32(i32 36, float %4254, float %4244)  ; FMin(a,b)
  %4257 = add i32 %4248, -1
  %4258 = add i32 %4250, -1
  %4259 = fmul fast float %4255, %4246
  %4260 = fmul fast float %4256, %4246
  %4261 = fptoui float %4259 to i32
  %4262 = fptoui float %4260 to i32
  %4263 = call i32 @dx.op.binary.i32(i32 40, i32 %4261, i32 %4257)  ; UMin(a,b)
  %4264 = call i32 @dx.op.binary.i32(i32 40, i32 %4262, i32 %4258)  ; UMin(a,b)
  %4265 = mul i32 %4264, %4248
  %4266 = add i32 %4265, %4263
  %4267 = shl i32 %4266, 2
  %4268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.i32 %4268, 0
  %4270 = icmp eq i32 %4269, -1
  br i1 %4270, label %4487, label %4271

; <label>:4271                                    ; preds = %4216
  %4272 = mul i32 %4269, 148
  %4273 = add i32 %4272, 4
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4272, 8
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4272, 36
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4272, 60
  %4283 = add i32 %4272, 92
  %4284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.i32 %4284, 0
  %4286 = add i32 %4272, 116
  %4287 = fsub fast float %4238, %4275
  %4288 = fsub fast float %4239, %4278
  %4289 = fmul fast float %4246, %4287
  %4290 = fmul fast float %4246, %4288
  %4291 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4293 = fsub fast float 1.000000e+00, %4292
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 2
  %4296 = call float @dx.op.unary.f32(i32 83, float %4291)  ; DerivCoarseX(value)
  %4297 = call float @dx.op.unary.f32(i32 83, float %4293)  ; DerivCoarseX(value)
  %4298 = call float @dx.op.unary.f32(i32 84, float %4291)  ; DerivCoarseY(value)
  %4299 = call float @dx.op.unary.f32(i32 84, float %4293)  ; DerivCoarseY(value)
  %4300 = fmul fast float %4296, %4295
  %4301 = fmul fast float %4297, %4295
  %4302 = fmul fast float %4298, %4295
  %4303 = fmul fast float %4299, %4295
  %4304 = call float @dx.op.dot2.f32(i32 54, float %4302, float %4303, float %4302, float %4303)  ; Dot2(ax,ay,bx,by)
  %4305 = call float @dx.op.dot2.f32(i32 54, float %4300, float %4301, float %4300, float %4301)  ; Dot2(ax,ay,bx,by)
  %4306 = call float @dx.op.binary.f32(i32 35, float %4305, float %4304)  ; FMax(a,b)
  %4307 = call float @dx.op.unary.f32(i32 23, float %4306)  ; Log(value)
  %4308 = fmul fast float %4307, 5.000000e-01
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4311 = fadd fast float %4310, %4308
  %4312 = call float @dx.op.binary.f32(i32 35, float %4311, float 0.000000e+00)  ; FMax(a,b)
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4315 = fadd fast float %4314, %4312
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4318 = fadd fast float %4315, %4317
  %4319 = add i32 %4285, 0
  %4320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4321 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4320, i32 0)  ; GetDimensions(handle,mipLevel)
  %4322 = extractvalue %dx.types.Dimensions %4321, 0
  %4323 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4322)  ; FirstbitLo(value)
  %4324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.i32 %4324, 1
  %4326 = sub nsw i32 %4325, %4323
  %4327 = sitofp i32 %4326 to float
  %4328 = fsub fast float %4318, %4327
  %4329 = call float @dx.op.binary.f32(i32 35, float %4328, float 0.000000e+00)  ; FMax(a,b)
  %4330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4320, %dx.types.Handle %37, float %4291, float %4293, float %4281, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = fcmp ule float %4331, 0x3FE0101020000000
  %4333 = extractvalue %dx.types.CBufRet.i32 %4324, 0
  %4334 = and i32 %4333, 128
  %4335 = icmp ne i32 %4334, 0
  %4336 = and i1 %4332, %4335
  br i1 %4336, label %4487, label %4337

; <label>:4337                                    ; preds = %4271
  %4338 = add i32 %4272, 20
  %4339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = add i32 %4272, 24
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = add i32 %4272, 40
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = add i32 %4272, 96
  %4348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.i32 %4348, 0
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 2
  %4352 = fmul fast float %4351, %4291
  %4353 = fmul fast float %4351, %4293
  %4354 = extractvalue %dx.types.CBufRet.f32 %4350, 3
  %4355 = fadd fast float %4352, %4354
  %4356 = fadd fast float %4353, %4354
  %4357 = add i32 %4349, 0
  %4358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4357, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4359 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4358, i32 0)  ; GetDimensions(handle,mipLevel)
  %4360 = extractvalue %dx.types.Dimensions %4359, 0
  %4361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4360)  ; FirstbitLo(value)
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 1
  %4364 = sub nsw i32 %4363, %4361
  %4365 = sitofp i32 %4364 to float
  %4366 = fsub fast float %4315, %4365
  %4367 = call float @dx.op.binary.f32(i32 35, float %4366, float 0.000000e+00)  ; FMax(a,b)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4358, %dx.types.Handle %37, float %4355, float %4356, float %4346, float undef, i32 0, i32 0, i32 undef, float %4367)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = fmul fast float %4369, %4340
  %4371 = fadd fast float %4370, %4343
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4375 = extractvalue %dx.types.CBufRet.f32 %4372, 2
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4380 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4381 = fadd fast float %4377, %4238
  %4382 = fadd fast float %4379, %4239
  %4383 = fadd fast float %4371, %4380
  %4384 = fmul fast float %4381, %4373
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4374, float %4384)  ; FMad(a,b,c)
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4375, float %4385)  ; FMad(a,b,c)
  %4387 = fsub fast float %4386, %4380
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4390 = fsub fast float %4387, %4389
  %4391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.i32 %4391, 0
  %4393 = call i32 @dx.op.binary.i32(i32 40, i32 %4269, i32 %4392)  ; UMin(a,b)
  %4394 = mul i32 %4393, 36
  %4395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4396 = extractvalue %dx.types.ResRet.i32 %4395, 0
  %4397 = add i32 %4394, 4
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = fmul fast float %4399, %4291
  %4401 = fmul fast float %4399, %4293
  %4402 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4403 = fadd fast float %4400, %4402
  %4404 = fadd fast float %4401, %4402
  %4405 = icmp eq i32 %4396, 0
  br i1 %4405, label %4474, label %4406

; <label>:4406                                    ; preds = %4337
  br label %4407

; <label>:4407                                    ; preds = %4464, %4406
  %4408 = phi float [ %4465, %4464 ], [ 0.000000e+00, %4406 ]
  %4409 = phi float [ %4466, %4464 ], [ 0.000000e+00, %4406 ]
  %4410 = phi float [ %4467, %4464 ], [ 0.000000e+00, %4406 ]
  %4411 = phi float [ %4468, %4464 ], [ 0.000000e+00, %4406 ]
  %4412 = phi float [ %4469, %4464 ], [ 0.000000e+00, %4406 ]
  %4413 = phi float [ %4470, %4464 ], [ 0.000000e+00, %4406 ]
  %4414 = phi i32 [ %4471, %4464 ], [ 0, %4406 ]
  %4415 = shl i32 %4414, 2
  %4416 = add i32 %4282, %4415
  %4417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = add i32 %4286, %4415
  %4420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.i32 %4420, 0
  %4422 = add i32 %4421, 0
  %4423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4422, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4424 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4423, i32 0)  ; GetDimensions(handle,mipLevel)
  %4425 = extractvalue %dx.types.Dimensions %4424, 0
  %4426 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4425)  ; FirstbitLo(value)
  %4427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.i32 %4427, 1
  %4429 = sub nsw i32 %4428, %4426
  %4430 = sitofp i32 %4429 to float
  %4431 = fsub fast float %4315, %4430
  %4432 = call float @dx.op.binary.f32(i32 35, float %4431, float 0.000000e+00)  ; FMax(a,b)
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4423, %dx.types.Handle %37, float %4403, float %4404, float %4418, float undef, i32 0, i32 0, i32 undef, float %4432)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = fcmp fast ogt float %4434, 0.000000e+00
  br i1 %4435, label %4436, label %4464

; <label>:4436                                    ; preds = %4407
  %4437 = add i32 %4397, %4415
  %4438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4439 = extractvalue %dx.types.ResRet.i32 %4438, 0
  %4440 = and i32 %4439, 32767
  %4441 = mul nuw nsw i32 %4440, 928
  %4442 = add nuw nsw i32 %4441, 48
  %4443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.ResRet.f32 %4443, 1
  %4446 = extractvalue %dx.types.ResRet.f32 %4443, 2
  %4447 = add nuw nsw i32 %4441, 60
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = fmul fast float %4444, %4434
  %4453 = fmul fast float %4445, %4434
  %4454 = fmul fast float %4446, %4434
  %4455 = fadd fast float %4452, %4408
  %4456 = fadd fast float %4453, %4409
  %4457 = fadd fast float %4454, %4410
  %4458 = fmul fast float %4449, %4434
  %4459 = fmul fast float %4450, %4434
  %4460 = fmul fast float %4451, %4434
  %4461 = fadd fast float %4458, %4411
  %4462 = fadd fast float %4459, %4412
  %4463 = fadd fast float %4460, %4413
  br label %4464

; <label>:4464                                    ; preds = %4436, %4407
  %4465 = phi float [ %4455, %4436 ], [ %4408, %4407 ]
  %4466 = phi float [ %4456, %4436 ], [ %4409, %4407 ]
  %4467 = phi float [ %4457, %4436 ], [ %4410, %4407 ]
  %4468 = phi float [ %4461, %4436 ], [ %4411, %4407 ]
  %4469 = phi float [ %4462, %4436 ], [ %4412, %4407 ]
  %4470 = phi float [ %4463, %4436 ], [ %4413, %4407 ]
  %4471 = add nuw i32 %4414, 1
  %4472 = icmp eq i32 %4471, %4396
  br i1 %4472, label %4473, label %4407

; <label>:4473                                    ; preds = %4464
  br label %4474

; <label>:4474                                    ; preds = %4473, %4337
  %4475 = phi float [ 0.000000e+00, %4337 ], [ %4465, %4473 ]
  %4476 = phi float [ 0.000000e+00, %4337 ], [ %4466, %4473 ]
  %4477 = phi float [ 0.000000e+00, %4337 ], [ %4467, %4473 ]
  %4478 = phi float [ 0.000000e+00, %4337 ], [ %4468, %4473 ]
  %4479 = phi float [ 0.000000e+00, %4337 ], [ %4469, %4473 ]
  %4480 = phi float [ 0.000000e+00, %4337 ], [ %4470, %4473 ]
  %4481 = fadd fast float %4478, %4475
  %4482 = fmul fast float %4481, 0x3F847AE140000000
  %4483 = fadd fast float %4479, %4476
  %4484 = fmul fast float %4483, 0x3F847AE140000000
  %4485 = fadd fast float %4480, %4477
  %4486 = fmul fast float %4485, 0x3F847AE140000000
  br label %4487

; <label>:4487                                    ; preds = %4474, %4271, %4216, %4213, %4184, %4146
  %4488 = phi float [ %4198, %4184 ], [ -1.310720e+05, %4146 ], [ %4390, %4474 ], [ -1.310720e+05, %4216 ], [ -1.310720e+05, %4271 ], [ -1.310720e+05, %4213 ]
  %4489 = phi float [ %4208, %4184 ], [ 0.000000e+00, %4146 ], [ %4482, %4474 ], [ 0.000000e+00, %4216 ], [ 0.000000e+00, %4271 ], [ 0.000000e+00, %4213 ]
  %4490 = phi float [ %4210, %4184 ], [ 0.000000e+00, %4146 ], [ %4484, %4474 ], [ 0.000000e+00, %4216 ], [ 0.000000e+00, %4271 ], [ 0.000000e+00, %4213 ]
  %4491 = phi float [ %4212, %4184 ], [ 0.000000e+00, %4146 ], [ %4486, %4474 ], [ 0.000000e+00, %4216 ], [ 0.000000e+00, %4271 ], [ 0.000000e+00, %4213 ]
  %4492 = phi i1 [ true, %4184 ], [ false, %4146 ], [ true, %4474 ], [ false, %4216 ], [ false, %4271 ], [ false, %4213 ]
  %4493 = and i32 %191, 3
  %4494 = icmp eq i32 %4493, 1
  %4495 = select i1 %4494, float 1.000000e+00, float 0.000000e+00
  %4496 = fsub fast float %4488, %143
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = select i1 %4492, float %4497, float 1.000000e+00
  %4499 = fmul fast float %4498, %4495
  %4500 = icmp eq i32 %4493, 3
  %4501 = select i1 %4500, float 1.000000e+00, float %4499
  %4502 = call float @dx.op.binary.f32(i32 35, float %4066, float %4501)  ; FMax(a,b)
  %4503 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4504 = fcmp fast une float %4503, 0.000000e+00
  %4505 = fsub fast float -0.000000e+00, %161
  %4506 = fsub fast float -0.000000e+00, %162
  %4507 = fsub fast float -0.000000e+00, %163
  br i1 %4504, label %4508, label %4670

; <label>:4508                                    ; preds = %4487
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4506, float %4507, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = fmul fast float %4503, 2.500000e+00
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4503, 0x4013FFFFE0000000
  %4513 = fadd fast float %4512, 0xBFFFFFFFE0000000
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4503, 0x4004000020000000
  %4516 = fadd fast float %4515, 0xBFF8000040000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4519 = fmul fast float %4092, 1.000000e+01
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, 2.000000e+00
  %4522 = fsub fast float 3.000000e+00, %4521
  %4523 = fmul fast float %4520, %4520
  %4524 = fmul fast float %4523, %4522
  %4525 = fsub fast float 1.000000e+00, %4524
  %4526 = fsub fast float 0x3FE3333340000000, %4113
  %4527 = fmul fast float %4526, 0x400AAAAAA0000000
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4529 = fmul fast float %4525, %4528
  %4530 = fmul fast float %4125, 0x3FEA2B8620000000
  %4531 = fmul fast float %4126, 0x3FEA2B8620000000
  %4532 = fmul fast float %4127, 0x3FEA2B8620000000
  %4533 = fadd fast float %4530, 0x3FC81DFBA0000000
  %4534 = fmul fast float %4533, %4125
  %4535 = fadd fast float %4534, 0x3F910E6020000000
  %4536 = fadd fast float %4531, 0x3FC81DFBA0000000
  %4537 = fmul fast float %4536, %4126
  %4538 = fadd fast float %4537, 0x3F910E6020000000
  %4539 = fadd fast float %4532, 0x3FC81DFBA0000000
  %4540 = fmul fast float %4539, %4127
  %4541 = fadd fast float %4540, 0x3F910E6020000000
  %4542 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4544 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4545 = fsub fast float %4542, %4125
  %4546 = fsub fast float %4543, %4126
  %4547 = fsub fast float %4544, %4127
  %4548 = fmul fast float %4545, %4518
  %4549 = fmul fast float %4548, %4529
  %4550 = fmul fast float %4546, %4518
  %4551 = fmul fast float %4550, %4529
  %4552 = fmul fast float %4547, %4518
  %4553 = fmul fast float %4552, %4529
  %4554 = fadd fast float %4549, %4125
  %4555 = fadd fast float %4551, %4126
  %4556 = fadd fast float %4553, %4127
  %4557 = fmul fast float %4063, %4063
  %4558 = fmul fast float %4557, %4557
  %4559 = fadd fast float %4514, 1.000000e+00
  %4560 = fsub fast float %4559, %4529
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4564 = fsub fast float 1.000000e+00, %4558
  %4565 = call float @dx.op.binary.f32(i32 36, float %4561, float %4564)  ; FMin(a,b)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4567 = call float @dx.op.binary.f32(i32 35, float %4565, float %4566)  ; FMax(a,b)
  %4568 = fadd fast float %4563, 0xBFE4CCCCC0000000
  %4569 = fmul fast float %4568, 0x4006DB6DA0000000
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fmul fast float %4570, 2.000000e+00
  %4572 = fsub fast float 3.000000e+00, %4571
  %4573 = bitcast float %4110 to i32
  %4574 = ashr i32 %4573, 1
  %4575 = add nsw i32 %4574, 532487669
  %4576 = bitcast i32 %4575 to float
  %4577 = fsub fast float 1.000000e+00, %4576
  %4578 = bitcast float %4577 to i32
  %4579 = sub nsw i32 2129859010, %4578
  %4580 = bitcast i32 %4579 to float
  %4581 = fmul fast float %4580, 2.000000e+00
  %4582 = bitcast float %4111 to i32
  %4583 = ashr i32 %4582, 1
  %4584 = add nsw i32 %4583, 532487669
  %4585 = bitcast i32 %4584 to float
  %4586 = fsub fast float 1.000000e+00, %4585
  %4587 = bitcast float %4586 to i32
  %4588 = sub nsw i32 2129859010, %4587
  %4589 = bitcast i32 %4588 to float
  %4590 = fmul fast float %4589, 2.000000e+00
  %4591 = bitcast float %4112 to i32
  %4592 = ashr i32 %4591, 1
  %4593 = add nsw i32 %4592, 532487669
  %4594 = bitcast i32 %4593 to float
  %4595 = fsub fast float 1.000000e+00, %4594
  %4596 = bitcast float %4595 to i32
  %4597 = sub nsw i32 2129859010, %4596
  %4598 = bitcast i32 %4597 to float
  %4599 = fmul fast float %4598, 2.000000e+00
  %4600 = fsub fast float 0x4002A9FBE0000000, %4581
  %4601 = fadd fast float %4581, 0x3FD54FDF00000000
  %4602 = bitcast float %4601 to i32
  %4603 = sub nsw i32 2129859010, %4602
  %4604 = bitcast i32 %4603 to float
  %4605 = fmul fast float %4604, %4600
  %4606 = fmul fast float %4605, %4605
  %4607 = fsub fast float 0x4002A9FBE0000000, %4590
  %4608 = fadd fast float %4590, 0x3FD54FDF00000000
  %4609 = bitcast float %4608 to i32
  %4610 = sub nsw i32 2129859010, %4609
  %4611 = bitcast i32 %4610 to float
  %4612 = fmul fast float %4611, %4607
  %4613 = fmul fast float %4612, %4612
  %4614 = fsub fast float 0x4002A9FBE0000000, %4599
  %4615 = fadd fast float %4599, 0x3FD54FDF00000000
  %4616 = bitcast float %4615 to i32
  %4617 = sub nsw i32 2129859010, %4616
  %4618 = bitcast i32 %4617 to float
  %4619 = fmul fast float %4618, %4614
  %4620 = fmul fast float %4619, %4619
  %4621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4606)  ; FMax(a,b)
  %4622 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4613)  ; FMax(a,b)
  %4623 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4620)  ; FMax(a,b)
  %4624 = fsub fast float 1.000000e+00, %4509
  %4625 = fadd fast float %4624, %4525
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fsub fast float 1.000000e+00, %4501
  %4628 = fmul fast float %4567, %4627
  %4629 = fmul fast float %4570, %4570
  %4630 = fmul fast float %4629, %4628
  %4631 = fmul fast float %4630, %4572
  %4632 = fmul fast float %4627, 0xBFE99999A0000000
  %4633 = fmul fast float %4632, %4518
  %4634 = fmul fast float %4633, %4529
  %4635 = fadd fast float %4634, 1.000000e+00
  %4636 = fadd fast float %4113, -1.000000e+00
  %4637 = fmul fast float %4635, %4636
  %4638 = fadd fast float %4637, 1.000000e+00
  %4639 = fsub fast float %4621, %4110
  %4640 = fsub fast float %4622, %4111
  %4641 = fsub fast float %4623, %4112
  %4642 = fmul fast float %4631, %4639
  %4643 = fmul fast float %4631, %4640
  %4644 = fmul fast float %4631, %4641
  %4645 = fadd fast float %4642, %4110
  %4646 = fadd fast float %4643, %4111
  %4647 = fadd fast float %4644, %4112
  %4648 = fsub fast float %85, %4051
  %4649 = fsub fast float %86, %4052
  %4650 = fsub fast float %87, %4053
  %4651 = fmul fast float %4631, %4648
  %4652 = fmul fast float %4631, %4649
  %4653 = fmul fast float %4631, %4650
  %4654 = fadd fast float %4651, %4051
  %4655 = fadd fast float %4652, %4052
  %4656 = fadd fast float %4653, %4053
  %4657 = fmul fast float %4631, %4626
  %4658 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = fmul fast float %4657, %4659
  %4661 = fadd fast float %4660, %4658
  %4662 = fsub fast float 1.000000e+00, %4063
  %4663 = fmul fast float %4631, %4662
  %4664 = fadd fast float %4663, %4063
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %4654, float %4655, float %4656)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 25, float %4665)  ; Rsqrt(value)
  %4667 = fmul fast float %4654, %4666
  %4668 = fmul fast float %4655, %4666
  %4669 = fmul fast float %4656, %4666
  br label %4670

; <label>:4670                                    ; preds = %4508, %4487
  %4671 = phi float [ %4645, %4508 ], [ %4110, %4487 ]
  %4672 = phi float [ %4646, %4508 ], [ %4111, %4487 ]
  %4673 = phi float [ %4647, %4508 ], [ %4112, %4487 ]
  %4674 = phi float [ %4667, %4508 ], [ %4051, %4487 ]
  %4675 = phi float [ %4668, %4508 ], [ %4052, %4487 ]
  %4676 = phi float [ %4669, %4508 ], [ %4053, %4487 ]
  %4677 = phi float [ %4554, %4508 ], [ %4125, %4487 ]
  %4678 = phi float [ %4555, %4508 ], [ %4126, %4487 ]
  %4679 = phi float [ %4556, %4508 ], [ %4127, %4487 ]
  %4680 = phi float [ %4661, %4508 ], [ %4113, %4487 ]
  %4681 = phi float [ %4664, %4508 ], [ %4063, %4487 ]
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 2
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 3
  %4685 = fmul fast float %4683, %78
  %4686 = fmul fast float %4684, %79
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 0
  %4689 = extractvalue %dx.types.CBufRet.f32 %4687, 1
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4685, float %4686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = fmul fast float %4691, %4689
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fadd fast float %4693, -1.000000e+00
  %4695 = fmul fast float %4694, %4688
  %4696 = fadd fast float %4695, 1.000000e+00
  %4697 = select i1 %215, float 0.000000e+00, float %4673
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %4505, float %4506, float %4507)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = fmul fast float %4700, 2.000000e+00
  %4702 = fmul fast float %4701, %4674
  %4703 = fmul fast float %4701, %4675
  %4704 = fmul fast float %4701, %4676
  %4705 = fsub fast float %161, %4702
  %4706 = fsub fast float %162, %4703
  %4707 = fsub fast float %163, %4704
  %4708 = call float @dx.op.binary.f32(i32 36, float %4681, float %4696)  ; FMin(a,b)
  %4709 = fsub fast float 1.000000e+00, %4708
  %4710 = bitcast float %4709 to i32
  %4711 = ashr i32 %4710, 1
  %4712 = add nsw i32 %4711, 532487669
  %4713 = bitcast i32 %4712 to float
  %4714 = fsub fast float 1.000000e+00, %4680
  %4715 = call float @dx.op.binary.f32(i32 35, float %4714, float 0x3F847AE140000000)  ; FMax(a,b)
  %4716 = fmul fast float %4715, %4715
  %4717 = fmul fast float %4716, %4716
  %4718 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4713, float %4717, float %4718, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = fsub fast float 1.000000e+00, %4681
  %4722 = bitcast float %4721 to i32
  %4723 = sub nsw i32 2129859010, %4722
  %4724 = fsub fast float 1.000000e+00, %55
  %4725 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4725, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4727 = fdiv fast float %4724, %4726
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4729, 5.000000e-01
  %4731 = fadd fast float %4730, 5.000000e-01
  %4732 = fmul fast float %4731, %55
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4734, %4727
  %4736 = fadd fast float %4732, %4735
  %4737 = fsub fast float 5.000000e-01, %4730
  %4738 = fmul fast float %4737, %4677
  %4739 = fmul fast float %4737, %4678
  %4740 = fmul fast float %4737, %4679
  %4741 = fadd fast float %4736, %4738
  %4742 = fadd fast float %4736, %4739
  %4743 = fadd fast float %4736, %4740
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4706, float %4707, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 5.000000e-01
  %4747 = fadd fast float %4746, 5.000000e-01
  %4748 = fmul fast float %4747, %55
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4706, float %4707, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4750, %4727
  %4752 = fadd fast float %4748, %4751
  %4753 = fsub fast float 5.000000e-01, %4746
  %4754 = fmul fast float %4753, %4677
  %4755 = fmul fast float %4753, %4678
  %4756 = fmul fast float %4753, %4679
  %4757 = fadd fast float %4752, %4754
  %4758 = fadd fast float %4752, %4755
  %4759 = fadd fast float %4752, %4756
  %4760 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = call float @dx.op.binary.f32(i32 36, float %4677, float %4762)  ; FMin(a,b)
  %4764 = fmul fast float %4763, %4709
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = bitcast float %4765 to i32
  %4767 = sub nsw i32 2129859010, %4766
  %4768 = bitcast i32 %4767 to float
  %4769 = call float @dx.op.binary.f32(i32 36, float %4678, float %4762)  ; FMin(a,b)
  %4770 = fmul fast float %4769, %4709
  %4771 = fsub fast float 1.000000e+00, %4770
  %4772 = bitcast float %4771 to i32
  %4773 = sub nsw i32 2129859010, %4772
  %4774 = bitcast i32 %4773 to float
  %4775 = call float @dx.op.binary.f32(i32 36, float %4679, float %4762)  ; FMin(a,b)
  %4776 = fmul fast float %4775, %4709
  %4777 = fsub fast float 1.000000e+00, %4776
  %4778 = bitcast float %4777 to i32
  %4779 = sub nsw i32 2129859010, %4778
  %4780 = bitcast i32 %4779 to float
  %4781 = fmul fast float %4708, %56
  %4782 = fmul fast float %4781, %4741
  %4783 = fmul fast float %4782, %4768
  %4784 = fmul fast float %4708, %57
  %4785 = fmul fast float %4784, %4742
  %4786 = fmul fast float %4785, %4774
  %4787 = fmul fast float %4708, %58
  %4788 = fmul fast float %4787, %4743
  %4789 = fmul fast float %4788, %4780
  %4790 = call float @dx.op.binary.f32(i32 36, float %4671, float %4762)  ; FMin(a,b)
  %4791 = fmul fast float %4790, %4709
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = bitcast float %4792 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = call float @dx.op.binary.f32(i32 36, float %4672, float %4762)  ; FMin(a,b)
  %4797 = fmul fast float %4796, %4709
  %4798 = fsub fast float 1.000000e+00, %4797
  %4799 = bitcast float %4798 to i32
  %4800 = sub nsw i32 2129859010, %4799
  %4801 = bitcast i32 %4800 to float
  %4802 = call float @dx.op.binary.f32(i32 36, float %4697, float %4762)  ; FMin(a,b)
  %4803 = fmul fast float %4802, %4709
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = bitcast float %4804 to i32
  %4806 = sub nsw i32 2129859010, %4805
  %4807 = bitcast i32 %4806 to float
  %4808 = fmul fast float %4781, %4757
  %4809 = fmul fast float %4808, %4795
  %4810 = fmul fast float %4784, %4758
  %4811 = fmul fast float %4810, %4801
  %4812 = fmul fast float %4787, %4759
  %4813 = fmul fast float %4812, %4807
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4786, float %4789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = select i1 %215, float 0.000000e+00, float %4783
  %4816 = select i1 %215, float %4814, float %4786
  %4817 = select i1 %215, float 0.000000e+00, float %4789
  %4818 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4811, float %4813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4819 = select i1 %215, float 0.000000e+00, float %4809
  %4820 = select i1 %215, float %4818, float %4811
  %4821 = select i1 %215, float 0.000000e+00, float %4813
  %4822 = fmul fast float %4699, 9.843750e-01
  %4823 = fmul fast float %4680, 9.843750e-01
  %4824 = fadd fast float %4822, 7.812500e-03
  %4825 = fadd fast float %4823, 7.812500e-03
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4824, float %4825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 2
  %4828 = extractvalue %dx.types.ResRet.f32 %4826, 3
  %4829 = fmul fast float %4827, %4671
  %4830 = fmul fast float %4827, %4672
  %4831 = fmul fast float %4827, %4697
  %4832 = fadd fast float %4829, %4828
  %4833 = fadd fast float %4830, %4828
  %4834 = fadd fast float %4831, %4828
  %4835 = fcmp fast ogt float %4064, 0.000000e+00
  br i1 %4835, label %4836, label %4862

; <label>:4836                                    ; preds = %4670
  %4837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4064, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4838 = extractvalue %dx.types.ResRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.ResRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.ResRet.f32 %4837, 2
  %4841 = fadd fast float %4838, -5.000000e-01
  %4842 = fadd fast float %4839, -5.000000e-01
  %4843 = fadd fast float %4840, -5.000000e-01
  %4844 = fsub fast float 1.000000e+00, %4671
  %4845 = fsub fast float 1.000000e+00, %4672
  %4846 = fsub fast float 1.000000e+00, %4697
  %4847 = fmul fast float %4671, 4.000000e+00
  %4848 = fmul fast float %4847, %4844
  %4849 = fmul fast float %4848, %4841
  %4850 = fmul fast float %4672, 4.000000e+00
  %4851 = fmul fast float %4850, %4845
  %4852 = fmul fast float %4851, %4842
  %4853 = fmul fast float %4697, 4.000000e+00
  %4854 = fmul fast float %4853, %4846
  %4855 = fmul fast float %4854, %4843
  %4856 = fadd fast float %4849, %4832
  %4857 = fadd fast float %4852, %4833
  %4858 = fadd fast float %4855, %4834
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  br label %4862

; <label>:4862                                    ; preds = %4836, %4670
  %4863 = phi float [ %4859, %4836 ], [ %4832, %4670 ]
  %4864 = phi float [ %4860, %4836 ], [ %4833, %4670 ]
  %4865 = phi float [ %4861, %4836 ], [ %4834, %4670 ]
  %4866 = call float @dx.op.binary.f32(i32 35, float %4864, float %4865)  ; FMax(a,b)
  %4867 = call float @dx.op.binary.f32(i32 35, float %4863, float %4866)  ; FMax(a,b)
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = fmul fast float %4867, %4680
  %4870 = fadd fast float %4869, %4680
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4876 = fmul fast float %4870, %4872
  %4877 = fadd fast float %4876, %4873
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4874, %4870
  %4880 = fadd fast float %4879, %4875
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fsub fast float 1.000000e+00, %4720
  %4883 = fadd fast float %4882, %4881
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fcmp fast olt float %4884, 1.000000e+00
  br i1 %4885, label %4886, label %5741

; <label>:4886                                    ; preds = %4862
  %4887 = fcmp fast olt float %4878, 1.000000e+00
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = fcmp fast ogt float %4889, 0.000000e+00
  %4891 = or i1 %4887, %4890
  %4892 = or i1 %4887, %4890
  %4893 = xor i1 %4892, true
  %4894 = zext i1 %4893 to i32
  br i1 %4891, label %4895, label %5138

; <label>:4895                                    ; preds = %4886
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4900 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.CBufRet.f32 %4901, 2
  %4905 = extractvalue %dx.types.CBufRet.f32 %4901, 3
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.CBufRet.f32 %4906, 2
  %4910 = extractvalue %dx.types.CBufRet.f32 %4906, 3
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4915 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.CBufRet.f32 %4916, 2
  %4920 = extractvalue %dx.types.CBufRet.f32 %4916, 3
  %4921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4922 = extractvalue %dx.types.CBufRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.CBufRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.CBufRet.f32 %4921, 2
  %4925 = extractvalue %dx.types.CBufRet.f32 %4921, 3
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float %4705, float %4706, float %4707)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 6, float %4927)  ; FAbs(value)
  %4929 = fmul fast float %4928, 8.000000e+00
  %4930 = fadd fast float %4929, -6.000000e+00
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fmul fast float %4926, 8.000000e+00
  %4933 = fmul fast float %4932, %4889
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fcmp fast ogt float %4934, 0.000000e+00
  br i1 %4935, label %4936, label %5113, !dx.controlflow.hints !82

; <label>:4936                                    ; preds = %4895
  %4937 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4939 = fsub fast float %4937, %4938
  %4940 = fmul fast float %4939, %4680
  %4941 = fadd fast float %4940, %4938
  %4942 = fmul fast float %228, 2.000000e+00
  %4943 = fmul fast float %229, 2.000000e+00
  %4944 = fadd fast float %4942, -1.000000e+00
  %4945 = fadd fast float %4943, -1.000000e+00
  %4946 = fmul fast float %4941, %4944
  %4947 = fmul fast float %4941, %4945
  %4948 = fadd fast float %4946, %78
  %4949 = fadd fast float %4947, %79
  %4950 = fmul fast float %4948, %4683
  %4951 = fmul fast float %4949, %4684
  %4952 = fadd fast float %4680, 0xBFE3333340000000
  %4953 = fmul fast float %4952, 0x4004000020000000
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fmul fast float %4955, 3.000000e+00
  %4957 = fadd fast float %4956, %228
  %4958 = call float @dx.op.unary.f32(i32 27, float %4957)  ; Round_ni(value)
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4950, float %4951, float %4958, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = fcmp fast une float %4960, 0xFFF0000000000000
  %4962 = fcmp fast une float %4960, 0x7FF0000000000000
  %4963 = and i1 %4961, %4962
  %4964 = fcmp fast olt float %4960, 0.000000e+00
  %4965 = call float @dx.op.unary.f32(i32 6, float %4960)  ; FAbs(value)
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = select i1 %4963, float 1.000000e+00, float 0.000000e+00
  %4968 = fmul fast float %4967, %4934
  %4969 = fcmp fast ogt float %4968, 0.000000e+00
  br i1 %4969, label %4970, label %5113, !dx.controlflow.hints !83

; <label>:4970                                    ; preds = %4936
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4975 = select i1 %4964, float 0.000000e+00, float %4972
  %4976 = select i1 %4964, float 0.000000e+00, float %4973
  %4977 = select i1 %4964, float 0.000000e+00, float %4974
  %4978 = select i1 %4964, float %4897, float %4912
  %4979 = select i1 %4964, float %4902, float %4917
  %4980 = select i1 %4964, float %4907, float %4922
  %4981 = select i1 %4964, float %4898, float %4913
  %4982 = select i1 %4964, float %4903, float %4918
  %4983 = select i1 %4964, float %4908, float %4923
  %4984 = select i1 %4964, float %4899, float %4914
  %4985 = select i1 %4964, float %4904, float %4919
  %4986 = select i1 %4964, float %4909, float %4924
  %4987 = select i1 %4964, float %4900, float %4915
  %4988 = select i1 %4964, float %4905, float %4920
  %4989 = select i1 %4964, float %4910, float %4925
  %4990 = fadd fast float %4975, %141
  %4991 = fadd fast float %4976, %142
  %4992 = fadd fast float %4977, %143
  %4993 = fmul fast float %4990, %4978
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4981, float %4993)  ; FMad(a,b,c)
  %4995 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4984, float %4994)  ; FMad(a,b,c)
  %4996 = fadd fast float %4995, %4987
  %4997 = fmul fast float %4990, %4979
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4982, float %4997)  ; FMad(a,b,c)
  %4999 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4985, float %4998)  ; FMad(a,b,c)
  %5000 = fadd fast float %4999, %4988
  %5001 = fmul fast float %4990, %4980
  %5002 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4983, float %5001)  ; FMad(a,b,c)
  %5003 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4986, float %5002)  ; FMad(a,b,c)
  %5004 = fadd fast float %5003, %4989
  %5005 = fdiv fast float 1.000000e+00, %5004
  %5006 = fmul fast float %5005, %4996
  %5007 = fmul fast float %5005, %5000
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5011 = fmul fast float %5006, %5009
  %5012 = fmul fast float %5007, %5010
  %5013 = extractvalue %dx.types.CBufRet.f32 %5008, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5015 = fadd fast float %5011, %5013
  %5016 = fadd fast float %5012, %5014
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5019 = fmul fast float %5018, %4705
  %5020 = fmul fast float %5018, %4706
  %5021 = fmul fast float %5018, %4707
  %5022 = fadd fast float %5019, %4990
  %5023 = fadd fast float %5020, %4991
  %5024 = fadd fast float %5021, %4992
  %5025 = fmul fast float %5022, %4978
  %5026 = call float @dx.op.tertiary.f32(i32 46, float %5023, float %4981, float %5025)  ; FMad(a,b,c)
  %5027 = call float @dx.op.tertiary.f32(i32 46, float %5024, float %4984, float %5026)  ; FMad(a,b,c)
  %5028 = fadd fast float %5027, %4987
  %5029 = fmul fast float %5022, %4979
  %5030 = call float @dx.op.tertiary.f32(i32 46, float %5023, float %4982, float %5029)  ; FMad(a,b,c)
  %5031 = call float @dx.op.tertiary.f32(i32 46, float %5024, float %4985, float %5030)  ; FMad(a,b,c)
  %5032 = fadd fast float %5031, %4988
  %5033 = fmul fast float %5022, %4980
  %5034 = call float @dx.op.tertiary.f32(i32 46, float %5023, float %4983, float %5033)  ; FMad(a,b,c)
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %5024, float %4986, float %5034)  ; FMad(a,b,c)
  %5036 = fadd fast float %5035, %4989
  %5037 = fdiv fast float 1.000000e+00, %5036
  %5038 = fmul fast float %5037, %5028
  %5039 = fmul fast float %5037, %5032
  %5040 = fmul fast float %5015, 2.000000e+00
  %5041 = fadd fast float %5040, -1.000000e+00
  %5042 = call float @dx.op.unary.f32(i32 6, float %5041)  ; FAbs(value)
  %5043 = fmul fast float %5042, 5.000000e+00
  %5044 = fadd fast float %5043, -4.000000e+00
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, %4931
  %5047 = fsub fast float %5006, %5038
  %5048 = fmul fast float %5009, %5047
  %5049 = fmul fast float %5046, %5048
  %5050 = fsub fast float %5038, %5006
  %5051 = fmul fast float %5009, %5050
  %5052 = fadd fast float %5051, %5049
  %5053 = fsub fast float %5039, %5007
  %5054 = fmul fast float %5010, %5053
  %5055 = fmul fast float %5052, %4966
  %5056 = fmul fast float %5054, %4966
  %5057 = fadd fast float %5055, %5015
  %5058 = fadd fast float %5056, %5016
  %5059 = fsub fast float %5037, %5005
  %5060 = fmul fast float %5059, %4966
  %5061 = fadd fast float %5060, %5005
  %5062 = fdiv fast float 1.000000e+00, %5061
  %5063 = fadd fast float %4680, -1.000000e+00
  %5064 = fsub fast float %5062, %5004
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 2
  %5067 = fmul fast float %5066, %5062
  %5068 = fdiv fast float 1.600000e+02, %5067
  %5069 = fmul fast float %5063, %5063
  %5070 = fmul fast float %5069, 0xBFB5B17960000000
  %5071 = fmul fast float %5070, %5064
  %5072 = fmul fast float %5071, %5068
  %5073 = call float @dx.op.unary.f32(i32 21, float %5072)  ; Exp(value)
  %5074 = fmul fast float %5073, 0x3FF04B2960000000
  %5075 = fsub fast float 0x3FF04B2960000000, %5074
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, 4.000000e+00
  %5078 = fadd fast float %228, -5.000000e-01
  %5079 = fadd fast float %229, -5.000000e-01
  %5080 = fmul fast float %5076, 0x3FBEB851E0000000
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = fmul fast float %5081, %5078
  %5083 = fmul fast float %5081, %5079
  %5084 = fadd fast float %5057, %5082
  %5085 = fadd fast float %5058, %5083
  %5086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5084, float %5085, float undef, float undef, i32 0, i32 0, i32 undef, float %5077)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.ResRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.ResRet.f32 %5086, 2
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5092 = fmul fast float %5091, %5087
  %5093 = fmul fast float %5091, %5088
  %5094 = fmul fast float %5091, %5089
  %5095 = select i1 %215, float 0.000000e+00, float %5093
  %5096 = select i1 %215, float 0.000000e+00, float %5094
  %5097 = fmul fast float %5084, 2.000000e+00
  %5098 = fmul fast float %5085, 2.000000e+00
  %5099 = fadd fast float %5097, -1.000000e+00
  %5100 = fadd fast float %5098, -1.000000e+00
  %5101 = fmul fast float %5099, %5099
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fsub fast float 1.000000e+00, %5103
  %5105 = fmul fast float %5104, %4931
  %5106 = fadd fast float %5105, %5103
  %5107 = fmul fast float %5100, %5100
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fmul fast float %5106, %5109
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %5111, %4968
  br label %5113

; <label>:5113                                    ; preds = %4970, %4936, %4895
  %5114 = phi float [ %5092, %4970 ], [ 0.000000e+00, %4936 ], [ 0.000000e+00, %4895 ]
  %5115 = phi float [ %5095, %4970 ], [ 0.000000e+00, %4936 ], [ 0.000000e+00, %4895 ]
  %5116 = phi float [ %5096, %4970 ], [ 0.000000e+00, %4936 ], [ 0.000000e+00, %4895 ]
  %5117 = phi float [ %5112, %4970 ], [ 0.000000e+00, %4936 ], [ 0.000000e+00, %4895 ]
  %5118 = fcmp fast olt float %5117, 1.000000e+00
  %5119 = or i1 %5118, %4893
  %5120 = zext i1 %5119 to i32
  %5121 = fmul fast float %5117, %4878
  %5122 = fsub fast float %5117, %5121
  %5123 = fsub fast float 1.000000e+00, %4884
  %5124 = fmul fast float %5122, %5123
  %5125 = fadd fast float %5124, %4884
  %5126 = fsub fast float %5125, %5122
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %5127, %4819
  %5129 = fmul fast float %5127, %4820
  %5130 = fmul fast float %5127, %4821
  %5131 = fsub fast float -0.000000e+00, %5125
  %5132 = fmul fast float %5122, %5114
  %5133 = fmul fast float %5122, %5115
  %5134 = fmul fast float %5122, %5116
  %5135 = fadd fast float %5132, %5128
  %5136 = fadd fast float %5133, %5129
  %5137 = fadd fast float %5134, %5130
  br label %5138

; <label>:5138                                    ; preds = %5113, %4886
  %5139 = phi float [ %4884, %4886 ], [ %5131, %5113 ]
  %5140 = phi float [ %4819, %4886 ], [ %5135, %5113 ]
  %5141 = phi float [ %4820, %4886 ], [ %5136, %5113 ]
  %5142 = phi float [ %4821, %4886 ], [ %5137, %5113 ]
  %5143 = phi i32 [ %4894, %4886 ], [ %5120, %5113 ]
  %5144 = icmp eq i32 %5143, 0
  br i1 %5144, label %5741, label %5145

; <label>:5145                                    ; preds = %5138
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5149 = fmul fast float %5147, %78
  %5150 = fmul fast float %5148, %79
  %5151 = fptoui float %5149 to i32
  %5152 = fptoui float %5150 to i32
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5156 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5157 = fadd fast float %73, -4.000000e+00
  %5158 = call float @dx.op.binary.f32(i32 35, float %5157, float 0.000000e+00)  ; FMax(a,b)
  %5159 = fadd fast float %5158, %5154
  %5160 = fmul fast float %5159, %5155
  %5161 = call float @dx.op.unary.f32(i32 23, float %5160)  ; Log(value)
  %5162 = fmul fast float %5161, %5156
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5165 = fmul fast float %5162, %5164
  %5166 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.i32 %5167, 1
  %5169 = add i32 %5168, -1
  %5170 = uitofp i32 %5168 to float
  %5171 = fmul fast float %5170, %5166
  %5172 = fptoui float %5171 to i32
  %5173 = call i32 @dx.op.binary.i32(i32 40, i32 %5172, i32 %5169)  ; UMin(a,b)
  %5174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.i32 %5174, 2
  %5176 = extractvalue %dx.types.CBufRet.i32 %5174, 3
  %5177 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5152, i32 %5175, i32 %5151)  ; UMad(a,b,c)
  %5178 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5173, i32 %5176, i32 %5177)  ; UMad(a,b,c)
  %5179 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5180 = fptoui float %5179 to i32
  %5181 = lshr i32 %5180, 5
  %5182 = call i32 @dx.op.binary.i32(i32 40, i32 %5181, i32 8191)  ; UMin(a,b)
  %5183 = fcmp fast ogt float %4497, 0.000000e+00
  %5184 = fcmp fast ogt float %4707, 0.000000e+00
  %5185 = and i1 %5184, %5183
  br i1 %5185, label %5186, label %5215

; <label>:5186                                    ; preds = %5145
  %5187 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4706, float %4707, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.binary.f32(i32 35, float %5187, float -1.000000e+00)  ; FMax(a,b)
  %5189 = call float @dx.op.binary.f32(i32 36, float %5188, float 1.000000e+00)  ; FMin(a,b)
  %5190 = fmul fast float %5189, %5189
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fmul fast float %5191, 0x3FFC6E2300000000
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  %5195 = call float @dx.op.unary.f32(i32 24, float %5193)  ; Sqrt(value)
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = call float @dx.op.unary.f32(i32 23, float %5196)  ; Log(value)
  %5198 = fmul fast float %5197, 5.000000e+00
  %5199 = call float @dx.op.unary.f32(i32 21, float %5198)  ; Exp(value)
  %5200 = fmul fast float %5199, 0x3FEF591A60000000
  %5201 = fadd fast float %5200, 0x3F94DCB540000000
  %5202 = select i1 %5194, float %5201, float 1.000000e+00
  %5203 = fcmp fast oge float %5202, 1.000000e+00
  %5204 = fmul fast float %5187, 2.000000e+00
  %5205 = fadd fast float %5204, %4707
  %5206 = select i1 %5203, float %5205, float %4707
  %5207 = fsub fast float %5206, %4707
  %5208 = fmul fast float %5207, %4497
  %5209 = fadd fast float %5208, %4707
  %5210 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4706, float %5209, float %4705, float %4706, float %5209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = call float @dx.op.unary.f32(i32 25, float %5210)  ; Rsqrt(value)
  %5212 = fmul fast float %5211, %4705
  %5213 = fmul fast float %5211, %4706
  %5214 = fmul fast float %5209, %5211
  br label %5215

; <label>:5215                                    ; preds = %5186, %5145
  %5216 = phi float [ %5212, %5186 ], [ %4705, %5145 ]
  %5217 = phi float [ %5213, %5186 ], [ %4706, %5145 ]
  %5218 = phi float [ %5214, %5186 ], [ %4707, %5145 ]
  %5219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.i32 %5219, 2
  %5221 = add nsw i32 %5220, -1
  %5222 = call i32 @dx.op.binary.i32(i32 37, i32 %5221, i32 0)  ; IMax(a,b)
  %5223 = shl i32 %5182, 2
  %5224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5223, i32 undef)  ; BufferLoad(srv,index,wot)
  %5225 = extractvalue %dx.types.ResRet.i32 %5224, 0
  %5226 = lshr i32 %5225, 16
  %5227 = and i32 %5225, 65535
  %5228 = lshr i32 %5225, 21
  %5229 = lshr i32 %5227, 5
  %5230 = call i32 @dx.op.binary.i32(i32 40, i32 %5229, i32 %5222)  ; UMin(a,b)
  %5231 = icmp ugt i32 %5228, %5230
  br i1 %5231, label %5613, label %5232

; <label>:5232                                    ; preds = %5215
  br label %5233

; <label>:5233                                    ; preds = %5602, %5232
  %5234 = phi float [ %5603, %5602 ], [ 0.000000e+00, %5232 ]
  %5235 = phi float [ %5604, %5602 ], [ 0.000000e+00, %5232 ]
  %5236 = phi float [ %5605, %5602 ], [ 0.000000e+00, %5232 ]
  %5237 = phi float [ %5606, %5602 ], [ 1.000000e+00, %5232 ]
  %5238 = phi i32 [ %5610, %5602 ], [ %5228, %5232 ]
  %5239 = phi float [ %5607, %5602 ], [ 0.000000e+00, %5232 ]
  %5240 = phi float [ %5608, %5602 ], [ 0.000000e+00, %5232 ]
  %5241 = phi float [ %5609, %5602 ], [ 0.000000e+00, %5232 ]
  %5242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.i32 %5242, 2
  %5244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5178, i32 %5243, i32 %5238)  ; UMad(a,b,c)
  %5245 = shl i32 %5244, 2
  %5246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.i32 %5246, 0
  %5248 = shl i32 %5238, 5
  %5249 = sub nsw i32 %5226, %5248
  %5250 = call i32 @dx.op.binary.i32(i32 37, i32 %5249, i32 0)  ; IMax(a,b)
  %5251 = call i32 @dx.op.binary.i32(i32 38, i32 %5250, i32 31)  ; IMin(a,b)
  %5252 = sub nsw i32 1, %5226
  %5253 = add nsw i32 %5252, %5227
  %5254 = call i32 @dx.op.binary.i32(i32 37, i32 %5253, i32 0)  ; IMax(a,b)
  %5255 = call i32 @dx.op.binary.i32(i32 38, i32 %5254, i32 32)  ; IMin(a,b)
  %5256 = and i32 %5255, 31
  %5257 = shl i32 -1, %5256
  %5258 = xor i32 %5257, -1
  %5259 = and i32 %5251, 31
  %5260 = shl i32 %5258, %5259
  %5261 = icmp eq i32 %5255, 32
  %5262 = select i1 %5261, i32 -1, i32 %5260
  %5263 = and i32 %5262, %5247
  %5264 = icmp eq i32 %5263, 0
  br i1 %5264, label %5602, label %5265

; <label>:5265                                    ; preds = %5233
  br label %5266

; <label>:5266                                    ; preds = %5376, %5265
  %5267 = phi float [ %5377, %5376 ], [ %5234, %5265 ]
  %5268 = phi float [ %5378, %5376 ], [ %5235, %5265 ]
  %5269 = phi float [ %5379, %5376 ], [ %5236, %5265 ]
  %5270 = phi float [ %5380, %5376 ], [ %5237, %5265 ]
  %5271 = phi i32 [ %5279, %5376 ], [ %5263, %5265 ]
  %5272 = phi float [ %5381, %5376 ], [ %5239, %5265 ]
  %5273 = phi float [ %5382, %5376 ], [ %5240, %5265 ]
  %5274 = phi float [ %5383, %5376 ], [ %5241, %5265 ]
  %5275 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5271)  ; FirstbitLo(value)
  %5276 = add i32 %5275, %5248
  %5277 = and i32 %5275, 31
  %5278 = shl i32 1, %5277
  %5279 = xor i32 %5278, %5271
  %5280 = mul i32 %5276, 72
  %5281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5280, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = add i32 %5280, 12
  %5286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.i32 %5286, 0
  %5288 = add i32 %5280, 16
  %5289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5293 = add i32 %5280, 28
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = add i32 %5280, 32
  %5297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.ResRet.f32 %5297, 1
  %5300 = extractvalue %dx.types.ResRet.f32 %5297, 2
  %5301 = extractvalue %dx.types.ResRet.f32 %5297, 3
  %5302 = add i32 %5280, 48
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = add i32 %5280, 56
  %5307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 1
  %5310 = add i32 %5280, 64
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = mul i32 %5276, 60
  %5315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5314, i32 undef)  ; BufferLoad(srv,index,wot)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  %5319 = add i32 %5314, 12
  %5320 = add i32 %5314, 48
  %5321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5320, i32 undef)  ; BufferLoad(srv,index,wot)
  %5322 = extractvalue %dx.types.ResRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.ResRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.ResRet.f32 %5321, 2
  %5325 = and i32 %5287, 32767
  %5326 = bitcast float %5282 to i32
  %5327 = icmp eq i32 %5326, -1
  %5328 = bitcast float %5283 to i32
  %5329 = and i32 %5287, 32768
  %5330 = icmp ne i32 %5329, 0
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5335 = fsub fast float %5316, %5332
  %5336 = fsub fast float %5317, %5333
  %5337 = fsub fast float %5318, %5334
  %5338 = fsub fast float %141, %5335
  %5339 = fsub fast float %142, %5336
  %5340 = fsub fast float %143, %5337
  %5341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = add i32 %5314, 24
  %5347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.ResRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.ResRet.f32 %5347, 2
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = add i32 %5314, 36
  %5353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.ResRet.f32 %5353, 1
  %5356 = extractvalue %dx.types.ResRet.f32 %5353, 2
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5354, float %5355, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5359 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5360 = call float @dx.op.unary.f32(i32 6, float %5357)  ; FAbs(value)
  %5361 = fsub fast float %5322, %5358
  %5362 = fsub fast float %5323, %5359
  %5363 = fsub fast float %5324, %5360
  %5364 = fmul fast float %5361, %5290
  %5365 = fmul fast float %5362, %5291
  %5366 = fmul fast float %5363, %5292
  %5367 = call float @dx.op.binary.f32(i32 36, float %5365, float %5366)  ; FMin(a,b)
  %5368 = call float @dx.op.binary.f32(i32 36, float %5364, float %5367)  ; FMin(a,b)
  %5369 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5370 = call float @dx.op.binary.f32(i32 36, float %5270, float %5369)  ; FMin(a,b)
  %5371 = uitofp i1 %5330 to float
  %5372 = fadd fast float %4497, 1.000000e+00
  %5373 = fsub fast float %5372, %5371
  %5374 = fmul fast float %5370, %5373
  %5375 = fcmp fast ogt float %5374, 0.000000e+00
  br i1 %5375, label %5385, label %5376

; <label>:5376                                    ; preds = %5527, %5266
  %5377 = phi float [ %5591, %5527 ], [ %5267, %5266 ]
  %5378 = phi float [ %5592, %5527 ], [ %5268, %5266 ]
  %5379 = phi float [ %5593, %5527 ], [ %5269, %5266 ]
  %5380 = phi float [ %5600, %5527 ], [ %5270, %5266 ]
  %5381 = phi float [ %5597, %5527 ], [ %5272, %5266 ]
  %5382 = phi float [ %5598, %5527 ], [ %5273, %5266 ]
  %5383 = phi float [ %5599, %5527 ], [ %5274, %5266 ]
  %5384 = icmp eq i32 %5271, %5278
  br i1 %5384, label %5601, label %5266

; <label>:5385                                    ; preds = %5266
  br i1 %5327, label %5443, label %5386

; <label>:5386                                    ; preds = %5385
  %5387 = fsub fast float -0.000000e+00, %5342
  %5388 = fsub fast float -0.000000e+00, %5343
  %5389 = fsub fast float -0.000000e+00, %5344
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = fsub fast float -0.000000e+00, %5390
  %5392 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = fadd fast float %5392, %5305
  %5394 = fadd fast float %5304, %5392
  %5395 = fsub fast float -0.000000e+00, %5394
  %5396 = fcmp ogt float %5390, -0.000000e+00
  %5397 = select i1 %5396, float %5395, float %5393
  %5398 = call float @dx.op.unary.f32(i32 6, float %5391)  ; FAbs(value)
  %5399 = fdiv fast float 1.000000e+00, %5398
  %5400 = fmul fast float %5397, %5399
  %5401 = call float @dx.op.binary.f32(i32 35, float %5400, float 0.000000e+00)  ; FMax(a,b)
  %5402 = fsub fast float -0.000000e+00, %5348
  %5403 = fsub fast float -0.000000e+00, %5349
  %5404 = fsub fast float -0.000000e+00, %5350
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fsub fast float -0.000000e+00, %5405
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = fadd fast float %5407, %5309
  %5409 = fadd fast float %5308, %5407
  %5410 = fsub fast float -0.000000e+00, %5409
  %5411 = fcmp ogt float %5405, -0.000000e+00
  %5412 = select i1 %5411, float %5410, float %5408
  %5413 = call float @dx.op.unary.f32(i32 6, float %5406)  ; FAbs(value)
  %5414 = fdiv fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5412, %5414
  %5416 = call float @dx.op.binary.f32(i32 35, float %5415, float 0.000000e+00)  ; FMax(a,b)
  %5417 = fsub fast float -0.000000e+00, %5354
  %5418 = fsub fast float -0.000000e+00, %5355
  %5419 = fsub fast float -0.000000e+00, %5356
  %5420 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5421 = fsub fast float -0.000000e+00, %5420
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = fadd fast float %5422, %5313
  %5424 = fadd fast float %5312, %5422
  %5425 = fsub fast float -0.000000e+00, %5424
  %5426 = fcmp ogt float %5420, -0.000000e+00
  %5427 = select i1 %5426, float %5425, float %5423
  %5428 = call float @dx.op.unary.f32(i32 6, float %5421)  ; FAbs(value)
  %5429 = fdiv fast float 1.000000e+00, %5428
  %5430 = fmul fast float %5427, %5429
  %5431 = call float @dx.op.binary.f32(i32 35, float %5430, float 0.000000e+00)  ; FMax(a,b)
  %5432 = call float @dx.op.binary.f32(i32 36, float %5416, float %5431)  ; FMin(a,b)
  %5433 = call float @dx.op.binary.f32(i32 36, float %5401, float %5432)  ; FMin(a,b)
  %5434 = fmul fast float %5433, %5216
  %5435 = fmul fast float %5433, %5217
  %5436 = fmul fast float %5433, %5218
  %5437 = fadd fast float %5434, %141
  %5438 = fadd fast float %5435, %142
  %5439 = fadd fast float %5436, %143
  %5440 = fsub fast float %5437, %5282
  %5441 = fsub fast float %5438, %5283
  %5442 = fsub fast float %5439, %5284
  br label %5450

; <label>:5443                                    ; preds = %5385
  %5444 = fmul fast float %5216, 8.096000e+03
  %5445 = fmul fast float %5217, 8.096000e+03
  %5446 = fmul fast float %5218, 8.096000e+03
  %5447 = fadd fast float %5444, %141
  %5448 = fadd fast float %5445, %142
  %5449 = fadd fast float %5446, %143
  br label %5450

; <label>:5450                                    ; preds = %5443, %5386
  %5451 = phi float [ %5216, %5443 ], [ %5440, %5386 ]
  %5452 = phi float [ %5217, %5443 ], [ %5441, %5386 ]
  %5453 = phi float [ %5218, %5443 ], [ %5442, %5386 ]
  %5454 = phi float [ %5447, %5443 ], [ %5437, %5386 ]
  %5455 = phi float [ %5448, %5443 ], [ %5438, %5386 ]
  %5456 = phi float [ %5449, %5443 ], [ %5439, %5386 ]
  %5457 = fcmp fast olt float %5301, 1.000000e+00
  br i1 %5457, label %5458, label %5489, !dx.controlflow.hints !84

; <label>:5458                                    ; preds = %5450
  %5459 = fmul fast float %5453, %5299
  %5460 = fmul fast float %5452, %5300
  %5461 = fsub fast float %5459, %5460
  %5462 = fmul fast float %5451, %5300
  %5463 = fmul fast float %5453, %5298
  %5464 = fsub fast float %5462, %5463
  %5465 = fmul fast float %5452, %5298
  %5466 = fmul fast float %5451, %5299
  %5467 = fsub fast float %5465, %5466
  %5468 = fmul fast float %5461, 2.000000e+00
  %5469 = fmul fast float %5464, 2.000000e+00
  %5470 = fmul fast float %5467, 2.000000e+00
  %5471 = fmul fast float %5468, %5301
  %5472 = fmul fast float %5469, %5301
  %5473 = fmul fast float %5470, %5301
  %5474 = fmul fast float %5470, %5299
  %5475 = fmul fast float %5469, %5300
  %5476 = fmul fast float %5468, %5300
  %5477 = fmul fast float %5470, %5298
  %5478 = fmul fast float %5469, %5298
  %5479 = fmul fast float %5468, %5299
  %5480 = fadd fast float %5474, %5451
  %5481 = fadd fast float %5480, %5471
  %5482 = fsub fast float %5481, %5475
  %5483 = fsub fast float %5452, %5477
  %5484 = fadd fast float %5483, %5472
  %5485 = fadd fast float %5484, %5476
  %5486 = fadd fast float %5473, %5453
  %5487 = fsub fast float %5486, %5479
  %5488 = fadd fast float %5487, %5478
  br label %5489

; <label>:5489                                    ; preds = %5458, %5450
  %5490 = phi float [ %5482, %5458 ], [ %5451, %5450 ]
  %5491 = phi float [ %5485, %5458 ], [ %5452, %5450 ]
  %5492 = phi float [ %5488, %5458 ], [ %5453, %5450 ]
  br i1 %5327, label %5524, label %5493

; <label>:5493                                    ; preds = %5489
  %5494 = fmul fast float %4680, 0x400187C840000000
  %5495 = fadd fast float %5494, 0xC00EFC2120000000
  %5496 = fmul fast float %5495, %4680
  %5497 = fadd fast float %5496, 0x3FE5D16340000000
  %5498 = fmul fast float %5497, %4680
  %5499 = fadd fast float %5498, 1.000000e+00
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fsub fast float %5454, %141
  %5502 = fsub fast float %5455, %142
  %5503 = fsub fast float %5456, %143
  %5504 = fsub fast float %5454, %5282
  %5505 = fsub fast float %5455, %5283
  %5506 = fsub fast float %5456, %5284
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5504, float %5505, float %5506, float %5504, float %5505, float %5506)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = fadd fast float %5508, 0x3EE4F8B580000000
  %5510 = fdiv fast float %5507, %5509
  %5511 = bitcast float %5510 to i32
  %5512 = ashr i32 %5511, 1
  %5513 = add nsw i32 %5512, 532487669
  %5514 = bitcast i32 %5513 to float
  %5515 = fmul fast float %5514, %5500
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = fmul fast float %5516, 0x4009981AE0000000
  %5518 = fsub fast float 0x40111BBD80000000, %5517
  %5519 = fmul fast float %5518, %5516
  %5520 = fadd fast float %5519, 0xC0009F6020000000
  %5521 = fmul fast float %5520, %5516
  %5522 = fadd fast float %5521, 1.000000e+00
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  br label %5527

; <label>:5524                                    ; preds = %5489
  %5525 = icmp ne i32 %5328, -1
  %5526 = zext i1 %5525 to i32
  br label %5527

; <label>:5527                                    ; preds = %5524, %5493
  %5528 = phi float [ %4680, %5524 ], [ %5523, %5493 ]
  %5529 = phi i32 [ %5526, %5524 ], [ 0, %5493 ]
  %5530 = fmul float %5528, 5.000000e+00
  %5531 = fsub float 5.000000e+00, %5530
  %5532 = icmp ne i32 %5529, 0
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = fadd fast float %5534, %5531
  %5536 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5535)  ; FMax(a,b)
  %5537 = call float @dx.op.unary.f32(i32 6, float %5490)  ; FAbs(value)
  %5538 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5539 = fadd fast float %5538, %5537
  %5540 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5541 = fadd fast float %5539, %5540
  %5542 = fcmp fast oeq float %5541, 0.000000e+00
  %5543 = fdiv fast float 1.000000e+00, %5541
  %5544 = select i1 %5542, float 1.000000e+00, float %5543
  %5545 = fmul fast float %5544, %5490
  %5546 = fmul fast float %5544, %5491
  %5547 = call float @dx.op.unary.f32(i32 6, float %5546)  ; FAbs(value)
  %5548 = call float @dx.op.unary.f32(i32 6, float %5545)  ; FAbs(value)
  %5549 = fsub fast float 1.000000e+00, %5547
  %5550 = fsub fast float 1.000000e+00, %5548
  %5551 = fcmp fast oge float %5545, 0.000000e+00
  %5552 = fcmp fast oge float %5546, 0.000000e+00
  %5553 = select i1 %5551, float 1.000000e+00, float -1.000000e+00
  %5554 = select i1 %5552, float 1.000000e+00, float -1.000000e+00
  %5555 = fcmp fast ole float %5492, 0.000000e+00
  %5556 = fmul fast float %5553, %5549
  %5557 = fmul fast float %5554, %5550
  %5558 = select i1 %5555, float %5556, float %5545
  %5559 = select i1 %5555, float %5557, float %5546
  %5560 = fmul fast float %5558, 5.000000e-01
  %5561 = fmul fast float %5559, 5.000000e-01
  %5562 = fadd fast float %5560, 5.000000e-01
  %5563 = fadd fast float %5561, 5.000000e-01
  %5564 = uitofp i32 %5325 to float
  %5565 = call float @dx.op.binary.f32(i32 36, float %5536, float 3.000000e+00)  ; FMin(a,b)
  %5566 = fadd fast float %5565, 2.000000e+00
  %5567 = call float @dx.op.unary.f32(i32 21, float %5566)  ; Exp(value)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5569 = fmul fast float %5568, %5567
  %5570 = fmul fast float %5569, 2.000000e+00
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = fmul fast float %5562, %5571
  %5573 = fmul fast float %5563, %5571
  %5574 = fadd fast float %5572, %5569
  %5575 = fadd fast float %5573, %5569
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5574, float %5575, float %5564, float undef, i32 0, i32 0, i32 undef, float %5536)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 3
  %5582 = fmul fast float %5581, %5295
  %5583 = call float @dx.op.binary.f32(i32 36, float %4760, float %5582)  ; FMin(a,b)
  %5584 = select i1 %5532, float %5583, float %5582
  %5585 = fmul fast float %5577, %5374
  %5586 = fmul fast float %5585, %5584
  %5587 = fmul fast float %5578, %5374
  %5588 = fmul fast float %5587, %5584
  %5589 = fmul fast float %5579, %5374
  %5590 = fmul fast float %5589, %5584
  %5591 = fadd fast float %5586, %5267
  %5592 = fadd fast float %5588, %5268
  %5593 = fadd fast float %5590, %5269
  %5594 = fmul fast float %5454, %5374
  %5595 = fmul fast float %5455, %5374
  %5596 = fmul fast float %5456, %5374
  %5597 = fadd fast float %5594, %5272
  %5598 = fadd fast float %5595, %5273
  %5599 = fadd fast float %5596, %5274
  %5600 = fsub fast float %5270, %5374
  br label %5376

; <label>:5601                                    ; preds = %5376
  br label %5602

; <label>:5602                                    ; preds = %5601, %5233
  %5603 = phi float [ %5234, %5233 ], [ %5377, %5601 ]
  %5604 = phi float [ %5235, %5233 ], [ %5378, %5601 ]
  %5605 = phi float [ %5236, %5233 ], [ %5379, %5601 ]
  %5606 = phi float [ %5237, %5233 ], [ %5380, %5601 ]
  %5607 = phi float [ %5239, %5233 ], [ %5381, %5601 ]
  %5608 = phi float [ %5240, %5233 ], [ %5382, %5601 ]
  %5609 = phi float [ %5241, %5233 ], [ %5383, %5601 ]
  %5610 = add i32 %5238, 1
  %5611 = icmp ugt i32 %5610, %5230
  br i1 %5611, label %5612, label %5233, !llvm.loop !85

; <label>:5612                                    ; preds = %5602
  br label %5613

; <label>:5613                                    ; preds = %5612, %5215
  %5614 = phi float [ 0.000000e+00, %5215 ], [ %5603, %5612 ]
  %5615 = phi float [ 0.000000e+00, %5215 ], [ %5604, %5612 ]
  %5616 = phi float [ 0.000000e+00, %5215 ], [ %5605, %5612 ]
  %5617 = phi float [ 0.000000e+00, %5215 ], [ %5607, %5612 ]
  %5618 = phi float [ 0.000000e+00, %5215 ], [ %5608, %5612 ]
  %5619 = phi float [ 0.000000e+00, %5215 ], [ %5609, %5612 ]
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = select i1 %215, float 0.000000e+00, float %5614
  %5622 = select i1 %215, float %5620, float %5615
  %5623 = select i1 %215, float 0.000000e+00, float %5616
  %5624 = fcmp fast olt float %5139, 0.000000e+00
  %5625 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5626 = fmul fast float %5625, %5140
  %5627 = fmul fast float %5625, %5141
  %5628 = fmul fast float %5625, %5142
  %5629 = select i1 %5624, float %5140, float %5626
  %5630 = select i1 %5624, float %5141, float %5627
  %5631 = select i1 %5624, float %5142, float %5628
  %5632 = fsub fast float 1.000000e+00, %5625
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fmul fast float %5633, %5621
  %5635 = fmul fast float %5633, %5622
  %5636 = fmul fast float %5633, %5623
  %5637 = fadd fast float %5629, %5634
  %5638 = fadd fast float %5630, %5635
  %5639 = fadd fast float %5631, %5636
  %5640 = fcmp fast une float %4889, 0.000000e+00
  br i1 %5640, label %5741, label %5641

; <label>:5641                                    ; preds = %5613
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5645 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5646 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5651 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %4705, float %4706, float %4707)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = fadd fast float %4680, -1.000000e+00
  %5661 = fsub fast float %5658, %5659
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5664 = fmul fast float %5663, %5658
  %5665 = fdiv fast float 1.600000e+02, %5664
  %5666 = fmul fast float %5660, %5660
  %5667 = fmul fast float %5666, 0xBFB5B17960000000
  %5668 = fmul fast float %5667, %5661
  %5669 = fmul fast float %5668, %5665
  %5670 = call float @dx.op.unary.f32(i32 21, float %5669)  ; Exp(value)
  %5671 = fmul fast float %5670, 0x3FF04B2960000000
  %5672 = fsub fast float 0x3FF04B2960000000, %5671
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = fmul fast float %5673, 4.000000e+00
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5679 = fadd fast float %5676, %5617
  %5680 = fadd fast float %5677, %5618
  %5681 = fadd fast float %5678, %5619
  %5682 = fmul fast float %5679, %5643
  %5683 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5644, float %5682)  ; FMad(a,b,c)
  %5684 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5645, float %5683)  ; FMad(a,b,c)
  %5685 = fadd fast float %5684, %5646
  %5686 = fmul fast float %5679, %5648
  %5687 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5649, float %5686)  ; FMad(a,b,c)
  %5688 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5650, float %5687)  ; FMad(a,b,c)
  %5689 = fadd fast float %5688, %5651
  %5690 = fmul fast float %5679, %5653
  %5691 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5654, float %5690)  ; FMad(a,b,c)
  %5692 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5655, float %5691)  ; FMad(a,b,c)
  %5693 = fadd fast float %5692, %5656
  %5694 = fdiv fast float %5685, %5693
  %5695 = fdiv fast float %5689, %5693
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 0
  %5698 = extractvalue %dx.types.CBufRet.f32 %5696, 1
  %5699 = fmul fast float %5697, %5694
  %5700 = fmul fast float %5698, %5695
  %5701 = extractvalue %dx.types.CBufRet.f32 %5696, 2
  %5702 = extractvalue %dx.types.CBufRet.f32 %5696, 3
  %5703 = fadd fast float %5699, %5701
  %5704 = fadd fast float %5700, %5702
  %5705 = fmul fast float %5657, 8.000000e+00
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = fmul fast float %5703, 2.000000e+00
  %5708 = fmul fast float %5704, 2.000000e+00
  %5709 = fadd fast float %5707, -1.000000e+00
  %5710 = fadd fast float %5708, -1.000000e+00
  %5711 = fmul fast float %5709, %5709
  %5712 = fsub fast float 1.000000e+00, %5711
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = fmul fast float %5710, %5710
  %5715 = fsub fast float 1.000000e+00, %5714
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = fmul fast float %4889, %5713
  %5718 = fmul fast float %5717, %5716
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = fmul fast float %5719, %5706
  %5721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5703, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float %5674)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5722 = extractvalue %dx.types.ResRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.ResRet.f32 %5721, 1
  %5724 = extractvalue %dx.types.ResRet.f32 %5721, 2
  %5725 = select i1 %215, float 0.000000e+00, float %5723
  %5726 = select i1 %215, float 0.000000e+00, float %5724
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5729 = fmul fast float %5728, %5722
  %5730 = fmul fast float %5725, %5728
  %5731 = fmul fast float %5726, %5728
  %5732 = fsub fast float %5729, %5621
  %5733 = fsub fast float %5730, %5622
  %5734 = fsub fast float %5731, %5623
  %5735 = fmul fast float %5732, %5720
  %5736 = fmul fast float %5733, %5720
  %5737 = fmul fast float %5734, %5720
  %5738 = fadd fast float %5735, %5621
  %5739 = fadd fast float %5736, %5622
  %5740 = fadd fast float %5737, %5623
  br label %5741

; <label>:5741                                    ; preds = %5641, %5613, %5138, %4862
  %5742 = phi float [ %5140, %5138 ], [ %5637, %5613 ], [ %4819, %4862 ], [ %5738, %5641 ]
  %5743 = phi float [ %5141, %5138 ], [ %5638, %5613 ], [ %4820, %4862 ], [ %5739, %5641 ]
  %5744 = phi float [ %5142, %5138 ], [ %5639, %5613 ], [ %4821, %4862 ], [ %5740, %5641 ]
  %5745 = fmul fast float %4868, %4815
  %5746 = fmul fast float %4868, %4816
  %5747 = fmul fast float %4868, %4817
  %5748 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = fcmp fast ogt float %5748, 0x3E7FF19E20000000
  %5750 = fdiv fast float 1.000000e+00, %5748
  %5751 = select i1 %5749, float %5750, float 0.000000e+00
  %5752 = fmul fast float %5751, %4677
  %5753 = fmul fast float %5751, %4678
  %5754 = fmul fast float %5751, %4679
  %5755 = fadd fast float %5752, -1.000000e+00
  %5756 = fadd fast float %5753, -1.000000e+00
  %5757 = fadd fast float %5754, -1.000000e+00
  %5758 = fmul fast float %5755, 5.000000e-01
  %5759 = fmul fast float %5756, 5.000000e-01
  %5760 = fmul fast float %5757, 5.000000e-01
  %5761 = fadd fast float %5758, 1.000000e+00
  %5762 = fadd fast float %5759, 1.000000e+00
  %5763 = fadd fast float %5760, 1.000000e+00
  %5764 = fmul fast float %5742, %4863
  %5765 = fmul fast float %5743, %4864
  %5766 = fmul fast float %5744, %4865
  %5767 = fsub fast float 1.000000e+00, %4699
  %5768 = bitcast float %5767 to i32
  %5769 = sitofp i32 %5768 to float
  %5770 = fmul fast float %5769, 5.000000e+00
  %5771 = fadd fast float %5770, 0xC1EFBF8940000000
  %5772 = fptosi float %5771 to i32
  %5773 = bitcast i32 %5772 to float
  %5774 = fmul fast float %5773, %4065
  %5775 = fmul fast float %4815, %5774
  %5776 = fmul fast float %5775, %4868
  %5777 = fmul fast float %5776, %5761
  %5778 = fmul fast float %4816, %5774
  %5779 = fmul fast float %5778, %4868
  %5780 = fmul fast float %5779, %5762
  %5781 = fmul fast float %4817, %5774
  %5782 = fmul fast float %5781, %4868
  %5783 = fmul fast float %5782, %5763
  %5784 = fmul fast float %5745, %4091
  %5785 = fmul fast float %5746, %4091
  %5786 = fmul fast float %5747, %4091
  %5787 = fadd fast float %5764, %4057
  %5788 = fadd fast float %5787, %5777
  %5789 = fmul fast float %5788, %4091
  %5790 = fadd fast float %5765, %4058
  %5791 = fadd fast float %5790, %5780
  %5792 = fmul fast float %5791, %4091
  %5793 = fadd fast float %5766, %4059
  %5794 = fadd fast float %5793, %5783
  %5795 = fmul fast float %5794, %4091
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5798 = fcmp fast oeq float %5797, 0.000000e+00
  br i1 %5798, label %6018, label %5799

; <label>:5799                                    ; preds = %5741
  %5800 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = select i1 %215, float %5808, float %5804
  %5812 = select i1 %215, float %5810, float %5805
  %5813 = select i1 %215, float %5809, float %5806
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5816 = fcmp fast une float %5815, 0.000000e+00
  br i1 %5816, label %5817, label %5834

; <label>:5817                                    ; preds = %5799
  %5818 = fptoui float %78 to i32
  %5819 = fptoui float %79 to i32
  %5820 = lshr i32 %5818, 4
  %5821 = lshr i32 %5819, 4
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = fptoui float %5823 to i32
  %5825 = add i32 %5824, 15
  %5826 = lshr i32 %5825, 4
  %5827 = mul i32 %5826, %5821
  %5828 = add i32 %5827, %5820
  %5829 = shl i32 %5828, 3
  %5830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.i32 %5830, 0
  %5832 = and i32 %5831, -268435456
  %5833 = icmp eq i32 %5832, -1342177280
  br i1 %5833, label %5839, label %5834

; <label>:5834                                    ; preds = %5817, %5799
  %5835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4685, float %4686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5836 = extractvalue %dx.types.ResRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.ResRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.ResRet.f32 %5835, 2
  br label %5839

; <label>:5839                                    ; preds = %5834, %5817
  %5840 = phi float [ %5836, %5834 ], [ 0.000000e+00, %5817 ]
  %5841 = phi float [ %5837, %5834 ], [ 0.000000e+00, %5817 ]
  %5842 = phi float [ %5838, %5834 ], [ 0.000000e+00, %5817 ]
  %5843 = call float @dx.op.binary.f32(i32 36, float %5841, float %5842)  ; FMin(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5840, float %5843)  ; FMin(a,b)
  %5845 = fcmp fast ogt float %5844, 0.000000e+00
  br i1 %5845, label %5846, label %6018, !dx.controlflow.hints !87

; <label>:5846                                    ; preds = %5839
  %5847 = fmul fast float %5840, %5811
  %5848 = fmul fast float %5841, %5812
  %5849 = fmul fast float %5842, %5813
  %5850 = fsub fast float %5800, %161
  %5851 = fsub fast float %5801, %162
  %5852 = fsub fast float %5802, %163
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5850, float %5851, float %5852)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.unary.f32(i32 25, float %5853)  ; Rsqrt(value)
  %5855 = fmul fast float %5854, %5850
  %5856 = fmul fast float %5854, %5851
  %5857 = fmul fast float %5854, %5852
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4506, float %4507, float %5855, float %5856, float %5857)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5861 = bitcast i32 %4723 to float
  %5862 = fmul fast float %5860, %5860
  %5863 = fmul fast float %5862, %5861
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = fmul fast float %5864, %5860
  %5866 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %5855, float %5856, float %5857)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fmul fast float %5866, %5866
  %5868 = call float @dx.op.unary.f32(i32 6, float %5858)  ; FAbs(value)
  %5869 = fsub fast float 1.000000e+00, %4717
  %5870 = fmul fast float %4699, %4699
  %5871 = fmul fast float %5870, %5869
  %5872 = fadd fast float %5871, %4717
  %5873 = bitcast float %5872 to i32
  %5874 = ashr i32 %5873, 1
  %5875 = add nsw i32 %5874, 532487669
  %5876 = bitcast i32 %5875 to float
  %5877 = fadd fast float %5876, %4699
  %5878 = fmul fast float %4717, %5867
  %5879 = fsub fast float 1.000000e+00, %5867
  %5880 = fadd fast float %5879, %5878
  %5881 = fmul fast float %5868, %5868
  %5882 = fmul fast float %5881, %5869
  %5883 = fadd fast float %5882, %4717
  %5884 = bitcast float %5883 to i32
  %5885 = ashr i32 %5884, 1
  %5886 = add nsw i32 %5885, 532487669
  %5887 = bitcast i32 %5886 to float
  %5888 = fadd fast float %5887, %5868
  %5889 = fmul fast float %5880, %5880
  %5890 = fmul fast float %5889, %5877
  %5891 = fmul fast float %5890, %5888
  %5892 = fdiv fast float 0x3FF0A00000000000, %5891
  %5893 = fmul fast float %5892, %4717
  %5894 = call float @dx.op.unary.f32(i32 6, float %5859)  ; FAbs(value)
  %5895 = fsub fast float 1.000000e+00, %5894
  %5896 = bitcast float %5895 to i32
  %5897 = sitofp i32 %5896 to float
  %5898 = fmul fast float %5897, 5.000000e+00
  %5899 = fadd fast float %5898, 0xC1EFBF8940000000
  %5900 = fptosi float %5899 to i32
  %5901 = bitcast i32 %5900 to float
  %5902 = fsub fast float 1.000000e+00, %4671
  %5903 = fsub fast float 1.000000e+00, %4672
  %5904 = fsub fast float 1.000000e+00, %4697
  %5905 = fmul fast float %5901, %5902
  %5906 = fmul fast float %5901, %5903
  %5907 = fmul fast float %5901, %5904
  %5908 = fadd fast float %5905, %4671
  %5909 = fadd fast float %5906, %4672
  %5910 = fadd fast float %5907, %4697
  br i1 %4835, label %5911, label %5934

; <label>:5911                                    ; preds = %5846
  %5912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4064, float %5894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5913 = extractvalue %dx.types.ResRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.ResRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.ResRet.f32 %5912, 2
  %5916 = fadd fast float %5913, -5.000000e-01
  %5917 = fadd fast float %5914, -5.000000e-01
  %5918 = fadd fast float %5915, -5.000000e-01
  %5919 = fmul fast float %4671, 4.000000e+00
  %5920 = fmul fast float %5919, %5902
  %5921 = fmul fast float %5920, %5916
  %5922 = fmul fast float %4672, 4.000000e+00
  %5923 = fmul fast float %5922, %5903
  %5924 = fmul fast float %5923, %5917
  %5925 = fmul fast float %4697, 4.000000e+00
  %5926 = fmul fast float %5925, %5904
  %5927 = fmul fast float %5926, %5918
  %5928 = fadd fast float %5921, %5908
  %5929 = fadd fast float %5924, %5909
  %5930 = fadd fast float %5927, %5910
  %5931 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5932 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  br label %5934

; <label>:5934                                    ; preds = %5911, %5846
  %5935 = phi float [ %5931, %5911 ], [ %5908, %5846 ]
  %5936 = phi float [ %5932, %5911 ], [ %5909, %5846 ]
  %5937 = phi float [ %5933, %5911 ], [ %5910, %5846 ]
  %5938 = fmul fast float %5858, 9.843750e-01
  %5939 = fadd fast float %5938, 7.812500e-03
  %5940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5939, float %4825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 3
  %5943 = fmul fast float %5941, %4671
  %5944 = fmul fast float %5941, %4672
  %5945 = fmul fast float %5941, %4697
  %5946 = fadd fast float %5943, %5942
  %5947 = fadd fast float %5944, %5942
  %5948 = fadd fast float %5945, %5942
  br i1 %4835, label %5949, label %5972

; <label>:5949                                    ; preds = %5934
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4064, float %5858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = fadd fast float %5951, -5.000000e-01
  %5955 = fadd fast float %5952, -5.000000e-01
  %5956 = fadd fast float %5953, -5.000000e-01
  %5957 = fmul fast float %4671, 4.000000e+00
  %5958 = fmul fast float %5957, %5902
  %5959 = fmul fast float %5958, %5954
  %5960 = fmul fast float %4672, 4.000000e+00
  %5961 = fmul fast float %5960, %5903
  %5962 = fmul fast float %5961, %5955
  %5963 = fmul fast float %4697, 4.000000e+00
  %5964 = fmul fast float %5963, %5904
  %5965 = fmul fast float %5964, %5956
  %5966 = fadd fast float %5959, %5946
  %5967 = fadd fast float %5962, %5947
  %5968 = fadd fast float %5965, %5948
  %5969 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5970 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5971 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  br label %5972

; <label>:5972                                    ; preds = %5949, %5934
  %5973 = phi float [ %5969, %5949 ], [ %5946, %5934 ]
  %5974 = phi float [ %5970, %5949 ], [ %5947, %5934 ]
  %5975 = phi float [ %5971, %5949 ], [ %5948, %5934 ]
  %5976 = call float @dx.op.binary.f32(i32 35, float %5974, float %5975)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 35, float %5973, float %5976)  ; FMax(a,b)
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = fmul fast float %5935, %5893
  %5980 = fmul fast float %5936, %5893
  %5981 = fmul fast float %5937, %5893
  %5982 = fsub fast float 1.000000e+00, %5859
  %5983 = bitcast float %5982 to i32
  %5984 = sitofp i32 %5983 to float
  %5985 = fmul fast float %5984, 5.000000e+00
  %5986 = fadd fast float %5985, 0xC1EFBF8940000000
  %5987 = fptosi float %5986 to i32
  %5988 = bitcast i32 %5987 to float
  %5989 = fmul fast float %5988, %4065
  %5990 = fmul fast float %5978, %5989
  %5991 = fmul fast float %5990, %5761
  %5992 = fmul fast float %5990, %5762
  %5993 = fmul fast float %5990, %5763
  %5994 = fadd fast float %5991, %5979
  %5995 = fadd fast float %5992, %5980
  %5996 = fadd fast float %5993, %5981
  %5997 = fmul fast float %5865, %5847
  %5998 = fmul fast float %5997, %5978
  %5999 = fmul fast float %5865, %5848
  %6000 = fmul fast float %5999, %5978
  %6001 = fmul fast float %5865, %5849
  %6002 = fmul fast float %6001, %5978
  %6003 = fmul fast float %5997, %5994
  %6004 = fmul fast float %5999, %5995
  %6005 = fmul fast float %6001, %5996
  %6006 = fadd fast float %5998, %5745
  %6007 = fmul fast float %6006, %4091
  %6008 = fadd fast float %6000, %5746
  %6009 = fmul fast float %6008, %4091
  %6010 = fadd fast float %6002, %5747
  %6011 = fmul fast float %6010, %4091
  %6012 = fadd fast float %6003, %5788
  %6013 = fmul fast float %6012, %4091
  %6014 = fadd fast float %6004, %5791
  %6015 = fmul fast float %6014, %4091
  %6016 = fadd fast float %6005, %5794
  %6017 = fmul fast float %6016, %4091
  br label %6018

; <label>:6018                                    ; preds = %5972, %5839, %5741
  %6019 = phi float [ %5789, %5741 ], [ %5789, %5839 ], [ %6013, %5972 ]
  %6020 = phi float [ %5792, %5741 ], [ %5792, %5839 ], [ %6015, %5972 ]
  %6021 = phi float [ %5795, %5741 ], [ %5795, %5839 ], [ %6017, %5972 ]
  %6022 = phi float [ %5784, %5741 ], [ %5784, %5839 ], [ %6007, %5972 ]
  %6023 = phi float [ %5785, %5741 ], [ %5785, %5839 ], [ %6009, %5972 ]
  %6024 = phi float [ %5786, %5741 ], [ %5786, %5839 ], [ %6011, %5972 ]
  %6025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.i32 %6025, 0
  %6027 = icmp eq i32 %6026, 0
  br i1 %6027, label %6459, label %6028

; <label>:6028                                    ; preds = %6018
  %6029 = fptoui float %78 to i32
  %6030 = fptoui float %79 to i32
  %6031 = lshr i32 %6029, 4
  %6032 = lshr i32 %6030, 4
  %6033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.i32 %6033, 0
  %6035 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6032, i32 %6034, i32 %6031)  ; UMad(a,b,c)
  %6036 = add nsw i32 %6026, -1
  %6037 = call i32 @dx.op.binary.i32(i32 37, i32 %6036, i32 0)  ; IMax(a,b)
  %6038 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6039 = fptoui float %6038 to i32
  %6040 = lshr i32 %6039, 5
  %6041 = call i32 @dx.op.binary.i32(i32 40, i32 %6040, i32 8191)  ; UMin(a,b)
  %6042 = shl i32 %6041, 2
  %6043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6042, i32 undef)  ; BufferLoad(srv,index,wot)
  %6044 = extractvalue %dx.types.ResRet.i32 %6043, 0
  %6045 = lshr i32 %6044, 16
  %6046 = and i32 %6044, 65535
  %6047 = lshr i32 %6044, 21
  %6048 = lshr i32 %6046, 5
  %6049 = call i32 @dx.op.binary.i32(i32 40, i32 %6048, i32 %6037)  ; UMin(a,b)
  %6050 = icmp ugt i32 %6047, %6049
  br i1 %6050, label %6459, label %6051

; <label>:6051                                    ; preds = %6028
  br label %6052

; <label>:6052                                    ; preds = %6449, %6051
  %6053 = phi i32 [ %6456, %6449 ], [ %6047, %6051 ]
  %6054 = phi float [ %6450, %6449 ], [ %6019, %6051 ]
  %6055 = phi float [ %6451, %6449 ], [ %6020, %6051 ]
  %6056 = phi float [ %6452, %6449 ], [ %6021, %6051 ]
  %6057 = phi float [ %6453, %6449 ], [ %6022, %6051 ]
  %6058 = phi float [ %6454, %6449 ], [ %6023, %6051 ]
  %6059 = phi float [ %6455, %6449 ], [ %6024, %6051 ]
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 0
  %6062 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6035, i32 %6061, i32 %6053)  ; UMad(a,b,c)
  %6063 = shl i32 %6062, 2
  %6064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6063, i32 undef)  ; BufferLoad(srv,index,wot)
  %6065 = extractvalue %dx.types.ResRet.i32 %6064, 0
  %6066 = shl i32 %6053, 5
  %6067 = sub nsw i32 %6045, %6066
  %6068 = call i32 @dx.op.binary.i32(i32 37, i32 %6067, i32 0)  ; IMax(a,b)
  %6069 = call i32 @dx.op.binary.i32(i32 38, i32 %6068, i32 31)  ; IMin(a,b)
  %6070 = sub nsw i32 1, %6045
  %6071 = add nsw i32 %6070, %6046
  %6072 = call i32 @dx.op.binary.i32(i32 37, i32 %6071, i32 0)  ; IMax(a,b)
  %6073 = call i32 @dx.op.binary.i32(i32 38, i32 %6072, i32 32)  ; IMin(a,b)
  %6074 = and i32 %6073, 31
  %6075 = shl i32 -1, %6074
  %6076 = xor i32 %6075, -1
  %6077 = and i32 %6069, 31
  %6078 = shl i32 %6076, %6077
  %6079 = icmp eq i32 %6073, 32
  %6080 = select i1 %6079, i32 -1, i32 %6078
  %6081 = and i32 %6080, %6065
  %6082 = icmp eq i32 %6081, 0
  br i1 %6082, label %6449, label %6083

; <label>:6083                                    ; preds = %6052
  br label %6084

; <label>:6084                                    ; preds = %6164, %6083
  %6085 = phi i32 [ %6096, %6164 ], [ %6081, %6083 ]
  %6086 = phi float [ %6165, %6164 ], [ %6054, %6083 ]
  %6087 = phi float [ %6166, %6164 ], [ %6055, %6083 ]
  %6088 = phi float [ %6167, %6164 ], [ %6056, %6083 ]
  %6089 = phi float [ %6168, %6164 ], [ %6057, %6083 ]
  %6090 = phi float [ %6169, %6164 ], [ %6058, %6083 ]
  %6091 = phi float [ %6170, %6164 ], [ %6059, %6083 ]
  %6092 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6085)  ; FirstbitLo(value)
  %6093 = add i32 %6092, %6066
  %6094 = and i32 %6092, 31
  %6095 = shl i32 1, %6094
  %6096 = xor i32 %6095, %6085
  %6097 = mul i32 %6093, 112
  %6098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6097, i32 undef)  ; BufferLoad(srv,index,wot)
  %6099 = extractvalue %dx.types.ResRet.f32 %6098, 0
  %6100 = extractvalue %dx.types.ResRet.f32 %6098, 1
  %6101 = extractvalue %dx.types.ResRet.f32 %6098, 2
  %6102 = or i32 %6097, 12
  %6103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = add i32 %6097, 44
  %6106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6105, i32 undef)  ; BufferLoad(srv,index,wot)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 0
  %6108 = add i32 %6097, 48
  %6109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6108, i32 undef)  ; BufferLoad(srv,index,wot)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = add i32 %6097, 80
  %6114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6113, i32 undef)  ; BufferLoad(srv,index,wot)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 1
  %6116 = extractvalue %dx.types.ResRet.f32 %6114, 2
  %6117 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = select i1 %215, float %6115, float %6099
  %6119 = select i1 %215, float %6117, float %6100
  %6120 = select i1 %215, float %6116, float %6101
  %6121 = fsub fast float %6110, %141
  %6122 = fsub fast float %6111, %142
  %6123 = fsub fast float %6112, %143
  %6124 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6123, float %6121, float %6122, float %6123)  ; Dot3(ax,ay,az,bx,by,bz)
  %6125 = call float @dx.op.unary.f32(i32 24, float %6124)  ; Sqrt(value)
  %6126 = fdiv fast float 1.000000e+00, %6125
  %6127 = fmul fast float %6126, %6121
  %6128 = fmul fast float %6126, %6122
  %6129 = fmul fast float %6126, %6123
  %6130 = fadd fast float %6125, %6104
  %6131 = fdiv fast float 1.000000e+00, %6130
  %6132 = fmul float %6107, %6131
  %6133 = fmul float %6132, %6132
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6135 = and i32 %6095, %6081
  %6136 = icmp eq i32 %6135, 0
  br i1 %6136, label %6159, label %6137, !dx.controlflow.hints !88

; <label>:6137                                    ; preds = %6084
  %6138 = lshr i32 %6029, 5
  %6139 = lshr i32 %6030, 5
  %6140 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6138, i32 %6139, i32 %6093, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6141 = extractvalue %dx.types.ResRet.i32 %6140, 0
  %6142 = and i32 %6141, 3
  %6143 = icmp eq i32 %6142, 0
  %6144 = select i1 %6143, float 1.000000e+00, float 0.000000e+00
  %6145 = icmp eq i32 %6142, 3
  br i1 %6145, label %6146, label %6159

; <label>:6146                                    ; preds = %6137
  %6147 = lshr i32 %6141, 10
  %6148 = and i32 %6147, 8160
  %6149 = and i32 %6030, 31
  %6150 = or i32 %6148, %6149
  %6151 = lshr i32 %6141, 1
  %6152 = and i32 %6151, 16352
  %6153 = and i32 %6029, 31
  %6154 = or i32 %6152, %6153
  %6155 = lshr i32 %6141, 23
  %6156 = and i32 %6155, 255
  %6157 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6154, i32 %6150, i32 %6156, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6158 = extractvalue %dx.types.ResRet.f32 %6157, 0
  br label %6159

; <label>:6159                                    ; preds = %6146, %6137, %6084
  %6160 = phi float [ %6158, %6146 ], [ %6144, %6137 ], [ 0.000000e+00, %6084 ]
  %6161 = call float @dx.op.binary.f32(i32 36, float %6160, float %6160)  ; FMin(a,b)
  %6162 = call float @dx.op.binary.f32(i32 36, float %6160, float %6161)  ; FMin(a,b)
  %6163 = fcmp fast ogt float %6162, 0.000000e+00
  br i1 %6163, label %6172, label %6164, !dx.controlflow.hints !89

; <label>:6164                                    ; preds = %6405, %6159
  %6165 = phi float [ %6086, %6159 ], [ %6445, %6405 ]
  %6166 = phi float [ %6087, %6159 ], [ %6446, %6405 ]
  %6167 = phi float [ %6088, %6159 ], [ %6447, %6405 ]
  %6168 = phi float [ %6089, %6159 ], [ %6439, %6405 ]
  %6169 = phi float [ %6090, %6159 ], [ %6440, %6405 ]
  %6170 = phi float [ %6091, %6159 ], [ %6441, %6405 ]
  %6171 = icmp eq i32 %6085, %6095
  br i1 %6171, label %6448, label %6084

; <label>:6172                                    ; preds = %6159
  %6173 = fmul fast float %6160, %6118
  %6174 = fmul fast float %6160, %6119
  %6175 = fmul fast float %6160, %6120
  %6176 = fsub fast float %6112, %4488
  %6177 = fcmp fast ogt float %6176, 0.000000e+00
  %6178 = fsub fast float %143, %4488
  %6179 = fcmp fast ogt float %6178, 0.000000e+00
  %6180 = xor i1 %6179, %6177
  %6181 = fsub fast float %4488, %6112
  %6182 = fmul fast float %6181, 2.000000e+00
  %6183 = fadd fast float %6182, %6112
  %6184 = select i1 %6180, float %6112, float %6183
  %6185 = fsub fast float %6184, %143
  %6186 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6185, float %6121, float %6122, float %6185)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = call float @dx.op.unary.f32(i32 25, float %6186)  ; Rsqrt(value)
  %6188 = fmul fast float %6187, %6121
  %6189 = fmul fast float %6187, %6122
  %6190 = fmul fast float %6187, %6185
  %6191 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4496)  ; Dot3(ax,ay,az,bx,by,bz)
  %6192 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6188, float %6189, float %6190)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = fdiv fast float 1.000000e+00, %6192
  %6194 = fmul fast float %6193, %6191
  %6195 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6178, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6196 = fcmp fast ogt float %6195, 0.000000e+00
  %6197 = fcmp fast olt float %6195, 0.000000e+00
  %6198 = zext i1 %6196 to i32
  %6199 = zext i1 %6197 to i32
  %6200 = sub nsw i32 %6198, %6199
  %6201 = sitofp i32 %6200 to float
  %6202 = fsub fast float %6184, %4488
  %6203 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6202, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = fcmp fast ogt float %6203, 0.000000e+00
  %6205 = fcmp fast olt float %6203, 0.000000e+00
  %6206 = zext i1 %6204 to i32
  %6207 = zext i1 %6205 to i32
  %6208 = sub nsw i32 %6206, %6207
  %6209 = sitofp i32 %6208 to float
  %6210 = fcmp fast une float %6201, %6209
  br i1 %6210, label %6211, label %6221

; <label>:6211                                    ; preds = %6172
  %6212 = fmul fast float %6194, %6190
  %6213 = fmul fast float %6194, %6189
  %6214 = fmul fast float %6194, %6188
  %6215 = fmul fast float %6214, %6214
  %6216 = fmul fast float %6213, %6213
  %6217 = fadd fast float %6215, %6216
  %6218 = fmul fast float %6212, %6212
  %6219 = fadd fast float %6217, %6218
  %6220 = call float @dx.op.unary.f32(i32 24, float %6219)  ; Sqrt(value)
  br label %6233

; <label>:6221                                    ; preds = %6172
  %6222 = icmp slt i32 %6200, 0
  br i1 %6222, label %6223, label %6233

; <label>:6223                                    ; preds = %6221
  %6224 = fsub fast float %141, %6110
  %6225 = fsub fast float %142, %6111
  %6226 = fsub fast float %143, %6184
  %6227 = fmul fast float %6224, %6224
  %6228 = fmul fast float %6225, %6225
  %6229 = fadd fast float %6227, %6228
  %6230 = fmul fast float %6226, %6226
  %6231 = fadd fast float %6229, %6230
  %6232 = call float @dx.op.unary.f32(i32 24, float %6231)  ; Sqrt(value)
  br label %6233

; <label>:6233                                    ; preds = %6223, %6221, %6211
  %6234 = phi float [ %6220, %6211 ], [ %6232, %6223 ], [ 0.000000e+00, %6221 ]
  %6235 = and i1 %6179, %6177
  %6236 = fsub fast float -0.000000e+00, %6234
  %6237 = select i1 %6235, float -0.000000e+00, float %6236
  %6238 = fmul fast float %4489, 0x3FF7154760000000
  %6239 = fmul fast float %6238, %6237
  %6240 = fmul fast float %4490, 0x3FF7154760000000
  %6241 = fmul fast float %6240, %6237
  %6242 = fmul fast float %4491, 0x3FF7154760000000
  %6243 = fmul fast float %6242, %6237
  %6244 = call float @dx.op.unary.f32(i32 21, float %6239)  ; Exp(value)
  %6245 = call float @dx.op.unary.f32(i32 21, float %6241)  ; Exp(value)
  %6246 = call float @dx.op.unary.f32(i32 21, float %6243)  ; Exp(value)
  %6247 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6248 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6249 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6250 = fmul fast float %6173, %6247
  %6251 = fmul fast float %6174, %6248
  %6252 = fmul fast float %6175, %6249
  %6253 = fsub fast float %6127, %161
  %6254 = fsub fast float %6128, %162
  %6255 = fsub fast float %6129, %163
  %6256 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6253, float %6254, float %6255)  ; Dot3(ax,ay,az,bx,by,bz)
  %6257 = call float @dx.op.unary.f32(i32 25, float %6256)  ; Rsqrt(value)
  %6258 = fmul fast float %6257, %6253
  %6259 = fmul fast float %6257, %6254
  %6260 = fmul fast float %6257, %6255
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6127, float %6128, float %6129, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4506, float %4507, float %6258, float %6259, float %6260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6264 = fmul fast float %6263, %6134
  %6265 = bitcast i32 %4723 to float
  %6266 = fmul fast float %6263, %6263
  %6267 = fmul fast float %6266, %6265
  %6268 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6269 = fmul fast float %6264, %6268
  %6270 = bitcast float %6124 to i32
  %6271 = ashr i32 %6270, 1
  %6272 = sub nsw i32 1597463007, %6271
  %6273 = bitcast i32 %6272 to float
  %6274 = fmul fast float %6273, %6121
  %6275 = fmul fast float %6273, %6122
  %6276 = fmul fast float %6273, %6123
  %6277 = fsub fast float %6274, %161
  %6278 = fsub fast float %6275, %162
  %6279 = fsub fast float %6276, %163
  %6280 = call float @dx.op.dot3.f32(i32 55, float %6277, float %6278, float %6279, float %6277, float %6278, float %6279)  ; Dot3(ax,ay,az,bx,by,bz)
  %6281 = call float @dx.op.unary.f32(i32 25, float %6280)  ; Rsqrt(value)
  %6282 = fmul fast float %6277, %6281
  %6283 = fmul fast float %6278, %6281
  %6284 = fmul fast float %6279, %6281
  %6285 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %6282, float %6283, float %6284)  ; Dot3(ax,ay,az,bx,by,bz)
  %6286 = fmul fast float %6285, %6285
  %6287 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6288 = fsub fast float 1.000000e+00, %4717
  %6289 = fmul fast float %4699, %4699
  %6290 = fmul fast float %6289, %6288
  %6291 = fadd fast float %6290, %4717
  %6292 = bitcast float %6291 to i32
  %6293 = ashr i32 %6292, 1
  %6294 = add nsw i32 %6293, 532487669
  %6295 = bitcast i32 %6294 to float
  %6296 = fadd fast float %6295, %4699
  %6297 = fmul fast float %4717, %6286
  %6298 = fsub fast float 1.000000e+00, %6286
  %6299 = fadd fast float %6298, %6297
  %6300 = fmul fast float %6287, %6287
  %6301 = fmul fast float %6300, %6288
  %6302 = fadd fast float %6301, %4717
  %6303 = bitcast float %6302 to i32
  %6304 = ashr i32 %6303, 1
  %6305 = add nsw i32 %6304, 532487669
  %6306 = bitcast i32 %6305 to float
  %6307 = fadd fast float %6306, %6287
  %6308 = fmul fast float %6299, %6299
  %6309 = fmul fast float %6308, %6296
  %6310 = fmul fast float %6309, %6307
  %6311 = fdiv fast float 1.000000e+00, %6310
  %6312 = bitcast float %4717 to i32
  %6313 = sitofp i32 %6312 to float
  %6314 = fmul fast float %6313, 0x3FE7F73180000000
  %6315 = fadd fast float %6314, 0x41AFE27C40000000
  %6316 = fptosi float %6315 to i32
  %6317 = bitcast i32 %6316 to float
  %6318 = fmul fast float %6107, 0x3FD80E9D60000000
  %6319 = fmul fast float %6318, %6273
  %6320 = fadd fast float %6317, %6319
  %6321 = bitcast float %6320 to i32
  %6322 = sub nsw i32 2129859010, %6321
  %6323 = bitcast i32 %6322 to float
  %6324 = fmul fast float %4717, %6311
  %6325 = fmul fast float %6324, %6317
  %6326 = fmul fast float %6325, %6323
  %6327 = call float @dx.op.unary.f32(i32 6, float %6262)  ; FAbs(value)
  %6328 = fsub fast float 1.000000e+00, %6327
  %6329 = bitcast float %6328 to i32
  %6330 = sitofp i32 %6329 to float
  %6331 = fmul fast float %6330, 5.000000e+00
  %6332 = fadd fast float %6331, 0xC1EFBF8940000000
  %6333 = fptosi float %6332 to i32
  %6334 = bitcast i32 %6333 to float
  %6335 = fsub fast float 1.000000e+00, %4671
  %6336 = fsub fast float 1.000000e+00, %4672
  %6337 = fsub fast float 1.000000e+00, %4697
  %6338 = fmul fast float %6334, %6335
  %6339 = fmul fast float %6334, %6336
  %6340 = fmul fast float %6334, %6337
  %6341 = fadd fast float %6338, %4671
  %6342 = fadd fast float %6339, %4672
  %6343 = fadd fast float %6340, %4697
  br i1 %4835, label %6344, label %6367

; <label>:6344                                    ; preds = %6233
  %6345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4064, float %6327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6346 = extractvalue %dx.types.ResRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.ResRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.ResRet.f32 %6345, 2
  %6349 = fadd fast float %6346, -5.000000e-01
  %6350 = fadd fast float %6347, -5.000000e-01
  %6351 = fadd fast float %6348, -5.000000e-01
  %6352 = fmul fast float %4671, 4.000000e+00
  %6353 = fmul fast float %6352, %6335
  %6354 = fmul fast float %6353, %6349
  %6355 = fmul fast float %4672, 4.000000e+00
  %6356 = fmul fast float %6355, %6336
  %6357 = fmul fast float %6356, %6350
  %6358 = fmul fast float %4697, 4.000000e+00
  %6359 = fmul fast float %6358, %6337
  %6360 = fmul fast float %6359, %6351
  %6361 = fadd fast float %6354, %6341
  %6362 = fadd fast float %6357, %6342
  %6363 = fadd fast float %6360, %6343
  %6364 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6365 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6366 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  br label %6367

; <label>:6367                                    ; preds = %6344, %6233
  %6368 = phi float [ %6364, %6344 ], [ %6341, %6233 ]
  %6369 = phi float [ %6365, %6344 ], [ %6342, %6233 ]
  %6370 = phi float [ %6366, %6344 ], [ %6343, %6233 ]
  %6371 = fmul fast float %6261, 9.843750e-01
  %6372 = fadd fast float %6371, 7.812500e-03
  %6373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6372, float %4825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6374 = extractvalue %dx.types.ResRet.f32 %6373, 2
  %6375 = extractvalue %dx.types.ResRet.f32 %6373, 3
  %6376 = fmul fast float %6374, %4671
  %6377 = fmul fast float %6374, %4672
  %6378 = fmul fast float %6374, %4697
  %6379 = fadd fast float %6376, %6375
  %6380 = fadd fast float %6377, %6375
  %6381 = fadd fast float %6378, %6375
  br i1 %4835, label %6382, label %6405

; <label>:6382                                    ; preds = %6367
  %6383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4064, float %6261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6384 = extractvalue %dx.types.ResRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.ResRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.ResRet.f32 %6383, 2
  %6387 = fadd fast float %6384, -5.000000e-01
  %6388 = fadd fast float %6385, -5.000000e-01
  %6389 = fadd fast float %6386, -5.000000e-01
  %6390 = fmul fast float %4671, 4.000000e+00
  %6391 = fmul fast float %6390, %6335
  %6392 = fmul fast float %6391, %6387
  %6393 = fmul fast float %4672, 4.000000e+00
  %6394 = fmul fast float %6393, %6336
  %6395 = fmul fast float %6394, %6388
  %6396 = fmul fast float %4697, 4.000000e+00
  %6397 = fmul fast float %6396, %6337
  %6398 = fmul fast float %6397, %6389
  %6399 = fadd fast float %6392, %6379
  %6400 = fadd fast float %6395, %6380
  %6401 = fadd fast float %6398, %6381
  %6402 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6403 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  %6404 = call float @dx.op.unary.f32(i32 7, float %6401)  ; Saturate(value)
  br label %6405

; <label>:6405                                    ; preds = %6382, %6367
  %6406 = phi float [ %6402, %6382 ], [ %6379, %6367 ]
  %6407 = phi float [ %6403, %6382 ], [ %6380, %6367 ]
  %6408 = phi float [ %6404, %6382 ], [ %6381, %6367 ]
  %6409 = call float @dx.op.binary.f32(i32 35, float %6407, float %6408)  ; FMax(a,b)
  %6410 = call float @dx.op.binary.f32(i32 35, float %6406, float %6409)  ; FMax(a,b)
  %6411 = fsub fast float 1.000000e+00, %6410
  %6412 = fmul fast float %6368, %6326
  %6413 = fmul fast float %6369, %6326
  %6414 = fmul fast float %6370, %6326
  %6415 = fsub fast float 1.000000e+00, %6262
  %6416 = bitcast float %6415 to i32
  %6417 = sitofp i32 %6416 to float
  %6418 = fmul fast float %6417, 5.000000e+00
  %6419 = fadd fast float %6418, 0xC1EFBF8940000000
  %6420 = fptosi float %6419 to i32
  %6421 = bitcast i32 %6420 to float
  %6422 = fmul fast float %6421, %4065
  %6423 = fmul fast float %6411, %6422
  %6424 = fmul fast float %6423, %5761
  %6425 = fmul fast float %6423, %5762
  %6426 = fmul fast float %6423, %5763
  %6427 = fadd fast float %6424, %6412
  %6428 = fadd fast float %6425, %6413
  %6429 = fadd fast float %6426, %6414
  %6430 = fmul fast float %6250, %4091
  %6431 = fmul fast float %6430, %6269
  %6432 = fmul fast float %6431, %6411
  %6433 = fmul fast float %6251, %4091
  %6434 = fmul fast float %6433, %6269
  %6435 = fmul fast float %6434, %6411
  %6436 = fmul fast float %6252, %4091
  %6437 = fmul fast float %6436, %6269
  %6438 = fmul fast float %6437, %6411
  %6439 = fadd fast float %6432, %6089
  %6440 = fadd fast float %6435, %6090
  %6441 = fadd fast float %6438, %6091
  %6442 = fmul fast float %6431, %6427
  %6443 = fmul fast float %6434, %6428
  %6444 = fmul fast float %6437, %6429
  %6445 = fadd fast float %6442, %6086
  %6446 = fadd fast float %6443, %6087
  %6447 = fadd fast float %6444, %6088
  br label %6164

; <label>:6448                                    ; preds = %6164
  br label %6449

; <label>:6449                                    ; preds = %6448, %6052
  %6450 = phi float [ %6054, %6052 ], [ %6165, %6448 ]
  %6451 = phi float [ %6055, %6052 ], [ %6166, %6448 ]
  %6452 = phi float [ %6056, %6052 ], [ %6167, %6448 ]
  %6453 = phi float [ %6057, %6052 ], [ %6168, %6448 ]
  %6454 = phi float [ %6058, %6052 ], [ %6169, %6448 ]
  %6455 = phi float [ %6059, %6052 ], [ %6170, %6448 ]
  %6456 = add i32 %6053, 1
  %6457 = icmp ugt i32 %6456, %6049
  br i1 %6457, label %6458, label %6052

; <label>:6458                                    ; preds = %6449
  br label %6459

; <label>:6459                                    ; preds = %6458, %6028, %6018
  %6460 = phi float [ %6019, %6018 ], [ %6019, %6028 ], [ %6450, %6458 ]
  %6461 = phi float [ %6020, %6018 ], [ %6020, %6028 ], [ %6451, %6458 ]
  %6462 = phi float [ %6021, %6018 ], [ %6021, %6028 ], [ %6452, %6458 ]
  %6463 = phi float [ %6022, %6018 ], [ %6022, %6028 ], [ %6453, %6458 ]
  %6464 = phi float [ %6023, %6018 ], [ %6023, %6028 ], [ %6454, %6458 ]
  %6465 = phi float [ %6024, %6018 ], [ %6024, %6028 ], [ %6455, %6458 ]
  %6466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.i32 %6466, 3
  %6468 = bitcast i32 %6467 to float
  %6469 = fsub fast float 1.000000e+00, %6468
  %6470 = fmul fast float %6469, %175
  %6471 = fadd fast float %6470, %6468
  %6472 = call float @dx.op.unary.f32(i32 24, float %4677)  ; Sqrt(value)
  %6473 = call float @dx.op.unary.f32(i32 24, float %4678)  ; Sqrt(value)
  %6474 = call float @dx.op.unary.f32(i32 24, float %4679)  ; Sqrt(value)
  %6475 = fmul fast float %6472, %6463
  %6476 = fmul fast float %6473, %6464
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  br i1 %215, label %6479, label %6511

; <label>:6479                                    ; preds = %6459
  %6480 = fadd fast float %6465, %4067
  %6481 = fmul fast float %6480, %4069
  %6482 = fsub fast float 1.000000e+00, %4069
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6486 = fmul fast float %6485, %6483
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = fmul fast float %6488, %5767
  %6490 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6491 = fmul fast float %6490, %4695
  %6492 = fadd fast float %6476, %6475
  %6493 = fmul fast float %6478, %6492
  %6494 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6495 = fadd fast float %6486, %6481
  %6496 = fsub fast float %6495, %6489
  %6497 = fadd fast float %6496, %6491
  %6498 = fsub fast float %6497, %6494
  %6499 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6500 = fmul fast float %6498, %6499
  %6501 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6504 = fsub fast float %6501, %6503
  %6505 = fmul fast float %6504, 1.000000e+01
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = fsub fast float %4068, %6471
  %6508 = fmul fast float %6506, %6507
  %6509 = fadd fast float %6508, %6471
  %6510 = fmul fast float %6509, %6501
  br label %6527

; <label>:6511                                    ; preds = %6459
  %6512 = fmul fast float %6474, %6465
  %6513 = fmul fast float %6478, %6475
  %6514 = fmul fast float %6478, %6476
  %6515 = fmul fast float %6512, %6478
  %6516 = add i32 %43, 356
  %6517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6516, i32 undef)  ; BufferLoad(srv,index,wot)
  %6518 = extractvalue %dx.types.ResRet.i32 %6517, 0
  %6519 = and i32 %6518, 32
  %6520 = icmp eq i32 %6519, 0
  br i1 %6520, label %6527, label %6521

; <label>:6521                                    ; preds = %6511
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = fmul fast float %6523, 0x3FE99999A0000000
  %6525 = fadd fast float %6523, %6513
  %6526 = fadd fast float %6524, %6515
  br label %6527

; <label>:6527                                    ; preds = %6521, %6511, %6479
  %6528 = phi float [ %6493, %6479 ], [ %6525, %6521 ], [ %6513, %6511 ]
  %6529 = phi float [ %6510, %6479 ], [ %6514, %6521 ], [ %6514, %6511 ]
  %6530 = phi float [ %6509, %6479 ], [ %6526, %6521 ], [ %6515, %6511 ]
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = fmul fast float %6532, %6461
  %6534 = fmul fast float %6532, %6462
  %6535 = fadd fast float %6461, %6460
  %6536 = select i1 %215, float %6535, float %6460
  %6537 = fmul float %6536, %6532
  %6538 = select i1 %215, float 0.000000e+00, float %6533
  %6539 = select i1 %215, float 0.000000e+00, float %6534
  %6540 = fmul fast float %6528, %6472
  %6541 = fmul fast float %6529, %6473
  %6542 = fmul fast float %6530, %6474
  %6543 = fadd fast float %6537, %6540
  %6544 = fadd fast float %6538, %6541
  %6545 = fadd fast float %6539, %6542
  %6546 = select i1 %215, float %6529, float %6544
  %6547 = select i1 %215, float %6530, float %6545
  %6548 = call float @dx.op.binary.f32(i32 36, float %6543, float 3.225500e+04)  ; FMin(a,b)
  %6549 = call float @dx.op.binary.f32(i32 36, float %6546, float 3.225500e+04)  ; FMin(a,b)
  %6550 = call float @dx.op.binary.f32(i32 36, float %6547, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

