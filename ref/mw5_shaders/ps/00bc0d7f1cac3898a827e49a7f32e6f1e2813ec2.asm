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
; shader hash: d39502cdee5c91fc0d17b0875c65ae6c
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
  %412 = add i32 %43, 520
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
  %570 = add i32 %43, 408
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
  %593 = add i32 %43, 488
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
  %791 = add i32 %43, 424
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
  %875 = add i32 %43, 440
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
  %1167 = add i32 %43, 476
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
  %1219 = add i32 %43, 460
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
  %1245 = add i32 %43, 412
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
  %1268 = add i32 %43, 492
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
  %1466 = add i32 %43, 428
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
  %1550 = add i32 %43, 444
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
  %2021 = add i32 %43, 480
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
  %2073 = add i32 %43, 464
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
  %2099 = add i32 %43, 416
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
  %2122 = add i32 %43, 496
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
  %2320 = add i32 %43, 432
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
  %2404 = add i32 %43, 448
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
  %2875 = add i32 %43, 484
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
  %2927 = add i32 %43, 468
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
  %2953 = add i32 %43, 420
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
  %2976 = add i32 %43, 500
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
  %3174 = add i32 %43, 436
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
  %3258 = add i32 %43, 452
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
  %3500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3501 = extractvalue %dx.types.CBufRet.f32 %3500, 0
  %3502 = call float @dx.op.dot2.f32(i32 54, float %3488, float %3489, float %3488, float %3489)  ; Dot2(ax,ay,bx,by)
  %3503 = fmul fast float %3502, 0x3FE3333340000000
  %3504 = fsub fast float 1.000000e+00, %3503
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3504, float %3488, float %3489, float %3504)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = call float @dx.op.unary.f32(i32 25, float %3505)  ; Rsqrt(value)
  %3507 = fmul fast float %3506, %3488
  %3508 = fmul fast float %3506, %3489
  %3509 = fmul fast float %3504, %3506
  %3510 = fmul fast float %3509, %85
  %3511 = fmul fast float %3509, %86
  %3512 = fmul fast float %3509, %87
  %3513 = fmul fast float %3507, %59
  %3514 = fmul fast float %3507, %60
  %3515 = fmul fast float %3507, %61
  %3516 = fadd fast float %3510, %3513
  %3517 = fadd fast float %3511, %3514
  %3518 = fadd fast float %3512, %3515
  %3519 = fmul fast float %97, %3508
  %3520 = fmul fast float %98, %3508
  %3521 = fmul fast float %99, %3508
  %3522 = fadd fast float %3516, %3519
  %3523 = fadd fast float %3517, %3520
  %3524 = fadd fast float %3518, %3521
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3523, float %3524, float %3522, float %3523, float %3524)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = call float @dx.op.unary.f32(i32 25, float %3525)  ; Rsqrt(value)
  %3527 = fmul fast float %3522, %3526
  %3528 = fmul fast float %3523, %3526
  %3529 = fmul fast float %3524, %3526
  %3530 = and i32 %45, 1
  %3531 = icmp eq i32 %3530, 0
  br i1 %3531, label %3532, label %4044

; <label>:3532                                    ; preds = %3487
  %3533 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3534 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3535 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3536 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3537 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3538 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3539 = fadd fast float %3533, %141
  %3540 = fadd fast float %3534, %142
  %3541 = fadd fast float %3535, %143
  %3542 = fadd fast float %3536, %141
  %3543 = fadd fast float %3537, %142
  %3544 = fadd fast float %3538, %143
  %3545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3545, 0
  %3547 = extractvalue %dx.types.CBufRet.f32 %3545, 1
  %3548 = extractvalue %dx.types.CBufRet.f32 %3545, 2
  %3549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.f32 %3549, 2
  %3551 = extractvalue %dx.types.CBufRet.f32 %3549, 3
  %3552 = fmul fast float %3546, %78
  %3553 = fmul fast float %3552, %3550
  %3554 = fmul fast float %3547, %79
  %3555 = fmul fast float %3554, %3551
  %3556 = fptoui float %3553 to i32
  %3557 = fptoui float %3555 to i32
  %3558 = fadd fast float %3546, -1.000000e+00
  %3559 = fadd fast float %3547, -1.000000e+00
  %3560 = fptoui float %3558 to i32
  %3561 = fptoui float %3559 to i32
  %3562 = call i32 @dx.op.binary.i32(i32 40, i32 %3556, i32 %3560)  ; UMin(a,b)
  %3563 = call i32 @dx.op.binary.i32(i32 40, i32 %3557, i32 %3561)  ; UMin(a,b)
  %3564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3565 = extractvalue %dx.types.CBufRet.f32 %3564, 2
  %3566 = extractvalue %dx.types.CBufRet.f32 %3564, 3
  %3567 = fmul fast float %3565, %73
  %3568 = fsub fast float %3567, %3566
  %3569 = fadd fast float %3548, -1.000000e+00
  %3570 = call float @dx.op.binary.f32(i32 36, float %3568, float %3569)  ; FMin(a,b)
  %3571 = fptoui float %3570 to i32
  %3572 = fptoui float %3546 to i32
  %3573 = fptoui float %3547 to i32
  %3574 = mul i32 %3571, %3573
  %3575 = add i32 %3574, %3563
  %3576 = mul i32 %3575, %3572
  %3577 = add i32 %3576, %3562
  %3578 = shl i32 %3577, 2
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = and i32 %3580, 1023
  %3582 = lshr i32 %3580, 10
  %3583 = icmp eq i32 %3581, 0
  br i1 %3583, label %4012, label %3584

; <label>:3584                                    ; preds = %3532
  %3585 = and i32 %3580, 1023
  br label %3586

; <label>:3586                                    ; preds = %3713, %3584
  %3587 = phi i32 [ %3663, %3713 ], [ 0, %3584 ]
  %3588 = phi float [ %3714, %3713 ], [ 0.000000e+00, %3584 ]
  %3589 = phi float [ %3715, %3713 ], [ %934, %3584 ]
  %3590 = phi float [ %3716, %3713 ], [ %3501, %3584 ]
  %3591 = phi float [ %3717, %3713 ], [ %3499, %3584 ]
  %3592 = phi float [ %3718, %3713 ], [ 0.000000e+00, %3584 ]
  %3593 = phi float [ %3719, %3713 ], [ 0.000000e+00, %3584 ]
  %3594 = phi float [ %3720, %3713 ], [ %3493, %3584 ]
  %3595 = phi float [ %3721, %3713 ], [ %3494, %3584 ]
  %3596 = phi float [ %3722, %3713 ], [ %3495, %3584 ]
  %3597 = phi float [ %3723, %3713 ], [ %3527, %3584 ]
  %3598 = phi float [ %3724, %3713 ], [ %3528, %3584 ]
  %3599 = phi float [ %3725, %3713 ], [ %3529, %3584 ]
  %3600 = phi float [ %3726, %3713 ], [ %3498, %3584 ]
  %3601 = phi float [ %3727, %3713 ], [ %3497, %3584 ]
  %3602 = phi float [ %3728, %3713 ], [ 0.000000e+00, %3584 ]
  %3603 = phi float [ %3729, %3713 ], [ %3496, %3584 ]
  %3604 = phi float [ %3730, %3713 ], [ %3490, %3584 ]
  %3605 = phi float [ %3731, %3713 ], [ %3491, %3584 ]
  %3606 = phi float [ %3732, %3713 ], [ %3492, %3584 ]
  %3607 = add nuw nsw i32 %3587, %3582
  %3608 = shl i32 %3607, 2
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = shl i32 %3610, 8
  %3612 = or i32 %3611, 48
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = or i32 %3611, 64
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.i32 %3619, 1
  %3622 = or i32 %3611, 80
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3626 = or i32 %3611, 96
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = or i32 %3611, 112
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3635 = or i32 %3611, 128
  %3636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = or i32 %3611, 144
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = or i32 %3611, 160
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = or i32 %3611, 192
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = or i32 %3611, 208
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = or i32 %3611, 248
  %3660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = add nuw nsw i32 %3587, 1
  %3664 = bitcast float %3617 to i32
  %3665 = and i32 %3664, 512
  %3666 = icmp eq i32 %3665, 0
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = extractvalue %dx.types.ResRet.f32 %3667, 3
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3668, float %3669, float %3670, float %3671, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = or i32 %3611, 16
  %3674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3678 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3679 = call float @dx.op.dot4.f32(i32 56, float %3675, float %3676, float %3677, float %3678, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3680 = or i32 %3611, 32
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3686 = call float @dx.op.dot4.f32(i32 56, float %3682, float %3683, float %3684, float %3685, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3687 = call float @dx.op.unary.f32(i32 27, float %3672)  ; Round_ni(value)
  %3688 = call float @dx.op.unary.f32(i32 6, float %3687)  ; FAbs(value)
  %3689 = call float @dx.op.unary.f32(i32 27, float %3679)  ; Round_ni(value)
  %3690 = call float @dx.op.unary.f32(i32 6, float %3689)  ; FAbs(value)
  %3691 = call float @dx.op.unary.f32(i32 6, float %3686)  ; FAbs(value)
  %3692 = call float @dx.op.unary.f32(i32 27, float %3691)  ; Round_ni(value)
  %3693 = fadd fast float %3690, %3688
  %3694 = fadd fast float %3693, %3692
  %3695 = fcmp fast oeq float %3694, 0.000000e+00
  %3696 = call float @dx.op.dot4.f32(i32 56, float %3668, float %3669, float %3670, float %3671, float %3539, float %3540, float %3541, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3697 = call float @dx.op.dot4.f32(i32 56, float %3675, float %3676, float %3677, float %3678, float %3539, float %3540, float %3541, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3698 = call float @dx.op.dot4.f32(i32 56, float %3668, float %3669, float %3670, float %3671, float %3542, float %3543, float %3544, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3699 = call float @dx.op.dot4.f32(i32 56, float %3675, float %3676, float %3677, float %3678, float %3542, float %3543, float %3544, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3700 = fsub fast float %3696, %3672
  %3701 = fsub fast float %3698, %3672
  %3702 = fsub fast float %3697, %3679
  %3703 = fsub fast float %3699, %3679
  %3704 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3615, float %3616, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3705, 2
  %3707 = fadd fast float %3706, %3704
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3705, 0
  %3710 = fcmp fast ogt float %3708, %3709
  %3711 = and i1 %3695, %3710
  %3712 = and i1 %3666, %3711
  br i1 %3712, label %3734, label %3713

; <label>:3713                                    ; preds = %3998, %3815, %3734, %3586
  %3714 = phi float [ %3588, %3734 ], [ %3818, %3815 ], [ %3818, %3998 ], [ %3588, %3586 ]
  %3715 = phi float [ %3589, %3734 ], [ %3589, %3815 ], [ %3973, %3998 ], [ %3589, %3586 ]
  %3716 = phi float [ %3590, %3734 ], [ %3590, %3815 ], [ %3972, %3998 ], [ %3590, %3586 ]
  %3717 = phi float [ %3591, %3734 ], [ %3591, %3815 ], [ %3970, %3998 ], [ %3591, %3586 ]
  %3718 = phi float [ %3592, %3734 ], [ %3592, %3815 ], [ %3942, %3998 ], [ %3592, %3586 ]
  %3719 = phi float [ %3593, %3734 ], [ %3593, %3815 ], [ %3940, %3998 ], [ %3593, %3586 ]
  %3720 = phi float [ %3594, %3734 ], [ %3594, %3815 ], [ %4008, %3998 ], [ %3594, %3586 ]
  %3721 = phi float [ %3595, %3734 ], [ %3595, %3815 ], [ %4009, %3998 ], [ %3595, %3586 ]
  %3722 = phi float [ %3596, %3734 ], [ %3596, %3815 ], [ %4010, %3998 ], [ %3596, %3586 ]
  %3723 = phi float [ %3597, %3734 ], [ %3597, %3815 ], [ %3921, %3998 ], [ %3597, %3586 ]
  %3724 = phi float [ %3598, %3734 ], [ %3598, %3815 ], [ %3922, %3998 ], [ %3598, %3586 ]
  %3725 = phi float [ %3599, %3734 ], [ %3599, %3815 ], [ %3923, %3998 ], [ %3599, %3586 ]
  %3726 = phi float [ %3600, %3734 ], [ %3600, %3815 ], [ %3950, %3998 ], [ %3600, %3586 ]
  %3727 = phi float [ %3601, %3734 ], [ %3601, %3815 ], [ %3947, %3998 ], [ %3601, %3586 ]
  %3728 = phi float [ %3602, %3734 ], [ %3602, %3815 ], [ %3944, %3998 ], [ %3602, %3586 ]
  %3729 = phi float [ %3603, %3734 ], [ %3603, %3815 ], [ %3938, %3998 ], [ %3603, %3586 ]
  %3730 = phi float [ %3604, %3734 ], [ %3604, %3815 ], [ %3933, %3998 ], [ %3604, %3586 ]
  %3731 = phi float [ %3605, %3734 ], [ %3605, %3815 ], [ %3934, %3998 ], [ %3605, %3586 ]
  %3732 = phi float [ %3606, %3734 ], [ %3606, %3815 ], [ %3935, %3998 ], [ %3606, %3586 ]
  %3733 = icmp eq i32 %3663, %3585
  br i1 %3733, label %4011, label %3586

; <label>:3734                                    ; preds = %3586
  %3735 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3736 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3737 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3740 = extractvalue %dx.types.ResRet.i32 %3619, 3
  %3741 = extractvalue %dx.types.ResRet.i32 %3619, 2
  %3742 = add i32 %3740, 0
  %3743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3745 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3743, %dx.types.Handle %3744, float %3672, float %3679, float undef, float undef, i32 0, i32 0, i32 undef, float %3700, float %3702, float undef, float %3701, float %3703, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = fmul fast float %3746, %3739
  %3748 = fadd fast float %3747, %3738
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fmul fast float %3672, %3628
  %3751 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3679, float %3750)  ; FMad(a,b,c)
  %3752 = fadd fast float %3751, %3737
  %3753 = fmul fast float %3672, %3630
  %3754 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3679, float %3753)  ; FMad(a,b,c)
  %3755 = fadd fast float %3754, %3736
  %3756 = fmul fast float %3700, %3628
  %3757 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3702, float %3756)  ; FMad(a,b,c)
  %3758 = fmul fast float %3700, %3630
  %3759 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3702, float %3758)  ; FMad(a,b,c)
  %3760 = fmul fast float %3701, %3628
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3703, float %3760)  ; FMad(a,b,c)
  %3762 = fmul fast float %3701, %3630
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3703, float %3762)  ; FMad(a,b,c)
  %3764 = add i32 %3741, 0
  %3765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3764, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3766 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3765, %dx.types.Handle %3744, float %3752, float %3755, float undef, float undef, i32 0, i32 0, i32 undef, float %3757, float %3759, float undef, float %3761, float %3763, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3767 = extractvalue %dx.types.ResRet.f32 %3766, 0
  %3768 = and i32 %3664, 1024
  %3769 = icmp ne i32 %3768, 0
  %3770 = fcmp fast ogt float %3767, 0x3FE0101020000000
  %3771 = uitofp i1 %3770 to float
  %3772 = select i1 %3769, float %3771, float %3767
  %3773 = and i32 %3664, 8192
  %3774 = icmp ne i32 %3773, 0
  %3775 = select i1 %3774, float %3735, float 1.000000e+00
  %3776 = fmul fast float %3672, 2.000000e+00
  %3777 = fadd fast float %3776, -1.000000e+00
  %3778 = call float @dx.op.unary.f32(i32 6, float %3777)  ; FAbs(value)
  %3779 = fmul fast float %3778, %3661
  %3780 = fsub fast float %3779, %3661
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = fmul fast float %3679, 2.000000e+00
  %3783 = fadd fast float %3782, -1.000000e+00
  %3784 = call float @dx.op.unary.f32(i32 6, float %3783)  ; FAbs(value)
  %3785 = fmul fast float %3784, %3662
  %3786 = fsub fast float %3785, %3662
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3691, %3624
  %3789 = fsub fast float %3788, %3624
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fmul fast float %3749, %3775
  %3792 = fmul fast float %3791, %3746
  %3793 = fmul fast float %3792, %3781
  %3794 = fmul fast float %3793, %3772
  %3795 = fmul fast float %3794, %3787
  %3796 = fmul fast float %3795, %3790
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 1
  %3799 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3800 = fsub fast float %3708, %3799
  %3801 = fmul fast float %3800, %3798
  %3802 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3803 = fmul fast float %3796, %3625
  %3804 = fadd fast float %3796, %3625
  %3805 = fmul fast float %3804, %3634
  %3806 = fsub fast float %3805, %3634
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = and i32 %3664, 128
  %3809 = icmp ne i32 %3808, 0
  %3810 = select i1 %3809, float %3807, float %3803
  %3811 = fmul fast float %3810, %3802
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = fcmp fast ugt float %3811, %3813
  br i1 %3814, label %3815, label %3713

; <label>:3815                                    ; preds = %3734
  %3816 = select i1 %3774, float %3811, float 0.000000e+00
  %3817 = fadd fast float %3816, %3588
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  br i1 %3774, label %3713, label %3819

; <label>:3819                                    ; preds = %3815
  %3820 = and i32 %3664, 4
  %3821 = and i32 %3664, 8
  %3822 = add i32 %3620, 0
  %3823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3822, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3825 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3823, %dx.types.Handle %3824, float %3752, float %3755, float undef, float undef, i32 0, i32 0, i32 undef, float %3757, float %3759, float undef, float %3761, float %3763, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3825, 3
  %3830 = bitcast float %3646 to i32
  %3831 = and i32 %3830, 255
  %3832 = uitofp i32 %3831 to float
  %3833 = lshr i32 %3830, 8
  %3834 = and i32 %3833, 255
  %3835 = uitofp i32 %3834 to float
  %3836 = fmul fast float %3829, %3832
  %3837 = fadd fast float %3836, %3835
  %3838 = fmul fast float %3837, 0x3F70101000000000
  %3839 = add i32 %3621, 0
  %3840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3839, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3841 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3840, %dx.types.Handle %3824, float %3752, float %3755, float undef, float undef, i32 0, i32 0, i32 undef, float %3757, float %3759, float undef, float %3761, float %3763, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = bitcast float %3640 to i32
  %3847 = and i32 %3846, 255
  %3848 = uitofp i32 %3847 to float
  %3849 = lshr i32 %3846, 8
  %3850 = and i32 %3849, 255
  %3851 = uitofp i32 %3850 to float
  %3852 = lshr i32 %3846, 16
  %3853 = and i32 %3852, 255
  %3854 = uitofp i32 %3853 to float
  %3855 = fmul fast float %3854, 0x3F70101000000000
  %3856 = fmul fast float %3842, %3848
  %3857 = fadd fast float %3856, %3851
  %3858 = fmul fast float %3857, 0x3F70101000000000
  %3859 = fadd fast float %3843, -5.000000e-01
  %3860 = fadd fast float %3845, -5.000000e-01
  %3861 = fmul fast float %3859, %3855
  %3862 = fmul fast float %3860, %3855
  %3863 = fadd fast float %3861, 5.000000e-01
  %3864 = fadd fast float %3862, 5.000000e-01
  %3865 = fmul fast float %3826, %3649
  %3866 = fmul fast float %3827, %3650
  %3867 = fmul fast float %3828, %3651
  %3868 = fmul fast float %3863, 2.000000e+00
  %3869 = fadd fast float %3868, -1.000000e+00
  %3870 = fmul fast float %3864, 2.000000e+00
  %3871 = fadd fast float %3870, -1.000000e+00
  %3872 = fadd fast float %3869, %3871
  %3873 = fmul fast float %3872, 5.000000e-01
  %3874 = fsub fast float %3869, %3871
  %3875 = fmul fast float %3874, 5.000000e-01
  %3876 = call float @dx.op.unary.f32(i32 6, float %3873)  ; FAbs(value)
  %3877 = fsub fast float 1.000000e+00, %3876
  %3878 = call float @dx.op.unary.f32(i32 6, float %3875)  ; FAbs(value)
  %3879 = fsub fast float %3877, %3878
  %3880 = call float @dx.op.dot3.f32(i32 55, float %3873, float %3875, float %3879, float %3873, float %3875, float %3879)  ; Dot3(ax,ay,az,bx,by,bz)
  %3881 = call float @dx.op.unary.f32(i32 25, float %3880)  ; Rsqrt(value)
  %3882 = fmul fast float %3873, %3881
  %3883 = fmul fast float %3875, %3881
  %3884 = fmul fast float %3881, %3879
  %3885 = fmul fast float %3884, %3614
  %3886 = fmul fast float %3884, %3615
  %3887 = fmul fast float %3884, %3616
  %3888 = fmul fast float %3882, %3637
  %3889 = fmul fast float %3882, %3638
  %3890 = fmul fast float %3882, %3639
  %3891 = fadd fast float %3888, %3885
  %3892 = fadd fast float %3889, %3886
  %3893 = fadd fast float %3890, %3887
  %3894 = fmul fast float %3883, %3643
  %3895 = fmul fast float %3883, %3644
  %3896 = fmul fast float %3883, %3645
  %3897 = fadd fast float %3891, %3894
  %3898 = fadd fast float %3892, %3895
  %3899 = fadd fast float %3893, %3896
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3897, float %3898, float %3899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = call float @dx.op.unary.f32(i32 25, float %3900)  ; Rsqrt(value)
  %3902 = fmul fast float %3897, %3901
  %3903 = fmul fast float %3898, %3901
  %3904 = fmul fast float %3899, %3901
  %3905 = icmp ne i32 %3821, 0
  %3906 = select i1 %3905, float 1.000000e+00, float 0.000000e+00
  %3907 = fmul fast float %3811, %3906
  %3908 = and i32 %3664, 1
  %3909 = icmp eq i32 %3908, 0
  br i1 %3909, label %3910, label %3914

; <label>:3910                                    ; preds = %3819
  %3911 = fsub fast float %3902, %3597
  %3912 = fsub fast float %3903, %3598
  %3913 = fsub fast float %3904, %3599
  br label %3914

; <label>:3914                                    ; preds = %3910, %3819
  %3915 = phi float [ %3911, %3910 ], [ %3902, %3819 ]
  %3916 = phi float [ %3912, %3910 ], [ %3903, %3819 ]
  %3917 = phi float [ %3913, %3910 ], [ %3904, %3819 ]
  %3918 = fmul float %3917, %3907
  %3919 = fmul float %3916, %3907
  %3920 = fmul float %3915, %3907
  %3921 = fadd fast float %3920, %3597
  %3922 = fadd fast float %3919, %3598
  %3923 = fadd fast float %3918, %3599
  %3924 = icmp ne i32 %3820, 0
  %3925 = select i1 %3924, float 1.000000e+00, float 0.000000e+00
  %3926 = fmul fast float %3811, %3925
  %3927 = fsub fast float %3865, %3604
  %3928 = fsub fast float %3866, %3605
  %3929 = fsub fast float %3867, %3606
  %3930 = fmul fast float %3927, %3926
  %3931 = fmul fast float %3928, %3926
  %3932 = fmul fast float %3929, %3926
  %3933 = fadd fast float %3930, %3604
  %3934 = fadd fast float %3931, %3605
  %3935 = fadd fast float %3932, %3606
  %3936 = fsub fast float %3838, %3603
  %3937 = fmul fast float %3936, %3926
  %3938 = fadd fast float %3937, %3603
  %3939 = fmul fast float %3926, %3593
  %3940 = fsub fast float %3593, %3939
  %3941 = fmul fast float %3926, %3592
  %3942 = fsub fast float %3592, %3941
  %3943 = fadd fast float %3811, %3602
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fsub fast float %3858, %3601
  %3946 = fmul fast float %3945, %3907
  %3947 = fadd fast float %3946, %3601
  %3948 = fsub fast float %3844, %3600
  %3949 = fmul fast float %3948, %3907
  %3950 = fadd fast float %3949, %3600
  %3951 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3866, float %3867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = extractvalue %dx.types.CBufRet.f32 %3952, 1
  %3955 = fmul fast float %3954, %3951
  %3956 = fadd fast float %3955, %3953
  %3957 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3958 = bitcast float %3652 to i32
  %3959 = and i32 %3958, 65535
  %3960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3959)  ; LegacyF16ToF32(value)
  %3961 = lshr i32 %3958, 16
  %3962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3961)  ; LegacyF16ToF32(value)
  %3963 = fcmp fast oge float %3960, 0.000000e+00
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = select i1 %3963, float %3960, float %3965
  %3967 = fadd fast float %3966, %3962
  %3968 = fsub fast float %3957, %3591
  %3969 = fmul fast float %3968, %3811
  %3970 = fadd fast float %3969, %3591
  %3971 = fmul fast float %3967, %3811
  %3972 = call float @dx.op.binary.f32(i32 35, float %3590, float %3971)  ; FMax(a,b)
  %3973 = call float @dx.op.binary.f32(i32 35, float %3589, float %3811)  ; FMax(a,b)
  %3974 = and i32 %3664, 16
  %3975 = icmp eq i32 %3974, 0
  br i1 %3975, label %3998, label %3976

; <label>:3976                                    ; preds = %3914
  %3977 = bitcast float %3658 to i32
  %3978 = add i32 %3655, 0
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3978, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3979, %dx.types.Handle %3824, float %3752, float %3755, float undef, float undef, i32 0, i32 0, i32 undef, float %3757, float %3759, float undef, float %3761, float %3763, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = and i32 %3977, 65535
  %3985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3984)  ; LegacyF16ToF32(value)
  %3986 = fmul fast float %3981, %3649
  %3987 = fmul fast float %3982, %3650
  %3988 = fmul fast float %3983, %3651
  %3989 = and i32 %3664, 16384
  %3990 = icmp ne i32 %3989, 0
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = select i1 %3990, float %3992, float 1.000000e+00
  %3994 = fmul fast float %3993, %3985
  %3995 = fmul fast float %3986, %3994
  %3996 = fmul fast float %3987, %3994
  %3997 = fmul fast float %3988, %3994
  br label %3998

; <label>:3998                                    ; preds = %3976, %3914
  %3999 = phi float [ %3995, %3976 ], [ 0.000000e+00, %3914 ]
  %4000 = phi float [ %3996, %3976 ], [ 0.000000e+00, %3914 ]
  %4001 = phi float [ %3997, %3976 ], [ 0.000000e+00, %3914 ]
  %4002 = fsub fast float %3999, %3594
  %4003 = fsub fast float %4000, %3595
  %4004 = fsub fast float %4001, %3596
  %4005 = fmul fast float %4002, %3811
  %4006 = fmul fast float %4003, %3811
  %4007 = fmul fast float %4004, %3811
  %4008 = fadd fast float %4005, %3594
  %4009 = fadd fast float %4006, %3595
  %4010 = fadd fast float %4007, %3596
  br label %3713

; <label>:4011                                    ; preds = %3713
  br label %4012

; <label>:4012                                    ; preds = %4011, %3532
  %4013 = phi float [ 0.000000e+00, %3532 ], [ %3714, %4011 ]
  %4014 = phi float [ %934, %3532 ], [ %3715, %4011 ]
  %4015 = phi float [ %3501, %3532 ], [ %3716, %4011 ]
  %4016 = phi float [ %3499, %3532 ], [ %3717, %4011 ]
  %4017 = phi float [ 0.000000e+00, %3532 ], [ %3718, %4011 ]
  %4018 = phi float [ 0.000000e+00, %3532 ], [ %3719, %4011 ]
  %4019 = phi float [ %3493, %3532 ], [ %3720, %4011 ]
  %4020 = phi float [ %3494, %3532 ], [ %3721, %4011 ]
  %4021 = phi float [ %3495, %3532 ], [ %3722, %4011 ]
  %4022 = phi float [ %3527, %3532 ], [ %3723, %4011 ]
  %4023 = phi float [ %3528, %3532 ], [ %3724, %4011 ]
  %4024 = phi float [ %3529, %3532 ], [ %3725, %4011 ]
  %4025 = phi float [ %3498, %3532 ], [ %3726, %4011 ]
  %4026 = phi float [ %3497, %3532 ], [ %3727, %4011 ]
  %4027 = phi float [ 0.000000e+00, %3532 ], [ %3728, %4011 ]
  %4028 = phi float [ %3496, %3532 ], [ %3729, %4011 ]
  %4029 = phi float [ %3490, %3532 ], [ %3730, %4011 ]
  %4030 = phi float [ %3491, %3532 ], [ %3731, %4011 ]
  %4031 = phi float [ %3492, %3532 ], [ %3732, %4011 ]
  %4032 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float %4022, float %4023, float %4024)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = call float @dx.op.unary.f32(i32 25, float %4032)  ; Rsqrt(value)
  %4034 = fmul fast float %4033, %4022
  %4035 = fmul fast float %4033, %4023
  %4036 = fmul fast float %4033, %4024
  %4037 = fadd fast float %4027, %934
  %4038 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4039 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4040 = call float @dx.op.unary.f32(i32 25, float %4039)  ; Rsqrt(value)
  %4041 = fmul fast float %4040, %4034
  %4042 = fmul fast float %4040, %4035
  %4043 = fmul fast float %4040, %4036
  br label %4044

; <label>:4044                                    ; preds = %4012, %3487
  %4045 = phi float [ %4041, %4012 ], [ %3527, %3487 ]
  %4046 = phi float [ %4042, %4012 ], [ %3528, %3487 ]
  %4047 = phi float [ %4043, %4012 ], [ %3529, %3487 ]
  %4048 = phi float [ %4019, %4012 ], [ %3493, %3487 ]
  %4049 = phi float [ %4020, %4012 ], [ %3494, %3487 ]
  %4050 = phi float [ %4021, %4012 ], [ %3495, %3487 ]
  %4051 = phi float [ %4029, %4012 ], [ %3490, %3487 ]
  %4052 = phi float [ %4030, %4012 ], [ %3491, %3487 ]
  %4053 = phi float [ %4031, %4012 ], [ %3492, %3487 ]
  %4054 = phi float [ %4028, %4012 ], [ %3496, %3487 ]
  %4055 = phi float [ %4038, %4012 ], [ %934, %3487 ]
  %4056 = phi float [ %4026, %4012 ], [ %3497, %3487 ]
  %4057 = phi float [ %4025, %4012 ], [ %3498, %3487 ]
  %4058 = phi float [ %4018, %4012 ], [ 0.000000e+00, %3487 ]
  %4059 = phi float [ %4017, %4012 ], [ 0.000000e+00, %3487 ]
  %4060 = phi float [ %4013, %4012 ], [ 0.000000e+00, %3487 ]
  %4061 = phi float [ %4015, %4012 ], [ %3501, %3487 ]
  %4062 = phi float [ %4014, %4012 ], [ %934, %3487 ]
  %4063 = phi float [ %4016, %4012 ], [ %3499, %3487 ]
  %4064 = add i32 %43, 392
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.i32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.i32 %4065, 2
  %4069 = extractvalue %dx.types.ResRet.i32 %4065, 3
  %4070 = bitcast i32 %4066 to float
  %4071 = bitcast i32 %4067 to float
  %4072 = bitcast i32 %4068 to float
  %4073 = bitcast i32 %4069 to float
  %4074 = fsub fast float %4051, %4070
  %4075 = fsub fast float %4052, %4071
  %4076 = fsub fast float %4053, %4072
  %4077 = fmul fast float %4074, %175
  %4078 = fmul fast float %4075, %175
  %4079 = fmul fast float %4076, %175
  %4080 = fadd fast float %4077, %4070
  %4081 = fadd fast float %4078, %4071
  %4082 = fadd fast float %4079, %4072
  %4083 = fsub fast float %4055, %4073
  %4084 = fmul fast float %4083, %175
  %4085 = fadd fast float %4084, %4073
  %4086 = fadd fast float %4054, 0xBFB99999A0000000
  %4087 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4088 = fmul fast float %4087, 0x3FF1C71C80000000
  %4089 = call float @dx.op.binary.f32(i32 36, float %4054, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4090 = fsub fast float 1.000000e+00, %4088
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %4080, %4091
  %4093 = fmul fast float %4081, %4091
  %4094 = fmul fast float %4082, %4091
  %4095 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4096 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4098 = fmul fast float %4080, %4088
  %4099 = fmul fast float %4081, %4088
  %4100 = fmul fast float %4082, %4088
  %4101 = fadd fast float %4098, %4089
  %4102 = fadd fast float %4099, %4089
  %4103 = fadd fast float %4100, %4089
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.i32 %4108, 3
  %4110 = and i32 %4109, 8
  %4111 = icmp ne i32 %4110, 0
  %4112 = call float @dx.op.binary.f32(i32 35, float %4095, float %4080)  ; FMax(a,b)
  %4113 = call float @dx.op.binary.f32(i32 35, float %4096, float %4080)  ; FMax(a,b)
  %4114 = call float @dx.op.binary.f32(i32 35, float %4097, float %4080)  ; FMax(a,b)
  %4115 = call float @dx.op.dot3.f32(i32 55, float %4095, float %4096, float %4097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = select i1 %215, float %4080, float %4095
  %4117 = select i1 %215, float %4115, float %4096
  %4118 = select i1 %215, float 1.000000e+00, float %4097
  %4119 = select i1 %4111, float %4112, float %4116
  %4120 = select i1 %4111, float %4113, float %4117
  %4121 = select i1 %4111, float %4114, float %4118
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4126 = fadd fast float %4123, %141
  %4127 = fadd fast float %4124, %142
  %4128 = fadd fast float %4125, %143
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = fsub fast float %4126, %4130
  %4133 = fsub fast float %4127, %4131
  %4134 = fmul fast float %4132, %4132
  %4135 = fmul fast float %4133, %4133
  %4136 = fadd fast float %4134, %4135
  %4137 = call float @dx.op.unary.f32(i32 24, float %4136)  ; Sqrt(value)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4139 = fcmp fast olt float %4137, %4138
  br i1 %4139, label %4140, label %4207

; <label>:4140                                    ; preds = %4044
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4148 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4149 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4150 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4151 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4152 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4153 = fadd fast float %4150, %4126
  %4154 = fadd fast float %4151, %4127
  %4155 = fadd fast float %4152, %4128
  %4156 = fmul fast float %4153, %4142
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4144, float %4156)  ; FMad(a,b,c)
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4146, float %4157)  ; FMad(a,b,c)
  %4159 = fmul fast float %4153, %4147
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4148, float %4159)  ; FMad(a,b,c)
  %4161 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4149, float %4160)  ; FMad(a,b,c)
  %4162 = fsub fast float %4158, %4150
  %4163 = fsub fast float %4161, %4151
  %4164 = fsub fast float %4162, %4130
  %4165 = fadd fast float %4164, %4138
  %4166 = fsub fast float %4163, %4131
  %4167 = fadd fast float %4166, %4138
  %4168 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4169 = fmul fast float %4165, %4168
  %4170 = fmul fast float %4167, %4168
  %4171 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4173 = fsub fast float 1.000000e+00, %4171
  %4174 = fsub fast float 1.000000e+00, %4172
  %4175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4173, float %4174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = fcmp fast ugt float %4176, 0.000000e+00
  br i1 %4177, label %4178, label %4481

; <label>:4178                                    ; preds = %4140
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4181 = fmul fast float %4180, %4176
  %4182 = extractvalue %dx.types.CBufRet.f32 %4179, 3
  %4183 = fadd fast float %4182, %4181
  %4184 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4185 = fadd fast float %4183, %4152
  %4186 = fmul fast float %4158, %4146
  %4187 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4149, float %4186)  ; FMad(a,b,c)
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4184, float %4187)  ; FMad(a,b,c)
  %4189 = fsub fast float %4188, %4152
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4192 = fsub fast float %4189, %4191
  %4193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4173, float %4174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4173, float %4174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4201 = fadd fast float %4198, %4194
  %4202 = fmul fast float %4201, 0x3F847AE140000000
  %4203 = fadd fast float %4199, %4195
  %4204 = fmul fast float %4203, 0x3F847AE140000000
  %4205 = fadd fast float %4200, %4196
  %4206 = fmul fast float %4205, 0x3F847AE140000000
  br label %4481

; <label>:4207                                    ; preds = %4044
  %4208 = and i32 %191, 1
  %4209 = icmp eq i32 %4208, 0
  br i1 %4209, label %4481, label %4210

; <label>:4210                                    ; preds = %4207
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 0
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.f32 %4211, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4213, 1
  %4219 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4220 = extractvalue %dx.types.CBufRet.f32 %4211, 3
  %4221 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4222 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4223 = fadd fast float %4220, %4126
  %4224 = fadd fast float %4221, %4127
  %4225 = fadd fast float %4222, %4128
  %4226 = fmul fast float %4223, %4212
  %4227 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4214, float %4226)  ; FMad(a,b,c)
  %4228 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4216, float %4227)  ; FMad(a,b,c)
  %4229 = fmul fast float %4223, %4217
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4218, float %4229)  ; FMad(a,b,c)
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4219, float %4230)  ; FMad(a,b,c)
  %4232 = fsub fast float %4228, %4220
  %4233 = fsub fast float %4231, %4221
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.CBufRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.CBufRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.CBufRet.f32 %4234, 3
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 3
  %4241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.i32 %4241, 0
  %4243 = extractvalue %dx.types.CBufRet.i32 %4241, 1
  %4244 = udiv i32 %4243, %4242
  %4245 = fsub fast float %4232, %4235
  %4246 = fsub fast float %4233, %4236
  %4247 = call float @dx.op.binary.f32(i32 35, float %4245, float 0.000000e+00)  ; FMax(a,b)
  %4248 = call float @dx.op.binary.f32(i32 35, float %4246, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call float @dx.op.binary.f32(i32 36, float %4247, float %4237)  ; FMin(a,b)
  %4250 = call float @dx.op.binary.f32(i32 36, float %4248, float %4238)  ; FMin(a,b)
  %4251 = add i32 %4242, -1
  %4252 = add i32 %4244, -1
  %4253 = fmul fast float %4249, %4240
  %4254 = fmul fast float %4250, %4240
  %4255 = fptoui float %4253 to i32
  %4256 = fptoui float %4254 to i32
  %4257 = call i32 @dx.op.binary.i32(i32 40, i32 %4255, i32 %4251)  ; UMin(a,b)
  %4258 = call i32 @dx.op.binary.i32(i32 40, i32 %4256, i32 %4252)  ; UMin(a,b)
  %4259 = mul i32 %4258, %4242
  %4260 = add i32 %4259, %4257
  %4261 = shl i32 %4260, 2
  %4262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.i32 %4262, 0
  %4264 = icmp eq i32 %4263, -1
  br i1 %4264, label %4481, label %4265

; <label>:4265                                    ; preds = %4210
  %4266 = mul i32 %4263, 148
  %4267 = add i32 %4266, 4
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = add i32 %4266, 8
  %4271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = add i32 %4266, 36
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4266, 60
  %4277 = add i32 %4266, 92
  %4278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.i32 %4278, 0
  %4280 = add i32 %4266, 116
  %4281 = fsub fast float %4232, %4269
  %4282 = fsub fast float %4233, %4272
  %4283 = fmul fast float %4240, %4281
  %4284 = fmul fast float %4240, %4282
  %4285 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4287 = fsub fast float 1.000000e+00, %4286
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 2
  %4290 = call float @dx.op.unary.f32(i32 83, float %4285)  ; DerivCoarseX(value)
  %4291 = call float @dx.op.unary.f32(i32 83, float %4287)  ; DerivCoarseX(value)
  %4292 = call float @dx.op.unary.f32(i32 84, float %4285)  ; DerivCoarseY(value)
  %4293 = call float @dx.op.unary.f32(i32 84, float %4287)  ; DerivCoarseY(value)
  %4294 = fmul fast float %4290, %4289
  %4295 = fmul fast float %4291, %4289
  %4296 = fmul fast float %4292, %4289
  %4297 = fmul fast float %4293, %4289
  %4298 = call float @dx.op.dot2.f32(i32 54, float %4296, float %4297, float %4296, float %4297)  ; Dot2(ax,ay,bx,by)
  %4299 = call float @dx.op.dot2.f32(i32 54, float %4294, float %4295, float %4294, float %4295)  ; Dot2(ax,ay,bx,by)
  %4300 = call float @dx.op.binary.f32(i32 35, float %4299, float %4298)  ; FMax(a,b)
  %4301 = call float @dx.op.unary.f32(i32 23, float %4300)  ; Log(value)
  %4302 = fmul fast float %4301, 5.000000e-01
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4305 = fadd fast float %4304, %4302
  %4306 = call float @dx.op.binary.f32(i32 35, float %4305, float 0.000000e+00)  ; FMax(a,b)
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4309 = fadd fast float %4308, %4306
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4312 = fadd fast float %4309, %4311
  %4313 = add i32 %4279, 0
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4313, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4314, i32 0)  ; GetDimensions(handle,mipLevel)
  %4316 = extractvalue %dx.types.Dimensions %4315, 0
  %4317 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4316)  ; FirstbitLo(value)
  %4318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.i32 %4318, 1
  %4320 = sub nsw i32 %4319, %4317
  %4321 = sitofp i32 %4320 to float
  %4322 = fsub fast float %4312, %4321
  %4323 = call float @dx.op.binary.f32(i32 35, float %4322, float 0.000000e+00)  ; FMax(a,b)
  %4324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4314, %dx.types.Handle %37, float %4285, float %4287, float %4275, float undef, i32 0, i32 0, i32 undef, float %4323)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = fcmp ule float %4325, 0x3FE0101020000000
  %4327 = extractvalue %dx.types.CBufRet.i32 %4318, 0
  %4328 = and i32 %4327, 128
  %4329 = icmp ne i32 %4328, 0
  %4330 = and i1 %4326, %4329
  br i1 %4330, label %4481, label %4331

; <label>:4331                                    ; preds = %4265
  %4332 = add i32 %4266, 20
  %4333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = add i32 %4266, 24
  %4336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = add i32 %4266, 40
  %4339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = add i32 %4266, 96
  %4342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.i32 %4342, 0
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 2
  %4346 = fmul fast float %4345, %4285
  %4347 = fmul fast float %4345, %4287
  %4348 = extractvalue %dx.types.CBufRet.f32 %4344, 3
  %4349 = fadd fast float %4346, %4348
  %4350 = fadd fast float %4347, %4348
  %4351 = add i32 %4343, 0
  %4352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4353 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4352, i32 0)  ; GetDimensions(handle,mipLevel)
  %4354 = extractvalue %dx.types.Dimensions %4353, 0
  %4355 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4354)  ; FirstbitLo(value)
  %4356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.i32 %4356, 1
  %4358 = sub nsw i32 %4357, %4355
  %4359 = sitofp i32 %4358 to float
  %4360 = fsub fast float %4309, %4359
  %4361 = call float @dx.op.binary.f32(i32 35, float %4360, float 0.000000e+00)  ; FMax(a,b)
  %4362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4352, %dx.types.Handle %37, float %4349, float %4350, float %4340, float undef, i32 0, i32 0, i32 undef, float %4361)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = fmul fast float %4363, %4334
  %4365 = fadd fast float %4364, %4337
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.CBufRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.CBufRet.f32 %4366, 2
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4374 = extractvalue %dx.types.CBufRet.f32 %4366, 3
  %4375 = fadd fast float %4371, %4232
  %4376 = fadd fast float %4373, %4233
  %4377 = fadd fast float %4365, %4374
  %4378 = fmul fast float %4375, %4367
  %4379 = call float @dx.op.tertiary.f32(i32 46, float %4376, float %4368, float %4378)  ; FMad(a,b,c)
  %4380 = call float @dx.op.tertiary.f32(i32 46, float %4377, float %4369, float %4379)  ; FMad(a,b,c)
  %4381 = fsub fast float %4380, %4374
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4384 = fsub fast float %4381, %4383
  %4385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.i32 %4385, 0
  %4387 = call i32 @dx.op.binary.i32(i32 40, i32 %4263, i32 %4386)  ; UMin(a,b)
  %4388 = mul i32 %4387, 36
  %4389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.i32 %4389, 0
  %4391 = add i32 %4388, 4
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = fmul fast float %4393, %4285
  %4395 = fmul fast float %4393, %4287
  %4396 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4397 = fadd fast float %4394, %4396
  %4398 = fadd fast float %4395, %4396
  %4399 = icmp eq i32 %4390, 0
  br i1 %4399, label %4468, label %4400

; <label>:4400                                    ; preds = %4331
  br label %4401

; <label>:4401                                    ; preds = %4458, %4400
  %4402 = phi float [ %4459, %4458 ], [ 0.000000e+00, %4400 ]
  %4403 = phi float [ %4460, %4458 ], [ 0.000000e+00, %4400 ]
  %4404 = phi float [ %4461, %4458 ], [ 0.000000e+00, %4400 ]
  %4405 = phi float [ %4462, %4458 ], [ 0.000000e+00, %4400 ]
  %4406 = phi float [ %4463, %4458 ], [ 0.000000e+00, %4400 ]
  %4407 = phi float [ %4464, %4458 ], [ 0.000000e+00, %4400 ]
  %4408 = phi i32 [ %4465, %4458 ], [ 0, %4400 ]
  %4409 = shl i32 %4408, 2
  %4410 = add i32 %4276, %4409
  %4411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = add i32 %4280, %4409
  %4414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4413, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.i32 %4414, 0
  %4416 = add i32 %4415, 0
  %4417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4416, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4418 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4417, i32 0)  ; GetDimensions(handle,mipLevel)
  %4419 = extractvalue %dx.types.Dimensions %4418, 0
  %4420 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4419)  ; FirstbitLo(value)
  %4421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.i32 %4421, 1
  %4423 = sub nsw i32 %4422, %4420
  %4424 = sitofp i32 %4423 to float
  %4425 = fsub fast float %4309, %4424
  %4426 = call float @dx.op.binary.f32(i32 35, float %4425, float 0.000000e+00)  ; FMax(a,b)
  %4427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4417, %dx.types.Handle %37, float %4397, float %4398, float %4412, float undef, i32 0, i32 0, i32 undef, float %4426)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = fcmp fast ogt float %4428, 0.000000e+00
  br i1 %4429, label %4430, label %4458

; <label>:4430                                    ; preds = %4401
  %4431 = add i32 %4391, %4409
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = and i32 %4433, 32767
  %4435 = mul nuw nsw i32 %4434, 928
  %4436 = add nuw nsw i32 %4435, 48
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = add nuw nsw i32 %4435, 60
  %4442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.ResRet.f32 %4442, 1
  %4445 = extractvalue %dx.types.ResRet.f32 %4442, 2
  %4446 = fmul fast float %4438, %4428
  %4447 = fmul fast float %4439, %4428
  %4448 = fmul fast float %4440, %4428
  %4449 = fadd fast float %4446, %4402
  %4450 = fadd fast float %4447, %4403
  %4451 = fadd fast float %4448, %4404
  %4452 = fmul fast float %4443, %4428
  %4453 = fmul fast float %4444, %4428
  %4454 = fmul fast float %4445, %4428
  %4455 = fadd fast float %4452, %4405
  %4456 = fadd fast float %4453, %4406
  %4457 = fadd fast float %4454, %4407
  br label %4458

; <label>:4458                                    ; preds = %4430, %4401
  %4459 = phi float [ %4449, %4430 ], [ %4402, %4401 ]
  %4460 = phi float [ %4450, %4430 ], [ %4403, %4401 ]
  %4461 = phi float [ %4451, %4430 ], [ %4404, %4401 ]
  %4462 = phi float [ %4455, %4430 ], [ %4405, %4401 ]
  %4463 = phi float [ %4456, %4430 ], [ %4406, %4401 ]
  %4464 = phi float [ %4457, %4430 ], [ %4407, %4401 ]
  %4465 = add nuw i32 %4408, 1
  %4466 = icmp eq i32 %4465, %4390
  br i1 %4466, label %4467, label %4401

; <label>:4467                                    ; preds = %4458
  br label %4468

; <label>:4468                                    ; preds = %4467, %4331
  %4469 = phi float [ 0.000000e+00, %4331 ], [ %4459, %4467 ]
  %4470 = phi float [ 0.000000e+00, %4331 ], [ %4460, %4467 ]
  %4471 = phi float [ 0.000000e+00, %4331 ], [ %4461, %4467 ]
  %4472 = phi float [ 0.000000e+00, %4331 ], [ %4462, %4467 ]
  %4473 = phi float [ 0.000000e+00, %4331 ], [ %4463, %4467 ]
  %4474 = phi float [ 0.000000e+00, %4331 ], [ %4464, %4467 ]
  %4475 = fadd fast float %4472, %4469
  %4476 = fmul fast float %4475, 0x3F847AE140000000
  %4477 = fadd fast float %4473, %4470
  %4478 = fmul fast float %4477, 0x3F847AE140000000
  %4479 = fadd fast float %4474, %4471
  %4480 = fmul fast float %4479, 0x3F847AE140000000
  br label %4481

; <label>:4481                                    ; preds = %4468, %4265, %4210, %4207, %4178, %4140
  %4482 = phi float [ %4192, %4178 ], [ -1.310720e+05, %4140 ], [ %4384, %4468 ], [ -1.310720e+05, %4210 ], [ -1.310720e+05, %4265 ], [ -1.310720e+05, %4207 ]
  %4483 = phi float [ %4202, %4178 ], [ 0.000000e+00, %4140 ], [ %4476, %4468 ], [ 0.000000e+00, %4210 ], [ 0.000000e+00, %4265 ], [ 0.000000e+00, %4207 ]
  %4484 = phi float [ %4204, %4178 ], [ 0.000000e+00, %4140 ], [ %4478, %4468 ], [ 0.000000e+00, %4210 ], [ 0.000000e+00, %4265 ], [ 0.000000e+00, %4207 ]
  %4485 = phi float [ %4206, %4178 ], [ 0.000000e+00, %4140 ], [ %4480, %4468 ], [ 0.000000e+00, %4210 ], [ 0.000000e+00, %4265 ], [ 0.000000e+00, %4207 ]
  %4486 = phi i1 [ true, %4178 ], [ false, %4140 ], [ true, %4468 ], [ false, %4210 ], [ false, %4265 ], [ false, %4207 ]
  %4487 = and i32 %191, 3
  %4488 = icmp eq i32 %4487, 1
  %4489 = select i1 %4488, float 1.000000e+00, float 0.000000e+00
  %4490 = fsub fast float %4482, %143
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = select i1 %4486, float %4491, float 1.000000e+00
  %4493 = fmul fast float %4492, %4489
  %4494 = icmp eq i32 %4487, 3
  %4495 = select i1 %4494, float 1.000000e+00, float %4493
  %4496 = call float @dx.op.binary.f32(i32 35, float %4060, float %4495)  ; FMax(a,b)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fcmp fast une float %4497, 0.000000e+00
  %4499 = fsub fast float -0.000000e+00, %161
  %4500 = fsub fast float -0.000000e+00, %162
  %4501 = fsub fast float -0.000000e+00, %163
  br i1 %4498, label %4502, label %4664

; <label>:4502                                    ; preds = %4481
  %4503 = call float @dx.op.dot3.f32(i32 55, float %4499, float %4500, float %4501, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4504 = fmul fast float %4497, 2.500000e+00
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fmul fast float %4497, 0x4013FFFFE0000000
  %4507 = fadd fast float %4506, 0xBFFFFFFFE0000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fmul fast float %4497, 0x4004000020000000
  %4510 = fadd fast float %4509, 0xBFF8000040000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4513 = fmul fast float %4086, 1.000000e+01
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4514, 2.000000e+00
  %4516 = fsub fast float 3.000000e+00, %4515
  %4517 = fmul fast float %4514, %4514
  %4518 = fmul fast float %4517, %4516
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = fsub fast float 0x3FE3333340000000, %4107
  %4521 = fmul fast float %4520, 0x400AAAAAA0000000
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4519, %4522
  %4524 = fmul fast float %4119, 0x3FEA2B8620000000
  %4525 = fmul fast float %4120, 0x3FEA2B8620000000
  %4526 = fmul fast float %4121, 0x3FEA2B8620000000
  %4527 = fadd fast float %4524, 0x3FC81DFBA0000000
  %4528 = fmul fast float %4527, %4119
  %4529 = fadd fast float %4528, 0x3F910E6020000000
  %4530 = fadd fast float %4525, 0x3FC81DFBA0000000
  %4531 = fmul fast float %4530, %4120
  %4532 = fadd fast float %4531, 0x3F910E6020000000
  %4533 = fadd fast float %4526, 0x3FC81DFBA0000000
  %4534 = fmul fast float %4533, %4121
  %4535 = fadd fast float %4534, 0x3F910E6020000000
  %4536 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4539 = fsub fast float %4536, %4119
  %4540 = fsub fast float %4537, %4120
  %4541 = fsub fast float %4538, %4121
  %4542 = fmul fast float %4539, %4512
  %4543 = fmul fast float %4542, %4523
  %4544 = fmul fast float %4540, %4512
  %4545 = fmul fast float %4544, %4523
  %4546 = fmul fast float %4541, %4512
  %4547 = fmul fast float %4546, %4523
  %4548 = fadd fast float %4543, %4119
  %4549 = fadd fast float %4545, %4120
  %4550 = fadd fast float %4547, %4121
  %4551 = fmul fast float %4057, %4057
  %4552 = fmul fast float %4551, %4551
  %4553 = fadd fast float %4508, 1.000000e+00
  %4554 = fsub fast float %4553, %4523
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fsub fast float 1.000000e+00, %4552
  %4559 = call float @dx.op.binary.f32(i32 36, float %4555, float %4558)  ; FMin(a,b)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4561 = call float @dx.op.binary.f32(i32 35, float %4559, float %4560)  ; FMax(a,b)
  %4562 = fadd fast float %4557, 0xBFE4CCCCC0000000
  %4563 = fmul fast float %4562, 0x4006DB6DA0000000
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fmul fast float %4564, 2.000000e+00
  %4566 = fsub fast float 3.000000e+00, %4565
  %4567 = bitcast float %4104 to i32
  %4568 = ashr i32 %4567, 1
  %4569 = add nsw i32 %4568, 532487669
  %4570 = bitcast i32 %4569 to float
  %4571 = fsub fast float 1.000000e+00, %4570
  %4572 = bitcast float %4571 to i32
  %4573 = sub nsw i32 2129859010, %4572
  %4574 = bitcast i32 %4573 to float
  %4575 = fmul fast float %4574, 2.000000e+00
  %4576 = bitcast float %4105 to i32
  %4577 = ashr i32 %4576, 1
  %4578 = add nsw i32 %4577, 532487669
  %4579 = bitcast i32 %4578 to float
  %4580 = fsub fast float 1.000000e+00, %4579
  %4581 = bitcast float %4580 to i32
  %4582 = sub nsw i32 2129859010, %4581
  %4583 = bitcast i32 %4582 to float
  %4584 = fmul fast float %4583, 2.000000e+00
  %4585 = bitcast float %4106 to i32
  %4586 = ashr i32 %4585, 1
  %4587 = add nsw i32 %4586, 532487669
  %4588 = bitcast i32 %4587 to float
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = bitcast float %4589 to i32
  %4591 = sub nsw i32 2129859010, %4590
  %4592 = bitcast i32 %4591 to float
  %4593 = fmul fast float %4592, 2.000000e+00
  %4594 = fsub fast float 0x4002A9FBE0000000, %4575
  %4595 = fadd fast float %4575, 0x3FD54FDF00000000
  %4596 = bitcast float %4595 to i32
  %4597 = sub nsw i32 2129859010, %4596
  %4598 = bitcast i32 %4597 to float
  %4599 = fmul fast float %4598, %4594
  %4600 = fmul fast float %4599, %4599
  %4601 = fsub fast float 0x4002A9FBE0000000, %4584
  %4602 = fadd fast float %4584, 0x3FD54FDF00000000
  %4603 = bitcast float %4602 to i32
  %4604 = sub nsw i32 2129859010, %4603
  %4605 = bitcast i32 %4604 to float
  %4606 = fmul fast float %4605, %4601
  %4607 = fmul fast float %4606, %4606
  %4608 = fsub fast float 0x4002A9FBE0000000, %4593
  %4609 = fadd fast float %4593, 0x3FD54FDF00000000
  %4610 = bitcast float %4609 to i32
  %4611 = sub nsw i32 2129859010, %4610
  %4612 = bitcast i32 %4611 to float
  %4613 = fmul fast float %4612, %4608
  %4614 = fmul fast float %4613, %4613
  %4615 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4600)  ; FMax(a,b)
  %4616 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4607)  ; FMax(a,b)
  %4617 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4614)  ; FMax(a,b)
  %4618 = fsub fast float 1.000000e+00, %4503
  %4619 = fadd fast float %4618, %4519
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fsub fast float 1.000000e+00, %4495
  %4622 = fmul fast float %4561, %4621
  %4623 = fmul fast float %4564, %4564
  %4624 = fmul fast float %4623, %4622
  %4625 = fmul fast float %4624, %4566
  %4626 = fmul fast float %4621, 0xBFE99999A0000000
  %4627 = fmul fast float %4626, %4512
  %4628 = fmul fast float %4627, %4523
  %4629 = fadd fast float %4628, 1.000000e+00
  %4630 = fadd fast float %4107, -1.000000e+00
  %4631 = fmul fast float %4629, %4630
  %4632 = fadd fast float %4631, 1.000000e+00
  %4633 = fsub fast float %4615, %4104
  %4634 = fsub fast float %4616, %4105
  %4635 = fsub fast float %4617, %4106
  %4636 = fmul fast float %4625, %4633
  %4637 = fmul fast float %4625, %4634
  %4638 = fmul fast float %4625, %4635
  %4639 = fadd fast float %4636, %4104
  %4640 = fadd fast float %4637, %4105
  %4641 = fadd fast float %4638, %4106
  %4642 = fsub fast float %85, %4045
  %4643 = fsub fast float %86, %4046
  %4644 = fsub fast float %87, %4047
  %4645 = fmul fast float %4625, %4642
  %4646 = fmul fast float %4625, %4643
  %4647 = fmul fast float %4625, %4644
  %4648 = fadd fast float %4645, %4045
  %4649 = fadd fast float %4646, %4046
  %4650 = fadd fast float %4647, %4047
  %4651 = fmul fast float %4625, %4620
  %4652 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = fmul fast float %4651, %4653
  %4655 = fadd fast float %4654, %4652
  %4656 = fsub fast float 1.000000e+00, %4057
  %4657 = fmul fast float %4625, %4656
  %4658 = fadd fast float %4657, %4057
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float %4648, float %4649, float %4650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 25, float %4659)  ; Rsqrt(value)
  %4661 = fmul fast float %4648, %4660
  %4662 = fmul fast float %4649, %4660
  %4663 = fmul fast float %4650, %4660
  br label %4664

; <label>:4664                                    ; preds = %4502, %4481
  %4665 = phi float [ %4639, %4502 ], [ %4104, %4481 ]
  %4666 = phi float [ %4640, %4502 ], [ %4105, %4481 ]
  %4667 = phi float [ %4641, %4502 ], [ %4106, %4481 ]
  %4668 = phi float [ %4661, %4502 ], [ %4045, %4481 ]
  %4669 = phi float [ %4662, %4502 ], [ %4046, %4481 ]
  %4670 = phi float [ %4663, %4502 ], [ %4047, %4481 ]
  %4671 = phi float [ %4548, %4502 ], [ %4119, %4481 ]
  %4672 = phi float [ %4549, %4502 ], [ %4120, %4481 ]
  %4673 = phi float [ %4550, %4502 ], [ %4121, %4481 ]
  %4674 = phi float [ %4655, %4502 ], [ %4107, %4481 ]
  %4675 = phi float [ %4658, %4502 ], [ %4057, %4481 ]
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 2
  %4678 = extractvalue %dx.types.CBufRet.f32 %4676, 3
  %4679 = fmul fast float %4677, %78
  %4680 = fmul fast float %4678, %79
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4679, float %4680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = fmul fast float %4685, %4683
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fadd fast float %4687, -1.000000e+00
  %4689 = fmul fast float %4688, %4682
  %4690 = fadd fast float %4689, 1.000000e+00
  %4691 = select i1 %215, float 0.000000e+00, float %4667
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %4499, float %4500, float %4501)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %4668, float %4669, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = fmul fast float %4694, 2.000000e+00
  %4696 = fmul fast float %4695, %4668
  %4697 = fmul fast float %4695, %4669
  %4698 = fmul fast float %4695, %4670
  %4699 = fsub fast float %161, %4696
  %4700 = fsub fast float %162, %4697
  %4701 = fsub fast float %163, %4698
  %4702 = call float @dx.op.binary.f32(i32 36, float %4675, float %4690)  ; FMin(a,b)
  %4703 = fsub fast float 1.000000e+00, %4702
  %4704 = bitcast float %4703 to i32
  %4705 = ashr i32 %4704, 1
  %4706 = add nsw i32 %4705, 532487669
  %4707 = bitcast i32 %4706 to float
  %4708 = fsub fast float 1.000000e+00, %4674
  %4709 = call float @dx.op.binary.f32(i32 35, float %4708, float 0x3F847AE140000000)  ; FMax(a,b)
  %4710 = fmul fast float %4709, %4709
  %4711 = fmul fast float %4710, %4710
  %4712 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4707, float %4711, float %4712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = fsub fast float 1.000000e+00, %4675
  %4716 = bitcast float %4715 to i32
  %4717 = sub nsw i32 2129859010, %4716
  %4718 = fsub fast float 1.000000e+00, %55
  %4719 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4720 = call float @dx.op.binary.f32(i32 35, float %4719, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4721 = fdiv fast float %4718, %4720
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4723, 5.000000e-01
  %4725 = fadd fast float %4724, 5.000000e-01
  %4726 = fmul fast float %4725, %55
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4728, %4721
  %4730 = fadd fast float %4726, %4729
  %4731 = fsub fast float 5.000000e-01, %4724
  %4732 = fmul fast float %4731, %4671
  %4733 = fmul fast float %4731, %4672
  %4734 = fmul fast float %4731, %4673
  %4735 = fadd fast float %4730, %4732
  %4736 = fadd fast float %4730, %4733
  %4737 = fadd fast float %4730, %4734
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4700, float %4701, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4739, 5.000000e-01
  %4741 = fadd fast float %4740, 5.000000e-01
  %4742 = fmul fast float %4741, %55
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4700, float %4701, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4744, %4721
  %4746 = fadd fast float %4742, %4745
  %4747 = fsub fast float 5.000000e-01, %4740
  %4748 = fmul fast float %4747, %4671
  %4749 = fmul fast float %4747, %4672
  %4750 = fmul fast float %4747, %4673
  %4751 = fadd fast float %4746, %4748
  %4752 = fadd fast float %4746, %4749
  %4753 = fadd fast float %4746, %4750
  %4754 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4757 = call float @dx.op.binary.f32(i32 36, float %4671, float %4756)  ; FMin(a,b)
  %4758 = fmul fast float %4757, %4703
  %4759 = fsub fast float 1.000000e+00, %4758
  %4760 = bitcast float %4759 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = bitcast i32 %4761 to float
  %4763 = call float @dx.op.binary.f32(i32 36, float %4672, float %4756)  ; FMin(a,b)
  %4764 = fmul fast float %4763, %4703
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = bitcast float %4765 to i32
  %4767 = sub nsw i32 2129859010, %4766
  %4768 = bitcast i32 %4767 to float
  %4769 = call float @dx.op.binary.f32(i32 36, float %4673, float %4756)  ; FMin(a,b)
  %4770 = fmul fast float %4769, %4703
  %4771 = fsub fast float 1.000000e+00, %4770
  %4772 = bitcast float %4771 to i32
  %4773 = sub nsw i32 2129859010, %4772
  %4774 = bitcast i32 %4773 to float
  %4775 = fmul fast float %4702, %56
  %4776 = fmul fast float %4775, %4735
  %4777 = fmul fast float %4776, %4762
  %4778 = fmul fast float %4702, %57
  %4779 = fmul fast float %4778, %4736
  %4780 = fmul fast float %4779, %4768
  %4781 = fmul fast float %4702, %58
  %4782 = fmul fast float %4781, %4737
  %4783 = fmul fast float %4782, %4774
  %4784 = call float @dx.op.binary.f32(i32 36, float %4665, float %4756)  ; FMin(a,b)
  %4785 = fmul fast float %4784, %4703
  %4786 = fsub fast float 1.000000e+00, %4785
  %4787 = bitcast float %4786 to i32
  %4788 = sub nsw i32 2129859010, %4787
  %4789 = bitcast i32 %4788 to float
  %4790 = call float @dx.op.binary.f32(i32 36, float %4666, float %4756)  ; FMin(a,b)
  %4791 = fmul fast float %4790, %4703
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = bitcast float %4792 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = call float @dx.op.binary.f32(i32 36, float %4691, float %4756)  ; FMin(a,b)
  %4797 = fmul fast float %4796, %4703
  %4798 = fsub fast float 1.000000e+00, %4797
  %4799 = bitcast float %4798 to i32
  %4800 = sub nsw i32 2129859010, %4799
  %4801 = bitcast i32 %4800 to float
  %4802 = fmul fast float %4775, %4751
  %4803 = fmul fast float %4802, %4789
  %4804 = fmul fast float %4778, %4752
  %4805 = fmul fast float %4804, %4795
  %4806 = fmul fast float %4781, %4753
  %4807 = fmul fast float %4806, %4801
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4780, float %4783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = select i1 %215, float 0.000000e+00, float %4777
  %4810 = select i1 %215, float %4808, float %4780
  %4811 = select i1 %215, float 0.000000e+00, float %4783
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4805, float %4807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = select i1 %215, float 0.000000e+00, float %4803
  %4814 = select i1 %215, float %4812, float %4805
  %4815 = select i1 %215, float 0.000000e+00, float %4807
  %4816 = fmul fast float %4693, 9.843750e-01
  %4817 = fmul fast float %4674, 9.843750e-01
  %4818 = fadd fast float %4816, 7.812500e-03
  %4819 = fadd fast float %4817, 7.812500e-03
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4818, float %4819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 3
  %4823 = fmul fast float %4821, %4665
  %4824 = fmul fast float %4821, %4666
  %4825 = fmul fast float %4821, %4691
  %4826 = fadd fast float %4823, %4822
  %4827 = fadd fast float %4824, %4822
  %4828 = fadd fast float %4825, %4822
  %4829 = fcmp fast ogt float %4058, 0.000000e+00
  br i1 %4829, label %4830, label %4856

; <label>:4830                                    ; preds = %4664
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4058, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.ResRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.ResRet.f32 %4831, 2
  %4835 = fadd fast float %4832, -5.000000e-01
  %4836 = fadd fast float %4833, -5.000000e-01
  %4837 = fadd fast float %4834, -5.000000e-01
  %4838 = fsub fast float 1.000000e+00, %4665
  %4839 = fsub fast float 1.000000e+00, %4666
  %4840 = fsub fast float 1.000000e+00, %4691
  %4841 = fmul fast float %4665, 4.000000e+00
  %4842 = fmul fast float %4841, %4838
  %4843 = fmul fast float %4842, %4835
  %4844 = fmul fast float %4666, 4.000000e+00
  %4845 = fmul fast float %4844, %4839
  %4846 = fmul fast float %4845, %4836
  %4847 = fmul fast float %4691, 4.000000e+00
  %4848 = fmul fast float %4847, %4840
  %4849 = fmul fast float %4848, %4837
  %4850 = fadd fast float %4843, %4826
  %4851 = fadd fast float %4846, %4827
  %4852 = fadd fast float %4849, %4828
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4855 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  br label %4856

; <label>:4856                                    ; preds = %4830, %4664
  %4857 = phi float [ %4853, %4830 ], [ %4826, %4664 ]
  %4858 = phi float [ %4854, %4830 ], [ %4827, %4664 ]
  %4859 = phi float [ %4855, %4830 ], [ %4828, %4664 ]
  %4860 = call float @dx.op.binary.f32(i32 35, float %4858, float %4859)  ; FMax(a,b)
  %4861 = call float @dx.op.binary.f32(i32 35, float %4857, float %4860)  ; FMax(a,b)
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = fmul fast float %4861, %4674
  %4864 = fadd fast float %4863, %4674
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4869 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4870 = fmul fast float %4864, %4866
  %4871 = fadd fast float %4870, %4867
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4868, %4864
  %4874 = fadd fast float %4873, %4869
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fsub fast float 1.000000e+00, %4714
  %4877 = fadd fast float %4876, %4875
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fcmp fast olt float %4878, 1.000000e+00
  br i1 %4879, label %4880, label %5735

; <label>:4880                                    ; preds = %4856
  %4881 = fcmp fast olt float %4872, 1.000000e+00
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = fcmp fast ogt float %4883, 0.000000e+00
  %4885 = or i1 %4881, %4884
  %4886 = or i1 %4881, %4884
  %4887 = xor i1 %4886, true
  %4888 = zext i1 %4887 to i32
  br i1 %4885, label %4889, label %5132

; <label>:4889                                    ; preds = %4880
  %4890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4891 = extractvalue %dx.types.CBufRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.CBufRet.f32 %4890, 1
  %4893 = extractvalue %dx.types.CBufRet.f32 %4890, 2
  %4894 = extractvalue %dx.types.CBufRet.f32 %4890, 3
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4899 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  %4902 = extractvalue %dx.types.CBufRet.f32 %4900, 1
  %4903 = extractvalue %dx.types.CBufRet.f32 %4900, 2
  %4904 = extractvalue %dx.types.CBufRet.f32 %4900, 3
  %4905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = extractvalue %dx.types.CBufRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.CBufRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.CBufRet.f32 %4905, 2
  %4909 = extractvalue %dx.types.CBufRet.f32 %4905, 3
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4913 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4914 = extractvalue %dx.types.CBufRet.f32 %4910, 3
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4919 = extractvalue %dx.types.CBufRet.f32 %4915, 3
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %4699, float %4700, float %4701)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4923 = fmul fast float %4922, 8.000000e+00
  %4924 = fadd fast float %4923, -6.000000e+00
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %4920, 8.000000e+00
  %4927 = fmul fast float %4926, %4883
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fcmp fast ogt float %4928, 0.000000e+00
  br i1 %4929, label %4930, label %5107, !dx.controlflow.hints !82

; <label>:4930                                    ; preds = %4889
  %4931 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4932 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4933 = fsub fast float %4931, %4932
  %4934 = fmul fast float %4933, %4674
  %4935 = fadd fast float %4934, %4932
  %4936 = fmul fast float %228, 2.000000e+00
  %4937 = fmul fast float %229, 2.000000e+00
  %4938 = fadd fast float %4936, -1.000000e+00
  %4939 = fadd fast float %4937, -1.000000e+00
  %4940 = fmul fast float %4935, %4938
  %4941 = fmul fast float %4935, %4939
  %4942 = fadd fast float %4940, %78
  %4943 = fadd fast float %4941, %79
  %4944 = fmul fast float %4942, %4677
  %4945 = fmul fast float %4943, %4678
  %4946 = fadd fast float %4674, 0xBFE3333340000000
  %4947 = fmul fast float %4946, 0x4004000020000000
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fmul fast float %4949, 3.000000e+00
  %4951 = fadd fast float %4950, %228
  %4952 = call float @dx.op.unary.f32(i32 27, float %4951)  ; Round_ni(value)
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4944, float %4945, float %4952, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = fcmp fast une float %4954, 0xFFF0000000000000
  %4956 = fcmp fast une float %4954, 0x7FF0000000000000
  %4957 = and i1 %4955, %4956
  %4958 = fcmp fast olt float %4954, 0.000000e+00
  %4959 = call float @dx.op.unary.f32(i32 6, float %4954)  ; FAbs(value)
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = select i1 %4957, float 1.000000e+00, float 0.000000e+00
  %4962 = fmul fast float %4961, %4928
  %4963 = fcmp fast ogt float %4962, 0.000000e+00
  br i1 %4963, label %4964, label %5107, !dx.controlflow.hints !83

; <label>:4964                                    ; preds = %4930
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.CBufRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.CBufRet.f32 %4965, 2
  %4969 = select i1 %4958, float 0.000000e+00, float %4966
  %4970 = select i1 %4958, float 0.000000e+00, float %4967
  %4971 = select i1 %4958, float 0.000000e+00, float %4968
  %4972 = select i1 %4958, float %4891, float %4906
  %4973 = select i1 %4958, float %4896, float %4911
  %4974 = select i1 %4958, float %4901, float %4916
  %4975 = select i1 %4958, float %4892, float %4907
  %4976 = select i1 %4958, float %4897, float %4912
  %4977 = select i1 %4958, float %4902, float %4917
  %4978 = select i1 %4958, float %4893, float %4908
  %4979 = select i1 %4958, float %4898, float %4913
  %4980 = select i1 %4958, float %4903, float %4918
  %4981 = select i1 %4958, float %4894, float %4909
  %4982 = select i1 %4958, float %4899, float %4914
  %4983 = select i1 %4958, float %4904, float %4919
  %4984 = fadd fast float %4969, %141
  %4985 = fadd fast float %4970, %142
  %4986 = fadd fast float %4971, %143
  %4987 = fmul fast float %4984, %4972
  %4988 = call float @dx.op.tertiary.f32(i32 46, float %4985, float %4975, float %4987)  ; FMad(a,b,c)
  %4989 = call float @dx.op.tertiary.f32(i32 46, float %4986, float %4978, float %4988)  ; FMad(a,b,c)
  %4990 = fadd fast float %4989, %4981
  %4991 = fmul fast float %4984, %4973
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4985, float %4976, float %4991)  ; FMad(a,b,c)
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4986, float %4979, float %4992)  ; FMad(a,b,c)
  %4994 = fadd fast float %4993, %4982
  %4995 = fmul fast float %4984, %4974
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4985, float %4977, float %4995)  ; FMad(a,b,c)
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4986, float %4980, float %4996)  ; FMad(a,b,c)
  %4998 = fadd fast float %4997, %4983
  %4999 = fdiv fast float 1.000000e+00, %4998
  %5000 = fmul fast float %4999, %4990
  %5001 = fmul fast float %4999, %4994
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.CBufRet.f32 %5002, 1
  %5005 = fmul fast float %5000, %5003
  %5006 = fmul fast float %5001, %5004
  %5007 = extractvalue %dx.types.CBufRet.f32 %5002, 2
  %5008 = extractvalue %dx.types.CBufRet.f32 %5002, 3
  %5009 = fadd fast float %5005, %5007
  %5010 = fadd fast float %5006, %5008
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5013 = fmul fast float %5012, %4699
  %5014 = fmul fast float %5012, %4700
  %5015 = fmul fast float %5012, %4701
  %5016 = fadd fast float %5013, %4984
  %5017 = fadd fast float %5014, %4985
  %5018 = fadd fast float %5015, %4986
  %5019 = fmul fast float %5016, %4972
  %5020 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %4975, float %5019)  ; FMad(a,b,c)
  %5021 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %4978, float %5020)  ; FMad(a,b,c)
  %5022 = fadd fast float %5021, %4981
  %5023 = fmul fast float %5016, %4973
  %5024 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %4976, float %5023)  ; FMad(a,b,c)
  %5025 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %4979, float %5024)  ; FMad(a,b,c)
  %5026 = fadd fast float %5025, %4982
  %5027 = fmul fast float %5016, %4974
  %5028 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %4977, float %5027)  ; FMad(a,b,c)
  %5029 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %4980, float %5028)  ; FMad(a,b,c)
  %5030 = fadd fast float %5029, %4983
  %5031 = fdiv fast float 1.000000e+00, %5030
  %5032 = fmul fast float %5031, %5022
  %5033 = fmul fast float %5031, %5026
  %5034 = fmul fast float %5009, 2.000000e+00
  %5035 = fadd fast float %5034, -1.000000e+00
  %5036 = call float @dx.op.unary.f32(i32 6, float %5035)  ; FAbs(value)
  %5037 = fmul fast float %5036, 5.000000e+00
  %5038 = fadd fast float %5037, -4.000000e+00
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5039, %4925
  %5041 = fsub fast float %5000, %5032
  %5042 = fmul fast float %5003, %5041
  %5043 = fmul fast float %5040, %5042
  %5044 = fsub fast float %5032, %5000
  %5045 = fmul fast float %5003, %5044
  %5046 = fadd fast float %5045, %5043
  %5047 = fsub fast float %5033, %5001
  %5048 = fmul fast float %5004, %5047
  %5049 = fmul fast float %5046, %4960
  %5050 = fmul fast float %5048, %4960
  %5051 = fadd fast float %5049, %5009
  %5052 = fadd fast float %5050, %5010
  %5053 = fsub fast float %5031, %4999
  %5054 = fmul fast float %5053, %4960
  %5055 = fadd fast float %5054, %4999
  %5056 = fdiv fast float 1.000000e+00, %5055
  %5057 = fadd fast float %4674, -1.000000e+00
  %5058 = fsub fast float %5056, %4998
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5061 = fmul fast float %5060, %5056
  %5062 = fdiv fast float 1.600000e+02, %5061
  %5063 = fmul fast float %5057, %5057
  %5064 = fmul fast float %5063, 0xBFB5B17960000000
  %5065 = fmul fast float %5064, %5058
  %5066 = fmul fast float %5065, %5062
  %5067 = call float @dx.op.unary.f32(i32 21, float %5066)  ; Exp(value)
  %5068 = fmul fast float %5067, 0x3FF04B2960000000
  %5069 = fsub fast float 0x3FF04B2960000000, %5068
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fmul fast float %5070, 4.000000e+00
  %5072 = fadd fast float %228, -5.000000e-01
  %5073 = fadd fast float %229, -5.000000e-01
  %5074 = fmul fast float %5070, 0x3FBEB851E0000000
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, %5072
  %5077 = fmul fast float %5075, %5073
  %5078 = fadd fast float %5051, %5076
  %5079 = fadd fast float %5052, %5077
  %5080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5078, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float %5071)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5081 = extractvalue %dx.types.ResRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.ResRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.ResRet.f32 %5080, 2
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5086 = fmul fast float %5085, %5081
  %5087 = fmul fast float %5085, %5082
  %5088 = fmul fast float %5085, %5083
  %5089 = select i1 %215, float 0.000000e+00, float %5087
  %5090 = select i1 %215, float 0.000000e+00, float %5088
  %5091 = fmul fast float %5078, 2.000000e+00
  %5092 = fmul fast float %5079, 2.000000e+00
  %5093 = fadd fast float %5091, -1.000000e+00
  %5094 = fadd fast float %5092, -1.000000e+00
  %5095 = fmul fast float %5093, %5093
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fsub fast float 1.000000e+00, %5097
  %5099 = fmul fast float %5098, %4925
  %5100 = fadd fast float %5099, %5097
  %5101 = fmul fast float %5094, %5094
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fmul fast float %5100, %5103
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fmul fast float %5105, %4962
  br label %5107

; <label>:5107                                    ; preds = %4964, %4930, %4889
  %5108 = phi float [ %5086, %4964 ], [ 0.000000e+00, %4930 ], [ 0.000000e+00, %4889 ]
  %5109 = phi float [ %5089, %4964 ], [ 0.000000e+00, %4930 ], [ 0.000000e+00, %4889 ]
  %5110 = phi float [ %5090, %4964 ], [ 0.000000e+00, %4930 ], [ 0.000000e+00, %4889 ]
  %5111 = phi float [ %5106, %4964 ], [ 0.000000e+00, %4930 ], [ 0.000000e+00, %4889 ]
  %5112 = fcmp fast olt float %5111, 1.000000e+00
  %5113 = or i1 %5112, %4887
  %5114 = zext i1 %5113 to i32
  %5115 = fmul fast float %5111, %4872
  %5116 = fsub fast float %5111, %5115
  %5117 = fsub fast float 1.000000e+00, %4878
  %5118 = fmul fast float %5116, %5117
  %5119 = fadd fast float %5118, %4878
  %5120 = fsub fast float %5119, %5116
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5121, %4813
  %5123 = fmul fast float %5121, %4814
  %5124 = fmul fast float %5121, %4815
  %5125 = fsub fast float -0.000000e+00, %5119
  %5126 = fmul fast float %5116, %5108
  %5127 = fmul fast float %5116, %5109
  %5128 = fmul fast float %5116, %5110
  %5129 = fadd fast float %5126, %5122
  %5130 = fadd fast float %5127, %5123
  %5131 = fadd fast float %5128, %5124
  br label %5132

; <label>:5132                                    ; preds = %5107, %4880
  %5133 = phi float [ %4878, %4880 ], [ %5125, %5107 ]
  %5134 = phi float [ %4813, %4880 ], [ %5129, %5107 ]
  %5135 = phi float [ %4814, %4880 ], [ %5130, %5107 ]
  %5136 = phi float [ %4815, %4880 ], [ %5131, %5107 ]
  %5137 = phi i32 [ %4888, %4880 ], [ %5114, %5107 ]
  %5138 = icmp eq i32 %5137, 0
  br i1 %5138, label %5735, label %5139

; <label>:5139                                    ; preds = %5132
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5143 = fmul fast float %5141, %78
  %5144 = fmul fast float %5142, %79
  %5145 = fptoui float %5143 to i32
  %5146 = fptoui float %5144 to i32
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5150 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5151 = fadd fast float %73, -4.000000e+00
  %5152 = call float @dx.op.binary.f32(i32 35, float %5151, float 0.000000e+00)  ; FMax(a,b)
  %5153 = fadd fast float %5152, %5148
  %5154 = fmul fast float %5153, %5149
  %5155 = call float @dx.op.unary.f32(i32 23, float %5154)  ; Log(value)
  %5156 = fmul fast float %5155, %5150
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5159 = fmul fast float %5156, %5158
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.i32 %5161, 1
  %5163 = add i32 %5162, -1
  %5164 = uitofp i32 %5162 to float
  %5165 = fmul fast float %5164, %5160
  %5166 = fptoui float %5165 to i32
  %5167 = call i32 @dx.op.binary.i32(i32 40, i32 %5166, i32 %5163)  ; UMin(a,b)
  %5168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.i32 %5168, 2
  %5170 = extractvalue %dx.types.CBufRet.i32 %5168, 3
  %5171 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5146, i32 %5169, i32 %5145)  ; UMad(a,b,c)
  %5172 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5167, i32 %5170, i32 %5171)  ; UMad(a,b,c)
  %5173 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5174 = fptoui float %5173 to i32
  %5175 = lshr i32 %5174, 5
  %5176 = call i32 @dx.op.binary.i32(i32 40, i32 %5175, i32 8191)  ; UMin(a,b)
  %5177 = fcmp fast ogt float %4491, 0.000000e+00
  %5178 = fcmp fast ogt float %4701, 0.000000e+00
  %5179 = and i1 %5178, %5177
  br i1 %5179, label %5180, label %5209

; <label>:5180                                    ; preds = %5139
  %5181 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4700, float %4701, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = call float @dx.op.binary.f32(i32 35, float %5181, float -1.000000e+00)  ; FMax(a,b)
  %5183 = call float @dx.op.binary.f32(i32 36, float %5182, float 1.000000e+00)  ; FMin(a,b)
  %5184 = fmul fast float %5183, %5183
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = fmul fast float %5185, 0x3FFC6E2300000000
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = fcmp fast ogt float %5187, 0.000000e+00
  %5189 = call float @dx.op.unary.f32(i32 24, float %5187)  ; Sqrt(value)
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = call float @dx.op.unary.f32(i32 23, float %5190)  ; Log(value)
  %5192 = fmul fast float %5191, 5.000000e+00
  %5193 = call float @dx.op.unary.f32(i32 21, float %5192)  ; Exp(value)
  %5194 = fmul fast float %5193, 0x3FEF591A60000000
  %5195 = fadd fast float %5194, 0x3F94DCB540000000
  %5196 = select i1 %5188, float %5195, float 1.000000e+00
  %5197 = fcmp fast oge float %5196, 1.000000e+00
  %5198 = fmul fast float %5181, 2.000000e+00
  %5199 = fadd fast float %5198, %4701
  %5200 = select i1 %5197, float %5199, float %4701
  %5201 = fsub fast float %5200, %4701
  %5202 = fmul fast float %5201, %4491
  %5203 = fadd fast float %5202, %4701
  %5204 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4700, float %5203, float %4699, float %4700, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.unary.f32(i32 25, float %5204)  ; Rsqrt(value)
  %5206 = fmul fast float %5205, %4699
  %5207 = fmul fast float %5205, %4700
  %5208 = fmul fast float %5203, %5205
  br label %5209

; <label>:5209                                    ; preds = %5180, %5139
  %5210 = phi float [ %5206, %5180 ], [ %4699, %5139 ]
  %5211 = phi float [ %5207, %5180 ], [ %4700, %5139 ]
  %5212 = phi float [ %5208, %5180 ], [ %4701, %5139 ]
  %5213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.i32 %5213, 2
  %5215 = add nsw i32 %5214, -1
  %5216 = call i32 @dx.op.binary.i32(i32 37, i32 %5215, i32 0)  ; IMax(a,b)
  %5217 = shl i32 %5176, 2
  %5218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.i32 %5218, 0
  %5220 = lshr i32 %5219, 16
  %5221 = and i32 %5219, 65535
  %5222 = lshr i32 %5219, 21
  %5223 = lshr i32 %5221, 5
  %5224 = call i32 @dx.op.binary.i32(i32 40, i32 %5223, i32 %5216)  ; UMin(a,b)
  %5225 = icmp ugt i32 %5222, %5224
  br i1 %5225, label %5607, label %5226

; <label>:5226                                    ; preds = %5209
  br label %5227

; <label>:5227                                    ; preds = %5596, %5226
  %5228 = phi float [ %5597, %5596 ], [ 0.000000e+00, %5226 ]
  %5229 = phi float [ %5598, %5596 ], [ 0.000000e+00, %5226 ]
  %5230 = phi float [ %5599, %5596 ], [ 0.000000e+00, %5226 ]
  %5231 = phi float [ %5600, %5596 ], [ 1.000000e+00, %5226 ]
  %5232 = phi i32 [ %5604, %5596 ], [ %5222, %5226 ]
  %5233 = phi float [ %5601, %5596 ], [ 0.000000e+00, %5226 ]
  %5234 = phi float [ %5602, %5596 ], [ 0.000000e+00, %5226 ]
  %5235 = phi float [ %5603, %5596 ], [ 0.000000e+00, %5226 ]
  %5236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.i32 %5236, 2
  %5238 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5172, i32 %5237, i32 %5232)  ; UMad(a,b,c)
  %5239 = shl i32 %5238, 2
  %5240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.i32 %5240, 0
  %5242 = shl i32 %5232, 5
  %5243 = sub nsw i32 %5220, %5242
  %5244 = call i32 @dx.op.binary.i32(i32 37, i32 %5243, i32 0)  ; IMax(a,b)
  %5245 = call i32 @dx.op.binary.i32(i32 38, i32 %5244, i32 31)  ; IMin(a,b)
  %5246 = sub nsw i32 1, %5220
  %5247 = add nsw i32 %5246, %5221
  %5248 = call i32 @dx.op.binary.i32(i32 37, i32 %5247, i32 0)  ; IMax(a,b)
  %5249 = call i32 @dx.op.binary.i32(i32 38, i32 %5248, i32 32)  ; IMin(a,b)
  %5250 = and i32 %5249, 31
  %5251 = shl i32 -1, %5250
  %5252 = xor i32 %5251, -1
  %5253 = and i32 %5245, 31
  %5254 = shl i32 %5252, %5253
  %5255 = icmp eq i32 %5249, 32
  %5256 = select i1 %5255, i32 -1, i32 %5254
  %5257 = and i32 %5256, %5241
  %5258 = icmp eq i32 %5257, 0
  br i1 %5258, label %5596, label %5259

; <label>:5259                                    ; preds = %5227
  br label %5260

; <label>:5260                                    ; preds = %5370, %5259
  %5261 = phi float [ %5371, %5370 ], [ %5228, %5259 ]
  %5262 = phi float [ %5372, %5370 ], [ %5229, %5259 ]
  %5263 = phi float [ %5373, %5370 ], [ %5230, %5259 ]
  %5264 = phi float [ %5374, %5370 ], [ %5231, %5259 ]
  %5265 = phi i32 [ %5273, %5370 ], [ %5257, %5259 ]
  %5266 = phi float [ %5375, %5370 ], [ %5233, %5259 ]
  %5267 = phi float [ %5376, %5370 ], [ %5234, %5259 ]
  %5268 = phi float [ %5377, %5370 ], [ %5235, %5259 ]
  %5269 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5265)  ; FirstbitLo(value)
  %5270 = add i32 %5269, %5242
  %5271 = and i32 %5269, 31
  %5272 = shl i32 1, %5271
  %5273 = xor i32 %5272, %5265
  %5274 = mul i32 %5270, 72
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = add i32 %5274, 12
  %5280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.i32 %5280, 0
  %5282 = add i32 %5274, 16
  %5283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.ResRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5283, 2
  %5287 = add i32 %5274, 28
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = add i32 %5274, 32
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.ResRet.f32 %5291, 2
  %5295 = extractvalue %dx.types.ResRet.f32 %5291, 3
  %5296 = add i32 %5274, 48
  %5297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.ResRet.f32 %5297, 1
  %5300 = add i32 %5274, 56
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = add i32 %5274, 64
  %5305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = mul i32 %5270, 60
  %5309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5313 = add i32 %5308, 12
  %5314 = add i32 %5308, 48
  %5315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5314, i32 undef)  ; BufferLoad(srv,index,wot)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  %5319 = and i32 %5281, 32767
  %5320 = bitcast float %5276 to i32
  %5321 = icmp eq i32 %5320, -1
  %5322 = bitcast float %5277 to i32
  %5323 = and i32 %5281, 32768
  %5324 = icmp ne i32 %5323, 0
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = fsub fast float %5310, %5326
  %5330 = fsub fast float %5311, %5327
  %5331 = fsub fast float %5312, %5328
  %5332 = fsub fast float %141, %5329
  %5333 = fsub fast float %142, %5330
  %5334 = fsub fast float %143, %5331
  %5335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5336, float %5337, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = add i32 %5308, 24
  %5341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5340, i32 undef)  ; BufferLoad(srv,index,wot)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = add i32 %5308, 36
  %5347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.ResRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.ResRet.f32 %5347, 2
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5353 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5354 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5355 = fsub fast float %5316, %5352
  %5356 = fsub fast float %5317, %5353
  %5357 = fsub fast float %5318, %5354
  %5358 = fmul fast float %5355, %5284
  %5359 = fmul fast float %5356, %5285
  %5360 = fmul fast float %5357, %5286
  %5361 = call float @dx.op.binary.f32(i32 36, float %5359, float %5360)  ; FMin(a,b)
  %5362 = call float @dx.op.binary.f32(i32 36, float %5358, float %5361)  ; FMin(a,b)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = call float @dx.op.binary.f32(i32 36, float %5264, float %5363)  ; FMin(a,b)
  %5365 = uitofp i1 %5324 to float
  %5366 = fadd fast float %4491, 1.000000e+00
  %5367 = fsub fast float %5366, %5365
  %5368 = fmul fast float %5364, %5367
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  br i1 %5369, label %5379, label %5370

; <label>:5370                                    ; preds = %5521, %5260
  %5371 = phi float [ %5585, %5521 ], [ %5261, %5260 ]
  %5372 = phi float [ %5586, %5521 ], [ %5262, %5260 ]
  %5373 = phi float [ %5587, %5521 ], [ %5263, %5260 ]
  %5374 = phi float [ %5594, %5521 ], [ %5264, %5260 ]
  %5375 = phi float [ %5591, %5521 ], [ %5266, %5260 ]
  %5376 = phi float [ %5592, %5521 ], [ %5267, %5260 ]
  %5377 = phi float [ %5593, %5521 ], [ %5268, %5260 ]
  %5378 = icmp eq i32 %5265, %5272
  br i1 %5378, label %5595, label %5260

; <label>:5379                                    ; preds = %5260
  br i1 %5321, label %5437, label %5380

; <label>:5380                                    ; preds = %5379
  %5381 = fsub fast float -0.000000e+00, %5336
  %5382 = fsub fast float -0.000000e+00, %5337
  %5383 = fsub fast float -0.000000e+00, %5338
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = fadd fast float %5386, %5299
  %5388 = fadd fast float %5298, %5386
  %5389 = fsub fast float -0.000000e+00, %5388
  %5390 = fcmp ogt float %5384, -0.000000e+00
  %5391 = select i1 %5390, float %5389, float %5387
  %5392 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5393 = fdiv fast float 1.000000e+00, %5392
  %5394 = fmul fast float %5391, %5393
  %5395 = call float @dx.op.binary.f32(i32 35, float %5394, float 0.000000e+00)  ; FMax(a,b)
  %5396 = fsub fast float -0.000000e+00, %5342
  %5397 = fsub fast float -0.000000e+00, %5343
  %5398 = fsub fast float -0.000000e+00, %5344
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = fsub fast float -0.000000e+00, %5399
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = fadd fast float %5401, %5303
  %5403 = fadd fast float %5302, %5401
  %5404 = fsub fast float -0.000000e+00, %5403
  %5405 = fcmp ogt float %5399, -0.000000e+00
  %5406 = select i1 %5405, float %5404, float %5402
  %5407 = call float @dx.op.unary.f32(i32 6, float %5400)  ; FAbs(value)
  %5408 = fdiv fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5406, %5408
  %5410 = call float @dx.op.binary.f32(i32 35, float %5409, float 0.000000e+00)  ; FMax(a,b)
  %5411 = fsub fast float -0.000000e+00, %5348
  %5412 = fsub fast float -0.000000e+00, %5349
  %5413 = fsub fast float -0.000000e+00, %5350
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fsub fast float -0.000000e+00, %5414
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = fadd fast float %5416, %5307
  %5418 = fadd fast float %5306, %5416
  %5419 = fsub fast float -0.000000e+00, %5418
  %5420 = fcmp ogt float %5414, -0.000000e+00
  %5421 = select i1 %5420, float %5419, float %5417
  %5422 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5423 = fdiv fast float 1.000000e+00, %5422
  %5424 = fmul fast float %5421, %5423
  %5425 = call float @dx.op.binary.f32(i32 35, float %5424, float 0.000000e+00)  ; FMax(a,b)
  %5426 = call float @dx.op.binary.f32(i32 36, float %5410, float %5425)  ; FMin(a,b)
  %5427 = call float @dx.op.binary.f32(i32 36, float %5395, float %5426)  ; FMin(a,b)
  %5428 = fmul fast float %5427, %5210
  %5429 = fmul fast float %5427, %5211
  %5430 = fmul fast float %5427, %5212
  %5431 = fadd fast float %5428, %141
  %5432 = fadd fast float %5429, %142
  %5433 = fadd fast float %5430, %143
  %5434 = fsub fast float %5431, %5276
  %5435 = fsub fast float %5432, %5277
  %5436 = fsub fast float %5433, %5278
  br label %5444

; <label>:5437                                    ; preds = %5379
  %5438 = fmul fast float %5210, 8.096000e+03
  %5439 = fmul fast float %5211, 8.096000e+03
  %5440 = fmul fast float %5212, 8.096000e+03
  %5441 = fadd fast float %5438, %141
  %5442 = fadd fast float %5439, %142
  %5443 = fadd fast float %5440, %143
  br label %5444

; <label>:5444                                    ; preds = %5437, %5380
  %5445 = phi float [ %5210, %5437 ], [ %5434, %5380 ]
  %5446 = phi float [ %5211, %5437 ], [ %5435, %5380 ]
  %5447 = phi float [ %5212, %5437 ], [ %5436, %5380 ]
  %5448 = phi float [ %5441, %5437 ], [ %5431, %5380 ]
  %5449 = phi float [ %5442, %5437 ], [ %5432, %5380 ]
  %5450 = phi float [ %5443, %5437 ], [ %5433, %5380 ]
  %5451 = fcmp fast olt float %5295, 1.000000e+00
  br i1 %5451, label %5452, label %5483, !dx.controlflow.hints !84

; <label>:5452                                    ; preds = %5444
  %5453 = fmul fast float %5447, %5293
  %5454 = fmul fast float %5446, %5294
  %5455 = fsub fast float %5453, %5454
  %5456 = fmul fast float %5445, %5294
  %5457 = fmul fast float %5447, %5292
  %5458 = fsub fast float %5456, %5457
  %5459 = fmul fast float %5446, %5292
  %5460 = fmul fast float %5445, %5293
  %5461 = fsub fast float %5459, %5460
  %5462 = fmul fast float %5455, 2.000000e+00
  %5463 = fmul fast float %5458, 2.000000e+00
  %5464 = fmul fast float %5461, 2.000000e+00
  %5465 = fmul fast float %5462, %5295
  %5466 = fmul fast float %5463, %5295
  %5467 = fmul fast float %5464, %5295
  %5468 = fmul fast float %5464, %5293
  %5469 = fmul fast float %5463, %5294
  %5470 = fmul fast float %5462, %5294
  %5471 = fmul fast float %5464, %5292
  %5472 = fmul fast float %5463, %5292
  %5473 = fmul fast float %5462, %5293
  %5474 = fadd fast float %5468, %5445
  %5475 = fadd fast float %5474, %5465
  %5476 = fsub fast float %5475, %5469
  %5477 = fsub fast float %5446, %5471
  %5478 = fadd fast float %5477, %5466
  %5479 = fadd fast float %5478, %5470
  %5480 = fadd fast float %5467, %5447
  %5481 = fsub fast float %5480, %5473
  %5482 = fadd fast float %5481, %5472
  br label %5483

; <label>:5483                                    ; preds = %5452, %5444
  %5484 = phi float [ %5476, %5452 ], [ %5445, %5444 ]
  %5485 = phi float [ %5479, %5452 ], [ %5446, %5444 ]
  %5486 = phi float [ %5482, %5452 ], [ %5447, %5444 ]
  br i1 %5321, label %5518, label %5487

; <label>:5487                                    ; preds = %5483
  %5488 = fmul fast float %4674, 0x400187C840000000
  %5489 = fadd fast float %5488, 0xC00EFC2120000000
  %5490 = fmul fast float %5489, %4674
  %5491 = fadd fast float %5490, 0x3FE5D16340000000
  %5492 = fmul fast float %5491, %4674
  %5493 = fadd fast float %5492, 1.000000e+00
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fsub fast float %5448, %141
  %5496 = fsub fast float %5449, %142
  %5497 = fsub fast float %5450, %143
  %5498 = fsub fast float %5448, %5276
  %5499 = fsub fast float %5449, %5277
  %5500 = fsub fast float %5450, %5278
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %5497, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5500, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fadd fast float %5502, 0x3EE4F8B580000000
  %5504 = fdiv fast float %5501, %5503
  %5505 = bitcast float %5504 to i32
  %5506 = ashr i32 %5505, 1
  %5507 = add nsw i32 %5506, 532487669
  %5508 = bitcast i32 %5507 to float
  %5509 = fmul fast float %5508, %5494
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5510, 0x4009981AE0000000
  %5512 = fsub fast float 0x40111BBD80000000, %5511
  %5513 = fmul fast float %5512, %5510
  %5514 = fadd fast float %5513, 0xC0009F6020000000
  %5515 = fmul fast float %5514, %5510
  %5516 = fadd fast float %5515, 1.000000e+00
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  br label %5521

; <label>:5518                                    ; preds = %5483
  %5519 = icmp ne i32 %5322, -1
  %5520 = zext i1 %5519 to i32
  br label %5521

; <label>:5521                                    ; preds = %5518, %5487
  %5522 = phi float [ %4674, %5518 ], [ %5517, %5487 ]
  %5523 = phi i32 [ %5520, %5518 ], [ 0, %5487 ]
  %5524 = fmul float %5522, 5.000000e+00
  %5525 = fsub float 5.000000e+00, %5524
  %5526 = icmp ne i32 %5523, 0
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 3
  %5529 = fadd fast float %5528, %5525
  %5530 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5529)  ; FMax(a,b)
  %5531 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5532 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5533 = fadd fast float %5532, %5531
  %5534 = call float @dx.op.unary.f32(i32 6, float %5486)  ; FAbs(value)
  %5535 = fadd fast float %5533, %5534
  %5536 = fcmp fast oeq float %5535, 0.000000e+00
  %5537 = fdiv fast float 1.000000e+00, %5535
  %5538 = select i1 %5536, float 1.000000e+00, float %5537
  %5539 = fmul fast float %5538, %5484
  %5540 = fmul fast float %5538, %5485
  %5541 = call float @dx.op.unary.f32(i32 6, float %5540)  ; FAbs(value)
  %5542 = call float @dx.op.unary.f32(i32 6, float %5539)  ; FAbs(value)
  %5543 = fsub fast float 1.000000e+00, %5541
  %5544 = fsub fast float 1.000000e+00, %5542
  %5545 = fcmp fast oge float %5539, 0.000000e+00
  %5546 = fcmp fast oge float %5540, 0.000000e+00
  %5547 = select i1 %5545, float 1.000000e+00, float -1.000000e+00
  %5548 = select i1 %5546, float 1.000000e+00, float -1.000000e+00
  %5549 = fcmp fast ole float %5486, 0.000000e+00
  %5550 = fmul fast float %5547, %5543
  %5551 = fmul fast float %5548, %5544
  %5552 = select i1 %5549, float %5550, float %5539
  %5553 = select i1 %5549, float %5551, float %5540
  %5554 = fmul fast float %5552, 5.000000e-01
  %5555 = fmul fast float %5553, 5.000000e-01
  %5556 = fadd fast float %5554, 5.000000e-01
  %5557 = fadd fast float %5555, 5.000000e-01
  %5558 = uitofp i32 %5319 to float
  %5559 = call float @dx.op.binary.f32(i32 36, float %5530, float 3.000000e+00)  ; FMin(a,b)
  %5560 = fadd fast float %5559, 2.000000e+00
  %5561 = call float @dx.op.unary.f32(i32 21, float %5560)  ; Exp(value)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5563 = fmul fast float %5562, %5561
  %5564 = fmul fast float %5563, 2.000000e+00
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5556, %5565
  %5567 = fmul fast float %5557, %5565
  %5568 = fadd fast float %5566, %5563
  %5569 = fadd fast float %5567, %5563
  %5570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5568, float %5569, float %5558, float undef, i32 0, i32 0, i32 undef, float %5530)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5571 = extractvalue %dx.types.ResRet.f32 %5570, 0
  %5572 = extractvalue %dx.types.ResRet.f32 %5570, 1
  %5573 = extractvalue %dx.types.ResRet.f32 %5570, 2
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 3
  %5576 = fmul fast float %5575, %5289
  %5577 = call float @dx.op.binary.f32(i32 36, float %4754, float %5576)  ; FMin(a,b)
  %5578 = select i1 %5526, float %5577, float %5576
  %5579 = fmul fast float %5571, %5368
  %5580 = fmul fast float %5579, %5578
  %5581 = fmul fast float %5572, %5368
  %5582 = fmul fast float %5581, %5578
  %5583 = fmul fast float %5573, %5368
  %5584 = fmul fast float %5583, %5578
  %5585 = fadd fast float %5580, %5261
  %5586 = fadd fast float %5582, %5262
  %5587 = fadd fast float %5584, %5263
  %5588 = fmul fast float %5448, %5368
  %5589 = fmul fast float %5449, %5368
  %5590 = fmul fast float %5450, %5368
  %5591 = fadd fast float %5588, %5266
  %5592 = fadd fast float %5589, %5267
  %5593 = fadd fast float %5590, %5268
  %5594 = fsub fast float %5264, %5368
  br label %5370

; <label>:5595                                    ; preds = %5370
  br label %5596

; <label>:5596                                    ; preds = %5595, %5227
  %5597 = phi float [ %5228, %5227 ], [ %5371, %5595 ]
  %5598 = phi float [ %5229, %5227 ], [ %5372, %5595 ]
  %5599 = phi float [ %5230, %5227 ], [ %5373, %5595 ]
  %5600 = phi float [ %5231, %5227 ], [ %5374, %5595 ]
  %5601 = phi float [ %5233, %5227 ], [ %5375, %5595 ]
  %5602 = phi float [ %5234, %5227 ], [ %5376, %5595 ]
  %5603 = phi float [ %5235, %5227 ], [ %5377, %5595 ]
  %5604 = add i32 %5232, 1
  %5605 = icmp ugt i32 %5604, %5224
  br i1 %5605, label %5606, label %5227, !llvm.loop !85

; <label>:5606                                    ; preds = %5596
  br label %5607

; <label>:5607                                    ; preds = %5606, %5209
  %5608 = phi float [ 0.000000e+00, %5209 ], [ %5597, %5606 ]
  %5609 = phi float [ 0.000000e+00, %5209 ], [ %5598, %5606 ]
  %5610 = phi float [ 0.000000e+00, %5209 ], [ %5599, %5606 ]
  %5611 = phi float [ 0.000000e+00, %5209 ], [ %5601, %5606 ]
  %5612 = phi float [ 0.000000e+00, %5209 ], [ %5602, %5606 ]
  %5613 = phi float [ 0.000000e+00, %5209 ], [ %5603, %5606 ]
  %5614 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = select i1 %215, float 0.000000e+00, float %5608
  %5616 = select i1 %215, float %5614, float %5609
  %5617 = select i1 %215, float 0.000000e+00, float %5610
  %5618 = fcmp fast olt float %5133, 0.000000e+00
  %5619 = call float @dx.op.unary.f32(i32 6, float %5133)  ; FAbs(value)
  %5620 = fmul fast float %5619, %5134
  %5621 = fmul fast float %5619, %5135
  %5622 = fmul fast float %5619, %5136
  %5623 = select i1 %5618, float %5134, float %5620
  %5624 = select i1 %5618, float %5135, float %5621
  %5625 = select i1 %5618, float %5136, float %5622
  %5626 = fsub fast float 1.000000e+00, %5619
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fmul fast float %5627, %5615
  %5629 = fmul fast float %5627, %5616
  %5630 = fmul fast float %5627, %5617
  %5631 = fadd fast float %5623, %5628
  %5632 = fadd fast float %5624, %5629
  %5633 = fadd fast float %5625, %5630
  %5634 = fcmp fast une float %4883, 0.000000e+00
  br i1 %5634, label %5735, label %5635

; <label>:5635                                    ; preds = %5607
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.CBufRet.f32 %5636, 1
  %5639 = extractvalue %dx.types.CBufRet.f32 %5636, 2
  %5640 = extractvalue %dx.types.CBufRet.f32 %5636, 3
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.CBufRet.f32 %5646, 1
  %5649 = extractvalue %dx.types.CBufRet.f32 %5646, 2
  %5650 = extractvalue %dx.types.CBufRet.f32 %5646, 3
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5647, float %5648, float %5649, float %4699, float %4700, float %4701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %5647, float %5648, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5647, float %5648, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = fadd fast float %4674, -1.000000e+00
  %5655 = fsub fast float %5652, %5653
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 2
  %5658 = fmul fast float %5657, %5652
  %5659 = fdiv fast float 1.600000e+02, %5658
  %5660 = fmul fast float %5654, %5654
  %5661 = fmul fast float %5660, 0xBFB5B17960000000
  %5662 = fmul fast float %5661, %5655
  %5663 = fmul fast float %5662, %5659
  %5664 = call float @dx.op.unary.f32(i32 21, float %5663)  ; Exp(value)
  %5665 = fmul fast float %5664, 0x3FF04B2960000000
  %5666 = fsub fast float 0x3FF04B2960000000, %5665
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5667, 4.000000e+00
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5673 = fadd fast float %5670, %5611
  %5674 = fadd fast float %5671, %5612
  %5675 = fadd fast float %5672, %5613
  %5676 = fmul fast float %5673, %5637
  %5677 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5638, float %5676)  ; FMad(a,b,c)
  %5678 = call float @dx.op.tertiary.f32(i32 46, float %5675, float %5639, float %5677)  ; FMad(a,b,c)
  %5679 = fadd fast float %5678, %5640
  %5680 = fmul fast float %5673, %5642
  %5681 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5643, float %5680)  ; FMad(a,b,c)
  %5682 = call float @dx.op.tertiary.f32(i32 46, float %5675, float %5644, float %5681)  ; FMad(a,b,c)
  %5683 = fadd fast float %5682, %5645
  %5684 = fmul fast float %5673, %5647
  %5685 = call float @dx.op.tertiary.f32(i32 46, float %5674, float %5648, float %5684)  ; FMad(a,b,c)
  %5686 = call float @dx.op.tertiary.f32(i32 46, float %5675, float %5649, float %5685)  ; FMad(a,b,c)
  %5687 = fadd fast float %5686, %5650
  %5688 = fdiv fast float %5679, %5687
  %5689 = fdiv fast float %5683, %5687
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = fmul fast float %5691, %5688
  %5694 = fmul fast float %5692, %5689
  %5695 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5696 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5697 = fadd fast float %5693, %5695
  %5698 = fadd fast float %5694, %5696
  %5699 = fmul fast float %5651, 8.000000e+00
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = fmul fast float %5697, 2.000000e+00
  %5702 = fmul fast float %5698, 2.000000e+00
  %5703 = fadd fast float %5701, -1.000000e+00
  %5704 = fadd fast float %5702, -1.000000e+00
  %5705 = fmul fast float %5703, %5703
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = fmul fast float %5704, %5704
  %5709 = fsub fast float 1.000000e+00, %5708
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = fmul fast float %4883, %5707
  %5712 = fmul fast float %5711, %5710
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = fmul fast float %5713, %5700
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5697, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float %5668)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = select i1 %215, float 0.000000e+00, float %5717
  %5720 = select i1 %215, float 0.000000e+00, float %5718
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5723 = fmul fast float %5722, %5716
  %5724 = fmul fast float %5719, %5722
  %5725 = fmul fast float %5720, %5722
  %5726 = fsub fast float %5723, %5615
  %5727 = fsub fast float %5724, %5616
  %5728 = fsub fast float %5725, %5617
  %5729 = fmul fast float %5726, %5714
  %5730 = fmul fast float %5727, %5714
  %5731 = fmul fast float %5728, %5714
  %5732 = fadd fast float %5729, %5615
  %5733 = fadd fast float %5730, %5616
  %5734 = fadd fast float %5731, %5617
  br label %5735

; <label>:5735                                    ; preds = %5635, %5607, %5132, %4856
  %5736 = phi float [ %5134, %5132 ], [ %5631, %5607 ], [ %4813, %4856 ], [ %5732, %5635 ]
  %5737 = phi float [ %5135, %5132 ], [ %5632, %5607 ], [ %4814, %4856 ], [ %5733, %5635 ]
  %5738 = phi float [ %5136, %5132 ], [ %5633, %5607 ], [ %4815, %4856 ], [ %5734, %5635 ]
  %5739 = fmul fast float %4862, %4809
  %5740 = fmul fast float %4862, %4810
  %5741 = fmul fast float %4862, %4811
  %5742 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = fcmp fast ogt float %5742, 0x3E7FF19E20000000
  %5744 = fdiv fast float 1.000000e+00, %5742
  %5745 = select i1 %5743, float %5744, float 0.000000e+00
  %5746 = fmul fast float %5745, %4671
  %5747 = fmul fast float %5745, %4672
  %5748 = fmul fast float %5745, %4673
  %5749 = fadd fast float %5746, -1.000000e+00
  %5750 = fadd fast float %5747, -1.000000e+00
  %5751 = fadd fast float %5748, -1.000000e+00
  %5752 = fmul fast float %5749, 5.000000e-01
  %5753 = fmul fast float %5750, 5.000000e-01
  %5754 = fmul fast float %5751, 5.000000e-01
  %5755 = fadd fast float %5752, 1.000000e+00
  %5756 = fadd fast float %5753, 1.000000e+00
  %5757 = fadd fast float %5754, 1.000000e+00
  %5758 = fmul fast float %5736, %4857
  %5759 = fmul fast float %5737, %4858
  %5760 = fmul fast float %5738, %4859
  %5761 = fsub fast float 1.000000e+00, %4693
  %5762 = bitcast float %5761 to i32
  %5763 = sitofp i32 %5762 to float
  %5764 = fmul fast float %5763, 5.000000e+00
  %5765 = fadd fast float %5764, 0xC1EFBF8940000000
  %5766 = fptosi float %5765 to i32
  %5767 = bitcast i32 %5766 to float
  %5768 = fmul fast float %5767, %4059
  %5769 = fmul fast float %4809, %5768
  %5770 = fmul fast float %5769, %4862
  %5771 = fmul fast float %5770, %5755
  %5772 = fmul fast float %4810, %5768
  %5773 = fmul fast float %5772, %4862
  %5774 = fmul fast float %5773, %5756
  %5775 = fmul fast float %4811, %5768
  %5776 = fmul fast float %5775, %4862
  %5777 = fmul fast float %5776, %5757
  %5778 = fmul fast float %5739, %4085
  %5779 = fmul fast float %5740, %4085
  %5780 = fmul fast float %5741, %4085
  %5781 = fadd fast float %5758, %4048
  %5782 = fadd fast float %5781, %5771
  %5783 = fmul fast float %5782, %4085
  %5784 = fadd fast float %5759, %4049
  %5785 = fadd fast float %5784, %5774
  %5786 = fmul fast float %5785, %4085
  %5787 = fadd fast float %5760, %4050
  %5788 = fadd fast float %5787, %5777
  %5789 = fmul fast float %5788, %4085
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5792 = fcmp fast oeq float %5791, 0.000000e+00
  br i1 %5792, label %6012, label %5793

; <label>:5793                                    ; preds = %5735
  %5794 = extractvalue %dx.types.CBufRet.f32 %5790, 0
  %5795 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5796 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = select i1 %215, float %5802, float %5798
  %5806 = select i1 %215, float %5804, float %5799
  %5807 = select i1 %215, float %5803, float %5800
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5810 = fcmp fast une float %5809, 0.000000e+00
  br i1 %5810, label %5811, label %5828

; <label>:5811                                    ; preds = %5793
  %5812 = fptoui float %78 to i32
  %5813 = fptoui float %79 to i32
  %5814 = lshr i32 %5812, 4
  %5815 = lshr i32 %5813, 4
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5818 = fptoui float %5817 to i32
  %5819 = add i32 %5818, 15
  %5820 = lshr i32 %5819, 4
  %5821 = mul i32 %5820, %5815
  %5822 = add i32 %5821, %5814
  %5823 = shl i32 %5822, 3
  %5824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5823, i32 undef)  ; BufferLoad(srv,index,wot)
  %5825 = extractvalue %dx.types.ResRet.i32 %5824, 0
  %5826 = and i32 %5825, -268435456
  %5827 = icmp eq i32 %5826, -1342177280
  br i1 %5827, label %5833, label %5828

; <label>:5828                                    ; preds = %5811, %5793
  %5829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4679, float %4680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  br label %5833

; <label>:5833                                    ; preds = %5828, %5811
  %5834 = phi float [ %5830, %5828 ], [ 0.000000e+00, %5811 ]
  %5835 = phi float [ %5831, %5828 ], [ 0.000000e+00, %5811 ]
  %5836 = phi float [ %5832, %5828 ], [ 0.000000e+00, %5811 ]
  %5837 = call float @dx.op.binary.f32(i32 36, float %5835, float %5836)  ; FMin(a,b)
  %5838 = call float @dx.op.binary.f32(i32 36, float %5834, float %5837)  ; FMin(a,b)
  %5839 = fcmp fast ogt float %5838, 0.000000e+00
  br i1 %5839, label %5840, label %6012, !dx.controlflow.hints !87

; <label>:5840                                    ; preds = %5833
  %5841 = fmul fast float %5834, %5805
  %5842 = fmul fast float %5835, %5806
  %5843 = fmul fast float %5836, %5807
  %5844 = fsub fast float %5794, %161
  %5845 = fsub fast float %5795, %162
  %5846 = fsub fast float %5796, %163
  %5847 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5844, float %5845, float %5846)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = call float @dx.op.unary.f32(i32 25, float %5847)  ; Rsqrt(value)
  %5849 = fmul fast float %5848, %5844
  %5850 = fmul fast float %5848, %5845
  %5851 = fmul fast float %5848, %5846
  %5852 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float %4668, float %4669, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = call float @dx.op.dot3.f32(i32 55, float %4499, float %4500, float %4501, float %5849, float %5850, float %5851)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5855 = bitcast i32 %4717 to float
  %5856 = fmul fast float %5854, %5854
  %5857 = fmul fast float %5856, %5855
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fmul fast float %5858, %5854
  %5860 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %5849, float %5850, float %5851)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fmul fast float %5860, %5860
  %5862 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5863 = fsub fast float 1.000000e+00, %4711
  %5864 = fmul fast float %4693, %4693
  %5865 = fmul fast float %5864, %5863
  %5866 = fadd fast float %5865, %4711
  %5867 = bitcast float %5866 to i32
  %5868 = ashr i32 %5867, 1
  %5869 = add nsw i32 %5868, 532487669
  %5870 = bitcast i32 %5869 to float
  %5871 = fadd fast float %5870, %4693
  %5872 = fmul fast float %4711, %5861
  %5873 = fsub fast float 1.000000e+00, %5861
  %5874 = fadd fast float %5873, %5872
  %5875 = fmul fast float %5862, %5862
  %5876 = fmul fast float %5875, %5863
  %5877 = fadd fast float %5876, %4711
  %5878 = bitcast float %5877 to i32
  %5879 = ashr i32 %5878, 1
  %5880 = add nsw i32 %5879, 532487669
  %5881 = bitcast i32 %5880 to float
  %5882 = fadd fast float %5881, %5862
  %5883 = fmul fast float %5874, %5874
  %5884 = fmul fast float %5883, %5871
  %5885 = fmul fast float %5884, %5882
  %5886 = fdiv fast float 0x3FF0A00000000000, %5885
  %5887 = fmul fast float %5886, %4711
  %5888 = call float @dx.op.unary.f32(i32 6, float %5853)  ; FAbs(value)
  %5889 = fsub fast float 1.000000e+00, %5888
  %5890 = bitcast float %5889 to i32
  %5891 = sitofp i32 %5890 to float
  %5892 = fmul fast float %5891, 5.000000e+00
  %5893 = fadd fast float %5892, 0xC1EFBF8940000000
  %5894 = fptosi float %5893 to i32
  %5895 = bitcast i32 %5894 to float
  %5896 = fsub fast float 1.000000e+00, %4665
  %5897 = fsub fast float 1.000000e+00, %4666
  %5898 = fsub fast float 1.000000e+00, %4691
  %5899 = fmul fast float %5895, %5896
  %5900 = fmul fast float %5895, %5897
  %5901 = fmul fast float %5895, %5898
  %5902 = fadd fast float %5899, %4665
  %5903 = fadd fast float %5900, %4666
  %5904 = fadd fast float %5901, %4691
  br i1 %4829, label %5905, label %5928

; <label>:5905                                    ; preds = %5840
  %5906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4058, float %5888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5907 = extractvalue %dx.types.ResRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.ResRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.ResRet.f32 %5906, 2
  %5910 = fadd fast float %5907, -5.000000e-01
  %5911 = fadd fast float %5908, -5.000000e-01
  %5912 = fadd fast float %5909, -5.000000e-01
  %5913 = fmul fast float %4665, 4.000000e+00
  %5914 = fmul fast float %5913, %5896
  %5915 = fmul fast float %5914, %5910
  %5916 = fmul fast float %4666, 4.000000e+00
  %5917 = fmul fast float %5916, %5897
  %5918 = fmul fast float %5917, %5911
  %5919 = fmul fast float %4691, 4.000000e+00
  %5920 = fmul fast float %5919, %5898
  %5921 = fmul fast float %5920, %5912
  %5922 = fadd fast float %5915, %5902
  %5923 = fadd fast float %5918, %5903
  %5924 = fadd fast float %5921, %5904
  %5925 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5926 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5927 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  br label %5928

; <label>:5928                                    ; preds = %5905, %5840
  %5929 = phi float [ %5925, %5905 ], [ %5902, %5840 ]
  %5930 = phi float [ %5926, %5905 ], [ %5903, %5840 ]
  %5931 = phi float [ %5927, %5905 ], [ %5904, %5840 ]
  %5932 = fmul fast float %5852, 9.843750e-01
  %5933 = fadd fast float %5932, 7.812500e-03
  %5934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5933, float %4819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 3
  %5937 = fmul fast float %5935, %4665
  %5938 = fmul fast float %5935, %4666
  %5939 = fmul fast float %5935, %4691
  %5940 = fadd fast float %5937, %5936
  %5941 = fadd fast float %5938, %5936
  %5942 = fadd fast float %5939, %5936
  br i1 %4829, label %5943, label %5966

; <label>:5943                                    ; preds = %5928
  %5944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4058, float %5852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = fadd fast float %5945, -5.000000e-01
  %5949 = fadd fast float %5946, -5.000000e-01
  %5950 = fadd fast float %5947, -5.000000e-01
  %5951 = fmul fast float %4665, 4.000000e+00
  %5952 = fmul fast float %5951, %5896
  %5953 = fmul fast float %5952, %5948
  %5954 = fmul fast float %4666, 4.000000e+00
  %5955 = fmul fast float %5954, %5897
  %5956 = fmul fast float %5955, %5949
  %5957 = fmul fast float %4691, 4.000000e+00
  %5958 = fmul fast float %5957, %5898
  %5959 = fmul fast float %5958, %5950
  %5960 = fadd fast float %5953, %5940
  %5961 = fadd fast float %5956, %5941
  %5962 = fadd fast float %5959, %5942
  %5963 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  br label %5966

; <label>:5966                                    ; preds = %5943, %5928
  %5967 = phi float [ %5963, %5943 ], [ %5940, %5928 ]
  %5968 = phi float [ %5964, %5943 ], [ %5941, %5928 ]
  %5969 = phi float [ %5965, %5943 ], [ %5942, %5928 ]
  %5970 = call float @dx.op.binary.f32(i32 35, float %5968, float %5969)  ; FMax(a,b)
  %5971 = call float @dx.op.binary.f32(i32 35, float %5967, float %5970)  ; FMax(a,b)
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = fmul fast float %5929, %5887
  %5974 = fmul fast float %5930, %5887
  %5975 = fmul fast float %5931, %5887
  %5976 = fsub fast float 1.000000e+00, %5853
  %5977 = bitcast float %5976 to i32
  %5978 = sitofp i32 %5977 to float
  %5979 = fmul fast float %5978, 5.000000e+00
  %5980 = fadd fast float %5979, 0xC1EFBF8940000000
  %5981 = fptosi float %5980 to i32
  %5982 = bitcast i32 %5981 to float
  %5983 = fmul fast float %5982, %4059
  %5984 = fmul fast float %5972, %5983
  %5985 = fmul fast float %5984, %5755
  %5986 = fmul fast float %5984, %5756
  %5987 = fmul fast float %5984, %5757
  %5988 = fadd fast float %5985, %5973
  %5989 = fadd fast float %5986, %5974
  %5990 = fadd fast float %5987, %5975
  %5991 = fmul fast float %5859, %5841
  %5992 = fmul fast float %5991, %5972
  %5993 = fmul fast float %5859, %5842
  %5994 = fmul fast float %5993, %5972
  %5995 = fmul fast float %5859, %5843
  %5996 = fmul fast float %5995, %5972
  %5997 = fmul fast float %5991, %5988
  %5998 = fmul fast float %5993, %5989
  %5999 = fmul fast float %5995, %5990
  %6000 = fadd fast float %5992, %5739
  %6001 = fmul fast float %6000, %4085
  %6002 = fadd fast float %5994, %5740
  %6003 = fmul fast float %6002, %4085
  %6004 = fadd fast float %5996, %5741
  %6005 = fmul fast float %6004, %4085
  %6006 = fadd fast float %5997, %5782
  %6007 = fmul fast float %6006, %4085
  %6008 = fadd fast float %5998, %5785
  %6009 = fmul fast float %6008, %4085
  %6010 = fadd fast float %5999, %5788
  %6011 = fmul fast float %6010, %4085
  br label %6012

; <label>:6012                                    ; preds = %5966, %5833, %5735
  %6013 = phi float [ %5783, %5735 ], [ %5783, %5833 ], [ %6007, %5966 ]
  %6014 = phi float [ %5786, %5735 ], [ %5786, %5833 ], [ %6009, %5966 ]
  %6015 = phi float [ %5789, %5735 ], [ %5789, %5833 ], [ %6011, %5966 ]
  %6016 = phi float [ %5778, %5735 ], [ %5778, %5833 ], [ %6001, %5966 ]
  %6017 = phi float [ %5779, %5735 ], [ %5779, %5833 ], [ %6003, %5966 ]
  %6018 = phi float [ %5780, %5735 ], [ %5780, %5833 ], [ %6005, %5966 ]
  %6019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.i32 %6019, 0
  %6021 = icmp eq i32 %6020, 0
  br i1 %6021, label %6453, label %6022

; <label>:6022                                    ; preds = %6012
  %6023 = fptoui float %78 to i32
  %6024 = fptoui float %79 to i32
  %6025 = lshr i32 %6023, 4
  %6026 = lshr i32 %6024, 4
  %6027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.i32 %6027, 0
  %6029 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6026, i32 %6028, i32 %6025)  ; UMad(a,b,c)
  %6030 = add nsw i32 %6020, -1
  %6031 = call i32 @dx.op.binary.i32(i32 37, i32 %6030, i32 0)  ; IMax(a,b)
  %6032 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6033 = fptoui float %6032 to i32
  %6034 = lshr i32 %6033, 5
  %6035 = call i32 @dx.op.binary.i32(i32 40, i32 %6034, i32 8191)  ; UMin(a,b)
  %6036 = shl i32 %6035, 2
  %6037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6036, i32 undef)  ; BufferLoad(srv,index,wot)
  %6038 = extractvalue %dx.types.ResRet.i32 %6037, 0
  %6039 = lshr i32 %6038, 16
  %6040 = and i32 %6038, 65535
  %6041 = lshr i32 %6038, 21
  %6042 = lshr i32 %6040, 5
  %6043 = call i32 @dx.op.binary.i32(i32 40, i32 %6042, i32 %6031)  ; UMin(a,b)
  %6044 = icmp ugt i32 %6041, %6043
  br i1 %6044, label %6453, label %6045

; <label>:6045                                    ; preds = %6022
  br label %6046

; <label>:6046                                    ; preds = %6443, %6045
  %6047 = phi i32 [ %6450, %6443 ], [ %6041, %6045 ]
  %6048 = phi float [ %6444, %6443 ], [ %6013, %6045 ]
  %6049 = phi float [ %6445, %6443 ], [ %6014, %6045 ]
  %6050 = phi float [ %6446, %6443 ], [ %6015, %6045 ]
  %6051 = phi float [ %6447, %6443 ], [ %6016, %6045 ]
  %6052 = phi float [ %6448, %6443 ], [ %6017, %6045 ]
  %6053 = phi float [ %6449, %6443 ], [ %6018, %6045 ]
  %6054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.i32 %6054, 0
  %6056 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6029, i32 %6055, i32 %6047)  ; UMad(a,b,c)
  %6057 = shl i32 %6056, 2
  %6058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6057, i32 undef)  ; BufferLoad(srv,index,wot)
  %6059 = extractvalue %dx.types.ResRet.i32 %6058, 0
  %6060 = shl i32 %6047, 5
  %6061 = sub nsw i32 %6039, %6060
  %6062 = call i32 @dx.op.binary.i32(i32 37, i32 %6061, i32 0)  ; IMax(a,b)
  %6063 = call i32 @dx.op.binary.i32(i32 38, i32 %6062, i32 31)  ; IMin(a,b)
  %6064 = sub nsw i32 1, %6039
  %6065 = add nsw i32 %6064, %6040
  %6066 = call i32 @dx.op.binary.i32(i32 37, i32 %6065, i32 0)  ; IMax(a,b)
  %6067 = call i32 @dx.op.binary.i32(i32 38, i32 %6066, i32 32)  ; IMin(a,b)
  %6068 = and i32 %6067, 31
  %6069 = shl i32 -1, %6068
  %6070 = xor i32 %6069, -1
  %6071 = and i32 %6063, 31
  %6072 = shl i32 %6070, %6071
  %6073 = icmp eq i32 %6067, 32
  %6074 = select i1 %6073, i32 -1, i32 %6072
  %6075 = and i32 %6074, %6059
  %6076 = icmp eq i32 %6075, 0
  br i1 %6076, label %6443, label %6077

; <label>:6077                                    ; preds = %6046
  br label %6078

; <label>:6078                                    ; preds = %6158, %6077
  %6079 = phi i32 [ %6090, %6158 ], [ %6075, %6077 ]
  %6080 = phi float [ %6159, %6158 ], [ %6048, %6077 ]
  %6081 = phi float [ %6160, %6158 ], [ %6049, %6077 ]
  %6082 = phi float [ %6161, %6158 ], [ %6050, %6077 ]
  %6083 = phi float [ %6162, %6158 ], [ %6051, %6077 ]
  %6084 = phi float [ %6163, %6158 ], [ %6052, %6077 ]
  %6085 = phi float [ %6164, %6158 ], [ %6053, %6077 ]
  %6086 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6079)  ; FirstbitLo(value)
  %6087 = add i32 %6086, %6060
  %6088 = and i32 %6086, 31
  %6089 = shl i32 1, %6088
  %6090 = xor i32 %6089, %6079
  %6091 = mul i32 %6087, 112
  %6092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6091, i32 undef)  ; BufferLoad(srv,index,wot)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.ResRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.ResRet.f32 %6092, 2
  %6096 = or i32 %6091, 12
  %6097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6096, i32 undef)  ; BufferLoad(srv,index,wot)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = add i32 %6091, 44
  %6100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6099, i32 undef)  ; BufferLoad(srv,index,wot)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = add i32 %6091, 48
  %6103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.ResRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.ResRet.f32 %6103, 2
  %6107 = add i32 %6091, 80
  %6108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6107, i32 undef)  ; BufferLoad(srv,index,wot)
  %6109 = extractvalue %dx.types.ResRet.f32 %6108, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6108, 2
  %6111 = call float @dx.op.dot3.f32(i32 55, float %6093, float %6094, float %6095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = select i1 %215, float %6109, float %6093
  %6113 = select i1 %215, float %6111, float %6094
  %6114 = select i1 %215, float %6110, float %6095
  %6115 = fsub fast float %6104, %141
  %6116 = fsub fast float %6105, %142
  %6117 = fsub fast float %6106, %143
  %6118 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6116, float %6117, float %6115, float %6116, float %6117)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = call float @dx.op.unary.f32(i32 24, float %6118)  ; Sqrt(value)
  %6120 = fdiv fast float 1.000000e+00, %6119
  %6121 = fmul fast float %6120, %6115
  %6122 = fmul fast float %6120, %6116
  %6123 = fmul fast float %6120, %6117
  %6124 = fadd fast float %6119, %6098
  %6125 = fdiv fast float 1.000000e+00, %6124
  %6126 = fmul float %6101, %6125
  %6127 = fmul float %6126, %6126
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = and i32 %6089, %6075
  %6130 = icmp eq i32 %6129, 0
  br i1 %6130, label %6153, label %6131, !dx.controlflow.hints !88

; <label>:6131                                    ; preds = %6078
  %6132 = lshr i32 %6023, 5
  %6133 = lshr i32 %6024, 5
  %6134 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6132, i32 %6133, i32 %6087, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6135 = extractvalue %dx.types.ResRet.i32 %6134, 0
  %6136 = and i32 %6135, 3
  %6137 = icmp eq i32 %6136, 0
  %6138 = select i1 %6137, float 1.000000e+00, float 0.000000e+00
  %6139 = icmp eq i32 %6136, 3
  br i1 %6139, label %6140, label %6153

; <label>:6140                                    ; preds = %6131
  %6141 = lshr i32 %6135, 10
  %6142 = and i32 %6141, 8160
  %6143 = and i32 %6024, 31
  %6144 = or i32 %6142, %6143
  %6145 = lshr i32 %6135, 1
  %6146 = and i32 %6145, 16352
  %6147 = and i32 %6023, 31
  %6148 = or i32 %6146, %6147
  %6149 = lshr i32 %6135, 23
  %6150 = and i32 %6149, 255
  %6151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6148, i32 %6144, i32 %6150, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  br label %6153

; <label>:6153                                    ; preds = %6140, %6131, %6078
  %6154 = phi float [ %6152, %6140 ], [ %6138, %6131 ], [ 0.000000e+00, %6078 ]
  %6155 = call float @dx.op.binary.f32(i32 36, float %6154, float %6154)  ; FMin(a,b)
  %6156 = call float @dx.op.binary.f32(i32 36, float %6154, float %6155)  ; FMin(a,b)
  %6157 = fcmp fast ogt float %6156, 0.000000e+00
  br i1 %6157, label %6166, label %6158, !dx.controlflow.hints !89

; <label>:6158                                    ; preds = %6399, %6153
  %6159 = phi float [ %6080, %6153 ], [ %6439, %6399 ]
  %6160 = phi float [ %6081, %6153 ], [ %6440, %6399 ]
  %6161 = phi float [ %6082, %6153 ], [ %6441, %6399 ]
  %6162 = phi float [ %6083, %6153 ], [ %6433, %6399 ]
  %6163 = phi float [ %6084, %6153 ], [ %6434, %6399 ]
  %6164 = phi float [ %6085, %6153 ], [ %6435, %6399 ]
  %6165 = icmp eq i32 %6079, %6089
  br i1 %6165, label %6442, label %6078

; <label>:6166                                    ; preds = %6153
  %6167 = fmul fast float %6154, %6112
  %6168 = fmul fast float %6154, %6113
  %6169 = fmul fast float %6154, %6114
  %6170 = fsub fast float %6106, %4482
  %6171 = fcmp fast ogt float %6170, 0.000000e+00
  %6172 = fsub fast float %143, %4482
  %6173 = fcmp fast ogt float %6172, 0.000000e+00
  %6174 = xor i1 %6173, %6171
  %6175 = fsub fast float %4482, %6106
  %6176 = fmul fast float %6175, 2.000000e+00
  %6177 = fadd fast float %6176, %6106
  %6178 = select i1 %6174, float %6106, float %6177
  %6179 = fsub fast float %6178, %143
  %6180 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6116, float %6179, float %6115, float %6116, float %6179)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = call float @dx.op.unary.f32(i32 25, float %6180)  ; Rsqrt(value)
  %6182 = fmul fast float %6181, %6115
  %6183 = fmul fast float %6181, %6116
  %6184 = fmul fast float %6181, %6179
  %6185 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4490)  ; Dot3(ax,ay,az,bx,by,bz)
  %6186 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6182, float %6183, float %6184)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = fdiv fast float 1.000000e+00, %6186
  %6188 = fmul fast float %6187, %6185
  %6189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6172, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6190 = fcmp fast ogt float %6189, 0.000000e+00
  %6191 = fcmp fast olt float %6189, 0.000000e+00
  %6192 = zext i1 %6190 to i32
  %6193 = zext i1 %6191 to i32
  %6194 = sub nsw i32 %6192, %6193
  %6195 = sitofp i32 %6194 to float
  %6196 = fsub fast float %6178, %4482
  %6197 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6116, float %6196, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = fcmp fast ogt float %6197, 0.000000e+00
  %6199 = fcmp fast olt float %6197, 0.000000e+00
  %6200 = zext i1 %6198 to i32
  %6201 = zext i1 %6199 to i32
  %6202 = sub nsw i32 %6200, %6201
  %6203 = sitofp i32 %6202 to float
  %6204 = fcmp fast une float %6195, %6203
  br i1 %6204, label %6205, label %6215

; <label>:6205                                    ; preds = %6166
  %6206 = fmul fast float %6188, %6184
  %6207 = fmul fast float %6188, %6183
  %6208 = fmul fast float %6188, %6182
  %6209 = fmul fast float %6208, %6208
  %6210 = fmul fast float %6207, %6207
  %6211 = fadd fast float %6209, %6210
  %6212 = fmul fast float %6206, %6206
  %6213 = fadd fast float %6211, %6212
  %6214 = call float @dx.op.unary.f32(i32 24, float %6213)  ; Sqrt(value)
  br label %6227

; <label>:6215                                    ; preds = %6166
  %6216 = icmp slt i32 %6194, 0
  br i1 %6216, label %6217, label %6227

; <label>:6217                                    ; preds = %6215
  %6218 = fsub fast float %141, %6104
  %6219 = fsub fast float %142, %6105
  %6220 = fsub fast float %143, %6178
  %6221 = fmul fast float %6218, %6218
  %6222 = fmul fast float %6219, %6219
  %6223 = fadd fast float %6221, %6222
  %6224 = fmul fast float %6220, %6220
  %6225 = fadd fast float %6223, %6224
  %6226 = call float @dx.op.unary.f32(i32 24, float %6225)  ; Sqrt(value)
  br label %6227

; <label>:6227                                    ; preds = %6217, %6215, %6205
  %6228 = phi float [ %6214, %6205 ], [ %6226, %6217 ], [ 0.000000e+00, %6215 ]
  %6229 = and i1 %6173, %6171
  %6230 = fsub fast float -0.000000e+00, %6228
  %6231 = select i1 %6229, float -0.000000e+00, float %6230
  %6232 = fmul fast float %4483, 0x3FF7154760000000
  %6233 = fmul fast float %6232, %6231
  %6234 = fmul fast float %4484, 0x3FF7154760000000
  %6235 = fmul fast float %6234, %6231
  %6236 = fmul fast float %4485, 0x3FF7154760000000
  %6237 = fmul fast float %6236, %6231
  %6238 = call float @dx.op.unary.f32(i32 21, float %6233)  ; Exp(value)
  %6239 = call float @dx.op.unary.f32(i32 21, float %6235)  ; Exp(value)
  %6240 = call float @dx.op.unary.f32(i32 21, float %6237)  ; Exp(value)
  %6241 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6242 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  %6244 = fmul fast float %6167, %6241
  %6245 = fmul fast float %6168, %6242
  %6246 = fmul fast float %6169, %6243
  %6247 = fsub fast float %6121, %161
  %6248 = fsub fast float %6122, %162
  %6249 = fsub fast float %6123, %163
  %6250 = call float @dx.op.dot3.f32(i32 55, float %6247, float %6248, float %6249, float %6247, float %6248, float %6249)  ; Dot3(ax,ay,az,bx,by,bz)
  %6251 = call float @dx.op.unary.f32(i32 25, float %6250)  ; Rsqrt(value)
  %6252 = fmul fast float %6251, %6247
  %6253 = fmul fast float %6251, %6248
  %6254 = fmul fast float %6251, %6249
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6123, float %4668, float %4669, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = call float @dx.op.dot3.f32(i32 55, float %4499, float %4500, float %4501, float %6252, float %6253, float %6254)  ; Dot3(ax,ay,az,bx,by,bz)
  %6257 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6258 = fmul fast float %6257, %6128
  %6259 = bitcast i32 %4717 to float
  %6260 = fmul fast float %6257, %6257
  %6261 = fmul fast float %6260, %6259
  %6262 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6263 = fmul fast float %6258, %6262
  %6264 = bitcast float %6118 to i32
  %6265 = ashr i32 %6264, 1
  %6266 = sub nsw i32 1597463007, %6265
  %6267 = bitcast i32 %6266 to float
  %6268 = fmul fast float %6267, %6115
  %6269 = fmul fast float %6267, %6116
  %6270 = fmul fast float %6267, %6117
  %6271 = fsub fast float %6268, %161
  %6272 = fsub fast float %6269, %162
  %6273 = fsub fast float %6270, %163
  %6274 = call float @dx.op.dot3.f32(i32 55, float %6271, float %6272, float %6273, float %6271, float %6272, float %6273)  ; Dot3(ax,ay,az,bx,by,bz)
  %6275 = call float @dx.op.unary.f32(i32 25, float %6274)  ; Rsqrt(value)
  %6276 = fmul fast float %6271, %6275
  %6277 = fmul fast float %6272, %6275
  %6278 = fmul fast float %6273, %6275
  %6279 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %6276, float %6277, float %6278)  ; Dot3(ax,ay,az,bx,by,bz)
  %6280 = fmul fast float %6279, %6279
  %6281 = call float @dx.op.unary.f32(i32 6, float %6255)  ; FAbs(value)
  %6282 = fsub fast float 1.000000e+00, %4711
  %6283 = fmul fast float %4693, %4693
  %6284 = fmul fast float %6283, %6282
  %6285 = fadd fast float %6284, %4711
  %6286 = bitcast float %6285 to i32
  %6287 = ashr i32 %6286, 1
  %6288 = add nsw i32 %6287, 532487669
  %6289 = bitcast i32 %6288 to float
  %6290 = fadd fast float %6289, %4693
  %6291 = fmul fast float %4711, %6280
  %6292 = fsub fast float 1.000000e+00, %6280
  %6293 = fadd fast float %6292, %6291
  %6294 = fmul fast float %6281, %6281
  %6295 = fmul fast float %6294, %6282
  %6296 = fadd fast float %6295, %4711
  %6297 = bitcast float %6296 to i32
  %6298 = ashr i32 %6297, 1
  %6299 = add nsw i32 %6298, 532487669
  %6300 = bitcast i32 %6299 to float
  %6301 = fadd fast float %6300, %6281
  %6302 = fmul fast float %6293, %6293
  %6303 = fmul fast float %6302, %6290
  %6304 = fmul fast float %6303, %6301
  %6305 = fdiv fast float 1.000000e+00, %6304
  %6306 = bitcast float %4711 to i32
  %6307 = sitofp i32 %6306 to float
  %6308 = fmul fast float %6307, 0x3FE7F73180000000
  %6309 = fadd fast float %6308, 0x41AFE27C40000000
  %6310 = fptosi float %6309 to i32
  %6311 = bitcast i32 %6310 to float
  %6312 = fmul fast float %6101, 0x3FD80E9D60000000
  %6313 = fmul fast float %6312, %6267
  %6314 = fadd fast float %6311, %6313
  %6315 = bitcast float %6314 to i32
  %6316 = sub nsw i32 2129859010, %6315
  %6317 = bitcast i32 %6316 to float
  %6318 = fmul fast float %4711, %6305
  %6319 = fmul fast float %6318, %6311
  %6320 = fmul fast float %6319, %6317
  %6321 = call float @dx.op.unary.f32(i32 6, float %6256)  ; FAbs(value)
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = bitcast float %6322 to i32
  %6324 = sitofp i32 %6323 to float
  %6325 = fmul fast float %6324, 5.000000e+00
  %6326 = fadd fast float %6325, 0xC1EFBF8940000000
  %6327 = fptosi float %6326 to i32
  %6328 = bitcast i32 %6327 to float
  %6329 = fsub fast float 1.000000e+00, %4665
  %6330 = fsub fast float 1.000000e+00, %4666
  %6331 = fsub fast float 1.000000e+00, %4691
  %6332 = fmul fast float %6328, %6329
  %6333 = fmul fast float %6328, %6330
  %6334 = fmul fast float %6328, %6331
  %6335 = fadd fast float %6332, %4665
  %6336 = fadd fast float %6333, %4666
  %6337 = fadd fast float %6334, %4691
  br i1 %4829, label %6338, label %6361

; <label>:6338                                    ; preds = %6227
  %6339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4058, float %6321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6340 = extractvalue %dx.types.ResRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.ResRet.f32 %6339, 1
  %6342 = extractvalue %dx.types.ResRet.f32 %6339, 2
  %6343 = fadd fast float %6340, -5.000000e-01
  %6344 = fadd fast float %6341, -5.000000e-01
  %6345 = fadd fast float %6342, -5.000000e-01
  %6346 = fmul fast float %4665, 4.000000e+00
  %6347 = fmul fast float %6346, %6329
  %6348 = fmul fast float %6347, %6343
  %6349 = fmul fast float %4666, 4.000000e+00
  %6350 = fmul fast float %6349, %6330
  %6351 = fmul fast float %6350, %6344
  %6352 = fmul fast float %4691, 4.000000e+00
  %6353 = fmul fast float %6352, %6331
  %6354 = fmul fast float %6353, %6345
  %6355 = fadd fast float %6348, %6335
  %6356 = fadd fast float %6351, %6336
  %6357 = fadd fast float %6354, %6337
  %6358 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6359 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  %6360 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  br label %6361

; <label>:6361                                    ; preds = %6338, %6227
  %6362 = phi float [ %6358, %6338 ], [ %6335, %6227 ]
  %6363 = phi float [ %6359, %6338 ], [ %6336, %6227 ]
  %6364 = phi float [ %6360, %6338 ], [ %6337, %6227 ]
  %6365 = fmul fast float %6255, 9.843750e-01
  %6366 = fadd fast float %6365, 7.812500e-03
  %6367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6366, float %4819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 2
  %6369 = extractvalue %dx.types.ResRet.f32 %6367, 3
  %6370 = fmul fast float %6368, %4665
  %6371 = fmul fast float %6368, %4666
  %6372 = fmul fast float %6368, %4691
  %6373 = fadd fast float %6370, %6369
  %6374 = fadd fast float %6371, %6369
  %6375 = fadd fast float %6372, %6369
  br i1 %4829, label %6376, label %6399

; <label>:6376                                    ; preds = %6361
  %6377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4058, float %6255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6378 = extractvalue %dx.types.ResRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.ResRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.ResRet.f32 %6377, 2
  %6381 = fadd fast float %6378, -5.000000e-01
  %6382 = fadd fast float %6379, -5.000000e-01
  %6383 = fadd fast float %6380, -5.000000e-01
  %6384 = fmul fast float %4665, 4.000000e+00
  %6385 = fmul fast float %6384, %6329
  %6386 = fmul fast float %6385, %6381
  %6387 = fmul fast float %4666, 4.000000e+00
  %6388 = fmul fast float %6387, %6330
  %6389 = fmul fast float %6388, %6382
  %6390 = fmul fast float %4691, 4.000000e+00
  %6391 = fmul fast float %6390, %6331
  %6392 = fmul fast float %6391, %6383
  %6393 = fadd fast float %6386, %6373
  %6394 = fadd fast float %6389, %6374
  %6395 = fadd fast float %6392, %6375
  %6396 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6397 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6398 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  br label %6399

; <label>:6399                                    ; preds = %6376, %6361
  %6400 = phi float [ %6396, %6376 ], [ %6373, %6361 ]
  %6401 = phi float [ %6397, %6376 ], [ %6374, %6361 ]
  %6402 = phi float [ %6398, %6376 ], [ %6375, %6361 ]
  %6403 = call float @dx.op.binary.f32(i32 35, float %6401, float %6402)  ; FMax(a,b)
  %6404 = call float @dx.op.binary.f32(i32 35, float %6400, float %6403)  ; FMax(a,b)
  %6405 = fsub fast float 1.000000e+00, %6404
  %6406 = fmul fast float %6362, %6320
  %6407 = fmul fast float %6363, %6320
  %6408 = fmul fast float %6364, %6320
  %6409 = fsub fast float 1.000000e+00, %6256
  %6410 = bitcast float %6409 to i32
  %6411 = sitofp i32 %6410 to float
  %6412 = fmul fast float %6411, 5.000000e+00
  %6413 = fadd fast float %6412, 0xC1EFBF8940000000
  %6414 = fptosi float %6413 to i32
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6415, %4059
  %6417 = fmul fast float %6405, %6416
  %6418 = fmul fast float %6417, %5755
  %6419 = fmul fast float %6417, %5756
  %6420 = fmul fast float %6417, %5757
  %6421 = fadd fast float %6418, %6406
  %6422 = fadd fast float %6419, %6407
  %6423 = fadd fast float %6420, %6408
  %6424 = fmul fast float %6244, %4085
  %6425 = fmul fast float %6424, %6263
  %6426 = fmul fast float %6425, %6405
  %6427 = fmul fast float %6245, %4085
  %6428 = fmul fast float %6427, %6263
  %6429 = fmul fast float %6428, %6405
  %6430 = fmul fast float %6246, %4085
  %6431 = fmul fast float %6430, %6263
  %6432 = fmul fast float %6431, %6405
  %6433 = fadd fast float %6426, %6083
  %6434 = fadd fast float %6429, %6084
  %6435 = fadd fast float %6432, %6085
  %6436 = fmul fast float %6425, %6421
  %6437 = fmul fast float %6428, %6422
  %6438 = fmul fast float %6431, %6423
  %6439 = fadd fast float %6436, %6080
  %6440 = fadd fast float %6437, %6081
  %6441 = fadd fast float %6438, %6082
  br label %6158

; <label>:6442                                    ; preds = %6158
  br label %6443

; <label>:6443                                    ; preds = %6442, %6046
  %6444 = phi float [ %6048, %6046 ], [ %6159, %6442 ]
  %6445 = phi float [ %6049, %6046 ], [ %6160, %6442 ]
  %6446 = phi float [ %6050, %6046 ], [ %6161, %6442 ]
  %6447 = phi float [ %6051, %6046 ], [ %6162, %6442 ]
  %6448 = phi float [ %6052, %6046 ], [ %6163, %6442 ]
  %6449 = phi float [ %6053, %6046 ], [ %6164, %6442 ]
  %6450 = add i32 %6047, 1
  %6451 = icmp ugt i32 %6450, %6043
  br i1 %6451, label %6452, label %6046

; <label>:6452                                    ; preds = %6443
  br label %6453

; <label>:6453                                    ; preds = %6452, %6022, %6012
  %6454 = phi float [ %6013, %6012 ], [ %6013, %6022 ], [ %6444, %6452 ]
  %6455 = phi float [ %6014, %6012 ], [ %6014, %6022 ], [ %6445, %6452 ]
  %6456 = phi float [ %6015, %6012 ], [ %6015, %6022 ], [ %6446, %6452 ]
  %6457 = phi float [ %6016, %6012 ], [ %6016, %6022 ], [ %6447, %6452 ]
  %6458 = phi float [ %6017, %6012 ], [ %6017, %6022 ], [ %6448, %6452 ]
  %6459 = phi float [ %6018, %6012 ], [ %6018, %6022 ], [ %6449, %6452 ]
  %6460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.i32 %6460, 3
  %6462 = bitcast i32 %6461 to float
  %6463 = fsub fast float 1.000000e+00, %6462
  %6464 = fmul fast float %6463, %175
  %6465 = fadd fast float %6464, %6462
  %6466 = call float @dx.op.unary.f32(i32 24, float %4671)  ; Sqrt(value)
  %6467 = call float @dx.op.unary.f32(i32 24, float %4672)  ; Sqrt(value)
  %6468 = call float @dx.op.unary.f32(i32 24, float %4673)  ; Sqrt(value)
  %6469 = fmul fast float %6466, %6457
  %6470 = fmul fast float %6467, %6458
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  br i1 %215, label %6473, label %6505

; <label>:6473                                    ; preds = %6453
  %6474 = fadd fast float %6459, %4061
  %6475 = fmul fast float %6474, %4063
  %6476 = fsub fast float 1.000000e+00, %4063
  %6477 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 3
  %6480 = fmul fast float %6479, %6477
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6483 = fmul fast float %6482, %5761
  %6484 = extractvalue %dx.types.CBufRet.f32 %6481, 2
  %6485 = fmul fast float %6484, %4689
  %6486 = fadd fast float %6470, %6469
  %6487 = fmul fast float %6472, %6486
  %6488 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6489 = fadd fast float %6480, %6475
  %6490 = fsub fast float %6489, %6483
  %6491 = fadd fast float %6490, %6485
  %6492 = fsub fast float %6491, %6488
  %6493 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6494 = fmul fast float %6492, %6493
  %6495 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = fsub fast float %6495, %6497
  %6499 = fmul fast float %6498, 1.000000e+01
  %6500 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6501 = fsub fast float %4062, %6465
  %6502 = fmul fast float %6500, %6501
  %6503 = fadd fast float %6502, %6465
  %6504 = fmul fast float %6503, %6495
  br label %6521

; <label>:6505                                    ; preds = %6453
  %6506 = fmul fast float %6468, %6459
  %6507 = fmul fast float %6472, %6469
  %6508 = fmul fast float %6472, %6470
  %6509 = fmul fast float %6506, %6472
  %6510 = add i32 %43, 356
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = and i32 %6512, 32
  %6514 = icmp eq i32 %6513, 0
  br i1 %6514, label %6521, label %6515

; <label>:6515                                    ; preds = %6505
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = fmul fast float %6517, 0x3FE99999A0000000
  %6519 = fadd fast float %6517, %6507
  %6520 = fadd fast float %6518, %6509
  br label %6521

; <label>:6521                                    ; preds = %6515, %6505, %6473
  %6522 = phi float [ %6487, %6473 ], [ %6519, %6515 ], [ %6507, %6505 ]
  %6523 = phi float [ %6504, %6473 ], [ %6508, %6515 ], [ %6508, %6505 ]
  %6524 = phi float [ %6503, %6473 ], [ %6520, %6515 ], [ %6509, %6505 ]
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 0
  %6527 = fmul fast float %6526, %6455
  %6528 = fmul fast float %6526, %6456
  %6529 = fadd fast float %6455, %6454
  %6530 = select i1 %215, float %6529, float %6454
  %6531 = fmul float %6530, %6526
  %6532 = select i1 %215, float 0.000000e+00, float %6527
  %6533 = select i1 %215, float 0.000000e+00, float %6528
  %6534 = fmul fast float %6522, %6466
  %6535 = fmul fast float %6523, %6467
  %6536 = fmul fast float %6524, %6468
  %6537 = fadd fast float %6531, %6534
  %6538 = fadd fast float %6532, %6535
  %6539 = fadd fast float %6533, %6536
  %6540 = select i1 %215, float %6523, float %6538
  %6541 = select i1 %215, float %6524, float %6539
  %6542 = call float @dx.op.binary.f32(i32 36, float %6537, float 3.225500e+04)  ; FMin(a,b)
  %6543 = call float @dx.op.binary.f32(i32 36, float %6540, float 3.225500e+04)  ; FMin(a,b)
  %6544 = call float @dx.op.binary.f32(i32 36, float %6541, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6542)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6543)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6544)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

