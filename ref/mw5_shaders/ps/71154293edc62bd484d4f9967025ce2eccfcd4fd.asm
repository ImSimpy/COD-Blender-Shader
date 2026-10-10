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
; shader hash: 8f1c2fcd644f07726c3c3982a9c76812
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
  %380 = add i32 %43, 472
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
  %1135 = add i32 %43, 428
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
  %1187 = add i32 %43, 412
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
  %1213 = add i32 %43, 364
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
  %1236 = add i32 %43, 444
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
  %1434 = add i32 %43, 380
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
  %1518 = add i32 %43, 396
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
  %1989 = add i32 %43, 432
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
  %2041 = add i32 %43, 416
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
  %2067 = add i32 %43, 368
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
  %2090 = add i32 %43, 448
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
  %2288 = add i32 %43, 384
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
  %2372 = add i32 %43, 400
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
  %2843 = add i32 %43, 436
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
  %2895 = add i32 %43, 420
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
  %2921 = add i32 %43, 372
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
  %2944 = add i32 %43, 452
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
  %3142 = add i32 %43, 388
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
  %3226 = add i32 %43, 404
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
  br i1 %3499, label %3500, label %4008

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
  br i1 %3551, label %3977, label %3552

; <label>:3552                                    ; preds = %3500
  %3553 = and i32 %3548, 1023
  br label %3554

; <label>:3554                                    ; preds = %3680, %3552
  %3555 = phi i32 [ %3630, %3680 ], [ 0, %3552 ]
  %3556 = phi float [ %3681, %3680 ], [ 0.000000e+00, %3552 ]
  %3557 = phi float [ %3682, %3680 ], [ %3469, %3552 ]
  %3558 = phi float [ %3683, %3680 ], [ %3467, %3552 ]
  %3559 = phi float [ %3684, %3680 ], [ 0.000000e+00, %3552 ]
  %3560 = phi float [ %3685, %3680 ], [ 0.000000e+00, %3552 ]
  %3561 = phi float [ %3686, %3680 ], [ %3461, %3552 ]
  %3562 = phi float [ %3687, %3680 ], [ %3462, %3552 ]
  %3563 = phi float [ %3688, %3680 ], [ %3463, %3552 ]
  %3564 = phi float [ %3689, %3680 ], [ %3495, %3552 ]
  %3565 = phi float [ %3690, %3680 ], [ %3496, %3552 ]
  %3566 = phi float [ %3691, %3680 ], [ %3497, %3552 ]
  %3567 = phi float [ %3692, %3680 ], [ %3466, %3552 ]
  %3568 = phi float [ %3693, %3680 ], [ %3465, %3552 ]
  %3569 = phi float [ %3694, %3680 ], [ 0.000000e+00, %3552 ]
  %3570 = phi float [ %3695, %3680 ], [ %3464, %3552 ]
  %3571 = phi float [ %3696, %3680 ], [ %3458, %3552 ]
  %3572 = phi float [ %3697, %3680 ], [ %3459, %3552 ]
  %3573 = phi float [ %3698, %3680 ], [ %3460, %3552 ]
  %3574 = add nuw nsw i32 %3555, %3550
  %3575 = shl i32 %3574, 2
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = shl i32 %3577, 8
  %3579 = or i32 %3578, 48
  %3580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.ResRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.ResRet.f32 %3580, 2
  %3584 = extractvalue %dx.types.ResRet.f32 %3580, 3
  %3585 = or i32 %3578, 64
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.i32 %3586, 1
  %3589 = or i32 %3578, 80
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 3
  %3593 = or i32 %3578, 96
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = or i32 %3578, 112
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3602 = or i32 %3578, 128
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3608 = or i32 %3578, 144
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = or i32 %3578, 160
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = or i32 %3578, 192
  %3621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.i32 %3621, 0
  %3623 = or i32 %3578, 208
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = or i32 %3578, 248
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = add nuw nsw i32 %3555, 1
  %3631 = bitcast float %3584 to i32
  %3632 = and i32 %3631, 512
  %3633 = icmp eq i32 %3632, 0
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3640 = or i32 %3578, 16
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = or i32 %3578, 32
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = call float @dx.op.dot4.f32(i32 56, float %3649, float %3650, float %3651, float %3652, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3654 = call float @dx.op.unary.f32(i32 27, float %3639)  ; Round_ni(value)
  %3655 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3656 = call float @dx.op.unary.f32(i32 27, float %3646)  ; Round_ni(value)
  %3657 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3658 = call float @dx.op.unary.f32(i32 6, float %3653)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 27, float %3658)  ; Round_ni(value)
  %3660 = fadd fast float %3657, %3655
  %3661 = fadd fast float %3660, %3659
  %3662 = fcmp fast oeq float %3661, 0.000000e+00
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %3507, float %3508, float %3509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %3507, float %3508, float %3509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = fsub fast float %3663, %3639
  %3668 = fsub fast float %3665, %3639
  %3669 = fsub fast float %3664, %3646
  %3670 = fsub fast float %3666, %3646
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3583, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3674 = fadd fast float %3673, %3671
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3677 = fcmp fast ogt float %3675, %3676
  %3678 = and i1 %3662, %3677
  %3679 = and i1 %3633, %3678
  br i1 %3679, label %3700, label %3680

; <label>:3680                                    ; preds = %3963, %3781, %3700, %3554
  %3681 = phi float [ %3556, %3700 ], [ %3784, %3781 ], [ %3784, %3963 ], [ %3556, %3554 ]
  %3682 = phi float [ %3557, %3700 ], [ %3557, %3781 ], [ %3938, %3963 ], [ %3557, %3554 ]
  %3683 = phi float [ %3558, %3700 ], [ %3558, %3781 ], [ %3936, %3963 ], [ %3558, %3554 ]
  %3684 = phi float [ %3559, %3700 ], [ %3559, %3781 ], [ %3908, %3963 ], [ %3559, %3554 ]
  %3685 = phi float [ %3560, %3700 ], [ %3560, %3781 ], [ %3906, %3963 ], [ %3560, %3554 ]
  %3686 = phi float [ %3561, %3700 ], [ %3561, %3781 ], [ %3973, %3963 ], [ %3561, %3554 ]
  %3687 = phi float [ %3562, %3700 ], [ %3562, %3781 ], [ %3974, %3963 ], [ %3562, %3554 ]
  %3688 = phi float [ %3563, %3700 ], [ %3563, %3781 ], [ %3975, %3963 ], [ %3563, %3554 ]
  %3689 = phi float [ %3564, %3700 ], [ %3564, %3781 ], [ %3887, %3963 ], [ %3564, %3554 ]
  %3690 = phi float [ %3565, %3700 ], [ %3565, %3781 ], [ %3888, %3963 ], [ %3565, %3554 ]
  %3691 = phi float [ %3566, %3700 ], [ %3566, %3781 ], [ %3889, %3963 ], [ %3566, %3554 ]
  %3692 = phi float [ %3567, %3700 ], [ %3567, %3781 ], [ %3916, %3963 ], [ %3567, %3554 ]
  %3693 = phi float [ %3568, %3700 ], [ %3568, %3781 ], [ %3913, %3963 ], [ %3568, %3554 ]
  %3694 = phi float [ %3569, %3700 ], [ %3569, %3781 ], [ %3910, %3963 ], [ %3569, %3554 ]
  %3695 = phi float [ %3570, %3700 ], [ %3570, %3781 ], [ %3904, %3963 ], [ %3570, %3554 ]
  %3696 = phi float [ %3571, %3700 ], [ %3571, %3781 ], [ %3899, %3963 ], [ %3571, %3554 ]
  %3697 = phi float [ %3572, %3700 ], [ %3572, %3781 ], [ %3900, %3963 ], [ %3572, %3554 ]
  %3698 = phi float [ %3573, %3700 ], [ %3573, %3781 ], [ %3901, %3963 ], [ %3573, %3554 ]
  %3699 = icmp eq i32 %3630, %3553
  br i1 %3699, label %3976, label %3554

; <label>:3700                                    ; preds = %3554
  %3701 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3702 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3706 = extractvalue %dx.types.ResRet.i32 %3586, 3
  %3707 = extractvalue %dx.types.ResRet.i32 %3586, 2
  %3708 = add i32 %3706, 0
  %3709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3708, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3709, %dx.types.Handle %3710, float %3639, float %3646, float undef, float undef, i32 0, i32 0, i32 undef, float %3667, float %3669, float undef, float %3668, float %3670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = fmul fast float %3712, %3705
  %3714 = fadd fast float %3713, %3704
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = fmul fast float %3639, %3595
  %3717 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3646, float %3716)  ; FMad(a,b,c)
  %3718 = fadd fast float %3717, %3703
  %3719 = fmul fast float %3639, %3597
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3646, float %3719)  ; FMad(a,b,c)
  %3721 = fadd fast float %3720, %3702
  %3722 = fmul fast float %3667, %3595
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3669, float %3722)  ; FMad(a,b,c)
  %3724 = fmul fast float %3667, %3597
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3669, float %3724)  ; FMad(a,b,c)
  %3726 = fmul fast float %3668, %3595
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3670, float %3726)  ; FMad(a,b,c)
  %3728 = fmul fast float %3668, %3597
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3670, float %3728)  ; FMad(a,b,c)
  %3730 = add i32 %3707, 0
  %3731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3730, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3732 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3731, %dx.types.Handle %3710, float %3718, float %3721, float undef, float undef, i32 0, i32 0, i32 undef, float %3723, float %3725, float undef, float %3727, float %3729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = and i32 %3631, 1024
  %3735 = icmp ne i32 %3734, 0
  %3736 = fcmp fast ogt float %3733, 0x3FE0101020000000
  %3737 = uitofp i1 %3736 to float
  %3738 = select i1 %3735, float %3737, float %3733
  %3739 = and i32 %3631, 8192
  %3740 = icmp ne i32 %3739, 0
  %3741 = select i1 %3740, float %3701, float 1.000000e+00
  %3742 = fmul fast float %3639, 2.000000e+00
  %3743 = fadd fast float %3742, -1.000000e+00
  %3744 = call float @dx.op.unary.f32(i32 6, float %3743)  ; FAbs(value)
  %3745 = fmul fast float %3744, %3628
  %3746 = fsub fast float %3745, %3628
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3646, 2.000000e+00
  %3749 = fadd fast float %3748, -1.000000e+00
  %3750 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3751 = fmul fast float %3750, %3629
  %3752 = fsub fast float %3751, %3629
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fmul fast float %3658, %3591
  %3755 = fsub fast float %3754, %3591
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fmul fast float %3715, %3741
  %3758 = fmul fast float %3757, %3712
  %3759 = fmul fast float %3758, %3747
  %3760 = fmul fast float %3759, %3738
  %3761 = fmul fast float %3760, %3753
  %3762 = fmul fast float %3761, %3756
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3766 = fsub fast float %3675, %3765
  %3767 = fmul fast float %3766, %3764
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = fmul fast float %3762, %3592
  %3770 = fadd fast float %3762, %3592
  %3771 = fmul fast float %3770, %3601
  %3772 = fsub fast float %3771, %3601
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = and i32 %3631, 128
  %3775 = icmp ne i32 %3774, 0
  %3776 = select i1 %3775, float %3773, float %3769
  %3777 = fmul fast float %3776, %3768
  %3778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3779 = extractvalue %dx.types.CBufRet.f32 %3778, 0
  %3780 = fcmp fast ugt float %3777, %3779
  br i1 %3780, label %3781, label %3680

; <label>:3781                                    ; preds = %3700
  %3782 = select i1 %3740, float %3777, float 0.000000e+00
  %3783 = fadd fast float %3782, %3556
  %3784 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  br i1 %3740, label %3680, label %3785

; <label>:3785                                    ; preds = %3781
  %3786 = and i32 %3631, 4
  %3787 = and i32 %3631, 8
  %3788 = add i32 %3587, 0
  %3789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3788, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3789, %dx.types.Handle %3790, float %3718, float %3721, float undef, float undef, i32 0, i32 0, i32 undef, float %3723, float %3725, float undef, float %3727, float %3729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.ResRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.ResRet.f32 %3791, 2
  %3795 = extractvalue %dx.types.ResRet.f32 %3791, 3
  %3796 = bitcast float %3613 to i32
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = lshr i32 %3796, 8
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = fmul fast float %3795, %3798
  %3803 = fadd fast float %3802, %3801
  %3804 = fmul fast float %3803, 0x3F70101000000000
  %3805 = add i32 %3588, 0
  %3806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3805, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3807 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3806, %dx.types.Handle %3790, float %3718, float %3721, float undef, float undef, i32 0, i32 0, i32 undef, float %3723, float %3725, float undef, float %3727, float %3729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3812 = bitcast float %3607 to i32
  %3813 = and i32 %3812, 255
  %3814 = uitofp i32 %3813 to float
  %3815 = lshr i32 %3812, 8
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = lshr i32 %3812, 16
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = fmul fast float %3820, 0x3F70101000000000
  %3822 = fmul fast float %3808, %3814
  %3823 = fadd fast float %3822, %3817
  %3824 = fmul fast float %3823, 0x3F70101000000000
  %3825 = fadd fast float %3809, -5.000000e-01
  %3826 = fadd fast float %3811, -5.000000e-01
  %3827 = fmul fast float %3825, %3821
  %3828 = fmul fast float %3826, %3821
  %3829 = fadd fast float %3827, 5.000000e-01
  %3830 = fadd fast float %3828, 5.000000e-01
  %3831 = fmul fast float %3792, %3616
  %3832 = fmul fast float %3793, %3617
  %3833 = fmul fast float %3794, %3618
  %3834 = fmul fast float %3829, 2.000000e+00
  %3835 = fadd fast float %3834, -1.000000e+00
  %3836 = fmul fast float %3830, 2.000000e+00
  %3837 = fadd fast float %3836, -1.000000e+00
  %3838 = fadd fast float %3835, %3837
  %3839 = fmul fast float %3838, 5.000000e-01
  %3840 = fsub fast float %3835, %3837
  %3841 = fmul fast float %3840, 5.000000e-01
  %3842 = call float @dx.op.unary.f32(i32 6, float %3839)  ; FAbs(value)
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = call float @dx.op.unary.f32(i32 6, float %3841)  ; FAbs(value)
  %3845 = fsub fast float %3843, %3844
  %3846 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3841, float %3845, float %3839, float %3841, float %3845)  ; Dot3(ax,ay,az,bx,by,bz)
  %3847 = call float @dx.op.unary.f32(i32 25, float %3846)  ; Rsqrt(value)
  %3848 = fmul fast float %3839, %3847
  %3849 = fmul fast float %3841, %3847
  %3850 = fmul fast float %3847, %3845
  %3851 = fmul fast float %3850, %3581
  %3852 = fmul fast float %3850, %3582
  %3853 = fmul fast float %3850, %3583
  %3854 = fmul fast float %3848, %3604
  %3855 = fmul fast float %3848, %3605
  %3856 = fmul fast float %3848, %3606
  %3857 = fadd fast float %3854, %3851
  %3858 = fadd fast float %3855, %3852
  %3859 = fadd fast float %3856, %3853
  %3860 = fmul fast float %3849, %3610
  %3861 = fmul fast float %3849, %3611
  %3862 = fmul fast float %3849, %3612
  %3863 = fadd fast float %3857, %3860
  %3864 = fadd fast float %3858, %3861
  %3865 = fadd fast float %3859, %3862
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3864, float %3865, float %3863, float %3864, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3863, %3867
  %3869 = fmul fast float %3864, %3867
  %3870 = fmul fast float %3865, %3867
  %3871 = icmp ne i32 %3787, 0
  %3872 = select i1 %3871, float 1.000000e+00, float 0.000000e+00
  %3873 = fmul fast float %3777, %3872
  %3874 = and i32 %3631, 1
  %3875 = icmp eq i32 %3874, 0
  br i1 %3875, label %3876, label %3880

; <label>:3876                                    ; preds = %3785
  %3877 = fsub fast float %3868, %3564
  %3878 = fsub fast float %3869, %3565
  %3879 = fsub fast float %3870, %3566
  br label %3880

; <label>:3880                                    ; preds = %3876, %3785
  %3881 = phi float [ %3877, %3876 ], [ %3868, %3785 ]
  %3882 = phi float [ %3878, %3876 ], [ %3869, %3785 ]
  %3883 = phi float [ %3879, %3876 ], [ %3870, %3785 ]
  %3884 = fmul float %3883, %3873
  %3885 = fmul float %3882, %3873
  %3886 = fmul float %3881, %3873
  %3887 = fadd fast float %3886, %3564
  %3888 = fadd fast float %3885, %3565
  %3889 = fadd fast float %3884, %3566
  %3890 = icmp ne i32 %3786, 0
  %3891 = select i1 %3890, float 1.000000e+00, float 0.000000e+00
  %3892 = fmul fast float %3777, %3891
  %3893 = fsub fast float %3831, %3571
  %3894 = fsub fast float %3832, %3572
  %3895 = fsub fast float %3833, %3573
  %3896 = fmul fast float %3893, %3892
  %3897 = fmul fast float %3894, %3892
  %3898 = fmul fast float %3895, %3892
  %3899 = fadd fast float %3896, %3571
  %3900 = fadd fast float %3897, %3572
  %3901 = fadd fast float %3898, %3573
  %3902 = fsub fast float %3804, %3570
  %3903 = fmul fast float %3902, %3892
  %3904 = fadd fast float %3903, %3570
  %3905 = fmul fast float %3892, %3560
  %3906 = fsub fast float %3560, %3905
  %3907 = fmul fast float %3892, %3559
  %3908 = fsub fast float %3559, %3907
  %3909 = fadd fast float %3777, %3569
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fsub fast float %3824, %3568
  %3912 = fmul fast float %3911, %3873
  %3913 = fadd fast float %3912, %3568
  %3914 = fsub fast float %3810, %3567
  %3915 = fmul fast float %3914, %3873
  %3916 = fadd fast float %3915, %3567
  %3917 = call float @dx.op.dot3.f32(i32 55, float %3831, float %3832, float %3833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.CBufRet.f32 %3918, 1
  %3921 = fmul fast float %3920, %3917
  %3922 = fadd fast float %3921, %3919
  %3923 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3924 = bitcast float %3619 to i32
  %3925 = and i32 %3924, 65535
  %3926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3925)  ; LegacyF16ToF32(value)
  %3927 = lshr i32 %3924, 16
  %3928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3927)  ; LegacyF16ToF32(value)
  %3929 = fcmp fast oge float %3926, 0.000000e+00
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = select i1 %3929, float %3926, float %3931
  %3933 = fadd fast float %3932, %3928
  %3934 = fsub fast float %3923, %3558
  %3935 = fmul fast float %3934, %3777
  %3936 = fadd fast float %3935, %3558
  %3937 = fmul fast float %3933, %3777
  %3938 = call float @dx.op.binary.f32(i32 35, float %3557, float %3937)  ; FMax(a,b)
  %3939 = and i32 %3631, 16
  %3940 = icmp eq i32 %3939, 0
  br i1 %3940, label %3963, label %3941

; <label>:3941                                    ; preds = %3880
  %3942 = bitcast float %3625 to i32
  %3943 = add i32 %3622, 0
  %3944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3943, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3945 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3944, %dx.types.Handle %3790, float %3718, float %3721, float undef, float undef, i32 0, i32 0, i32 undef, float %3723, float %3725, float undef, float %3727, float %3729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3949 = and i32 %3942, 65535
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = fmul fast float %3946, %3616
  %3952 = fmul fast float %3947, %3617
  %3953 = fmul fast float %3948, %3618
  %3954 = and i32 %3631, 16384
  %3955 = icmp ne i32 %3954, 0
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = select i1 %3955, float %3957, float 1.000000e+00
  %3959 = fmul fast float %3958, %3950
  %3960 = fmul fast float %3951, %3959
  %3961 = fmul fast float %3952, %3959
  %3962 = fmul fast float %3953, %3959
  br label %3963

; <label>:3963                                    ; preds = %3941, %3880
  %3964 = phi float [ %3960, %3941 ], [ 0.000000e+00, %3880 ]
  %3965 = phi float [ %3961, %3941 ], [ 0.000000e+00, %3880 ]
  %3966 = phi float [ %3962, %3941 ], [ 0.000000e+00, %3880 ]
  %3967 = fsub fast float %3964, %3561
  %3968 = fsub fast float %3965, %3562
  %3969 = fsub fast float %3966, %3563
  %3970 = fmul fast float %3967, %3777
  %3971 = fmul fast float %3968, %3777
  %3972 = fmul fast float %3969, %3777
  %3973 = fadd fast float %3970, %3561
  %3974 = fadd fast float %3971, %3562
  %3975 = fadd fast float %3972, %3563
  br label %3680

; <label>:3976                                    ; preds = %3680
  br label %3977

; <label>:3977                                    ; preds = %3976, %3500
  %3978 = phi float [ 0.000000e+00, %3500 ], [ %3681, %3976 ]
  %3979 = phi float [ %3469, %3500 ], [ %3682, %3976 ]
  %3980 = phi float [ %3467, %3500 ], [ %3683, %3976 ]
  %3981 = phi float [ 0.000000e+00, %3500 ], [ %3684, %3976 ]
  %3982 = phi float [ 0.000000e+00, %3500 ], [ %3685, %3976 ]
  %3983 = phi float [ %3461, %3500 ], [ %3686, %3976 ]
  %3984 = phi float [ %3462, %3500 ], [ %3687, %3976 ]
  %3985 = phi float [ %3463, %3500 ], [ %3688, %3976 ]
  %3986 = phi float [ %3495, %3500 ], [ %3689, %3976 ]
  %3987 = phi float [ %3496, %3500 ], [ %3690, %3976 ]
  %3988 = phi float [ %3497, %3500 ], [ %3691, %3976 ]
  %3989 = phi float [ %3466, %3500 ], [ %3692, %3976 ]
  %3990 = phi float [ %3465, %3500 ], [ %3693, %3976 ]
  %3991 = phi float [ 0.000000e+00, %3500 ], [ %3694, %3976 ]
  %3992 = phi float [ %3464, %3500 ], [ %3695, %3976 ]
  %3993 = phi float [ %3458, %3500 ], [ %3696, %3976 ]
  %3994 = phi float [ %3459, %3500 ], [ %3697, %3976 ]
  %3995 = phi float [ %3460, %3500 ], [ %3698, %3976 ]
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %3986, float %3987, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.unary.f32(i32 25, float %3996)  ; Rsqrt(value)
  %3998 = fmul fast float %3997, %3986
  %3999 = fmul fast float %3997, %3987
  %4000 = fmul fast float %3997, %3988
  %4001 = fadd fast float %3991, %902
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4003 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3999, float %4000, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = call float @dx.op.unary.f32(i32 25, float %4003)  ; Rsqrt(value)
  %4005 = fmul fast float %4004, %3998
  %4006 = fmul fast float %4004, %3999
  %4007 = fmul fast float %4004, %4000
  br label %4008

; <label>:4008                                    ; preds = %3977, %3455
  %4009 = phi float [ %4005, %3977 ], [ %3495, %3455 ]
  %4010 = phi float [ %4006, %3977 ], [ %3496, %3455 ]
  %4011 = phi float [ %4007, %3977 ], [ %3497, %3455 ]
  %4012 = phi float [ %3983, %3977 ], [ %3461, %3455 ]
  %4013 = phi float [ %3984, %3977 ], [ %3462, %3455 ]
  %4014 = phi float [ %3985, %3977 ], [ %3463, %3455 ]
  %4015 = phi float [ %3993, %3977 ], [ %3458, %3455 ]
  %4016 = phi float [ %3994, %3977 ], [ %3459, %3455 ]
  %4017 = phi float [ %3995, %3977 ], [ %3460, %3455 ]
  %4018 = phi float [ %3992, %3977 ], [ %3464, %3455 ]
  %4019 = phi float [ %4002, %3977 ], [ %902, %3455 ]
  %4020 = phi float [ %3990, %3977 ], [ %3465, %3455 ]
  %4021 = phi float [ %3989, %3977 ], [ %3466, %3455 ]
  %4022 = phi float [ %3982, %3977 ], [ 0.000000e+00, %3455 ]
  %4023 = phi float [ %3981, %3977 ], [ 0.000000e+00, %3455 ]
  %4024 = phi float [ %3978, %3977 ], [ 0.000000e+00, %3455 ]
  %4025 = phi float [ %3979, %3977 ], [ %3469, %3455 ]
  %4026 = phi float [ %3980, %3977 ], [ %3467, %3455 ]
  %4027 = fadd fast float %4018, 0xBFB99999A0000000
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fmul fast float %4028, 0x3FF1C71C80000000
  %4030 = call float @dx.op.binary.f32(i32 36, float %4018, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4031 = fsub fast float 1.000000e+00, %4029
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = fmul fast float %4032, %4015
  %4034 = fmul fast float %4032, %4016
  %4035 = fmul fast float %4032, %4017
  %4036 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4037 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = fmul fast float %4029, %4015
  %4040 = fmul fast float %4029, %4016
  %4041 = fmul fast float %4029, %4017
  %4042 = fadd fast float %4039, %4030
  %4043 = fadd fast float %4040, %4030
  %4044 = fadd fast float %4041, %4030
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.i32 %4049, 3
  %4051 = and i32 %4050, 8
  %4052 = icmp ne i32 %4051, 0
  %4053 = call float @dx.op.binary.f32(i32 35, float %4036, float %4015)  ; FMax(a,b)
  %4054 = call float @dx.op.binary.f32(i32 35, float %4037, float %4015)  ; FMax(a,b)
  %4055 = call float @dx.op.binary.f32(i32 35, float %4038, float %4015)  ; FMax(a,b)
  %4056 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4037, float %4038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4057 = select i1 %183, float %4015, float %4036
  %4058 = select i1 %183, float %4056, float %4037
  %4059 = select i1 %183, float 1.000000e+00, float %4038
  %4060 = select i1 %4052, float %4053, float %4057
  %4061 = select i1 %4052, float %4054, float %4058
  %4062 = select i1 %4052, float %4055, float %4059
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4067 = fadd fast float %4064, %141
  %4068 = fadd fast float %4065, %142
  %4069 = fadd fast float %4066, %143
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4073 = fsub fast float %4067, %4071
  %4074 = fsub fast float %4068, %4072
  %4075 = fmul fast float %4073, %4073
  %4076 = fmul fast float %4074, %4074
  %4077 = fadd fast float %4075, %4076
  %4078 = call float @dx.op.unary.f32(i32 24, float %4077)  ; Sqrt(value)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4080 = fcmp fast olt float %4078, %4079
  br i1 %4080, label %4081, label %4148

; <label>:4081                                    ; preds = %4008
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4090 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4092 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4093 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4094 = fadd fast float %4091, %4067
  %4095 = fadd fast float %4092, %4068
  %4096 = fadd fast float %4093, %4069
  %4097 = fmul fast float %4094, %4083
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4095, float %4085, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4087, float %4098)  ; FMad(a,b,c)
  %4100 = fmul fast float %4094, %4088
  %4101 = call float @dx.op.tertiary.f32(i32 46, float %4095, float %4089, float %4100)  ; FMad(a,b,c)
  %4102 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4090, float %4101)  ; FMad(a,b,c)
  %4103 = fsub fast float %4099, %4091
  %4104 = fsub fast float %4102, %4092
  %4105 = fsub fast float %4103, %4071
  %4106 = fadd fast float %4105, %4079
  %4107 = fsub fast float %4104, %4072
  %4108 = fadd fast float %4107, %4079
  %4109 = extractvalue %dx.types.CBufRet.f32 %4070, 3
  %4110 = fmul fast float %4106, %4109
  %4111 = fmul fast float %4108, %4109
  %4112 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4114 = fsub fast float 1.000000e+00, %4112
  %4115 = fsub fast float 1.000000e+00, %4113
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4114, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = fcmp fast ugt float %4117, 0.000000e+00
  br i1 %4118, label %4119, label %4422

; <label>:4119                                    ; preds = %4081
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4122 = fmul fast float %4121, %4117
  %4123 = extractvalue %dx.types.CBufRet.f32 %4120, 3
  %4124 = fadd fast float %4123, %4122
  %4125 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4126 = fadd fast float %4124, %4093
  %4127 = fmul fast float %4099, %4087
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %4102, float %4090, float %4127)  ; FMad(a,b,c)
  %4129 = call float @dx.op.tertiary.f32(i32 46, float %4126, float %4125, float %4128)  ; FMad(a,b,c)
  %4130 = fsub fast float %4129, %4093
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4133 = fsub fast float %4130, %4132
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4114, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4114, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = fadd fast float %4139, %4135
  %4143 = fmul fast float %4142, 0x3F847AE140000000
  %4144 = fadd fast float %4140, %4136
  %4145 = fmul fast float %4144, 0x3F847AE140000000
  %4146 = fadd fast float %4141, %4137
  %4147 = fmul fast float %4146, 0x3F847AE140000000
  br label %4422

; <label>:4148                                    ; preds = %4008
  %4149 = and i32 %159, 1
  %4150 = icmp eq i32 %4149, 0
  br i1 %4150, label %4422, label %4151

; <label>:4151                                    ; preds = %4148
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4162 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4163 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4164 = fadd fast float %4161, %4067
  %4165 = fadd fast float %4162, %4068
  %4166 = fadd fast float %4163, %4069
  %4167 = fmul fast float %4164, %4153
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4155, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = fmul fast float %4164, %4158
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4159, float %4170)  ; FMad(a,b,c)
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = fsub fast float %4169, %4161
  %4174 = fsub fast float %4172, %4162
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4179 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 3
  %4182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.i32 %4182, 0
  %4184 = extractvalue %dx.types.CBufRet.i32 %4182, 1
  %4185 = udiv i32 %4184, %4183
  %4186 = fsub fast float %4173, %4176
  %4187 = fsub fast float %4174, %4177
  %4188 = call float @dx.op.binary.f32(i32 35, float %4186, float 0.000000e+00)  ; FMax(a,b)
  %4189 = call float @dx.op.binary.f32(i32 35, float %4187, float 0.000000e+00)  ; FMax(a,b)
  %4190 = call float @dx.op.binary.f32(i32 36, float %4188, float %4178)  ; FMin(a,b)
  %4191 = call float @dx.op.binary.f32(i32 36, float %4189, float %4179)  ; FMin(a,b)
  %4192 = add i32 %4183, -1
  %4193 = add i32 %4185, -1
  %4194 = fmul fast float %4190, %4181
  %4195 = fmul fast float %4191, %4181
  %4196 = fptoui float %4194 to i32
  %4197 = fptoui float %4195 to i32
  %4198 = call i32 @dx.op.binary.i32(i32 40, i32 %4196, i32 %4192)  ; UMin(a,b)
  %4199 = call i32 @dx.op.binary.i32(i32 40, i32 %4197, i32 %4193)  ; UMin(a,b)
  %4200 = mul i32 %4199, %4183
  %4201 = add i32 %4200, %4198
  %4202 = shl i32 %4201, 2
  %4203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.i32 %4203, 0
  %4205 = icmp eq i32 %4204, -1
  br i1 %4205, label %4422, label %4206

; <label>:4206                                    ; preds = %4151
  %4207 = mul i32 %4204, 148
  %4208 = add i32 %4207, 4
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = add i32 %4207, 8
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = add i32 %4207, 36
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = add i32 %4207, 60
  %4218 = add i32 %4207, 92
  %4219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.i32 %4219, 0
  %4221 = add i32 %4207, 116
  %4222 = fsub fast float %4173, %4210
  %4223 = fsub fast float %4174, %4213
  %4224 = fmul fast float %4181, %4222
  %4225 = fmul fast float %4181, %4223
  %4226 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4228 = fsub fast float 1.000000e+00, %4227
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4231 = call float @dx.op.unary.f32(i32 83, float %4226)  ; DerivCoarseX(value)
  %4232 = call float @dx.op.unary.f32(i32 83, float %4228)  ; DerivCoarseX(value)
  %4233 = call float @dx.op.unary.f32(i32 84, float %4226)  ; DerivCoarseY(value)
  %4234 = call float @dx.op.unary.f32(i32 84, float %4228)  ; DerivCoarseY(value)
  %4235 = fmul fast float %4231, %4230
  %4236 = fmul fast float %4232, %4230
  %4237 = fmul fast float %4233, %4230
  %4238 = fmul fast float %4234, %4230
  %4239 = call float @dx.op.dot2.f32(i32 54, float %4237, float %4238, float %4237, float %4238)  ; Dot2(ax,ay,bx,by)
  %4240 = call float @dx.op.dot2.f32(i32 54, float %4235, float %4236, float %4235, float %4236)  ; Dot2(ax,ay,bx,by)
  %4241 = call float @dx.op.binary.f32(i32 35, float %4240, float %4239)  ; FMax(a,b)
  %4242 = call float @dx.op.unary.f32(i32 23, float %4241)  ; Log(value)
  %4243 = fmul fast float %4242, 5.000000e-01
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 1
  %4246 = fadd fast float %4245, %4243
  %4247 = call float @dx.op.binary.f32(i32 35, float %4246, float 0.000000e+00)  ; FMax(a,b)
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = fadd fast float %4249, %4247
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 3
  %4253 = fadd fast float %4250, %4252
  %4254 = add i32 %4220, 0
  %4255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4254, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4256 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4255, i32 0)  ; GetDimensions(handle,mipLevel)
  %4257 = extractvalue %dx.types.Dimensions %4256, 0
  %4258 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4257)  ; FirstbitLo(value)
  %4259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.i32 %4259, 1
  %4261 = sub nsw i32 %4260, %4258
  %4262 = sitofp i32 %4261 to float
  %4263 = fsub fast float %4253, %4262
  %4264 = call float @dx.op.binary.f32(i32 35, float %4263, float 0.000000e+00)  ; FMax(a,b)
  %4265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4255, %dx.types.Handle %37, float %4226, float %4228, float %4216, float undef, i32 0, i32 0, i32 undef, float %4264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = fcmp ule float %4266, 0x3FE0101020000000
  %4268 = extractvalue %dx.types.CBufRet.i32 %4259, 0
  %4269 = and i32 %4268, 128
  %4270 = icmp ne i32 %4269, 0
  %4271 = and i1 %4267, %4270
  br i1 %4271, label %4422, label %4272

; <label>:4272                                    ; preds = %4206
  %4273 = add i32 %4207, 20
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4207, 24
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4207, 40
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4207, 96
  %4283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.i32 %4283, 0
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4287 = fmul fast float %4286, %4226
  %4288 = fmul fast float %4286, %4228
  %4289 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4290 = fadd fast float %4287, %4289
  %4291 = fadd fast float %4288, %4289
  %4292 = add i32 %4284, 0
  %4293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4292, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4294 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4293, i32 0)  ; GetDimensions(handle,mipLevel)
  %4295 = extractvalue %dx.types.Dimensions %4294, 0
  %4296 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4295)  ; FirstbitLo(value)
  %4297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.i32 %4297, 1
  %4299 = sub nsw i32 %4298, %4296
  %4300 = sitofp i32 %4299 to float
  %4301 = fsub fast float %4250, %4300
  %4302 = call float @dx.op.binary.f32(i32 35, float %4301, float 0.000000e+00)  ; FMax(a,b)
  %4303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4293, %dx.types.Handle %37, float %4290, float %4291, float %4281, float undef, i32 0, i32 0, i32 undef, float %4302)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = fmul fast float %4304, %4275
  %4306 = fadd fast float %4305, %4278
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4315 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4316 = fadd fast float %4312, %4173
  %4317 = fadd fast float %4314, %4174
  %4318 = fadd fast float %4306, %4315
  %4319 = fmul fast float %4316, %4308
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4309, float %4319)  ; FMad(a,b,c)
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4310, float %4320)  ; FMad(a,b,c)
  %4322 = fsub fast float %4321, %4315
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 2
  %4325 = fsub fast float %4322, %4324
  %4326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.i32 %4326, 0
  %4328 = call i32 @dx.op.binary.i32(i32 40, i32 %4204, i32 %4327)  ; UMin(a,b)
  %4329 = mul i32 %4328, 36
  %4330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4329, i32 undef)  ; BufferLoad(srv,index,wot)
  %4331 = extractvalue %dx.types.ResRet.i32 %4330, 0
  %4332 = add i32 %4329, 4
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = fmul fast float %4334, %4226
  %4336 = fmul fast float %4334, %4228
  %4337 = extractvalue %dx.types.CBufRet.f32 %4333, 1
  %4338 = fadd fast float %4335, %4337
  %4339 = fadd fast float %4336, %4337
  %4340 = icmp eq i32 %4331, 0
  br i1 %4340, label %4409, label %4341

; <label>:4341                                    ; preds = %4272
  br label %4342

; <label>:4342                                    ; preds = %4399, %4341
  %4343 = phi float [ %4400, %4399 ], [ 0.000000e+00, %4341 ]
  %4344 = phi float [ %4401, %4399 ], [ 0.000000e+00, %4341 ]
  %4345 = phi float [ %4402, %4399 ], [ 0.000000e+00, %4341 ]
  %4346 = phi float [ %4403, %4399 ], [ 0.000000e+00, %4341 ]
  %4347 = phi float [ %4404, %4399 ], [ 0.000000e+00, %4341 ]
  %4348 = phi float [ %4405, %4399 ], [ 0.000000e+00, %4341 ]
  %4349 = phi i32 [ %4406, %4399 ], [ 0, %4341 ]
  %4350 = shl i32 %4349, 2
  %4351 = add i32 %4217, %4350
  %4352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = add i32 %4221, %4350
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = add i32 %4356, 0
  %4358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4357, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4359 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4358, i32 0)  ; GetDimensions(handle,mipLevel)
  %4360 = extractvalue %dx.types.Dimensions %4359, 0
  %4361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4360)  ; FirstbitLo(value)
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 1
  %4364 = sub nsw i32 %4363, %4361
  %4365 = sitofp i32 %4364 to float
  %4366 = fsub fast float %4250, %4365
  %4367 = call float @dx.op.binary.f32(i32 35, float %4366, float 0.000000e+00)  ; FMax(a,b)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4358, %dx.types.Handle %37, float %4338, float %4339, float %4353, float undef, i32 0, i32 0, i32 undef, float %4367)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = fcmp fast ogt float %4369, 0.000000e+00
  br i1 %4370, label %4371, label %4399

; <label>:4371                                    ; preds = %4342
  %4372 = add i32 %4332, %4350
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = and i32 %4374, 32767
  %4376 = mul nuw nsw i32 %4375, 928
  %4377 = add nuw nsw i32 %4376, 48
  %4378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.ResRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.ResRet.f32 %4378, 2
  %4382 = add nuw nsw i32 %4376, 60
  %4383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = fmul fast float %4379, %4369
  %4388 = fmul fast float %4380, %4369
  %4389 = fmul fast float %4381, %4369
  %4390 = fadd fast float %4387, %4343
  %4391 = fadd fast float %4388, %4344
  %4392 = fadd fast float %4389, %4345
  %4393 = fmul fast float %4384, %4369
  %4394 = fmul fast float %4385, %4369
  %4395 = fmul fast float %4386, %4369
  %4396 = fadd fast float %4393, %4346
  %4397 = fadd fast float %4394, %4347
  %4398 = fadd fast float %4395, %4348
  br label %4399

; <label>:4399                                    ; preds = %4371, %4342
  %4400 = phi float [ %4390, %4371 ], [ %4343, %4342 ]
  %4401 = phi float [ %4391, %4371 ], [ %4344, %4342 ]
  %4402 = phi float [ %4392, %4371 ], [ %4345, %4342 ]
  %4403 = phi float [ %4396, %4371 ], [ %4346, %4342 ]
  %4404 = phi float [ %4397, %4371 ], [ %4347, %4342 ]
  %4405 = phi float [ %4398, %4371 ], [ %4348, %4342 ]
  %4406 = add nuw i32 %4349, 1
  %4407 = icmp eq i32 %4406, %4331
  br i1 %4407, label %4408, label %4342

; <label>:4408                                    ; preds = %4399
  br label %4409

; <label>:4409                                    ; preds = %4408, %4272
  %4410 = phi float [ 0.000000e+00, %4272 ], [ %4400, %4408 ]
  %4411 = phi float [ 0.000000e+00, %4272 ], [ %4401, %4408 ]
  %4412 = phi float [ 0.000000e+00, %4272 ], [ %4402, %4408 ]
  %4413 = phi float [ 0.000000e+00, %4272 ], [ %4403, %4408 ]
  %4414 = phi float [ 0.000000e+00, %4272 ], [ %4404, %4408 ]
  %4415 = phi float [ 0.000000e+00, %4272 ], [ %4405, %4408 ]
  %4416 = fadd fast float %4413, %4410
  %4417 = fmul fast float %4416, 0x3F847AE140000000
  %4418 = fadd fast float %4414, %4411
  %4419 = fmul fast float %4418, 0x3F847AE140000000
  %4420 = fadd fast float %4415, %4412
  %4421 = fmul fast float %4420, 0x3F847AE140000000
  br label %4422

; <label>:4422                                    ; preds = %4409, %4206, %4151, %4148, %4119, %4081
  %4423 = phi float [ %4133, %4119 ], [ -1.310720e+05, %4081 ], [ %4325, %4409 ], [ -1.310720e+05, %4151 ], [ -1.310720e+05, %4206 ], [ -1.310720e+05, %4148 ]
  %4424 = phi float [ %4143, %4119 ], [ 0.000000e+00, %4081 ], [ %4417, %4409 ], [ 0.000000e+00, %4151 ], [ 0.000000e+00, %4206 ], [ 0.000000e+00, %4148 ]
  %4425 = phi float [ %4145, %4119 ], [ 0.000000e+00, %4081 ], [ %4419, %4409 ], [ 0.000000e+00, %4151 ], [ 0.000000e+00, %4206 ], [ 0.000000e+00, %4148 ]
  %4426 = phi float [ %4147, %4119 ], [ 0.000000e+00, %4081 ], [ %4421, %4409 ], [ 0.000000e+00, %4151 ], [ 0.000000e+00, %4206 ], [ 0.000000e+00, %4148 ]
  %4427 = phi i1 [ true, %4119 ], [ false, %4081 ], [ true, %4409 ], [ false, %4151 ], [ false, %4206 ], [ false, %4148 ]
  %4428 = and i32 %159, 3
  %4429 = icmp eq i32 %4428, 1
  %4430 = select i1 %4429, float 1.000000e+00, float 0.000000e+00
  %4431 = fsub fast float %4423, %143
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = select i1 %4427, float %4432, float 1.000000e+00
  %4434 = fmul fast float %4433, %4430
  %4435 = icmp eq i32 %4428, 3
  %4436 = select i1 %4435, float 1.000000e+00, float %4434
  %4437 = call float @dx.op.binary.f32(i32 35, float %4024, float %4436)  ; FMax(a,b)
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fcmp fast une float %4438, 0.000000e+00
  %4440 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = call float @dx.op.unary.f32(i32 25, float %4440)  ; Rsqrt(value)
  br i1 %4439, label %4449, label %4442

; <label>:4442                                    ; preds = %4422
  %4443 = fmul fast float %4441, %141
  %4444 = fmul fast float %4441, %142
  %4445 = fmul fast float %4441, %143
  %4446 = fsub fast float -0.000000e+00, %4443
  %4447 = fsub fast float -0.000000e+00, %4444
  %4448 = fsub fast float -0.000000e+00, %4445
  br label %4617

; <label>:4449                                    ; preds = %4422
  %4450 = fmul fast float %141, %4441
  %4451 = fsub fast float -0.000000e+00, %4450
  %4452 = fmul fast float %142, %4441
  %4453 = fsub fast float -0.000000e+00, %4452
  %4454 = fmul fast float %143, %4441
  %4455 = fsub fast float -0.000000e+00, %4454
  %4456 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4453, float %4455, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4457 = fmul fast float %4438, 2.500000e+00
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4438, 0x4013FFFFE0000000
  %4460 = fadd fast float %4459, 0xBFFFFFFFE0000000
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = fmul fast float %4438, 0x4004000020000000
  %4463 = fadd fast float %4462, 0xBFF8000040000000
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4466 = fmul fast float %4027, 1.000000e+01
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fmul fast float %4467, 2.000000e+00
  %4469 = fsub fast float 3.000000e+00, %4468
  %4470 = fmul fast float %4467, %4467
  %4471 = fmul fast float %4470, %4469
  %4472 = fsub fast float 1.000000e+00, %4471
  %4473 = fsub fast float 0x3FE3333340000000, %4048
  %4474 = fmul fast float %4473, 0x400AAAAAA0000000
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4472, %4475
  %4477 = fmul fast float %4060, 0x3FEA2B8620000000
  %4478 = fmul fast float %4061, 0x3FEA2B8620000000
  %4479 = fmul fast float %4062, 0x3FEA2B8620000000
  %4480 = fadd fast float %4477, 0x3FC81DFBA0000000
  %4481 = fmul fast float %4480, %4060
  %4482 = fadd fast float %4481, 0x3F910E6020000000
  %4483 = fadd fast float %4478, 0x3FC81DFBA0000000
  %4484 = fmul fast float %4483, %4061
  %4485 = fadd fast float %4484, 0x3F910E6020000000
  %4486 = fadd fast float %4479, 0x3FC81DFBA0000000
  %4487 = fmul fast float %4486, %4062
  %4488 = fadd fast float %4487, 0x3F910E6020000000
  %4489 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = fsub fast float %4489, %4060
  %4493 = fsub fast float %4490, %4061
  %4494 = fsub fast float %4491, %4062
  %4495 = fmul fast float %4492, %4465
  %4496 = fmul fast float %4495, %4476
  %4497 = fmul fast float %4493, %4465
  %4498 = fmul fast float %4497, %4476
  %4499 = fmul fast float %4494, %4465
  %4500 = fmul fast float %4499, %4476
  %4501 = fadd fast float %4496, %4060
  %4502 = fadd fast float %4498, %4061
  %4503 = fadd fast float %4500, %4062
  %4504 = fmul fast float %4021, %4021
  %4505 = fmul fast float %4504, %4504
  %4506 = fadd fast float %4461, 1.000000e+00
  %4507 = fsub fast float %4506, %4476
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = fsub fast float 1.000000e+00, %4505
  %4512 = call float @dx.op.binary.f32(i32 36, float %4508, float %4511)  ; FMin(a,b)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4514 = call float @dx.op.binary.f32(i32 35, float %4512, float %4513)  ; FMax(a,b)
  %4515 = fadd fast float %4510, 0xBFE4CCCCC0000000
  %4516 = fmul fast float %4515, 0x4006DB6DA0000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4517, 2.000000e+00
  %4519 = fsub fast float 3.000000e+00, %4518
  %4520 = bitcast float %4045 to i32
  %4521 = ashr i32 %4520, 1
  %4522 = add nsw i32 %4521, 532487669
  %4523 = bitcast i32 %4522 to float
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = bitcast float %4524 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = fmul fast float %4527, 2.000000e+00
  %4529 = bitcast float %4046 to i32
  %4530 = ashr i32 %4529, 1
  %4531 = add nsw i32 %4530, 532487669
  %4532 = bitcast i32 %4531 to float
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = bitcast float %4533 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, 2.000000e+00
  %4538 = bitcast float %4047 to i32
  %4539 = ashr i32 %4538, 1
  %4540 = add nsw i32 %4539, 532487669
  %4541 = bitcast i32 %4540 to float
  %4542 = fsub fast float 1.000000e+00, %4541
  %4543 = bitcast float %4542 to i32
  %4544 = sub nsw i32 2129859010, %4543
  %4545 = bitcast i32 %4544 to float
  %4546 = fmul fast float %4545, 2.000000e+00
  %4547 = fsub fast float 0x4002A9FBE0000000, %4528
  %4548 = fadd fast float %4528, 0x3FD54FDF00000000
  %4549 = bitcast float %4548 to i32
  %4550 = sub nsw i32 2129859010, %4549
  %4551 = bitcast i32 %4550 to float
  %4552 = fmul fast float %4551, %4547
  %4553 = fmul fast float %4552, %4552
  %4554 = fsub fast float 0x4002A9FBE0000000, %4537
  %4555 = fadd fast float %4537, 0x3FD54FDF00000000
  %4556 = bitcast float %4555 to i32
  %4557 = sub nsw i32 2129859010, %4556
  %4558 = bitcast i32 %4557 to float
  %4559 = fmul fast float %4558, %4554
  %4560 = fmul fast float %4559, %4559
  %4561 = fsub fast float 0x4002A9FBE0000000, %4546
  %4562 = fadd fast float %4546, 0x3FD54FDF00000000
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, %4561
  %4567 = fmul fast float %4566, %4566
  %4568 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4553)  ; FMax(a,b)
  %4569 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4560)  ; FMax(a,b)
  %4570 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4567)  ; FMax(a,b)
  %4571 = fsub fast float 1.000000e+00, %4456
  %4572 = fadd fast float %4571, %4472
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fsub fast float 1.000000e+00, %4436
  %4575 = fmul fast float %4514, %4574
  %4576 = fmul fast float %4517, %4517
  %4577 = fmul fast float %4576, %4575
  %4578 = fmul fast float %4577, %4519
  %4579 = fmul fast float %4574, 0xBFE99999A0000000
  %4580 = fmul fast float %4579, %4465
  %4581 = fmul fast float %4580, %4476
  %4582 = fadd fast float %4581, 1.000000e+00
  %4583 = fadd fast float %4048, -1.000000e+00
  %4584 = fmul fast float %4582, %4583
  %4585 = fadd fast float %4584, 1.000000e+00
  %4586 = fsub fast float %4568, %4045
  %4587 = fsub fast float %4569, %4046
  %4588 = fsub fast float %4570, %4047
  %4589 = fmul fast float %4578, %4586
  %4590 = fmul fast float %4578, %4587
  %4591 = fmul fast float %4578, %4588
  %4592 = fadd fast float %4589, %4045
  %4593 = fadd fast float %4590, %4046
  %4594 = fadd fast float %4591, %4047
  %4595 = fsub fast float %85, %4009
  %4596 = fsub fast float %86, %4010
  %4597 = fsub fast float %87, %4011
  %4598 = fmul fast float %4578, %4595
  %4599 = fmul fast float %4578, %4596
  %4600 = fmul fast float %4578, %4597
  %4601 = fadd fast float %4598, %4009
  %4602 = fadd fast float %4599, %4010
  %4603 = fadd fast float %4600, %4011
  %4604 = fmul fast float %4578, %4573
  %4605 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4606 = fsub fast float 1.000000e+00, %4605
  %4607 = fmul fast float %4604, %4606
  %4608 = fadd fast float %4607, %4605
  %4609 = fsub fast float 1.000000e+00, %4021
  %4610 = fmul fast float %4578, %4609
  %4611 = fadd fast float %4610, %4021
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4602, float %4603, float %4601, float %4602, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 25, float %4612)  ; Rsqrt(value)
  %4614 = fmul fast float %4601, %4613
  %4615 = fmul fast float %4602, %4613
  %4616 = fmul fast float %4603, %4613
  br label %4617

; <label>:4617                                    ; preds = %4449, %4442
  %4618 = phi float [ %4448, %4442 ], [ %4455, %4449 ]
  %4619 = phi float [ %4447, %4442 ], [ %4453, %4449 ]
  %4620 = phi float [ %4446, %4442 ], [ %4451, %4449 ]
  %4621 = phi float [ %4445, %4442 ], [ %4454, %4449 ]
  %4622 = phi float [ %4444, %4442 ], [ %4452, %4449 ]
  %4623 = phi float [ %4443, %4442 ], [ %4450, %4449 ]
  %4624 = phi float [ %4045, %4442 ], [ %4592, %4449 ]
  %4625 = phi float [ %4046, %4442 ], [ %4593, %4449 ]
  %4626 = phi float [ %4047, %4442 ], [ %4594, %4449 ]
  %4627 = phi float [ %4060, %4442 ], [ %4501, %4449 ]
  %4628 = phi float [ %4061, %4442 ], [ %4502, %4449 ]
  %4629 = phi float [ %4062, %4442 ], [ %4503, %4449 ]
  %4630 = phi float [ %4009, %4442 ], [ %4614, %4449 ]
  %4631 = phi float [ %4010, %4442 ], [ %4615, %4449 ]
  %4632 = phi float [ %4011, %4442 ], [ %4616, %4449 ]
  %4633 = phi float [ %4048, %4442 ], [ %4608, %4449 ]
  %4634 = phi float [ %4021, %4442 ], [ %4611, %4449 ]
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = extractvalue %dx.types.CBufRet.f32 %4635, 3
  %4638 = fmul fast float %4636, %78
  %4639 = fmul fast float %4637, %79
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.CBufRet.f32 %4640, 1
  %4643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = fmul fast float %4644, %4642
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fadd fast float %4646, -1.000000e+00
  %4648 = fmul fast float %4647, %4641
  %4649 = fadd fast float %4648, 1.000000e+00
  %4650 = select i1 %183, float 0.000000e+00, float %4626
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %4620, float %4619, float %4618)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4622, float %4621, float %4630, float %4631, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = fmul fast float %4653, 2.000000e+00
  %4655 = fmul fast float %4654, %4630
  %4656 = fmul fast float %4654, %4631
  %4657 = fmul fast float %4654, %4632
  %4658 = fsub fast float %4623, %4655
  %4659 = fsub fast float %4622, %4656
  %4660 = fsub fast float %4621, %4657
  %4661 = call float @dx.op.binary.f32(i32 36, float %4634, float %4649)  ; FMin(a,b)
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = bitcast float %4662 to i32
  %4664 = ashr i32 %4663, 1
  %4665 = add nsw i32 %4664, 532487669
  %4666 = bitcast i32 %4665 to float
  %4667 = fsub fast float 1.000000e+00, %4633
  %4668 = call float @dx.op.binary.f32(i32 35, float %4667, float 0x3F847AE140000000)  ; FMax(a,b)
  %4669 = fmul fast float %4668, %4668
  %4670 = fmul fast float %4669, %4669
  %4671 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4666, float %4670, float %4671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = fsub fast float 1.000000e+00, %4634
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = fsub fast float 1.000000e+00, %55
  %4678 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.binary.f32(i32 35, float %4678, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4680 = fdiv fast float %4677, %4679
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4682, 5.000000e-01
  %4684 = fadd fast float %4683, 5.000000e-01
  %4685 = fmul fast float %4684, %55
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fmul fast float %4687, %4680
  %4689 = fadd fast float %4685, %4688
  %4690 = fsub fast float 5.000000e-01, %4683
  %4691 = fmul fast float %4690, %4627
  %4692 = fmul fast float %4690, %4628
  %4693 = fmul fast float %4690, %4629
  %4694 = fadd fast float %4689, %4691
  %4695 = fadd fast float %4689, %4692
  %4696 = fadd fast float %4689, %4693
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %4660, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, 5.000000e-01
  %4700 = fadd fast float %4699, 5.000000e-01
  %4701 = fmul fast float %4700, %55
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %4660, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, %4680
  %4705 = fadd fast float %4701, %4704
  %4706 = fsub fast float 5.000000e-01, %4699
  %4707 = fmul fast float %4706, %4627
  %4708 = fmul fast float %4706, %4628
  %4709 = fmul fast float %4706, %4629
  %4710 = fadd fast float %4705, %4707
  %4711 = fadd fast float %4705, %4708
  %4712 = fadd fast float %4705, %4709
  %4713 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = call float @dx.op.binary.f32(i32 36, float %4627, float %4715)  ; FMin(a,b)
  %4717 = fmul fast float %4716, %4662
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = call float @dx.op.binary.f32(i32 36, float %4628, float %4715)  ; FMin(a,b)
  %4723 = fmul fast float %4722, %4662
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = bitcast float %4724 to i32
  %4726 = sub nsw i32 2129859010, %4725
  %4727 = bitcast i32 %4726 to float
  %4728 = call float @dx.op.binary.f32(i32 36, float %4629, float %4715)  ; FMin(a,b)
  %4729 = fmul fast float %4728, %4662
  %4730 = fsub fast float 1.000000e+00, %4729
  %4731 = bitcast float %4730 to i32
  %4732 = sub nsw i32 2129859010, %4731
  %4733 = bitcast i32 %4732 to float
  %4734 = fmul fast float %4661, %56
  %4735 = fmul fast float %4734, %4694
  %4736 = fmul fast float %4735, %4721
  %4737 = fmul fast float %4661, %57
  %4738 = fmul fast float %4737, %4695
  %4739 = fmul fast float %4738, %4727
  %4740 = fmul fast float %4661, %58
  %4741 = fmul fast float %4740, %4696
  %4742 = fmul fast float %4741, %4733
  %4743 = call float @dx.op.binary.f32(i32 36, float %4624, float %4715)  ; FMin(a,b)
  %4744 = fmul fast float %4743, %4662
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = bitcast float %4745 to i32
  %4747 = sub nsw i32 2129859010, %4746
  %4748 = bitcast i32 %4747 to float
  %4749 = call float @dx.op.binary.f32(i32 36, float %4625, float %4715)  ; FMin(a,b)
  %4750 = fmul fast float %4749, %4662
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = bitcast float %4751 to i32
  %4753 = sub nsw i32 2129859010, %4752
  %4754 = bitcast i32 %4753 to float
  %4755 = call float @dx.op.binary.f32(i32 36, float %4650, float %4715)  ; FMin(a,b)
  %4756 = fmul fast float %4755, %4662
  %4757 = fsub fast float 1.000000e+00, %4756
  %4758 = bitcast float %4757 to i32
  %4759 = sub nsw i32 2129859010, %4758
  %4760 = bitcast i32 %4759 to float
  %4761 = fmul fast float %4734, %4710
  %4762 = fmul fast float %4761, %4748
  %4763 = fmul fast float %4737, %4711
  %4764 = fmul fast float %4763, %4754
  %4765 = fmul fast float %4740, %4712
  %4766 = fmul fast float %4765, %4760
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4739, float %4742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = select i1 %183, float 0.000000e+00, float %4736
  %4769 = select i1 %183, float %4767, float %4739
  %4770 = select i1 %183, float 0.000000e+00, float %4742
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4764, float %4766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = select i1 %183, float 0.000000e+00, float %4762
  %4773 = select i1 %183, float %4771, float %4764
  %4774 = select i1 %183, float 0.000000e+00, float %4766
  %4775 = fmul fast float %4652, 9.843750e-01
  %4776 = fmul fast float %4633, 9.843750e-01
  %4777 = fadd fast float %4775, 7.812500e-03
  %4778 = fadd fast float %4776, 7.812500e-03
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4777, float %4778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4782 = fmul fast float %4780, %4624
  %4783 = fmul fast float %4780, %4625
  %4784 = fmul fast float %4780, %4650
  %4785 = fadd fast float %4782, %4781
  %4786 = fadd fast float %4783, %4781
  %4787 = fadd fast float %4784, %4781
  %4788 = fcmp fast ogt float %4022, 0.000000e+00
  br i1 %4788, label %4789, label %4815

; <label>:4789                                    ; preds = %4617
  %4790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4022, float %4652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = extractvalue %dx.types.ResRet.f32 %4790, 1
  %4793 = extractvalue %dx.types.ResRet.f32 %4790, 2
  %4794 = fadd fast float %4791, -5.000000e-01
  %4795 = fadd fast float %4792, -5.000000e-01
  %4796 = fadd fast float %4793, -5.000000e-01
  %4797 = fsub fast float 1.000000e+00, %4624
  %4798 = fsub fast float 1.000000e+00, %4625
  %4799 = fsub fast float 1.000000e+00, %4650
  %4800 = fmul fast float %4624, 4.000000e+00
  %4801 = fmul fast float %4800, %4797
  %4802 = fmul fast float %4801, %4794
  %4803 = fmul fast float %4625, 4.000000e+00
  %4804 = fmul fast float %4803, %4798
  %4805 = fmul fast float %4804, %4795
  %4806 = fmul fast float %4650, 4.000000e+00
  %4807 = fmul fast float %4806, %4799
  %4808 = fmul fast float %4807, %4796
  %4809 = fadd fast float %4802, %4785
  %4810 = fadd fast float %4805, %4786
  %4811 = fadd fast float %4808, %4787
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4814 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  br label %4815

; <label>:4815                                    ; preds = %4789, %4617
  %4816 = phi float [ %4812, %4789 ], [ %4785, %4617 ]
  %4817 = phi float [ %4813, %4789 ], [ %4786, %4617 ]
  %4818 = phi float [ %4814, %4789 ], [ %4787, %4617 ]
  %4819 = call float @dx.op.binary.f32(i32 35, float %4817, float %4818)  ; FMax(a,b)
  %4820 = call float @dx.op.binary.f32(i32 35, float %4816, float %4819)  ; FMax(a,b)
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = fmul fast float %4820, %4633
  %4823 = fadd fast float %4822, %4633
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 0
  %4826 = extractvalue %dx.types.CBufRet.f32 %4824, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4824, 2
  %4828 = extractvalue %dx.types.CBufRet.f32 %4824, 3
  %4829 = fmul fast float %4823, %4825
  %4830 = fadd fast float %4829, %4826
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4832 = fmul fast float %4827, %4823
  %4833 = fadd fast float %4832, %4828
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fsub fast float 1.000000e+00, %4673
  %4836 = fadd fast float %4835, %4834
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = fcmp fast olt float %4837, 1.000000e+00
  br i1 %4838, label %4839, label %5694

; <label>:4839                                    ; preds = %4815
  %4840 = fcmp fast olt float %4831, 1.000000e+00
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = fcmp fast ogt float %4842, 0.000000e+00
  %4844 = or i1 %4840, %4843
  %4845 = or i1 %4840, %4843
  %4846 = xor i1 %4845, true
  %4847 = zext i1 %4846 to i32
  br i1 %4844, label %4848, label %5091

; <label>:4848                                    ; preds = %4839
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4849, 2
  %4853 = extractvalue %dx.types.CBufRet.f32 %4849, 3
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4858 = extractvalue %dx.types.CBufRet.f32 %4854, 3
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.CBufRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.CBufRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.CBufRet.f32 %4859, 3
  %4864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.f32 %4864, 0
  %4866 = extractvalue %dx.types.CBufRet.f32 %4864, 1
  %4867 = extractvalue %dx.types.CBufRet.f32 %4864, 2
  %4868 = extractvalue %dx.types.CBufRet.f32 %4864, 3
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %4658, float %4659, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = call float @dx.op.unary.f32(i32 6, float %4880)  ; FAbs(value)
  %4882 = fmul fast float %4881, 8.000000e+00
  %4883 = fadd fast float %4882, -6.000000e+00
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4879, 8.000000e+00
  %4886 = fmul fast float %4885, %4842
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fcmp fast ogt float %4887, 0.000000e+00
  br i1 %4888, label %4889, label %5066, !dx.controlflow.hints !82

; <label>:4889                                    ; preds = %4848
  %4890 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4841, 2
  %4892 = fsub fast float %4890, %4891
  %4893 = fmul fast float %4892, %4633
  %4894 = fadd fast float %4893, %4891
  %4895 = fmul fast float %196, 2.000000e+00
  %4896 = fmul fast float %197, 2.000000e+00
  %4897 = fadd fast float %4895, -1.000000e+00
  %4898 = fadd fast float %4896, -1.000000e+00
  %4899 = fmul fast float %4894, %4897
  %4900 = fmul fast float %4894, %4898
  %4901 = fadd fast float %4899, %78
  %4902 = fadd fast float %4900, %79
  %4903 = fmul fast float %4901, %4636
  %4904 = fmul fast float %4902, %4637
  %4905 = fadd fast float %4633, 0xBFE3333340000000
  %4906 = fmul fast float %4905, 0x4004000020000000
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4908, 3.000000e+00
  %4910 = fadd fast float %4909, %196
  %4911 = call float @dx.op.unary.f32(i32 27, float %4910)  ; Round_ni(value)
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4903, float %4904, float %4911, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = fcmp fast une float %4913, 0xFFF0000000000000
  %4915 = fcmp fast une float %4913, 0x7FF0000000000000
  %4916 = and i1 %4914, %4915
  %4917 = fcmp fast olt float %4913, 0.000000e+00
  %4918 = call float @dx.op.unary.f32(i32 6, float %4913)  ; FAbs(value)
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = select i1 %4916, float 1.000000e+00, float 0.000000e+00
  %4921 = fmul fast float %4920, %4887
  %4922 = fcmp fast ogt float %4921, 0.000000e+00
  br i1 %4922, label %4923, label %5066, !dx.controlflow.hints !83

; <label>:4923                                    ; preds = %4889
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4928 = select i1 %4917, float 0.000000e+00, float %4925
  %4929 = select i1 %4917, float 0.000000e+00, float %4926
  %4930 = select i1 %4917, float 0.000000e+00, float %4927
  %4931 = select i1 %4917, float %4850, float %4865
  %4932 = select i1 %4917, float %4855, float %4870
  %4933 = select i1 %4917, float %4860, float %4875
  %4934 = select i1 %4917, float %4851, float %4866
  %4935 = select i1 %4917, float %4856, float %4871
  %4936 = select i1 %4917, float %4861, float %4876
  %4937 = select i1 %4917, float %4852, float %4867
  %4938 = select i1 %4917, float %4857, float %4872
  %4939 = select i1 %4917, float %4862, float %4877
  %4940 = select i1 %4917, float %4853, float %4868
  %4941 = select i1 %4917, float %4858, float %4873
  %4942 = select i1 %4917, float %4863, float %4878
  %4943 = fadd fast float %4928, %141
  %4944 = fadd fast float %4929, %142
  %4945 = fadd fast float %4930, %143
  %4946 = fmul fast float %4943, %4931
  %4947 = call float @dx.op.tertiary.f32(i32 46, float %4944, float %4934, float %4946)  ; FMad(a,b,c)
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4937, float %4947)  ; FMad(a,b,c)
  %4949 = fadd fast float %4948, %4940
  %4950 = fmul fast float %4943, %4932
  %4951 = call float @dx.op.tertiary.f32(i32 46, float %4944, float %4935, float %4950)  ; FMad(a,b,c)
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4938, float %4951)  ; FMad(a,b,c)
  %4953 = fadd fast float %4952, %4941
  %4954 = fmul fast float %4943, %4933
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4944, float %4936, float %4954)  ; FMad(a,b,c)
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4939, float %4955)  ; FMad(a,b,c)
  %4957 = fadd fast float %4956, %4942
  %4958 = fdiv fast float 1.000000e+00, %4957
  %4959 = fmul fast float %4958, %4949
  %4960 = fmul fast float %4958, %4953
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = fmul fast float %4959, %4962
  %4965 = fmul fast float %4960, %4963
  %4966 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4967 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4968 = fadd fast float %4964, %4966
  %4969 = fadd fast float %4965, %4967
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 3
  %4972 = fmul fast float %4971, %4658
  %4973 = fmul fast float %4971, %4659
  %4974 = fmul fast float %4971, %4660
  %4975 = fadd fast float %4972, %4943
  %4976 = fadd fast float %4973, %4944
  %4977 = fadd fast float %4974, %4945
  %4978 = fmul fast float %4975, %4931
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4976, float %4934, float %4978)  ; FMad(a,b,c)
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4937, float %4979)  ; FMad(a,b,c)
  %4981 = fadd fast float %4980, %4940
  %4982 = fmul fast float %4975, %4932
  %4983 = call float @dx.op.tertiary.f32(i32 46, float %4976, float %4935, float %4982)  ; FMad(a,b,c)
  %4984 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4938, float %4983)  ; FMad(a,b,c)
  %4985 = fadd fast float %4984, %4941
  %4986 = fmul fast float %4975, %4933
  %4987 = call float @dx.op.tertiary.f32(i32 46, float %4976, float %4936, float %4986)  ; FMad(a,b,c)
  %4988 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4939, float %4987)  ; FMad(a,b,c)
  %4989 = fadd fast float %4988, %4942
  %4990 = fdiv fast float 1.000000e+00, %4989
  %4991 = fmul fast float %4990, %4981
  %4992 = fmul fast float %4990, %4985
  %4993 = fmul fast float %4968, 2.000000e+00
  %4994 = fadd fast float %4993, -1.000000e+00
  %4995 = call float @dx.op.unary.f32(i32 6, float %4994)  ; FAbs(value)
  %4996 = fmul fast float %4995, 5.000000e+00
  %4997 = fadd fast float %4996, -4.000000e+00
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fmul fast float %4998, %4884
  %5000 = fsub fast float %4959, %4991
  %5001 = fmul fast float %4962, %5000
  %5002 = fmul fast float %4999, %5001
  %5003 = fsub fast float %4991, %4959
  %5004 = fmul fast float %4962, %5003
  %5005 = fadd fast float %5004, %5002
  %5006 = fsub fast float %4992, %4960
  %5007 = fmul fast float %4963, %5006
  %5008 = fmul fast float %5005, %4919
  %5009 = fmul fast float %5007, %4919
  %5010 = fadd fast float %5008, %4968
  %5011 = fadd fast float %5009, %4969
  %5012 = fsub fast float %4990, %4958
  %5013 = fmul fast float %5012, %4919
  %5014 = fadd fast float %5013, %4958
  %5015 = fdiv fast float 1.000000e+00, %5014
  %5016 = fadd fast float %4633, -1.000000e+00
  %5017 = fsub fast float %5015, %4957
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 2
  %5020 = fmul fast float %5019, %5015
  %5021 = fdiv fast float 1.600000e+02, %5020
  %5022 = fmul fast float %5016, %5016
  %5023 = fmul fast float %5022, 0xBFB5B17960000000
  %5024 = fmul fast float %5023, %5017
  %5025 = fmul fast float %5024, %5021
  %5026 = call float @dx.op.unary.f32(i32 21, float %5025)  ; Exp(value)
  %5027 = fmul fast float %5026, 0x3FF04B2960000000
  %5028 = fsub fast float 0x3FF04B2960000000, %5027
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fmul fast float %5029, 4.000000e+00
  %5031 = fadd fast float %196, -5.000000e-01
  %5032 = fadd fast float %197, -5.000000e-01
  %5033 = fmul fast float %5029, 0x3FBEB851E0000000
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %5034, %5031
  %5036 = fmul fast float %5034, %5032
  %5037 = fadd fast float %5010, %5035
  %5038 = fadd fast float %5011, %5036
  %5039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5037, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float %5030)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.ResRet.f32 %5039, 1
  %5042 = extractvalue %dx.types.ResRet.f32 %5039, 2
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5045 = fmul fast float %5044, %5040
  %5046 = fmul fast float %5044, %5041
  %5047 = fmul fast float %5044, %5042
  %5048 = select i1 %183, float 0.000000e+00, float %5046
  %5049 = select i1 %183, float 0.000000e+00, float %5047
  %5050 = fmul fast float %5037, 2.000000e+00
  %5051 = fmul fast float %5038, 2.000000e+00
  %5052 = fadd fast float %5050, -1.000000e+00
  %5053 = fadd fast float %5051, -1.000000e+00
  %5054 = fmul fast float %5052, %5052
  %5055 = fsub fast float 1.000000e+00, %5054
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = fmul fast float %5057, %4884
  %5059 = fadd fast float %5058, %5056
  %5060 = fmul fast float %5053, %5053
  %5061 = fsub fast float 1.000000e+00, %5060
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5059, %5062
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, %4921
  br label %5066

; <label>:5066                                    ; preds = %4923, %4889, %4848
  %5067 = phi float [ %5045, %4923 ], [ 0.000000e+00, %4889 ], [ 0.000000e+00, %4848 ]
  %5068 = phi float [ %5048, %4923 ], [ 0.000000e+00, %4889 ], [ 0.000000e+00, %4848 ]
  %5069 = phi float [ %5049, %4923 ], [ 0.000000e+00, %4889 ], [ 0.000000e+00, %4848 ]
  %5070 = phi float [ %5065, %4923 ], [ 0.000000e+00, %4889 ], [ 0.000000e+00, %4848 ]
  %5071 = fcmp fast olt float %5070, 1.000000e+00
  %5072 = or i1 %5071, %4846
  %5073 = zext i1 %5072 to i32
  %5074 = fmul fast float %5070, %4831
  %5075 = fsub fast float %5070, %5074
  %5076 = fsub fast float 1.000000e+00, %4837
  %5077 = fmul fast float %5075, %5076
  %5078 = fadd fast float %5077, %4837
  %5079 = fsub fast float %5078, %5075
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %4772
  %5082 = fmul fast float %5080, %4773
  %5083 = fmul fast float %5080, %4774
  %5084 = fsub fast float -0.000000e+00, %5078
  %5085 = fmul fast float %5075, %5067
  %5086 = fmul fast float %5075, %5068
  %5087 = fmul fast float %5075, %5069
  %5088 = fadd fast float %5085, %5081
  %5089 = fadd fast float %5086, %5082
  %5090 = fadd fast float %5087, %5083
  br label %5091

; <label>:5091                                    ; preds = %5066, %4839
  %5092 = phi float [ %4837, %4839 ], [ %5084, %5066 ]
  %5093 = phi float [ %4772, %4839 ], [ %5088, %5066 ]
  %5094 = phi float [ %4773, %4839 ], [ %5089, %5066 ]
  %5095 = phi float [ %4774, %4839 ], [ %5090, %5066 ]
  %5096 = phi i32 [ %4847, %4839 ], [ %5073, %5066 ]
  %5097 = icmp eq i32 %5096, 0
  br i1 %5097, label %5694, label %5098

; <label>:5098                                    ; preds = %5091
  %5099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.f32 %5099, 2
  %5101 = extractvalue %dx.types.CBufRet.f32 %5099, 3
  %5102 = fmul fast float %5100, %78
  %5103 = fmul fast float %5101, %79
  %5104 = fptoui float %5102 to i32
  %5105 = fptoui float %5103 to i32
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5108 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5109 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5110 = fadd fast float %73, -4.000000e+00
  %5111 = call float @dx.op.binary.f32(i32 35, float %5110, float 0.000000e+00)  ; FMax(a,b)
  %5112 = fadd fast float %5111, %5107
  %5113 = fmul fast float %5112, %5108
  %5114 = call float @dx.op.unary.f32(i32 23, float %5113)  ; Log(value)
  %5115 = fmul fast float %5114, %5109
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 2
  %5118 = fmul fast float %5115, %5117
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.i32 %5120, 1
  %5122 = add i32 %5121, -1
  %5123 = uitofp i32 %5121 to float
  %5124 = fmul fast float %5123, %5119
  %5125 = fptoui float %5124 to i32
  %5126 = call i32 @dx.op.binary.i32(i32 40, i32 %5125, i32 %5122)  ; UMin(a,b)
  %5127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.i32 %5127, 2
  %5129 = extractvalue %dx.types.CBufRet.i32 %5127, 3
  %5130 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5105, i32 %5128, i32 %5104)  ; UMad(a,b,c)
  %5131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5126, i32 %5129, i32 %5130)  ; UMad(a,b,c)
  %5132 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5133 = fptoui float %5132 to i32
  %5134 = lshr i32 %5133, 5
  %5135 = call i32 @dx.op.binary.i32(i32 40, i32 %5134, i32 8191)  ; UMin(a,b)
  %5136 = fcmp fast ogt float %4432, 0.000000e+00
  %5137 = fcmp fast ogt float %4660, 0.000000e+00
  %5138 = and i1 %5137, %5136
  br i1 %5138, label %5139, label %5168

; <label>:5139                                    ; preds = %5098
  %5140 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %4660, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = call float @dx.op.binary.f32(i32 35, float %5140, float -1.000000e+00)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 36, float %5141, float 1.000000e+00)  ; FMin(a,b)
  %5143 = fmul fast float %5142, %5142
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5144, 0x3FFC6E2300000000
  %5146 = fsub fast float 1.000000e+00, %5145
  %5147 = fcmp fast ogt float %5146, 0.000000e+00
  %5148 = call float @dx.op.unary.f32(i32 24, float %5146)  ; Sqrt(value)
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = call float @dx.op.unary.f32(i32 23, float %5149)  ; Log(value)
  %5151 = fmul fast float %5150, 5.000000e+00
  %5152 = call float @dx.op.unary.f32(i32 21, float %5151)  ; Exp(value)
  %5153 = fmul fast float %5152, 0x3FEF591A60000000
  %5154 = fadd fast float %5153, 0x3F94DCB540000000
  %5155 = select i1 %5147, float %5154, float 1.000000e+00
  %5156 = fcmp fast oge float %5155, 1.000000e+00
  %5157 = fmul fast float %5140, 2.000000e+00
  %5158 = fadd fast float %5157, %4660
  %5159 = select i1 %5156, float %5158, float %4660
  %5160 = fsub fast float %5159, %4660
  %5161 = fmul fast float %5160, %4432
  %5162 = fadd fast float %5161, %4660
  %5163 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %5162, float %4658, float %4659, float %5162)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = call float @dx.op.unary.f32(i32 25, float %5163)  ; Rsqrt(value)
  %5165 = fmul fast float %5164, %4658
  %5166 = fmul fast float %5164, %4659
  %5167 = fmul fast float %5162, %5164
  br label %5168

; <label>:5168                                    ; preds = %5139, %5098
  %5169 = phi float [ %5165, %5139 ], [ %4658, %5098 ]
  %5170 = phi float [ %5166, %5139 ], [ %4659, %5098 ]
  %5171 = phi float [ %5167, %5139 ], [ %4660, %5098 ]
  %5172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.i32 %5172, 2
  %5174 = add nsw i32 %5173, -1
  %5175 = call i32 @dx.op.binary.i32(i32 37, i32 %5174, i32 0)  ; IMax(a,b)
  %5176 = shl i32 %5135, 2
  %5177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.i32 %5177, 0
  %5179 = lshr i32 %5178, 16
  %5180 = and i32 %5178, 65535
  %5181 = lshr i32 %5178, 21
  %5182 = lshr i32 %5180, 5
  %5183 = call i32 @dx.op.binary.i32(i32 40, i32 %5182, i32 %5175)  ; UMin(a,b)
  %5184 = icmp ugt i32 %5181, %5183
  br i1 %5184, label %5566, label %5185

; <label>:5185                                    ; preds = %5168
  br label %5186

; <label>:5186                                    ; preds = %5555, %5185
  %5187 = phi float [ %5556, %5555 ], [ 0.000000e+00, %5185 ]
  %5188 = phi float [ %5557, %5555 ], [ 0.000000e+00, %5185 ]
  %5189 = phi float [ %5558, %5555 ], [ 0.000000e+00, %5185 ]
  %5190 = phi float [ %5559, %5555 ], [ 1.000000e+00, %5185 ]
  %5191 = phi i32 [ %5563, %5555 ], [ %5181, %5185 ]
  %5192 = phi float [ %5560, %5555 ], [ 0.000000e+00, %5185 ]
  %5193 = phi float [ %5561, %5555 ], [ 0.000000e+00, %5185 ]
  %5194 = phi float [ %5562, %5555 ], [ 0.000000e+00, %5185 ]
  %5195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.i32 %5195, 2
  %5197 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5131, i32 %5196, i32 %5191)  ; UMad(a,b,c)
  %5198 = shl i32 %5197, 2
  %5199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5198, i32 undef)  ; BufferLoad(srv,index,wot)
  %5200 = extractvalue %dx.types.ResRet.i32 %5199, 0
  %5201 = shl i32 %5191, 5
  %5202 = sub nsw i32 %5179, %5201
  %5203 = call i32 @dx.op.binary.i32(i32 37, i32 %5202, i32 0)  ; IMax(a,b)
  %5204 = call i32 @dx.op.binary.i32(i32 38, i32 %5203, i32 31)  ; IMin(a,b)
  %5205 = sub nsw i32 1, %5179
  %5206 = add nsw i32 %5205, %5180
  %5207 = call i32 @dx.op.binary.i32(i32 37, i32 %5206, i32 0)  ; IMax(a,b)
  %5208 = call i32 @dx.op.binary.i32(i32 38, i32 %5207, i32 32)  ; IMin(a,b)
  %5209 = and i32 %5208, 31
  %5210 = shl i32 -1, %5209
  %5211 = xor i32 %5210, -1
  %5212 = and i32 %5204, 31
  %5213 = shl i32 %5211, %5212
  %5214 = icmp eq i32 %5208, 32
  %5215 = select i1 %5214, i32 -1, i32 %5213
  %5216 = and i32 %5215, %5200
  %5217 = icmp eq i32 %5216, 0
  br i1 %5217, label %5555, label %5218

; <label>:5218                                    ; preds = %5186
  br label %5219

; <label>:5219                                    ; preds = %5329, %5218
  %5220 = phi float [ %5330, %5329 ], [ %5187, %5218 ]
  %5221 = phi float [ %5331, %5329 ], [ %5188, %5218 ]
  %5222 = phi float [ %5332, %5329 ], [ %5189, %5218 ]
  %5223 = phi float [ %5333, %5329 ], [ %5190, %5218 ]
  %5224 = phi i32 [ %5232, %5329 ], [ %5216, %5218 ]
  %5225 = phi float [ %5334, %5329 ], [ %5192, %5218 ]
  %5226 = phi float [ %5335, %5329 ], [ %5193, %5218 ]
  %5227 = phi float [ %5336, %5329 ], [ %5194, %5218 ]
  %5228 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5224)  ; FirstbitLo(value)
  %5229 = add i32 %5228, %5201
  %5230 = and i32 %5228, 31
  %5231 = shl i32 1, %5230
  %5232 = xor i32 %5231, %5224
  %5233 = mul i32 %5229, 72
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.ResRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.ResRet.f32 %5234, 2
  %5238 = add i32 %5233, 12
  %5239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.i32 %5239, 0
  %5241 = add i32 %5233, 16
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5246 = add i32 %5233, 28
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = add i32 %5233, 32
  %5250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5249, i32 undef)  ; BufferLoad(srv,index,wot)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5254 = extractvalue %dx.types.ResRet.f32 %5250, 3
  %5255 = add i32 %5233, 48
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = add i32 %5233, 56
  %5260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.ResRet.f32 %5260, 1
  %5263 = add i32 %5233, 64
  %5264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = mul i32 %5229, 60
  %5268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5272 = add i32 %5267, 12
  %5273 = add i32 %5267, 48
  %5274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = and i32 %5240, 32767
  %5279 = bitcast float %5235 to i32
  %5280 = icmp eq i32 %5279, -1
  %5281 = bitcast float %5236 to i32
  %5282 = and i32 %5240, 32768
  %5283 = icmp ne i32 %5282, 0
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5288 = fsub fast float %5269, %5285
  %5289 = fsub fast float %5270, %5286
  %5290 = fsub fast float %5271, %5287
  %5291 = fsub fast float %141, %5288
  %5292 = fsub fast float %142, %5289
  %5293 = fsub fast float %143, %5290
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.ResRet.f32 %5294, 2
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5295, float %5296, float %5297)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = add i32 %5267, 24
  %5300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5301, float %5302, float %5303)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = add i32 %5267, 36
  %5306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.ResRet.f32 %5306, 2
  %5310 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = call float @dx.op.unary.f32(i32 6, float %5298)  ; FAbs(value)
  %5312 = call float @dx.op.unary.f32(i32 6, float %5304)  ; FAbs(value)
  %5313 = call float @dx.op.unary.f32(i32 6, float %5310)  ; FAbs(value)
  %5314 = fsub fast float %5275, %5311
  %5315 = fsub fast float %5276, %5312
  %5316 = fsub fast float %5277, %5313
  %5317 = fmul fast float %5314, %5243
  %5318 = fmul fast float %5315, %5244
  %5319 = fmul fast float %5316, %5245
  %5320 = call float @dx.op.binary.f32(i32 36, float %5318, float %5319)  ; FMin(a,b)
  %5321 = call float @dx.op.binary.f32(i32 36, float %5317, float %5320)  ; FMin(a,b)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = call float @dx.op.binary.f32(i32 36, float %5223, float %5322)  ; FMin(a,b)
  %5324 = uitofp i1 %5283 to float
  %5325 = fadd fast float %4432, 1.000000e+00
  %5326 = fsub fast float %5325, %5324
  %5327 = fmul fast float %5323, %5326
  %5328 = fcmp fast ogt float %5327, 0.000000e+00
  br i1 %5328, label %5338, label %5329

; <label>:5329                                    ; preds = %5480, %5219
  %5330 = phi float [ %5544, %5480 ], [ %5220, %5219 ]
  %5331 = phi float [ %5545, %5480 ], [ %5221, %5219 ]
  %5332 = phi float [ %5546, %5480 ], [ %5222, %5219 ]
  %5333 = phi float [ %5553, %5480 ], [ %5223, %5219 ]
  %5334 = phi float [ %5550, %5480 ], [ %5225, %5219 ]
  %5335 = phi float [ %5551, %5480 ], [ %5226, %5219 ]
  %5336 = phi float [ %5552, %5480 ], [ %5227, %5219 ]
  %5337 = icmp eq i32 %5224, %5231
  br i1 %5337, label %5554, label %5219

; <label>:5338                                    ; preds = %5219
  br i1 %5280, label %5396, label %5339

; <label>:5339                                    ; preds = %5338
  %5340 = fsub fast float -0.000000e+00, %5295
  %5341 = fsub fast float -0.000000e+00, %5296
  %5342 = fsub fast float -0.000000e+00, %5297
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = fsub fast float -0.000000e+00, %5343
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = fadd fast float %5345, %5258
  %5347 = fadd fast float %5257, %5345
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = fcmp ogt float %5343, -0.000000e+00
  %5350 = select i1 %5349, float %5348, float %5346
  %5351 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5352 = fdiv fast float 1.000000e+00, %5351
  %5353 = fmul fast float %5350, %5352
  %5354 = call float @dx.op.binary.f32(i32 35, float %5353, float 0.000000e+00)  ; FMax(a,b)
  %5355 = fsub fast float -0.000000e+00, %5301
  %5356 = fsub fast float -0.000000e+00, %5302
  %5357 = fsub fast float -0.000000e+00, %5303
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float %5355, float %5356, float %5357)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = fsub fast float -0.000000e+00, %5358
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5355, float %5356, float %5357)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = fadd fast float %5360, %5262
  %5362 = fadd fast float %5261, %5360
  %5363 = fsub fast float -0.000000e+00, %5362
  %5364 = fcmp ogt float %5358, -0.000000e+00
  %5365 = select i1 %5364, float %5363, float %5361
  %5366 = call float @dx.op.unary.f32(i32 6, float %5359)  ; FAbs(value)
  %5367 = fdiv fast float 1.000000e+00, %5366
  %5368 = fmul fast float %5365, %5367
  %5369 = call float @dx.op.binary.f32(i32 35, float %5368, float 0.000000e+00)  ; FMax(a,b)
  %5370 = fsub fast float -0.000000e+00, %5307
  %5371 = fsub fast float -0.000000e+00, %5308
  %5372 = fsub fast float -0.000000e+00, %5309
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float %5370, float %5371, float %5372)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fsub fast float -0.000000e+00, %5373
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5370, float %5371, float %5372)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = fadd fast float %5375, %5266
  %5377 = fadd fast float %5265, %5375
  %5378 = fsub fast float -0.000000e+00, %5377
  %5379 = fcmp ogt float %5373, -0.000000e+00
  %5380 = select i1 %5379, float %5378, float %5376
  %5381 = call float @dx.op.unary.f32(i32 6, float %5374)  ; FAbs(value)
  %5382 = fdiv fast float 1.000000e+00, %5381
  %5383 = fmul fast float %5380, %5382
  %5384 = call float @dx.op.binary.f32(i32 35, float %5383, float 0.000000e+00)  ; FMax(a,b)
  %5385 = call float @dx.op.binary.f32(i32 36, float %5369, float %5384)  ; FMin(a,b)
  %5386 = call float @dx.op.binary.f32(i32 36, float %5354, float %5385)  ; FMin(a,b)
  %5387 = fmul fast float %5386, %5169
  %5388 = fmul fast float %5386, %5170
  %5389 = fmul fast float %5386, %5171
  %5390 = fadd fast float %5387, %141
  %5391 = fadd fast float %5388, %142
  %5392 = fadd fast float %5389, %143
  %5393 = fsub fast float %5390, %5235
  %5394 = fsub fast float %5391, %5236
  %5395 = fsub fast float %5392, %5237
  br label %5403

; <label>:5396                                    ; preds = %5338
  %5397 = fmul fast float %5169, 8.096000e+03
  %5398 = fmul fast float %5170, 8.096000e+03
  %5399 = fmul fast float %5171, 8.096000e+03
  %5400 = fadd fast float %5397, %141
  %5401 = fadd fast float %5398, %142
  %5402 = fadd fast float %5399, %143
  br label %5403

; <label>:5403                                    ; preds = %5396, %5339
  %5404 = phi float [ %5169, %5396 ], [ %5393, %5339 ]
  %5405 = phi float [ %5170, %5396 ], [ %5394, %5339 ]
  %5406 = phi float [ %5171, %5396 ], [ %5395, %5339 ]
  %5407 = phi float [ %5400, %5396 ], [ %5390, %5339 ]
  %5408 = phi float [ %5401, %5396 ], [ %5391, %5339 ]
  %5409 = phi float [ %5402, %5396 ], [ %5392, %5339 ]
  %5410 = fcmp fast olt float %5254, 1.000000e+00
  br i1 %5410, label %5411, label %5442, !dx.controlflow.hints !84

; <label>:5411                                    ; preds = %5403
  %5412 = fmul fast float %5406, %5252
  %5413 = fmul fast float %5405, %5253
  %5414 = fsub fast float %5412, %5413
  %5415 = fmul fast float %5404, %5253
  %5416 = fmul fast float %5406, %5251
  %5417 = fsub fast float %5415, %5416
  %5418 = fmul fast float %5405, %5251
  %5419 = fmul fast float %5404, %5252
  %5420 = fsub fast float %5418, %5419
  %5421 = fmul fast float %5414, 2.000000e+00
  %5422 = fmul fast float %5417, 2.000000e+00
  %5423 = fmul fast float %5420, 2.000000e+00
  %5424 = fmul fast float %5421, %5254
  %5425 = fmul fast float %5422, %5254
  %5426 = fmul fast float %5423, %5254
  %5427 = fmul fast float %5423, %5252
  %5428 = fmul fast float %5422, %5253
  %5429 = fmul fast float %5421, %5253
  %5430 = fmul fast float %5423, %5251
  %5431 = fmul fast float %5422, %5251
  %5432 = fmul fast float %5421, %5252
  %5433 = fadd fast float %5427, %5404
  %5434 = fadd fast float %5433, %5424
  %5435 = fsub fast float %5434, %5428
  %5436 = fsub fast float %5405, %5430
  %5437 = fadd fast float %5436, %5425
  %5438 = fadd fast float %5437, %5429
  %5439 = fadd fast float %5426, %5406
  %5440 = fsub fast float %5439, %5432
  %5441 = fadd fast float %5440, %5431
  br label %5442

; <label>:5442                                    ; preds = %5411, %5403
  %5443 = phi float [ %5435, %5411 ], [ %5404, %5403 ]
  %5444 = phi float [ %5438, %5411 ], [ %5405, %5403 ]
  %5445 = phi float [ %5441, %5411 ], [ %5406, %5403 ]
  br i1 %5280, label %5477, label %5446

; <label>:5446                                    ; preds = %5442
  %5447 = fmul fast float %4633, 0x400187C840000000
  %5448 = fadd fast float %5447, 0xC00EFC2120000000
  %5449 = fmul fast float %5448, %4633
  %5450 = fadd fast float %5449, 0x3FE5D16340000000
  %5451 = fmul fast float %5450, %4633
  %5452 = fadd fast float %5451, 1.000000e+00
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fsub fast float %5407, %141
  %5455 = fsub fast float %5408, %142
  %5456 = fsub fast float %5409, %143
  %5457 = fsub fast float %5407, %5235
  %5458 = fsub fast float %5408, %5236
  %5459 = fsub fast float %5409, %5237
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5454, float %5455, float %5456)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5457, float %5458, float %5459, float %5457, float %5458, float %5459)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = fadd fast float %5461, 0x3EE4F8B580000000
  %5463 = fdiv fast float %5460, %5462
  %5464 = bitcast float %5463 to i32
  %5465 = ashr i32 %5464, 1
  %5466 = add nsw i32 %5465, 532487669
  %5467 = bitcast i32 %5466 to float
  %5468 = fmul fast float %5467, %5453
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = fmul fast float %5469, 0x4009981AE0000000
  %5471 = fsub fast float 0x40111BBD80000000, %5470
  %5472 = fmul fast float %5471, %5469
  %5473 = fadd fast float %5472, 0xC0009F6020000000
  %5474 = fmul fast float %5473, %5469
  %5475 = fadd fast float %5474, 1.000000e+00
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  br label %5480

; <label>:5477                                    ; preds = %5442
  %5478 = icmp ne i32 %5281, -1
  %5479 = zext i1 %5478 to i32
  br label %5480

; <label>:5480                                    ; preds = %5477, %5446
  %5481 = phi float [ %4633, %5477 ], [ %5476, %5446 ]
  %5482 = phi i32 [ %5479, %5477 ], [ 0, %5446 ]
  %5483 = fmul float %5481, 5.000000e+00
  %5484 = fsub float 5.000000e+00, %5483
  %5485 = icmp ne i32 %5482, 0
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5488 = fadd fast float %5487, %5484
  %5489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5488)  ; FMax(a,b)
  %5490 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5491 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5492 = fadd fast float %5491, %5490
  %5493 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5494 = fadd fast float %5492, %5493
  %5495 = fcmp fast oeq float %5494, 0.000000e+00
  %5496 = fdiv fast float 1.000000e+00, %5494
  %5497 = select i1 %5495, float 1.000000e+00, float %5496
  %5498 = fmul fast float %5497, %5443
  %5499 = fmul fast float %5497, %5444
  %5500 = call float @dx.op.unary.f32(i32 6, float %5499)  ; FAbs(value)
  %5501 = call float @dx.op.unary.f32(i32 6, float %5498)  ; FAbs(value)
  %5502 = fsub fast float 1.000000e+00, %5500
  %5503 = fsub fast float 1.000000e+00, %5501
  %5504 = fcmp fast oge float %5498, 0.000000e+00
  %5505 = fcmp fast oge float %5499, 0.000000e+00
  %5506 = select i1 %5504, float 1.000000e+00, float -1.000000e+00
  %5507 = select i1 %5505, float 1.000000e+00, float -1.000000e+00
  %5508 = fcmp fast ole float %5445, 0.000000e+00
  %5509 = fmul fast float %5506, %5502
  %5510 = fmul fast float %5507, %5503
  %5511 = select i1 %5508, float %5509, float %5498
  %5512 = select i1 %5508, float %5510, float %5499
  %5513 = fmul fast float %5511, 5.000000e-01
  %5514 = fmul fast float %5512, 5.000000e-01
  %5515 = fadd fast float %5513, 5.000000e-01
  %5516 = fadd fast float %5514, 5.000000e-01
  %5517 = uitofp i32 %5278 to float
  %5518 = call float @dx.op.binary.f32(i32 36, float %5489, float 3.000000e+00)  ; FMin(a,b)
  %5519 = fadd fast float %5518, 2.000000e+00
  %5520 = call float @dx.op.unary.f32(i32 21, float %5519)  ; Exp(value)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5522 = fmul fast float %5521, %5520
  %5523 = fmul fast float %5522, 2.000000e+00
  %5524 = fsub fast float 1.000000e+00, %5523
  %5525 = fmul fast float %5515, %5524
  %5526 = fmul fast float %5516, %5524
  %5527 = fadd fast float %5525, %5522
  %5528 = fadd fast float %5526, %5522
  %5529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5527, float %5528, float %5517, float undef, i32 0, i32 0, i32 undef, float %5489)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = fmul fast float %5534, %5248
  %5536 = call float @dx.op.binary.f32(i32 36, float %4713, float %5535)  ; FMin(a,b)
  %5537 = select i1 %5485, float %5536, float %5535
  %5538 = fmul fast float %5530, %5327
  %5539 = fmul fast float %5538, %5537
  %5540 = fmul fast float %5531, %5327
  %5541 = fmul fast float %5540, %5537
  %5542 = fmul fast float %5532, %5327
  %5543 = fmul fast float %5542, %5537
  %5544 = fadd fast float %5539, %5220
  %5545 = fadd fast float %5541, %5221
  %5546 = fadd fast float %5543, %5222
  %5547 = fmul fast float %5407, %5327
  %5548 = fmul fast float %5408, %5327
  %5549 = fmul fast float %5409, %5327
  %5550 = fadd fast float %5547, %5225
  %5551 = fadd fast float %5548, %5226
  %5552 = fadd fast float %5549, %5227
  %5553 = fsub fast float %5223, %5327
  br label %5329

; <label>:5554                                    ; preds = %5329
  br label %5555

; <label>:5555                                    ; preds = %5554, %5186
  %5556 = phi float [ %5187, %5186 ], [ %5330, %5554 ]
  %5557 = phi float [ %5188, %5186 ], [ %5331, %5554 ]
  %5558 = phi float [ %5189, %5186 ], [ %5332, %5554 ]
  %5559 = phi float [ %5190, %5186 ], [ %5333, %5554 ]
  %5560 = phi float [ %5192, %5186 ], [ %5334, %5554 ]
  %5561 = phi float [ %5193, %5186 ], [ %5335, %5554 ]
  %5562 = phi float [ %5194, %5186 ], [ %5336, %5554 ]
  %5563 = add i32 %5191, 1
  %5564 = icmp ugt i32 %5563, %5183
  br i1 %5564, label %5565, label %5186, !llvm.loop !85

; <label>:5565                                    ; preds = %5555
  br label %5566

; <label>:5566                                    ; preds = %5565, %5168
  %5567 = phi float [ 0.000000e+00, %5168 ], [ %5556, %5565 ]
  %5568 = phi float [ 0.000000e+00, %5168 ], [ %5557, %5565 ]
  %5569 = phi float [ 0.000000e+00, %5168 ], [ %5558, %5565 ]
  %5570 = phi float [ 0.000000e+00, %5168 ], [ %5560, %5565 ]
  %5571 = phi float [ 0.000000e+00, %5168 ], [ %5561, %5565 ]
  %5572 = phi float [ 0.000000e+00, %5168 ], [ %5562, %5565 ]
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = select i1 %183, float 0.000000e+00, float %5567
  %5575 = select i1 %183, float %5573, float %5568
  %5576 = select i1 %183, float 0.000000e+00, float %5569
  %5577 = fcmp fast olt float %5092, 0.000000e+00
  %5578 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5579 = fmul fast float %5578, %5093
  %5580 = fmul fast float %5578, %5094
  %5581 = fmul fast float %5578, %5095
  %5582 = select i1 %5577, float %5093, float %5579
  %5583 = select i1 %5577, float %5094, float %5580
  %5584 = select i1 %5577, float %5095, float %5581
  %5585 = fsub fast float 1.000000e+00, %5578
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = fmul fast float %5586, %5574
  %5588 = fmul fast float %5586, %5575
  %5589 = fmul fast float %5586, %5576
  %5590 = fadd fast float %5582, %5587
  %5591 = fadd fast float %5583, %5588
  %5592 = fadd fast float %5584, %5589
  %5593 = fcmp fast une float %4842, 0.000000e+00
  br i1 %5593, label %5694, label %5594

; <label>:5594                                    ; preds = %5566
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5599 = extractvalue %dx.types.CBufRet.f32 %5595, 3
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %4658, float %4659, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5571, float %5572, float %5606, float %5607, float %5608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5606, float %5607, float %5608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fadd fast float %4633, -1.000000e+00
  %5614 = fsub fast float %5611, %5612
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 2
  %5617 = fmul fast float %5616, %5611
  %5618 = fdiv fast float 1.600000e+02, %5617
  %5619 = fmul fast float %5613, %5613
  %5620 = fmul fast float %5619, 0xBFB5B17960000000
  %5621 = fmul fast float %5620, %5614
  %5622 = fmul fast float %5621, %5618
  %5623 = call float @dx.op.unary.f32(i32 21, float %5622)  ; Exp(value)
  %5624 = fmul fast float %5623, 0x3FF04B2960000000
  %5625 = fsub fast float 0x3FF04B2960000000, %5624
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = fmul fast float %5626, 4.000000e+00
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5628, 1
  %5631 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5632 = fadd fast float %5629, %5570
  %5633 = fadd fast float %5630, %5571
  %5634 = fadd fast float %5631, %5572
  %5635 = fmul fast float %5632, %5596
  %5636 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5597, float %5635)  ; FMad(a,b,c)
  %5637 = call float @dx.op.tertiary.f32(i32 46, float %5634, float %5598, float %5636)  ; FMad(a,b,c)
  %5638 = fadd fast float %5637, %5599
  %5639 = fmul fast float %5632, %5601
  %5640 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5602, float %5639)  ; FMad(a,b,c)
  %5641 = call float @dx.op.tertiary.f32(i32 46, float %5634, float %5603, float %5640)  ; FMad(a,b,c)
  %5642 = fadd fast float %5641, %5604
  %5643 = fmul fast float %5632, %5606
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5607, float %5643)  ; FMad(a,b,c)
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5634, float %5608, float %5644)  ; FMad(a,b,c)
  %5646 = fadd fast float %5645, %5609
  %5647 = fdiv fast float %5638, %5646
  %5648 = fdiv fast float %5642, %5646
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5652 = fmul fast float %5650, %5647
  %5653 = fmul fast float %5651, %5648
  %5654 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5655 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5656 = fadd fast float %5652, %5654
  %5657 = fadd fast float %5653, %5655
  %5658 = fmul fast float %5610, 8.000000e+00
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5656, 2.000000e+00
  %5661 = fmul fast float %5657, 2.000000e+00
  %5662 = fadd fast float %5660, -1.000000e+00
  %5663 = fadd fast float %5661, -1.000000e+00
  %5664 = fmul fast float %5662, %5662
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5663, %5663
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5670 = fmul fast float %4842, %5666
  %5671 = fmul fast float %5670, %5669
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5672, %5659
  %5674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5656, float %5657, float undef, float undef, i32 0, i32 0, i32 undef, float %5627)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = select i1 %183, float 0.000000e+00, float %5676
  %5679 = select i1 %183, float 0.000000e+00, float %5677
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5682 = fmul fast float %5681, %5675
  %5683 = fmul fast float %5678, %5681
  %5684 = fmul fast float %5679, %5681
  %5685 = fsub fast float %5682, %5574
  %5686 = fsub fast float %5683, %5575
  %5687 = fsub fast float %5684, %5576
  %5688 = fmul fast float %5685, %5673
  %5689 = fmul fast float %5686, %5673
  %5690 = fmul fast float %5687, %5673
  %5691 = fadd fast float %5688, %5574
  %5692 = fadd fast float %5689, %5575
  %5693 = fadd fast float %5690, %5576
  br label %5694

; <label>:5694                                    ; preds = %5594, %5566, %5091, %4815
  %5695 = phi float [ %5093, %5091 ], [ %5590, %5566 ], [ %4772, %4815 ], [ %5691, %5594 ]
  %5696 = phi float [ %5094, %5091 ], [ %5591, %5566 ], [ %4773, %4815 ], [ %5692, %5594 ]
  %5697 = phi float [ %5095, %5091 ], [ %5592, %5566 ], [ %4774, %4815 ], [ %5693, %5594 ]
  %5698 = fmul fast float %4821, %4768
  %5699 = fmul fast float %4821, %4769
  %5700 = fmul fast float %4821, %4770
  %5701 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = fcmp fast ogt float %5701, 0x3E7FF19E20000000
  %5703 = fdiv fast float 1.000000e+00, %5701
  %5704 = select i1 %5702, float %5703, float 0.000000e+00
  %5705 = fmul fast float %5704, %4627
  %5706 = fmul fast float %5704, %4628
  %5707 = fmul fast float %5704, %4629
  %5708 = fadd fast float %5705, -1.000000e+00
  %5709 = fadd fast float %5706, -1.000000e+00
  %5710 = fadd fast float %5707, -1.000000e+00
  %5711 = fmul fast float %5708, 5.000000e-01
  %5712 = fmul fast float %5709, 5.000000e-01
  %5713 = fmul fast float %5710, 5.000000e-01
  %5714 = fadd fast float %5711, 1.000000e+00
  %5715 = fadd fast float %5712, 1.000000e+00
  %5716 = fadd fast float %5713, 1.000000e+00
  %5717 = fmul fast float %5695, %4816
  %5718 = fmul fast float %5696, %4817
  %5719 = fmul fast float %5697, %4818
  %5720 = fsub fast float 1.000000e+00, %4652
  %5721 = bitcast float %5720 to i32
  %5722 = sitofp i32 %5721 to float
  %5723 = fmul fast float %5722, 5.000000e+00
  %5724 = fadd fast float %5723, 0xC1EFBF8940000000
  %5725 = fptosi float %5724 to i32
  %5726 = bitcast i32 %5725 to float
  %5727 = fmul fast float %5726, %4023
  %5728 = fmul fast float %4768, %5727
  %5729 = fmul fast float %5728, %4821
  %5730 = fmul fast float %5729, %5714
  %5731 = fmul fast float %4769, %5727
  %5732 = fmul fast float %5731, %4821
  %5733 = fmul fast float %5732, %5715
  %5734 = fmul fast float %4770, %5727
  %5735 = fmul fast float %5734, %4821
  %5736 = fmul fast float %5735, %5716
  %5737 = fmul fast float %5698, %4019
  %5738 = fmul fast float %5699, %4019
  %5739 = fmul fast float %5700, %4019
  %5740 = fadd fast float %5717, %4012
  %5741 = fadd fast float %5740, %5730
  %5742 = fmul fast float %5741, %4019
  %5743 = fadd fast float %5718, %4013
  %5744 = fadd fast float %5743, %5733
  %5745 = fmul fast float %5744, %4019
  %5746 = fadd fast float %5719, %4014
  %5747 = fadd fast float %5746, %5736
  %5748 = fmul fast float %5747, %4019
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5751 = fcmp fast oeq float %5750, 0.000000e+00
  br i1 %5751, label %5971, label %5752

; <label>:5752                                    ; preds = %5694
  %5753 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = select i1 %183, float %5761, float %5757
  %5765 = select i1 %183, float %5763, float %5758
  %5766 = select i1 %183, float %5762, float %5759
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5769 = fcmp fast une float %5768, 0.000000e+00
  br i1 %5769, label %5770, label %5787

; <label>:5770                                    ; preds = %5752
  %5771 = fptoui float %78 to i32
  %5772 = fptoui float %79 to i32
  %5773 = lshr i32 %5771, 4
  %5774 = lshr i32 %5772, 4
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = fptoui float %5776 to i32
  %5778 = add i32 %5777, 15
  %5779 = lshr i32 %5778, 4
  %5780 = mul i32 %5779, %5774
  %5781 = add i32 %5780, %5773
  %5782 = shl i32 %5781, 3
  %5783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5782, i32 undef)  ; BufferLoad(srv,index,wot)
  %5784 = extractvalue %dx.types.ResRet.i32 %5783, 0
  %5785 = and i32 %5784, -268435456
  %5786 = icmp eq i32 %5785, -1342177280
  br i1 %5786, label %5792, label %5787

; <label>:5787                                    ; preds = %5770, %5752
  %5788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  br label %5792

; <label>:5792                                    ; preds = %5787, %5770
  %5793 = phi float [ %5789, %5787 ], [ 0.000000e+00, %5770 ]
  %5794 = phi float [ %5790, %5787 ], [ 0.000000e+00, %5770 ]
  %5795 = phi float [ %5791, %5787 ], [ 0.000000e+00, %5770 ]
  %5796 = call float @dx.op.binary.f32(i32 36, float %5794, float %5795)  ; FMin(a,b)
  %5797 = call float @dx.op.binary.f32(i32 36, float %5793, float %5796)  ; FMin(a,b)
  %5798 = fcmp fast ogt float %5797, 0.000000e+00
  br i1 %5798, label %5799, label %5971, !dx.controlflow.hints !87

; <label>:5799                                    ; preds = %5792
  %5800 = fmul fast float %5793, %5764
  %5801 = fmul fast float %5794, %5765
  %5802 = fmul fast float %5795, %5766
  %5803 = fsub fast float %5753, %4623
  %5804 = fsub fast float %5754, %4622
  %5805 = fsub fast float %5755, %4621
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 25, float %5806)  ; Rsqrt(value)
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %5807, %5804
  %5810 = fmul fast float %5807, %5805
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %4630, float %4631, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4619, float %4618, float %5808, float %5809, float %5810)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5814 = bitcast i32 %4676 to float
  %5815 = fmul fast float %5813, %5813
  %5816 = fmul fast float %5815, %5814
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = fmul fast float %5817, %5813
  %5819 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %5808, float %5809, float %5810)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = fmul fast float %5819, %5819
  %5821 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5822 = fsub fast float 1.000000e+00, %4670
  %5823 = fmul fast float %4652, %4652
  %5824 = fmul fast float %5823, %5822
  %5825 = fadd fast float %5824, %4670
  %5826 = bitcast float %5825 to i32
  %5827 = ashr i32 %5826, 1
  %5828 = add nsw i32 %5827, 532487669
  %5829 = bitcast i32 %5828 to float
  %5830 = fadd fast float %5829, %4652
  %5831 = fmul fast float %4670, %5820
  %5832 = fsub fast float 1.000000e+00, %5820
  %5833 = fadd fast float %5832, %5831
  %5834 = fmul fast float %5821, %5821
  %5835 = fmul fast float %5834, %5822
  %5836 = fadd fast float %5835, %4670
  %5837 = bitcast float %5836 to i32
  %5838 = ashr i32 %5837, 1
  %5839 = add nsw i32 %5838, 532487669
  %5840 = bitcast i32 %5839 to float
  %5841 = fadd fast float %5840, %5821
  %5842 = fmul fast float %5833, %5833
  %5843 = fmul fast float %5842, %5830
  %5844 = fmul fast float %5843, %5841
  %5845 = fdiv fast float 0x3FF0A00000000000, %5844
  %5846 = fmul fast float %5845, %4670
  %5847 = call float @dx.op.unary.f32(i32 6, float %5812)  ; FAbs(value)
  %5848 = fsub fast float 1.000000e+00, %5847
  %5849 = bitcast float %5848 to i32
  %5850 = sitofp i32 %5849 to float
  %5851 = fmul fast float %5850, 5.000000e+00
  %5852 = fadd fast float %5851, 0xC1EFBF8940000000
  %5853 = fptosi float %5852 to i32
  %5854 = bitcast i32 %5853 to float
  %5855 = fsub fast float 1.000000e+00, %4624
  %5856 = fsub fast float 1.000000e+00, %4625
  %5857 = fsub fast float 1.000000e+00, %4650
  %5858 = fmul fast float %5854, %5855
  %5859 = fmul fast float %5854, %5856
  %5860 = fmul fast float %5854, %5857
  %5861 = fadd fast float %5858, %4624
  %5862 = fadd fast float %5859, %4625
  %5863 = fadd fast float %5860, %4650
  br i1 %4788, label %5864, label %5887

; <label>:5864                                    ; preds = %5799
  %5865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4022, float %5847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5866 = extractvalue %dx.types.ResRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.ResRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.ResRet.f32 %5865, 2
  %5869 = fadd fast float %5866, -5.000000e-01
  %5870 = fadd fast float %5867, -5.000000e-01
  %5871 = fadd fast float %5868, -5.000000e-01
  %5872 = fmul fast float %4624, 4.000000e+00
  %5873 = fmul fast float %5872, %5855
  %5874 = fmul fast float %5873, %5869
  %5875 = fmul fast float %4625, 4.000000e+00
  %5876 = fmul fast float %5875, %5856
  %5877 = fmul fast float %5876, %5870
  %5878 = fmul fast float %4650, 4.000000e+00
  %5879 = fmul fast float %5878, %5857
  %5880 = fmul fast float %5879, %5871
  %5881 = fadd fast float %5874, %5861
  %5882 = fadd fast float %5877, %5862
  %5883 = fadd fast float %5880, %5863
  %5884 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5885 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5886 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  br label %5887

; <label>:5887                                    ; preds = %5864, %5799
  %5888 = phi float [ %5884, %5864 ], [ %5861, %5799 ]
  %5889 = phi float [ %5885, %5864 ], [ %5862, %5799 ]
  %5890 = phi float [ %5886, %5864 ], [ %5863, %5799 ]
  %5891 = fmul fast float %5811, 9.843750e-01
  %5892 = fadd fast float %5891, 7.812500e-03
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5892, float %4778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 3
  %5896 = fmul fast float %5894, %4624
  %5897 = fmul fast float %5894, %4625
  %5898 = fmul fast float %5894, %4650
  %5899 = fadd fast float %5896, %5895
  %5900 = fadd fast float %5897, %5895
  %5901 = fadd fast float %5898, %5895
  br i1 %4788, label %5902, label %5925

; <label>:5902                                    ; preds = %5887
  %5903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4022, float %5811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.ResRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.ResRet.f32 %5903, 2
  %5907 = fadd fast float %5904, -5.000000e-01
  %5908 = fadd fast float %5905, -5.000000e-01
  %5909 = fadd fast float %5906, -5.000000e-01
  %5910 = fmul fast float %4624, 4.000000e+00
  %5911 = fmul fast float %5910, %5855
  %5912 = fmul fast float %5911, %5907
  %5913 = fmul fast float %4625, 4.000000e+00
  %5914 = fmul fast float %5913, %5856
  %5915 = fmul fast float %5914, %5908
  %5916 = fmul fast float %4650, 4.000000e+00
  %5917 = fmul fast float %5916, %5857
  %5918 = fmul fast float %5917, %5909
  %5919 = fadd fast float %5912, %5899
  %5920 = fadd fast float %5915, %5900
  %5921 = fadd fast float %5918, %5901
  %5922 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  %5923 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5924 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  br label %5925

; <label>:5925                                    ; preds = %5902, %5887
  %5926 = phi float [ %5922, %5902 ], [ %5899, %5887 ]
  %5927 = phi float [ %5923, %5902 ], [ %5900, %5887 ]
  %5928 = phi float [ %5924, %5902 ], [ %5901, %5887 ]
  %5929 = call float @dx.op.binary.f32(i32 35, float %5927, float %5928)  ; FMax(a,b)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5926, float %5929)  ; FMax(a,b)
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = fmul fast float %5888, %5846
  %5933 = fmul fast float %5889, %5846
  %5934 = fmul fast float %5890, %5846
  %5935 = fsub fast float 1.000000e+00, %5812
  %5936 = bitcast float %5935 to i32
  %5937 = sitofp i32 %5936 to float
  %5938 = fmul fast float %5937, 5.000000e+00
  %5939 = fadd fast float %5938, 0xC1EFBF8940000000
  %5940 = fptosi float %5939 to i32
  %5941 = bitcast i32 %5940 to float
  %5942 = fmul fast float %5941, %4023
  %5943 = fmul fast float %5931, %5942
  %5944 = fmul fast float %5943, %5714
  %5945 = fmul fast float %5943, %5715
  %5946 = fmul fast float %5943, %5716
  %5947 = fadd fast float %5944, %5932
  %5948 = fadd fast float %5945, %5933
  %5949 = fadd fast float %5946, %5934
  %5950 = fmul fast float %5818, %5800
  %5951 = fmul fast float %5950, %5931
  %5952 = fmul fast float %5818, %5801
  %5953 = fmul fast float %5952, %5931
  %5954 = fmul fast float %5818, %5802
  %5955 = fmul fast float %5954, %5931
  %5956 = fmul fast float %5950, %5947
  %5957 = fmul fast float %5952, %5948
  %5958 = fmul fast float %5954, %5949
  %5959 = fadd fast float %5951, %5698
  %5960 = fmul fast float %5959, %4019
  %5961 = fadd fast float %5953, %5699
  %5962 = fmul fast float %5961, %4019
  %5963 = fadd fast float %5955, %5700
  %5964 = fmul fast float %5963, %4019
  %5965 = fadd fast float %5956, %5741
  %5966 = fmul fast float %5965, %4019
  %5967 = fadd fast float %5957, %5744
  %5968 = fmul fast float %5967, %4019
  %5969 = fadd fast float %5958, %5747
  %5970 = fmul fast float %5969, %4019
  br label %5971

; <label>:5971                                    ; preds = %5925, %5792, %5694
  %5972 = phi float [ %5742, %5694 ], [ %5742, %5792 ], [ %5966, %5925 ]
  %5973 = phi float [ %5745, %5694 ], [ %5745, %5792 ], [ %5968, %5925 ]
  %5974 = phi float [ %5748, %5694 ], [ %5748, %5792 ], [ %5970, %5925 ]
  %5975 = phi float [ %5737, %5694 ], [ %5737, %5792 ], [ %5960, %5925 ]
  %5976 = phi float [ %5738, %5694 ], [ %5738, %5792 ], [ %5962, %5925 ]
  %5977 = phi float [ %5739, %5694 ], [ %5739, %5792 ], [ %5964, %5925 ]
  %5978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.i32 %5978, 0
  %5980 = icmp eq i32 %5979, 0
  br i1 %5980, label %6412, label %5981

; <label>:5981                                    ; preds = %5971
  %5982 = fptoui float %78 to i32
  %5983 = fptoui float %79 to i32
  %5984 = lshr i32 %5982, 4
  %5985 = lshr i32 %5983, 4
  %5986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.i32 %5986, 0
  %5988 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5985, i32 %5987, i32 %5984)  ; UMad(a,b,c)
  %5989 = add nsw i32 %5979, -1
  %5990 = call i32 @dx.op.binary.i32(i32 37, i32 %5989, i32 0)  ; IMax(a,b)
  %5991 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5992 = fptoui float %5991 to i32
  %5993 = lshr i32 %5992, 5
  %5994 = call i32 @dx.op.binary.i32(i32 40, i32 %5993, i32 8191)  ; UMin(a,b)
  %5995 = shl i32 %5994, 2
  %5996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5995, i32 undef)  ; BufferLoad(srv,index,wot)
  %5997 = extractvalue %dx.types.ResRet.i32 %5996, 0
  %5998 = lshr i32 %5997, 16
  %5999 = and i32 %5997, 65535
  %6000 = lshr i32 %5997, 21
  %6001 = lshr i32 %5999, 5
  %6002 = call i32 @dx.op.binary.i32(i32 40, i32 %6001, i32 %5990)  ; UMin(a,b)
  %6003 = icmp ugt i32 %6000, %6002
  br i1 %6003, label %6412, label %6004

; <label>:6004                                    ; preds = %5981
  br label %6005

; <label>:6005                                    ; preds = %6402, %6004
  %6006 = phi i32 [ %6409, %6402 ], [ %6000, %6004 ]
  %6007 = phi float [ %6403, %6402 ], [ %5972, %6004 ]
  %6008 = phi float [ %6404, %6402 ], [ %5973, %6004 ]
  %6009 = phi float [ %6405, %6402 ], [ %5974, %6004 ]
  %6010 = phi float [ %6406, %6402 ], [ %5975, %6004 ]
  %6011 = phi float [ %6407, %6402 ], [ %5976, %6004 ]
  %6012 = phi float [ %6408, %6402 ], [ %5977, %6004 ]
  %6013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.i32 %6013, 0
  %6015 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5988, i32 %6014, i32 %6006)  ; UMad(a,b,c)
  %6016 = shl i32 %6015, 2
  %6017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6016, i32 undef)  ; BufferLoad(srv,index,wot)
  %6018 = extractvalue %dx.types.ResRet.i32 %6017, 0
  %6019 = shl i32 %6006, 5
  %6020 = sub nsw i32 %5998, %6019
  %6021 = call i32 @dx.op.binary.i32(i32 37, i32 %6020, i32 0)  ; IMax(a,b)
  %6022 = call i32 @dx.op.binary.i32(i32 38, i32 %6021, i32 31)  ; IMin(a,b)
  %6023 = sub nsw i32 1, %5998
  %6024 = add nsw i32 %6023, %5999
  %6025 = call i32 @dx.op.binary.i32(i32 37, i32 %6024, i32 0)  ; IMax(a,b)
  %6026 = call i32 @dx.op.binary.i32(i32 38, i32 %6025, i32 32)  ; IMin(a,b)
  %6027 = and i32 %6026, 31
  %6028 = shl i32 -1, %6027
  %6029 = xor i32 %6028, -1
  %6030 = and i32 %6022, 31
  %6031 = shl i32 %6029, %6030
  %6032 = icmp eq i32 %6026, 32
  %6033 = select i1 %6032, i32 -1, i32 %6031
  %6034 = and i32 %6033, %6018
  %6035 = icmp eq i32 %6034, 0
  br i1 %6035, label %6402, label %6036

; <label>:6036                                    ; preds = %6005
  br label %6037

; <label>:6037                                    ; preds = %6117, %6036
  %6038 = phi i32 [ %6049, %6117 ], [ %6034, %6036 ]
  %6039 = phi float [ %6118, %6117 ], [ %6007, %6036 ]
  %6040 = phi float [ %6119, %6117 ], [ %6008, %6036 ]
  %6041 = phi float [ %6120, %6117 ], [ %6009, %6036 ]
  %6042 = phi float [ %6121, %6117 ], [ %6010, %6036 ]
  %6043 = phi float [ %6122, %6117 ], [ %6011, %6036 ]
  %6044 = phi float [ %6123, %6117 ], [ %6012, %6036 ]
  %6045 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6038)  ; FirstbitLo(value)
  %6046 = add i32 %6045, %6019
  %6047 = and i32 %6045, 31
  %6048 = shl i32 1, %6047
  %6049 = xor i32 %6048, %6038
  %6050 = mul i32 %6046, 112
  %6051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6050, i32 undef)  ; BufferLoad(srv,index,wot)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = or i32 %6050, 12
  %6056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = add i32 %6050, 44
  %6059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6058, i32 undef)  ; BufferLoad(srv,index,wot)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = add i32 %6050, 48
  %6062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6061, i32 undef)  ; BufferLoad(srv,index,wot)
  %6063 = extractvalue %dx.types.ResRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.ResRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.ResRet.f32 %6062, 2
  %6066 = add i32 %6050, 80
  %6067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6066, i32 undef)  ; BufferLoad(srv,index,wot)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 1
  %6069 = extractvalue %dx.types.ResRet.f32 %6067, 2
  %6070 = call float @dx.op.dot3.f32(i32 55, float %6052, float %6053, float %6054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = select i1 %183, float %6068, float %6052
  %6072 = select i1 %183, float %6070, float %6053
  %6073 = select i1 %183, float %6069, float %6054
  %6074 = fsub fast float %6063, %141
  %6075 = fsub fast float %6064, %142
  %6076 = fsub fast float %6065, %143
  %6077 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = call float @dx.op.unary.f32(i32 24, float %6077)  ; Sqrt(value)
  %6079 = fdiv fast float 1.000000e+00, %6078
  %6080 = fmul fast float %6079, %6074
  %6081 = fmul fast float %6079, %6075
  %6082 = fmul fast float %6079, %6076
  %6083 = fadd fast float %6078, %6057
  %6084 = fdiv fast float 1.000000e+00, %6083
  %6085 = fmul float %6060, %6084
  %6086 = fmul float %6085, %6085
  %6087 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6088 = and i32 %6048, %6034
  %6089 = icmp eq i32 %6088, 0
  br i1 %6089, label %6112, label %6090, !dx.controlflow.hints !88

; <label>:6090                                    ; preds = %6037
  %6091 = lshr i32 %5982, 5
  %6092 = lshr i32 %5983, 5
  %6093 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6091, i32 %6092, i32 %6046, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6094 = extractvalue %dx.types.ResRet.i32 %6093, 0
  %6095 = and i32 %6094, 3
  %6096 = icmp eq i32 %6095, 0
  %6097 = select i1 %6096, float 1.000000e+00, float 0.000000e+00
  %6098 = icmp eq i32 %6095, 3
  br i1 %6098, label %6099, label %6112

; <label>:6099                                    ; preds = %6090
  %6100 = lshr i32 %6094, 10
  %6101 = and i32 %6100, 8160
  %6102 = and i32 %5983, 31
  %6103 = or i32 %6101, %6102
  %6104 = lshr i32 %6094, 1
  %6105 = and i32 %6104, 16352
  %6106 = and i32 %5982, 31
  %6107 = or i32 %6105, %6106
  %6108 = lshr i32 %6094, 23
  %6109 = and i32 %6108, 255
  %6110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6107, i32 %6103, i32 %6109, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6111 = extractvalue %dx.types.ResRet.f32 %6110, 0
  br label %6112

; <label>:6112                                    ; preds = %6099, %6090, %6037
  %6113 = phi float [ %6111, %6099 ], [ %6097, %6090 ], [ 0.000000e+00, %6037 ]
  %6114 = call float @dx.op.binary.f32(i32 36, float %6113, float %6113)  ; FMin(a,b)
  %6115 = call float @dx.op.binary.f32(i32 36, float %6113, float %6114)  ; FMin(a,b)
  %6116 = fcmp fast ogt float %6115, 0.000000e+00
  br i1 %6116, label %6125, label %6117, !dx.controlflow.hints !89

; <label>:6117                                    ; preds = %6358, %6112
  %6118 = phi float [ %6039, %6112 ], [ %6398, %6358 ]
  %6119 = phi float [ %6040, %6112 ], [ %6399, %6358 ]
  %6120 = phi float [ %6041, %6112 ], [ %6400, %6358 ]
  %6121 = phi float [ %6042, %6112 ], [ %6392, %6358 ]
  %6122 = phi float [ %6043, %6112 ], [ %6393, %6358 ]
  %6123 = phi float [ %6044, %6112 ], [ %6394, %6358 ]
  %6124 = icmp eq i32 %6038, %6048
  br i1 %6124, label %6401, label %6037

; <label>:6125                                    ; preds = %6112
  %6126 = fmul fast float %6113, %6071
  %6127 = fmul fast float %6113, %6072
  %6128 = fmul fast float %6113, %6073
  %6129 = fsub fast float %6065, %4423
  %6130 = fcmp fast ogt float %6129, 0.000000e+00
  %6131 = fsub fast float %143, %4423
  %6132 = fcmp fast ogt float %6131, 0.000000e+00
  %6133 = xor i1 %6132, %6130
  %6134 = fsub fast float %4423, %6065
  %6135 = fmul fast float %6134, 2.000000e+00
  %6136 = fadd fast float %6135, %6065
  %6137 = select i1 %6133, float %6065, float %6136
  %6138 = fsub fast float %6137, %143
  %6139 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6138, float %6074, float %6075, float %6138)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.unary.f32(i32 25, float %6139)  ; Rsqrt(value)
  %6141 = fmul fast float %6140, %6074
  %6142 = fmul fast float %6140, %6075
  %6143 = fmul fast float %6140, %6138
  %6144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4431)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6141, float %6142, float %6143)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = fdiv fast float 1.000000e+00, %6145
  %6147 = fmul fast float %6146, %6144
  %6148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6131, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6149 = fcmp fast ogt float %6148, 0.000000e+00
  %6150 = fcmp fast olt float %6148, 0.000000e+00
  %6151 = zext i1 %6149 to i32
  %6152 = zext i1 %6150 to i32
  %6153 = sub nsw i32 %6151, %6152
  %6154 = sitofp i32 %6153 to float
  %6155 = fsub fast float %6137, %4423
  %6156 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6155, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = fcmp fast ogt float %6156, 0.000000e+00
  %6158 = fcmp fast olt float %6156, 0.000000e+00
  %6159 = zext i1 %6157 to i32
  %6160 = zext i1 %6158 to i32
  %6161 = sub nsw i32 %6159, %6160
  %6162 = sitofp i32 %6161 to float
  %6163 = fcmp fast une float %6154, %6162
  br i1 %6163, label %6164, label %6174

; <label>:6164                                    ; preds = %6125
  %6165 = fmul fast float %6147, %6143
  %6166 = fmul fast float %6147, %6142
  %6167 = fmul fast float %6147, %6141
  %6168 = fmul fast float %6167, %6167
  %6169 = fmul fast float %6166, %6166
  %6170 = fadd fast float %6168, %6169
  %6171 = fmul fast float %6165, %6165
  %6172 = fadd fast float %6170, %6171
  %6173 = call float @dx.op.unary.f32(i32 24, float %6172)  ; Sqrt(value)
  br label %6186

; <label>:6174                                    ; preds = %6125
  %6175 = icmp slt i32 %6153, 0
  br i1 %6175, label %6176, label %6186

; <label>:6176                                    ; preds = %6174
  %6177 = fsub fast float %141, %6063
  %6178 = fsub fast float %142, %6064
  %6179 = fsub fast float %143, %6137
  %6180 = fmul fast float %6177, %6177
  %6181 = fmul fast float %6178, %6178
  %6182 = fadd fast float %6180, %6181
  %6183 = fmul fast float %6179, %6179
  %6184 = fadd fast float %6182, %6183
  %6185 = call float @dx.op.unary.f32(i32 24, float %6184)  ; Sqrt(value)
  br label %6186

; <label>:6186                                    ; preds = %6176, %6174, %6164
  %6187 = phi float [ %6173, %6164 ], [ %6185, %6176 ], [ 0.000000e+00, %6174 ]
  %6188 = and i1 %6132, %6130
  %6189 = fsub fast float -0.000000e+00, %6187
  %6190 = select i1 %6188, float -0.000000e+00, float %6189
  %6191 = fmul fast float %4424, 0x3FF7154760000000
  %6192 = fmul fast float %6191, %6190
  %6193 = fmul fast float %4425, 0x3FF7154760000000
  %6194 = fmul fast float %6193, %6190
  %6195 = fmul fast float %4426, 0x3FF7154760000000
  %6196 = fmul fast float %6195, %6190
  %6197 = call float @dx.op.unary.f32(i32 21, float %6192)  ; Exp(value)
  %6198 = call float @dx.op.unary.f32(i32 21, float %6194)  ; Exp(value)
  %6199 = call float @dx.op.unary.f32(i32 21, float %6196)  ; Exp(value)
  %6200 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6201 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6202 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6203 = fmul fast float %6126, %6200
  %6204 = fmul fast float %6127, %6201
  %6205 = fmul fast float %6128, %6202
  %6206 = fsub fast float %6080, %4623
  %6207 = fsub fast float %6081, %4622
  %6208 = fsub fast float %6082, %4621
  %6209 = call float @dx.op.dot3.f32(i32 55, float %6206, float %6207, float %6208, float %6206, float %6207, float %6208)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = call float @dx.op.unary.f32(i32 25, float %6209)  ; Rsqrt(value)
  %6211 = fmul fast float %6210, %6206
  %6212 = fmul fast float %6210, %6207
  %6213 = fmul fast float %6210, %6208
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6080, float %6081, float %6082, float %4630, float %4631, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4619, float %4618, float %6211, float %6212, float %6213)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6217 = fmul fast float %6216, %6087
  %6218 = bitcast i32 %4676 to float
  %6219 = fmul fast float %6216, %6216
  %6220 = fmul fast float %6219, %6218
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = fmul fast float %6217, %6221
  %6223 = bitcast float %6077 to i32
  %6224 = ashr i32 %6223, 1
  %6225 = sub nsw i32 1597463007, %6224
  %6226 = bitcast i32 %6225 to float
  %6227 = fmul fast float %6226, %6074
  %6228 = fmul fast float %6226, %6075
  %6229 = fmul fast float %6226, %6076
  %6230 = fsub fast float %6227, %4623
  %6231 = fsub fast float %6228, %4622
  %6232 = fsub fast float %6229, %4621
  %6233 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6232, float %6230, float %6231, float %6232)  ; Dot3(ax,ay,az,bx,by,bz)
  %6234 = call float @dx.op.unary.f32(i32 25, float %6233)  ; Rsqrt(value)
  %6235 = fmul fast float %6230, %6234
  %6236 = fmul fast float %6231, %6234
  %6237 = fmul fast float %6232, %6234
  %6238 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %6235, float %6236, float %6237)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = fmul fast float %6238, %6238
  %6240 = call float @dx.op.unary.f32(i32 6, float %6214)  ; FAbs(value)
  %6241 = fsub fast float 1.000000e+00, %4670
  %6242 = fmul fast float %4652, %4652
  %6243 = fmul fast float %6242, %6241
  %6244 = fadd fast float %6243, %4670
  %6245 = bitcast float %6244 to i32
  %6246 = ashr i32 %6245, 1
  %6247 = add nsw i32 %6246, 532487669
  %6248 = bitcast i32 %6247 to float
  %6249 = fadd fast float %6248, %4652
  %6250 = fmul fast float %4670, %6239
  %6251 = fsub fast float 1.000000e+00, %6239
  %6252 = fadd fast float %6251, %6250
  %6253 = fmul fast float %6240, %6240
  %6254 = fmul fast float %6253, %6241
  %6255 = fadd fast float %6254, %4670
  %6256 = bitcast float %6255 to i32
  %6257 = ashr i32 %6256, 1
  %6258 = add nsw i32 %6257, 532487669
  %6259 = bitcast i32 %6258 to float
  %6260 = fadd fast float %6259, %6240
  %6261 = fmul fast float %6252, %6252
  %6262 = fmul fast float %6261, %6249
  %6263 = fmul fast float %6262, %6260
  %6264 = fdiv fast float 1.000000e+00, %6263
  %6265 = bitcast float %4670 to i32
  %6266 = sitofp i32 %6265 to float
  %6267 = fmul fast float %6266, 0x3FE7F73180000000
  %6268 = fadd fast float %6267, 0x41AFE27C40000000
  %6269 = fptosi float %6268 to i32
  %6270 = bitcast i32 %6269 to float
  %6271 = fmul fast float %6060, 0x3FD80E9D60000000
  %6272 = fmul fast float %6271, %6226
  %6273 = fadd fast float %6270, %6272
  %6274 = bitcast float %6273 to i32
  %6275 = sub nsw i32 2129859010, %6274
  %6276 = bitcast i32 %6275 to float
  %6277 = fmul fast float %4670, %6264
  %6278 = fmul fast float %6277, %6270
  %6279 = fmul fast float %6278, %6276
  %6280 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6281 = fsub fast float 1.000000e+00, %6280
  %6282 = bitcast float %6281 to i32
  %6283 = sitofp i32 %6282 to float
  %6284 = fmul fast float %6283, 5.000000e+00
  %6285 = fadd fast float %6284, 0xC1EFBF8940000000
  %6286 = fptosi float %6285 to i32
  %6287 = bitcast i32 %6286 to float
  %6288 = fsub fast float 1.000000e+00, %4624
  %6289 = fsub fast float 1.000000e+00, %4625
  %6290 = fsub fast float 1.000000e+00, %4650
  %6291 = fmul fast float %6287, %6288
  %6292 = fmul fast float %6287, %6289
  %6293 = fmul fast float %6287, %6290
  %6294 = fadd fast float %6291, %4624
  %6295 = fadd fast float %6292, %4625
  %6296 = fadd fast float %6293, %4650
  br i1 %4788, label %6297, label %6320

; <label>:6297                                    ; preds = %6186
  %6298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4022, float %6280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = fadd fast float %6299, -5.000000e-01
  %6303 = fadd fast float %6300, -5.000000e-01
  %6304 = fadd fast float %6301, -5.000000e-01
  %6305 = fmul fast float %4624, 4.000000e+00
  %6306 = fmul fast float %6305, %6288
  %6307 = fmul fast float %6306, %6302
  %6308 = fmul fast float %4625, 4.000000e+00
  %6309 = fmul fast float %6308, %6289
  %6310 = fmul fast float %6309, %6303
  %6311 = fmul fast float %4650, 4.000000e+00
  %6312 = fmul fast float %6311, %6290
  %6313 = fmul fast float %6312, %6304
  %6314 = fadd fast float %6307, %6294
  %6315 = fadd fast float %6310, %6295
  %6316 = fadd fast float %6313, %6296
  %6317 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6318 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6319 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  br label %6320

; <label>:6320                                    ; preds = %6297, %6186
  %6321 = phi float [ %6317, %6297 ], [ %6294, %6186 ]
  %6322 = phi float [ %6318, %6297 ], [ %6295, %6186 ]
  %6323 = phi float [ %6319, %6297 ], [ %6296, %6186 ]
  %6324 = fmul fast float %6214, 9.843750e-01
  %6325 = fadd fast float %6324, 7.812500e-03
  %6326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6325, float %4778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 2
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 3
  %6329 = fmul fast float %6327, %4624
  %6330 = fmul fast float %6327, %4625
  %6331 = fmul fast float %6327, %4650
  %6332 = fadd fast float %6329, %6328
  %6333 = fadd fast float %6330, %6328
  %6334 = fadd fast float %6331, %6328
  br i1 %4788, label %6335, label %6358

; <label>:6335                                    ; preds = %6320
  %6336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4022, float %6214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6337 = extractvalue %dx.types.ResRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.ResRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.ResRet.f32 %6336, 2
  %6340 = fadd fast float %6337, -5.000000e-01
  %6341 = fadd fast float %6338, -5.000000e-01
  %6342 = fadd fast float %6339, -5.000000e-01
  %6343 = fmul fast float %4624, 4.000000e+00
  %6344 = fmul fast float %6343, %6288
  %6345 = fmul fast float %6344, %6340
  %6346 = fmul fast float %4625, 4.000000e+00
  %6347 = fmul fast float %6346, %6289
  %6348 = fmul fast float %6347, %6341
  %6349 = fmul fast float %4650, 4.000000e+00
  %6350 = fmul fast float %6349, %6290
  %6351 = fmul fast float %6350, %6342
  %6352 = fadd fast float %6345, %6332
  %6353 = fadd fast float %6348, %6333
  %6354 = fadd fast float %6351, %6334
  %6355 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6356 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6357 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  br label %6358

; <label>:6358                                    ; preds = %6335, %6320
  %6359 = phi float [ %6355, %6335 ], [ %6332, %6320 ]
  %6360 = phi float [ %6356, %6335 ], [ %6333, %6320 ]
  %6361 = phi float [ %6357, %6335 ], [ %6334, %6320 ]
  %6362 = call float @dx.op.binary.f32(i32 35, float %6360, float %6361)  ; FMax(a,b)
  %6363 = call float @dx.op.binary.f32(i32 35, float %6359, float %6362)  ; FMax(a,b)
  %6364 = fsub fast float 1.000000e+00, %6363
  %6365 = fmul fast float %6321, %6279
  %6366 = fmul fast float %6322, %6279
  %6367 = fmul fast float %6323, %6279
  %6368 = fsub fast float 1.000000e+00, %6215
  %6369 = bitcast float %6368 to i32
  %6370 = sitofp i32 %6369 to float
  %6371 = fmul fast float %6370, 5.000000e+00
  %6372 = fadd fast float %6371, 0xC1EFBF8940000000
  %6373 = fptosi float %6372 to i32
  %6374 = bitcast i32 %6373 to float
  %6375 = fmul fast float %6374, %4023
  %6376 = fmul fast float %6364, %6375
  %6377 = fmul fast float %6376, %5714
  %6378 = fmul fast float %6376, %5715
  %6379 = fmul fast float %6376, %5716
  %6380 = fadd fast float %6377, %6365
  %6381 = fadd fast float %6378, %6366
  %6382 = fadd fast float %6379, %6367
  %6383 = fmul fast float %6203, %4019
  %6384 = fmul fast float %6383, %6222
  %6385 = fmul fast float %6384, %6364
  %6386 = fmul fast float %6204, %4019
  %6387 = fmul fast float %6386, %6222
  %6388 = fmul fast float %6387, %6364
  %6389 = fmul fast float %6205, %4019
  %6390 = fmul fast float %6389, %6222
  %6391 = fmul fast float %6390, %6364
  %6392 = fadd fast float %6385, %6042
  %6393 = fadd fast float %6388, %6043
  %6394 = fadd fast float %6391, %6044
  %6395 = fmul fast float %6384, %6380
  %6396 = fmul fast float %6387, %6381
  %6397 = fmul fast float %6390, %6382
  %6398 = fadd fast float %6395, %6039
  %6399 = fadd fast float %6396, %6040
  %6400 = fadd fast float %6397, %6041
  br label %6117

; <label>:6401                                    ; preds = %6117
  br label %6402

; <label>:6402                                    ; preds = %6401, %6005
  %6403 = phi float [ %6007, %6005 ], [ %6118, %6401 ]
  %6404 = phi float [ %6008, %6005 ], [ %6119, %6401 ]
  %6405 = phi float [ %6009, %6005 ], [ %6120, %6401 ]
  %6406 = phi float [ %6010, %6005 ], [ %6121, %6401 ]
  %6407 = phi float [ %6011, %6005 ], [ %6122, %6401 ]
  %6408 = phi float [ %6012, %6005 ], [ %6123, %6401 ]
  %6409 = add i32 %6006, 1
  %6410 = icmp ugt i32 %6409, %6002
  br i1 %6410, label %6411, label %6005

; <label>:6411                                    ; preds = %6402
  br label %6412

; <label>:6412                                    ; preds = %6411, %5981, %5971
  %6413 = phi float [ %5972, %5971 ], [ %5972, %5981 ], [ %6403, %6411 ]
  %6414 = phi float [ %5973, %5971 ], [ %5973, %5981 ], [ %6404, %6411 ]
  %6415 = phi float [ %5974, %5971 ], [ %5974, %5981 ], [ %6405, %6411 ]
  %6416 = phi float [ %5975, %5971 ], [ %5975, %5981 ], [ %6406, %6411 ]
  %6417 = phi float [ %5976, %5971 ], [ %5976, %5981 ], [ %6407, %6411 ]
  %6418 = phi float [ %5977, %5971 ], [ %5977, %5981 ], [ %6408, %6411 ]
  %6419 = call float @dx.op.unary.f32(i32 24, float %4627)  ; Sqrt(value)
  %6420 = call float @dx.op.unary.f32(i32 24, float %4628)  ; Sqrt(value)
  %6421 = call float @dx.op.unary.f32(i32 24, float %4629)  ; Sqrt(value)
  %6422 = fmul fast float %6419, %6416
  %6423 = fmul fast float %6420, %6417
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  br i1 %183, label %6426, label %6449

; <label>:6426                                    ; preds = %6412
  %6427 = fadd fast float %6418, %4025
  %6428 = fmul fast float %6427, %4026
  %6429 = fsub fast float 1.000000e+00, %4026
  %6430 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6433 = fmul fast float %6432, %6430
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = fmul fast float %6435, %5720
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = fmul fast float %6437, %4648
  %6439 = fadd fast float %6423, %6422
  %6440 = fmul fast float %6425, %6439
  %6441 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6442 = fadd fast float %6433, %6428
  %6443 = fsub fast float %6442, %6436
  %6444 = fadd fast float %6443, %6438
  %6445 = fsub fast float %6444, %6441
  %6446 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6447 = fmul fast float %6445, %6446
  %6448 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  br label %6465

; <label>:6449                                    ; preds = %6412
  %6450 = fmul fast float %6421, %6418
  %6451 = fmul fast float %6425, %6422
  %6452 = fmul fast float %6425, %6423
  %6453 = fmul fast float %6450, %6425
  %6454 = add i32 %43, 356
  %6455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6454, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.i32 %6455, 0
  %6457 = and i32 %6456, 32
  %6458 = icmp eq i32 %6457, 0
  br i1 %6458, label %6465, label %6459

; <label>:6459                                    ; preds = %6449
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = fmul fast float %6461, 0x3FE99999A0000000
  %6463 = fadd fast float %6461, %6451
  %6464 = fadd fast float %6462, %6453
  br label %6465

; <label>:6465                                    ; preds = %6459, %6449, %6426
  %6466 = phi float [ %6440, %6426 ], [ %6463, %6459 ], [ %6451, %6449 ]
  %6467 = phi float [ %6448, %6426 ], [ %6452, %6459 ], [ %6452, %6449 ]
  %6468 = phi float [ 1.000000e+00, %6426 ], [ %6464, %6459 ], [ %6453, %6449 ]
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 0
  %6471 = fmul fast float %6470, %6414
  %6472 = fmul fast float %6470, %6415
  %6473 = fadd fast float %6414, %6413
  %6474 = select i1 %183, float %6473, float %6413
  %6475 = fmul float %6474, %6470
  %6476 = select i1 %183, float 0.000000e+00, float %6471
  %6477 = select i1 %183, float 0.000000e+00, float %6472
  %6478 = fmul fast float %6466, %6419
  %6479 = fmul fast float %6467, %6420
  %6480 = fmul fast float %6468, %6421
  %6481 = fadd fast float %6475, %6478
  %6482 = fadd fast float %6476, %6479
  %6483 = fadd fast float %6477, %6480
  %6484 = select i1 %183, float %6467, float %6482
  %6485 = select i1 %183, float %6468, float %6483
  %6486 = call float @dx.op.binary.f32(i32 36, float %6481, float 3.225500e+04)  ; FMin(a,b)
  %6487 = call float @dx.op.binary.f32(i32 36, float %6484, float 3.225500e+04)  ; FMin(a,b)
  %6488 = call float @dx.op.binary.f32(i32 36, float %6485, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6486)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6487)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6488)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

