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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 37f39703256885a34c8227aa63402c27
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %78
  %86 = fmul fast float %84, %79
  %87 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %88 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = bitcast float %88 to i32
  %90 = ashr i32 %89, 1
  %91 = sub nsw i32 1597250115, %90
  %92 = bitcast i32 %91 to float
  %93 = fmul fast float %70, %87
  %94 = fmul fast float %93, %92
  %95 = fmul fast float %71, %87
  %96 = fmul fast float %95, %92
  %97 = fmul fast float %72, %87
  %98 = fmul fast float %97, %92
  %99 = fmul fast float %71, %68
  %100 = fmul fast float %72, %67
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %72, %66
  %103 = fmul fast float %70, %68
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %70, %67
  %106 = fmul fast float %71, %66
  %107 = fsub fast float %105, %106
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %85, 2.000000e+00
  %112 = fmul fast float %111, %109
  %113 = fmul fast float %86, 2.000000e+00
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
  %141 = fmul fast float %136, %80
  %142 = fmul fast float %138, %80
  %143 = fmul fast float %140, %80
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %145, %85
  %148 = fmul fast float %146, %86
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
  %170 = fmul fast float %169, %86
  %171 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %172 = fmul fast float %171, %85
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
  %187 = frem fast float %85, 2.560000e+02
  %188 = frem fast float %86, 2.560000e+02
  %189 = fptoui float %187 to i32
  %190 = fptoui float %188 to i32
  %191 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = fadd fast float %192, %186
  %195 = fadd fast float %193, %186
  %196 = call float @dx.op.unary.f32(i32 22, float %194)  ; Frc(value)
  %197 = call float @dx.op.unary.f32(i32 22, float %195)  ; Frc(value)
  %198 = add i32 %45, 156
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
  %210 = add i32 %45, 216
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
  %224 = add i32 %45, 36
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 65535
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %226, 16
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = add i32 %45, 288
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = fmul fast float %235, 0x3F50624DE0000000
  %239 = fmul fast float %237, 0x3F50624DE0000000
  %240 = add i32 %45, 172
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
  %252 = add i32 %45, 232
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
  %266 = add i32 %45, 52
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %45, 304
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %45, 188
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
  %294 = add i32 %45, 248
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
  %308 = add i32 %45, 68
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %45, 320
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %45, 204
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
  %336 = add i32 %45, 264
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
  %350 = add i32 %45, 84
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %45, 336
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = fmul fast float %361, 0x3F50624DE0000000
  %365 = fmul fast float %363, 0x3F50624DE0000000
  %366 = add i32 %45, 348
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
  %380 = add i32 %45, 472
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, 0
  %384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %384, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = fmul fast float %386, %75
  %390 = fmul fast float %387, %76
  %391 = fmul fast float %388, %77
  br label %392

; <label>:392                                     ; preds = %379, %182
  %393 = phi float [ %77, %182 ], [ %391, %379 ]
  %394 = phi float [ %76, %182 ], [ %390, %379 ]
  %395 = phi float [ %75, %182 ], [ %389, %379 ]
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %419, label %400

; <label>:400                                     ; preds = %392
  %401 = add i32 %45, 44
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 1
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %395, float 1.000000e+00
  %407 = add i32 %45, 60
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 1
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %394, float 1.000000e+00
  %413 = add i32 %45, 76
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
  %426 = add i32 %45, 24
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = add i32 %45, 28
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = or i32 %431, %428
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %892, label %434

; <label>:434                                     ; preds = %419
  %435 = and i32 %428, 262144
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %48, float 1.000000e+00
  %438 = select i1 %436, float %49, float 0.000000e+00
  %439 = select i1 %436, float %50, float 0.000000e+00
  %440 = select i1 %436, float %51, float 1.000000e+00
  %441 = select i1 %436, float %52, float %73
  %442 = select i1 %436, float %53, float %74
  %443 = add i32 %45, 284
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = lshr i32 %445, 16
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = fmul fast float %447, 0x3F50624DE0000000
  %449 = add i32 %45, 88
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  %454 = lshr i32 %451, 24
  %455 = add i32 %45, 292
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = add i32 %45, 32
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
  %508 = add i32 %45, 228
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
  %538 = add i32 %45, 360
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = add i32 %540, 0
  %542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %542, %dx.types.Handle %81, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %561 = add i32 %45, 440
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = add i32 %563, 0
  %565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %565, %dx.types.Handle %82, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %575 = add i32 %45, 224
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = add i32 %45, 228
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
  %603 = add i32 %45, 220
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
  %742 = add i32 %45, 356
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
  %756 = add i32 %45, 92
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %45, 376
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %761, 0
  %763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %763, %dx.types.Handle %81, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %808 = add i32 %45, 280
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
  %832 = add i32 %45, 160
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
  %843 = add i32 %45, 392
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = add i32 %845, 0
  %847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 131072
  %851 = icmp eq i32 %850, 0
  %852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %847, %dx.types.Handle %81, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %879 = add i32 %45, 96
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
  %908 = add i32 %45, 40
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %45, 44
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = or i32 %913, %910
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %1747, label %916

; <label>:916                                     ; preds = %906
  %917 = and i32 %910, 262144
  %918 = icmp ne i32 %917, 0
  %919 = select i1 %918, float %48, float 1.000000e+00
  %920 = select i1 %918, float %49, float 0.000000e+00
  %921 = select i1 %918, float %50, float 0.000000e+00
  %922 = select i1 %918, float %51, float 1.000000e+00
  %923 = select i1 %918, float %52, float %73
  %924 = select i1 %918, float %53, float %74
  %925 = add i32 %45, 300
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = lshr i32 %927, 16
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = fmul fast float %929, 0x3F50624DE0000000
  %931 = add i32 %45, 104
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 16
  %935 = and i32 %934, 255
  %936 = lshr i32 %933, 24
  %937 = add i32 %45, 308
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 65535
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = lshr i32 %939, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = add i32 %45, 48
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
  %990 = add i32 %45, 244
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
  %1030 = icmp eq i32 %46, 65535
  br i1 %1030, label %1125, label %1031

; <label>:1031                                    ; preds = %1019
  %1032 = lshr i32 %46, 1
  %1033 = shl i32 %1032, 2
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %46, 1
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
  %1076 = shl i32 %46, 2
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
  %1135 = add i32 %45, 428
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1139, %dx.types.Handle %82, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = add i32 %45, 116
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
  %1187 = add i32 %45, 412
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %82, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1213 = add i32 %45, 364
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %81, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1236 = add i32 %45, 444
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = add i32 %1238, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1240, %dx.types.Handle %82, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1250 = add i32 %45, 240
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 65535
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = lshr i32 %1252, 16
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = add i32 %45, 244
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
  %1278 = add i32 %45, 236
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
  %1417 = add i32 %45, 356
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
  %1431 = add i32 %45, 108
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %45, 380
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %81, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1483 = add i32 %45, 296
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
  %1507 = add i32 %45, 176
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
  %1518 = add i32 %45, 396
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 131072
  %1526 = icmp eq i32 %1525, 0
  %1527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1522, %dx.types.Handle %81, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1554 = add i32 %45, 112
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
  %1762 = add i32 %45, 56
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %45, 60
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = or i32 %1767, %1764
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %2601, label %1770

; <label>:1770                                    ; preds = %1760
  %1771 = and i32 %1764, 262144
  %1772 = icmp ne i32 %1771, 0
  %1773 = select i1 %1772, float %48, float 1.000000e+00
  %1774 = select i1 %1772, float %49, float 0.000000e+00
  %1775 = select i1 %1772, float %50, float 0.000000e+00
  %1776 = select i1 %1772, float %51, float 1.000000e+00
  %1777 = select i1 %1772, float %52, float %73
  %1778 = select i1 %1772, float %53, float %74
  %1779 = add i32 %45, 316
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = lshr i32 %1781, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = fmul fast float %1783, 0x3F50624DE0000000
  %1785 = add i32 %45, 120
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 16
  %1789 = and i32 %1788, 255
  %1790 = lshr i32 %1787, 24
  %1791 = add i32 %45, 324
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 65535
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = lshr i32 %1793, 16
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = add i32 %45, 64
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
  %1844 = add i32 %45, 260
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
  %1884 = icmp eq i32 %46, 65535
  br i1 %1884, label %1979, label %1885

; <label>:1885                                    ; preds = %1873
  %1886 = lshr i32 %46, 1
  %1887 = shl i32 %1886, 2
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %46, 1
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
  %1930 = shl i32 %46, 2
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
  %1989 = add i32 %45, 432
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = add i32 %1991, 0
  %1993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1993, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = add i32 %45, 132
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
  %2041 = add i32 %45, 416
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2045, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2067 = add i32 %45, 368
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2071, %dx.types.Handle %81, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2090 = add i32 %45, 448
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2092, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2094, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2104 = add i32 %45, 256
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 65535
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2106, 16
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = add i32 %45, 260
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
  %2132 = add i32 %45, 252
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
  %2271 = add i32 %45, 356
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
  %2285 = add i32 %45, 124
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %45, 384
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %81, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2337 = add i32 %45, 312
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
  %2361 = add i32 %45, 192
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
  %2372 = add i32 %45, 400
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = add i32 %2374, 0
  %2376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 131072
  %2380 = icmp eq i32 %2379, 0
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2376, %dx.types.Handle %81, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2408 = add i32 %45, 128
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
  %2616 = add i32 %45, 72
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %45, 76
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = or i32 %2621, %2618
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %3455, label %2624

; <label>:2624                                    ; preds = %2614
  %2625 = and i32 %2618, 262144
  %2626 = icmp ne i32 %2625, 0
  %2627 = select i1 %2626, float %48, float 1.000000e+00
  %2628 = select i1 %2626, float %49, float 0.000000e+00
  %2629 = select i1 %2626, float %50, float 0.000000e+00
  %2630 = select i1 %2626, float %51, float 1.000000e+00
  %2631 = select i1 %2626, float %52, float %73
  %2632 = select i1 %2626, float %53, float %74
  %2633 = add i32 %45, 332
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = lshr i32 %2635, 16
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = fmul fast float %2637, 0x3F50624DE0000000
  %2639 = add i32 %45, 136
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 16
  %2643 = and i32 %2642, 255
  %2644 = lshr i32 %2641, 24
  %2645 = add i32 %45, 340
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 65535
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = lshr i32 %2647, 16
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = add i32 %45, 80
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
  %2698 = add i32 %45, 276
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
  %2738 = icmp eq i32 %46, 65535
  br i1 %2738, label %2833, label %2739

; <label>:2739                                    ; preds = %2727
  %2740 = lshr i32 %46, 1
  %2741 = shl i32 %2740, 2
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %46, 1
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
  %2784 = shl i32 %46, 2
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
  %2843 = add i32 %45, 436
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %2845, 0
  %2847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2847, %dx.types.Handle %82, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = add i32 %45, 148
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
  %2895 = add i32 %45, 420
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %2897, 0
  %2899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2899, %dx.types.Handle %82, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2921 = add i32 %45, 372
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %2923, 0
  %2925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2925, %dx.types.Handle %81, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2944 = add i32 %45, 452
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %82, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2958 = add i32 %45, 272
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 65535
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = lshr i32 %2960, 16
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = add i32 %45, 276
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
  %2986 = add i32 %45, 268
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
  %3125 = add i32 %45, 356
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
  %3139 = add i32 %45, 140
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = add i32 %45, 388
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %3144, 0
  %3146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3146, %dx.types.Handle %81, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %3191 = add i32 %45, 328
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
  %3215 = add i32 %45, 208
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
  %3226 = add i32 %45, 404
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = add i32 %3228, 0
  %3230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 131072
  %3234 = icmp eq i32 %3233, 0
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3230, %dx.types.Handle %81, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %3262 = add i32 %45, 144
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
  %3478 = fmul fast float %3477, %94
  %3479 = fmul fast float %3477, %96
  %3480 = fmul fast float %3477, %98
  %3481 = fmul fast float %3475, %66
  %3482 = fmul fast float %3475, %67
  %3483 = fmul fast float %3475, %68
  %3484 = fmul fast float %101, %69
  %3485 = fmul fast float %3484, %3476
  %3486 = fmul fast float %104, %69
  %3487 = fmul fast float %3486, %3476
  %3488 = fmul fast float %107, %69
  %3489 = fmul fast float %3488, %3476
  %3490 = fadd fast float %3485, %3481
  %3491 = fmul fast float %3490, %87
  %3492 = fadd fast float %3491, %3478
  %3493 = fadd fast float %3487, %3482
  %3494 = fmul fast float %3493, %87
  %3495 = fadd fast float %3494, %3479
  %3496 = fadd fast float %3489, %3483
  %3497 = fmul fast float %3496, %87
  %3498 = fadd fast float %3497, %3480
  %3499 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3495, float %3498, float %3492, float %3495, float %3498)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = call float @dx.op.unary.f32(i32 25, float %3499)  ; Rsqrt(value)
  %3501 = fmul fast float %3492, %3500
  %3502 = fmul fast float %3495, %3500
  %3503 = fmul fast float %3498, %3500
  %3504 = and i32 %47, 1
  %3505 = icmp eq i32 %3504, 0
  br i1 %3505, label %3506, label %4014

; <label>:3506                                    ; preds = %3455
  %3507 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3509 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3511 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3512 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3513 = fadd fast float %3507, %141
  %3514 = fadd fast float %3508, %142
  %3515 = fadd fast float %3509, %143
  %3516 = fadd fast float %3510, %141
  %3517 = fadd fast float %3511, %142
  %3518 = fadd fast float %3512, %143
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3526 = fmul fast float %3520, %85
  %3527 = fmul fast float %3526, %3524
  %3528 = fmul fast float %3521, %86
  %3529 = fmul fast float %3528, %3525
  %3530 = fptoui float %3527 to i32
  %3531 = fptoui float %3529 to i32
  %3532 = fadd fast float %3520, -1.000000e+00
  %3533 = fadd fast float %3521, -1.000000e+00
  %3534 = fptoui float %3532 to i32
  %3535 = fptoui float %3533 to i32
  %3536 = call i32 @dx.op.binary.i32(i32 40, i32 %3530, i32 %3534)  ; UMin(a,b)
  %3537 = call i32 @dx.op.binary.i32(i32 40, i32 %3531, i32 %3535)  ; UMin(a,b)
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 3
  %3541 = fmul fast float %3539, %80
  %3542 = fsub fast float %3541, %3540
  %3543 = fadd fast float %3522, -1.000000e+00
  %3544 = call float @dx.op.binary.f32(i32 36, float %3542, float %3543)  ; FMin(a,b)
  %3545 = fptoui float %3544 to i32
  %3546 = fptoui float %3520 to i32
  %3547 = fptoui float %3521 to i32
  %3548 = mul i32 %3545, %3547
  %3549 = add i32 %3548, %3537
  %3550 = mul i32 %3549, %3546
  %3551 = add i32 %3550, %3536
  %3552 = shl i32 %3551, 2
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 1023
  %3556 = lshr i32 %3554, 10
  %3557 = icmp eq i32 %3555, 0
  br i1 %3557, label %3983, label %3558

; <label>:3558                                    ; preds = %3506
  %3559 = and i32 %3554, 1023
  br label %3560

; <label>:3560                                    ; preds = %3686, %3558
  %3561 = phi i32 [ %3636, %3686 ], [ 0, %3558 ]
  %3562 = phi float [ %3687, %3686 ], [ 0.000000e+00, %3558 ]
  %3563 = phi float [ %3688, %3686 ], [ %3469, %3558 ]
  %3564 = phi float [ %3689, %3686 ], [ %3467, %3558 ]
  %3565 = phi float [ %3690, %3686 ], [ 0.000000e+00, %3558 ]
  %3566 = phi float [ %3691, %3686 ], [ 0.000000e+00, %3558 ]
  %3567 = phi float [ %3692, %3686 ], [ %3461, %3558 ]
  %3568 = phi float [ %3693, %3686 ], [ %3462, %3558 ]
  %3569 = phi float [ %3694, %3686 ], [ %3463, %3558 ]
  %3570 = phi float [ %3695, %3686 ], [ %3501, %3558 ]
  %3571 = phi float [ %3696, %3686 ], [ %3502, %3558 ]
  %3572 = phi float [ %3697, %3686 ], [ %3503, %3558 ]
  %3573 = phi float [ %3698, %3686 ], [ %3466, %3558 ]
  %3574 = phi float [ %3699, %3686 ], [ %3465, %3558 ]
  %3575 = phi float [ %3700, %3686 ], [ 0.000000e+00, %3558 ]
  %3576 = phi float [ %3701, %3686 ], [ %3464, %3558 ]
  %3577 = phi float [ %3702, %3686 ], [ %3458, %3558 ]
  %3578 = phi float [ %3703, %3686 ], [ %3459, %3558 ]
  %3579 = phi float [ %3704, %3686 ], [ %3460, %3558 ]
  %3580 = add nuw nsw i32 %3561, %3556
  %3581 = shl i32 %3580, 2
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = shl i32 %3583, 8
  %3585 = or i32 %3584, 48
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3591 = or i32 %3584, 64
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.i32 %3592, 1
  %3595 = or i32 %3584, 80
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3599 = or i32 %3584, 96
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3584, 112
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3608 = or i32 %3584, 128
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = or i32 %3584, 144
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = or i32 %3584, 160
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = or i32 %3584, 192
  %3627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.i32 %3627, 0
  %3629 = or i32 %3584, 208
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = or i32 %3584, 248
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = add nuw nsw i32 %3561, 1
  %3637 = bitcast float %3590 to i32
  %3638 = and i32 %3637, 512
  %3639 = icmp eq i32 %3638, 0
  %3640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = extractvalue %dx.types.ResRet.f32 %3640, 3
  %3645 = call float @dx.op.dot4.f32(i32 56, float %3641, float %3642, float %3643, float %3644, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3646 = or i32 %3584, 16
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3653 = or i32 %3584, 32
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3659 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3660 = call float @dx.op.unary.f32(i32 27, float %3645)  ; Round_ni(value)
  %3661 = call float @dx.op.unary.f32(i32 6, float %3660)  ; FAbs(value)
  %3662 = call float @dx.op.unary.f32(i32 27, float %3652)  ; Round_ni(value)
  %3663 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3664 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3665 = call float @dx.op.unary.f32(i32 27, float %3664)  ; Round_ni(value)
  %3666 = fadd fast float %3663, %3661
  %3667 = fadd fast float %3666, %3665
  %3668 = fcmp fast oeq float %3667, 0.000000e+00
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3641, float %3642, float %3643, float %3644, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3641, float %3642, float %3643, float %3644, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = fsub fast float %3669, %3645
  %3674 = fsub fast float %3671, %3645
  %3675 = fsub fast float %3670, %3652
  %3676 = fsub fast float %3672, %3652
  %3677 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3588, float %3589, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3680 = fadd fast float %3679, %3677
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3683 = fcmp fast ogt float %3681, %3682
  %3684 = and i1 %3668, %3683
  %3685 = and i1 %3639, %3684
  br i1 %3685, label %3706, label %3686

; <label>:3686                                    ; preds = %3969, %3787, %3706, %3560
  %3687 = phi float [ %3562, %3706 ], [ %3790, %3787 ], [ %3790, %3969 ], [ %3562, %3560 ]
  %3688 = phi float [ %3563, %3706 ], [ %3563, %3787 ], [ %3944, %3969 ], [ %3563, %3560 ]
  %3689 = phi float [ %3564, %3706 ], [ %3564, %3787 ], [ %3942, %3969 ], [ %3564, %3560 ]
  %3690 = phi float [ %3565, %3706 ], [ %3565, %3787 ], [ %3914, %3969 ], [ %3565, %3560 ]
  %3691 = phi float [ %3566, %3706 ], [ %3566, %3787 ], [ %3912, %3969 ], [ %3566, %3560 ]
  %3692 = phi float [ %3567, %3706 ], [ %3567, %3787 ], [ %3979, %3969 ], [ %3567, %3560 ]
  %3693 = phi float [ %3568, %3706 ], [ %3568, %3787 ], [ %3980, %3969 ], [ %3568, %3560 ]
  %3694 = phi float [ %3569, %3706 ], [ %3569, %3787 ], [ %3981, %3969 ], [ %3569, %3560 ]
  %3695 = phi float [ %3570, %3706 ], [ %3570, %3787 ], [ %3893, %3969 ], [ %3570, %3560 ]
  %3696 = phi float [ %3571, %3706 ], [ %3571, %3787 ], [ %3894, %3969 ], [ %3571, %3560 ]
  %3697 = phi float [ %3572, %3706 ], [ %3572, %3787 ], [ %3895, %3969 ], [ %3572, %3560 ]
  %3698 = phi float [ %3573, %3706 ], [ %3573, %3787 ], [ %3922, %3969 ], [ %3573, %3560 ]
  %3699 = phi float [ %3574, %3706 ], [ %3574, %3787 ], [ %3919, %3969 ], [ %3574, %3560 ]
  %3700 = phi float [ %3575, %3706 ], [ %3575, %3787 ], [ %3916, %3969 ], [ %3575, %3560 ]
  %3701 = phi float [ %3576, %3706 ], [ %3576, %3787 ], [ %3910, %3969 ], [ %3576, %3560 ]
  %3702 = phi float [ %3577, %3706 ], [ %3577, %3787 ], [ %3905, %3969 ], [ %3577, %3560 ]
  %3703 = phi float [ %3578, %3706 ], [ %3578, %3787 ], [ %3906, %3969 ], [ %3578, %3560 ]
  %3704 = phi float [ %3579, %3706 ], [ %3579, %3787 ], [ %3907, %3969 ], [ %3579, %3560 ]
  %3705 = icmp eq i32 %3636, %3559
  br i1 %3705, label %3982, label %3560

; <label>:3706                                    ; preds = %3560
  %3707 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3708 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3712 = extractvalue %dx.types.ResRet.i32 %3592, 3
  %3713 = extractvalue %dx.types.ResRet.i32 %3592, 2
  %3714 = add i32 %3712, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3717 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3715, %dx.types.Handle %3716, float %3645, float %3652, float undef, float undef, i32 0, i32 0, i32 undef, float %3673, float %3675, float undef, float %3674, float %3676, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = fmul fast float %3718, %3711
  %3720 = fadd fast float %3719, %3710
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fmul fast float %3645, %3601
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3652, float %3722)  ; FMad(a,b,c)
  %3724 = fadd fast float %3723, %3709
  %3725 = fmul fast float %3645, %3603
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3652, float %3725)  ; FMad(a,b,c)
  %3727 = fadd fast float %3726, %3708
  %3728 = fmul fast float %3673, %3601
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3675, float %3728)  ; FMad(a,b,c)
  %3730 = fmul fast float %3673, %3603
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3675, float %3730)  ; FMad(a,b,c)
  %3732 = fmul fast float %3674, %3601
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3676, float %3732)  ; FMad(a,b,c)
  %3734 = fmul fast float %3674, %3603
  %3735 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3676, float %3734)  ; FMad(a,b,c)
  %3736 = add i32 %3713, 0
  %3737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3736, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3738 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3737, %dx.types.Handle %3716, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = and i32 %3637, 1024
  %3741 = icmp ne i32 %3740, 0
  %3742 = fcmp fast ogt float %3739, 0x3FE0101020000000
  %3743 = uitofp i1 %3742 to float
  %3744 = select i1 %3741, float %3743, float %3739
  %3745 = and i32 %3637, 8192
  %3746 = icmp ne i32 %3745, 0
  %3747 = select i1 %3746, float %3707, float 1.000000e+00
  %3748 = fmul fast float %3645, 2.000000e+00
  %3749 = fadd fast float %3748, -1.000000e+00
  %3750 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3751 = fmul fast float %3750, %3634
  %3752 = fsub fast float %3751, %3634
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fmul fast float %3652, 2.000000e+00
  %3755 = fadd fast float %3754, -1.000000e+00
  %3756 = call float @dx.op.unary.f32(i32 6, float %3755)  ; FAbs(value)
  %3757 = fmul fast float %3756, %3635
  %3758 = fsub fast float %3757, %3635
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3664, %3597
  %3761 = fsub fast float %3760, %3597
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fmul fast float %3721, %3747
  %3764 = fmul fast float %3763, %3718
  %3765 = fmul fast float %3764, %3753
  %3766 = fmul fast float %3765, %3744
  %3767 = fmul fast float %3766, %3759
  %3768 = fmul fast float %3767, %3762
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3772 = fsub fast float %3681, %3771
  %3773 = fmul fast float %3772, %3770
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = fmul fast float %3768, %3598
  %3776 = fadd fast float %3768, %3598
  %3777 = fmul fast float %3776, %3607
  %3778 = fsub fast float %3777, %3607
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = and i32 %3637, 128
  %3781 = icmp ne i32 %3780, 0
  %3782 = select i1 %3781, float %3779, float %3775
  %3783 = fmul fast float %3782, %3774
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = fcmp fast ugt float %3783, %3785
  br i1 %3786, label %3787, label %3686

; <label>:3787                                    ; preds = %3706
  %3788 = select i1 %3746, float %3783, float 0.000000e+00
  %3789 = fadd fast float %3788, %3562
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  br i1 %3746, label %3686, label %3791

; <label>:3791                                    ; preds = %3787
  %3792 = and i32 %3637, 4
  %3793 = and i32 %3637, 8
  %3794 = add i32 %3593, 0
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3795, %dx.types.Handle %3796, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3797, 3
  %3802 = bitcast float %3619 to i32
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = lshr i32 %3802, 8
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = fmul fast float %3801, %3804
  %3809 = fadd fast float %3808, %3807
  %3810 = fmul fast float %3809, 0x3F70101000000000
  %3811 = add i32 %3594, 0
  %3812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3812, %dx.types.Handle %3796, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = extractvalue %dx.types.ResRet.f32 %3813, 3
  %3818 = bitcast float %3613 to i32
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = lshr i32 %3818, 8
  %3822 = and i32 %3821, 255
  %3823 = uitofp i32 %3822 to float
  %3824 = lshr i32 %3818, 16
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, 0x3F70101000000000
  %3828 = fmul fast float %3814, %3820
  %3829 = fadd fast float %3828, %3823
  %3830 = fmul fast float %3829, 0x3F70101000000000
  %3831 = fadd fast float %3815, -5.000000e-01
  %3832 = fadd fast float %3817, -5.000000e-01
  %3833 = fmul fast float %3831, %3827
  %3834 = fmul fast float %3832, %3827
  %3835 = fadd fast float %3833, 5.000000e-01
  %3836 = fadd fast float %3834, 5.000000e-01
  %3837 = fmul fast float %3798, %3622
  %3838 = fmul fast float %3799, %3623
  %3839 = fmul fast float %3800, %3624
  %3840 = fmul fast float %3835, 2.000000e+00
  %3841 = fadd fast float %3840, -1.000000e+00
  %3842 = fmul fast float %3836, 2.000000e+00
  %3843 = fadd fast float %3842, -1.000000e+00
  %3844 = fadd fast float %3841, %3843
  %3845 = fmul fast float %3844, 5.000000e-01
  %3846 = fsub fast float %3841, %3843
  %3847 = fmul fast float %3846, 5.000000e-01
  %3848 = call float @dx.op.unary.f32(i32 6, float %3845)  ; FAbs(value)
  %3849 = fsub fast float 1.000000e+00, %3848
  %3850 = call float @dx.op.unary.f32(i32 6, float %3847)  ; FAbs(value)
  %3851 = fsub fast float %3849, %3850
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3845, float %3847, float %3851, float %3845, float %3847, float %3851)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = call float @dx.op.unary.f32(i32 25, float %3852)  ; Rsqrt(value)
  %3854 = fmul fast float %3845, %3853
  %3855 = fmul fast float %3847, %3853
  %3856 = fmul fast float %3853, %3851
  %3857 = fmul fast float %3856, %3587
  %3858 = fmul fast float %3856, %3588
  %3859 = fmul fast float %3856, %3589
  %3860 = fmul fast float %3854, %3610
  %3861 = fmul fast float %3854, %3611
  %3862 = fmul fast float %3854, %3612
  %3863 = fadd fast float %3860, %3857
  %3864 = fadd fast float %3861, %3858
  %3865 = fadd fast float %3862, %3859
  %3866 = fmul fast float %3855, %3616
  %3867 = fmul fast float %3855, %3617
  %3868 = fmul fast float %3855, %3618
  %3869 = fadd fast float %3863, %3866
  %3870 = fadd fast float %3864, %3867
  %3871 = fadd fast float %3865, %3868
  %3872 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3870, float %3871, float %3869, float %3870, float %3871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3873 = call float @dx.op.unary.f32(i32 25, float %3872)  ; Rsqrt(value)
  %3874 = fmul fast float %3869, %3873
  %3875 = fmul fast float %3870, %3873
  %3876 = fmul fast float %3871, %3873
  %3877 = icmp ne i32 %3793, 0
  %3878 = select i1 %3877, float 1.000000e+00, float 0.000000e+00
  %3879 = fmul fast float %3783, %3878
  %3880 = and i32 %3637, 1
  %3881 = icmp eq i32 %3880, 0
  br i1 %3881, label %3882, label %3886

; <label>:3882                                    ; preds = %3791
  %3883 = fsub fast float %3874, %3570
  %3884 = fsub fast float %3875, %3571
  %3885 = fsub fast float %3876, %3572
  br label %3886

; <label>:3886                                    ; preds = %3882, %3791
  %3887 = phi float [ %3883, %3882 ], [ %3874, %3791 ]
  %3888 = phi float [ %3884, %3882 ], [ %3875, %3791 ]
  %3889 = phi float [ %3885, %3882 ], [ %3876, %3791 ]
  %3890 = fmul float %3889, %3879
  %3891 = fmul float %3888, %3879
  %3892 = fmul float %3887, %3879
  %3893 = fadd fast float %3892, %3570
  %3894 = fadd fast float %3891, %3571
  %3895 = fadd fast float %3890, %3572
  %3896 = icmp ne i32 %3792, 0
  %3897 = select i1 %3896, float 1.000000e+00, float 0.000000e+00
  %3898 = fmul fast float %3783, %3897
  %3899 = fsub fast float %3837, %3577
  %3900 = fsub fast float %3838, %3578
  %3901 = fsub fast float %3839, %3579
  %3902 = fmul fast float %3899, %3898
  %3903 = fmul fast float %3900, %3898
  %3904 = fmul fast float %3901, %3898
  %3905 = fadd fast float %3902, %3577
  %3906 = fadd fast float %3903, %3578
  %3907 = fadd fast float %3904, %3579
  %3908 = fsub fast float %3810, %3576
  %3909 = fmul fast float %3908, %3898
  %3910 = fadd fast float %3909, %3576
  %3911 = fmul fast float %3898, %3566
  %3912 = fsub fast float %3566, %3911
  %3913 = fmul fast float %3898, %3565
  %3914 = fsub fast float %3565, %3913
  %3915 = fadd fast float %3783, %3575
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3917 = fsub fast float %3830, %3574
  %3918 = fmul fast float %3917, %3879
  %3919 = fadd fast float %3918, %3574
  %3920 = fsub fast float %3816, %3573
  %3921 = fmul fast float %3920, %3879
  %3922 = fadd fast float %3921, %3573
  %3923 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3838, float %3839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3927 = fmul fast float %3926, %3923
  %3928 = fadd fast float %3927, %3925
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = bitcast float %3625 to i32
  %3931 = and i32 %3930, 65535
  %3932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3931)  ; LegacyF16ToF32(value)
  %3933 = lshr i32 %3930, 16
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = fcmp fast oge float %3932, 0.000000e+00
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = select i1 %3935, float %3932, float %3937
  %3939 = fadd fast float %3938, %3934
  %3940 = fsub fast float %3929, %3564
  %3941 = fmul fast float %3940, %3783
  %3942 = fadd fast float %3941, %3564
  %3943 = fmul fast float %3939, %3783
  %3944 = call float @dx.op.binary.f32(i32 35, float %3563, float %3943)  ; FMax(a,b)
  %3945 = and i32 %3637, 16
  %3946 = icmp eq i32 %3945, 0
  br i1 %3946, label %3969, label %3947

; <label>:3947                                    ; preds = %3886
  %3948 = bitcast float %3631 to i32
  %3949 = add i32 %3628, 0
  %3950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3949, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3951 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3950, %dx.types.Handle %3796, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.ResRet.f32 %3951, 2
  %3955 = and i32 %3948, 65535
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = fmul fast float %3952, %3622
  %3958 = fmul fast float %3953, %3623
  %3959 = fmul fast float %3954, %3624
  %3960 = and i32 %3637, 16384
  %3961 = icmp ne i32 %3960, 0
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = select i1 %3961, float %3963, float 1.000000e+00
  %3965 = fmul fast float %3964, %3956
  %3966 = fmul fast float %3957, %3965
  %3967 = fmul fast float %3958, %3965
  %3968 = fmul fast float %3959, %3965
  br label %3969

; <label>:3969                                    ; preds = %3947, %3886
  %3970 = phi float [ %3966, %3947 ], [ 0.000000e+00, %3886 ]
  %3971 = phi float [ %3967, %3947 ], [ 0.000000e+00, %3886 ]
  %3972 = phi float [ %3968, %3947 ], [ 0.000000e+00, %3886 ]
  %3973 = fsub fast float %3970, %3567
  %3974 = fsub fast float %3971, %3568
  %3975 = fsub fast float %3972, %3569
  %3976 = fmul fast float %3973, %3783
  %3977 = fmul fast float %3974, %3783
  %3978 = fmul fast float %3975, %3783
  %3979 = fadd fast float %3976, %3567
  %3980 = fadd fast float %3977, %3568
  %3981 = fadd fast float %3978, %3569
  br label %3686

; <label>:3982                                    ; preds = %3686
  br label %3983

; <label>:3983                                    ; preds = %3982, %3506
  %3984 = phi float [ 0.000000e+00, %3506 ], [ %3687, %3982 ]
  %3985 = phi float [ %3469, %3506 ], [ %3688, %3982 ]
  %3986 = phi float [ %3467, %3506 ], [ %3689, %3982 ]
  %3987 = phi float [ 0.000000e+00, %3506 ], [ %3690, %3982 ]
  %3988 = phi float [ 0.000000e+00, %3506 ], [ %3691, %3982 ]
  %3989 = phi float [ %3461, %3506 ], [ %3692, %3982 ]
  %3990 = phi float [ %3462, %3506 ], [ %3693, %3982 ]
  %3991 = phi float [ %3463, %3506 ], [ %3694, %3982 ]
  %3992 = phi float [ %3501, %3506 ], [ %3695, %3982 ]
  %3993 = phi float [ %3502, %3506 ], [ %3696, %3982 ]
  %3994 = phi float [ %3503, %3506 ], [ %3697, %3982 ]
  %3995 = phi float [ %3466, %3506 ], [ %3698, %3982 ]
  %3996 = phi float [ %3465, %3506 ], [ %3699, %3982 ]
  %3997 = phi float [ 0.000000e+00, %3506 ], [ %3700, %3982 ]
  %3998 = phi float [ %3464, %3506 ], [ %3701, %3982 ]
  %3999 = phi float [ %3458, %3506 ], [ %3702, %3982 ]
  %4000 = phi float [ %3459, %3506 ], [ %3703, %3982 ]
  %4001 = phi float [ %3460, %3506 ], [ %3704, %3982 ]
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3992, float %3993, float %3994, float %3992, float %3993, float %3994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %4003, %3992
  %4005 = fmul fast float %4003, %3993
  %4006 = fmul fast float %4003, %3994
  %4007 = fadd fast float %3997, %902
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %4004, float %4005, float %4006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = call float @dx.op.unary.f32(i32 25, float %4009)  ; Rsqrt(value)
  %4011 = fmul fast float %4010, %4004
  %4012 = fmul fast float %4010, %4005
  %4013 = fmul fast float %4010, %4006
  br label %4014

; <label>:4014                                    ; preds = %3983, %3455
  %4015 = phi float [ %4011, %3983 ], [ %3501, %3455 ]
  %4016 = phi float [ %4012, %3983 ], [ %3502, %3455 ]
  %4017 = phi float [ %4013, %3983 ], [ %3503, %3455 ]
  %4018 = phi float [ %3999, %3983 ], [ %3458, %3455 ]
  %4019 = phi float [ %4000, %3983 ], [ %3459, %3455 ]
  %4020 = phi float [ %4001, %3983 ], [ %3460, %3455 ]
  %4021 = phi float [ %3989, %3983 ], [ %3461, %3455 ]
  %4022 = phi float [ %3990, %3983 ], [ %3462, %3455 ]
  %4023 = phi float [ %3991, %3983 ], [ %3463, %3455 ]
  %4024 = phi float [ %3998, %3983 ], [ %3464, %3455 ]
  %4025 = phi float [ %4008, %3983 ], [ %902, %3455 ]
  %4026 = phi float [ %3996, %3983 ], [ %3465, %3455 ]
  %4027 = phi float [ %3995, %3983 ], [ %3466, %3455 ]
  %4028 = phi float [ %3988, %3983 ], [ 0.000000e+00, %3455 ]
  %4029 = phi float [ %3987, %3983 ], [ 0.000000e+00, %3455 ]
  %4030 = phi float [ %3984, %3983 ], [ 0.000000e+00, %3455 ]
  %4031 = phi float [ %3985, %3983 ], [ %3469, %3455 ]
  %4032 = phi float [ %3986, %3983 ], [ %3467, %3455 ]
  %4033 = fadd fast float %4024, 0xBFB99999A0000000
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = fmul fast float %4034, 0x3FF1C71C80000000
  %4036 = call float @dx.op.binary.f32(i32 36, float %4024, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4037 = fsub fast float 1.000000e+00, %4035
  %4038 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4039 = fmul fast float %4038, %4018
  %4040 = fmul fast float %4038, %4019
  %4041 = fmul fast float %4038, %4020
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = fmul fast float %4035, %4018
  %4046 = fmul fast float %4035, %4019
  %4047 = fmul fast float %4035, %4020
  %4048 = fadd fast float %4045, %4036
  %4049 = fadd fast float %4046, %4036
  %4050 = fadd fast float %4047, %4036
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4054 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.i32 %4055, 3
  %4057 = and i32 %4056, 8
  %4058 = icmp ne i32 %4057, 0
  %4059 = call float @dx.op.binary.f32(i32 35, float %4042, float %4018)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4043, float %4018)  ; FMax(a,b)
  %4061 = call float @dx.op.binary.f32(i32 35, float %4044, float %4018)  ; FMax(a,b)
  %4062 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4043, float %4044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4063 = select i1 %183, float %4018, float %4042
  %4064 = select i1 %183, float %4062, float %4043
  %4065 = select i1 %183, float 1.000000e+00, float %4044
  %4066 = select i1 %4058, float %4059, float %4063
  %4067 = select i1 %4058, float %4060, float %4064
  %4068 = select i1 %4058, float %4061, float %4065
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4069, 2
  %4073 = fadd fast float %4070, %141
  %4074 = fadd fast float %4071, %142
  %4075 = fadd fast float %4072, %143
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4079 = fsub fast float %4073, %4077
  %4080 = fsub fast float %4074, %4078
  %4081 = fmul fast float %4079, %4079
  %4082 = fmul fast float %4080, %4080
  %4083 = fadd fast float %4081, %4082
  %4084 = call float @dx.op.unary.f32(i32 24, float %4083)  ; Sqrt(value)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4086 = fcmp fast olt float %4084, %4085
  br i1 %4086, label %4087, label %4154

; <label>:4087                                    ; preds = %4014
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4090, 1
  %4096 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4098 = extractvalue %dx.types.CBufRet.f32 %4090, 3
  %4099 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4100 = fadd fast float %4097, %4073
  %4101 = fadd fast float %4098, %4074
  %4102 = fadd fast float %4099, %4075
  %4103 = fmul fast float %4100, %4089
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4091, float %4103)  ; FMad(a,b,c)
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4102, float %4093, float %4104)  ; FMad(a,b,c)
  %4106 = fmul fast float %4100, %4094
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4095, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4102, float %4096, float %4107)  ; FMad(a,b,c)
  %4109 = fsub fast float %4105, %4097
  %4110 = fsub fast float %4108, %4098
  %4111 = fsub fast float %4109, %4077
  %4112 = fadd fast float %4111, %4085
  %4113 = fsub fast float %4110, %4078
  %4114 = fadd fast float %4113, %4085
  %4115 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4116 = fmul fast float %4112, %4115
  %4117 = fmul fast float %4114, %4115
  %4118 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4119 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4120 = fsub fast float 1.000000e+00, %4118
  %4121 = fsub fast float 1.000000e+00, %4119
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4120, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = fcmp fast ugt float %4123, 0.000000e+00
  br i1 %4124, label %4125, label %4428

; <label>:4125                                    ; preds = %4087
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %4128 = fmul fast float %4127, %4123
  %4129 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4130 = fadd fast float %4129, %4128
  %4131 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4132 = fadd fast float %4130, %4099
  %4133 = fmul fast float %4105, %4093
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4096, float %4133)  ; FMad(a,b,c)
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4131, float %4134)  ; FMad(a,b,c)
  %4136 = fsub fast float %4135, %4099
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 2
  %4139 = fsub fast float %4136, %4138
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4120, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4120, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4148 = fadd fast float %4145, %4141
  %4149 = fmul fast float %4148, 0x3F847AE140000000
  %4150 = fadd fast float %4146, %4142
  %4151 = fmul fast float %4150, 0x3F847AE140000000
  %4152 = fadd fast float %4147, %4143
  %4153 = fmul fast float %4152, 0x3F847AE140000000
  br label %4428

; <label>:4154                                    ; preds = %4014
  %4155 = and i32 %159, 1
  %4156 = icmp eq i32 %4155, 0
  br i1 %4156, label %4428, label %4157

; <label>:4157                                    ; preds = %4154
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 0
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = extractvalue %dx.types.CBufRet.f32 %4158, 1
  %4165 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4168 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4169 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4170 = fadd fast float %4167, %4073
  %4171 = fadd fast float %4168, %4074
  %4172 = fadd fast float %4169, %4075
  %4173 = fmul fast float %4170, %4159
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4161, float %4173)  ; FMad(a,b,c)
  %4175 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4163, float %4174)  ; FMad(a,b,c)
  %4176 = fmul fast float %4170, %4164
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4165, float %4176)  ; FMad(a,b,c)
  %4178 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4166, float %4177)  ; FMad(a,b,c)
  %4179 = fsub fast float %4175, %4167
  %4180 = fsub fast float %4178, %4168
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.i32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.i32 %4188, 1
  %4191 = udiv i32 %4190, %4189
  %4192 = fsub fast float %4179, %4182
  %4193 = fsub fast float %4180, %4183
  %4194 = call float @dx.op.binary.f32(i32 35, float %4192, float 0.000000e+00)  ; FMax(a,b)
  %4195 = call float @dx.op.binary.f32(i32 35, float %4193, float 0.000000e+00)  ; FMax(a,b)
  %4196 = call float @dx.op.binary.f32(i32 36, float %4194, float %4184)  ; FMin(a,b)
  %4197 = call float @dx.op.binary.f32(i32 36, float %4195, float %4185)  ; FMin(a,b)
  %4198 = add i32 %4189, -1
  %4199 = add i32 %4191, -1
  %4200 = fmul fast float %4196, %4187
  %4201 = fmul fast float %4197, %4187
  %4202 = fptoui float %4200 to i32
  %4203 = fptoui float %4201 to i32
  %4204 = call i32 @dx.op.binary.i32(i32 40, i32 %4202, i32 %4198)  ; UMin(a,b)
  %4205 = call i32 @dx.op.binary.i32(i32 40, i32 %4203, i32 %4199)  ; UMin(a,b)
  %4206 = mul i32 %4205, %4189
  %4207 = add i32 %4206, %4204
  %4208 = shl i32 %4207, 2
  %4209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.i32 %4209, 0
  %4211 = icmp eq i32 %4210, -1
  br i1 %4211, label %4428, label %4212

; <label>:4212                                    ; preds = %4157
  %4213 = mul i32 %4210, 148
  %4214 = add i32 %4213, 4
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = add i32 %4213, 8
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = add i32 %4213, 36
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = add i32 %4213, 60
  %4224 = add i32 %4213, 92
  %4225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.i32 %4225, 0
  %4227 = add i32 %4213, 116
  %4228 = fsub fast float %4179, %4216
  %4229 = fsub fast float %4180, %4219
  %4230 = fmul fast float %4187, %4228
  %4231 = fmul fast float %4187, %4229
  %4232 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4234 = fsub fast float 1.000000e+00, %4233
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 2
  %4237 = call float @dx.op.unary.f32(i32 83, float %4232)  ; DerivCoarseX(value)
  %4238 = call float @dx.op.unary.f32(i32 83, float %4234)  ; DerivCoarseX(value)
  %4239 = call float @dx.op.unary.f32(i32 84, float %4232)  ; DerivCoarseY(value)
  %4240 = call float @dx.op.unary.f32(i32 84, float %4234)  ; DerivCoarseY(value)
  %4241 = fmul fast float %4237, %4236
  %4242 = fmul fast float %4238, %4236
  %4243 = fmul fast float %4239, %4236
  %4244 = fmul fast float %4240, %4236
  %4245 = call float @dx.op.dot2.f32(i32 54, float %4243, float %4244, float %4243, float %4244)  ; Dot2(ax,ay,bx,by)
  %4246 = call float @dx.op.dot2.f32(i32 54, float %4241, float %4242, float %4241, float %4242)  ; Dot2(ax,ay,bx,by)
  %4247 = call float @dx.op.binary.f32(i32 35, float %4246, float %4245)  ; FMax(a,b)
  %4248 = call float @dx.op.unary.f32(i32 23, float %4247)  ; Log(value)
  %4249 = fmul fast float %4248, 5.000000e-01
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 1
  %4252 = fadd fast float %4251, %4249
  %4253 = call float @dx.op.binary.f32(i32 35, float %4252, float 0.000000e+00)  ; FMax(a,b)
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 3
  %4256 = fadd fast float %4255, %4253
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4259 = fadd fast float %4256, %4258
  %4260 = add i32 %4226, 0
  %4261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4260, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4262 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4261, i32 0)  ; GetDimensions(handle,mipLevel)
  %4263 = extractvalue %dx.types.Dimensions %4262, 0
  %4264 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4263)  ; FirstbitLo(value)
  %4265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.i32 %4265, 1
  %4267 = sub nsw i32 %4266, %4264
  %4268 = sitofp i32 %4267 to float
  %4269 = fsub fast float %4259, %4268
  %4270 = call float @dx.op.binary.f32(i32 35, float %4269, float 0.000000e+00)  ; FMax(a,b)
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4261, %dx.types.Handle %37, float %4232, float %4234, float %4222, float undef, i32 0, i32 0, i32 undef, float %4270)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = fcmp ule float %4272, 0x3FE0101020000000
  %4274 = extractvalue %dx.types.CBufRet.i32 %4265, 0
  %4275 = and i32 %4274, 128
  %4276 = icmp ne i32 %4275, 0
  %4277 = and i1 %4273, %4276
  br i1 %4277, label %4428, label %4278

; <label>:4278                                    ; preds = %4212
  %4279 = add i32 %4213, 20
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4213, 24
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4213, 40
  %4286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = add i32 %4213, 96
  %4289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.i32 %4289, 0
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4293 = fmul fast float %4292, %4232
  %4294 = fmul fast float %4292, %4234
  %4295 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4296 = fadd fast float %4293, %4295
  %4297 = fadd fast float %4294, %4295
  %4298 = add i32 %4290, 0
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4299, i32 0)  ; GetDimensions(handle,mipLevel)
  %4301 = extractvalue %dx.types.Dimensions %4300, 0
  %4302 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4301)  ; FirstbitLo(value)
  %4303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.i32 %4303, 1
  %4305 = sub nsw i32 %4304, %4302
  %4306 = sitofp i32 %4305 to float
  %4307 = fsub fast float %4256, %4306
  %4308 = call float @dx.op.binary.f32(i32 35, float %4307, float 0.000000e+00)  ; FMax(a,b)
  %4309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4299, %dx.types.Handle %37, float %4296, float %4297, float %4287, float undef, i32 0, i32 0, i32 undef, float %4308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = fmul fast float %4310, %4281
  %4312 = fadd fast float %4311, %4284
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4316 = extractvalue %dx.types.CBufRet.f32 %4313, 2
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4321 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4322 = fadd fast float %4318, %4179
  %4323 = fadd fast float %4320, %4180
  %4324 = fadd fast float %4312, %4321
  %4325 = fmul fast float %4322, %4314
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4315, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4316, float %4326)  ; FMad(a,b,c)
  %4328 = fsub fast float %4327, %4321
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4331 = fsub fast float %4328, %4330
  %4332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.i32 %4332, 0
  %4334 = call i32 @dx.op.binary.i32(i32 40, i32 %4210, i32 %4333)  ; UMin(a,b)
  %4335 = mul i32 %4334, 36
  %4336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.i32 %4336, 0
  %4338 = add i32 %4335, 4
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = fmul fast float %4340, %4232
  %4342 = fmul fast float %4340, %4234
  %4343 = extractvalue %dx.types.CBufRet.f32 %4339, 1
  %4344 = fadd fast float %4341, %4343
  %4345 = fadd fast float %4342, %4343
  %4346 = icmp eq i32 %4337, 0
  br i1 %4346, label %4415, label %4347

; <label>:4347                                    ; preds = %4278
  br label %4348

; <label>:4348                                    ; preds = %4405, %4347
  %4349 = phi float [ %4406, %4405 ], [ 0.000000e+00, %4347 ]
  %4350 = phi float [ %4407, %4405 ], [ 0.000000e+00, %4347 ]
  %4351 = phi float [ %4408, %4405 ], [ 0.000000e+00, %4347 ]
  %4352 = phi float [ %4409, %4405 ], [ 0.000000e+00, %4347 ]
  %4353 = phi float [ %4410, %4405 ], [ 0.000000e+00, %4347 ]
  %4354 = phi float [ %4411, %4405 ], [ 0.000000e+00, %4347 ]
  %4355 = phi i32 [ %4412, %4405 ], [ 0, %4347 ]
  %4356 = shl i32 %4355, 2
  %4357 = add i32 %4223, %4356
  %4358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = add i32 %4227, %4356
  %4361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.i32 %4361, 0
  %4363 = add i32 %4362, 0
  %4364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4365 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4364, i32 0)  ; GetDimensions(handle,mipLevel)
  %4366 = extractvalue %dx.types.Dimensions %4365, 0
  %4367 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4366)  ; FirstbitLo(value)
  %4368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.i32 %4368, 1
  %4370 = sub nsw i32 %4369, %4367
  %4371 = sitofp i32 %4370 to float
  %4372 = fsub fast float %4256, %4371
  %4373 = call float @dx.op.binary.f32(i32 35, float %4372, float 0.000000e+00)  ; FMax(a,b)
  %4374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4364, %dx.types.Handle %37, float %4344, float %4345, float %4359, float undef, i32 0, i32 0, i32 undef, float %4373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = fcmp fast ogt float %4375, 0.000000e+00
  br i1 %4376, label %4377, label %4405

; <label>:4377                                    ; preds = %4348
  %4378 = add i32 %4338, %4356
  %4379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4378, i32 undef)  ; BufferLoad(srv,index,wot)
  %4380 = extractvalue %dx.types.ResRet.i32 %4379, 0
  %4381 = and i32 %4380, 32767
  %4382 = mul nuw nsw i32 %4381, 928
  %4383 = add nuw nsw i32 %4382, 48
  %4384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = add nuw nsw i32 %4382, 60
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = fmul fast float %4385, %4375
  %4394 = fmul fast float %4386, %4375
  %4395 = fmul fast float %4387, %4375
  %4396 = fadd fast float %4393, %4349
  %4397 = fadd fast float %4394, %4350
  %4398 = fadd fast float %4395, %4351
  %4399 = fmul fast float %4390, %4375
  %4400 = fmul fast float %4391, %4375
  %4401 = fmul fast float %4392, %4375
  %4402 = fadd fast float %4399, %4352
  %4403 = fadd fast float %4400, %4353
  %4404 = fadd fast float %4401, %4354
  br label %4405

; <label>:4405                                    ; preds = %4377, %4348
  %4406 = phi float [ %4396, %4377 ], [ %4349, %4348 ]
  %4407 = phi float [ %4397, %4377 ], [ %4350, %4348 ]
  %4408 = phi float [ %4398, %4377 ], [ %4351, %4348 ]
  %4409 = phi float [ %4402, %4377 ], [ %4352, %4348 ]
  %4410 = phi float [ %4403, %4377 ], [ %4353, %4348 ]
  %4411 = phi float [ %4404, %4377 ], [ %4354, %4348 ]
  %4412 = add nuw i32 %4355, 1
  %4413 = icmp eq i32 %4412, %4337
  br i1 %4413, label %4414, label %4348

; <label>:4414                                    ; preds = %4405
  br label %4415

; <label>:4415                                    ; preds = %4414, %4278
  %4416 = phi float [ 0.000000e+00, %4278 ], [ %4406, %4414 ]
  %4417 = phi float [ 0.000000e+00, %4278 ], [ %4407, %4414 ]
  %4418 = phi float [ 0.000000e+00, %4278 ], [ %4408, %4414 ]
  %4419 = phi float [ 0.000000e+00, %4278 ], [ %4409, %4414 ]
  %4420 = phi float [ 0.000000e+00, %4278 ], [ %4410, %4414 ]
  %4421 = phi float [ 0.000000e+00, %4278 ], [ %4411, %4414 ]
  %4422 = fadd fast float %4419, %4416
  %4423 = fmul fast float %4422, 0x3F847AE140000000
  %4424 = fadd fast float %4420, %4417
  %4425 = fmul fast float %4424, 0x3F847AE140000000
  %4426 = fadd fast float %4421, %4418
  %4427 = fmul fast float %4426, 0x3F847AE140000000
  br label %4428

; <label>:4428                                    ; preds = %4415, %4212, %4157, %4154, %4125, %4087
  %4429 = phi float [ %4139, %4125 ], [ -1.310720e+05, %4087 ], [ %4331, %4415 ], [ -1.310720e+05, %4157 ], [ -1.310720e+05, %4212 ], [ -1.310720e+05, %4154 ]
  %4430 = phi float [ %4149, %4125 ], [ 0.000000e+00, %4087 ], [ %4423, %4415 ], [ 0.000000e+00, %4157 ], [ 0.000000e+00, %4212 ], [ 0.000000e+00, %4154 ]
  %4431 = phi float [ %4151, %4125 ], [ 0.000000e+00, %4087 ], [ %4425, %4415 ], [ 0.000000e+00, %4157 ], [ 0.000000e+00, %4212 ], [ 0.000000e+00, %4154 ]
  %4432 = phi float [ %4153, %4125 ], [ 0.000000e+00, %4087 ], [ %4427, %4415 ], [ 0.000000e+00, %4157 ], [ 0.000000e+00, %4212 ], [ 0.000000e+00, %4154 ]
  %4433 = phi i1 [ true, %4125 ], [ false, %4087 ], [ true, %4415 ], [ false, %4157 ], [ false, %4212 ], [ false, %4154 ]
  %4434 = and i32 %159, 3
  %4435 = icmp eq i32 %4434, 1
  %4436 = select i1 %4435, float 1.000000e+00, float 0.000000e+00
  %4437 = fsub fast float %4429, %143
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = select i1 %4433, float %4438, float 1.000000e+00
  %4440 = fmul fast float %4439, %4436
  %4441 = icmp eq i32 %4434, 3
  %4442 = select i1 %4441, float 1.000000e+00, float %4440
  %4443 = call float @dx.op.binary.f32(i32 35, float %4030, float %4442)  ; FMax(a,b)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fcmp fast une float %4444, 0.000000e+00
  %4446 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  br i1 %4445, label %4455, label %4448

; <label>:4448                                    ; preds = %4428
  %4449 = fmul fast float %4447, %141
  %4450 = fmul fast float %4447, %142
  %4451 = fmul fast float %4447, %143
  %4452 = fsub fast float -0.000000e+00, %4449
  %4453 = fsub fast float -0.000000e+00, %4450
  %4454 = fsub fast float -0.000000e+00, %4451
  br label %4623

; <label>:4455                                    ; preds = %4428
  %4456 = fmul fast float %141, %4447
  %4457 = fsub fast float -0.000000e+00, %4456
  %4458 = fmul fast float %142, %4447
  %4459 = fsub fast float -0.000000e+00, %4458
  %4460 = fmul fast float %143, %4447
  %4461 = fsub fast float -0.000000e+00, %4460
  %4462 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4459, float %4461, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = fmul fast float %4444, 2.500000e+00
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fmul fast float %4444, 0x4013FFFFE0000000
  %4466 = fadd fast float %4465, 0xBFFFFFFFE0000000
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fmul fast float %4444, 0x4004000020000000
  %4469 = fadd fast float %4468, 0xBFF8000040000000
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4472 = fmul fast float %4033, 1.000000e+01
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = fmul fast float %4473, 2.000000e+00
  %4475 = fsub fast float 3.000000e+00, %4474
  %4476 = fmul fast float %4473, %4473
  %4477 = fmul fast float %4476, %4475
  %4478 = fsub fast float 1.000000e+00, %4477
  %4479 = fsub fast float 0x3FE3333340000000, %4054
  %4480 = fmul fast float %4479, 0x400AAAAAA0000000
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4478, %4481
  %4483 = fmul fast float %4066, 0x3FEA2B8620000000
  %4484 = fmul fast float %4067, 0x3FEA2B8620000000
  %4485 = fmul fast float %4068, 0x3FEA2B8620000000
  %4486 = fadd fast float %4483, 0x3FC81DFBA0000000
  %4487 = fmul fast float %4486, %4066
  %4488 = fadd fast float %4487, 0x3F910E6020000000
  %4489 = fadd fast float %4484, 0x3FC81DFBA0000000
  %4490 = fmul fast float %4489, %4067
  %4491 = fadd fast float %4490, 0x3F910E6020000000
  %4492 = fadd fast float %4485, 0x3FC81DFBA0000000
  %4493 = fmul fast float %4492, %4068
  %4494 = fadd fast float %4493, 0x3F910E6020000000
  %4495 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4498 = fsub fast float %4495, %4066
  %4499 = fsub fast float %4496, %4067
  %4500 = fsub fast float %4497, %4068
  %4501 = fmul fast float %4498, %4471
  %4502 = fmul fast float %4501, %4482
  %4503 = fmul fast float %4499, %4471
  %4504 = fmul fast float %4503, %4482
  %4505 = fmul fast float %4500, %4471
  %4506 = fmul fast float %4505, %4482
  %4507 = fadd fast float %4502, %4066
  %4508 = fadd fast float %4504, %4067
  %4509 = fadd fast float %4506, %4068
  %4510 = fmul fast float %4027, %4027
  %4511 = fmul fast float %4510, %4510
  %4512 = fadd fast float %4467, 1.000000e+00
  %4513 = fsub fast float %4512, %4482
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fsub fast float 1.000000e+00, %4511
  %4518 = call float @dx.op.binary.f32(i32 36, float %4514, float %4517)  ; FMin(a,b)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4520 = call float @dx.op.binary.f32(i32 35, float %4518, float %4519)  ; FMax(a,b)
  %4521 = fadd fast float %4516, 0xBFE4CCCCC0000000
  %4522 = fmul fast float %4521, 0x4006DB6DA0000000
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = fmul fast float %4523, 2.000000e+00
  %4525 = fsub fast float 3.000000e+00, %4524
  %4526 = bitcast float %4051 to i32
  %4527 = ashr i32 %4526, 1
  %4528 = add nsw i32 %4527, 532487669
  %4529 = bitcast i32 %4528 to float
  %4530 = fsub fast float 1.000000e+00, %4529
  %4531 = bitcast float %4530 to i32
  %4532 = sub nsw i32 2129859010, %4531
  %4533 = bitcast i32 %4532 to float
  %4534 = fmul fast float %4533, 2.000000e+00
  %4535 = bitcast float %4052 to i32
  %4536 = ashr i32 %4535, 1
  %4537 = add nsw i32 %4536, 532487669
  %4538 = bitcast i32 %4537 to float
  %4539 = fsub fast float 1.000000e+00, %4538
  %4540 = bitcast float %4539 to i32
  %4541 = sub nsw i32 2129859010, %4540
  %4542 = bitcast i32 %4541 to float
  %4543 = fmul fast float %4542, 2.000000e+00
  %4544 = bitcast float %4053 to i32
  %4545 = ashr i32 %4544, 1
  %4546 = add nsw i32 %4545, 532487669
  %4547 = bitcast i32 %4546 to float
  %4548 = fsub fast float 1.000000e+00, %4547
  %4549 = bitcast float %4548 to i32
  %4550 = sub nsw i32 2129859010, %4549
  %4551 = bitcast i32 %4550 to float
  %4552 = fmul fast float %4551, 2.000000e+00
  %4553 = fsub fast float 0x4002A9FBE0000000, %4534
  %4554 = fadd fast float %4534, 0x3FD54FDF00000000
  %4555 = bitcast float %4554 to i32
  %4556 = sub nsw i32 2129859010, %4555
  %4557 = bitcast i32 %4556 to float
  %4558 = fmul fast float %4557, %4553
  %4559 = fmul fast float %4558, %4558
  %4560 = fsub fast float 0x4002A9FBE0000000, %4543
  %4561 = fadd fast float %4543, 0x3FD54FDF00000000
  %4562 = bitcast float %4561 to i32
  %4563 = sub nsw i32 2129859010, %4562
  %4564 = bitcast i32 %4563 to float
  %4565 = fmul fast float %4564, %4560
  %4566 = fmul fast float %4565, %4565
  %4567 = fsub fast float 0x4002A9FBE0000000, %4552
  %4568 = fadd fast float %4552, 0x3FD54FDF00000000
  %4569 = bitcast float %4568 to i32
  %4570 = sub nsw i32 2129859010, %4569
  %4571 = bitcast i32 %4570 to float
  %4572 = fmul fast float %4571, %4567
  %4573 = fmul fast float %4572, %4572
  %4574 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4559)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4566)  ; FMax(a,b)
  %4576 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4573)  ; FMax(a,b)
  %4577 = fsub fast float 1.000000e+00, %4462
  %4578 = fadd fast float %4577, %4478
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = fsub fast float 1.000000e+00, %4442
  %4581 = fmul fast float %4520, %4580
  %4582 = fmul fast float %4523, %4523
  %4583 = fmul fast float %4582, %4581
  %4584 = fmul fast float %4583, %4525
  %4585 = fmul fast float %4580, 0xBFE99999A0000000
  %4586 = fmul fast float %4585, %4471
  %4587 = fmul fast float %4586, %4482
  %4588 = fadd fast float %4587, 1.000000e+00
  %4589 = fadd fast float %4054, -1.000000e+00
  %4590 = fmul fast float %4588, %4589
  %4591 = fadd fast float %4590, 1.000000e+00
  %4592 = fsub fast float %4574, %4051
  %4593 = fsub fast float %4575, %4052
  %4594 = fsub fast float %4576, %4053
  %4595 = fmul fast float %4584, %4592
  %4596 = fmul fast float %4584, %4593
  %4597 = fmul fast float %4584, %4594
  %4598 = fadd fast float %4595, %4051
  %4599 = fadd fast float %4596, %4052
  %4600 = fadd fast float %4597, %4053
  %4601 = fsub fast float %94, %4015
  %4602 = fsub fast float %96, %4016
  %4603 = fsub fast float %98, %4017
  %4604 = fmul fast float %4584, %4601
  %4605 = fmul fast float %4584, %4602
  %4606 = fmul fast float %4584, %4603
  %4607 = fadd fast float %4604, %4015
  %4608 = fadd fast float %4605, %4016
  %4609 = fadd fast float %4606, %4017
  %4610 = fmul fast float %4584, %4579
  %4611 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4612 = fsub fast float 1.000000e+00, %4611
  %4613 = fmul fast float %4610, %4612
  %4614 = fadd fast float %4613, %4611
  %4615 = fsub fast float 1.000000e+00, %4027
  %4616 = fmul fast float %4584, %4615
  %4617 = fadd fast float %4616, %4027
  %4618 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = call float @dx.op.unary.f32(i32 25, float %4618)  ; Rsqrt(value)
  %4620 = fmul fast float %4607, %4619
  %4621 = fmul fast float %4608, %4619
  %4622 = fmul fast float %4609, %4619
  br label %4623

; <label>:4623                                    ; preds = %4455, %4448
  %4624 = phi float [ %4454, %4448 ], [ %4461, %4455 ]
  %4625 = phi float [ %4453, %4448 ], [ %4459, %4455 ]
  %4626 = phi float [ %4452, %4448 ], [ %4457, %4455 ]
  %4627 = phi float [ %4451, %4448 ], [ %4460, %4455 ]
  %4628 = phi float [ %4450, %4448 ], [ %4458, %4455 ]
  %4629 = phi float [ %4449, %4448 ], [ %4456, %4455 ]
  %4630 = phi float [ %4066, %4448 ], [ %4507, %4455 ]
  %4631 = phi float [ %4067, %4448 ], [ %4508, %4455 ]
  %4632 = phi float [ %4068, %4448 ], [ %4509, %4455 ]
  %4633 = phi float [ %4051, %4448 ], [ %4598, %4455 ]
  %4634 = phi float [ %4052, %4448 ], [ %4599, %4455 ]
  %4635 = phi float [ %4053, %4448 ], [ %4600, %4455 ]
  %4636 = phi float [ %4015, %4448 ], [ %4620, %4455 ]
  %4637 = phi float [ %4016, %4448 ], [ %4621, %4455 ]
  %4638 = phi float [ %4017, %4448 ], [ %4622, %4455 ]
  %4639 = phi float [ %4054, %4448 ], [ %4614, %4455 ]
  %4640 = phi float [ %4027, %4448 ], [ %4617, %4455 ]
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4644 = fmul fast float %4642, %85
  %4645 = fmul fast float %4643, %86
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4644, float %4645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = fmul fast float %4650, %4648
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fadd fast float %4652, -1.000000e+00
  %4654 = fmul fast float %4653, %4647
  %4655 = fadd fast float %4654, 1.000000e+00
  %4656 = select i1 %183, float 0.000000e+00, float %4635
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %4626, float %4625, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4628, float %4627, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = fmul fast float %4659, 2.000000e+00
  %4661 = fmul fast float %4660, %4636
  %4662 = fmul fast float %4660, %4637
  %4663 = fmul fast float %4660, %4638
  %4664 = fsub fast float %4629, %4661
  %4665 = fsub fast float %4628, %4662
  %4666 = fsub fast float %4627, %4663
  %4667 = call float @dx.op.binary.f32(i32 36, float %4640, float %4655)  ; FMin(a,b)
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = bitcast float %4668 to i32
  %4670 = ashr i32 %4669, 1
  %4671 = add nsw i32 %4670, 532487669
  %4672 = bitcast i32 %4671 to float
  %4673 = fsub fast float 1.000000e+00, %4639
  %4674 = call float @dx.op.binary.f32(i32 35, float %4673, float 0x3F847AE140000000)  ; FMax(a,b)
  %4675 = fmul fast float %4674, %4674
  %4676 = fmul fast float %4675, %4675
  %4677 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4672, float %4676, float %4677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = fsub fast float 1.000000e+00, %4640
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = fmul fast float %4684, 0x3FD20DD760000000
  %4686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4687 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = fcmp fast oeq float %4687, 0.000000e+00
  %4689 = fcmp fast oeq float %4686, 0.000000e+00
  %4690 = or i1 %4689, %4688
  br i1 %4690, label %4720, label %4691

; <label>:4691                                    ; preds = %4623
  %4692 = fsub fast float -0.000000e+00, %65
  %4693 = fsub fast float -0.000000e+00, %63
  %4694 = call float @dx.op.unary.f32(i32 24, float %4687)  ; Sqrt(value)
  %4695 = fdiv fast float %4694, %4686
  %4696 = fcmp fast ogt float %4695, 0x3FFB6F8900000000
  %4697 = select i1 %4696, float 0x3FFB6F8900000000, float %4695
  %4698 = fmul fast float %4697, 0x3FE8A23460000000
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = call float @dx.op.binary.f32(i32 35, float %4697, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4701 = fmul fast float %4699, %4686
  %4702 = fmul fast float %4700, 0x3FF279A740000000
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4692, float %4693, float %64, float %4692, float %4693, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.unary.f32(i32 25, float %4704)  ; Rsqrt(value)
  %4706 = fmul fast float %4705, %4692
  %4707 = fmul fast float %4705, %4693
  %4708 = fmul fast float %4705, %64
  %4709 = fmul fast float %4703, %4703
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = fmul fast float %4700, 0x40005F8BE0000000
  %4712 = fsub fast float 0x400C5BF8A0000000, %4711
  %4713 = fdiv fast float %4701, %4712
  %4714 = fmul fast float %4713, 0x3FEE31C3C0000000
  %4715 = fmul fast float %4714, %4710
  %4716 = fmul fast float %4700, 0x3FDACB7480000000
  %4717 = fadd fast float %4716, 0xBFD7347680000000
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4718, %4710
  br label %4720

; <label>:4720                                    ; preds = %4691, %4623
  %4721 = phi float [ %4706, %4691 ], [ 0.000000e+00, %4623 ]
  %4722 = phi float [ %4707, %4691 ], [ 0.000000e+00, %4623 ]
  %4723 = phi float [ %4708, %4691 ], [ 0.000000e+00, %4623 ]
  %4724 = phi float [ %4715, %4691 ], [ 0.000000e+00, %4623 ]
  %4725 = phi float [ %4719, %4691 ], [ 0.000000e+00, %4623 ]
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4722, float %4723, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = fmul fast float %4726, %4726
  %4728 = fmul fast float %4727, 0x3FEE471020000000
  %4729 = fadd fast float %4728, 0xBFD42F6020000000
  %4730 = fmul fast float %4686, 0x3FD20DD760000000
  %4731 = fmul fast float %4729, %4725
  %4732 = fmul fast float %4724, 0x3FDF454380000000
  %4733 = fmul fast float %4732, %4726
  %4734 = fadd fast float %4733, %4730
  %4735 = fadd fast float %4734, %4731
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4722, float %4723, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = fmul fast float %4736, 0x3FDF454380000000
  %4738 = fmul fast float %4736, %4736
  %4739 = fmul fast float %4738, 0x3FEE471020000000
  %4740 = fadd fast float %4739, 0xBFD42F6020000000
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4686, float %4724, float %4725, float 0x3FD20DD760000000, float %4737, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4743 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = fcmp fast oeq float %4743, 0.000000e+00
  %4745 = fcmp fast oeq float %4742, 0.000000e+00
  %4746 = or i1 %4745, %4744
  br i1 %4746, label %4776, label %4747

; <label>:4747                                    ; preds = %4720
  %4748 = fsub fast float -0.000000e+00, %61
  %4749 = fsub fast float -0.000000e+00, %59
  %4750 = call float @dx.op.unary.f32(i32 24, float %4743)  ; Sqrt(value)
  %4751 = fdiv fast float %4750, %4742
  %4752 = fcmp fast ogt float %4751, 0x3FFB6F8900000000
  %4753 = select i1 %4752, float 0x3FFB6F8900000000, float %4751
  %4754 = fmul fast float %4753, 0x3FE8A23460000000
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = call float @dx.op.binary.f32(i32 35, float %4753, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4757 = fmul fast float %4755, %4742
  %4758 = fmul fast float %4756, 0x3FF279A740000000
  %4759 = fadd fast float %4758, -1.000000e+00
  %4760 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %60, float %4748, float %4749, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = call float @dx.op.unary.f32(i32 25, float %4760)  ; Rsqrt(value)
  %4762 = fmul fast float %4761, %4748
  %4763 = fmul fast float %4761, %4749
  %4764 = fmul fast float %4761, %60
  %4765 = fmul fast float %4759, %4759
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = fmul fast float %4756, 0x40005F8BE0000000
  %4768 = fsub fast float 0x400C5BF8A0000000, %4767
  %4769 = fdiv fast float %4757, %4768
  %4770 = fmul fast float %4769, 0x3FEE31C3C0000000
  %4771 = fmul fast float %4770, %4766
  %4772 = fmul fast float %4756, 0x3FDACB7480000000
  %4773 = fadd fast float %4772, 0xBFD7347680000000
  %4774 = fmul fast float %4773, %4769
  %4775 = fmul fast float %4774, %4766
  br label %4776

; <label>:4776                                    ; preds = %4747, %4720
  %4777 = phi float [ %4762, %4747 ], [ 0.000000e+00, %4720 ]
  %4778 = phi float [ %4763, %4747 ], [ 0.000000e+00, %4720 ]
  %4779 = phi float [ %4764, %4747 ], [ 0.000000e+00, %4720 ]
  %4780 = phi float [ %4771, %4747 ], [ 0.000000e+00, %4720 ]
  %4781 = phi float [ %4775, %4747 ], [ 0.000000e+00, %4720 ]
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = fmul fast float %4782, %4782
  %4784 = fmul fast float %4783, 0x3FEE471020000000
  %4785 = fadd fast float %4784, 0xBFD42F6020000000
  %4786 = fmul fast float %4742, 0x3FD20DD760000000
  %4787 = fmul fast float %4785, %4781
  %4788 = fmul fast float %4780, 0x3FDF454380000000
  %4789 = fmul fast float %4788, %4782
  %4790 = fadd fast float %4789, %4786
  %4791 = fadd fast float %4790, %4787
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = fmul fast float %4792, 0x3FDF454380000000
  %4794 = fmul fast float %4792, %4792
  %4795 = fmul fast float %4794, 0x3FEE471020000000
  %4796 = fadd fast float %4795, 0xBFD42F6020000000
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4780, float %4781, float 0x3FD20DD760000000, float %4793, float %4796)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4799 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = fcmp fast oeq float %4799, 0.000000e+00
  %4801 = fcmp fast oeq float %4798, 0.000000e+00
  %4802 = or i1 %4801, %4800
  br i1 %4802, label %4832, label %4803

; <label>:4803                                    ; preds = %4776
  %4804 = fsub fast float -0.000000e+00, %57
  %4805 = fsub fast float -0.000000e+00, %55
  %4806 = call float @dx.op.unary.f32(i32 24, float %4799)  ; Sqrt(value)
  %4807 = fdiv fast float %4806, %4798
  %4808 = fcmp fast ogt float %4807, 0x3FFB6F8900000000
  %4809 = select i1 %4808, float 0x3FFB6F8900000000, float %4807
  %4810 = fmul fast float %4809, 0x3FE8A23460000000
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = call float @dx.op.binary.f32(i32 35, float %4809, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4813 = fmul fast float %4811, %4798
  %4814 = fmul fast float %4812, 0x3FF279A740000000
  %4815 = fadd fast float %4814, -1.000000e+00
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %56, float %4804, float %4805, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.unary.f32(i32 25, float %4816)  ; Rsqrt(value)
  %4818 = fmul fast float %4817, %4804
  %4819 = fmul fast float %4817, %4805
  %4820 = fmul fast float %4817, %56
  %4821 = fmul fast float %4815, %4815
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = fmul fast float %4812, 0x40005F8BE0000000
  %4824 = fsub fast float 0x400C5BF8A0000000, %4823
  %4825 = fdiv fast float %4813, %4824
  %4826 = fmul fast float %4825, 0x3FEE31C3C0000000
  %4827 = fmul fast float %4826, %4822
  %4828 = fmul fast float %4812, 0x3FDACB7480000000
  %4829 = fadd fast float %4828, 0xBFD7347680000000
  %4830 = fmul fast float %4829, %4825
  %4831 = fmul fast float %4830, %4822
  br label %4832

; <label>:4832                                    ; preds = %4803, %4776
  %4833 = phi float [ %4818, %4803 ], [ 0.000000e+00, %4776 ]
  %4834 = phi float [ %4819, %4803 ], [ 0.000000e+00, %4776 ]
  %4835 = phi float [ %4820, %4803 ], [ 0.000000e+00, %4776 ]
  %4836 = phi float [ %4827, %4803 ], [ 0.000000e+00, %4776 ]
  %4837 = phi float [ %4831, %4803 ], [ 0.000000e+00, %4776 ]
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = fmul fast float %4838, %4838
  %4840 = fmul fast float %4839, 0x3FEE471020000000
  %4841 = fadd fast float %4840, 0xBFD42F6020000000
  %4842 = fmul fast float %4798, 0x3FD20DD760000000
  %4843 = fmul fast float %4841, %4837
  %4844 = fmul fast float %4836, 0x3FDF454380000000
  %4845 = fmul fast float %4844, %4838
  %4846 = fadd fast float %4845, %4842
  %4847 = fadd fast float %4846, %4843
  %4848 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4849 = fmul fast float %4848, 0x3FDF454380000000
  %4850 = fmul fast float %4848, %4848
  %4851 = fmul fast float %4850, 0x3FEE471020000000
  %4852 = fadd fast float %4851, 0xBFD42F6020000000
  %4853 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4836, float %4837, float 0x3FD20DD760000000, float %4849, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4855 = call float @dx.op.binary.f32(i32 35, float %4791, float 0.000000e+00)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4847, float 0.000000e+00)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float %4797, float 0.000000e+00)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 35, float %4853, float 0.000000e+00)  ; FMax(a,b)
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 0
  %4862 = call float @dx.op.binary.f32(i32 36, float %4630, float %4861)  ; FMin(a,b)
  %4863 = fmul fast float %4862, %4668
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = bitcast float %4864 to i32
  %4866 = sub nsw i32 2129859010, %4865
  %4867 = bitcast i32 %4866 to float
  %4868 = call float @dx.op.binary.f32(i32 36, float %4631, float %4861)  ; FMin(a,b)
  %4869 = fmul fast float %4868, %4668
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = bitcast float %4870 to i32
  %4872 = sub nsw i32 2129859010, %4871
  %4873 = bitcast i32 %4872 to float
  %4874 = call float @dx.op.binary.f32(i32 36, float %4632, float %4861)  ; FMin(a,b)
  %4875 = fmul fast float %4874, %4668
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = bitcast float %4876 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = fmul fast float %4854, %4667
  %4881 = fmul fast float %4880, %4867
  %4882 = fmul fast float %4855, %4667
  %4883 = fmul fast float %4882, %4873
  %4884 = fmul fast float %4856, %4667
  %4885 = fmul fast float %4884, %4879
  %4886 = call float @dx.op.binary.f32(i32 36, float %4633, float %4861)  ; FMin(a,b)
  %4887 = fmul fast float %4886, %4668
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = bitcast float %4888 to i32
  %4890 = sub nsw i32 2129859010, %4889
  %4891 = bitcast i32 %4890 to float
  %4892 = call float @dx.op.binary.f32(i32 36, float %4634, float %4861)  ; FMin(a,b)
  %4893 = fmul fast float %4892, %4668
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = bitcast float %4894 to i32
  %4896 = sub nsw i32 2129859010, %4895
  %4897 = bitcast i32 %4896 to float
  %4898 = call float @dx.op.binary.f32(i32 36, float %4656, float %4861)  ; FMin(a,b)
  %4899 = fmul fast float %4898, %4668
  %4900 = fsub fast float 1.000000e+00, %4899
  %4901 = bitcast float %4900 to i32
  %4902 = sub nsw i32 2129859010, %4901
  %4903 = bitcast i32 %4902 to float
  %4904 = fmul fast float %4857, %4667
  %4905 = fmul fast float %4904, %4891
  %4906 = fmul fast float %4858, %4667
  %4907 = fmul fast float %4906, %4897
  %4908 = fmul fast float %4859, %4667
  %4909 = fmul fast float %4908, %4903
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4883, float %4885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = select i1 %183, float 0.000000e+00, float %4881
  %4912 = select i1 %183, float %4910, float %4883
  %4913 = select i1 %183, float 0.000000e+00, float %4885
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4907, float %4909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = select i1 %183, float 0.000000e+00, float %4905
  %4916 = select i1 %183, float %4914, float %4907
  %4917 = select i1 %183, float 0.000000e+00, float %4909
  %4918 = fmul fast float %4658, 9.843750e-01
  %4919 = fmul fast float %4639, 9.843750e-01
  %4920 = fadd fast float %4918, 7.812500e-03
  %4921 = fadd fast float %4919, 7.812500e-03
  %4922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4920, float %4921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 2
  %4924 = extractvalue %dx.types.ResRet.f32 %4922, 3
  %4925 = fmul fast float %4923, %4633
  %4926 = fmul fast float %4923, %4634
  %4927 = fmul fast float %4923, %4656
  %4928 = fadd fast float %4925, %4924
  %4929 = fadd fast float %4926, %4924
  %4930 = fadd fast float %4927, %4924
  %4931 = fcmp fast ogt float %4028, 0.000000e+00
  br i1 %4931, label %4932, label %4958

; <label>:4932                                    ; preds = %4832
  %4933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4028, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.ResRet.f32 %4933, 1
  %4936 = extractvalue %dx.types.ResRet.f32 %4933, 2
  %4937 = fadd fast float %4934, -5.000000e-01
  %4938 = fadd fast float %4935, -5.000000e-01
  %4939 = fadd fast float %4936, -5.000000e-01
  %4940 = fsub fast float 1.000000e+00, %4633
  %4941 = fsub fast float 1.000000e+00, %4634
  %4942 = fsub fast float 1.000000e+00, %4656
  %4943 = fmul fast float %4633, 4.000000e+00
  %4944 = fmul fast float %4943, %4940
  %4945 = fmul fast float %4944, %4937
  %4946 = fmul fast float %4634, 4.000000e+00
  %4947 = fmul fast float %4946, %4941
  %4948 = fmul fast float %4947, %4938
  %4949 = fmul fast float %4656, 4.000000e+00
  %4950 = fmul fast float %4949, %4942
  %4951 = fmul fast float %4950, %4939
  %4952 = fadd fast float %4945, %4928
  %4953 = fadd fast float %4948, %4929
  %4954 = fadd fast float %4951, %4930
  %4955 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4956 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  br label %4958

; <label>:4958                                    ; preds = %4932, %4832
  %4959 = phi float [ %4955, %4932 ], [ %4928, %4832 ]
  %4960 = phi float [ %4956, %4932 ], [ %4929, %4832 ]
  %4961 = phi float [ %4957, %4932 ], [ %4930, %4832 ]
  %4962 = call float @dx.op.binary.f32(i32 35, float %4960, float %4961)  ; FMax(a,b)
  %4963 = call float @dx.op.binary.f32(i32 35, float %4959, float %4962)  ; FMax(a,b)
  %4964 = fsub fast float 1.000000e+00, %4963
  %4965 = fmul fast float %4963, %4639
  %4966 = fadd fast float %4965, %4639
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.CBufRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.CBufRet.f32 %4967, 2
  %4971 = extractvalue %dx.types.CBufRet.f32 %4967, 3
  %4972 = fmul fast float %4966, %4968
  %4973 = fadd fast float %4972, %4969
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4970, %4966
  %4976 = fadd fast float %4975, %4971
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fsub fast float 1.000000e+00, %4679
  %4979 = fadd fast float %4978, %4977
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fcmp fast olt float %4980, 1.000000e+00
  br i1 %4981, label %4982, label %5837

; <label>:4982                                    ; preds = %4958
  %4983 = fcmp fast olt float %4974, 1.000000e+00
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = fcmp fast ogt float %4985, 0.000000e+00
  %4987 = or i1 %4983, %4986
  %4988 = or i1 %4983, %4986
  %4989 = xor i1 %4988, true
  %4990 = zext i1 %4989 to i32
  br i1 %4987, label %4991, label %5234

; <label>:4991                                    ; preds = %4982
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.CBufRet.f32 %4992, 1
  %4995 = extractvalue %dx.types.CBufRet.f32 %4992, 2
  %4996 = extractvalue %dx.types.CBufRet.f32 %4992, 3
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.CBufRet.f32 %4997, 2
  %5001 = extractvalue %dx.types.CBufRet.f32 %4997, 3
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.CBufRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.CBufRet.f32 %5002, 2
  %5006 = extractvalue %dx.types.CBufRet.f32 %5002, 3
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5010 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5011 = extractvalue %dx.types.CBufRet.f32 %5007, 3
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5016 = extractvalue %dx.types.CBufRet.f32 %5012, 3
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5021 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5022 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = call float @dx.op.unary.f32(i32 6, float %5023)  ; FAbs(value)
  %5025 = fmul fast float %5024, 8.000000e+00
  %5026 = fadd fast float %5025, -6.000000e+00
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fmul fast float %5022, 8.000000e+00
  %5029 = fmul fast float %5028, %4985
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fcmp fast ogt float %5030, 0.000000e+00
  br i1 %5031, label %5032, label %5209, !dx.controlflow.hints !85

; <label>:5032                                    ; preds = %4991
  %5033 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %5034 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %5035 = fsub fast float %5033, %5034
  %5036 = fmul fast float %5035, %4639
  %5037 = fadd fast float %5036, %5034
  %5038 = fmul fast float %196, 2.000000e+00
  %5039 = fmul fast float %197, 2.000000e+00
  %5040 = fadd fast float %5038, -1.000000e+00
  %5041 = fadd fast float %5039, -1.000000e+00
  %5042 = fmul fast float %5037, %5040
  %5043 = fmul fast float %5037, %5041
  %5044 = fadd fast float %5042, %85
  %5045 = fadd fast float %5043, %86
  %5046 = fmul fast float %5044, %4642
  %5047 = fmul fast float %5045, %4643
  %5048 = fadd fast float %4639, 0xBFE3333340000000
  %5049 = fmul fast float %5048, 0x4004000020000000
  %5050 = fsub fast float 1.000000e+00, %5049
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fmul fast float %5051, 3.000000e+00
  %5053 = fadd fast float %5052, %196
  %5054 = call float @dx.op.unary.f32(i32 27, float %5053)  ; Round_ni(value)
  %5055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5046, float %5047, float %5054, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = fcmp fast une float %5056, 0xFFF0000000000000
  %5058 = fcmp fast une float %5056, 0x7FF0000000000000
  %5059 = and i1 %5057, %5058
  %5060 = fcmp fast olt float %5056, 0.000000e+00
  %5061 = call float @dx.op.unary.f32(i32 6, float %5056)  ; FAbs(value)
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = select i1 %5059, float 1.000000e+00, float 0.000000e+00
  %5064 = fmul fast float %5063, %5030
  %5065 = fcmp fast ogt float %5064, 0.000000e+00
  br i1 %5065, label %5066, label %5209, !dx.controlflow.hints !86

; <label>:5066                                    ; preds = %5032
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5071 = select i1 %5060, float 0.000000e+00, float %5068
  %5072 = select i1 %5060, float 0.000000e+00, float %5069
  %5073 = select i1 %5060, float 0.000000e+00, float %5070
  %5074 = select i1 %5060, float %4993, float %5008
  %5075 = select i1 %5060, float %4998, float %5013
  %5076 = select i1 %5060, float %5003, float %5018
  %5077 = select i1 %5060, float %4994, float %5009
  %5078 = select i1 %5060, float %4999, float %5014
  %5079 = select i1 %5060, float %5004, float %5019
  %5080 = select i1 %5060, float %4995, float %5010
  %5081 = select i1 %5060, float %5000, float %5015
  %5082 = select i1 %5060, float %5005, float %5020
  %5083 = select i1 %5060, float %4996, float %5011
  %5084 = select i1 %5060, float %5001, float %5016
  %5085 = select i1 %5060, float %5006, float %5021
  %5086 = fadd fast float %5071, %141
  %5087 = fadd fast float %5072, %142
  %5088 = fadd fast float %5073, %143
  %5089 = fmul fast float %5086, %5074
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %5087, float %5077, float %5089)  ; FMad(a,b,c)
  %5091 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5080, float %5090)  ; FMad(a,b,c)
  %5092 = fadd fast float %5091, %5083
  %5093 = fmul fast float %5086, %5075
  %5094 = call float @dx.op.tertiary.f32(i32 46, float %5087, float %5078, float %5093)  ; FMad(a,b,c)
  %5095 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5081, float %5094)  ; FMad(a,b,c)
  %5096 = fadd fast float %5095, %5084
  %5097 = fmul fast float %5086, %5076
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5087, float %5079, float %5097)  ; FMad(a,b,c)
  %5099 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5082, float %5098)  ; FMad(a,b,c)
  %5100 = fadd fast float %5099, %5085
  %5101 = fdiv fast float 1.000000e+00, %5100
  %5102 = fmul fast float %5101, %5092
  %5103 = fmul fast float %5101, %5096
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5107 = fmul fast float %5102, %5105
  %5108 = fmul fast float %5103, %5106
  %5109 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5110 = extractvalue %dx.types.CBufRet.f32 %5104, 3
  %5111 = fadd fast float %5107, %5109
  %5112 = fadd fast float %5108, %5110
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 3
  %5115 = fmul fast float %5114, %4664
  %5116 = fmul fast float %5114, %4665
  %5117 = fmul fast float %5114, %4666
  %5118 = fadd fast float %5115, %5086
  %5119 = fadd fast float %5116, %5087
  %5120 = fadd fast float %5117, %5088
  %5121 = fmul fast float %5118, %5074
  %5122 = call float @dx.op.tertiary.f32(i32 46, float %5119, float %5077, float %5121)  ; FMad(a,b,c)
  %5123 = call float @dx.op.tertiary.f32(i32 46, float %5120, float %5080, float %5122)  ; FMad(a,b,c)
  %5124 = fadd fast float %5123, %5083
  %5125 = fmul fast float %5118, %5075
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5119, float %5078, float %5125)  ; FMad(a,b,c)
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5120, float %5081, float %5126)  ; FMad(a,b,c)
  %5128 = fadd fast float %5127, %5084
  %5129 = fmul fast float %5118, %5076
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5119, float %5079, float %5129)  ; FMad(a,b,c)
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %5120, float %5082, float %5130)  ; FMad(a,b,c)
  %5132 = fadd fast float %5131, %5085
  %5133 = fdiv fast float 1.000000e+00, %5132
  %5134 = fmul fast float %5133, %5124
  %5135 = fmul fast float %5133, %5128
  %5136 = fmul fast float %5111, 2.000000e+00
  %5137 = fadd fast float %5136, -1.000000e+00
  %5138 = call float @dx.op.unary.f32(i32 6, float %5137)  ; FAbs(value)
  %5139 = fmul fast float %5138, 5.000000e+00
  %5140 = fadd fast float %5139, -4.000000e+00
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5141, %5027
  %5143 = fsub fast float %5102, %5134
  %5144 = fmul fast float %5105, %5143
  %5145 = fmul fast float %5142, %5144
  %5146 = fsub fast float %5134, %5102
  %5147 = fmul fast float %5105, %5146
  %5148 = fadd fast float %5147, %5145
  %5149 = fsub fast float %5135, %5103
  %5150 = fmul fast float %5106, %5149
  %5151 = fmul fast float %5148, %5062
  %5152 = fmul fast float %5150, %5062
  %5153 = fadd fast float %5151, %5111
  %5154 = fadd fast float %5152, %5112
  %5155 = fsub fast float %5133, %5101
  %5156 = fmul fast float %5155, %5062
  %5157 = fadd fast float %5156, %5101
  %5158 = fdiv fast float 1.000000e+00, %5157
  %5159 = fadd fast float %4639, -1.000000e+00
  %5160 = fsub fast float %5158, %5100
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5163 = fmul fast float %5162, %5158
  %5164 = fdiv fast float 1.600000e+02, %5163
  %5165 = fmul fast float %5159, %5159
  %5166 = fmul fast float %5165, 0xBFB5B17960000000
  %5167 = fmul fast float %5166, %5160
  %5168 = fmul fast float %5167, %5164
  %5169 = call float @dx.op.unary.f32(i32 21, float %5168)  ; Exp(value)
  %5170 = fmul fast float %5169, 0x3FF04B2960000000
  %5171 = fsub fast float 0x3FF04B2960000000, %5170
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5172, 4.000000e+00
  %5174 = fadd fast float %196, -5.000000e-01
  %5175 = fadd fast float %197, -5.000000e-01
  %5176 = fmul fast float %5172, 0x3FBEB851E0000000
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5177, %5174
  %5179 = fmul fast float %5177, %5175
  %5180 = fadd fast float %5153, %5178
  %5181 = fadd fast float %5154, %5179
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5180, float %5181, float undef, float undef, i32 0, i32 0, i32 undef, float %5173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 2
  %5188 = fmul fast float %5187, %5183
  %5189 = fmul fast float %5187, %5184
  %5190 = fmul fast float %5187, %5185
  %5191 = select i1 %183, float 0.000000e+00, float %5189
  %5192 = select i1 %183, float 0.000000e+00, float %5190
  %5193 = fmul fast float %5180, 2.000000e+00
  %5194 = fmul fast float %5181, 2.000000e+00
  %5195 = fadd fast float %5193, -1.000000e+00
  %5196 = fadd fast float %5194, -1.000000e+00
  %5197 = fmul fast float %5195, %5195
  %5198 = fsub fast float 1.000000e+00, %5197
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = fmul fast float %5200, %5027
  %5202 = fadd fast float %5201, %5199
  %5203 = fmul fast float %5196, %5196
  %5204 = fsub fast float 1.000000e+00, %5203
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = fmul fast float %5202, %5205
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = fmul fast float %5207, %5064
  br label %5209

; <label>:5209                                    ; preds = %5066, %5032, %4991
  %5210 = phi float [ %5188, %5066 ], [ 0.000000e+00, %5032 ], [ 0.000000e+00, %4991 ]
  %5211 = phi float [ %5191, %5066 ], [ 0.000000e+00, %5032 ], [ 0.000000e+00, %4991 ]
  %5212 = phi float [ %5192, %5066 ], [ 0.000000e+00, %5032 ], [ 0.000000e+00, %4991 ]
  %5213 = phi float [ %5208, %5066 ], [ 0.000000e+00, %5032 ], [ 0.000000e+00, %4991 ]
  %5214 = fcmp fast olt float %5213, 1.000000e+00
  %5215 = or i1 %5214, %4989
  %5216 = zext i1 %5215 to i32
  %5217 = fmul fast float %5213, %4974
  %5218 = fsub fast float %5213, %5217
  %5219 = fsub fast float 1.000000e+00, %4980
  %5220 = fmul fast float %5218, %5219
  %5221 = fadd fast float %5220, %4980
  %5222 = fsub fast float %5221, %5218
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = fmul fast float %5223, %4915
  %5225 = fmul fast float %5223, %4916
  %5226 = fmul fast float %5223, %4917
  %5227 = fsub fast float -0.000000e+00, %5221
  %5228 = fmul fast float %5218, %5210
  %5229 = fmul fast float %5218, %5211
  %5230 = fmul fast float %5218, %5212
  %5231 = fadd fast float %5228, %5224
  %5232 = fadd fast float %5229, %5225
  %5233 = fadd fast float %5230, %5226
  br label %5234

; <label>:5234                                    ; preds = %5209, %4982
  %5235 = phi float [ %4980, %4982 ], [ %5227, %5209 ]
  %5236 = phi float [ %4915, %4982 ], [ %5231, %5209 ]
  %5237 = phi float [ %4916, %4982 ], [ %5232, %5209 ]
  %5238 = phi float [ %4917, %4982 ], [ %5233, %5209 ]
  %5239 = phi i32 [ %4990, %4982 ], [ %5216, %5209 ]
  %5240 = icmp eq i32 %5239, 0
  br i1 %5240, label %5837, label %5241

; <label>:5241                                    ; preds = %5234
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5244 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5245 = fmul fast float %5243, %85
  %5246 = fmul fast float %5244, %86
  %5247 = fptoui float %5245 to i32
  %5248 = fptoui float %5246 to i32
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.CBufRet.f32 %5249, 2
  %5252 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5253 = fadd fast float %80, -4.000000e+00
  %5254 = call float @dx.op.binary.f32(i32 35, float %5253, float 0.000000e+00)  ; FMax(a,b)
  %5255 = fadd fast float %5254, %5250
  %5256 = fmul fast float %5255, %5251
  %5257 = call float @dx.op.unary.f32(i32 23, float %5256)  ; Log(value)
  %5258 = fmul fast float %5257, %5252
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 2
  %5261 = fmul fast float %5258, %5260
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.i32 %5263, 1
  %5265 = add i32 %5264, -1
  %5266 = uitofp i32 %5264 to float
  %5267 = fmul fast float %5266, %5262
  %5268 = fptoui float %5267 to i32
  %5269 = call i32 @dx.op.binary.i32(i32 40, i32 %5268, i32 %5265)  ; UMin(a,b)
  %5270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.i32 %5270, 2
  %5272 = extractvalue %dx.types.CBufRet.i32 %5270, 3
  %5273 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5248, i32 %5271, i32 %5247)  ; UMad(a,b,c)
  %5274 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5269, i32 %5272, i32 %5273)  ; UMad(a,b,c)
  %5275 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5276 = fptoui float %5275 to i32
  %5277 = lshr i32 %5276, 5
  %5278 = call i32 @dx.op.binary.i32(i32 40, i32 %5277, i32 8191)  ; UMin(a,b)
  %5279 = fcmp fast ogt float %4438, 0.000000e+00
  %5280 = fcmp fast ogt float %4666, 0.000000e+00
  %5281 = and i1 %5280, %5279
  br i1 %5281, label %5282, label %5311

; <label>:5282                                    ; preds = %5241
  %5283 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5283, float -1.000000e+00)  ; FMax(a,b)
  %5285 = call float @dx.op.binary.f32(i32 36, float %5284, float 1.000000e+00)  ; FMin(a,b)
  %5286 = fmul fast float %5285, %5285
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = fmul fast float %5287, 0x3FFC6E2300000000
  %5289 = fsub fast float 1.000000e+00, %5288
  %5290 = fcmp fast ogt float %5289, 0.000000e+00
  %5291 = call float @dx.op.unary.f32(i32 24, float %5289)  ; Sqrt(value)
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = call float @dx.op.unary.f32(i32 23, float %5292)  ; Log(value)
  %5294 = fmul fast float %5293, 5.000000e+00
  %5295 = call float @dx.op.unary.f32(i32 21, float %5294)  ; Exp(value)
  %5296 = fmul fast float %5295, 0x3FEF591A60000000
  %5297 = fadd fast float %5296, 0x3F94DCB540000000
  %5298 = select i1 %5290, float %5297, float 1.000000e+00
  %5299 = fcmp fast oge float %5298, 1.000000e+00
  %5300 = fmul fast float %5283, 2.000000e+00
  %5301 = fadd fast float %5300, %4666
  %5302 = select i1 %5299, float %5301, float %4666
  %5303 = fsub fast float %5302, %4666
  %5304 = fmul fast float %5303, %4438
  %5305 = fadd fast float %5304, %4666
  %5306 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %5305, float %4664, float %4665, float %5305)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = call float @dx.op.unary.f32(i32 25, float %5306)  ; Rsqrt(value)
  %5308 = fmul fast float %5307, %4664
  %5309 = fmul fast float %5307, %4665
  %5310 = fmul fast float %5305, %5307
  br label %5311

; <label>:5311                                    ; preds = %5282, %5241
  %5312 = phi float [ %5308, %5282 ], [ %4664, %5241 ]
  %5313 = phi float [ %5309, %5282 ], [ %4665, %5241 ]
  %5314 = phi float [ %5310, %5282 ], [ %4666, %5241 ]
  %5315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.i32 %5315, 2
  %5317 = add nsw i32 %5316, -1
  %5318 = call i32 @dx.op.binary.i32(i32 37, i32 %5317, i32 0)  ; IMax(a,b)
  %5319 = shl i32 %5278, 2
  %5320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5321 = extractvalue %dx.types.ResRet.i32 %5320, 0
  %5322 = lshr i32 %5321, 16
  %5323 = and i32 %5321, 65535
  %5324 = lshr i32 %5321, 21
  %5325 = lshr i32 %5323, 5
  %5326 = call i32 @dx.op.binary.i32(i32 40, i32 %5325, i32 %5318)  ; UMin(a,b)
  %5327 = icmp ugt i32 %5324, %5326
  br i1 %5327, label %5709, label %5328

; <label>:5328                                    ; preds = %5311
  br label %5329

; <label>:5329                                    ; preds = %5698, %5328
  %5330 = phi float [ %5699, %5698 ], [ 0.000000e+00, %5328 ]
  %5331 = phi float [ %5700, %5698 ], [ 0.000000e+00, %5328 ]
  %5332 = phi float [ %5701, %5698 ], [ 0.000000e+00, %5328 ]
  %5333 = phi float [ %5702, %5698 ], [ 1.000000e+00, %5328 ]
  %5334 = phi i32 [ %5706, %5698 ], [ %5324, %5328 ]
  %5335 = phi float [ %5703, %5698 ], [ 0.000000e+00, %5328 ]
  %5336 = phi float [ %5704, %5698 ], [ 0.000000e+00, %5328 ]
  %5337 = phi float [ %5705, %5698 ], [ 0.000000e+00, %5328 ]
  %5338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.i32 %5338, 2
  %5340 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5274, i32 %5339, i32 %5334)  ; UMad(a,b,c)
  %5341 = shl i32 %5340, 2
  %5342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5341, i32 undef)  ; BufferLoad(srv,index,wot)
  %5343 = extractvalue %dx.types.ResRet.i32 %5342, 0
  %5344 = shl i32 %5334, 5
  %5345 = sub nsw i32 %5322, %5344
  %5346 = call i32 @dx.op.binary.i32(i32 37, i32 %5345, i32 0)  ; IMax(a,b)
  %5347 = call i32 @dx.op.binary.i32(i32 38, i32 %5346, i32 31)  ; IMin(a,b)
  %5348 = sub nsw i32 1, %5322
  %5349 = add nsw i32 %5348, %5323
  %5350 = call i32 @dx.op.binary.i32(i32 37, i32 %5349, i32 0)  ; IMax(a,b)
  %5351 = call i32 @dx.op.binary.i32(i32 38, i32 %5350, i32 32)  ; IMin(a,b)
  %5352 = and i32 %5351, 31
  %5353 = shl i32 -1, %5352
  %5354 = xor i32 %5353, -1
  %5355 = and i32 %5347, 31
  %5356 = shl i32 %5354, %5355
  %5357 = icmp eq i32 %5351, 32
  %5358 = select i1 %5357, i32 -1, i32 %5356
  %5359 = and i32 %5358, %5343
  %5360 = icmp eq i32 %5359, 0
  br i1 %5360, label %5698, label %5361

; <label>:5361                                    ; preds = %5329
  br label %5362

; <label>:5362                                    ; preds = %5472, %5361
  %5363 = phi float [ %5473, %5472 ], [ %5330, %5361 ]
  %5364 = phi float [ %5474, %5472 ], [ %5331, %5361 ]
  %5365 = phi float [ %5475, %5472 ], [ %5332, %5361 ]
  %5366 = phi float [ %5476, %5472 ], [ %5333, %5361 ]
  %5367 = phi i32 [ %5375, %5472 ], [ %5359, %5361 ]
  %5368 = phi float [ %5477, %5472 ], [ %5335, %5361 ]
  %5369 = phi float [ %5478, %5472 ], [ %5336, %5361 ]
  %5370 = phi float [ %5479, %5472 ], [ %5337, %5361 ]
  %5371 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5367)  ; FirstbitLo(value)
  %5372 = add i32 %5371, %5344
  %5373 = and i32 %5371, 31
  %5374 = shl i32 1, %5373
  %5375 = xor i32 %5374, %5367
  %5376 = mul i32 %5372, 72
  %5377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = add i32 %5376, 12
  %5382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.i32 %5382, 0
  %5384 = add i32 %5376, 16
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = add i32 %5376, 28
  %5390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = add i32 %5376, 32
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.ResRet.f32 %5393, 2
  %5397 = extractvalue %dx.types.ResRet.f32 %5393, 3
  %5398 = add i32 %5376, 48
  %5399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.ResRet.f32 %5399, 1
  %5402 = add i32 %5376, 56
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.ResRet.f32 %5403, 1
  %5406 = add i32 %5376, 64
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = mul i32 %5372, 60
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.ResRet.f32 %5411, 2
  %5415 = add i32 %5410, 12
  %5416 = add i32 %5410, 48
  %5417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.ResRet.f32 %5417, 2
  %5421 = and i32 %5383, 32767
  %5422 = bitcast float %5378 to i32
  %5423 = icmp eq i32 %5422, -1
  %5424 = bitcast float %5379 to i32
  %5425 = and i32 %5383, 32768
  %5426 = icmp ne i32 %5425, 0
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5431 = fsub fast float %5412, %5428
  %5432 = fsub fast float %5413, %5429
  %5433 = fsub fast float %5414, %5430
  %5434 = fsub fast float %141, %5431
  %5435 = fsub fast float %142, %5432
  %5436 = fsub fast float %143, %5433
  %5437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.ResRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.ResRet.f32 %5437, 2
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = add i32 %5410, 24
  %5443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.ResRet.f32 %5443, 2
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = add i32 %5410, 36
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = call float @dx.op.unary.f32(i32 6, float %5441)  ; FAbs(value)
  %5455 = call float @dx.op.unary.f32(i32 6, float %5447)  ; FAbs(value)
  %5456 = call float @dx.op.unary.f32(i32 6, float %5453)  ; FAbs(value)
  %5457 = fsub fast float %5418, %5454
  %5458 = fsub fast float %5419, %5455
  %5459 = fsub fast float %5420, %5456
  %5460 = fmul fast float %5457, %5386
  %5461 = fmul fast float %5458, %5387
  %5462 = fmul fast float %5459, %5388
  %5463 = call float @dx.op.binary.f32(i32 36, float %5461, float %5462)  ; FMin(a,b)
  %5464 = call float @dx.op.binary.f32(i32 36, float %5460, float %5463)  ; FMin(a,b)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = call float @dx.op.binary.f32(i32 36, float %5366, float %5465)  ; FMin(a,b)
  %5467 = uitofp i1 %5426 to float
  %5468 = fadd fast float %4438, 1.000000e+00
  %5469 = fsub fast float %5468, %5467
  %5470 = fmul fast float %5466, %5469
  %5471 = fcmp fast ogt float %5470, 0.000000e+00
  br i1 %5471, label %5481, label %5472

; <label>:5472                                    ; preds = %5623, %5362
  %5473 = phi float [ %5687, %5623 ], [ %5363, %5362 ]
  %5474 = phi float [ %5688, %5623 ], [ %5364, %5362 ]
  %5475 = phi float [ %5689, %5623 ], [ %5365, %5362 ]
  %5476 = phi float [ %5696, %5623 ], [ %5366, %5362 ]
  %5477 = phi float [ %5693, %5623 ], [ %5368, %5362 ]
  %5478 = phi float [ %5694, %5623 ], [ %5369, %5362 ]
  %5479 = phi float [ %5695, %5623 ], [ %5370, %5362 ]
  %5480 = icmp eq i32 %5367, %5374
  br i1 %5480, label %5697, label %5362

; <label>:5481                                    ; preds = %5362
  br i1 %5423, label %5539, label %5482

; <label>:5482                                    ; preds = %5481
  %5483 = fsub fast float -0.000000e+00, %5438
  %5484 = fsub fast float -0.000000e+00, %5439
  %5485 = fsub fast float -0.000000e+00, %5440
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fsub fast float -0.000000e+00, %5486
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fadd fast float %5488, %5401
  %5490 = fadd fast float %5400, %5488
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = fcmp ogt float %5486, -0.000000e+00
  %5493 = select i1 %5492, float %5491, float %5489
  %5494 = call float @dx.op.unary.f32(i32 6, float %5487)  ; FAbs(value)
  %5495 = fdiv fast float 1.000000e+00, %5494
  %5496 = fmul fast float %5493, %5495
  %5497 = call float @dx.op.binary.f32(i32 35, float %5496, float 0.000000e+00)  ; FMax(a,b)
  %5498 = fsub fast float -0.000000e+00, %5444
  %5499 = fsub fast float -0.000000e+00, %5445
  %5500 = fsub fast float -0.000000e+00, %5446
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fsub fast float -0.000000e+00, %5501
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fadd fast float %5503, %5405
  %5505 = fadd fast float %5404, %5503
  %5506 = fsub fast float -0.000000e+00, %5505
  %5507 = fcmp ogt float %5501, -0.000000e+00
  %5508 = select i1 %5507, float %5506, float %5504
  %5509 = call float @dx.op.unary.f32(i32 6, float %5502)  ; FAbs(value)
  %5510 = fdiv fast float 1.000000e+00, %5509
  %5511 = fmul fast float %5508, %5510
  %5512 = call float @dx.op.binary.f32(i32 35, float %5511, float 0.000000e+00)  ; FMax(a,b)
  %5513 = fsub fast float -0.000000e+00, %5450
  %5514 = fsub fast float -0.000000e+00, %5451
  %5515 = fsub fast float -0.000000e+00, %5452
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fsub fast float -0.000000e+00, %5516
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = fadd fast float %5518, %5409
  %5520 = fadd fast float %5408, %5518
  %5521 = fsub fast float -0.000000e+00, %5520
  %5522 = fcmp ogt float %5516, -0.000000e+00
  %5523 = select i1 %5522, float %5521, float %5519
  %5524 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5525 = fdiv fast float 1.000000e+00, %5524
  %5526 = fmul fast float %5523, %5525
  %5527 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5528 = call float @dx.op.binary.f32(i32 36, float %5512, float %5527)  ; FMin(a,b)
  %5529 = call float @dx.op.binary.f32(i32 36, float %5497, float %5528)  ; FMin(a,b)
  %5530 = fmul fast float %5529, %5312
  %5531 = fmul fast float %5529, %5313
  %5532 = fmul fast float %5529, %5314
  %5533 = fadd fast float %5530, %141
  %5534 = fadd fast float %5531, %142
  %5535 = fadd fast float %5532, %143
  %5536 = fsub fast float %5533, %5378
  %5537 = fsub fast float %5534, %5379
  %5538 = fsub fast float %5535, %5380
  br label %5546

; <label>:5539                                    ; preds = %5481
  %5540 = fmul fast float %5312, 8.096000e+03
  %5541 = fmul fast float %5313, 8.096000e+03
  %5542 = fmul fast float %5314, 8.096000e+03
  %5543 = fadd fast float %5540, %141
  %5544 = fadd fast float %5541, %142
  %5545 = fadd fast float %5542, %143
  br label %5546

; <label>:5546                                    ; preds = %5539, %5482
  %5547 = phi float [ %5312, %5539 ], [ %5536, %5482 ]
  %5548 = phi float [ %5313, %5539 ], [ %5537, %5482 ]
  %5549 = phi float [ %5314, %5539 ], [ %5538, %5482 ]
  %5550 = phi float [ %5543, %5539 ], [ %5533, %5482 ]
  %5551 = phi float [ %5544, %5539 ], [ %5534, %5482 ]
  %5552 = phi float [ %5545, %5539 ], [ %5535, %5482 ]
  %5553 = fcmp fast olt float %5397, 1.000000e+00
  br i1 %5553, label %5554, label %5585, !dx.controlflow.hints !87

; <label>:5554                                    ; preds = %5546
  %5555 = fmul fast float %5549, %5395
  %5556 = fmul fast float %5548, %5396
  %5557 = fsub fast float %5555, %5556
  %5558 = fmul fast float %5547, %5396
  %5559 = fmul fast float %5549, %5394
  %5560 = fsub fast float %5558, %5559
  %5561 = fmul fast float %5548, %5394
  %5562 = fmul fast float %5547, %5395
  %5563 = fsub fast float %5561, %5562
  %5564 = fmul fast float %5557, 2.000000e+00
  %5565 = fmul fast float %5560, 2.000000e+00
  %5566 = fmul fast float %5563, 2.000000e+00
  %5567 = fmul fast float %5564, %5397
  %5568 = fmul fast float %5565, %5397
  %5569 = fmul fast float %5566, %5397
  %5570 = fmul fast float %5566, %5395
  %5571 = fmul fast float %5565, %5396
  %5572 = fmul fast float %5564, %5396
  %5573 = fmul fast float %5566, %5394
  %5574 = fmul fast float %5565, %5394
  %5575 = fmul fast float %5564, %5395
  %5576 = fadd fast float %5570, %5547
  %5577 = fadd fast float %5576, %5567
  %5578 = fsub fast float %5577, %5571
  %5579 = fsub fast float %5548, %5573
  %5580 = fadd fast float %5579, %5568
  %5581 = fadd fast float %5580, %5572
  %5582 = fadd fast float %5569, %5549
  %5583 = fsub fast float %5582, %5575
  %5584 = fadd fast float %5583, %5574
  br label %5585

; <label>:5585                                    ; preds = %5554, %5546
  %5586 = phi float [ %5578, %5554 ], [ %5547, %5546 ]
  %5587 = phi float [ %5581, %5554 ], [ %5548, %5546 ]
  %5588 = phi float [ %5584, %5554 ], [ %5549, %5546 ]
  br i1 %5423, label %5620, label %5589

; <label>:5589                                    ; preds = %5585
  %5590 = fmul fast float %4639, 0x400187C840000000
  %5591 = fadd fast float %5590, 0xC00EFC2120000000
  %5592 = fmul fast float %5591, %4639
  %5593 = fadd fast float %5592, 0x3FE5D16340000000
  %5594 = fmul fast float %5593, %4639
  %5595 = fadd fast float %5594, 1.000000e+00
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fsub fast float %5550, %141
  %5598 = fsub fast float %5551, %142
  %5599 = fsub fast float %5552, %143
  %5600 = fsub fast float %5550, %5378
  %5601 = fsub fast float %5551, %5379
  %5602 = fsub fast float %5552, %5380
  %5603 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5600, float %5601, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fadd fast float %5604, 0x3EE4F8B580000000
  %5606 = fdiv fast float %5603, %5605
  %5607 = bitcast float %5606 to i32
  %5608 = ashr i32 %5607, 1
  %5609 = add nsw i32 %5608, 532487669
  %5610 = bitcast i32 %5609 to float
  %5611 = fmul fast float %5610, %5596
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5612, 0x4009981AE0000000
  %5614 = fsub fast float 0x40111BBD80000000, %5613
  %5615 = fmul fast float %5614, %5612
  %5616 = fadd fast float %5615, 0xC0009F6020000000
  %5617 = fmul fast float %5616, %5612
  %5618 = fadd fast float %5617, 1.000000e+00
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  br label %5623

; <label>:5620                                    ; preds = %5585
  %5621 = icmp ne i32 %5424, -1
  %5622 = zext i1 %5621 to i32
  br label %5623

; <label>:5623                                    ; preds = %5620, %5589
  %5624 = phi float [ %4639, %5620 ], [ %5619, %5589 ]
  %5625 = phi i32 [ %5622, %5620 ], [ 0, %5589 ]
  %5626 = fmul float %5624, 5.000000e+00
  %5627 = fsub float 5.000000e+00, %5626
  %5628 = icmp ne i32 %5625, 0
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5631 = fadd fast float %5630, %5627
  %5632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5631)  ; FMax(a,b)
  %5633 = call float @dx.op.unary.f32(i32 6, float %5586)  ; FAbs(value)
  %5634 = call float @dx.op.unary.f32(i32 6, float %5587)  ; FAbs(value)
  %5635 = fadd fast float %5634, %5633
  %5636 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5637 = fadd fast float %5635, %5636
  %5638 = fcmp fast oeq float %5637, 0.000000e+00
  %5639 = fdiv fast float 1.000000e+00, %5637
  %5640 = select i1 %5638, float 1.000000e+00, float %5639
  %5641 = fmul fast float %5640, %5586
  %5642 = fmul fast float %5640, %5587
  %5643 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5644 = call float @dx.op.unary.f32(i32 6, float %5641)  ; FAbs(value)
  %5645 = fsub fast float 1.000000e+00, %5643
  %5646 = fsub fast float 1.000000e+00, %5644
  %5647 = fcmp fast oge float %5641, 0.000000e+00
  %5648 = fcmp fast oge float %5642, 0.000000e+00
  %5649 = select i1 %5647, float 1.000000e+00, float -1.000000e+00
  %5650 = select i1 %5648, float 1.000000e+00, float -1.000000e+00
  %5651 = fcmp fast ole float %5588, 0.000000e+00
  %5652 = fmul fast float %5649, %5645
  %5653 = fmul fast float %5650, %5646
  %5654 = select i1 %5651, float %5652, float %5641
  %5655 = select i1 %5651, float %5653, float %5642
  %5656 = fmul fast float %5654, 5.000000e-01
  %5657 = fmul fast float %5655, 5.000000e-01
  %5658 = fadd fast float %5656, 5.000000e-01
  %5659 = fadd fast float %5657, 5.000000e-01
  %5660 = uitofp i32 %5421 to float
  %5661 = call float @dx.op.binary.f32(i32 36, float %5632, float 3.000000e+00)  ; FMin(a,b)
  %5662 = fadd fast float %5661, 2.000000e+00
  %5663 = call float @dx.op.unary.f32(i32 21, float %5662)  ; Exp(value)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5665 = fmul fast float %5664, %5663
  %5666 = fmul fast float %5665, 2.000000e+00
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = fmul fast float %5658, %5667
  %5669 = fmul fast float %5659, %5667
  %5670 = fadd fast float %5668, %5665
  %5671 = fadd fast float %5669, %5665
  %5672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5670, float %5671, float %5660, float undef, i32 0, i32 0, i32 undef, float %5632)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 3
  %5678 = fmul fast float %5677, %5391
  %5679 = call float @dx.op.binary.f32(i32 36, float %4685, float %5678)  ; FMin(a,b)
  %5680 = select i1 %5628, float %5679, float %5678
  %5681 = fmul fast float %5673, %5470
  %5682 = fmul fast float %5681, %5680
  %5683 = fmul fast float %5674, %5470
  %5684 = fmul fast float %5683, %5680
  %5685 = fmul fast float %5675, %5470
  %5686 = fmul fast float %5685, %5680
  %5687 = fadd fast float %5682, %5363
  %5688 = fadd fast float %5684, %5364
  %5689 = fadd fast float %5686, %5365
  %5690 = fmul fast float %5550, %5470
  %5691 = fmul fast float %5551, %5470
  %5692 = fmul fast float %5552, %5470
  %5693 = fadd fast float %5690, %5368
  %5694 = fadd fast float %5691, %5369
  %5695 = fadd fast float %5692, %5370
  %5696 = fsub fast float %5366, %5470
  br label %5472

; <label>:5697                                    ; preds = %5472
  br label %5698

; <label>:5698                                    ; preds = %5697, %5329
  %5699 = phi float [ %5330, %5329 ], [ %5473, %5697 ]
  %5700 = phi float [ %5331, %5329 ], [ %5474, %5697 ]
  %5701 = phi float [ %5332, %5329 ], [ %5475, %5697 ]
  %5702 = phi float [ %5333, %5329 ], [ %5476, %5697 ]
  %5703 = phi float [ %5335, %5329 ], [ %5477, %5697 ]
  %5704 = phi float [ %5336, %5329 ], [ %5478, %5697 ]
  %5705 = phi float [ %5337, %5329 ], [ %5479, %5697 ]
  %5706 = add i32 %5334, 1
  %5707 = icmp ugt i32 %5706, %5326
  br i1 %5707, label %5708, label %5329, !llvm.loop !88

; <label>:5708                                    ; preds = %5698
  br label %5709

; <label>:5709                                    ; preds = %5708, %5311
  %5710 = phi float [ 0.000000e+00, %5311 ], [ %5699, %5708 ]
  %5711 = phi float [ 0.000000e+00, %5311 ], [ %5700, %5708 ]
  %5712 = phi float [ 0.000000e+00, %5311 ], [ %5701, %5708 ]
  %5713 = phi float [ 0.000000e+00, %5311 ], [ %5703, %5708 ]
  %5714 = phi float [ 0.000000e+00, %5311 ], [ %5704, %5708 ]
  %5715 = phi float [ 0.000000e+00, %5311 ], [ %5705, %5708 ]
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = select i1 %183, float 0.000000e+00, float %5710
  %5718 = select i1 %183, float %5716, float %5711
  %5719 = select i1 %183, float 0.000000e+00, float %5712
  %5720 = fcmp fast olt float %5235, 0.000000e+00
  %5721 = call float @dx.op.unary.f32(i32 6, float %5235)  ; FAbs(value)
  %5722 = fmul fast float %5721, %5236
  %5723 = fmul fast float %5721, %5237
  %5724 = fmul fast float %5721, %5238
  %5725 = select i1 %5720, float %5236, float %5722
  %5726 = select i1 %5720, float %5237, float %5723
  %5727 = select i1 %5720, float %5238, float %5724
  %5728 = fsub fast float 1.000000e+00, %5721
  %5729 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5730 = fmul fast float %5729, %5717
  %5731 = fmul fast float %5729, %5718
  %5732 = fmul fast float %5729, %5719
  %5733 = fadd fast float %5725, %5730
  %5734 = fadd fast float %5726, %5731
  %5735 = fadd fast float %5727, %5732
  %5736 = fcmp fast une float %4985, 0.000000e+00
  br i1 %5736, label %5837, label %5737

; <label>:5737                                    ; preds = %5709
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = extractvalue %dx.types.CBufRet.f32 %5738, 3
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5752 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5749, float %5750, float %5751)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5749, float %5750, float %5751)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = fadd fast float %4639, -1.000000e+00
  %5757 = fsub fast float %5754, %5755
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5760 = fmul fast float %5759, %5754
  %5761 = fdiv fast float 1.600000e+02, %5760
  %5762 = fmul fast float %5756, %5756
  %5763 = fmul fast float %5762, 0xBFB5B17960000000
  %5764 = fmul fast float %5763, %5757
  %5765 = fmul fast float %5764, %5761
  %5766 = call float @dx.op.unary.f32(i32 21, float %5765)  ; Exp(value)
  %5767 = fmul fast float %5766, 0x3FF04B2960000000
  %5768 = fsub fast float 0x3FF04B2960000000, %5767
  %5769 = call float @dx.op.unary.f32(i32 7, float %5768)  ; Saturate(value)
  %5770 = fmul fast float %5769, 4.000000e+00
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 0
  %5773 = extractvalue %dx.types.CBufRet.f32 %5771, 1
  %5774 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5775 = fadd fast float %5772, %5713
  %5776 = fadd fast float %5773, %5714
  %5777 = fadd fast float %5774, %5715
  %5778 = fmul fast float %5775, %5739
  %5779 = call float @dx.op.tertiary.f32(i32 46, float %5776, float %5740, float %5778)  ; FMad(a,b,c)
  %5780 = call float @dx.op.tertiary.f32(i32 46, float %5777, float %5741, float %5779)  ; FMad(a,b,c)
  %5781 = fadd fast float %5780, %5742
  %5782 = fmul fast float %5775, %5744
  %5783 = call float @dx.op.tertiary.f32(i32 46, float %5776, float %5745, float %5782)  ; FMad(a,b,c)
  %5784 = call float @dx.op.tertiary.f32(i32 46, float %5777, float %5746, float %5783)  ; FMad(a,b,c)
  %5785 = fadd fast float %5784, %5747
  %5786 = fmul fast float %5775, %5749
  %5787 = call float @dx.op.tertiary.f32(i32 46, float %5776, float %5750, float %5786)  ; FMad(a,b,c)
  %5788 = call float @dx.op.tertiary.f32(i32 46, float %5777, float %5751, float %5787)  ; FMad(a,b,c)
  %5789 = fadd fast float %5788, %5752
  %5790 = fdiv fast float %5781, %5789
  %5791 = fdiv fast float %5785, %5789
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = fmul fast float %5793, %5790
  %5796 = fmul fast float %5794, %5791
  %5797 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5798 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5799 = fadd fast float %5795, %5797
  %5800 = fadd fast float %5796, %5798
  %5801 = fmul fast float %5753, 8.000000e+00
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = fmul fast float %5799, 2.000000e+00
  %5804 = fmul fast float %5800, 2.000000e+00
  %5805 = fadd fast float %5803, -1.000000e+00
  %5806 = fadd fast float %5804, -1.000000e+00
  %5807 = fmul fast float %5805, %5805
  %5808 = fsub fast float 1.000000e+00, %5807
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = fmul fast float %5806, %5806
  %5811 = fsub fast float 1.000000e+00, %5810
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = fmul fast float %4985, %5809
  %5814 = fmul fast float %5813, %5812
  %5815 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5816 = fmul fast float %5815, %5802
  %5817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5799, float %5800, float undef, float undef, i32 0, i32 0, i32 undef, float %5770)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5818 = extractvalue %dx.types.ResRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.ResRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.ResRet.f32 %5817, 2
  %5821 = select i1 %183, float 0.000000e+00, float %5819
  %5822 = select i1 %183, float 0.000000e+00, float %5820
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5825 = fmul fast float %5824, %5818
  %5826 = fmul fast float %5821, %5824
  %5827 = fmul fast float %5822, %5824
  %5828 = fsub fast float %5825, %5717
  %5829 = fsub fast float %5826, %5718
  %5830 = fsub fast float %5827, %5719
  %5831 = fmul fast float %5828, %5816
  %5832 = fmul fast float %5829, %5816
  %5833 = fmul fast float %5830, %5816
  %5834 = fadd fast float %5831, %5717
  %5835 = fadd fast float %5832, %5718
  %5836 = fadd fast float %5833, %5719
  br label %5837

; <label>:5837                                    ; preds = %5737, %5709, %5234, %4958
  %5838 = phi float [ %5236, %5234 ], [ %5733, %5709 ], [ %4915, %4958 ], [ %5834, %5737 ]
  %5839 = phi float [ %5237, %5234 ], [ %5734, %5709 ], [ %4916, %4958 ], [ %5835, %5737 ]
  %5840 = phi float [ %5238, %5234 ], [ %5735, %5709 ], [ %4917, %4958 ], [ %5836, %5737 ]
  %5841 = fmul fast float %4964, %4911
  %5842 = fmul fast float %4964, %4912
  %5843 = fmul fast float %4964, %4913
  %5844 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = fcmp fast ogt float %5844, 0x3E7FF19E20000000
  %5846 = fdiv fast float 1.000000e+00, %5844
  %5847 = select i1 %5845, float %5846, float 0.000000e+00
  %5848 = fmul fast float %5847, %4630
  %5849 = fmul fast float %5847, %4631
  %5850 = fmul fast float %5847, %4632
  %5851 = fadd fast float %5848, -1.000000e+00
  %5852 = fadd fast float %5849, -1.000000e+00
  %5853 = fadd fast float %5850, -1.000000e+00
  %5854 = fmul fast float %5851, 5.000000e-01
  %5855 = fmul fast float %5852, 5.000000e-01
  %5856 = fmul fast float %5853, 5.000000e-01
  %5857 = fadd fast float %5854, 1.000000e+00
  %5858 = fadd fast float %5855, 1.000000e+00
  %5859 = fadd fast float %5856, 1.000000e+00
  %5860 = fmul fast float %5838, %4959
  %5861 = fmul fast float %5839, %4960
  %5862 = fmul fast float %5840, %4961
  %5863 = fsub fast float 1.000000e+00, %4658
  %5864 = bitcast float %5863 to i32
  %5865 = sitofp i32 %5864 to float
  %5866 = fmul fast float %5865, 5.000000e+00
  %5867 = fadd fast float %5866, 0xC1EFBF8940000000
  %5868 = fptosi float %5867 to i32
  %5869 = bitcast i32 %5868 to float
  %5870 = fmul fast float %5869, %4029
  %5871 = fmul fast float %4911, %5870
  %5872 = fmul fast float %5871, %4964
  %5873 = fmul fast float %5872, %5857
  %5874 = fmul fast float %4912, %5870
  %5875 = fmul fast float %5874, %4964
  %5876 = fmul fast float %5875, %5858
  %5877 = fmul fast float %4913, %5870
  %5878 = fmul fast float %5877, %4964
  %5879 = fmul fast float %5878, %5859
  %5880 = fmul fast float %5841, %4025
  %5881 = fmul fast float %5842, %4025
  %5882 = fmul fast float %5843, %4025
  %5883 = fadd fast float %5860, %4021
  %5884 = fadd fast float %5883, %5873
  %5885 = fmul fast float %5884, %4025
  %5886 = fadd fast float %5861, %4022
  %5887 = fadd fast float %5886, %5876
  %5888 = fmul fast float %5887, %4025
  %5889 = fadd fast float %5862, %4023
  %5890 = fadd fast float %5889, %5879
  %5891 = fmul fast float %5890, %4025
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 3
  %5894 = fcmp fast oeq float %5893, 0.000000e+00
  br i1 %5894, label %6113, label %5895

; <label>:5895                                    ; preds = %5837
  %5896 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5897 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5898 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5899, 2
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = select i1 %183, float %5904, float %5900
  %5908 = select i1 %183, float %5906, float %5901
  %5909 = select i1 %183, float %5905, float %5902
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5912 = fcmp fast une float %5911, 0.000000e+00
  br i1 %5912, label %5913, label %5930

; <label>:5913                                    ; preds = %5895
  %5914 = fptoui float %85 to i32
  %5915 = fptoui float %86 to i32
  %5916 = lshr i32 %5914, 4
  %5917 = lshr i32 %5915, 4
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = fptoui float %5919 to i32
  %5921 = add i32 %5920, 15
  %5922 = lshr i32 %5921, 4
  %5923 = mul i32 %5922, %5917
  %5924 = add i32 %5923, %5916
  %5925 = shl i32 %5924, 3
  %5926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.i32 %5926, 0
  %5928 = and i32 %5927, -268435456
  %5929 = icmp eq i32 %5928, -1342177280
  br i1 %5929, label %5935, label %5930

; <label>:5930                                    ; preds = %5913, %5895
  %5931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4644, float %4645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5932 = extractvalue %dx.types.ResRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.ResRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.ResRet.f32 %5931, 2
  br label %5935

; <label>:5935                                    ; preds = %5930, %5913
  %5936 = phi float [ %5932, %5930 ], [ 0.000000e+00, %5913 ]
  %5937 = phi float [ %5933, %5930 ], [ 0.000000e+00, %5913 ]
  %5938 = phi float [ %5934, %5930 ], [ 0.000000e+00, %5913 ]
  %5939 = call float @dx.op.binary.f32(i32 36, float %5937, float %5938)  ; FMin(a,b)
  %5940 = call float @dx.op.binary.f32(i32 36, float %5936, float %5939)  ; FMin(a,b)
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  br i1 %5941, label %5942, label %6113, !dx.controlflow.hints !90

; <label>:5942                                    ; preds = %5935
  %5943 = fmul fast float %5936, %5907
  %5944 = fmul fast float %5937, %5908
  %5945 = fmul fast float %5938, %5909
  %5946 = fsub fast float %5896, %4629
  %5947 = fsub fast float %5897, %4628
  %5948 = fsub fast float %5898, %4627
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5946, float %5947, float %5948, float %5946, float %5947, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = call float @dx.op.unary.f32(i32 25, float %5949)  ; Rsqrt(value)
  %5951 = fmul fast float %5950, %5946
  %5952 = fmul fast float %5950, %5947
  %5953 = fmul fast float %5950, %5948
  %5954 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4625, float %4624, float %5951, float %5952, float %5953)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5957 = fmul fast float %5956, %5956
  %5958 = fmul fast float %5957, %4683
  %5959 = call float @dx.op.unary.f32(i32 7, float %5958)  ; Saturate(value)
  %5960 = fmul fast float %5959, %5956
  %5961 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %5951, float %5952, float %5953)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = fmul fast float %5961, %5961
  %5963 = call float @dx.op.unary.f32(i32 6, float %5954)  ; FAbs(value)
  %5964 = fsub fast float 1.000000e+00, %4676
  %5965 = fmul fast float %4658, %4658
  %5966 = fmul fast float %5965, %5964
  %5967 = fadd fast float %5966, %4676
  %5968 = bitcast float %5967 to i32
  %5969 = ashr i32 %5968, 1
  %5970 = add nsw i32 %5969, 532487669
  %5971 = bitcast i32 %5970 to float
  %5972 = fadd fast float %5971, %4658
  %5973 = fmul fast float %4676, %5962
  %5974 = fsub fast float 1.000000e+00, %5962
  %5975 = fadd fast float %5974, %5973
  %5976 = fmul fast float %5963, %5963
  %5977 = fmul fast float %5976, %5964
  %5978 = fadd fast float %5977, %4676
  %5979 = bitcast float %5978 to i32
  %5980 = ashr i32 %5979, 1
  %5981 = add nsw i32 %5980, 532487669
  %5982 = bitcast i32 %5981 to float
  %5983 = fadd fast float %5982, %5963
  %5984 = fmul fast float %5975, %5975
  %5985 = fmul fast float %5984, %5972
  %5986 = fmul fast float %5985, %5983
  %5987 = fdiv fast float 0x3FF0A00000000000, %5986
  %5988 = fmul fast float %5987, %4676
  %5989 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5990 = fsub fast float 1.000000e+00, %5989
  %5991 = bitcast float %5990 to i32
  %5992 = sitofp i32 %5991 to float
  %5993 = fmul fast float %5992, 5.000000e+00
  %5994 = fadd fast float %5993, 0xC1EFBF8940000000
  %5995 = fptosi float %5994 to i32
  %5996 = bitcast i32 %5995 to float
  %5997 = fsub fast float 1.000000e+00, %4633
  %5998 = fsub fast float 1.000000e+00, %4634
  %5999 = fsub fast float 1.000000e+00, %4656
  %6000 = fmul fast float %5996, %5997
  %6001 = fmul fast float %5996, %5998
  %6002 = fmul fast float %5996, %5999
  %6003 = fadd fast float %6000, %4633
  %6004 = fadd fast float %6001, %4634
  %6005 = fadd fast float %6002, %4656
  br i1 %4931, label %6006, label %6029

; <label>:6006                                    ; preds = %5942
  %6007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4028, float %5989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6011 = fadd fast float %6008, -5.000000e-01
  %6012 = fadd fast float %6009, -5.000000e-01
  %6013 = fadd fast float %6010, -5.000000e-01
  %6014 = fmul fast float %4633, 4.000000e+00
  %6015 = fmul fast float %6014, %5997
  %6016 = fmul fast float %6015, %6011
  %6017 = fmul fast float %4634, 4.000000e+00
  %6018 = fmul fast float %6017, %5998
  %6019 = fmul fast float %6018, %6012
  %6020 = fmul fast float %4656, 4.000000e+00
  %6021 = fmul fast float %6020, %5999
  %6022 = fmul fast float %6021, %6013
  %6023 = fadd fast float %6016, %6003
  %6024 = fadd fast float %6019, %6004
  %6025 = fadd fast float %6022, %6005
  %6026 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6027 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  br label %6029

; <label>:6029                                    ; preds = %6006, %5942
  %6030 = phi float [ %6026, %6006 ], [ %6003, %5942 ]
  %6031 = phi float [ %6027, %6006 ], [ %6004, %5942 ]
  %6032 = phi float [ %6028, %6006 ], [ %6005, %5942 ]
  %6033 = fmul fast float %5954, 9.843750e-01
  %6034 = fadd fast float %6033, 7.812500e-03
  %6035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6034, float %4921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6036 = extractvalue %dx.types.ResRet.f32 %6035, 2
  %6037 = extractvalue %dx.types.ResRet.f32 %6035, 3
  %6038 = fmul fast float %6036, %4633
  %6039 = fmul fast float %6036, %4634
  %6040 = fmul fast float %6036, %4656
  %6041 = fadd fast float %6038, %6037
  %6042 = fadd fast float %6039, %6037
  %6043 = fadd fast float %6040, %6037
  br i1 %4931, label %6044, label %6067

; <label>:6044                                    ; preds = %6029
  %6045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4028, float %5954, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  %6049 = fadd fast float %6046, -5.000000e-01
  %6050 = fadd fast float %6047, -5.000000e-01
  %6051 = fadd fast float %6048, -5.000000e-01
  %6052 = fmul fast float %4633, 4.000000e+00
  %6053 = fmul fast float %6052, %5997
  %6054 = fmul fast float %6053, %6049
  %6055 = fmul fast float %4634, 4.000000e+00
  %6056 = fmul fast float %6055, %5998
  %6057 = fmul fast float %6056, %6050
  %6058 = fmul fast float %4656, 4.000000e+00
  %6059 = fmul fast float %6058, %5999
  %6060 = fmul fast float %6059, %6051
  %6061 = fadd fast float %6054, %6041
  %6062 = fadd fast float %6057, %6042
  %6063 = fadd fast float %6060, %6043
  %6064 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6065 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  br label %6067

; <label>:6067                                    ; preds = %6044, %6029
  %6068 = phi float [ %6064, %6044 ], [ %6041, %6029 ]
  %6069 = phi float [ %6065, %6044 ], [ %6042, %6029 ]
  %6070 = phi float [ %6066, %6044 ], [ %6043, %6029 ]
  %6071 = call float @dx.op.binary.f32(i32 35, float %6069, float %6070)  ; FMax(a,b)
  %6072 = call float @dx.op.binary.f32(i32 35, float %6068, float %6071)  ; FMax(a,b)
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = fmul fast float %6030, %5988
  %6075 = fmul fast float %6031, %5988
  %6076 = fmul fast float %6032, %5988
  %6077 = fsub fast float 1.000000e+00, %5955
  %6078 = bitcast float %6077 to i32
  %6079 = sitofp i32 %6078 to float
  %6080 = fmul fast float %6079, 5.000000e+00
  %6081 = fadd fast float %6080, 0xC1EFBF8940000000
  %6082 = fptosi float %6081 to i32
  %6083 = bitcast i32 %6082 to float
  %6084 = fmul fast float %6083, %4029
  %6085 = fmul fast float %6073, %6084
  %6086 = fmul fast float %6085, %5857
  %6087 = fmul fast float %6085, %5858
  %6088 = fmul fast float %6085, %5859
  %6089 = fadd fast float %6086, %6074
  %6090 = fadd fast float %6087, %6075
  %6091 = fadd fast float %6088, %6076
  %6092 = fmul fast float %5960, %5943
  %6093 = fmul fast float %6092, %6073
  %6094 = fmul fast float %5960, %5944
  %6095 = fmul fast float %6094, %6073
  %6096 = fmul fast float %5960, %5945
  %6097 = fmul fast float %6096, %6073
  %6098 = fmul fast float %6092, %6089
  %6099 = fmul fast float %6094, %6090
  %6100 = fmul fast float %6096, %6091
  %6101 = fadd fast float %6093, %5841
  %6102 = fmul fast float %6101, %4025
  %6103 = fadd fast float %6095, %5842
  %6104 = fmul fast float %6103, %4025
  %6105 = fadd fast float %6097, %5843
  %6106 = fmul fast float %6105, %4025
  %6107 = fadd fast float %6098, %5884
  %6108 = fmul fast float %6107, %4025
  %6109 = fadd fast float %6099, %5887
  %6110 = fmul fast float %6109, %4025
  %6111 = fadd fast float %6100, %5890
  %6112 = fmul fast float %6111, %4025
  br label %6113

; <label>:6113                                    ; preds = %6067, %5935, %5837
  %6114 = phi float [ %5885, %5837 ], [ %5885, %5935 ], [ %6108, %6067 ]
  %6115 = phi float [ %5888, %5837 ], [ %5888, %5935 ], [ %6110, %6067 ]
  %6116 = phi float [ %5891, %5837 ], [ %5891, %5935 ], [ %6112, %6067 ]
  %6117 = phi float [ %5880, %5837 ], [ %5880, %5935 ], [ %6102, %6067 ]
  %6118 = phi float [ %5881, %5837 ], [ %5881, %5935 ], [ %6104, %6067 ]
  %6119 = phi float [ %5882, %5837 ], [ %5882, %5935 ], [ %6106, %6067 ]
  %6120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.i32 %6120, 0
  %6122 = icmp eq i32 %6121, 0
  br i1 %6122, label %6553, label %6123

; <label>:6123                                    ; preds = %6113
  %6124 = fptoui float %85 to i32
  %6125 = fptoui float %86 to i32
  %6126 = lshr i32 %6124, 4
  %6127 = lshr i32 %6125, 4
  %6128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.i32 %6128, 0
  %6130 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6127, i32 %6129, i32 %6126)  ; UMad(a,b,c)
  %6131 = add nsw i32 %6121, -1
  %6132 = call i32 @dx.op.binary.i32(i32 37, i32 %6131, i32 0)  ; IMax(a,b)
  %6133 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6134 = fptoui float %6133 to i32
  %6135 = lshr i32 %6134, 5
  %6136 = call i32 @dx.op.binary.i32(i32 40, i32 %6135, i32 8191)  ; UMin(a,b)
  %6137 = shl i32 %6136, 2
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6137, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = lshr i32 %6139, 16
  %6141 = and i32 %6139, 65535
  %6142 = lshr i32 %6139, 21
  %6143 = lshr i32 %6141, 5
  %6144 = call i32 @dx.op.binary.i32(i32 40, i32 %6143, i32 %6132)  ; UMin(a,b)
  %6145 = icmp ugt i32 %6142, %6144
  br i1 %6145, label %6553, label %6146

; <label>:6146                                    ; preds = %6123
  br label %6147

; <label>:6147                                    ; preds = %6543, %6146
  %6148 = phi i32 [ %6550, %6543 ], [ %6142, %6146 ]
  %6149 = phi float [ %6544, %6543 ], [ %6114, %6146 ]
  %6150 = phi float [ %6545, %6543 ], [ %6115, %6146 ]
  %6151 = phi float [ %6546, %6543 ], [ %6116, %6146 ]
  %6152 = phi float [ %6547, %6543 ], [ %6117, %6146 ]
  %6153 = phi float [ %6548, %6543 ], [ %6118, %6146 ]
  %6154 = phi float [ %6549, %6543 ], [ %6119, %6146 ]
  %6155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.i32 %6155, 0
  %6157 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6130, i32 %6156, i32 %6148)  ; UMad(a,b,c)
  %6158 = shl i32 %6157, 2
  %6159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6158, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.i32 %6159, 0
  %6161 = shl i32 %6148, 5
  %6162 = sub nsw i32 %6140, %6161
  %6163 = call i32 @dx.op.binary.i32(i32 37, i32 %6162, i32 0)  ; IMax(a,b)
  %6164 = call i32 @dx.op.binary.i32(i32 38, i32 %6163, i32 31)  ; IMin(a,b)
  %6165 = sub nsw i32 1, %6140
  %6166 = add nsw i32 %6165, %6141
  %6167 = call i32 @dx.op.binary.i32(i32 37, i32 %6166, i32 0)  ; IMax(a,b)
  %6168 = call i32 @dx.op.binary.i32(i32 38, i32 %6167, i32 32)  ; IMin(a,b)
  %6169 = and i32 %6168, 31
  %6170 = shl i32 -1, %6169
  %6171 = xor i32 %6170, -1
  %6172 = and i32 %6164, 31
  %6173 = shl i32 %6171, %6172
  %6174 = icmp eq i32 %6168, 32
  %6175 = select i1 %6174, i32 -1, i32 %6173
  %6176 = and i32 %6175, %6160
  %6177 = icmp eq i32 %6176, 0
  br i1 %6177, label %6543, label %6178

; <label>:6178                                    ; preds = %6147
  br label %6179

; <label>:6179                                    ; preds = %6259, %6178
  %6180 = phi i32 [ %6191, %6259 ], [ %6176, %6178 ]
  %6181 = phi float [ %6260, %6259 ], [ %6149, %6178 ]
  %6182 = phi float [ %6261, %6259 ], [ %6150, %6178 ]
  %6183 = phi float [ %6262, %6259 ], [ %6151, %6178 ]
  %6184 = phi float [ %6263, %6259 ], [ %6152, %6178 ]
  %6185 = phi float [ %6264, %6259 ], [ %6153, %6178 ]
  %6186 = phi float [ %6265, %6259 ], [ %6154, %6178 ]
  %6187 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6180)  ; FirstbitLo(value)
  %6188 = add i32 %6187, %6161
  %6189 = and i32 %6187, 31
  %6190 = shl i32 1, %6189
  %6191 = xor i32 %6190, %6180
  %6192 = mul i32 %6188, 112
  %6193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6192, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  %6197 = or i32 %6192, 12
  %6198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = add i32 %6192, 44
  %6201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = add i32 %6192, 48
  %6204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6203, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.ResRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.ResRet.f32 %6204, 2
  %6208 = add i32 %6192, 80
  %6209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6208, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 1
  %6211 = extractvalue %dx.types.ResRet.f32 %6209, 2
  %6212 = call float @dx.op.dot3.f32(i32 55, float %6194, float %6195, float %6196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = select i1 %183, float %6210, float %6194
  %6214 = select i1 %183, float %6212, float %6195
  %6215 = select i1 %183, float %6211, float %6196
  %6216 = fsub fast float %6205, %141
  %6217 = fsub fast float %6206, %142
  %6218 = fsub fast float %6207, %143
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6218, float %6216, float %6217, float %6218)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = call float @dx.op.unary.f32(i32 24, float %6219)  ; Sqrt(value)
  %6221 = fdiv fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6221, %6216
  %6223 = fmul fast float %6221, %6217
  %6224 = fmul fast float %6221, %6218
  %6225 = fadd fast float %6220, %6199
  %6226 = fdiv fast float 1.000000e+00, %6225
  %6227 = fmul float %6202, %6226
  %6228 = fmul float %6227, %6227
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6230 = and i32 %6190, %6176
  %6231 = icmp eq i32 %6230, 0
  br i1 %6231, label %6254, label %6232, !dx.controlflow.hints !91

; <label>:6232                                    ; preds = %6179
  %6233 = lshr i32 %6124, 5
  %6234 = lshr i32 %6125, 5
  %6235 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6233, i32 %6234, i32 %6188, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6236 = extractvalue %dx.types.ResRet.i32 %6235, 0
  %6237 = and i32 %6236, 3
  %6238 = icmp eq i32 %6237, 0
  %6239 = select i1 %6238, float 1.000000e+00, float 0.000000e+00
  %6240 = icmp eq i32 %6237, 3
  br i1 %6240, label %6241, label %6254

; <label>:6241                                    ; preds = %6232
  %6242 = lshr i32 %6236, 10
  %6243 = and i32 %6242, 8160
  %6244 = and i32 %6125, 31
  %6245 = or i32 %6243, %6244
  %6246 = lshr i32 %6236, 1
  %6247 = and i32 %6246, 16352
  %6248 = and i32 %6124, 31
  %6249 = or i32 %6247, %6248
  %6250 = lshr i32 %6236, 23
  %6251 = and i32 %6250, 255
  %6252 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6249, i32 %6245, i32 %6251, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6253 = extractvalue %dx.types.ResRet.f32 %6252, 0
  br label %6254

; <label>:6254                                    ; preds = %6241, %6232, %6179
  %6255 = phi float [ %6253, %6241 ], [ %6239, %6232 ], [ 0.000000e+00, %6179 ]
  %6256 = call float @dx.op.binary.f32(i32 36, float %6255, float %6255)  ; FMin(a,b)
  %6257 = call float @dx.op.binary.f32(i32 36, float %6255, float %6256)  ; FMin(a,b)
  %6258 = fcmp fast ogt float %6257, 0.000000e+00
  br i1 %6258, label %6267, label %6259, !dx.controlflow.hints !92

; <label>:6259                                    ; preds = %6499, %6254
  %6260 = phi float [ %6181, %6254 ], [ %6539, %6499 ]
  %6261 = phi float [ %6182, %6254 ], [ %6540, %6499 ]
  %6262 = phi float [ %6183, %6254 ], [ %6541, %6499 ]
  %6263 = phi float [ %6184, %6254 ], [ %6533, %6499 ]
  %6264 = phi float [ %6185, %6254 ], [ %6534, %6499 ]
  %6265 = phi float [ %6186, %6254 ], [ %6535, %6499 ]
  %6266 = icmp eq i32 %6180, %6190
  br i1 %6266, label %6542, label %6179

; <label>:6267                                    ; preds = %6254
  %6268 = fmul fast float %6255, %6213
  %6269 = fmul fast float %6255, %6214
  %6270 = fmul fast float %6255, %6215
  %6271 = fsub fast float %6207, %4429
  %6272 = fcmp fast ogt float %6271, 0.000000e+00
  %6273 = fsub fast float %143, %4429
  %6274 = fcmp fast ogt float %6273, 0.000000e+00
  %6275 = xor i1 %6274, %6272
  %6276 = fsub fast float %4429, %6207
  %6277 = fmul fast float %6276, 2.000000e+00
  %6278 = fadd fast float %6277, %6207
  %6279 = select i1 %6275, float %6207, float %6278
  %6280 = fsub fast float %6279, %143
  %6281 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6280, float %6216, float %6217, float %6280)  ; Dot3(ax,ay,az,bx,by,bz)
  %6282 = call float @dx.op.unary.f32(i32 25, float %6281)  ; Rsqrt(value)
  %6283 = fmul fast float %6282, %6216
  %6284 = fmul fast float %6282, %6217
  %6285 = fmul fast float %6282, %6280
  %6286 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %6287 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6283, float %6284, float %6285)  ; Dot3(ax,ay,az,bx,by,bz)
  %6288 = fdiv fast float 1.000000e+00, %6287
  %6289 = fmul fast float %6288, %6286
  %6290 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6273, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6291 = fcmp fast ogt float %6290, 0.000000e+00
  %6292 = fcmp fast olt float %6290, 0.000000e+00
  %6293 = zext i1 %6291 to i32
  %6294 = zext i1 %6292 to i32
  %6295 = sub nsw i32 %6293, %6294
  %6296 = sitofp i32 %6295 to float
  %6297 = fsub fast float %6279, %4429
  %6298 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6297, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6299 = fcmp fast ogt float %6298, 0.000000e+00
  %6300 = fcmp fast olt float %6298, 0.000000e+00
  %6301 = zext i1 %6299 to i32
  %6302 = zext i1 %6300 to i32
  %6303 = sub nsw i32 %6301, %6302
  %6304 = sitofp i32 %6303 to float
  %6305 = fcmp fast une float %6296, %6304
  br i1 %6305, label %6306, label %6316

; <label>:6306                                    ; preds = %6267
  %6307 = fmul fast float %6289, %6285
  %6308 = fmul fast float %6289, %6284
  %6309 = fmul fast float %6289, %6283
  %6310 = fmul fast float %6309, %6309
  %6311 = fmul fast float %6308, %6308
  %6312 = fadd fast float %6310, %6311
  %6313 = fmul fast float %6307, %6307
  %6314 = fadd fast float %6312, %6313
  %6315 = call float @dx.op.unary.f32(i32 24, float %6314)  ; Sqrt(value)
  br label %6328

; <label>:6316                                    ; preds = %6267
  %6317 = icmp slt i32 %6295, 0
  br i1 %6317, label %6318, label %6328

; <label>:6318                                    ; preds = %6316
  %6319 = fsub fast float %141, %6205
  %6320 = fsub fast float %142, %6206
  %6321 = fsub fast float %143, %6279
  %6322 = fmul fast float %6319, %6319
  %6323 = fmul fast float %6320, %6320
  %6324 = fadd fast float %6322, %6323
  %6325 = fmul fast float %6321, %6321
  %6326 = fadd fast float %6324, %6325
  %6327 = call float @dx.op.unary.f32(i32 24, float %6326)  ; Sqrt(value)
  br label %6328

; <label>:6328                                    ; preds = %6318, %6316, %6306
  %6329 = phi float [ %6315, %6306 ], [ %6327, %6318 ], [ 0.000000e+00, %6316 ]
  %6330 = and i1 %6274, %6272
  %6331 = fsub fast float -0.000000e+00, %6329
  %6332 = select i1 %6330, float -0.000000e+00, float %6331
  %6333 = fmul fast float %4430, 0x3FF7154760000000
  %6334 = fmul fast float %6333, %6332
  %6335 = fmul fast float %4431, 0x3FF7154760000000
  %6336 = fmul fast float %6335, %6332
  %6337 = fmul fast float %4432, 0x3FF7154760000000
  %6338 = fmul fast float %6337, %6332
  %6339 = call float @dx.op.unary.f32(i32 21, float %6334)  ; Exp(value)
  %6340 = call float @dx.op.unary.f32(i32 21, float %6336)  ; Exp(value)
  %6341 = call float @dx.op.unary.f32(i32 21, float %6338)  ; Exp(value)
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6345 = fmul fast float %6268, %6342
  %6346 = fmul fast float %6269, %6343
  %6347 = fmul fast float %6270, %6344
  %6348 = fsub fast float %6222, %4629
  %6349 = fsub fast float %6223, %4628
  %6350 = fsub fast float %6224, %4627
  %6351 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6348, float %6349, float %6350)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = call float @dx.op.unary.f32(i32 25, float %6351)  ; Rsqrt(value)
  %6353 = fmul fast float %6352, %6348
  %6354 = fmul fast float %6352, %6349
  %6355 = fmul fast float %6352, %6350
  %6356 = call float @dx.op.dot3.f32(i32 55, float %6222, float %6223, float %6224, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %6357 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4625, float %4624, float %6353, float %6354, float %6355)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  %6359 = fmul fast float %6358, %6229
  %6360 = fmul fast float %6358, %6358
  %6361 = fmul fast float %6360, %4683
  %6362 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6363 = fmul fast float %6359, %6362
  %6364 = bitcast float %6219 to i32
  %6365 = ashr i32 %6364, 1
  %6366 = sub nsw i32 1597463007, %6365
  %6367 = bitcast i32 %6366 to float
  %6368 = fmul fast float %6367, %6216
  %6369 = fmul fast float %6367, %6217
  %6370 = fmul fast float %6367, %6218
  %6371 = fsub fast float %6368, %4629
  %6372 = fsub fast float %6369, %4628
  %6373 = fsub fast float %6370, %4627
  %6374 = call float @dx.op.dot3.f32(i32 55, float %6371, float %6372, float %6373, float %6371, float %6372, float %6373)  ; Dot3(ax,ay,az,bx,by,bz)
  %6375 = call float @dx.op.unary.f32(i32 25, float %6374)  ; Rsqrt(value)
  %6376 = fmul fast float %6371, %6375
  %6377 = fmul fast float %6372, %6375
  %6378 = fmul fast float %6373, %6375
  %6379 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %6376, float %6377, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %6380 = fmul fast float %6379, %6379
  %6381 = call float @dx.op.unary.f32(i32 6, float %6356)  ; FAbs(value)
  %6382 = fsub fast float 1.000000e+00, %4676
  %6383 = fmul fast float %4658, %4658
  %6384 = fmul fast float %6383, %6382
  %6385 = fadd fast float %6384, %4676
  %6386 = bitcast float %6385 to i32
  %6387 = ashr i32 %6386, 1
  %6388 = add nsw i32 %6387, 532487669
  %6389 = bitcast i32 %6388 to float
  %6390 = fadd fast float %6389, %4658
  %6391 = fmul fast float %4676, %6380
  %6392 = fsub fast float 1.000000e+00, %6380
  %6393 = fadd fast float %6392, %6391
  %6394 = fmul fast float %6381, %6381
  %6395 = fmul fast float %6394, %6382
  %6396 = fadd fast float %6395, %4676
  %6397 = bitcast float %6396 to i32
  %6398 = ashr i32 %6397, 1
  %6399 = add nsw i32 %6398, 532487669
  %6400 = bitcast i32 %6399 to float
  %6401 = fadd fast float %6400, %6381
  %6402 = fmul fast float %6393, %6393
  %6403 = fmul fast float %6402, %6390
  %6404 = fmul fast float %6403, %6401
  %6405 = fdiv fast float 1.000000e+00, %6404
  %6406 = bitcast float %4676 to i32
  %6407 = sitofp i32 %6406 to float
  %6408 = fmul fast float %6407, 0x3FE7F73180000000
  %6409 = fadd fast float %6408, 0x41AFE27C40000000
  %6410 = fptosi float %6409 to i32
  %6411 = bitcast i32 %6410 to float
  %6412 = fmul fast float %6202, 0x3FD80E9D60000000
  %6413 = fmul fast float %6412, %6367
  %6414 = fadd fast float %6411, %6413
  %6415 = bitcast float %6414 to i32
  %6416 = sub nsw i32 2129859010, %6415
  %6417 = bitcast i32 %6416 to float
  %6418 = fmul fast float %4676, %6405
  %6419 = fmul fast float %6418, %6411
  %6420 = fmul fast float %6419, %6417
  %6421 = call float @dx.op.unary.f32(i32 6, float %6357)  ; FAbs(value)
  %6422 = fsub fast float 1.000000e+00, %6421
  %6423 = bitcast float %6422 to i32
  %6424 = sitofp i32 %6423 to float
  %6425 = fmul fast float %6424, 5.000000e+00
  %6426 = fadd fast float %6425, 0xC1EFBF8940000000
  %6427 = fptosi float %6426 to i32
  %6428 = bitcast i32 %6427 to float
  %6429 = fsub fast float 1.000000e+00, %4633
  %6430 = fsub fast float 1.000000e+00, %4634
  %6431 = fsub fast float 1.000000e+00, %4656
  %6432 = fmul fast float %6428, %6429
  %6433 = fmul fast float %6428, %6430
  %6434 = fmul fast float %6428, %6431
  %6435 = fadd fast float %6432, %4633
  %6436 = fadd fast float %6433, %4634
  %6437 = fadd fast float %6434, %4656
  br i1 %4931, label %6438, label %6461

; <label>:6438                                    ; preds = %6328
  %6439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4028, float %6421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.ResRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.ResRet.f32 %6439, 2
  %6443 = fadd fast float %6440, -5.000000e-01
  %6444 = fadd fast float %6441, -5.000000e-01
  %6445 = fadd fast float %6442, -5.000000e-01
  %6446 = fmul fast float %4633, 4.000000e+00
  %6447 = fmul fast float %6446, %6429
  %6448 = fmul fast float %6447, %6443
  %6449 = fmul fast float %4634, 4.000000e+00
  %6450 = fmul fast float %6449, %6430
  %6451 = fmul fast float %6450, %6444
  %6452 = fmul fast float %4656, 4.000000e+00
  %6453 = fmul fast float %6452, %6431
  %6454 = fmul fast float %6453, %6445
  %6455 = fadd fast float %6448, %6435
  %6456 = fadd fast float %6451, %6436
  %6457 = fadd fast float %6454, %6437
  %6458 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6459 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6460 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  br label %6461

; <label>:6461                                    ; preds = %6438, %6328
  %6462 = phi float [ %6458, %6438 ], [ %6435, %6328 ]
  %6463 = phi float [ %6459, %6438 ], [ %6436, %6328 ]
  %6464 = phi float [ %6460, %6438 ], [ %6437, %6328 ]
  %6465 = fmul fast float %6356, 9.843750e-01
  %6466 = fadd fast float %6465, 7.812500e-03
  %6467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6466, float %4921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 2
  %6469 = extractvalue %dx.types.ResRet.f32 %6467, 3
  %6470 = fmul fast float %6468, %4633
  %6471 = fmul fast float %6468, %4634
  %6472 = fmul fast float %6468, %4656
  %6473 = fadd fast float %6470, %6469
  %6474 = fadd fast float %6471, %6469
  %6475 = fadd fast float %6472, %6469
  br i1 %4931, label %6476, label %6499

; <label>:6476                                    ; preds = %6461
  %6477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4028, float %6356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6478 = extractvalue %dx.types.ResRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.ResRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.ResRet.f32 %6477, 2
  %6481 = fadd fast float %6478, -5.000000e-01
  %6482 = fadd fast float %6479, -5.000000e-01
  %6483 = fadd fast float %6480, -5.000000e-01
  %6484 = fmul fast float %4633, 4.000000e+00
  %6485 = fmul fast float %6484, %6429
  %6486 = fmul fast float %6485, %6481
  %6487 = fmul fast float %4634, 4.000000e+00
  %6488 = fmul fast float %6487, %6430
  %6489 = fmul fast float %6488, %6482
  %6490 = fmul fast float %4656, 4.000000e+00
  %6491 = fmul fast float %6490, %6431
  %6492 = fmul fast float %6491, %6483
  %6493 = fadd fast float %6486, %6473
  %6494 = fadd fast float %6489, %6474
  %6495 = fadd fast float %6492, %6475
  %6496 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6497 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6498 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  br label %6499

; <label>:6499                                    ; preds = %6476, %6461
  %6500 = phi float [ %6496, %6476 ], [ %6473, %6461 ]
  %6501 = phi float [ %6497, %6476 ], [ %6474, %6461 ]
  %6502 = phi float [ %6498, %6476 ], [ %6475, %6461 ]
  %6503 = call float @dx.op.binary.f32(i32 35, float %6501, float %6502)  ; FMax(a,b)
  %6504 = call float @dx.op.binary.f32(i32 35, float %6500, float %6503)  ; FMax(a,b)
  %6505 = fsub fast float 1.000000e+00, %6504
  %6506 = fmul fast float %6462, %6420
  %6507 = fmul fast float %6463, %6420
  %6508 = fmul fast float %6464, %6420
  %6509 = fsub fast float 1.000000e+00, %6357
  %6510 = bitcast float %6509 to i32
  %6511 = sitofp i32 %6510 to float
  %6512 = fmul fast float %6511, 5.000000e+00
  %6513 = fadd fast float %6512, 0xC1EFBF8940000000
  %6514 = fptosi float %6513 to i32
  %6515 = bitcast i32 %6514 to float
  %6516 = fmul fast float %6515, %4029
  %6517 = fmul fast float %6505, %6516
  %6518 = fmul fast float %6517, %5857
  %6519 = fmul fast float %6517, %5858
  %6520 = fmul fast float %6517, %5859
  %6521 = fadd fast float %6518, %6506
  %6522 = fadd fast float %6519, %6507
  %6523 = fadd fast float %6520, %6508
  %6524 = fmul fast float %6345, %4025
  %6525 = fmul fast float %6524, %6363
  %6526 = fmul fast float %6525, %6505
  %6527 = fmul fast float %6346, %4025
  %6528 = fmul fast float %6527, %6363
  %6529 = fmul fast float %6528, %6505
  %6530 = fmul fast float %6347, %4025
  %6531 = fmul fast float %6530, %6363
  %6532 = fmul fast float %6531, %6505
  %6533 = fadd fast float %6526, %6184
  %6534 = fadd fast float %6529, %6185
  %6535 = fadd fast float %6532, %6186
  %6536 = fmul fast float %6525, %6521
  %6537 = fmul fast float %6528, %6522
  %6538 = fmul fast float %6531, %6523
  %6539 = fadd fast float %6536, %6181
  %6540 = fadd fast float %6537, %6182
  %6541 = fadd fast float %6538, %6183
  br label %6259

; <label>:6542                                    ; preds = %6259
  br label %6543

; <label>:6543                                    ; preds = %6542, %6147
  %6544 = phi float [ %6149, %6147 ], [ %6260, %6542 ]
  %6545 = phi float [ %6150, %6147 ], [ %6261, %6542 ]
  %6546 = phi float [ %6151, %6147 ], [ %6262, %6542 ]
  %6547 = phi float [ %6152, %6147 ], [ %6263, %6542 ]
  %6548 = phi float [ %6153, %6147 ], [ %6264, %6542 ]
  %6549 = phi float [ %6154, %6147 ], [ %6265, %6542 ]
  %6550 = add i32 %6148, 1
  %6551 = icmp ugt i32 %6550, %6144
  br i1 %6551, label %6552, label %6147

; <label>:6552                                    ; preds = %6543
  br label %6553

; <label>:6553                                    ; preds = %6552, %6123, %6113
  %6554 = phi float [ %6114, %6113 ], [ %6114, %6123 ], [ %6544, %6552 ]
  %6555 = phi float [ %6115, %6113 ], [ %6115, %6123 ], [ %6545, %6552 ]
  %6556 = phi float [ %6116, %6113 ], [ %6116, %6123 ], [ %6546, %6552 ]
  %6557 = phi float [ %6117, %6113 ], [ %6117, %6123 ], [ %6547, %6552 ]
  %6558 = phi float [ %6118, %6113 ], [ %6118, %6123 ], [ %6548, %6552 ]
  %6559 = phi float [ %6119, %6113 ], [ %6119, %6123 ], [ %6549, %6552 ]
  %6560 = call float @dx.op.unary.f32(i32 24, float %4630)  ; Sqrt(value)
  %6561 = call float @dx.op.unary.f32(i32 24, float %4631)  ; Sqrt(value)
  %6562 = call float @dx.op.unary.f32(i32 24, float %4632)  ; Sqrt(value)
  %6563 = fmul fast float %6560, %6557
  %6564 = fmul fast float %6561, %6558
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  br i1 %183, label %6567, label %6590

; <label>:6567                                    ; preds = %6553
  %6568 = fadd fast float %6559, %4031
  %6569 = fmul fast float %6568, %4032
  %6570 = fsub fast float 1.000000e+00, %4032
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 3
  %6574 = fmul fast float %6573, %6571
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = fmul fast float %6576, %5863
  %6578 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6579 = fmul fast float %6578, %4654
  %6580 = fadd fast float %6564, %6563
  %6581 = fmul fast float %6566, %6580
  %6582 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6583 = fadd fast float %6574, %6569
  %6584 = fsub fast float %6583, %6577
  %6585 = fadd fast float %6584, %6579
  %6586 = fsub fast float %6585, %6582
  %6587 = extractvalue %dx.types.CBufRet.f32 %6572, 2
  %6588 = fmul fast float %6586, %6587
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  br label %6606

; <label>:6590                                    ; preds = %6553
  %6591 = fmul fast float %6562, %6559
  %6592 = fmul fast float %6566, %6563
  %6593 = fmul fast float %6566, %6564
  %6594 = fmul fast float %6591, %6566
  %6595 = add i32 %45, 356
  %6596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6595, i32 undef)  ; BufferLoad(srv,index,wot)
  %6597 = extractvalue %dx.types.ResRet.i32 %6596, 0
  %6598 = and i32 %6597, 32
  %6599 = icmp eq i32 %6598, 0
  br i1 %6599, label %6606, label %6600

; <label>:6600                                    ; preds = %6590
  %6601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6601, 0
  %6603 = fmul fast float %6602, 0x3FE99999A0000000
  %6604 = fadd fast float %6602, %6592
  %6605 = fadd fast float %6603, %6594
  br label %6606

; <label>:6606                                    ; preds = %6600, %6590, %6567
  %6607 = phi float [ %6581, %6567 ], [ %6604, %6600 ], [ %6592, %6590 ]
  %6608 = phi float [ %6589, %6567 ], [ %6593, %6600 ], [ %6593, %6590 ]
  %6609 = phi float [ 1.000000e+00, %6567 ], [ %6605, %6600 ], [ %6594, %6590 ]
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 0
  %6612 = fmul fast float %6611, %6555
  %6613 = fmul fast float %6611, %6556
  %6614 = fadd fast float %6555, %6554
  %6615 = select i1 %183, float %6614, float %6554
  %6616 = fmul float %6615, %6611
  %6617 = select i1 %183, float 0.000000e+00, float %6612
  %6618 = select i1 %183, float 0.000000e+00, float %6613
  %6619 = fmul fast float %6607, %6560
  %6620 = fmul fast float %6608, %6561
  %6621 = fmul fast float %6609, %6562
  %6622 = fadd fast float %6616, %6619
  %6623 = fadd fast float %6617, %6620
  %6624 = fadd fast float %6618, %6621
  %6625 = select i1 %183, float %6608, float %6623
  %6626 = select i1 %183, float %6609, float %6624
  %6627 = call float @dx.op.binary.f32(i32 36, float %6622, float 3.225500e+04)  ; FMin(a,b)
  %6628 = call float @dx.op.binary.f32(i32 36, float %6625, float 3.225500e+04)  ; FMin(a,b)
  %6629 = call float @dx.op.binary.f32(i32 36, float %6626, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6628)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6629)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !82, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !81}
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
!72 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !71}
!73 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!74 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !71}
!75 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 8, i8 0, !67}
!76 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !71}
!77 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !78}
!78 = !{i32 3, i32 13}
!79 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 11, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!84 = !{i32 0, i64 24}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}

