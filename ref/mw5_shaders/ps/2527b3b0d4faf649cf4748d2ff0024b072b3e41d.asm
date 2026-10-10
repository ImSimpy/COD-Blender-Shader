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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
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
; shader hash: 53a14813ed8df134ddb9e4eddef817bc
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fmul fast float %83, %77
  %85 = fmul fast float %83, %78
  %86 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %87 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %88 = bitcast float %87 to i32
  %89 = ashr i32 %88, 1
  %90 = sub nsw i32 1597250115, %89
  %91 = bitcast i32 %90 to float
  %92 = fmul fast float %69, %86
  %93 = fmul fast float %92, %91
  %94 = fmul fast float %70, %86
  %95 = fmul fast float %94, %91
  %96 = fmul fast float %71, %86
  %97 = fmul fast float %96, %91
  %98 = fmul fast float %70, %67
  %99 = fmul fast float %71, %66
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %71, %65
  %102 = fmul fast float %69, %67
  %103 = fsub fast float %101, %102
  %104 = fmul fast float %69, %66
  %105 = fmul fast float %70, %65
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %100, %68
  %108 = fmul fast float %103, %68
  %109 = fmul fast float %106, %68
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %84, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %85, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %79
  %144 = fmul fast float %140, %79
  %145 = fmul fast float %142, %79
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %84
  %150 = fmul fast float %148, %85
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %152, 114688
  %154 = icmp ne i32 %153, 0
  %155 = select i1 %154, float %149, float 0.000000e+00
  %156 = select i1 %154, float %150, float 0.000000e+00
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %155, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fmul fast float %158, 2.550000e+02
  %160 = fptoui float %159 to i32
  %161 = select i1 %154, i32 %160, i32 0
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  %167 = and i32 %164, 4
  %168 = icmp ne i32 %167, 0
  %169 = and i1 %166, %168
  br i1 %169, label %170, label %181

; <label>:170                                     ; preds = %0
  %171 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %172 = fmul fast float %171, %85
  %173 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %174 = fmul fast float %173, %84
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %174, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fsub fast float 1.000000e+00, %176
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = fcmp fast olt float %177, %179
  br label %184

; <label>:181                                     ; preds = %0
  %182 = icmp eq i32 %167, 0
  %183 = and i1 %166, %182
  br label %184

; <label>:184                                     ; preds = %181, %170
  %185 = phi i1 [ %180, %170 ], [ %183, %181 ]
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = fmul fast float %187, 0x3FE3C6EF40000000
  %189 = frem fast float %84, 2.560000e+02
  %190 = frem fast float %85, 2.560000e+02
  %191 = fptoui float %189 to i32
  %192 = fptoui float %190 to i32
  %193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = fadd fast float %194, %188
  %197 = fadd fast float %195, %188
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = add i32 %45, 156
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = shl i32 %202, 4
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %202, 7
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %202, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = add i32 %45, 216
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %214, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %214, 16
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = add i32 %45, 36
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %45, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %237, 0x3F50624DE0000000
  %241 = fmul fast float %239, 0x3F50624DE0000000
  %242 = add i32 %45, 172
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %45, 232
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %45, 52
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %45, 304
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %45, 188
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %45, 248
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %45, 68
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %45, 320
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %45, 204
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %45, 264
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %45, 84
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %45, 336
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = fmul fast float %363, 0x3F50624DE0000000
  %367 = fmul fast float %365, 0x3F50624DE0000000
  %368 = add i32 %45, 348
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 32
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %370, 64
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %370, 128
  %376 = icmp eq i32 %375, 0
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %394, label %381

; <label>:381                                     ; preds = %184
  %382 = add i32 %45, 472
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %386, %dx.types.Handle %81, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = fmul fast float %388, %74
  %392 = fmul fast float %389, %75
  %393 = fmul fast float %390, %76
  br label %394

; <label>:394                                     ; preds = %381, %184
  %395 = phi float [ %76, %184 ], [ %393, %381 ]
  %396 = phi float [ %75, %184 ], [ %392, %381 ]
  %397 = phi float [ %74, %184 ], [ %391, %381 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %421, label %402

; <label>:402                                     ; preds = %394
  %403 = add i32 %45, 44
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 1
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %397, float 1.000000e+00
  %409 = add i32 %45, 60
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %396, float 1.000000e+00
  %415 = add i32 %45, 76
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %395, float 1.000000e+00
  br label %421

; <label>:421                                     ; preds = %402, %394
  %422 = phi float [ %395, %394 ], [ %420, %402 ]
  %423 = phi float [ %396, %394 ], [ %414, %402 ]
  %424 = phi float [ %397, %394 ], [ %408, %402 ]
  %425 = lshr i32 %399, 20
  %426 = and i32 %425, 3
  %427 = add nuw nsw i32 %426, 1
  %428 = add i32 %45, 24
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %45, 28
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = or i32 %433, %430
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %947, label %436

; <label>:436                                     ; preds = %421
  %437 = and i32 %430, 262144
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %47, float 1.000000e+00
  %440 = select i1 %438, float %48, float 0.000000e+00
  %441 = select i1 %438, float %49, float 0.000000e+00
  %442 = select i1 %438, float %50, float 1.000000e+00
  %443 = select i1 %438, float %51, float %72
  %444 = select i1 %438, float %52, float %73
  %445 = add i32 %45, 284
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = lshr i32 %447, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = fmul fast float %449, 0x3F50624DE0000000
  %451 = add i32 %45, 88
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  %456 = lshr i32 %453, 24
  %457 = add i32 %45, 292
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %45, 32
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = lshr i32 %466, 22
  %468 = shl nuw nsw i32 %467, 5
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = shl i32 %466, 4
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %466, 7
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = fmul fast float %477, 1.000000e+03
  %479 = fmul fast float %240, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fadd fast float %480, %230
  %482 = fmul fast float %241, %478
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fadd fast float %483, %232
  %485 = fmul fast float %450, %478
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fmul fast float %486, 0x401921FB60000000
  %488 = fadd fast float %487, %469
  %489 = call float @dx.op.unary.f32(i32 13, float %488)  ; Sin(value)
  %490 = call float @dx.op.unary.f32(i32 12, float %488)  ; Cos(value)
  %491 = fsub fast float -0.000000e+00, %489
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fmul fast float %461, %492
  %495 = fmul fast float %463, %493
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fmul fast float %472, %496
  %499 = fmul fast float %475, %497
  %500 = fmul fast float %490, %498
  %501 = call float @dx.op.tertiary.f32(i32 46, float %491, float %499, float %500)  ; FMad(a,b,c)
  %502 = fmul fast float %489, %498
  %503 = call float @dx.op.tertiary.f32(i32 46, float %490, float %499, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %481, %501
  %505 = fadd fast float %484, %503
  %506 = icmp ugt i32 %455, 1
  %507 = icmp ugt i32 %453, 33554431
  %508 = or i1 %507, %506
  br i1 %508, label %509, label %534

; <label>:509                                     ; preds = %436
  %510 = add i32 %45, 228
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %477, %514
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = mul nuw nsw i32 %455, %456
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %516, %518
  %520 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %521 = fptoui float %520 to i32
  %522 = urem i32 %521, %455
  %523 = udiv i32 %521, %456
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = uitofp i32 %522 to float
  %527 = uitofp i32 %523 to float
  %528 = fadd fast float %524, %526
  %529 = fadd fast float %525, %527
  %530 = uitofp i32 %455 to float
  %531 = uitofp i32 %456 to float
  %532 = fdiv fast float %528, %530
  %533 = fdiv fast float %529, %531
  br label %534

; <label>:534                                     ; preds = %509, %436
  %535 = phi float [ %532, %509 ], [ %504, %436 ]
  %536 = phi float [ %533, %509 ], [ %505, %436 ]
  %537 = and i32 %430, 16
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %735, label %539

; <label>:539                                     ; preds = %534
  %540 = add i32 %45, 360
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %80, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = and i32 %453, 255
  %551 = uitofp i32 %550 to float
  %552 = lshr i32 %453, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %549, %551
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %556, 0x3F70101000000000
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 512
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %570, label %562

; <label>:562                                     ; preds = %539
  %563 = add i32 %45, 440
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %81, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  br label %570

; <label>:570                                     ; preds = %562, %539
  %571 = phi float [ %569, %562 ], [ 1.000000e+00, %539 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 33554432
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %682, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %45, 224
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = add i32 %45, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 24
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = and i32 %590, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %590, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %590, 16
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = add i32 %45, 220
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 24
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = and i32 %607, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %607, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %607, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = bitcast float %546 to i32
  %623 = ashr i32 %622, 1
  %624 = sub nsw i32 1597463174, %623
  %625 = bitcast i32 %624 to float
  %626 = fmul fast float %546, 5.000000e-01
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %627, %626
  %629 = fsub fast float 1.500000e+00, %628
  %630 = fmul fast float %625, %546
  %631 = fmul fast float %630, %629
  %632 = bitcast float %547 to i32
  %633 = ashr i32 %632, 1
  %634 = sub nsw i32 1597463174, %633
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %547, 5.000000e-01
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %637, %636
  %639 = fsub fast float 1.500000e+00, %638
  %640 = fmul fast float %635, %547
  %641 = fmul fast float %640, %639
  %642 = bitcast float %548 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %548, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %548
  %651 = fmul fast float %650, %649
  %652 = fsub fast float %631, %613
  %653 = fsub fast float %641, %617
  %654 = fsub fast float %651, %621
  %655 = fmul fast float %652, %581
  %656 = fmul fast float %653, %583
  %657 = fmul fast float %654, %588
  %658 = fadd fast float %655, %596
  %659 = fadd fast float %656, %600
  %660 = fadd fast float %657, %604
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fmul fast float %667, %571
  %671 = fmul fast float %668, %571
  %672 = fmul fast float %669, %571
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %593, %557
  %677 = fsub fast float %676, %610
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = fsub fast float %678, %557
  %680 = fmul fast float %679, %571
  %681 = fadd fast float %680, %557
  br label %735

; <label>:682                                     ; preds = %570
  %683 = and i32 %573, 134217728
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %719, label %685

; <label>:685                                     ; preds = %682
  %686 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fmul fast float %689, %571
  %693 = fmul fast float %690, %571
  %694 = fmul fast float %691, %571
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = fmul fast float %695, 2.000000e+00
  %702 = fsub fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %698
  %704 = fadd fast float %703, %701
  %705 = fmul fast float %704, %698
  %706 = fmul fast float %696, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %699
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %699
  %711 = fmul fast float %697, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %700
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %700
  %716 = fmul fast float %705, %705
  %717 = fmul fast float %710, %710
  %718 = fmul fast float %715, %715
  br label %735

; <label>:719                                     ; preds = %682
  %720 = fmul fast float %217, %217
  %721 = fmul fast float %221, %221
  %722 = fmul fast float %225, %225
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fmul fast float %571, %723
  %727 = fmul fast float %571, %724
  %728 = fmul fast float %571, %725
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  br label %735

; <label>:735                                     ; preds = %719, %685, %576, %534
  %736 = phi float [ %681, %576 ], [ %557, %685 ], [ %557, %719 ], [ 0x3FA23C0BE0000000, %534 ]
  %737 = phi float [ %673, %576 ], [ %716, %685 ], [ %732, %719 ], [ 1.000000e+00, %534 ]
  %738 = phi float [ %674, %576 ], [ %717, %685 ], [ %733, %719 ], [ 1.000000e+00, %534 ]
  %739 = phi float [ %675, %576 ], [ %718, %685 ], [ %734, %719 ], [ 1.000000e+00, %534 ]
  %740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.i32 %740, 1
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  %744 = add i32 %45, 356
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 32
  %748 = icmp ne i32 %747, 0
  %749 = and i1 %743, %748
  %750 = select i1 %749, float 1.000000e+00, float %737
  %751 = select i1 %749, float 0x3FD3333340000000, float %738
  %752 = select i1 %749, float 0x3FD3333340000000, float %739
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %829, label %757

; <label>:757                                     ; preds = %735
  %758 = add i32 %45, 92
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = add i32 %45, 376
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %80, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = and i32 %760, 255
  %772 = uitofp i32 %771 to float
  %773 = lshr i32 %760, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %760, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = fmul fast float %767, %772
  %781 = fadd fast float %780, %775
  %782 = fmul fast float %781, 0x3F70101000000000
  %783 = fadd fast float %768, -5.000000e-01
  %784 = fadd fast float %770, -5.000000e-01
  %785 = fmul fast float %783, %779
  %786 = fmul fast float %784, %779
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %787, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fmul fast float %788, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fadd fast float %790, %792
  %794 = fmul fast float %793, 5.000000e-01
  %795 = fsub fast float %790, %792
  %796 = fmul fast float %795, 5.000000e-01
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float 1.000000e+00, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float %798, %799
  %801 = call float @dx.op.dot3.f32(i32 55, float %794, float %796, float %800, float %794, float %796, float %800)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 25, float %801)  ; Rsqrt(value)
  %803 = fmul fast float %794, %802
  %804 = fmul fast float %796, %802
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 67108864
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %825, label %809

; <label>:809                                     ; preds = %757
  %810 = add i32 %45, 280
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float %782, %820
  %822 = fmul fast float %821, %814
  %823 = fadd fast float %822, %818
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  br label %825

; <label>:825                                     ; preds = %809, %757
  %826 = phi float [ %824, %809 ], [ %782, %757 ]
  %827 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  br label %829

; <label>:829                                     ; preds = %825, %735
  %830 = phi float [ %826, %825 ], [ 0x3FD6666660000000, %735 ]
  %831 = phi float [ %827, %825 ], [ 0.000000e+00, %735 ]
  %832 = phi float [ %828, %825 ], [ 0.000000e+00, %735 ]
  %833 = phi float [ %769, %825 ], [ 1.000000e+00, %735 ]
  %834 = add i32 %45, 160
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 22
  %838 = shl nuw nsw i32 %837, 5
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %829
  %845 = add i32 %45, 392
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 131072
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %80, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = fmul fast float %855, %205
  %859 = fmul fast float %856, %208
  %860 = fmul fast float %857, %211
  br i1 %853, label %867, label %861

; <label>:861                                     ; preds = %844
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fmul fast float %863, %858
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %863, %860
  br label %867

; <label>:867                                     ; preds = %861, %844
  %868 = phi float [ %864, %861 ], [ %858, %844 ]
  %869 = phi float [ %865, %861 ], [ %859, %844 ]
  %870 = phi float [ %866, %861 ], [ %860, %844 ]
  %871 = fmul fast float %868, %839
  %872 = select i1 %185, float %871, float %868
  %873 = call float @dx.op.dot3.f32(i32 55, float %872, float %869, float %870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = select i1 %185, float 0.000000e+00, float %868
  %875 = select i1 %185, float %873, float %869
  %876 = select i1 %185, float 0.000000e+00, float %870
  br label %877

; <label>:877                                     ; preds = %867, %829
  %878 = phi float [ %874, %867 ], [ 0.000000e+00, %829 ]
  %879 = phi float [ %875, %867 ], [ 0.000000e+00, %829 ]
  %880 = phi float [ %876, %867 ], [ 0.000000e+00, %829 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 10240
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %929, label %885

; <label>:885                                     ; preds = %877
  %886 = add i32 %45, 456
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %888, 0
  %890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %890, %dx.types.Handle %81, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 1
  %893 = extractvalue %dx.types.ResRet.f32 %891, 3
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 1048576
  %897 = icmp ne i32 %896, 0
  %898 = and i32 %895, 8192
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %915, label %900

; <label>:900                                     ; preds = %885
  %901 = extractvalue %dx.types.ResRet.f32 %891, 2
  %902 = select i1 %897, float %901, float %892
  %903 = extractvalue %dx.types.ResRet.f32 %891, 0
  %904 = select i1 %897, float %903, float %892
  %905 = add i32 %45, 96
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 16
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F80101020000000
  %912 = fmul fast float %911, %904
  %913 = fmul fast float %911, %892
  %914 = fmul fast float %911, %902
  br label %915

; <label>:915                                     ; preds = %900, %885
  %916 = phi float [ %912, %900 ], [ 0.000000e+00, %885 ]
  %917 = phi float [ %913, %900 ], [ 0.000000e+00, %885 ]
  %918 = phi float [ %914, %900 ], [ 0.000000e+00, %885 ]
  %919 = and i32 %895, 2048
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %929, label %921

; <label>:921                                     ; preds = %915
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = shl i32 %923, 4
  %925 = and i32 %924, 32752
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = fmul fast float %926, %893
  %928 = call float @dx.op.binary.f32(i32 35, float %927, float 0x3F70101020000000)  ; FMax(a,b)
  br label %929

; <label>:929                                     ; preds = %921, %915, %877
  %930 = phi float [ %916, %921 ], [ %916, %915 ], [ 0.000000e+00, %877 ]
  %931 = phi float [ %917, %921 ], [ %917, %915 ], [ 0.000000e+00, %877 ]
  %932 = phi float [ %918, %921 ], [ %918, %915 ], [ 0.000000e+00, %877 ]
  %933 = phi float [ %928, %921 ], [ 0x3F70101020000000, %915 ], [ 0x3F70101020000000, %877 ]
  %934 = add i32 %45, 96
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = lshr i32 %936, 8
  %940 = and i32 %939, 255
  %941 = uitofp i32 %940 to float
  %942 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = fmul fast float %941, %942
  %944 = fadd fast float %943, %938
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  br label %947

; <label>:947                                     ; preds = %929, %421
  %948 = phi float [ 0.000000e+00, %421 ], [ %831, %929 ]
  %949 = phi float [ 0.000000e+00, %421 ], [ %832, %929 ]
  %950 = phi float [ 0.000000e+00, %421 ], [ %750, %929 ]
  %951 = phi float [ 0.000000e+00, %421 ], [ %751, %929 ]
  %952 = phi float [ 0.000000e+00, %421 ], [ %752, %929 ]
  %953 = phi float [ 0.000000e+00, %421 ], [ %930, %929 ]
  %954 = phi float [ 0.000000e+00, %421 ], [ %931, %929 ]
  %955 = phi float [ 0.000000e+00, %421 ], [ %932, %929 ]
  %956 = phi float [ 0.000000e+00, %421 ], [ %878, %929 ]
  %957 = phi float [ 0.000000e+00, %421 ], [ %879, %929 ]
  %958 = phi float [ 0.000000e+00, %421 ], [ %880, %929 ]
  %959 = phi float [ 0.000000e+00, %421 ], [ %736, %929 ]
  %960 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %929 ]
  %961 = phi float [ 0.000000e+00, %421 ], [ %830, %929 ]
  %962 = phi float [ 0.000000e+00, %421 ], [ %833, %929 ]
  %963 = phi float [ 0.000000e+00, %421 ], [ %933, %929 ]
  %964 = phi float [ 0.000000e+00, %421 ], [ %946, %929 ]
  br i1 %372, label %1893, label %965

; <label>:965                                     ; preds = %947
  %966 = icmp ult i32 %427, 2
  %967 = add i32 %45, 40
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = add i32 %45, 44
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = or i32 %972, %969
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1893, label %975

; <label>:975                                     ; preds = %965
  %976 = and i32 %969, 262144
  %977 = icmp ne i32 %976, 0
  %978 = select i1 %977, float %47, float 1.000000e+00
  %979 = select i1 %977, float %48, float 0.000000e+00
  %980 = select i1 %977, float %49, float 0.000000e+00
  %981 = select i1 %977, float %50, float 1.000000e+00
  %982 = select i1 %977, float %51, float %72
  %983 = select i1 %977, float %52, float %73
  %984 = add i32 %45, 300
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = lshr i32 %986, 16
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = fmul fast float %988, 0x3F50624DE0000000
  %990 = add i32 %45, 104
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  %995 = lshr i32 %992, 24
  %996 = add i32 %45, 308
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %998, 65535
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = lshr i32 %998, 16
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = add i32 %45, 48
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = lshr i32 %1005, 22
  %1007 = shl nuw nsw i32 %1006, 5
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = shl i32 %1005, 4
  %1010 = and i32 %1009, 32752
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = lshr i32 %1005, 7
  %1013 = and i32 %1012, 32752
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1017 = fmul fast float %1016, 1.000000e+03
  %1018 = fmul fast float %282, %1017
  %1019 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1020 = fadd fast float %1019, %272
  %1021 = fmul fast float %283, %1017
  %1022 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1023 = fadd fast float %1022, %274
  %1024 = fmul fast float %989, %1017
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = fmul fast float %1025, 0x401921FB60000000
  %1027 = fadd fast float %1026, %1008
  %1028 = call float @dx.op.unary.f32(i32 13, float %1027)  ; Sin(value)
  %1029 = call float @dx.op.unary.f32(i32 12, float %1027)  ; Cos(value)
  %1030 = fsub fast float -0.000000e+00, %1028
  %1031 = fadd fast float %982, -5.000000e-01
  %1032 = fadd fast float %983, -5.000000e-01
  %1033 = fmul fast float %1000, %1031
  %1034 = fmul fast float %1002, %1032
  %1035 = fadd fast float %1033, 5.000000e-01
  %1036 = fadd fast float %1034, 5.000000e-01
  %1037 = fmul fast float %1011, %1035
  %1038 = fmul fast float %1014, %1036
  %1039 = fmul fast float %1029, %1037
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1030, float %1038, float %1039)  ; FMad(a,b,c)
  %1041 = fmul fast float %1028, %1037
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1029, float %1038, float %1041)  ; FMad(a,b,c)
  %1043 = fadd fast float %1020, %1040
  %1044 = fadd fast float %1023, %1042
  %1045 = icmp ugt i32 %994, 1
  %1046 = icmp ugt i32 %992, 33554431
  %1047 = or i1 %1046, %1045
  br i1 %1047, label %1048, label %1073

; <label>:1048                                    ; preds = %975
  %1049 = add i32 %45, 244
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = lshr i32 %1051, 16
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = fmul fast float %1016, %1053
  %1055 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1056 = mul nuw nsw i32 %994, %995
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1055, %1057
  %1059 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1060 = fptoui float %1059 to i32
  %1061 = urem i32 %1060, %994
  %1062 = udiv i32 %1060, %995
  %1063 = call float @dx.op.unary.f32(i32 22, float %1043)  ; Frc(value)
  %1064 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1065 = uitofp i32 %1061 to float
  %1066 = uitofp i32 %1062 to float
  %1067 = fadd fast float %1063, %1065
  %1068 = fadd fast float %1064, %1066
  %1069 = uitofp i32 %994 to float
  %1070 = uitofp i32 %995 to float
  %1071 = fdiv fast float %1067, %1069
  %1072 = fdiv fast float %1068, %1070
  br label %1073

; <label>:1073                                    ; preds = %1048, %975
  %1074 = phi float [ %1071, %1048 ], [ %1043, %975 ]
  %1075 = phi float [ %1072, %1048 ], [ %1044, %975 ]
  %1076 = and i32 %969, 16777216
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1187, label %1078

; <label>:1078                                    ; preds = %1073
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fadd fast float %1080, %143
  %1084 = fadd fast float %1081, %144
  %1085 = fadd fast float %1082, %145
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = icmp eq i32 %46, 65535
  br i1 %1089, label %1184, label %1090

; <label>:1090                                    ; preds = %1078
  %1091 = lshr i32 %46, 1
  %1092 = shl i32 %1091, 2
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %46, 1
  %1096 = icmp ne i32 %1095, 0
  %1097 = lshr i32 %1094, 16
  %1098 = and i32 %1094, 65535
  %1099 = select i1 %1096, i32 %1097, i32 %1098
  %1100 = icmp eq i32 %1099, 65535
  br i1 %1100, label %1180, label %1101

; <label>:1101                                    ; preds = %1090
  %1102 = mul nuw nsw i32 %1099, 40
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1103, 2
  %1107 = add nuw nsw i32 %1102, 12
  %1108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = add nuw nsw i32 %1102, 24
  %1113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = add nuw nsw i32 %1102, 36
  %1118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = fsub fast float %1083, %1104
  %1121 = fsub fast float %1084, %1105
  %1122 = fsub fast float %1085, %1106
  %1123 = fmul fast float %1119, %1120
  %1124 = fmul fast float %1119, %1121
  %1125 = fmul fast float %1119, %1122
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = fadd fast float %1126, 5.000000e-01
  %1130 = fadd fast float %1127, 5.000000e-01
  %1131 = fadd fast float %1128, 5.000000e-01
  %1132 = fmul fast float %1129, %1109
  %1133 = fmul fast float %1130, %1110
  %1134 = fmul fast float %1131, %1111
  %1135 = shl i32 %46, 2
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1141 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1142 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1139, %dx.types.Handle %40, float %1140, float %1141, float %1142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = fmul fast float %1144, 1.023000e+03
  %1148 = fmul fast float %1145, 1.023000e+03
  %1149 = fmul fast float %1146, 1.023000e+03
  %1150 = fadd fast float %1147, 5.000000e-01
  %1151 = fadd fast float %1148, 5.000000e-01
  %1152 = fadd fast float %1149, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 27, float %1150)  ; Round_ni(value)
  %1154 = call float @dx.op.unary.f32(i32 27, float %1151)  ; Round_ni(value)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1156 = fsub fast float %1123, %1126
  %1157 = fsub fast float %1124, %1127
  %1158 = fsub fast float %1125, %1128
  %1159 = fmul fast float %1156, 7.500000e-01
  %1160 = fmul fast float %1157, 7.500000e-01
  %1161 = fmul fast float %1158, 7.500000e-01
  %1162 = fadd fast float %1126, 1.250000e-01
  %1163 = fadd fast float %1162, %1159
  %1164 = fadd fast float %1163, %1153
  %1165 = fadd fast float %1127, 1.250000e-01
  %1166 = fadd fast float %1165, %1160
  %1167 = fadd fast float %1166, %1154
  %1168 = fadd fast float %1128, 1.250000e-01
  %1169 = fadd fast float %1168, %1161
  %1170 = fadd fast float %1169, %1155
  %1171 = fmul fast float %1164, %1114
  %1172 = fmul fast float %1167, %1115
  %1173 = fmul fast float %1170, %1116
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1177, %dx.types.Handle %38, float %1171, float %1172, float %1173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  br label %1180

; <label>:1180                                    ; preds = %1101, %1090
  %1181 = phi float [ %1179, %1101 ], [ -1.000000e+00, %1090 ]
  %1182 = fadd fast float %1181, %1088
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  br label %1184

; <label>:1184                                    ; preds = %1180, %1078
  %1185 = phi float [ %1183, %1180 ], [ %1088, %1078 ]
  %1186 = fmul fast float %1185, %424
  br label %1187

; <label>:1187                                    ; preds = %1184, %1073
  %1188 = phi float [ %1186, %1184 ], [ %424, %1073 ]
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 256
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1239, label %1193

; <label>:1193                                    ; preds = %1187
  %1194 = add i32 %45, 428
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = add i32 %1196, 0
  %1198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1198, %dx.types.Handle %81, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = add i32 %45, 116
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = shl i32 %1203, 4
  %1205 = and i32 %1204, 32752
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = lshr i32 %1203, 7
  %1208 = and i32 %1207, 32752
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = fsub fast float 1.000000e+00, %1188
  %1211 = call float @dx.op.binary.f32(i32 35, float %1210, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1212 = bitcast float %1188 to i32
  %1213 = sitofp i32 %1212 to float
  %1214 = fadd fast float %1213, 0xC1CFBF8940000000
  %1215 = fmul fast float %1209, %1214
  %1216 = fadd fast float %1215, 0x41CFBF8940000000
  %1217 = fptosi float %1216 to i32
  %1218 = bitcast i32 %1217 to float
  %1219 = bitcast float %1211 to i32
  %1220 = sitofp i32 %1219 to float
  %1221 = fadd fast float %1220, 0xC1CFBF8940000000
  %1222 = fmul fast float %1221, %1209
  %1223 = fadd fast float %1222, 0x41CFBF8940000000
  %1224 = fptosi float %1223 to i32
  %1225 = bitcast i32 %1224 to float
  %1226 = fmul fast float %1218, %1206
  %1227 = fmul fast float %1225, %1206
  %1228 = fsub fast float %1211, %1226
  %1229 = fadd fast float %1227, %1211
  %1230 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1231 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1232 = fsub fast float %1200, %1230
  %1233 = fsub fast float %1231, %1230
  %1234 = bitcast float %1233 to i32
  %1235 = sub nsw i32 2129859010, %1234
  %1236 = bitcast i32 %1235 to float
  %1237 = fmul fast float %1236, %1232
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  br label %1239

; <label>:1239                                    ; preds = %1193, %1187
  %1240 = phi float [ %1238, %1193 ], [ %1188, %1187 ]
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 128
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1261, label %1245

; <label>:1245                                    ; preds = %1239
  %1246 = add i32 %45, 412
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %1248, 0
  %1250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1250, %dx.types.Handle %81, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 524288
  %1256 = icmp ne i32 %1255, 0
  %1257 = fcmp fast ogt float %1252, 0x3FE0101020000000
  %1258 = select i1 %1257, float 1.000000e+00, float 0.000000e+00
  %1259 = select i1 %1256, float %1258, float %1252
  %1260 = fmul fast float %1259, %1240
  br label %1261

; <label>:1261                                    ; preds = %1245, %1239
  %1262 = phi float [ %1260, %1245 ], [ %1240, %1239 ]
  %1263 = fcmp fast ult float %1262, 0x3F70101020000000
  br i1 %1263, label %1893, label %1264

; <label>:1264                                    ; preds = %1261
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 16
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1467, label %1269

; <label>:1269                                    ; preds = %1264
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %45, 364
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %1274, 0
  %1276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1276, %dx.types.Handle %80, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.ResRet.f32 %1277, 3
  %1282 = and i32 %1271, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = lshr i32 %1271, 8
  %1285 = and i32 %1284, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1281, %1283
  %1288 = fadd fast float %1287, %1286
  %1289 = fmul fast float %1288, 0x3F70101000000000
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 512
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1302, label %1294

; <label>:1294                                    ; preds = %1269
  %1295 = add i32 %45, 444
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = add i32 %1297, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1299, %dx.types.Handle %81, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  br label %1302

; <label>:1302                                    ; preds = %1294, %1269
  %1303 = phi float [ %1301, %1294 ], [ 1.000000e+00, %1269 ]
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 33554432
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1414, label %1308

; <label>:1308                                    ; preds = %1302
  %1309 = add i32 %45, 240
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 65535
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = lshr i32 %1311, 16
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = add i32 %45, 244
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 65535
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 24
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = and i32 %1322, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = lshr i32 %1322, 8
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = lshr i32 %1322, 16
  %1334 = and i32 %1333, 255
  %1335 = uitofp i32 %1334 to float
  %1336 = fmul fast float %1335, 0x3F70101020000000
  %1337 = add i32 %45, 236
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = lshr i32 %1339, 24
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F70101020000000
  %1343 = and i32 %1339, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = lshr i32 %1339, 8
  %1347 = and i32 %1346, 255
  %1348 = uitofp i32 %1347 to float
  %1349 = fmul fast float %1348, 0x3F70101020000000
  %1350 = lshr i32 %1339, 16
  %1351 = and i32 %1350, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101020000000
  %1354 = bitcast float %1278 to i32
  %1355 = ashr i32 %1354, 1
  %1356 = sub nsw i32 1597463174, %1355
  %1357 = bitcast i32 %1356 to float
  %1358 = fmul fast float %1278, 5.000000e-01
  %1359 = fmul fast float %1357, %1357
  %1360 = fmul fast float %1359, %1358
  %1361 = fsub fast float 1.500000e+00, %1360
  %1362 = fmul fast float %1357, %1278
  %1363 = fmul fast float %1362, %1361
  %1364 = bitcast float %1279 to i32
  %1365 = ashr i32 %1364, 1
  %1366 = sub nsw i32 1597463174, %1365
  %1367 = bitcast i32 %1366 to float
  %1368 = fmul fast float %1279, 5.000000e-01
  %1369 = fmul fast float %1367, %1367
  %1370 = fmul fast float %1369, %1368
  %1371 = fsub fast float 1.500000e+00, %1370
  %1372 = fmul fast float %1367, %1279
  %1373 = fmul fast float %1372, %1371
  %1374 = bitcast float %1280 to i32
  %1375 = ashr i32 %1374, 1
  %1376 = sub nsw i32 1597463174, %1375
  %1377 = bitcast i32 %1376 to float
  %1378 = fmul fast float %1280, 5.000000e-01
  %1379 = fmul fast float %1377, %1377
  %1380 = fmul fast float %1379, %1378
  %1381 = fsub fast float 1.500000e+00, %1380
  %1382 = fmul fast float %1377, %1280
  %1383 = fmul fast float %1382, %1381
  %1384 = fsub fast float %1363, %1345
  %1385 = fsub fast float %1373, %1349
  %1386 = fsub fast float %1383, %1353
  %1387 = fmul fast float %1384, %1313
  %1388 = fmul fast float %1385, %1315
  %1389 = fmul fast float %1386, %1320
  %1390 = fadd fast float %1387, %1328
  %1391 = fadd fast float %1388, %1332
  %1392 = fadd fast float %1389, %1336
  %1393 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1394 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1395 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1396 = fmul fast float %1393, %1393
  %1397 = fmul fast float %1394, %1394
  %1398 = fmul fast float %1395, %1395
  %1399 = fsub fast float %1396, %1278
  %1400 = fsub fast float %1397, %1279
  %1401 = fsub fast float %1398, %1280
  %1402 = fmul fast float %1399, %1303
  %1403 = fmul fast float %1400, %1303
  %1404 = fmul fast float %1401, %1303
  %1405 = fadd fast float %1402, %1278
  %1406 = fadd fast float %1403, %1279
  %1407 = fadd fast float %1404, %1280
  %1408 = fadd fast float %1325, %1289
  %1409 = fsub fast float %1408, %1342
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fsub fast float %1410, %1289
  %1412 = fmul fast float %1411, %1303
  %1413 = fadd fast float %1412, %1289
  br label %1467

; <label>:1414                                    ; preds = %1302
  %1415 = and i32 %1305, 134217728
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1451, label %1417

; <label>:1417                                    ; preds = %1414
  %1418 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1419 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1420 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1421 = fadd fast float %1418, -5.000000e-01
  %1422 = fadd fast float %1419, -5.000000e-01
  %1423 = fadd fast float %1420, -5.000000e-01
  %1424 = fmul fast float %1421, %1303
  %1425 = fmul fast float %1422, %1303
  %1426 = fmul fast float %1423, %1303
  %1427 = fadd fast float %1424, 5.000000e-01
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1431 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1432 = call float @dx.op.unary.f32(i32 24, float %1280)  ; Sqrt(value)
  %1433 = fmul fast float %1427, 2.000000e+00
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = fmul fast float %1434, %1430
  %1436 = fadd fast float %1435, %1433
  %1437 = fmul fast float %1436, %1430
  %1438 = fmul fast float %1428, 2.000000e+00
  %1439 = fsub fast float 1.000000e+00, %1438
  %1440 = fmul fast float %1439, %1431
  %1441 = fadd fast float %1440, %1438
  %1442 = fmul fast float %1441, %1431
  %1443 = fmul fast float %1429, 2.000000e+00
  %1444 = fsub fast float 1.000000e+00, %1443
  %1445 = fmul fast float %1444, %1432
  %1446 = fadd fast float %1445, %1443
  %1447 = fmul fast float %1446, %1432
  %1448 = fmul fast float %1437, %1437
  %1449 = fmul fast float %1442, %1442
  %1450 = fmul fast float %1447, %1447
  br label %1467

; <label>:1451                                    ; preds = %1414
  %1452 = fmul fast float %259, %259
  %1453 = fmul fast float %263, %263
  %1454 = fmul fast float %267, %267
  %1455 = fadd fast float %1452, -1.000000e+00
  %1456 = fadd fast float %1453, -1.000000e+00
  %1457 = fadd fast float %1454, -1.000000e+00
  %1458 = fmul fast float %1303, %1455
  %1459 = fmul fast float %1303, %1456
  %1460 = fmul fast float %1303, %1457
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fadd fast float %1460, 1.000000e+00
  %1464 = fmul fast float %1461, %1278
  %1465 = fmul fast float %1462, %1279
  %1466 = fmul fast float %1463, %1280
  br label %1467

; <label>:1467                                    ; preds = %1451, %1417, %1308, %1264
  %1468 = phi float [ %1413, %1308 ], [ %1289, %1417 ], [ %1289, %1451 ], [ 0x3FA23C0BE0000000, %1264 ]
  %1469 = phi float [ %1405, %1308 ], [ %1448, %1417 ], [ %1464, %1451 ], [ 1.000000e+00, %1264 ]
  %1470 = phi float [ %1406, %1308 ], [ %1449, %1417 ], [ %1465, %1451 ], [ 1.000000e+00, %1264 ]
  %1471 = phi float [ %1407, %1308 ], [ %1450, %1417 ], [ %1466, %1451 ], [ 1.000000e+00, %1264 ]
  %1472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.i32 %1472, 1
  %1474 = and i32 %1473, 1
  %1475 = icmp ne i32 %1474, 0
  %1476 = add i32 %45, 356
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 32
  %1480 = icmp ne i32 %1479, 0
  %1481 = and i1 %1475, %1480
  %1482 = select i1 %1481, float 1.000000e+00, float %1469
  %1483 = select i1 %1481, float 0x3FD3333340000000, float %1470
  %1484 = select i1 %1481, float 0x3FD3333340000000, float %1471
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 32
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1561, label %1489

; <label>:1489                                    ; preds = %1467
  %1490 = add i32 %45, 108
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %45, 380
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1495, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1497, %dx.types.Handle %80, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.ResRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.ResRet.f32 %1498, 2
  %1502 = extractvalue %dx.types.ResRet.f32 %1498, 3
  %1503 = and i32 %1492, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = lshr i32 %1492, 8
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = lshr i32 %1492, 16
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101000000000
  %1512 = fmul fast float %1499, %1504
  %1513 = fadd fast float %1512, %1507
  %1514 = fmul fast float %1513, 0x3F70101000000000
  %1515 = fadd fast float %1500, -5.000000e-01
  %1516 = fadd fast float %1502, -5.000000e-01
  %1517 = fmul fast float %1515, %1511
  %1518 = fmul fast float %1516, %1511
  %1519 = fadd fast float %1517, 5.000000e-01
  %1520 = fadd fast float %1518, 5.000000e-01
  %1521 = fmul fast float %1519, 2.000000e+00
  %1522 = fadd fast float %1521, -1.000000e+00
  %1523 = fmul fast float %1520, 2.000000e+00
  %1524 = fadd fast float %1523, -1.000000e+00
  %1525 = fadd fast float %1522, %1524
  %1526 = fmul fast float %1525, 5.000000e-01
  %1527 = fsub fast float %1522, %1524
  %1528 = fmul fast float %1527, 5.000000e-01
  %1529 = call float @dx.op.unary.f32(i32 6, float %1526)  ; FAbs(value)
  %1530 = fsub fast float 1.000000e+00, %1529
  %1531 = call float @dx.op.unary.f32(i32 6, float %1528)  ; FAbs(value)
  %1532 = fsub fast float %1530, %1531
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1526, float %1528, float %1532, float %1526, float %1528, float %1532)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = call float @dx.op.unary.f32(i32 25, float %1533)  ; Rsqrt(value)
  %1535 = fmul fast float %1526, %1534
  %1536 = fmul fast float %1528, %1534
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 67108864
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1557, label %1541

; <label>:1541                                    ; preds = %1489
  %1542 = add i32 %45, 296
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 65535
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 65535
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = lshr i32 %1544, 16
  %1552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1551)  ; LegacyF16ToF32(value)
  %1553 = fsub fast float %1514, %1552
  %1554 = fmul fast float %1553, %1546
  %1555 = fadd fast float %1554, %1550
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  br label %1557

; <label>:1557                                    ; preds = %1541, %1489
  %1558 = phi float [ %1556, %1541 ], [ %1514, %1489 ]
  %1559 = call float @dx.op.dot2.f32(i32 54, float %1535, float %1536, float %978, float %979)  ; Dot2(ax,ay,bx,by)
  %1560 = call float @dx.op.dot2.f32(i32 54, float %1535, float %1536, float %980, float %981)  ; Dot2(ax,ay,bx,by)
  br label %1561

; <label>:1561                                    ; preds = %1557, %1467
  %1562 = phi float [ %1558, %1557 ], [ 0x3FD6666660000000, %1467 ]
  %1563 = phi float [ %1559, %1557 ], [ 0.000000e+00, %1467 ]
  %1564 = phi float [ %1560, %1557 ], [ 0.000000e+00, %1467 ]
  %1565 = phi float [ %1501, %1557 ], [ 1.000000e+00, %1467 ]
  %1566 = add i32 %45, 176
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = lshr i32 %1568, 22
  %1570 = shl nuw nsw i32 %1569, 5
  %1571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1570)  ; LegacyF16ToF32(value)
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 64
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1609, label %1576

; <label>:1576                                    ; preds = %1561
  %1577 = add i32 %45, 396
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1579, 0
  %1581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 131072
  %1585 = icmp eq i32 %1584, 0
  %1586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1581, %dx.types.Handle %80, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = extractvalue %dx.types.ResRet.f32 %1586, 2
  %1590 = fmul fast float %1587, %247
  %1591 = fmul fast float %1588, %250
  %1592 = fmul fast float %1589, %253
  br i1 %1585, label %1599, label %1593

; <label>:1593                                    ; preds = %1576
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = fmul fast float %1595, %1590
  %1597 = fmul fast float %1595, %1591
  %1598 = fmul fast float %1595, %1592
  br label %1599

; <label>:1599                                    ; preds = %1593, %1576
  %1600 = phi float [ %1596, %1593 ], [ %1590, %1576 ]
  %1601 = phi float [ %1597, %1593 ], [ %1591, %1576 ]
  %1602 = phi float [ %1598, %1593 ], [ %1592, %1576 ]
  %1603 = fmul fast float %1600, %1571
  %1604 = select i1 %185, float %1603, float %1600
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1601, float %1602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = select i1 %185, float 0.000000e+00, float %1600
  %1607 = select i1 %185, float %1605, float %1601
  %1608 = select i1 %185, float 0.000000e+00, float %1602
  br label %1609

; <label>:1609                                    ; preds = %1599, %1561
  %1610 = phi float [ %1606, %1599 ], [ 0.000000e+00, %1561 ]
  %1611 = phi float [ %1607, %1599 ], [ 0.000000e+00, %1561 ]
  %1612 = phi float [ %1608, %1599 ], [ 0.000000e+00, %1561 ]
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 10240
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1661, label %1617

; <label>:1617                                    ; preds = %1609
  %1618 = add i32 %45, 460
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1618, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = add i32 %1620, 0
  %1622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1622, %dx.types.Handle %81, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1623, 3
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 1048576
  %1629 = icmp ne i32 %1628, 0
  %1630 = and i32 %1627, 8192
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1647, label %1632

; <label>:1632                                    ; preds = %1617
  %1633 = extractvalue %dx.types.ResRet.f32 %1623, 2
  %1634 = select i1 %1629, float %1633, float %1624
  %1635 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1636 = select i1 %1629, float %1635, float %1624
  %1637 = add i32 %45, 112
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = lshr i32 %1639, 16
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F80101020000000
  %1644 = fmul fast float %1643, %1636
  %1645 = fmul fast float %1643, %1624
  %1646 = fmul fast float %1643, %1634
  br label %1647

; <label>:1647                                    ; preds = %1632, %1617
  %1648 = phi float [ %1644, %1632 ], [ 0.000000e+00, %1617 ]
  %1649 = phi float [ %1645, %1632 ], [ 0.000000e+00, %1617 ]
  %1650 = phi float [ %1646, %1632 ], [ 0.000000e+00, %1617 ]
  %1651 = and i32 %1627, 2048
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1661, label %1653

; <label>:1653                                    ; preds = %1647
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = shl i32 %1655, 4
  %1657 = and i32 %1656, 32752
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = fmul fast float %1658, %1625
  %1660 = call float @dx.op.binary.f32(i32 35, float %1659, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1661

; <label>:1661                                    ; preds = %1653, %1647, %1609
  %1662 = phi float [ %1648, %1653 ], [ %1648, %1647 ], [ 0.000000e+00, %1609 ]
  %1663 = phi float [ %1649, %1653 ], [ %1649, %1647 ], [ 0.000000e+00, %1609 ]
  %1664 = phi float [ %1650, %1653 ], [ %1650, %1647 ], [ 0.000000e+00, %1609 ]
  %1665 = phi float [ %1660, %1653 ], [ 0x3F70101020000000, %1647 ], [ 0x3F70101020000000, %1609 ]
  %1666 = add i32 %45, 112
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 255
  %1670 = uitofp i32 %1669 to float
  %1671 = lshr i32 %1668, 8
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = fmul fast float %1673, %1674
  %1676 = fadd fast float %1675, %1670
  %1677 = fmul fast float %1676, 0x3F70101020000000
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  br i1 %966, label %1679, label %1687

; <label>:1679                                    ; preds = %1661
  %1680 = fsub fast float 1.000000e+00, %1262
  %1681 = fmul fast float %1680, %950
  %1682 = fmul fast float %1680, %951
  %1683 = fmul fast float %1680, %952
  %1684 = fmul fast float %1680, %956
  %1685 = fmul fast float %1680, %957
  %1686 = fmul fast float %1680, %958
  br label %1687

; <label>:1687                                    ; preds = %1679, %1661
  %1688 = phi float [ %1681, %1679 ], [ %950, %1661 ]
  %1689 = phi float [ %1682, %1679 ], [ %951, %1661 ]
  %1690 = phi float [ %1683, %1679 ], [ %952, %1661 ]
  %1691 = phi float [ %1684, %1679 ], [ %956, %1661 ]
  %1692 = phi float [ %1685, %1679 ], [ %957, %1661 ]
  %1693 = phi float [ %1686, %1679 ], [ %958, %1661 ]
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 3
  %1697 = icmp eq i32 %1696, 3
  br i1 %1697, label %1776, label %1698

; <label>:1698                                    ; preds = %1687
  %1699 = and i32 %1695, 16
  %1700 = icmp ne i32 %1699, 0
  %1701 = select i1 %1700, float %1262, float 0.000000e+00
  %1702 = icmp eq i32 %1696, 0
  br i1 %1702, label %1703, label %1731

; <label>:1703                                    ; preds = %1698
  %1704 = and i32 %1695, 64
  %1705 = icmp ne i32 %1704, 0
  %1706 = select i1 %1705, float %1262, float 0.000000e+00
  %1707 = fsub fast float %1482, %1688
  %1708 = fsub fast float %1483, %1689
  %1709 = fsub fast float %1484, %1690
  %1710 = fmul fast float %1701, %1707
  %1711 = fmul fast float %1701, %1708
  %1712 = fmul fast float %1701, %1709
  %1713 = fadd fast float %1710, %1688
  %1714 = fadd fast float %1711, %1689
  %1715 = fadd fast float %1712, %1690
  %1716 = fsub fast float %1468, %959
  %1717 = fmul fast float %1701, %1716
  %1718 = fadd fast float %1717, %959
  %1719 = fsub fast float %1610, %1691
  %1720 = fsub fast float %1611, %1692
  %1721 = fsub fast float %1612, %1693
  %1722 = fmul fast float %1706, %1719
  %1723 = fmul fast float %1706, %1720
  %1724 = fmul fast float %1706, %1721
  %1725 = fadd fast float %1722, %1691
  %1726 = fadd fast float %1723, %1692
  %1727 = fadd fast float %1724, %1693
  %1728 = fsub fast float %1678, %964
  %1729 = fmul fast float %1701, %1728
  %1730 = fadd fast float %1729, %964
  br label %1776

; <label>:1731                                    ; preds = %1698
  %1732 = icmp eq i32 %1696, 1
  br i1 %1732, label %1733, label %1746

; <label>:1733                                    ; preds = %1731
  %1734 = fadd fast float %1482, -1.000000e+00
  %1735 = fadd fast float %1483, -1.000000e+00
  %1736 = fadd fast float %1484, -1.000000e+00
  %1737 = fmul fast float %1701, %1734
  %1738 = fmul fast float %1701, %1735
  %1739 = fmul fast float %1701, %1736
  %1740 = fadd fast float %1737, 1.000000e+00
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fadd fast float %1739, 1.000000e+00
  %1743 = fmul fast float %1740, %1688
  %1744 = fmul fast float %1741, %1689
  %1745 = fmul fast float %1742, %1690
  br label %1776

; <label>:1746                                    ; preds = %1731
  %1747 = icmp eq i32 %1696, 2
  br i1 %1747, label %1748, label %1776

; <label>:1748                                    ; preds = %1746
  %1749 = call float @dx.op.unary.f32(i32 24, float %1482)  ; Sqrt(value)
  %1750 = call float @dx.op.unary.f32(i32 24, float %1483)  ; Sqrt(value)
  %1751 = call float @dx.op.unary.f32(i32 24, float %1484)  ; Sqrt(value)
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fadd fast float %1751, -5.000000e-01
  %1755 = fmul fast float %1752, %1701
  %1756 = fmul fast float %1753, %1701
  %1757 = fmul fast float %1754, %1701
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = fmul fast float %1758, 2.000000e+00
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1762, %1688
  %1764 = fadd fast float %1763, %1761
  %1765 = fmul fast float %1764, %1688
  %1766 = fmul fast float %1759, 2.000000e+00
  %1767 = fsub fast float 1.000000e+00, %1766
  %1768 = fmul fast float %1767, %1689
  %1769 = fadd fast float %1768, %1766
  %1770 = fmul fast float %1769, %1689
  %1771 = fmul fast float %1760, 2.000000e+00
  %1772 = fsub fast float 1.000000e+00, %1771
  %1773 = fmul fast float %1772, %1690
  %1774 = fadd fast float %1773, %1771
  %1775 = fmul fast float %1774, %1690
  br label %1776

; <label>:1776                                    ; preds = %1748, %1746, %1733, %1703, %1687
  %1777 = phi float [ %1688, %1687 ], [ %1765, %1748 ], [ %1688, %1746 ], [ %1743, %1733 ], [ %1713, %1703 ]
  %1778 = phi float [ %1689, %1687 ], [ %1770, %1748 ], [ %1689, %1746 ], [ %1744, %1733 ], [ %1714, %1703 ]
  %1779 = phi float [ %1690, %1687 ], [ %1775, %1748 ], [ %1690, %1746 ], [ %1745, %1733 ], [ %1715, %1703 ]
  %1780 = phi float [ %1691, %1687 ], [ %1691, %1748 ], [ %1691, %1746 ], [ %1691, %1733 ], [ %1725, %1703 ]
  %1781 = phi float [ %1692, %1687 ], [ %1692, %1748 ], [ %1692, %1746 ], [ %1692, %1733 ], [ %1726, %1703 ]
  %1782 = phi float [ %1693, %1687 ], [ %1693, %1748 ], [ %1693, %1746 ], [ %1693, %1733 ], [ %1727, %1703 ]
  %1783 = phi float [ %959, %1687 ], [ %959, %1748 ], [ %959, %1746 ], [ %959, %1733 ], [ %1718, %1703 ]
  %1784 = phi float [ %964, %1687 ], [ %964, %1748 ], [ %964, %1746 ], [ %964, %1733 ], [ %1730, %1703 ]
  %1785 = and i32 %1695, 12
  %1786 = icmp eq i32 %1785, 12
  br i1 %1786, label %1893, label %1787

; <label>:1787                                    ; preds = %1776
  %1788 = and i32 %1695, 2097184
  %1789 = icmp eq i32 %1788, 2097184
  %1790 = select i1 %1789, float %1262, float 0.000000e+00
  %1791 = and i32 %1695, 4194336
  %1792 = icmp eq i32 %1791, 4194336
  %1793 = select i1 %1792, float %1262, float 0.000000e+00
  %1794 = and i32 %1695, 8388640
  %1795 = icmp eq i32 %1794, 8388640
  %1796 = select i1 %1795, float %1262, float 0.000000e+00
  %1797 = and i32 %1695, 2048
  %1798 = icmp ne i32 %1797, 0
  %1799 = select i1 %1798, float %1262, float 0.000000e+00
  %1800 = and i32 %1695, 8192
  %1801 = icmp ne i32 %1800, 0
  %1802 = select i1 %1801, float %1262, float 0.000000e+00
  %1803 = icmp eq i32 %1785, 0
  br i1 %1803, label %1804, label %1829

; <label>:1804                                    ; preds = %1787
  %1805 = fsub fast float %1563, %948
  %1806 = fsub fast float %1564, %949
  %1807 = fmul fast float %1790, %1805
  %1808 = fmul fast float %1790, %1806
  %1809 = fadd fast float %1807, %948
  %1810 = fadd fast float %1808, %949
  %1811 = fsub fast float %1565, %962
  %1812 = fmul fast float %1793, %1811
  %1813 = fadd fast float %1812, %962
  %1814 = fsub fast float %1562, %961
  %1815 = fmul fast float %1796, %1814
  %1816 = fadd fast float %1815, %961
  %1817 = fsub fast float %1665, %963
  %1818 = fmul fast float %1799, %1817
  %1819 = fadd fast float %1818, %963
  %1820 = fsub fast float %1662, %953
  %1821 = fsub fast float %1663, %954
  %1822 = fsub fast float %1664, %955
  %1823 = fmul fast float %1802, %1820
  %1824 = fmul fast float %1802, %1821
  %1825 = fmul fast float %1802, %1822
  %1826 = fadd fast float %1823, %953
  %1827 = fadd fast float %1824, %954
  %1828 = fadd fast float %1825, %955
  br label %1893

; <label>:1829                                    ; preds = %1787
  %1830 = icmp eq i32 %1785, 4
  br i1 %1830, label %1831, label %1871

; <label>:1831                                    ; preds = %1829
  %1832 = fmul fast float %1790, %1563
  %1833 = fmul fast float %1790, %1564
  %1834 = fadd fast float %1832, %948
  %1835 = fadd fast float %1833, %949
  %1836 = call float @dx.op.binary.f32(i32 36, float %962, float %1565)  ; FMin(a,b)
  %1837 = fsub fast float %1836, %962
  %1838 = fmul fast float %1837, %1793
  %1839 = fadd fast float %1838, %962
  %1840 = fadd fast float %1562, %961
  %1841 = fmul fast float %1840, 0x3FF337FAE0000000
  %1842 = fmul fast float %961, %961
  %1843 = fmul fast float %1562, %1562
  %1844 = fadd fast float %1843, %1842
  %1845 = fmul fast float %1844, 0x3FE5152B00000000
  %1846 = fmul fast float %961, 0xBFCC1F85E0000000
  %1847 = fmul fast float %1846, %1562
  %1848 = fadd fast float %1847, 0xBFE1363700000000
  %1849 = fadd fast float %1848, %1841
  %1850 = fsub fast float %1849, %1845
  %1851 = fmul fast float %1840, 0x3FBA6F0D00000000
  %1852 = fmul fast float %1844, 0x3FD0432880000000
  %1853 = fmul fast float %961, 0xBFEF110800000000
  %1854 = fmul fast float %1853, %1562
  %1855 = fadd fast float %1854, 1.000000e+00
  %1856 = fsub fast float %1855, %1851
  %1857 = fadd fast float %1856, %1852
  %1858 = fdiv fast float %1850, %1857
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = fsub fast float %1859, %961
  %1861 = fmul fast float %1860, %1796
  %1862 = fadd fast float %1861, %961
  %1863 = fmul fast float %1799, %1665
  %1864 = fadd fast float %1863, %963
  %1865 = fmul fast float %1802, %1662
  %1866 = fmul fast float %1802, %1663
  %1867 = fmul fast float %1802, %1664
  %1868 = fadd fast float %1865, %953
  %1869 = fadd fast float %1866, %954
  %1870 = fadd fast float %1867, %955
  br label %1893

; <label>:1871                                    ; preds = %1829
  %1872 = icmp eq i32 %1785, 8
  br i1 %1872, label %1873, label %1893

; <label>:1873                                    ; preds = %1871
  %1874 = fmul fast float %1790, %1563
  %1875 = fmul fast float %1790, %1564
  %1876 = fadd fast float %1874, %948
  %1877 = fadd fast float %1875, %949
  %1878 = call float @dx.op.binary.f32(i32 36, float %962, float %1565)  ; FMin(a,b)
  %1879 = fsub fast float %1878, %962
  %1880 = fmul fast float %1879, %1793
  %1881 = fadd fast float %1880, %962
  %1882 = fsub fast float %1562, %961
  %1883 = fmul fast float %1796, %1882
  %1884 = fadd fast float %1883, %961
  %1885 = fmul fast float %1799, %1665
  %1886 = fadd fast float %1885, %963
  %1887 = fmul fast float %1802, %1662
  %1888 = fmul fast float %1802, %1663
  %1889 = fmul fast float %1802, %1664
  %1890 = fadd fast float %1887, %953
  %1891 = fadd fast float %1888, %954
  %1892 = fadd fast float %1889, %955
  br label %1893

; <label>:1893                                    ; preds = %1873, %1871, %1831, %1804, %1776, %1261, %965, %947
  %1894 = phi float [ %948, %1776 ], [ %948, %1261 ], [ %948, %947 ], [ %1876, %1873 ], [ %948, %1871 ], [ %1834, %1831 ], [ %1809, %1804 ], [ %948, %965 ]
  %1895 = phi float [ %949, %1776 ], [ %949, %1261 ], [ %949, %947 ], [ %1877, %1873 ], [ %949, %1871 ], [ %1835, %1831 ], [ %1810, %1804 ], [ %949, %965 ]
  %1896 = phi float [ %1777, %1776 ], [ %950, %1261 ], [ %950, %947 ], [ %1777, %1873 ], [ %1777, %1871 ], [ %1777, %1831 ], [ %1777, %1804 ], [ %950, %965 ]
  %1897 = phi float [ %1778, %1776 ], [ %951, %1261 ], [ %951, %947 ], [ %1778, %1873 ], [ %1778, %1871 ], [ %1778, %1831 ], [ %1778, %1804 ], [ %951, %965 ]
  %1898 = phi float [ %1779, %1776 ], [ %952, %1261 ], [ %952, %947 ], [ %1779, %1873 ], [ %1779, %1871 ], [ %1779, %1831 ], [ %1779, %1804 ], [ %952, %965 ]
  %1899 = phi float [ %953, %1776 ], [ %953, %1261 ], [ %953, %947 ], [ %1890, %1873 ], [ %953, %1871 ], [ %1868, %1831 ], [ %1826, %1804 ], [ %953, %965 ]
  %1900 = phi float [ %954, %1776 ], [ %954, %1261 ], [ %954, %947 ], [ %1891, %1873 ], [ %954, %1871 ], [ %1869, %1831 ], [ %1827, %1804 ], [ %954, %965 ]
  %1901 = phi float [ %955, %1776 ], [ %955, %1261 ], [ %955, %947 ], [ %1892, %1873 ], [ %955, %1871 ], [ %1870, %1831 ], [ %1828, %1804 ], [ %955, %965 ]
  %1902 = phi float [ %1780, %1776 ], [ %956, %1261 ], [ %956, %947 ], [ %1780, %1873 ], [ %1780, %1871 ], [ %1780, %1831 ], [ %1780, %1804 ], [ %956, %965 ]
  %1903 = phi float [ %1781, %1776 ], [ %957, %1261 ], [ %957, %947 ], [ %1781, %1873 ], [ %1781, %1871 ], [ %1781, %1831 ], [ %1781, %1804 ], [ %957, %965 ]
  %1904 = phi float [ %1782, %1776 ], [ %958, %1261 ], [ %958, %947 ], [ %1782, %1873 ], [ %1782, %1871 ], [ %1782, %1831 ], [ %1782, %1804 ], [ %958, %965 ]
  %1905 = phi float [ %1783, %1776 ], [ %959, %1261 ], [ %959, %947 ], [ %1783, %1873 ], [ %1783, %1871 ], [ %1783, %1831 ], [ %1783, %1804 ], [ %959, %965 ]
  %1906 = phi float [ %961, %1776 ], [ %961, %1261 ], [ %961, %947 ], [ %1884, %1873 ], [ %961, %1871 ], [ %1862, %1831 ], [ %1816, %1804 ], [ %961, %965 ]
  %1907 = phi float [ %962, %1776 ], [ %962, %1261 ], [ %962, %947 ], [ %1881, %1873 ], [ %962, %1871 ], [ %1839, %1831 ], [ %1813, %1804 ], [ %962, %965 ]
  %1908 = phi float [ %963, %1776 ], [ %963, %1261 ], [ %963, %947 ], [ %1886, %1873 ], [ %963, %1871 ], [ %1864, %1831 ], [ %1819, %1804 ], [ %963, %965 ]
  %1909 = phi float [ %1784, %1776 ], [ %964, %1261 ], [ %964, %947 ], [ %1784, %1873 ], [ %1784, %1871 ], [ %1784, %1831 ], [ %1784, %1804 ], [ %964, %965 ]
  br i1 %374, label %2838, label %1910

; <label>:1910                                    ; preds = %1893
  %1911 = icmp ult i32 %427, 3
  %1912 = add i32 %45, 56
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %45, 60
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = or i32 %1917, %1914
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %2838, label %1920

; <label>:1920                                    ; preds = %1910
  %1921 = and i32 %1914, 262144
  %1922 = icmp ne i32 %1921, 0
  %1923 = select i1 %1922, float %47, float 1.000000e+00
  %1924 = select i1 %1922, float %48, float 0.000000e+00
  %1925 = select i1 %1922, float %49, float 0.000000e+00
  %1926 = select i1 %1922, float %50, float 1.000000e+00
  %1927 = select i1 %1922, float %51, float %72
  %1928 = select i1 %1922, float %52, float %73
  %1929 = add i32 %45, 316
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = lshr i32 %1931, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1933, 0x3F50624DE0000000
  %1935 = add i32 %45, 120
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = lshr i32 %1937, 16
  %1939 = and i32 %1938, 255
  %1940 = lshr i32 %1937, 24
  %1941 = add i32 %45, 324
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = and i32 %1943, 65535
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = lshr i32 %1943, 16
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = add i32 %45, 64
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = lshr i32 %1950, 22
  %1952 = shl nuw nsw i32 %1951, 5
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = shl i32 %1950, 4
  %1955 = and i32 %1954, 32752
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = lshr i32 %1950, 7
  %1958 = and i32 %1957, 32752
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 3
  %1962 = fmul fast float %1961, 1.000000e+03
  %1963 = fmul fast float %324, %1962
  %1964 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %1965 = fadd fast float %1964, %314
  %1966 = fmul fast float %325, %1962
  %1967 = call float @dx.op.unary.f32(i32 22, float %1966)  ; Frc(value)
  %1968 = fadd fast float %1967, %316
  %1969 = fmul fast float %1934, %1962
  %1970 = call float @dx.op.unary.f32(i32 22, float %1969)  ; Frc(value)
  %1971 = fmul fast float %1970, 0x401921FB60000000
  %1972 = fadd fast float %1971, %1953
  %1973 = call float @dx.op.unary.f32(i32 13, float %1972)  ; Sin(value)
  %1974 = call float @dx.op.unary.f32(i32 12, float %1972)  ; Cos(value)
  %1975 = fsub fast float -0.000000e+00, %1973
  %1976 = fadd fast float %1927, -5.000000e-01
  %1977 = fadd fast float %1928, -5.000000e-01
  %1978 = fmul fast float %1945, %1976
  %1979 = fmul fast float %1947, %1977
  %1980 = fadd fast float %1978, 5.000000e-01
  %1981 = fadd fast float %1979, 5.000000e-01
  %1982 = fmul fast float %1956, %1980
  %1983 = fmul fast float %1959, %1981
  %1984 = fmul fast float %1974, %1982
  %1985 = call float @dx.op.tertiary.f32(i32 46, float %1975, float %1983, float %1984)  ; FMad(a,b,c)
  %1986 = fmul fast float %1973, %1982
  %1987 = call float @dx.op.tertiary.f32(i32 46, float %1974, float %1983, float %1986)  ; FMad(a,b,c)
  %1988 = fadd fast float %1965, %1985
  %1989 = fadd fast float %1968, %1987
  %1990 = icmp ugt i32 %1939, 1
  %1991 = icmp ugt i32 %1937, 33554431
  %1992 = or i1 %1991, %1990
  br i1 %1992, label %1993, label %2018

; <label>:1993                                    ; preds = %1920
  %1994 = add i32 %45, 260
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = lshr i32 %1996, 16
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = fmul fast float %1961, %1998
  %2000 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2001 = mul nuw nsw i32 %1939, %1940
  %2002 = uitofp i32 %2001 to float
  %2003 = fmul fast float %2000, %2002
  %2004 = call float @dx.op.unary.f32(i32 27, float %2003)  ; Round_ni(value)
  %2005 = fptoui float %2004 to i32
  %2006 = urem i32 %2005, %1939
  %2007 = udiv i32 %2005, %1940
  %2008 = call float @dx.op.unary.f32(i32 22, float %1988)  ; Frc(value)
  %2009 = call float @dx.op.unary.f32(i32 22, float %1989)  ; Frc(value)
  %2010 = uitofp i32 %2006 to float
  %2011 = uitofp i32 %2007 to float
  %2012 = fadd fast float %2008, %2010
  %2013 = fadd fast float %2009, %2011
  %2014 = uitofp i32 %1939 to float
  %2015 = uitofp i32 %1940 to float
  %2016 = fdiv fast float %2012, %2014
  %2017 = fdiv fast float %2013, %2015
  br label %2018

; <label>:2018                                    ; preds = %1993, %1920
  %2019 = phi float [ %2016, %1993 ], [ %1988, %1920 ]
  %2020 = phi float [ %2017, %1993 ], [ %1989, %1920 ]
  %2021 = and i32 %1914, 16777216
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2132, label %2023

; <label>:2023                                    ; preds = %2018
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2028 = fadd fast float %2025, %143
  %2029 = fadd fast float %2026, %144
  %2030 = fadd fast float %2027, %145
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = icmp eq i32 %46, 65535
  br i1 %2034, label %2129, label %2035

; <label>:2035                                    ; preds = %2023
  %2036 = lshr i32 %46, 1
  %2037 = shl i32 %2036, 2
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %46, 1
  %2041 = icmp ne i32 %2040, 0
  %2042 = lshr i32 %2039, 16
  %2043 = and i32 %2039, 65535
  %2044 = select i1 %2041, i32 %2042, i32 %2043
  %2045 = icmp eq i32 %2044, 65535
  br i1 %2045, label %2125, label %2046

; <label>:2046                                    ; preds = %2035
  %2047 = mul nuw nsw i32 %2044, 40
  %2048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.ResRet.f32 %2048, 2
  %2052 = add nuw nsw i32 %2047, 12
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = add nuw nsw i32 %2047, 24
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = add nuw nsw i32 %2047, 36
  %2063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = fsub fast float %2028, %2049
  %2066 = fsub fast float %2029, %2050
  %2067 = fsub fast float %2030, %2051
  %2068 = fmul fast float %2064, %2065
  %2069 = fmul fast float %2064, %2066
  %2070 = fmul fast float %2064, %2067
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = call float @dx.op.unary.f32(i32 27, float %2069)  ; Round_ni(value)
  %2073 = call float @dx.op.unary.f32(i32 27, float %2070)  ; Round_ni(value)
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fadd fast float %2072, 5.000000e-01
  %2076 = fadd fast float %2073, 5.000000e-01
  %2077 = fmul fast float %2074, %2054
  %2078 = fmul fast float %2075, %2055
  %2079 = fmul fast float %2076, %2056
  %2080 = shl i32 %46, 2
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = add i32 %2082, 0
  %2084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2085 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2086 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2087 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2084, %dx.types.Handle %40, float %2085, float %2086, float %2087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.ResRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.ResRet.f32 %2088, 2
  %2092 = fmul fast float %2089, 1.023000e+03
  %2093 = fmul fast float %2090, 1.023000e+03
  %2094 = fmul fast float %2091, 1.023000e+03
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = fadd fast float %2093, 5.000000e-01
  %2097 = fadd fast float %2094, 5.000000e-01
  %2098 = call float @dx.op.unary.f32(i32 27, float %2095)  ; Round_ni(value)
  %2099 = call float @dx.op.unary.f32(i32 27, float %2096)  ; Round_ni(value)
  %2100 = call float @dx.op.unary.f32(i32 27, float %2097)  ; Round_ni(value)
  %2101 = fsub fast float %2068, %2071
  %2102 = fsub fast float %2069, %2072
  %2103 = fsub fast float %2070, %2073
  %2104 = fmul fast float %2101, 7.500000e-01
  %2105 = fmul fast float %2102, 7.500000e-01
  %2106 = fmul fast float %2103, 7.500000e-01
  %2107 = fadd fast float %2071, 1.250000e-01
  %2108 = fadd fast float %2107, %2104
  %2109 = fadd fast float %2108, %2098
  %2110 = fadd fast float %2072, 1.250000e-01
  %2111 = fadd fast float %2110, %2105
  %2112 = fadd fast float %2111, %2099
  %2113 = fadd fast float %2073, 1.250000e-01
  %2114 = fadd fast float %2113, %2106
  %2115 = fadd fast float %2114, %2100
  %2116 = fmul fast float %2109, %2059
  %2117 = fmul fast float %2112, %2060
  %2118 = fmul fast float %2115, %2061
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = add i32 %2120, 0
  %2122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2122, %dx.types.Handle %38, float %2116, float %2117, float %2118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  br label %2125

; <label>:2125                                    ; preds = %2046, %2035
  %2126 = phi float [ %2124, %2046 ], [ -1.000000e+00, %2035 ]
  %2127 = fadd fast float %2126, %2033
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  br label %2129

; <label>:2129                                    ; preds = %2125, %2023
  %2130 = phi float [ %2128, %2125 ], [ %2033, %2023 ]
  %2131 = fmul fast float %2130, %423
  br label %2132

; <label>:2132                                    ; preds = %2129, %2018
  %2133 = phi float [ %2131, %2129 ], [ %423, %2018 ]
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 256
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2184, label %2138

; <label>:2138                                    ; preds = %2132
  %2139 = add i32 %45, 432
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %81, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = add i32 %45, 132
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = shl i32 %2148, 4
  %2150 = and i32 %2149, 32752
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = lshr i32 %2148, 7
  %2153 = and i32 %2152, 32752
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = fsub fast float 1.000000e+00, %2133
  %2156 = call float @dx.op.binary.f32(i32 35, float %2155, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2157 = bitcast float %2133 to i32
  %2158 = sitofp i32 %2157 to float
  %2159 = fadd fast float %2158, 0xC1CFBF8940000000
  %2160 = fmul fast float %2154, %2159
  %2161 = fadd fast float %2160, 0x41CFBF8940000000
  %2162 = fptosi float %2161 to i32
  %2163 = bitcast i32 %2162 to float
  %2164 = bitcast float %2156 to i32
  %2165 = sitofp i32 %2164 to float
  %2166 = fadd fast float %2165, 0xC1CFBF8940000000
  %2167 = fmul fast float %2166, %2154
  %2168 = fadd fast float %2167, 0x41CFBF8940000000
  %2169 = fptosi float %2168 to i32
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2163, %2151
  %2172 = fmul fast float %2170, %2151
  %2173 = fsub fast float %2156, %2171
  %2174 = fadd fast float %2172, %2156
  %2175 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2176 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2177 = fsub fast float %2145, %2175
  %2178 = fsub fast float %2176, %2175
  %2179 = bitcast float %2178 to i32
  %2180 = sub nsw i32 2129859010, %2179
  %2181 = bitcast i32 %2180 to float
  %2182 = fmul fast float %2181, %2177
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  br label %2184

; <label>:2184                                    ; preds = %2138, %2132
  %2185 = phi float [ %2183, %2138 ], [ %2133, %2132 ]
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 128
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2206, label %2190

; <label>:2190                                    ; preds = %2184
  %2191 = add i32 %45, 416
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2193, 0
  %2195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2195, %dx.types.Handle %81, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 524288
  %2201 = icmp ne i32 %2200, 0
  %2202 = fcmp fast ogt float %2197, 0x3FE0101020000000
  %2203 = select i1 %2202, float 1.000000e+00, float 0.000000e+00
  %2204 = select i1 %2201, float %2203, float %2197
  %2205 = fmul fast float %2204, %2185
  br label %2206

; <label>:2206                                    ; preds = %2190, %2184
  %2207 = phi float [ %2205, %2190 ], [ %2185, %2184 ]
  %2208 = fcmp fast ult float %2207, 0x3F70101020000000
  br i1 %2208, label %2838, label %2209

; <label>:2209                                    ; preds = %2206
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 16
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2412, label %2214

; <label>:2214                                    ; preds = %2209
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %45, 368
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %80, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.ResRet.f32 %2222, 3
  %2227 = and i32 %2216, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = lshr i32 %2216, 8
  %2230 = and i32 %2229, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2226, %2228
  %2233 = fadd fast float %2232, %2231
  %2234 = fmul fast float %2233, 0x3F70101000000000
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 512
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2247, label %2239

; <label>:2239                                    ; preds = %2214
  %2240 = add i32 %45, 448
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %2242, 0
  %2244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2244, %dx.types.Handle %81, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  br label %2247

; <label>:2247                                    ; preds = %2239, %2214
  %2248 = phi float [ %2246, %2239 ], [ 1.000000e+00, %2214 ]
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 33554432
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2359, label %2253

; <label>:2253                                    ; preds = %2247
  %2254 = add i32 %45, 256
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2256, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = add i32 %45, 260
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 65535
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 24
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = and i32 %2267, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2267, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = lshr i32 %2267, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101020000000
  %2282 = add i32 %45, 252
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 24
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = and i32 %2284, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = lshr i32 %2284, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = lshr i32 %2284, 16
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = bitcast float %2223 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2223, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2223
  %2308 = fmul fast float %2307, %2306
  %2309 = bitcast float %2224 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2224, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2224
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2225 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2225, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2225
  %2328 = fmul fast float %2327, %2326
  %2329 = fsub fast float %2308, %2290
  %2330 = fsub fast float %2318, %2294
  %2331 = fsub fast float %2328, %2298
  %2332 = fmul fast float %2329, %2258
  %2333 = fmul fast float %2330, %2260
  %2334 = fmul fast float %2331, %2265
  %2335 = fadd fast float %2332, %2273
  %2336 = fadd fast float %2333, %2277
  %2337 = fadd fast float %2334, %2281
  %2338 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2340 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2341 = fmul fast float %2338, %2338
  %2342 = fmul fast float %2339, %2339
  %2343 = fmul fast float %2340, %2340
  %2344 = fsub fast float %2341, %2223
  %2345 = fsub fast float %2342, %2224
  %2346 = fsub fast float %2343, %2225
  %2347 = fmul fast float %2344, %2248
  %2348 = fmul fast float %2345, %2248
  %2349 = fmul fast float %2346, %2248
  %2350 = fadd fast float %2347, %2223
  %2351 = fadd fast float %2348, %2224
  %2352 = fadd fast float %2349, %2225
  %2353 = fadd fast float %2270, %2234
  %2354 = fsub fast float %2353, %2287
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fsub fast float %2355, %2234
  %2357 = fmul fast float %2356, %2248
  %2358 = fadd fast float %2357, %2234
  br label %2412

; <label>:2359                                    ; preds = %2247
  %2360 = and i32 %2250, 134217728
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2396, label %2362

; <label>:2362                                    ; preds = %2359
  %2363 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2365 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fadd fast float %2364, -5.000000e-01
  %2368 = fadd fast float %2365, -5.000000e-01
  %2369 = fmul fast float %2366, %2248
  %2370 = fmul fast float %2367, %2248
  %2371 = fmul fast float %2368, %2248
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = fadd fast float %2371, 5.000000e-01
  %2375 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2377 = call float @dx.op.unary.f32(i32 24, float %2225)  ; Sqrt(value)
  %2378 = fmul fast float %2372, 2.000000e+00
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2379, %2375
  %2381 = fadd fast float %2380, %2378
  %2382 = fmul fast float %2381, %2375
  %2383 = fmul fast float %2373, 2.000000e+00
  %2384 = fsub fast float 1.000000e+00, %2383
  %2385 = fmul fast float %2384, %2376
  %2386 = fadd fast float %2385, %2383
  %2387 = fmul fast float %2386, %2376
  %2388 = fmul fast float %2374, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2377
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2377
  %2393 = fmul fast float %2382, %2382
  %2394 = fmul fast float %2387, %2387
  %2395 = fmul fast float %2392, %2392
  br label %2412

; <label>:2396                                    ; preds = %2359
  %2397 = fmul fast float %301, %301
  %2398 = fmul fast float %305, %305
  %2399 = fmul fast float %309, %309
  %2400 = fadd fast float %2397, -1.000000e+00
  %2401 = fadd fast float %2398, -1.000000e+00
  %2402 = fadd fast float %2399, -1.000000e+00
  %2403 = fmul fast float %2248, %2400
  %2404 = fmul fast float %2248, %2401
  %2405 = fmul fast float %2248, %2402
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fadd fast float %2405, 1.000000e+00
  %2409 = fmul fast float %2406, %2223
  %2410 = fmul fast float %2407, %2224
  %2411 = fmul fast float %2408, %2225
  br label %2412

; <label>:2412                                    ; preds = %2396, %2362, %2253, %2209
  %2413 = phi float [ %2358, %2253 ], [ %2234, %2362 ], [ %2234, %2396 ], [ 0x3FA23C0BE0000000, %2209 ]
  %2414 = phi float [ %2350, %2253 ], [ %2393, %2362 ], [ %2409, %2396 ], [ 1.000000e+00, %2209 ]
  %2415 = phi float [ %2351, %2253 ], [ %2394, %2362 ], [ %2410, %2396 ], [ 1.000000e+00, %2209 ]
  %2416 = phi float [ %2352, %2253 ], [ %2395, %2362 ], [ %2411, %2396 ], [ 1.000000e+00, %2209 ]
  %2417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.i32 %2417, 1
  %2419 = and i32 %2418, 1
  %2420 = icmp ne i32 %2419, 0
  %2421 = add i32 %45, 356
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 32
  %2425 = icmp ne i32 %2424, 0
  %2426 = and i1 %2420, %2425
  %2427 = select i1 %2426, float 1.000000e+00, float %2414
  %2428 = select i1 %2426, float 0x3FD3333340000000, float %2415
  %2429 = select i1 %2426, float 0x3FD3333340000000, float %2416
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 32
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2506, label %2434

; <label>:2434                                    ; preds = %2412
  %2435 = add i32 %45, 124
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %45, 384
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %2440, 0
  %2442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2442, %dx.types.Handle %80, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.ResRet.f32 %2443, 3
  %2448 = and i32 %2437, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = lshr i32 %2437, 8
  %2451 = and i32 %2450, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = lshr i32 %2437, 16
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2455, 0x3F70101000000000
  %2457 = fmul fast float %2444, %2449
  %2458 = fadd fast float %2457, %2452
  %2459 = fmul fast float %2458, 0x3F70101000000000
  %2460 = fadd fast float %2445, -5.000000e-01
  %2461 = fadd fast float %2447, -5.000000e-01
  %2462 = fmul fast float %2460, %2456
  %2463 = fmul fast float %2461, %2456
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fmul fast float %2464, 2.000000e+00
  %2467 = fadd fast float %2466, -1.000000e+00
  %2468 = fmul fast float %2465, 2.000000e+00
  %2469 = fadd fast float %2468, -1.000000e+00
  %2470 = fadd fast float %2467, %2469
  %2471 = fmul fast float %2470, 5.000000e-01
  %2472 = fsub fast float %2467, %2469
  %2473 = fmul fast float %2472, 5.000000e-01
  %2474 = call float @dx.op.unary.f32(i32 6, float %2471)  ; FAbs(value)
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = call float @dx.op.unary.f32(i32 6, float %2473)  ; FAbs(value)
  %2477 = fsub fast float %2475, %2476
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2473, float %2477, float %2471, float %2473, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 25, float %2478)  ; Rsqrt(value)
  %2480 = fmul fast float %2471, %2479
  %2481 = fmul fast float %2473, %2479
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 67108864
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2502, label %2486

; <label>:2486                                    ; preds = %2434
  %2487 = add i32 %45, 312
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 65535
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 65535
  %2495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2494)  ; LegacyF16ToF32(value)
  %2496 = lshr i32 %2489, 16
  %2497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2496)  ; LegacyF16ToF32(value)
  %2498 = fsub fast float %2459, %2497
  %2499 = fmul fast float %2498, %2491
  %2500 = fadd fast float %2499, %2495
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br label %2502

; <label>:2502                                    ; preds = %2486, %2434
  %2503 = phi float [ %2501, %2486 ], [ %2459, %2434 ]
  %2504 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %1923, float %1924)  ; Dot2(ax,ay,bx,by)
  %2505 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %1925, float %1926)  ; Dot2(ax,ay,bx,by)
  br label %2506

; <label>:2506                                    ; preds = %2502, %2412
  %2507 = phi float [ %2503, %2502 ], [ 0x3FD6666660000000, %2412 ]
  %2508 = phi float [ %2504, %2502 ], [ 0.000000e+00, %2412 ]
  %2509 = phi float [ %2505, %2502 ], [ 0.000000e+00, %2412 ]
  %2510 = phi float [ %2446, %2502 ], [ 1.000000e+00, %2412 ]
  %2511 = add i32 %45, 192
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = lshr i32 %2513, 22
  %2515 = shl nuw nsw i32 %2514, 5
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 64
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2554, label %2521

; <label>:2521                                    ; preds = %2506
  %2522 = add i32 %45, 400
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 131072
  %2530 = icmp eq i32 %2529, 0
  %2531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2526, %dx.types.Handle %80, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = fmul fast float %2532, %289
  %2536 = fmul fast float %2533, %292
  %2537 = fmul fast float %2534, %295
  br i1 %2530, label %2544, label %2538

; <label>:2538                                    ; preds = %2521
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = fmul fast float %2540, %2535
  %2542 = fmul fast float %2540, %2536
  %2543 = fmul fast float %2540, %2537
  br label %2544

; <label>:2544                                    ; preds = %2538, %2521
  %2545 = phi float [ %2541, %2538 ], [ %2535, %2521 ]
  %2546 = phi float [ %2542, %2538 ], [ %2536, %2521 ]
  %2547 = phi float [ %2543, %2538 ], [ %2537, %2521 ]
  %2548 = fmul fast float %2545, %2516
  %2549 = select i1 %185, float %2548, float %2545
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2546, float %2547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = select i1 %185, float 0.000000e+00, float %2545
  %2552 = select i1 %185, float %2550, float %2546
  %2553 = select i1 %185, float 0.000000e+00, float %2547
  br label %2554

; <label>:2554                                    ; preds = %2544, %2506
  %2555 = phi float [ %2551, %2544 ], [ 0.000000e+00, %2506 ]
  %2556 = phi float [ %2552, %2544 ], [ 0.000000e+00, %2506 ]
  %2557 = phi float [ %2553, %2544 ], [ 0.000000e+00, %2506 ]
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 10240
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2606, label %2562

; <label>:2562                                    ; preds = %2554
  %2563 = add i32 %45, 464
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %2565, 0
  %2567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2567, %dx.types.Handle %81, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 1
  %2570 = extractvalue %dx.types.ResRet.f32 %2568, 3
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 1048576
  %2574 = icmp ne i32 %2573, 0
  %2575 = and i32 %2572, 8192
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2592, label %2577

; <label>:2577                                    ; preds = %2562
  %2578 = extractvalue %dx.types.ResRet.f32 %2568, 2
  %2579 = select i1 %2574, float %2578, float %2569
  %2580 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2581 = select i1 %2574, float %2580, float %2569
  %2582 = add i32 %45, 128
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = lshr i32 %2584, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F80101020000000
  %2589 = fmul fast float %2588, %2581
  %2590 = fmul fast float %2588, %2569
  %2591 = fmul fast float %2588, %2579
  br label %2592

; <label>:2592                                    ; preds = %2577, %2562
  %2593 = phi float [ %2589, %2577 ], [ 0.000000e+00, %2562 ]
  %2594 = phi float [ %2590, %2577 ], [ 0.000000e+00, %2562 ]
  %2595 = phi float [ %2591, %2577 ], [ 0.000000e+00, %2562 ]
  %2596 = and i32 %2572, 2048
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2606, label %2598

; <label>:2598                                    ; preds = %2592
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = shl i32 %2600, 4
  %2602 = and i32 %2601, 32752
  %2603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2602)  ; LegacyF16ToF32(value)
  %2604 = fmul fast float %2603, %2570
  %2605 = call float @dx.op.binary.f32(i32 35, float %2604, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2606

; <label>:2606                                    ; preds = %2598, %2592, %2554
  %2607 = phi float [ %2593, %2598 ], [ %2593, %2592 ], [ 0.000000e+00, %2554 ]
  %2608 = phi float [ %2594, %2598 ], [ %2594, %2592 ], [ 0.000000e+00, %2554 ]
  %2609 = phi float [ %2595, %2598 ], [ %2595, %2592 ], [ 0.000000e+00, %2554 ]
  %2610 = phi float [ %2605, %2598 ], [ 0x3F70101020000000, %2592 ], [ 0x3F70101020000000, %2554 ]
  %2611 = add i32 %45, 128
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 255
  %2615 = uitofp i32 %2614 to float
  %2616 = lshr i32 %2613, 8
  %2617 = and i32 %2616, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2428, float %2429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2620 = fmul fast float %2618, %2619
  %2621 = fadd fast float %2620, %2615
  %2622 = fmul fast float %2621, 0x3F70101020000000
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  br i1 %1911, label %2624, label %2632

; <label>:2624                                    ; preds = %2606
  %2625 = fsub fast float 1.000000e+00, %2207
  %2626 = fmul fast float %2625, %1896
  %2627 = fmul fast float %2625, %1897
  %2628 = fmul fast float %2625, %1898
  %2629 = fmul fast float %2625, %1902
  %2630 = fmul fast float %2625, %1903
  %2631 = fmul fast float %2625, %1904
  br label %2632

; <label>:2632                                    ; preds = %2624, %2606
  %2633 = phi float [ %2626, %2624 ], [ %1896, %2606 ]
  %2634 = phi float [ %2627, %2624 ], [ %1897, %2606 ]
  %2635 = phi float [ %2628, %2624 ], [ %1898, %2606 ]
  %2636 = phi float [ %2629, %2624 ], [ %1902, %2606 ]
  %2637 = phi float [ %2630, %2624 ], [ %1903, %2606 ]
  %2638 = phi float [ %2631, %2624 ], [ %1904, %2606 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 3
  %2642 = icmp eq i32 %2641, 3
  br i1 %2642, label %2721, label %2643

; <label>:2643                                    ; preds = %2632
  %2644 = and i32 %2640, 16
  %2645 = icmp ne i32 %2644, 0
  %2646 = select i1 %2645, float %2207, float 0.000000e+00
  %2647 = icmp eq i32 %2641, 0
  br i1 %2647, label %2648, label %2676

; <label>:2648                                    ; preds = %2643
  %2649 = and i32 %2640, 64
  %2650 = icmp ne i32 %2649, 0
  %2651 = select i1 %2650, float %2207, float 0.000000e+00
  %2652 = fsub fast float %2427, %2633
  %2653 = fsub fast float %2428, %2634
  %2654 = fsub fast float %2429, %2635
  %2655 = fmul fast float %2646, %2652
  %2656 = fmul fast float %2646, %2653
  %2657 = fmul fast float %2646, %2654
  %2658 = fadd fast float %2655, %2633
  %2659 = fadd fast float %2656, %2634
  %2660 = fadd fast float %2657, %2635
  %2661 = fsub fast float %2413, %1905
  %2662 = fmul fast float %2646, %2661
  %2663 = fadd fast float %2662, %1905
  %2664 = fsub fast float %2555, %2636
  %2665 = fsub fast float %2556, %2637
  %2666 = fsub fast float %2557, %2638
  %2667 = fmul fast float %2651, %2664
  %2668 = fmul fast float %2651, %2665
  %2669 = fmul fast float %2651, %2666
  %2670 = fadd fast float %2667, %2636
  %2671 = fadd fast float %2668, %2637
  %2672 = fadd fast float %2669, %2638
  %2673 = fsub fast float %2623, %1909
  %2674 = fmul fast float %2646, %2673
  %2675 = fadd fast float %2674, %1909
  br label %2721

; <label>:2676                                    ; preds = %2643
  %2677 = icmp eq i32 %2641, 1
  br i1 %2677, label %2678, label %2691

; <label>:2678                                    ; preds = %2676
  %2679 = fadd fast float %2427, -1.000000e+00
  %2680 = fadd fast float %2428, -1.000000e+00
  %2681 = fadd fast float %2429, -1.000000e+00
  %2682 = fmul fast float %2646, %2679
  %2683 = fmul fast float %2646, %2680
  %2684 = fmul fast float %2646, %2681
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fadd fast float %2683, 1.000000e+00
  %2687 = fadd fast float %2684, 1.000000e+00
  %2688 = fmul fast float %2685, %2633
  %2689 = fmul fast float %2686, %2634
  %2690 = fmul fast float %2687, %2635
  br label %2721

; <label>:2691                                    ; preds = %2676
  %2692 = icmp eq i32 %2641, 2
  br i1 %2692, label %2693, label %2721

; <label>:2693                                    ; preds = %2691
  %2694 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2695 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2696 = call float @dx.op.unary.f32(i32 24, float %2429)  ; Sqrt(value)
  %2697 = fadd fast float %2694, -5.000000e-01
  %2698 = fadd fast float %2695, -5.000000e-01
  %2699 = fadd fast float %2696, -5.000000e-01
  %2700 = fmul fast float %2697, %2646
  %2701 = fmul fast float %2698, %2646
  %2702 = fmul fast float %2699, %2646
  %2703 = fadd fast float %2700, 5.000000e-01
  %2704 = fadd fast float %2701, 5.000000e-01
  %2705 = fadd fast float %2702, 5.000000e-01
  %2706 = fmul fast float %2703, 2.000000e+00
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %2707, %2633
  %2709 = fadd fast float %2708, %2706
  %2710 = fmul fast float %2709, %2633
  %2711 = fmul fast float %2704, 2.000000e+00
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2712, %2634
  %2714 = fadd fast float %2713, %2711
  %2715 = fmul fast float %2714, %2634
  %2716 = fmul fast float %2705, 2.000000e+00
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2717, %2635
  %2719 = fadd fast float %2718, %2716
  %2720 = fmul fast float %2719, %2635
  br label %2721

; <label>:2721                                    ; preds = %2693, %2691, %2678, %2648, %2632
  %2722 = phi float [ %2633, %2632 ], [ %2710, %2693 ], [ %2633, %2691 ], [ %2688, %2678 ], [ %2658, %2648 ]
  %2723 = phi float [ %2634, %2632 ], [ %2715, %2693 ], [ %2634, %2691 ], [ %2689, %2678 ], [ %2659, %2648 ]
  %2724 = phi float [ %2635, %2632 ], [ %2720, %2693 ], [ %2635, %2691 ], [ %2690, %2678 ], [ %2660, %2648 ]
  %2725 = phi float [ %2636, %2632 ], [ %2636, %2693 ], [ %2636, %2691 ], [ %2636, %2678 ], [ %2670, %2648 ]
  %2726 = phi float [ %2637, %2632 ], [ %2637, %2693 ], [ %2637, %2691 ], [ %2637, %2678 ], [ %2671, %2648 ]
  %2727 = phi float [ %2638, %2632 ], [ %2638, %2693 ], [ %2638, %2691 ], [ %2638, %2678 ], [ %2672, %2648 ]
  %2728 = phi float [ %1905, %2632 ], [ %1905, %2693 ], [ %1905, %2691 ], [ %1905, %2678 ], [ %2663, %2648 ]
  %2729 = phi float [ %1909, %2632 ], [ %1909, %2693 ], [ %1909, %2691 ], [ %1909, %2678 ], [ %2675, %2648 ]
  %2730 = and i32 %2640, 12
  %2731 = icmp eq i32 %2730, 12
  br i1 %2731, label %2838, label %2732

; <label>:2732                                    ; preds = %2721
  %2733 = and i32 %2640, 2097184
  %2734 = icmp eq i32 %2733, 2097184
  %2735 = select i1 %2734, float %2207, float 0.000000e+00
  %2736 = and i32 %2640, 4194336
  %2737 = icmp eq i32 %2736, 4194336
  %2738 = select i1 %2737, float %2207, float 0.000000e+00
  %2739 = and i32 %2640, 8388640
  %2740 = icmp eq i32 %2739, 8388640
  %2741 = select i1 %2740, float %2207, float 0.000000e+00
  %2742 = and i32 %2640, 2048
  %2743 = icmp ne i32 %2742, 0
  %2744 = select i1 %2743, float %2207, float 0.000000e+00
  %2745 = and i32 %2640, 8192
  %2746 = icmp ne i32 %2745, 0
  %2747 = select i1 %2746, float %2207, float 0.000000e+00
  %2748 = icmp eq i32 %2730, 0
  br i1 %2748, label %2749, label %2774

; <label>:2749                                    ; preds = %2732
  %2750 = fsub fast float %2508, %1894
  %2751 = fsub fast float %2509, %1895
  %2752 = fmul fast float %2735, %2750
  %2753 = fmul fast float %2735, %2751
  %2754 = fadd fast float %2752, %1894
  %2755 = fadd fast float %2753, %1895
  %2756 = fsub fast float %2510, %1907
  %2757 = fmul fast float %2738, %2756
  %2758 = fadd fast float %2757, %1907
  %2759 = fsub fast float %2507, %1906
  %2760 = fmul fast float %2741, %2759
  %2761 = fadd fast float %2760, %1906
  %2762 = fsub fast float %2610, %1908
  %2763 = fmul fast float %2744, %2762
  %2764 = fadd fast float %2763, %1908
  %2765 = fsub fast float %2607, %1899
  %2766 = fsub fast float %2608, %1900
  %2767 = fsub fast float %2609, %1901
  %2768 = fmul fast float %2747, %2765
  %2769 = fmul fast float %2747, %2766
  %2770 = fmul fast float %2747, %2767
  %2771 = fadd fast float %2768, %1899
  %2772 = fadd fast float %2769, %1900
  %2773 = fadd fast float %2770, %1901
  br label %2838

; <label>:2774                                    ; preds = %2732
  %2775 = icmp eq i32 %2730, 4
  br i1 %2775, label %2776, label %2816

; <label>:2776                                    ; preds = %2774
  %2777 = fmul fast float %2735, %2508
  %2778 = fmul fast float %2735, %2509
  %2779 = fadd fast float %2777, %1894
  %2780 = fadd fast float %2778, %1895
  %2781 = call float @dx.op.binary.f32(i32 36, float %1907, float %2510)  ; FMin(a,b)
  %2782 = fsub fast float %2781, %1907
  %2783 = fmul fast float %2782, %2738
  %2784 = fadd fast float %2783, %1907
  %2785 = fadd fast float %2507, %1906
  %2786 = fmul fast float %2785, 0x3FF337FAE0000000
  %2787 = fmul fast float %1906, %1906
  %2788 = fmul fast float %2507, %2507
  %2789 = fadd fast float %2788, %2787
  %2790 = fmul fast float %2789, 0x3FE5152B00000000
  %2791 = fmul fast float %1906, 0xBFCC1F85E0000000
  %2792 = fmul fast float %2791, %2507
  %2793 = fadd fast float %2792, 0xBFE1363700000000
  %2794 = fadd fast float %2793, %2786
  %2795 = fsub fast float %2794, %2790
  %2796 = fmul fast float %2785, 0x3FBA6F0D00000000
  %2797 = fmul fast float %2789, 0x3FD0432880000000
  %2798 = fmul fast float %1906, 0xBFEF110800000000
  %2799 = fmul fast float %2798, %2507
  %2800 = fadd fast float %2799, 1.000000e+00
  %2801 = fsub fast float %2800, %2796
  %2802 = fadd fast float %2801, %2797
  %2803 = fdiv fast float %2795, %2802
  %2804 = call float @dx.op.unary.f32(i32 7, float %2803)  ; Saturate(value)
  %2805 = fsub fast float %2804, %1906
  %2806 = fmul fast float %2805, %2741
  %2807 = fadd fast float %2806, %1906
  %2808 = fmul fast float %2744, %2610
  %2809 = fadd fast float %2808, %1908
  %2810 = fmul fast float %2747, %2607
  %2811 = fmul fast float %2747, %2608
  %2812 = fmul fast float %2747, %2609
  %2813 = fadd fast float %2810, %1899
  %2814 = fadd fast float %2811, %1900
  %2815 = fadd fast float %2812, %1901
  br label %2838

; <label>:2816                                    ; preds = %2774
  %2817 = icmp eq i32 %2730, 8
  br i1 %2817, label %2818, label %2838

; <label>:2818                                    ; preds = %2816
  %2819 = fmul fast float %2735, %2508
  %2820 = fmul fast float %2735, %2509
  %2821 = fadd fast float %2819, %1894
  %2822 = fadd fast float %2820, %1895
  %2823 = call float @dx.op.binary.f32(i32 36, float %1907, float %2510)  ; FMin(a,b)
  %2824 = fsub fast float %2823, %1907
  %2825 = fmul fast float %2824, %2738
  %2826 = fadd fast float %2825, %1907
  %2827 = fsub fast float %2507, %1906
  %2828 = fmul fast float %2741, %2827
  %2829 = fadd fast float %2828, %1906
  %2830 = fmul fast float %2744, %2610
  %2831 = fadd fast float %2830, %1908
  %2832 = fmul fast float %2747, %2607
  %2833 = fmul fast float %2747, %2608
  %2834 = fmul fast float %2747, %2609
  %2835 = fadd fast float %2832, %1899
  %2836 = fadd fast float %2833, %1900
  %2837 = fadd fast float %2834, %1901
  br label %2838

; <label>:2838                                    ; preds = %2818, %2816, %2776, %2749, %2721, %2206, %1910, %1893
  %2839 = phi float [ %1894, %2721 ], [ %1894, %2206 ], [ %1894, %1893 ], [ %2821, %2818 ], [ %1894, %2816 ], [ %2779, %2776 ], [ %2754, %2749 ], [ %1894, %1910 ]
  %2840 = phi float [ %1895, %2721 ], [ %1895, %2206 ], [ %1895, %1893 ], [ %2822, %2818 ], [ %1895, %2816 ], [ %2780, %2776 ], [ %2755, %2749 ], [ %1895, %1910 ]
  %2841 = phi float [ %2722, %2721 ], [ %1896, %2206 ], [ %1896, %1893 ], [ %2722, %2818 ], [ %2722, %2816 ], [ %2722, %2776 ], [ %2722, %2749 ], [ %1896, %1910 ]
  %2842 = phi float [ %2723, %2721 ], [ %1897, %2206 ], [ %1897, %1893 ], [ %2723, %2818 ], [ %2723, %2816 ], [ %2723, %2776 ], [ %2723, %2749 ], [ %1897, %1910 ]
  %2843 = phi float [ %2724, %2721 ], [ %1898, %2206 ], [ %1898, %1893 ], [ %2724, %2818 ], [ %2724, %2816 ], [ %2724, %2776 ], [ %2724, %2749 ], [ %1898, %1910 ]
  %2844 = phi float [ %1899, %2721 ], [ %1899, %2206 ], [ %1899, %1893 ], [ %2835, %2818 ], [ %1899, %2816 ], [ %2813, %2776 ], [ %2771, %2749 ], [ %1899, %1910 ]
  %2845 = phi float [ %1900, %2721 ], [ %1900, %2206 ], [ %1900, %1893 ], [ %2836, %2818 ], [ %1900, %2816 ], [ %2814, %2776 ], [ %2772, %2749 ], [ %1900, %1910 ]
  %2846 = phi float [ %1901, %2721 ], [ %1901, %2206 ], [ %1901, %1893 ], [ %2837, %2818 ], [ %1901, %2816 ], [ %2815, %2776 ], [ %2773, %2749 ], [ %1901, %1910 ]
  %2847 = phi float [ %2725, %2721 ], [ %1902, %2206 ], [ %1902, %1893 ], [ %2725, %2818 ], [ %2725, %2816 ], [ %2725, %2776 ], [ %2725, %2749 ], [ %1902, %1910 ]
  %2848 = phi float [ %2726, %2721 ], [ %1903, %2206 ], [ %1903, %1893 ], [ %2726, %2818 ], [ %2726, %2816 ], [ %2726, %2776 ], [ %2726, %2749 ], [ %1903, %1910 ]
  %2849 = phi float [ %2727, %2721 ], [ %1904, %2206 ], [ %1904, %1893 ], [ %2727, %2818 ], [ %2727, %2816 ], [ %2727, %2776 ], [ %2727, %2749 ], [ %1904, %1910 ]
  %2850 = phi float [ %2728, %2721 ], [ %1905, %2206 ], [ %1905, %1893 ], [ %2728, %2818 ], [ %2728, %2816 ], [ %2728, %2776 ], [ %2728, %2749 ], [ %1905, %1910 ]
  %2851 = phi float [ %1906, %2721 ], [ %1906, %2206 ], [ %1906, %1893 ], [ %2829, %2818 ], [ %1906, %2816 ], [ %2807, %2776 ], [ %2761, %2749 ], [ %1906, %1910 ]
  %2852 = phi float [ %1907, %2721 ], [ %1907, %2206 ], [ %1907, %1893 ], [ %2826, %2818 ], [ %1907, %2816 ], [ %2784, %2776 ], [ %2758, %2749 ], [ %1907, %1910 ]
  %2853 = phi float [ %1908, %2721 ], [ %1908, %2206 ], [ %1908, %1893 ], [ %2831, %2818 ], [ %1908, %2816 ], [ %2809, %2776 ], [ %2764, %2749 ], [ %1908, %1910 ]
  %2854 = phi float [ %2729, %2721 ], [ %1909, %2206 ], [ %1909, %1893 ], [ %2729, %2818 ], [ %2729, %2816 ], [ %2729, %2776 ], [ %2729, %2749 ], [ %1909, %1910 ]
  br i1 %376, label %3783, label %2855

; <label>:2855                                    ; preds = %2838
  %2856 = icmp ult i32 %427, 4
  %2857 = add i32 %45, 72
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = add i32 %45, 76
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = or i32 %2862, %2859
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %3783, label %2865

; <label>:2865                                    ; preds = %2855
  %2866 = and i32 %2859, 262144
  %2867 = icmp ne i32 %2866, 0
  %2868 = select i1 %2867, float %47, float 1.000000e+00
  %2869 = select i1 %2867, float %48, float 0.000000e+00
  %2870 = select i1 %2867, float %49, float 0.000000e+00
  %2871 = select i1 %2867, float %50, float 1.000000e+00
  %2872 = select i1 %2867, float %51, float %72
  %2873 = select i1 %2867, float %52, float %73
  %2874 = add i32 %45, 332
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = lshr i32 %2876, 16
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = fmul fast float %2878, 0x3F50624DE0000000
  %2880 = add i32 %45, 136
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 16
  %2884 = and i32 %2883, 255
  %2885 = lshr i32 %2882, 24
  %2886 = add i32 %45, 340
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2888, 16
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = add i32 %45, 80
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 22
  %2897 = shl nuw nsw i32 %2896, 5
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = shl i32 %2895, 4
  %2900 = and i32 %2899, 32752
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = lshr i32 %2895, 7
  %2903 = and i32 %2902, 32752
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 3
  %2907 = fmul fast float %2906, 1.000000e+03
  %2908 = fmul fast float %366, %2907
  %2909 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2910 = fadd fast float %2909, %356
  %2911 = fmul fast float %367, %2907
  %2912 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2913 = fadd fast float %2912, %358
  %2914 = fmul fast float %2879, %2907
  %2915 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2916 = fmul fast float %2915, 0x401921FB60000000
  %2917 = fadd fast float %2916, %2898
  %2918 = call float @dx.op.unary.f32(i32 13, float %2917)  ; Sin(value)
  %2919 = call float @dx.op.unary.f32(i32 12, float %2917)  ; Cos(value)
  %2920 = fsub fast float -0.000000e+00, %2918
  %2921 = fadd fast float %2872, -5.000000e-01
  %2922 = fadd fast float %2873, -5.000000e-01
  %2923 = fmul fast float %2890, %2921
  %2924 = fmul fast float %2892, %2922
  %2925 = fadd fast float %2923, 5.000000e-01
  %2926 = fadd fast float %2924, 5.000000e-01
  %2927 = fmul fast float %2901, %2925
  %2928 = fmul fast float %2904, %2926
  %2929 = fmul fast float %2919, %2927
  %2930 = call float @dx.op.tertiary.f32(i32 46, float %2920, float %2928, float %2929)  ; FMad(a,b,c)
  %2931 = fmul fast float %2918, %2927
  %2932 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2928, float %2931)  ; FMad(a,b,c)
  %2933 = fadd fast float %2910, %2930
  %2934 = fadd fast float %2913, %2932
  %2935 = icmp ugt i32 %2884, 1
  %2936 = icmp ugt i32 %2882, 33554431
  %2937 = or i1 %2936, %2935
  br i1 %2937, label %2938, label %2963

; <label>:2938                                    ; preds = %2865
  %2939 = add i32 %45, 276
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 16
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = fmul fast float %2906, %2943
  %2945 = call float @dx.op.unary.f32(i32 22, float %2944)  ; Frc(value)
  %2946 = mul nuw nsw i32 %2884, %2885
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2945, %2947
  %2949 = call float @dx.op.unary.f32(i32 27, float %2948)  ; Round_ni(value)
  %2950 = fptoui float %2949 to i32
  %2951 = urem i32 %2950, %2884
  %2952 = udiv i32 %2950, %2885
  %2953 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2954 = call float @dx.op.unary.f32(i32 22, float %2934)  ; Frc(value)
  %2955 = uitofp i32 %2951 to float
  %2956 = uitofp i32 %2952 to float
  %2957 = fadd fast float %2953, %2955
  %2958 = fadd fast float %2954, %2956
  %2959 = uitofp i32 %2884 to float
  %2960 = uitofp i32 %2885 to float
  %2961 = fdiv fast float %2957, %2959
  %2962 = fdiv fast float %2958, %2960
  br label %2963

; <label>:2963                                    ; preds = %2938, %2865
  %2964 = phi float [ %2961, %2938 ], [ %2933, %2865 ]
  %2965 = phi float [ %2962, %2938 ], [ %2934, %2865 ]
  %2966 = and i32 %2859, 16777216
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3077, label %2968

; <label>:2968                                    ; preds = %2963
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.CBufRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.CBufRet.f32 %2969, 2
  %2973 = fadd fast float %2970, %143
  %2974 = fadd fast float %2971, %144
  %2975 = fadd fast float %2972, %145
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = icmp eq i32 %46, 65535
  br i1 %2979, label %3074, label %2980

; <label>:2980                                    ; preds = %2968
  %2981 = lshr i32 %46, 1
  %2982 = shl i32 %2981, 2
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %46, 1
  %2986 = icmp ne i32 %2985, 0
  %2987 = lshr i32 %2984, 16
  %2988 = and i32 %2984, 65535
  %2989 = select i1 %2986, i32 %2987, i32 %2988
  %2990 = icmp eq i32 %2989, 65535
  br i1 %2990, label %3070, label %2991

; <label>:2991                                    ; preds = %2980
  %2992 = mul nuw nsw i32 %2989, 40
  %2993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = add nuw nsw i32 %2992, 12
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = add nuw nsw i32 %2992, 24
  %3003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.ResRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.ResRet.f32 %3003, 2
  %3007 = add nuw nsw i32 %2992, 36
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = fsub fast float %2973, %2994
  %3011 = fsub fast float %2974, %2995
  %3012 = fsub fast float %2975, %2996
  %3013 = fmul fast float %3009, %3010
  %3014 = fmul fast float %3009, %3011
  %3015 = fmul fast float %3009, %3012
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3018 = call float @dx.op.unary.f32(i32 27, float %3015)  ; Round_ni(value)
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fadd fast float %3017, 5.000000e-01
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = fmul fast float %3019, %2999
  %3023 = fmul fast float %3020, %3000
  %3024 = fmul fast float %3021, %3001
  %3025 = shl i32 %46, 2
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3031 = call float @dx.op.unary.f32(i32 22, float %3023)  ; Frc(value)
  %3032 = call float @dx.op.unary.f32(i32 22, float %3024)  ; Frc(value)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3029, %dx.types.Handle %40, float %3030, float %3031, float %3032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = fmul fast float %3034, 1.023000e+03
  %3038 = fmul fast float %3035, 1.023000e+03
  %3039 = fmul fast float %3036, 1.023000e+03
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = call float @dx.op.unary.f32(i32 27, float %3040)  ; Round_ni(value)
  %3044 = call float @dx.op.unary.f32(i32 27, float %3041)  ; Round_ni(value)
  %3045 = call float @dx.op.unary.f32(i32 27, float %3042)  ; Round_ni(value)
  %3046 = fsub fast float %3013, %3016
  %3047 = fsub fast float %3014, %3017
  %3048 = fsub fast float %3015, %3018
  %3049 = fmul fast float %3046, 7.500000e-01
  %3050 = fmul fast float %3047, 7.500000e-01
  %3051 = fmul fast float %3048, 7.500000e-01
  %3052 = fadd fast float %3016, 1.250000e-01
  %3053 = fadd fast float %3052, %3049
  %3054 = fadd fast float %3053, %3043
  %3055 = fadd fast float %3017, 1.250000e-01
  %3056 = fadd fast float %3055, %3050
  %3057 = fadd fast float %3056, %3044
  %3058 = fadd fast float %3018, 1.250000e-01
  %3059 = fadd fast float %3058, %3051
  %3060 = fadd fast float %3059, %3045
  %3061 = fmul fast float %3054, %3004
  %3062 = fmul fast float %3057, %3005
  %3063 = fmul fast float %3060, %3006
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3067, %dx.types.Handle %38, float %3061, float %3062, float %3063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  br label %3070

; <label>:3070                                    ; preds = %2991, %2980
  %3071 = phi float [ %3069, %2991 ], [ -1.000000e+00, %2980 ]
  %3072 = fadd fast float %3071, %2978
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  br label %3074

; <label>:3074                                    ; preds = %3070, %2968
  %3075 = phi float [ %3073, %3070 ], [ %2978, %2968 ]
  %3076 = fmul fast float %3075, %422
  br label %3077

; <label>:3077                                    ; preds = %3074, %2963
  %3078 = phi float [ %3076, %3074 ], [ %422, %2963 ]
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 256
  %3082 = icmp eq i32 %3081, 0
  br i1 %3082, label %3129, label %3083

; <label>:3083                                    ; preds = %3077
  %3084 = add i32 %45, 436
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = add i32 %3086, 0
  %3088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3088, %dx.types.Handle %81, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = add i32 %45, 148
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = shl i32 %3093, 4
  %3095 = and i32 %3094, 32752
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = lshr i32 %3093, 7
  %3098 = and i32 %3097, 32752
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = fsub fast float 1.000000e+00, %3078
  %3101 = call float @dx.op.binary.f32(i32 35, float %3100, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3102 = bitcast float %3078 to i32
  %3103 = sitofp i32 %3102 to float
  %3104 = fadd fast float %3103, 0xC1CFBF8940000000
  %3105 = fmul fast float %3099, %3104
  %3106 = fadd fast float %3105, 0x41CFBF8940000000
  %3107 = fptosi float %3106 to i32
  %3108 = bitcast i32 %3107 to float
  %3109 = bitcast float %3101 to i32
  %3110 = sitofp i32 %3109 to float
  %3111 = fadd fast float %3110, 0xC1CFBF8940000000
  %3112 = fmul fast float %3111, %3099
  %3113 = fadd fast float %3112, 0x41CFBF8940000000
  %3114 = fptosi float %3113 to i32
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %3108, %3096
  %3117 = fmul fast float %3115, %3096
  %3118 = fsub fast float %3101, %3116
  %3119 = fadd fast float %3117, %3101
  %3120 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3121 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3122 = fsub fast float %3090, %3120
  %3123 = fsub fast float %3121, %3120
  %3124 = bitcast float %3123 to i32
  %3125 = sub nsw i32 2129859010, %3124
  %3126 = bitcast i32 %3125 to float
  %3127 = fmul fast float %3126, %3122
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  br label %3129

; <label>:3129                                    ; preds = %3083, %3077
  %3130 = phi float [ %3128, %3083 ], [ %3078, %3077 ]
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 128
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3151, label %3135

; <label>:3135                                    ; preds = %3129
  %3136 = add i32 %45, 420
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3140, %dx.types.Handle %81, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 524288
  %3146 = icmp ne i32 %3145, 0
  %3147 = fcmp fast ogt float %3142, 0x3FE0101020000000
  %3148 = select i1 %3147, float 1.000000e+00, float 0.000000e+00
  %3149 = select i1 %3146, float %3148, float %3142
  %3150 = fmul fast float %3149, %3130
  br label %3151

; <label>:3151                                    ; preds = %3135, %3129
  %3152 = phi float [ %3150, %3135 ], [ %3130, %3129 ]
  %3153 = fcmp fast ult float %3152, 0x3F70101020000000
  br i1 %3153, label %3783, label %3154

; <label>:3154                                    ; preds = %3151
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 16
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3357, label %3159

; <label>:3159                                    ; preds = %3154
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = add i32 %45, 372
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %3164, 0
  %3166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3166, %dx.types.Handle %80, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.ResRet.f32 %3167, 2
  %3171 = extractvalue %dx.types.ResRet.f32 %3167, 3
  %3172 = and i32 %3161, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = lshr i32 %3161, 8
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3171, %3173
  %3178 = fadd fast float %3177, %3176
  %3179 = fmul fast float %3178, 0x3F70101000000000
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 512
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3192, label %3184

; <label>:3184                                    ; preds = %3159
  %3185 = add i32 %45, 452
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = add i32 %3187, 0
  %3189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3189, %dx.types.Handle %81, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  br label %3192

; <label>:3192                                    ; preds = %3184, %3159
  %3193 = phi float [ %3191, %3184 ], [ 1.000000e+00, %3159 ]
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 33554432
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3304, label %3198

; <label>:3198                                    ; preds = %3192
  %3199 = add i32 %45, 272
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = lshr i32 %3201, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = add i32 %45, 276
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = lshr i32 %3212, 24
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = and i32 %3212, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3212, 8
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3212, 16
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = add i32 %45, 268
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = lshr i32 %3229, 24
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = and i32 %3229, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = fmul fast float %3234, 0x3F70101020000000
  %3236 = lshr i32 %3229, 8
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = lshr i32 %3229, 16
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = bitcast float %3168 to i32
  %3245 = ashr i32 %3244, 1
  %3246 = sub nsw i32 1597463174, %3245
  %3247 = bitcast i32 %3246 to float
  %3248 = fmul fast float %3168, 5.000000e-01
  %3249 = fmul fast float %3247, %3247
  %3250 = fmul fast float %3249, %3248
  %3251 = fsub fast float 1.500000e+00, %3250
  %3252 = fmul fast float %3247, %3168
  %3253 = fmul fast float %3252, %3251
  %3254 = bitcast float %3169 to i32
  %3255 = ashr i32 %3254, 1
  %3256 = sub nsw i32 1597463174, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = fmul fast float %3169, 5.000000e-01
  %3259 = fmul fast float %3257, %3257
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float 1.500000e+00, %3260
  %3262 = fmul fast float %3257, %3169
  %3263 = fmul fast float %3262, %3261
  %3264 = bitcast float %3170 to i32
  %3265 = ashr i32 %3264, 1
  %3266 = sub nsw i32 1597463174, %3265
  %3267 = bitcast i32 %3266 to float
  %3268 = fmul fast float %3170, 5.000000e-01
  %3269 = fmul fast float %3267, %3267
  %3270 = fmul fast float %3269, %3268
  %3271 = fsub fast float 1.500000e+00, %3270
  %3272 = fmul fast float %3267, %3170
  %3273 = fmul fast float %3272, %3271
  %3274 = fsub fast float %3253, %3235
  %3275 = fsub fast float %3263, %3239
  %3276 = fsub fast float %3273, %3243
  %3277 = fmul fast float %3274, %3203
  %3278 = fmul fast float %3275, %3205
  %3279 = fmul fast float %3276, %3210
  %3280 = fadd fast float %3277, %3218
  %3281 = fadd fast float %3278, %3222
  %3282 = fadd fast float %3279, %3226
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = fmul fast float %3283, %3283
  %3287 = fmul fast float %3284, %3284
  %3288 = fmul fast float %3285, %3285
  %3289 = fsub fast float %3286, %3168
  %3290 = fsub fast float %3287, %3169
  %3291 = fsub fast float %3288, %3170
  %3292 = fmul fast float %3289, %3193
  %3293 = fmul fast float %3290, %3193
  %3294 = fmul fast float %3291, %3193
  %3295 = fadd fast float %3292, %3168
  %3296 = fadd fast float %3293, %3169
  %3297 = fadd fast float %3294, %3170
  %3298 = fadd fast float %3215, %3179
  %3299 = fsub fast float %3298, %3232
  %3300 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3301 = fsub fast float %3300, %3179
  %3302 = fmul fast float %3301, %3193
  %3303 = fadd fast float %3302, %3179
  br label %3357

; <label>:3304                                    ; preds = %3192
  %3305 = and i32 %3195, 134217728
  %3306 = icmp eq i32 %3305, 0
  br i1 %3306, label %3341, label %3307

; <label>:3307                                    ; preds = %3304
  %3308 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fmul fast float %3311, %3193
  %3315 = fmul fast float %3312, %3193
  %3316 = fmul fast float %3313, %3193
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3169)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3323 = fmul fast float %3317, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3320
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3320
  %3328 = fmul fast float %3318, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3321
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3321
  %3333 = fmul fast float %3319, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3322
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3322
  %3338 = fmul fast float %3327, %3327
  %3339 = fmul fast float %3332, %3332
  %3340 = fmul fast float %3337, %3337
  br label %3357

; <label>:3341                                    ; preds = %3304
  %3342 = fmul fast float %343, %343
  %3343 = fmul fast float %347, %347
  %3344 = fmul fast float %351, %351
  %3345 = fadd fast float %3342, -1.000000e+00
  %3346 = fadd fast float %3343, -1.000000e+00
  %3347 = fadd fast float %3344, -1.000000e+00
  %3348 = fmul fast float %3193, %3345
  %3349 = fmul fast float %3193, %3346
  %3350 = fmul fast float %3193, %3347
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fmul fast float %3351, %3168
  %3355 = fmul fast float %3352, %3169
  %3356 = fmul fast float %3353, %3170
  br label %3357

; <label>:3357                                    ; preds = %3341, %3307, %3198, %3154
  %3358 = phi float [ %3303, %3198 ], [ %3179, %3307 ], [ %3179, %3341 ], [ 0x3FA23C0BE0000000, %3154 ]
  %3359 = phi float [ %3295, %3198 ], [ %3338, %3307 ], [ %3354, %3341 ], [ 1.000000e+00, %3154 ]
  %3360 = phi float [ %3296, %3198 ], [ %3339, %3307 ], [ %3355, %3341 ], [ 1.000000e+00, %3154 ]
  %3361 = phi float [ %3297, %3198 ], [ %3340, %3307 ], [ %3356, %3341 ], [ 1.000000e+00, %3154 ]
  %3362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.i32 %3362, 1
  %3364 = and i32 %3363, 1
  %3365 = icmp ne i32 %3364, 0
  %3366 = add i32 %45, 356
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 32
  %3370 = icmp ne i32 %3369, 0
  %3371 = and i1 %3365, %3370
  %3372 = select i1 %3371, float 1.000000e+00, float %3359
  %3373 = select i1 %3371, float 0x3FD3333340000000, float %3360
  %3374 = select i1 %3371, float 0x3FD3333340000000, float %3361
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 32
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3451, label %3379

; <label>:3379                                    ; preds = %3357
  %3380 = add i32 %45, 140
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %45, 388
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = add i32 %3385, 0
  %3387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3387, %dx.types.Handle %80, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = extractvalue %dx.types.ResRet.f32 %3388, 3
  %3393 = and i32 %3382, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = lshr i32 %3382, 8
  %3396 = and i32 %3395, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = lshr i32 %3382, 16
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3400, 0x3F70101000000000
  %3402 = fmul fast float %3389, %3394
  %3403 = fadd fast float %3402, %3397
  %3404 = fmul fast float %3403, 0x3F70101000000000
  %3405 = fadd fast float %3390, -5.000000e-01
  %3406 = fadd fast float %3392, -5.000000e-01
  %3407 = fmul fast float %3405, %3401
  %3408 = fmul fast float %3406, %3401
  %3409 = fadd fast float %3407, 5.000000e-01
  %3410 = fadd fast float %3408, 5.000000e-01
  %3411 = fmul fast float %3409, 2.000000e+00
  %3412 = fadd fast float %3411, -1.000000e+00
  %3413 = fmul fast float %3410, 2.000000e+00
  %3414 = fadd fast float %3413, -1.000000e+00
  %3415 = fadd fast float %3412, %3414
  %3416 = fmul fast float %3415, 5.000000e-01
  %3417 = fsub fast float %3412, %3414
  %3418 = fmul fast float %3417, 5.000000e-01
  %3419 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3420 = fsub fast float 1.000000e+00, %3419
  %3421 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3422 = fsub fast float %3420, %3421
  %3423 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3418, float %3422, float %3416, float %3418, float %3422)  ; Dot3(ax,ay,az,bx,by,bz)
  %3424 = call float @dx.op.unary.f32(i32 25, float %3423)  ; Rsqrt(value)
  %3425 = fmul fast float %3416, %3424
  %3426 = fmul fast float %3418, %3424
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 67108864
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %3447, label %3431

; <label>:3431                                    ; preds = %3379
  %3432 = add i32 %45, 328
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 65535
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 65535
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = lshr i32 %3434, 16
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = fsub fast float %3404, %3442
  %3444 = fmul fast float %3443, %3436
  %3445 = fadd fast float %3444, %3440
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  br label %3447

; <label>:3447                                    ; preds = %3431, %3379
  %3448 = phi float [ %3446, %3431 ], [ %3404, %3379 ]
  %3449 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %2868, float %2869)  ; Dot2(ax,ay,bx,by)
  %3450 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %2870, float %2871)  ; Dot2(ax,ay,bx,by)
  br label %3451

; <label>:3451                                    ; preds = %3447, %3357
  %3452 = phi float [ %3448, %3447 ], [ 0x3FD6666660000000, %3357 ]
  %3453 = phi float [ %3449, %3447 ], [ 0.000000e+00, %3357 ]
  %3454 = phi float [ %3450, %3447 ], [ 0.000000e+00, %3357 ]
  %3455 = phi float [ %3391, %3447 ], [ 1.000000e+00, %3357 ]
  %3456 = add i32 %45, 208
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = lshr i32 %3458, 22
  %3460 = shl nuw nsw i32 %3459, 5
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 64
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3499, label %3466

; <label>:3466                                    ; preds = %3451
  %3467 = add i32 %45, 404
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = add i32 %3469, 0
  %3471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 131072
  %3475 = icmp eq i32 %3474, 0
  %3476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3471, %dx.types.Handle %80, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = fmul fast float %3477, %331
  %3481 = fmul fast float %3478, %334
  %3482 = fmul fast float %3479, %337
  br i1 %3475, label %3489, label %3483

; <label>:3483                                    ; preds = %3466
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = fmul fast float %3485, %3480
  %3487 = fmul fast float %3485, %3481
  %3488 = fmul fast float %3485, %3482
  br label %3489

; <label>:3489                                    ; preds = %3483, %3466
  %3490 = phi float [ %3486, %3483 ], [ %3480, %3466 ]
  %3491 = phi float [ %3487, %3483 ], [ %3481, %3466 ]
  %3492 = phi float [ %3488, %3483 ], [ %3482, %3466 ]
  %3493 = fmul fast float %3490, %3461
  %3494 = select i1 %185, float %3493, float %3490
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3491, float %3492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = select i1 %185, float 0.000000e+00, float %3490
  %3497 = select i1 %185, float %3495, float %3491
  %3498 = select i1 %185, float 0.000000e+00, float %3492
  br label %3499

; <label>:3499                                    ; preds = %3489, %3451
  %3500 = phi float [ %3496, %3489 ], [ 0.000000e+00, %3451 ]
  %3501 = phi float [ %3497, %3489 ], [ 0.000000e+00, %3451 ]
  %3502 = phi float [ %3498, %3489 ], [ 0.000000e+00, %3451 ]
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 10240
  %3506 = icmp eq i32 %3505, 0
  br i1 %3506, label %3551, label %3507

; <label>:3507                                    ; preds = %3499
  %3508 = add i32 %45, 468
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = add i32 %3510, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3512, %dx.types.Handle %81, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 1048576
  %3519 = icmp ne i32 %3518, 0
  %3520 = and i32 %3517, 8192
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3537, label %3522

; <label>:3522                                    ; preds = %3507
  %3523 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3524 = select i1 %3519, float %3523, float %3514
  %3525 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3526 = select i1 %3519, float %3525, float %3514
  %3527 = add i32 %45, 144
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = lshr i32 %3529, 16
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = fmul fast float %3532, 0x3F80101020000000
  %3534 = fmul fast float %3533, %3526
  %3535 = fmul fast float %3533, %3514
  %3536 = fmul fast float %3533, %3524
  br label %3537

; <label>:3537                                    ; preds = %3522, %3507
  %3538 = phi float [ %3534, %3522 ], [ 0.000000e+00, %3507 ]
  %3539 = phi float [ %3535, %3522 ], [ 0.000000e+00, %3507 ]
  %3540 = phi float [ %3536, %3522 ], [ 0.000000e+00, %3507 ]
  %3541 = and i32 %3517, 2048
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3551, label %3543

; <label>:3543                                    ; preds = %3537
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = shl i32 %3545, 4
  %3547 = and i32 %3546, 32752
  %3548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3547)  ; LegacyF16ToF32(value)
  %3549 = fmul fast float %3548, %3515
  %3550 = call float @dx.op.binary.f32(i32 35, float %3549, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3551

; <label>:3551                                    ; preds = %3543, %3537, %3499
  %3552 = phi float [ %3538, %3543 ], [ %3538, %3537 ], [ 0.000000e+00, %3499 ]
  %3553 = phi float [ %3539, %3543 ], [ %3539, %3537 ], [ 0.000000e+00, %3499 ]
  %3554 = phi float [ %3540, %3543 ], [ %3540, %3537 ], [ 0.000000e+00, %3499 ]
  %3555 = phi float [ %3550, %3543 ], [ 0x3F70101020000000, %3537 ], [ 0x3F70101020000000, %3499 ]
  %3556 = add i32 %45, 144
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 255
  %3560 = uitofp i32 %3559 to float
  %3561 = lshr i32 %3558, 8
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3373, float %3374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = fmul fast float %3563, %3564
  %3566 = fadd fast float %3565, %3560
  %3567 = fmul fast float %3566, 0x3F70101020000000
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  br i1 %2856, label %3569, label %3577

; <label>:3569                                    ; preds = %3551
  %3570 = fsub fast float 1.000000e+00, %3152
  %3571 = fmul fast float %3570, %2841
  %3572 = fmul fast float %3570, %2842
  %3573 = fmul fast float %3570, %2843
  %3574 = fmul fast float %3570, %2847
  %3575 = fmul fast float %3570, %2848
  %3576 = fmul fast float %3570, %2849
  br label %3577

; <label>:3577                                    ; preds = %3569, %3551
  %3578 = phi float [ %3571, %3569 ], [ %2841, %3551 ]
  %3579 = phi float [ %3572, %3569 ], [ %2842, %3551 ]
  %3580 = phi float [ %3573, %3569 ], [ %2843, %3551 ]
  %3581 = phi float [ %3574, %3569 ], [ %2847, %3551 ]
  %3582 = phi float [ %3575, %3569 ], [ %2848, %3551 ]
  %3583 = phi float [ %3576, %3569 ], [ %2849, %3551 ]
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = and i32 %3585, 3
  %3587 = icmp eq i32 %3586, 3
  br i1 %3587, label %3666, label %3588

; <label>:3588                                    ; preds = %3577
  %3589 = and i32 %3585, 16
  %3590 = icmp ne i32 %3589, 0
  %3591 = select i1 %3590, float %3152, float 0.000000e+00
  %3592 = icmp eq i32 %3586, 0
  br i1 %3592, label %3593, label %3621

; <label>:3593                                    ; preds = %3588
  %3594 = and i32 %3585, 64
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3152, float 0.000000e+00
  %3597 = fsub fast float %3372, %3578
  %3598 = fsub fast float %3373, %3579
  %3599 = fsub fast float %3374, %3580
  %3600 = fmul fast float %3591, %3597
  %3601 = fmul fast float %3591, %3598
  %3602 = fmul fast float %3591, %3599
  %3603 = fadd fast float %3600, %3578
  %3604 = fadd fast float %3601, %3579
  %3605 = fadd fast float %3602, %3580
  %3606 = fsub fast float %3358, %2850
  %3607 = fmul fast float %3591, %3606
  %3608 = fadd fast float %3607, %2850
  %3609 = fsub fast float %3500, %3581
  %3610 = fsub fast float %3501, %3582
  %3611 = fsub fast float %3502, %3583
  %3612 = fmul fast float %3596, %3609
  %3613 = fmul fast float %3596, %3610
  %3614 = fmul fast float %3596, %3611
  %3615 = fadd fast float %3612, %3581
  %3616 = fadd fast float %3613, %3582
  %3617 = fadd fast float %3614, %3583
  %3618 = fsub fast float %3568, %2854
  %3619 = fmul fast float %3591, %3618
  %3620 = fadd fast float %3619, %2854
  br label %3666

; <label>:3621                                    ; preds = %3588
  %3622 = icmp eq i32 %3586, 1
  br i1 %3622, label %3623, label %3636

; <label>:3623                                    ; preds = %3621
  %3624 = fadd fast float %3372, -1.000000e+00
  %3625 = fadd fast float %3373, -1.000000e+00
  %3626 = fadd fast float %3374, -1.000000e+00
  %3627 = fmul fast float %3591, %3624
  %3628 = fmul fast float %3591, %3625
  %3629 = fmul fast float %3591, %3626
  %3630 = fadd fast float %3627, 1.000000e+00
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fmul fast float %3630, %3578
  %3634 = fmul fast float %3631, %3579
  %3635 = fmul fast float %3632, %3580
  br label %3666

; <label>:3636                                    ; preds = %3621
  %3637 = icmp eq i32 %3586, 2
  br i1 %3637, label %3638, label %3666

; <label>:3638                                    ; preds = %3636
  %3639 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3640 = call float @dx.op.unary.f32(i32 24, float %3373)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3642 = fadd fast float %3639, -5.000000e-01
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fmul fast float %3642, %3591
  %3646 = fmul fast float %3643, %3591
  %3647 = fmul fast float %3644, %3591
  %3648 = fadd fast float %3645, 5.000000e-01
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fmul fast float %3648, 2.000000e+00
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = fmul fast float %3652, %3578
  %3654 = fadd fast float %3653, %3651
  %3655 = fmul fast float %3654, %3578
  %3656 = fmul fast float %3649, 2.000000e+00
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3579
  %3659 = fadd fast float %3658, %3656
  %3660 = fmul fast float %3659, %3579
  %3661 = fmul fast float %3650, 2.000000e+00
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = fmul fast float %3662, %3580
  %3664 = fadd fast float %3663, %3661
  %3665 = fmul fast float %3664, %3580
  br label %3666

; <label>:3666                                    ; preds = %3638, %3636, %3623, %3593, %3577
  %3667 = phi float [ %3578, %3577 ], [ %3655, %3638 ], [ %3578, %3636 ], [ %3633, %3623 ], [ %3603, %3593 ]
  %3668 = phi float [ %3579, %3577 ], [ %3660, %3638 ], [ %3579, %3636 ], [ %3634, %3623 ], [ %3604, %3593 ]
  %3669 = phi float [ %3580, %3577 ], [ %3665, %3638 ], [ %3580, %3636 ], [ %3635, %3623 ], [ %3605, %3593 ]
  %3670 = phi float [ %3581, %3577 ], [ %3581, %3638 ], [ %3581, %3636 ], [ %3581, %3623 ], [ %3615, %3593 ]
  %3671 = phi float [ %3582, %3577 ], [ %3582, %3638 ], [ %3582, %3636 ], [ %3582, %3623 ], [ %3616, %3593 ]
  %3672 = phi float [ %3583, %3577 ], [ %3583, %3638 ], [ %3583, %3636 ], [ %3583, %3623 ], [ %3617, %3593 ]
  %3673 = phi float [ %2850, %3577 ], [ %2850, %3638 ], [ %2850, %3636 ], [ %2850, %3623 ], [ %3608, %3593 ]
  %3674 = phi float [ %2854, %3577 ], [ %2854, %3638 ], [ %2854, %3636 ], [ %2854, %3623 ], [ %3620, %3593 ]
  %3675 = and i32 %3585, 12
  %3676 = icmp eq i32 %3675, 12
  br i1 %3676, label %3783, label %3677

; <label>:3677                                    ; preds = %3666
  %3678 = and i32 %3585, 2097184
  %3679 = icmp eq i32 %3678, 2097184
  %3680 = select i1 %3679, float %3152, float 0.000000e+00
  %3681 = and i32 %3585, 4194336
  %3682 = icmp eq i32 %3681, 4194336
  %3683 = select i1 %3682, float %3152, float 0.000000e+00
  %3684 = and i32 %3585, 8388640
  %3685 = icmp eq i32 %3684, 8388640
  %3686 = select i1 %3685, float %3152, float 0.000000e+00
  %3687 = and i32 %3585, 2048
  %3688 = icmp ne i32 %3687, 0
  %3689 = select i1 %3688, float %3152, float 0.000000e+00
  %3690 = and i32 %3585, 8192
  %3691 = icmp ne i32 %3690, 0
  %3692 = select i1 %3691, float %3152, float 0.000000e+00
  %3693 = icmp eq i32 %3675, 0
  br i1 %3693, label %3694, label %3719

; <label>:3694                                    ; preds = %3677
  %3695 = fsub fast float %3453, %2839
  %3696 = fsub fast float %3454, %2840
  %3697 = fmul fast float %3680, %3695
  %3698 = fmul fast float %3680, %3696
  %3699 = fadd fast float %3697, %2839
  %3700 = fadd fast float %3698, %2840
  %3701 = fsub fast float %3455, %2852
  %3702 = fmul fast float %3683, %3701
  %3703 = fadd fast float %3702, %2852
  %3704 = fsub fast float %3452, %2851
  %3705 = fmul fast float %3686, %3704
  %3706 = fadd fast float %3705, %2851
  %3707 = fsub fast float %3555, %2853
  %3708 = fmul fast float %3689, %3707
  %3709 = fadd fast float %3708, %2853
  %3710 = fsub fast float %3552, %2844
  %3711 = fsub fast float %3553, %2845
  %3712 = fsub fast float %3554, %2846
  %3713 = fmul fast float %3692, %3710
  %3714 = fmul fast float %3692, %3711
  %3715 = fmul fast float %3692, %3712
  %3716 = fadd fast float %3713, %2844
  %3717 = fadd fast float %3714, %2845
  %3718 = fadd fast float %3715, %2846
  br label %3783

; <label>:3719                                    ; preds = %3677
  %3720 = icmp eq i32 %3675, 4
  br i1 %3720, label %3721, label %3761

; <label>:3721                                    ; preds = %3719
  %3722 = fmul fast float %3680, %3453
  %3723 = fmul fast float %3680, %3454
  %3724 = fadd fast float %3722, %2839
  %3725 = fadd fast float %3723, %2840
  %3726 = call float @dx.op.binary.f32(i32 36, float %2852, float %3455)  ; FMin(a,b)
  %3727 = fsub fast float %3726, %2852
  %3728 = fmul fast float %3727, %3683
  %3729 = fadd fast float %3728, %2852
  %3730 = fadd fast float %3452, %2851
  %3731 = fmul fast float %3730, 0x3FF337FAE0000000
  %3732 = fmul fast float %2851, %2851
  %3733 = fmul fast float %3452, %3452
  %3734 = fadd fast float %3733, %3732
  %3735 = fmul fast float %3734, 0x3FE5152B00000000
  %3736 = fmul fast float %2851, 0xBFCC1F85E0000000
  %3737 = fmul fast float %3736, %3452
  %3738 = fadd fast float %3737, 0xBFE1363700000000
  %3739 = fadd fast float %3738, %3731
  %3740 = fsub fast float %3739, %3735
  %3741 = fmul fast float %3730, 0x3FBA6F0D00000000
  %3742 = fmul fast float %3734, 0x3FD0432880000000
  %3743 = fmul fast float %2851, 0xBFEF110800000000
  %3744 = fmul fast float %3743, %3452
  %3745 = fadd fast float %3744, 1.000000e+00
  %3746 = fsub fast float %3745, %3741
  %3747 = fadd fast float %3746, %3742
  %3748 = fdiv fast float %3740, %3747
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fsub fast float %3749, %2851
  %3751 = fmul fast float %3750, %3686
  %3752 = fadd fast float %3751, %2851
  %3753 = fmul fast float %3689, %3555
  %3754 = fadd fast float %3753, %2853
  %3755 = fmul fast float %3692, %3552
  %3756 = fmul fast float %3692, %3553
  %3757 = fmul fast float %3692, %3554
  %3758 = fadd fast float %3755, %2844
  %3759 = fadd fast float %3756, %2845
  %3760 = fadd fast float %3757, %2846
  br label %3783

; <label>:3761                                    ; preds = %3719
  %3762 = icmp eq i32 %3675, 8
  br i1 %3762, label %3763, label %3783

; <label>:3763                                    ; preds = %3761
  %3764 = fmul fast float %3680, %3453
  %3765 = fmul fast float %3680, %3454
  %3766 = fadd fast float %3764, %2839
  %3767 = fadd fast float %3765, %2840
  %3768 = call float @dx.op.binary.f32(i32 36, float %2852, float %3455)  ; FMin(a,b)
  %3769 = fsub fast float %3768, %2852
  %3770 = fmul fast float %3769, %3683
  %3771 = fadd fast float %3770, %2852
  %3772 = fsub fast float %3452, %2851
  %3773 = fmul fast float %3686, %3772
  %3774 = fadd fast float %3773, %2851
  %3775 = fmul fast float %3689, %3555
  %3776 = fadd fast float %3775, %2853
  %3777 = fmul fast float %3692, %3552
  %3778 = fmul fast float %3692, %3553
  %3779 = fmul fast float %3692, %3554
  %3780 = fadd fast float %3777, %2844
  %3781 = fadd fast float %3778, %2845
  %3782 = fadd fast float %3779, %2846
  br label %3783

; <label>:3783                                    ; preds = %3763, %3761, %3721, %3694, %3666, %3151, %2855, %2838
  %3784 = phi float [ %2839, %3666 ], [ %2839, %3151 ], [ %2839, %2838 ], [ %2839, %2855 ], [ %3699, %3694 ], [ %3724, %3721 ], [ %2839, %3761 ], [ %3766, %3763 ]
  %3785 = phi float [ %2840, %3666 ], [ %2840, %3151 ], [ %2840, %2838 ], [ %2840, %2855 ], [ %3700, %3694 ], [ %3725, %3721 ], [ %2840, %3761 ], [ %3767, %3763 ]
  %3786 = phi float [ %3667, %3666 ], [ %2841, %3151 ], [ %2841, %2838 ], [ %2841, %2855 ], [ %3667, %3694 ], [ %3667, %3721 ], [ %3667, %3761 ], [ %3667, %3763 ]
  %3787 = phi float [ %3668, %3666 ], [ %2842, %3151 ], [ %2842, %2838 ], [ %2842, %2855 ], [ %3668, %3694 ], [ %3668, %3721 ], [ %3668, %3761 ], [ %3668, %3763 ]
  %3788 = phi float [ %3669, %3666 ], [ %2843, %3151 ], [ %2843, %2838 ], [ %2843, %2855 ], [ %3669, %3694 ], [ %3669, %3721 ], [ %3669, %3761 ], [ %3669, %3763 ]
  %3789 = phi float [ %2844, %3666 ], [ %2844, %3151 ], [ %2844, %2838 ], [ %2844, %2855 ], [ %3716, %3694 ], [ %3758, %3721 ], [ %2844, %3761 ], [ %3780, %3763 ]
  %3790 = phi float [ %2845, %3666 ], [ %2845, %3151 ], [ %2845, %2838 ], [ %2845, %2855 ], [ %3717, %3694 ], [ %3759, %3721 ], [ %2845, %3761 ], [ %3781, %3763 ]
  %3791 = phi float [ %2846, %3666 ], [ %2846, %3151 ], [ %2846, %2838 ], [ %2846, %2855 ], [ %3718, %3694 ], [ %3760, %3721 ], [ %2846, %3761 ], [ %3782, %3763 ]
  %3792 = phi float [ %3670, %3666 ], [ %2847, %3151 ], [ %2847, %2838 ], [ %2847, %2855 ], [ %3670, %3694 ], [ %3670, %3721 ], [ %3670, %3761 ], [ %3670, %3763 ]
  %3793 = phi float [ %3671, %3666 ], [ %2848, %3151 ], [ %2848, %2838 ], [ %2848, %2855 ], [ %3671, %3694 ], [ %3671, %3721 ], [ %3671, %3761 ], [ %3671, %3763 ]
  %3794 = phi float [ %3672, %3666 ], [ %2849, %3151 ], [ %2849, %2838 ], [ %2849, %2855 ], [ %3672, %3694 ], [ %3672, %3721 ], [ %3672, %3761 ], [ %3672, %3763 ]
  %3795 = phi float [ %3673, %3666 ], [ %2850, %3151 ], [ %2850, %2838 ], [ %2850, %2855 ], [ %3673, %3694 ], [ %3673, %3721 ], [ %3673, %3761 ], [ %3673, %3763 ]
  %3796 = phi float [ %2851, %3666 ], [ %2851, %3151 ], [ %2851, %2838 ], [ %2851, %2855 ], [ %3706, %3694 ], [ %3752, %3721 ], [ %2851, %3761 ], [ %3774, %3763 ]
  %3797 = phi float [ %2852, %3666 ], [ %2852, %3151 ], [ %2852, %2838 ], [ %2852, %2855 ], [ %3703, %3694 ], [ %3729, %3721 ], [ %2852, %3761 ], [ %3771, %3763 ]
  %3798 = phi float [ %2853, %3666 ], [ %2853, %3151 ], [ %2853, %2838 ], [ %2853, %2855 ], [ %3709, %3694 ], [ %3754, %3721 ], [ %2853, %3761 ], [ %3776, %3763 ]
  %3799 = phi float [ %3674, %3666 ], [ %2854, %3151 ], [ %2854, %2838 ], [ %2854, %2855 ], [ %3674, %3694 ], [ %3674, %3721 ], [ %3674, %3761 ], [ %3674, %3763 ]
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3802 = call float @dx.op.dot2.f32(i32 54, float %3784, float %3785, float %3784, float %3785)  ; Dot2(ax,ay,bx,by)
  %3803 = fmul fast float %3802, 0x3FE3333340000000
  %3804 = fsub fast float 1.000000e+00, %3803
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3804, float %3784, float %3785, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.unary.f32(i32 25, float %3805)  ; Rsqrt(value)
  %3807 = fmul fast float %3806, %3784
  %3808 = fmul fast float %3806, %3785
  %3809 = fmul fast float %3804, %3806
  %3810 = fmul fast float %3809, %93
  %3811 = fmul fast float %3809, %95
  %3812 = fmul fast float %3809, %97
  %3813 = fmul fast float %3807, %65
  %3814 = fmul fast float %3807, %66
  %3815 = fmul fast float %3807, %67
  %3816 = fadd fast float %3810, %3813
  %3817 = fadd fast float %3811, %3814
  %3818 = fadd fast float %3812, %3815
  %3819 = fmul fast float %107, %3808
  %3820 = fmul fast float %108, %3808
  %3821 = fmul fast float %109, %3808
  %3822 = fadd fast float %3816, %3819
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float %3822, float %3823, float %3824)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = call float @dx.op.unary.f32(i32 25, float %3825)  ; Rsqrt(value)
  %3827 = fmul fast float %3822, %3826
  %3828 = fmul fast float %3823, %3826
  %3829 = fmul fast float %3824, %3826
  %3830 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3831 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3832 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3833 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3834 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3835 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3836 = fadd fast float %3830, %143
  %3837 = fadd fast float %3831, %144
  %3838 = fadd fast float %3832, %145
  %3839 = fadd fast float %3833, %143
  %3840 = fadd fast float %3834, %144
  %3841 = fadd fast float %3835, %145
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 2
  %3848 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3849 = fmul fast float %3843, %84
  %3850 = fmul fast float %3849, %3847
  %3851 = fmul fast float %3844, %85
  %3852 = fmul fast float %3851, %3848
  %3853 = fptoui float %3850 to i32
  %3854 = fptoui float %3852 to i32
  %3855 = fadd fast float %3843, -1.000000e+00
  %3856 = fadd fast float %3844, -1.000000e+00
  %3857 = fptoui float %3855 to i32
  %3858 = fptoui float %3856 to i32
  %3859 = call i32 @dx.op.binary.i32(i32 40, i32 %3853, i32 %3857)  ; UMin(a,b)
  %3860 = call i32 @dx.op.binary.i32(i32 40, i32 %3854, i32 %3858)  ; UMin(a,b)
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 2
  %3863 = extractvalue %dx.types.CBufRet.f32 %3861, 3
  %3864 = fmul fast float %3862, %79
  %3865 = fsub fast float %3864, %3863
  %3866 = fadd fast float %3845, -1.000000e+00
  %3867 = call float @dx.op.binary.f32(i32 36, float %3865, float %3866)  ; FMin(a,b)
  %3868 = fptoui float %3867 to i32
  %3869 = fptoui float %3843 to i32
  %3870 = fptoui float %3844 to i32
  %3871 = mul i32 %3868, %3870
  %3872 = add i32 %3871, %3860
  %3873 = mul i32 %3872, %3869
  %3874 = add i32 %3873, %3859
  %3875 = shl i32 %3874, 2
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 1023
  %3879 = lshr i32 %3877, 10
  %3880 = icmp eq i32 %3878, 0
  br i1 %3880, label %4356, label %3881

; <label>:3881                                    ; preds = %3783
  %3882 = and i32 %3877, 1023
  br label %3883

; <label>:3883                                    ; preds = %4012, %3881
  %3884 = phi i32 [ %3962, %4012 ], [ 0, %3881 ]
  %3885 = phi float [ %4013, %4012 ], [ 0.000000e+00, %3881 ]
  %3886 = phi float [ %4014, %4012 ], [ %3801, %3881 ]
  %3887 = phi float [ %4015, %4012 ], [ %3799, %3881 ]
  %3888 = phi float [ %4016, %4012 ], [ 0.000000e+00, %3881 ]
  %3889 = phi float [ %4017, %4012 ], [ 0.000000e+00, %3881 ]
  %3890 = phi float [ %4018, %4012 ], [ %3789, %3881 ]
  %3891 = phi float [ %4019, %4012 ], [ %3790, %3881 ]
  %3892 = phi float [ %4020, %4012 ], [ %3791, %3881 ]
  %3893 = phi float [ %4021, %4012 ], [ %3792, %3881 ]
  %3894 = phi float [ %4022, %4012 ], [ %3793, %3881 ]
  %3895 = phi float [ %4023, %4012 ], [ %3794, %3881 ]
  %3896 = phi float [ %4024, %4012 ], [ %3827, %3881 ]
  %3897 = phi float [ %4025, %4012 ], [ %3828, %3881 ]
  %3898 = phi float [ %4026, %4012 ], [ %3829, %3881 ]
  %3899 = phi float [ %4027, %4012 ], [ %3797, %3881 ]
  %3900 = phi float [ %4028, %4012 ], [ %3796, %3881 ]
  %3901 = phi float [ %4029, %4012 ], [ 0.000000e+00, %3881 ]
  %3902 = phi float [ %4030, %4012 ], [ %3795, %3881 ]
  %3903 = phi float [ %4031, %4012 ], [ %3786, %3881 ]
  %3904 = phi float [ %4032, %4012 ], [ %3787, %3881 ]
  %3905 = phi float [ %4033, %4012 ], [ %3788, %3881 ]
  %3906 = add nuw nsw i32 %3884, %3879
  %3907 = shl i32 %3906, 2
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = shl i32 %3909, 8
  %3911 = or i32 %3910, 48
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = extractvalue %dx.types.ResRet.f32 %3912, 3
  %3917 = or i32 %3910, 64
  %3918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.i32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.i32 %3918, 1
  %3921 = or i32 %3910, 80
  %3922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 3
  %3925 = or i32 %3910, 96
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.ResRet.f32 %3926, 3
  %3931 = or i32 %3910, 112
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 2
  %3934 = or i32 %3910, 128
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %3940 = or i32 %3910, 144
  %3941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3941, 2
  %3945 = extractvalue %dx.types.ResRet.f32 %3941, 3
  %3946 = or i32 %3910, 160
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = or i32 %3910, 192
  %3953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.i32 %3953, 0
  %3955 = or i32 %3910, 208
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = or i32 %3910, 248
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = add nuw nsw i32 %3884, 1
  %3963 = bitcast float %3916 to i32
  %3964 = and i32 %3963, 512
  %3965 = icmp eq i32 %3964, 0
  %3966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = extractvalue %dx.types.ResRet.f32 %3966, 2
  %3970 = extractvalue %dx.types.ResRet.f32 %3966, 3
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3967, float %3968, float %3969, float %3970, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = or i32 %3910, 16
  %3973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = extractvalue %dx.types.ResRet.f32 %3973, 3
  %3978 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3979 = or i32 %3910, 32
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3986 = call float @dx.op.unary.f32(i32 27, float %3971)  ; Round_ni(value)
  %3987 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3988 = call float @dx.op.unary.f32(i32 27, float %3978)  ; Round_ni(value)
  %3989 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %3990 = call float @dx.op.unary.f32(i32 6, float %3985)  ; FAbs(value)
  %3991 = call float @dx.op.unary.f32(i32 27, float %3990)  ; Round_ni(value)
  %3992 = fadd fast float %3989, %3987
  %3993 = fadd fast float %3992, %3991
  %3994 = fcmp fast oeq float %3993, 0.000000e+00
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3967, float %3968, float %3969, float %3970, float %3836, float %3837, float %3838, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %3836, float %3837, float %3838, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3997 = call float @dx.op.dot4.f32(i32 56, float %3967, float %3968, float %3969, float %3970, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3998 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3999 = fsub fast float %3995, %3971
  %4000 = fsub fast float %3997, %3971
  %4001 = fsub fast float %3996, %3978
  %4002 = fsub fast float %3998, %3978
  %4003 = call float @dx.op.dot3.f32(i32 55, float %3913, float %3914, float %3915, float %93, float %95, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 2
  %4006 = fadd fast float %4005, %4003
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4009 = fcmp fast ogt float %4007, %4008
  %4010 = and i1 %3994, %4009
  %4011 = and i1 %3965, %4010
  br i1 %4011, label %4035, label %4012

; <label>:4012                                    ; preds = %4342, %4116, %4035, %3883
  %4013 = phi float [ %3885, %4035 ], [ %4119, %4116 ], [ %4119, %4342 ], [ %3885, %3883 ]
  %4014 = phi float [ %3886, %4035 ], [ %3886, %4116 ], [ %4318, %4342 ], [ %3886, %3883 ]
  %4015 = phi float [ %3887, %4035 ], [ %3887, %4116 ], [ %4316, %4342 ], [ %3887, %3883 ]
  %4016 = phi float [ %3888, %4035 ], [ %3888, %4116 ], [ %4243, %4342 ], [ %3888, %3883 ]
  %4017 = phi float [ %3889, %4035 ], [ %3889, %4116 ], [ %4241, %4342 ], [ %3889, %3883 ]
  %4018 = phi float [ %3890, %4035 ], [ %3890, %4116 ], [ %4286, %4342 ], [ %3890, %3883 ]
  %4019 = phi float [ %3891, %4035 ], [ %3891, %4116 ], [ %4287, %4342 ], [ %3891, %3883 ]
  %4020 = phi float [ %3892, %4035 ], [ %3892, %4116 ], [ %4288, %4342 ], [ %3892, %3883 ]
  %4021 = phi float [ %3893, %4035 ], [ %3893, %4116 ], [ %4352, %4342 ], [ %3893, %3883 ]
  %4022 = phi float [ %3894, %4035 ], [ %3894, %4116 ], [ %4353, %4342 ], [ %3894, %3883 ]
  %4023 = phi float [ %3895, %4035 ], [ %3895, %4116 ], [ %4354, %4342 ], [ %3895, %3883 ]
  %4024 = phi float [ %3896, %4035 ], [ %3896, %4116 ], [ %4222, %4342 ], [ %3896, %3883 ]
  %4025 = phi float [ %3897, %4035 ], [ %3897, %4116 ], [ %4223, %4342 ], [ %3897, %3883 ]
  %4026 = phi float [ %3898, %4035 ], [ %3898, %4116 ], [ %4224, %4342 ], [ %3898, %3883 ]
  %4027 = phi float [ %3899, %4035 ], [ %3899, %4116 ], [ %4296, %4342 ], [ %3899, %3883 ]
  %4028 = phi float [ %3900, %4035 ], [ %3900, %4116 ], [ %4293, %4342 ], [ %3900, %3883 ]
  %4029 = phi float [ %3901, %4035 ], [ %3901, %4116 ], [ %4290, %4342 ], [ %3901, %3883 ]
  %4030 = phi float [ %3902, %4035 ], [ %3902, %4116 ], [ %4239, %4342 ], [ %3902, %3883 ]
  %4031 = phi float [ %3903, %4035 ], [ %3903, %4116 ], [ %4234, %4342 ], [ %3903, %3883 ]
  %4032 = phi float [ %3904, %4035 ], [ %3904, %4116 ], [ %4235, %4342 ], [ %3904, %3883 ]
  %4033 = phi float [ %3905, %4035 ], [ %3905, %4116 ], [ %4236, %4342 ], [ %3905, %3883 ]
  %4034 = icmp eq i32 %3962, %3882
  br i1 %4034, label %4355, label %3883

; <label>:4035                                    ; preds = %3883
  %4036 = extractvalue %dx.types.ResRet.f32 %3932, 3
  %4037 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %4041 = extractvalue %dx.types.ResRet.i32 %3918, 3
  %4042 = extractvalue %dx.types.ResRet.i32 %3918, 2
  %4043 = add i32 %4041, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4046 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4044, %dx.types.Handle %4045, float %3971, float %3978, float undef, float undef, i32 0, i32 0, i32 undef, float %3999, float %4001, float undef, float %4000, float %4002, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = fmul fast float %4047, %4040
  %4049 = fadd fast float %4048, %4039
  %4050 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4051 = fmul fast float %3971, %3927
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3978, float %4051)  ; FMad(a,b,c)
  %4053 = fadd fast float %4052, %4038
  %4054 = fmul fast float %3971, %3929
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3978, float %4054)  ; FMad(a,b,c)
  %4056 = fadd fast float %4055, %4037
  %4057 = fmul fast float %3999, %3927
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %4001, float %4057)  ; FMad(a,b,c)
  %4059 = fmul fast float %3999, %3929
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %4001, float %4059)  ; FMad(a,b,c)
  %4061 = fmul fast float %4000, %3927
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %4002, float %4061)  ; FMad(a,b,c)
  %4063 = fmul fast float %4000, %3929
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %4002, float %4063)  ; FMad(a,b,c)
  %4065 = add i32 %4042, 0
  %4066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4065, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4066, %dx.types.Handle %4045, float %4053, float %4056, float undef, float undef, i32 0, i32 0, i32 undef, float %4058, float %4060, float undef, float %4062, float %4064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = and i32 %3963, 1024
  %4070 = icmp ne i32 %4069, 0
  %4071 = fcmp fast ogt float %4068, 0x3FE0101020000000
  %4072 = uitofp i1 %4071 to float
  %4073 = select i1 %4070, float %4072, float %4068
  %4074 = and i32 %3963, 8192
  %4075 = icmp ne i32 %4074, 0
  %4076 = select i1 %4075, float %4036, float 1.000000e+00
  %4077 = fmul fast float %3971, 2.000000e+00
  %4078 = fadd fast float %4077, -1.000000e+00
  %4079 = call float @dx.op.unary.f32(i32 6, float %4078)  ; FAbs(value)
  %4080 = fmul fast float %4079, %3960
  %4081 = fsub fast float %4080, %3960
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = fmul fast float %3978, 2.000000e+00
  %4084 = fadd fast float %4083, -1.000000e+00
  %4085 = call float @dx.op.unary.f32(i32 6, float %4084)  ; FAbs(value)
  %4086 = fmul fast float %4085, %3961
  %4087 = fsub fast float %4086, %3961
  %4088 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4089 = fmul fast float %3990, %3923
  %4090 = fsub fast float %4089, %3923
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %4050, %4076
  %4093 = fmul fast float %4092, %4047
  %4094 = fmul fast float %4093, %4082
  %4095 = fmul fast float %4094, %4073
  %4096 = fmul fast float %4095, %4088
  %4097 = fmul fast float %4096, %4091
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4101 = fsub fast float %4007, %4100
  %4102 = fmul fast float %4101, %4099
  %4103 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4104 = fmul fast float %4097, %3924
  %4105 = fadd fast float %4097, %3924
  %4106 = fmul fast float %4105, %3933
  %4107 = fsub fast float %4106, %3933
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4109 = and i32 %3963, 128
  %4110 = icmp ne i32 %4109, 0
  %4111 = select i1 %4110, float %4108, float %4104
  %4112 = fmul fast float %4111, %4103
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4115 = fcmp fast ugt float %4112, %4114
  br i1 %4115, label %4116, label %4012

; <label>:4116                                    ; preds = %4035
  %4117 = select i1 %4075, float %4112, float 0.000000e+00
  %4118 = fadd fast float %4117, %3885
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  br i1 %4075, label %4012, label %4120

; <label>:4120                                    ; preds = %4116
  %4121 = and i32 %3963, 4
  %4122 = and i32 %3963, 8
  %4123 = add i32 %3919, 0
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4123, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4124, %dx.types.Handle %4125, float %4053, float %4056, float undef, float undef, i32 0, i32 0, i32 undef, float %4058, float %4060, float undef, float %4062, float %4064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4130 = extractvalue %dx.types.ResRet.f32 %4126, 3
  %4131 = bitcast float %3945 to i32
  %4132 = and i32 %4131, 255
  %4133 = uitofp i32 %4132 to float
  %4134 = lshr i32 %4131, 8
  %4135 = and i32 %4134, 255
  %4136 = uitofp i32 %4135 to float
  %4137 = fmul fast float %4130, %4133
  %4138 = fadd fast float %4137, %4136
  %4139 = fmul fast float %4138, 0x3F70101000000000
  %4140 = add i32 %3920, 0
  %4141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4140, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4141, %dx.types.Handle %4125, float %4053, float %4056, float undef, float undef, i32 0, i32 0, i32 undef, float %4058, float %4060, float undef, float %4062, float %4064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = extractvalue %dx.types.ResRet.f32 %4142, 3
  %4147 = bitcast float %3939 to i32
  %4148 = and i32 %4147, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = lshr i32 %4147, 8
  %4151 = and i32 %4150, 255
  %4152 = uitofp i32 %4151 to float
  %4153 = lshr i32 %4147, 16
  %4154 = and i32 %4153, 255
  %4155 = uitofp i32 %4154 to float
  %4156 = fmul fast float %4155, 0x3F70101000000000
  %4157 = fmul fast float %4143, %4149
  %4158 = fadd fast float %4157, %4152
  %4159 = fmul fast float %4158, 0x3F70101000000000
  %4160 = fadd fast float %4144, -5.000000e-01
  %4161 = fadd fast float %4146, -5.000000e-01
  %4162 = fmul fast float %4160, %4156
  %4163 = fmul fast float %4161, %4156
  %4164 = fadd fast float %4162, 5.000000e-01
  %4165 = fadd fast float %4163, 5.000000e-01
  %4166 = fmul fast float %4127, %3948
  %4167 = fmul fast float %4128, %3949
  %4168 = fmul fast float %4129, %3950
  %4169 = fmul fast float %4164, 2.000000e+00
  %4170 = fadd fast float %4169, -1.000000e+00
  %4171 = fmul fast float %4165, 2.000000e+00
  %4172 = fadd fast float %4171, -1.000000e+00
  %4173 = fadd fast float %4170, %4172
  %4174 = fmul fast float %4173, 5.000000e-01
  %4175 = fsub fast float %4170, %4172
  %4176 = fmul fast float %4175, 5.000000e-01
  %4177 = call float @dx.op.unary.f32(i32 6, float %4174)  ; FAbs(value)
  %4178 = fsub fast float 1.000000e+00, %4177
  %4179 = call float @dx.op.unary.f32(i32 6, float %4176)  ; FAbs(value)
  %4180 = fsub fast float %4178, %4179
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4176, float %4180, float %4174, float %4176, float %4180)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = call float @dx.op.unary.f32(i32 25, float %4181)  ; Rsqrt(value)
  %4183 = fmul fast float %4174, %4182
  %4184 = fmul fast float %4176, %4182
  %4185 = fmul fast float %4182, %4180
  %4186 = fmul fast float %4185, %3913
  %4187 = fmul fast float %4185, %3914
  %4188 = fmul fast float %4185, %3915
  %4189 = fmul fast float %4183, %3936
  %4190 = fmul fast float %4183, %3937
  %4191 = fmul fast float %4183, %3938
  %4192 = fadd fast float %4189, %4186
  %4193 = fadd fast float %4190, %4187
  %4194 = fadd fast float %4191, %4188
  %4195 = fmul fast float %4184, %3942
  %4196 = fmul fast float %4184, %3943
  %4197 = fmul fast float %4184, %3944
  %4198 = fadd fast float %4192, %4195
  %4199 = fadd fast float %4193, %4196
  %4200 = fadd fast float %4194, %4197
  %4201 = call float @dx.op.dot3.f32(i32 55, float %4198, float %4199, float %4200, float %4198, float %4199, float %4200)  ; Dot3(ax,ay,az,bx,by,bz)
  %4202 = call float @dx.op.unary.f32(i32 25, float %4201)  ; Rsqrt(value)
  %4203 = fmul fast float %4198, %4202
  %4204 = fmul fast float %4199, %4202
  %4205 = fmul fast float %4200, %4202
  %4206 = icmp ne i32 %4122, 0
  %4207 = select i1 %4206, float 1.000000e+00, float 0.000000e+00
  %4208 = fmul fast float %4112, %4207
  %4209 = and i32 %3963, 1
  %4210 = icmp eq i32 %4209, 0
  br i1 %4210, label %4211, label %4215

; <label>:4211                                    ; preds = %4120
  %4212 = fsub fast float %4203, %3896
  %4213 = fsub fast float %4204, %3897
  %4214 = fsub fast float %4205, %3898
  br label %4215

; <label>:4215                                    ; preds = %4211, %4120
  %4216 = phi float [ %4212, %4211 ], [ %4203, %4120 ]
  %4217 = phi float [ %4213, %4211 ], [ %4204, %4120 ]
  %4218 = phi float [ %4214, %4211 ], [ %4205, %4120 ]
  %4219 = fmul float %4218, %4208
  %4220 = fmul float %4217, %4208
  %4221 = fmul float %4216, %4208
  %4222 = fadd fast float %4221, %3896
  %4223 = fadd fast float %4220, %3897
  %4224 = fadd fast float %4219, %3898
  %4225 = icmp ne i32 %4121, 0
  %4226 = select i1 %4225, float 1.000000e+00, float 0.000000e+00
  %4227 = fmul fast float %4112, %4226
  %4228 = fsub fast float %4166, %3903
  %4229 = fsub fast float %4167, %3904
  %4230 = fsub fast float %4168, %3905
  %4231 = fmul fast float %4228, %4227
  %4232 = fmul fast float %4229, %4227
  %4233 = fmul fast float %4230, %4227
  %4234 = fadd fast float %4231, %3903
  %4235 = fadd fast float %4232, %3904
  %4236 = fadd fast float %4233, %3905
  %4237 = fsub fast float %4139, %3902
  %4238 = fmul fast float %4237, %4227
  %4239 = fadd fast float %4238, %3902
  %4240 = fmul fast float %4227, %3889
  %4241 = fsub fast float %3889, %4240
  %4242 = fmul fast float %4227, %3888
  %4243 = fsub fast float %3888, %4242
  %4244 = bitcast float %3957 to i32
  %4245 = lshr i32 %4244, 16
  %4246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4245)  ; LegacyF16ToF32(value)
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = and i32 %4248, 1
  %4250 = icmp eq i32 %4249, 0
  br i1 %4250, label %4251, label %4276

; <label>:4251                                    ; preds = %4215
  %4252 = fadd fast float %4139, 0xBFB99999A0000000
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4253, 0x3FF1C71C80000000
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, %4166
  %4258 = fmul fast float %4256, %4167
  %4259 = fmul fast float %4256, %4168
  %4260 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4261, float %4262)  ; FMax(a,b)
  %4264 = call float @dx.op.binary.f32(i32 35, float %4260, float %4263)  ; FMax(a,b)
  %4265 = fcmp fast ogt float %4264, 0.000000e+00
  %4266 = bitcast float %4264 to i32
  %4267 = sub nsw i32 2129859010, %4266
  %4268 = bitcast i32 %4267 to float
  %4269 = select i1 %4265, float %4268, float 0.000000e+00
  %4270 = fmul fast float %4260, %4246
  %4271 = fmul fast float %4261, %4246
  %4272 = fmul fast float %4262, %4246
  %4273 = fmul fast float %4270, %4269
  %4274 = fmul fast float %4271, %4269
  %4275 = fmul fast float %4272, %4269
  br label %4276

; <label>:4276                                    ; preds = %4251, %4215
  %4277 = phi float [ %4246, %4215 ], [ %4273, %4251 ]
  %4278 = phi float [ %4246, %4215 ], [ %4274, %4251 ]
  %4279 = phi float [ %4246, %4215 ], [ %4275, %4251 ]
  %4280 = fsub fast float %4277, %3890
  %4281 = fsub fast float %4278, %3891
  %4282 = fsub fast float %4279, %3892
  %4283 = fmul fast float %4280, %4227
  %4284 = fmul fast float %4281, %4227
  %4285 = fmul fast float %4282, %4227
  %4286 = fadd fast float %4283, %3890
  %4287 = fadd fast float %4284, %3891
  %4288 = fadd fast float %4285, %3892
  %4289 = fadd fast float %4112, %3901
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fsub fast float %4159, %3900
  %4292 = fmul fast float %4291, %4208
  %4293 = fadd fast float %4292, %3900
  %4294 = fsub fast float %4145, %3899
  %4295 = fmul fast float %4294, %4208
  %4296 = fadd fast float %4295, %3899
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4166, float %4167, float %4168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = fmul fast float %4300, %4297
  %4302 = fadd fast float %4301, %4299
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = bitcast float %3951 to i32
  %4305 = and i32 %4304, 65535
  %4306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4305)  ; LegacyF16ToF32(value)
  %4307 = lshr i32 %4304, 16
  %4308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4307)  ; LegacyF16ToF32(value)
  %4309 = fcmp fast oge float %4306, 0.000000e+00
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = select i1 %4309, float %4306, float %4311
  %4313 = fadd fast float %4312, %4308
  %4314 = fsub fast float %4303, %3887
  %4315 = fmul fast float %4314, %4112
  %4316 = fadd fast float %4315, %3887
  %4317 = fmul fast float %4313, %4112
  %4318 = call float @dx.op.binary.f32(i32 35, float %3886, float %4317)  ; FMax(a,b)
  %4319 = and i32 %3963, 16
  %4320 = icmp eq i32 %4319, 0
  br i1 %4320, label %4342, label %4321

; <label>:4321                                    ; preds = %4276
  %4322 = add i32 %3954, 0
  %4323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4324 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4323, %dx.types.Handle %4125, float %4053, float %4056, float undef, float undef, i32 0, i32 0, i32 undef, float %4058, float %4060, float undef, float %4062, float %4064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.ResRet.f32 %4324, 1
  %4327 = extractvalue %dx.types.ResRet.f32 %4324, 2
  %4328 = and i32 %4244, 65535
  %4329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4328)  ; LegacyF16ToF32(value)
  %4330 = fmul fast float %4325, %3948
  %4331 = fmul fast float %4326, %3949
  %4332 = fmul fast float %4327, %3950
  %4333 = and i32 %3963, 16384
  %4334 = icmp ne i32 %4333, 0
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = select i1 %4334, float %4336, float 1.000000e+00
  %4338 = fmul fast float %4337, %4329
  %4339 = fmul fast float %4330, %4338
  %4340 = fmul fast float %4331, %4338
  %4341 = fmul fast float %4332, %4338
  br label %4342

; <label>:4342                                    ; preds = %4321, %4276
  %4343 = phi float [ %4339, %4321 ], [ 0.000000e+00, %4276 ]
  %4344 = phi float [ %4340, %4321 ], [ 0.000000e+00, %4276 ]
  %4345 = phi float [ %4341, %4321 ], [ 0.000000e+00, %4276 ]
  %4346 = fsub fast float %4343, %3893
  %4347 = fsub fast float %4344, %3894
  %4348 = fsub fast float %4345, %3895
  %4349 = fmul fast float %4346, %4112
  %4350 = fmul fast float %4347, %4112
  %4351 = fmul fast float %4348, %4112
  %4352 = fadd fast float %4349, %3893
  %4353 = fadd fast float %4350, %3894
  %4354 = fadd fast float %4351, %3895
  br label %4012

; <label>:4355                                    ; preds = %4012
  br label %4356

; <label>:4356                                    ; preds = %4355, %3783
  %4357 = phi float [ 0.000000e+00, %3783 ], [ %4013, %4355 ]
  %4358 = phi float [ %3801, %3783 ], [ %4014, %4355 ]
  %4359 = phi float [ %3799, %3783 ], [ %4015, %4355 ]
  %4360 = phi float [ 0.000000e+00, %3783 ], [ %4016, %4355 ]
  %4361 = phi float [ 0.000000e+00, %3783 ], [ %4017, %4355 ]
  %4362 = phi float [ %3789, %3783 ], [ %4018, %4355 ]
  %4363 = phi float [ %3790, %3783 ], [ %4019, %4355 ]
  %4364 = phi float [ %3791, %3783 ], [ %4020, %4355 ]
  %4365 = phi float [ %3792, %3783 ], [ %4021, %4355 ]
  %4366 = phi float [ %3793, %3783 ], [ %4022, %4355 ]
  %4367 = phi float [ %3794, %3783 ], [ %4023, %4355 ]
  %4368 = phi float [ %3827, %3783 ], [ %4024, %4355 ]
  %4369 = phi float [ %3828, %3783 ], [ %4025, %4355 ]
  %4370 = phi float [ %3829, %3783 ], [ %4026, %4355 ]
  %4371 = phi float [ %3797, %3783 ], [ %4027, %4355 ]
  %4372 = phi float [ %3796, %3783 ], [ %4028, %4355 ]
  %4373 = phi float [ 0.000000e+00, %3783 ], [ %4029, %4355 ]
  %4374 = phi float [ %3795, %3783 ], [ %4030, %4355 ]
  %4375 = phi float [ %3786, %3783 ], [ %4031, %4355 ]
  %4376 = phi float [ %3787, %3783 ], [ %4032, %4355 ]
  %4377 = phi float [ %3788, %3783 ], [ %4033, %4355 ]
  %4378 = call float @dx.op.dot3.f32(i32 55, float %4368, float %4369, float %4370, float %4368, float %4369, float %4370)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = call float @dx.op.unary.f32(i32 25, float %4378)  ; Rsqrt(value)
  %4380 = fmul fast float %4379, %4368
  %4381 = fmul fast float %4379, %4369
  %4382 = fmul fast float %4379, %4370
  %4383 = fadd fast float %4373, %960
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4380, float %4381, float %4382, float %4380, float %4381, float %4382)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = call float @dx.op.unary.f32(i32 25, float %4385)  ; Rsqrt(value)
  %4387 = fmul fast float %4386, %4380
  %4388 = fmul fast float %4386, %4381
  %4389 = fmul fast float %4386, %4382
  %4390 = fadd fast float %4374, 0xBFB99999A0000000
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fmul fast float %4391, 0x3FF1C71C80000000
  %4393 = call float @dx.op.binary.f32(i32 36, float %4374, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4394 = fsub fast float 1.000000e+00, %4392
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fmul fast float %4395, %4375
  %4397 = fmul fast float %4395, %4376
  %4398 = fmul fast float %4395, %4377
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4402 = fmul fast float %4392, %4375
  %4403 = fmul fast float %4392, %4376
  %4404 = fmul fast float %4392, %4377
  %4405 = fadd fast float %4402, %4393
  %4406 = fadd fast float %4403, %4393
  %4407 = fadd fast float %4404, %4393
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4413 = extractvalue %dx.types.ResRet.i32 %4412, 0
  %4414 = and i32 %4413, 1
  %4415 = icmp eq i32 %4414, 0
  br i1 %4415, label %4430, label %4416

; <label>:4416                                    ; preds = %4356
  %4417 = call float @dx.op.binary.f32(i32 35, float %4400, float %4401)  ; FMax(a,b)
  %4418 = call float @dx.op.binary.f32(i32 35, float %4399, float %4417)  ; FMax(a,b)
  %4419 = fcmp fast ogt float %4418, 0.000000e+00
  %4420 = bitcast float %4418 to i32
  %4421 = sub nsw i32 2129859010, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = select i1 %4419, float %4422, float 0.000000e+00
  %4424 = fmul fast float %4399, %4362
  %4425 = fmul fast float %4400, %4363
  %4426 = fmul fast float %4401, %4364
  %4427 = fmul fast float %4424, %4423
  %4428 = fmul fast float %4425, %4423
  %4429 = fmul fast float %4426, %4423
  br label %4430

; <label>:4430                                    ; preds = %4416, %4356
  %4431 = phi float [ %4427, %4416 ], [ %4362, %4356 ]
  %4432 = phi float [ %4428, %4416 ], [ %4363, %4356 ]
  %4433 = phi float [ %4429, %4416 ], [ %4364, %4356 ]
  %4434 = fadd fast float %4399, 0xBFD51EB860000000
  %4435 = fadd fast float %4400, 0xBFD51EB860000000
  %4436 = fadd fast float %4401, 0xBFD51EB860000000
  %4437 = fmul fast float %4434, %4434
  %4438 = fmul fast float %4435, %4435
  %4439 = fmul fast float %4436, %4436
  %4440 = fmul fast float %4437, %4437
  %4441 = fmul fast float %4440, 1.000000e+02
  %4442 = fmul fast float %4438, %4438
  %4443 = fmul fast float %4442, 1.000000e+02
  %4444 = fmul fast float %4439, %4439
  %4445 = fmul fast float %4444, 1.000000e+02
  %4446 = fadd fast float %4441, 3.500000e+00
  %4447 = fadd fast float %4443, 3.500000e+00
  %4448 = fadd fast float %4445, 3.500000e+00
  %4449 = call float @dx.op.binary.f32(i32 35, float %4431, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4432, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4451 = call float @dx.op.binary.f32(i32 35, float %4433, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4452 = fdiv fast float %4446, %4449
  %4453 = fdiv fast float %4447, %4450
  %4454 = fdiv fast float %4448, %4451
  %4455 = fmul fast float %3798, 0xBFF7154760000000
  %4456 = fmul fast float %4455, %4452
  %4457 = call float @dx.op.unary.f32(i32 21, float %4456)  ; Exp(value)
  %4458 = fmul fast float %4457, 2.500000e-01
  %4459 = fmul fast float %3798, 0xBFDEC709E0000000
  %4460 = fmul fast float %4459, %4452
  %4461 = call float @dx.op.unary.f32(i32 21, float %4460)  ; Exp(value)
  %4462 = fmul fast float %4461, 7.500000e-01
  %4463 = fmul fast float %4455, %4453
  %4464 = call float @dx.op.unary.f32(i32 21, float %4463)  ; Exp(value)
  %4465 = fmul fast float %4464, 2.500000e-01
  %4466 = fmul fast float %4459, %4453
  %4467 = call float @dx.op.unary.f32(i32 21, float %4466)  ; Exp(value)
  %4468 = fmul fast float %4467, 7.500000e-01
  %4469 = fmul fast float %4455, %4454
  %4470 = call float @dx.op.unary.f32(i32 21, float %4469)  ; Exp(value)
  %4471 = fmul fast float %4470, 2.500000e-01
  %4472 = fmul fast float %4459, %4454
  %4473 = call float @dx.op.unary.f32(i32 21, float %4472)  ; Exp(value)
  %4474 = fmul fast float %4473, 7.500000e-01
  %4475 = fadd fast float %4458, %4462
  %4476 = fadd fast float %4465, %4468
  %4477 = fadd fast float %4471, %4474
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 3
  %4480 = and i32 %4479, 8
  %4481 = icmp ne i32 %4480, 0
  %4482 = call float @dx.op.binary.f32(i32 35, float %4399, float %4375)  ; FMax(a,b)
  %4483 = call float @dx.op.binary.f32(i32 35, float %4400, float %4375)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 35, float %4401, float %4375)  ; FMax(a,b)
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4400, float %4401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = select i1 %185, float %4375, float %4399
  %4487 = select i1 %185, float %4485, float %4400
  %4488 = select i1 %185, float 1.000000e+00, float %4401
  %4489 = select i1 %4481, float %4482, float %4486
  %4490 = select i1 %4481, float %4483, float %4487
  %4491 = select i1 %4481, float %4484, float %4488
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = extractvalue %dx.types.CBufRet.f32 %4492, 1
  %4495 = extractvalue %dx.types.CBufRet.f32 %4492, 2
  %4496 = fadd fast float %4493, %143
  %4497 = fadd fast float %4494, %144
  %4498 = fadd fast float %4495, %145
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.CBufRet.f32 %4499, 1
  %4502 = fsub fast float %4496, %4500
  %4503 = fsub fast float %4497, %4501
  %4504 = fmul fast float %4502, %4502
  %4505 = fmul fast float %4503, %4503
  %4506 = fadd fast float %4504, %4505
  %4507 = call float @dx.op.unary.f32(i32 24, float %4506)  ; Sqrt(value)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4509 = fcmp fast olt float %4507, %4508
  br i1 %4509, label %4510, label %4577

; <label>:4510                                    ; preds = %4430
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.CBufRet.f32 %4511, 1
  %4518 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4519 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4520 = extractvalue %dx.types.CBufRet.f32 %4511, 3
  %4521 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4522 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4523 = fadd fast float %4520, %4496
  %4524 = fadd fast float %4521, %4497
  %4525 = fadd fast float %4522, %4498
  %4526 = fmul fast float %4523, %4512
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4524, float %4514, float %4526)  ; FMad(a,b,c)
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %4525, float %4516, float %4527)  ; FMad(a,b,c)
  %4529 = fmul fast float %4523, %4517
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4524, float %4518, float %4529)  ; FMad(a,b,c)
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4525, float %4519, float %4530)  ; FMad(a,b,c)
  %4532 = fsub fast float %4528, %4520
  %4533 = fsub fast float %4531, %4521
  %4534 = fsub fast float %4532, %4500
  %4535 = fadd fast float %4534, %4508
  %4536 = fsub fast float %4533, %4501
  %4537 = fadd fast float %4536, %4508
  %4538 = extractvalue %dx.types.CBufRet.f32 %4499, 3
  %4539 = fmul fast float %4535, %4538
  %4540 = fmul fast float %4537, %4538
  %4541 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4543 = fsub fast float 1.000000e+00, %4541
  %4544 = fsub fast float 1.000000e+00, %4542
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4543, float %4544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = fcmp fast ugt float %4546, 0.000000e+00
  br i1 %4547, label %4548, label %4851

; <label>:4548                                    ; preds = %4510
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 2
  %4551 = fmul fast float %4550, %4546
  %4552 = extractvalue %dx.types.CBufRet.f32 %4549, 3
  %4553 = fadd fast float %4552, %4551
  %4554 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4555 = fadd fast float %4553, %4522
  %4556 = fmul fast float %4528, %4516
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4519, float %4556)  ; FMad(a,b,c)
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4554, float %4557)  ; FMad(a,b,c)
  %4559 = fsub fast float %4558, %4522
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4562 = fsub fast float %4559, %4561
  %4563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4543, float %4544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4543, float %4544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = fadd fast float %4568, %4564
  %4572 = fmul fast float %4571, 0x3F847AE140000000
  %4573 = fadd fast float %4569, %4565
  %4574 = fmul fast float %4573, 0x3F847AE140000000
  %4575 = fadd fast float %4570, %4566
  %4576 = fmul fast float %4575, 0x3F847AE140000000
  br label %4851

; <label>:4577                                    ; preds = %4430
  %4578 = and i32 %161, 1
  %4579 = icmp eq i32 %4578, 0
  br i1 %4579, label %4851, label %4580

; <label>:4580                                    ; preds = %4577
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 0
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.CBufRet.f32 %4581, 1
  %4588 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4589 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4590 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4591 = extractvalue %dx.types.CBufRet.f32 %4583, 3
  %4592 = extractvalue %dx.types.CBufRet.f32 %4585, 3
  %4593 = fadd fast float %4590, %4496
  %4594 = fadd fast float %4591, %4497
  %4595 = fadd fast float %4592, %4498
  %4596 = fmul fast float %4593, %4582
  %4597 = call float @dx.op.tertiary.f32(i32 46, float %4594, float %4584, float %4596)  ; FMad(a,b,c)
  %4598 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4586, float %4597)  ; FMad(a,b,c)
  %4599 = fmul fast float %4593, %4587
  %4600 = call float @dx.op.tertiary.f32(i32 46, float %4594, float %4588, float %4599)  ; FMad(a,b,c)
  %4601 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4589, float %4600)  ; FMad(a,b,c)
  %4602 = fsub fast float %4598, %4590
  %4603 = fsub fast float %4601, %4591
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.CBufRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.CBufRet.f32 %4604, 2
  %4608 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 3
  %4611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.i32 %4611, 0
  %4613 = extractvalue %dx.types.CBufRet.i32 %4611, 1
  %4614 = udiv i32 %4613, %4612
  %4615 = fsub fast float %4602, %4605
  %4616 = fsub fast float %4603, %4606
  %4617 = call float @dx.op.binary.f32(i32 35, float %4615, float 0.000000e+00)  ; FMax(a,b)
  %4618 = call float @dx.op.binary.f32(i32 35, float %4616, float 0.000000e+00)  ; FMax(a,b)
  %4619 = call float @dx.op.binary.f32(i32 36, float %4617, float %4607)  ; FMin(a,b)
  %4620 = call float @dx.op.binary.f32(i32 36, float %4618, float %4608)  ; FMin(a,b)
  %4621 = add i32 %4612, -1
  %4622 = add i32 %4614, -1
  %4623 = fmul fast float %4619, %4610
  %4624 = fmul fast float %4620, %4610
  %4625 = fptoui float %4623 to i32
  %4626 = fptoui float %4624 to i32
  %4627 = call i32 @dx.op.binary.i32(i32 40, i32 %4625, i32 %4621)  ; UMin(a,b)
  %4628 = call i32 @dx.op.binary.i32(i32 40, i32 %4626, i32 %4622)  ; UMin(a,b)
  %4629 = mul i32 %4628, %4612
  %4630 = add i32 %4629, %4627
  %4631 = shl i32 %4630, 2
  %4632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.i32 %4632, 0
  %4634 = icmp eq i32 %4633, -1
  br i1 %4634, label %4851, label %4635

; <label>:4635                                    ; preds = %4580
  %4636 = mul i32 %4633, 148
  %4637 = add i32 %4636, 4
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = add i32 %4636, 8
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = add i32 %4636, 36
  %4644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = add i32 %4636, 60
  %4647 = add i32 %4636, 92
  %4648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.i32 %4648, 0
  %4650 = add i32 %4636, 116
  %4651 = fsub fast float %4602, %4639
  %4652 = fsub fast float %4603, %4642
  %4653 = fmul fast float %4610, %4651
  %4654 = fmul fast float %4610, %4652
  %4655 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4657 = fsub fast float 1.000000e+00, %4656
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4660 = call float @dx.op.unary.f32(i32 83, float %4655)  ; DerivCoarseX(value)
  %4661 = call float @dx.op.unary.f32(i32 83, float %4657)  ; DerivCoarseX(value)
  %4662 = call float @dx.op.unary.f32(i32 84, float %4655)  ; DerivCoarseY(value)
  %4663 = call float @dx.op.unary.f32(i32 84, float %4657)  ; DerivCoarseY(value)
  %4664 = fmul fast float %4660, %4659
  %4665 = fmul fast float %4661, %4659
  %4666 = fmul fast float %4662, %4659
  %4667 = fmul fast float %4663, %4659
  %4668 = call float @dx.op.dot2.f32(i32 54, float %4666, float %4667, float %4666, float %4667)  ; Dot2(ax,ay,bx,by)
  %4669 = call float @dx.op.dot2.f32(i32 54, float %4664, float %4665, float %4664, float %4665)  ; Dot2(ax,ay,bx,by)
  %4670 = call float @dx.op.binary.f32(i32 35, float %4669, float %4668)  ; FMax(a,b)
  %4671 = call float @dx.op.unary.f32(i32 23, float %4670)  ; Log(value)
  %4672 = fmul fast float %4671, 5.000000e-01
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 1
  %4675 = fadd fast float %4674, %4672
  %4676 = call float @dx.op.binary.f32(i32 35, float %4675, float 0.000000e+00)  ; FMax(a,b)
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 3
  %4679 = fadd fast float %4678, %4676
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 3
  %4682 = fadd fast float %4679, %4681
  %4683 = add i32 %4649, 0
  %4684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4683, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4685 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4684, i32 0)  ; GetDimensions(handle,mipLevel)
  %4686 = extractvalue %dx.types.Dimensions %4685, 0
  %4687 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4686)  ; FirstbitLo(value)
  %4688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.i32 %4688, 1
  %4690 = sub nsw i32 %4689, %4687
  %4691 = sitofp i32 %4690 to float
  %4692 = fsub fast float %4682, %4691
  %4693 = call float @dx.op.binary.f32(i32 35, float %4692, float 0.000000e+00)  ; FMax(a,b)
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4684, %dx.types.Handle %37, float %4655, float %4657, float %4645, float undef, i32 0, i32 0, i32 undef, float %4693)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = fcmp ule float %4695, 0x3FE0101020000000
  %4697 = extractvalue %dx.types.CBufRet.i32 %4688, 0
  %4698 = and i32 %4697, 128
  %4699 = icmp ne i32 %4698, 0
  %4700 = and i1 %4696, %4699
  br i1 %4700, label %4851, label %4701

; <label>:4701                                    ; preds = %4635
  %4702 = add i32 %4636, 20
  %4703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = add i32 %4636, 24
  %4706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4705, i32 undef)  ; BufferLoad(srv,index,wot)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = add i32 %4636, 40
  %4709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = add i32 %4636, 96
  %4712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.i32 %4712, 0
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 2
  %4716 = fmul fast float %4715, %4655
  %4717 = fmul fast float %4715, %4657
  %4718 = extractvalue %dx.types.CBufRet.f32 %4714, 3
  %4719 = fadd fast float %4716, %4718
  %4720 = fadd fast float %4717, %4718
  %4721 = add i32 %4713, 0
  %4722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4723 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4722, i32 0)  ; GetDimensions(handle,mipLevel)
  %4724 = extractvalue %dx.types.Dimensions %4723, 0
  %4725 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4724)  ; FirstbitLo(value)
  %4726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.i32 %4726, 1
  %4728 = sub nsw i32 %4727, %4725
  %4729 = sitofp i32 %4728 to float
  %4730 = fsub fast float %4679, %4729
  %4731 = call float @dx.op.binary.f32(i32 35, float %4730, float 0.000000e+00)  ; FMax(a,b)
  %4732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4722, %dx.types.Handle %37, float %4719, float %4720, float %4710, float undef, i32 0, i32 0, i32 undef, float %4731)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = fmul fast float %4733, %4704
  %4735 = fadd fast float %4734, %4707
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4739 = extractvalue %dx.types.CBufRet.f32 %4736, 2
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 3
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4744 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4745 = fadd fast float %4741, %4602
  %4746 = fadd fast float %4743, %4603
  %4747 = fadd fast float %4735, %4744
  %4748 = fmul fast float %4745, %4737
  %4749 = call float @dx.op.tertiary.f32(i32 46, float %4746, float %4738, float %4748)  ; FMad(a,b,c)
  %4750 = call float @dx.op.tertiary.f32(i32 46, float %4747, float %4739, float %4749)  ; FMad(a,b,c)
  %4751 = fsub fast float %4750, %4744
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 2
  %4754 = fsub fast float %4751, %4753
  %4755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.i32 %4755, 0
  %4757 = call i32 @dx.op.binary.i32(i32 40, i32 %4633, i32 %4756)  ; UMin(a,b)
  %4758 = mul i32 %4757, 36
  %4759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4758, i32 undef)  ; BufferLoad(srv,index,wot)
  %4760 = extractvalue %dx.types.ResRet.i32 %4759, 0
  %4761 = add i32 %4758, 4
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = fmul fast float %4763, %4655
  %4765 = fmul fast float %4763, %4657
  %4766 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4767 = fadd fast float %4764, %4766
  %4768 = fadd fast float %4765, %4766
  %4769 = icmp eq i32 %4760, 0
  br i1 %4769, label %4838, label %4770

; <label>:4770                                    ; preds = %4701
  br label %4771

; <label>:4771                                    ; preds = %4828, %4770
  %4772 = phi float [ %4829, %4828 ], [ 0.000000e+00, %4770 ]
  %4773 = phi float [ %4830, %4828 ], [ 0.000000e+00, %4770 ]
  %4774 = phi float [ %4831, %4828 ], [ 0.000000e+00, %4770 ]
  %4775 = phi float [ %4832, %4828 ], [ 0.000000e+00, %4770 ]
  %4776 = phi float [ %4833, %4828 ], [ 0.000000e+00, %4770 ]
  %4777 = phi float [ %4834, %4828 ], [ 0.000000e+00, %4770 ]
  %4778 = phi i32 [ %4835, %4828 ], [ 0, %4770 ]
  %4779 = shl i32 %4778, 2
  %4780 = add i32 %4646, %4779
  %4781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4780, i32 undef)  ; BufferLoad(srv,index,wot)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = add i32 %4650, %4779
  %4784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4783, i32 undef)  ; BufferLoad(srv,index,wot)
  %4785 = extractvalue %dx.types.ResRet.i32 %4784, 0
  %4786 = add i32 %4785, 0
  %4787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4788 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4787, i32 0)  ; GetDimensions(handle,mipLevel)
  %4789 = extractvalue %dx.types.Dimensions %4788, 0
  %4790 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4789)  ; FirstbitLo(value)
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 1
  %4793 = sub nsw i32 %4792, %4790
  %4794 = sitofp i32 %4793 to float
  %4795 = fsub fast float %4679, %4794
  %4796 = call float @dx.op.binary.f32(i32 35, float %4795, float 0.000000e+00)  ; FMax(a,b)
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4787, %dx.types.Handle %37, float %4767, float %4768, float %4782, float undef, i32 0, i32 0, i32 undef, float %4796)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = fcmp fast ogt float %4798, 0.000000e+00
  br i1 %4799, label %4800, label %4828

; <label>:4800                                    ; preds = %4771
  %4801 = add i32 %4761, %4779
  %4802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.i32 %4802, 0
  %4804 = and i32 %4803, 32767
  %4805 = mul nuw nsw i32 %4804, 928
  %4806 = add nuw nsw i32 %4805, 48
  %4807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4806, i32 undef)  ; BufferLoad(srv,index,wot)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = add nuw nsw i32 %4805, 60
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = fmul fast float %4808, %4798
  %4817 = fmul fast float %4809, %4798
  %4818 = fmul fast float %4810, %4798
  %4819 = fadd fast float %4816, %4772
  %4820 = fadd fast float %4817, %4773
  %4821 = fadd fast float %4818, %4774
  %4822 = fmul fast float %4813, %4798
  %4823 = fmul fast float %4814, %4798
  %4824 = fmul fast float %4815, %4798
  %4825 = fadd fast float %4822, %4775
  %4826 = fadd fast float %4823, %4776
  %4827 = fadd fast float %4824, %4777
  br label %4828

; <label>:4828                                    ; preds = %4800, %4771
  %4829 = phi float [ %4819, %4800 ], [ %4772, %4771 ]
  %4830 = phi float [ %4820, %4800 ], [ %4773, %4771 ]
  %4831 = phi float [ %4821, %4800 ], [ %4774, %4771 ]
  %4832 = phi float [ %4825, %4800 ], [ %4775, %4771 ]
  %4833 = phi float [ %4826, %4800 ], [ %4776, %4771 ]
  %4834 = phi float [ %4827, %4800 ], [ %4777, %4771 ]
  %4835 = add nuw i32 %4778, 1
  %4836 = icmp eq i32 %4835, %4760
  br i1 %4836, label %4837, label %4771

; <label>:4837                                    ; preds = %4828
  br label %4838

; <label>:4838                                    ; preds = %4837, %4701
  %4839 = phi float [ 0.000000e+00, %4701 ], [ %4829, %4837 ]
  %4840 = phi float [ 0.000000e+00, %4701 ], [ %4830, %4837 ]
  %4841 = phi float [ 0.000000e+00, %4701 ], [ %4831, %4837 ]
  %4842 = phi float [ 0.000000e+00, %4701 ], [ %4832, %4837 ]
  %4843 = phi float [ 0.000000e+00, %4701 ], [ %4833, %4837 ]
  %4844 = phi float [ 0.000000e+00, %4701 ], [ %4834, %4837 ]
  %4845 = fadd fast float %4842, %4839
  %4846 = fmul fast float %4845, 0x3F847AE140000000
  %4847 = fadd fast float %4843, %4840
  %4848 = fmul fast float %4847, 0x3F847AE140000000
  %4849 = fadd fast float %4844, %4841
  %4850 = fmul fast float %4849, 0x3F847AE140000000
  br label %4851

; <label>:4851                                    ; preds = %4838, %4635, %4580, %4577, %4548, %4510
  %4852 = phi float [ %4562, %4548 ], [ -1.310720e+05, %4510 ], [ %4754, %4838 ], [ -1.310720e+05, %4580 ], [ -1.310720e+05, %4635 ], [ -1.310720e+05, %4577 ]
  %4853 = phi float [ %4572, %4548 ], [ 0.000000e+00, %4510 ], [ %4846, %4838 ], [ 0.000000e+00, %4580 ], [ 0.000000e+00, %4635 ], [ 0.000000e+00, %4577 ]
  %4854 = phi float [ %4574, %4548 ], [ 0.000000e+00, %4510 ], [ %4848, %4838 ], [ 0.000000e+00, %4580 ], [ 0.000000e+00, %4635 ], [ 0.000000e+00, %4577 ]
  %4855 = phi float [ %4576, %4548 ], [ 0.000000e+00, %4510 ], [ %4850, %4838 ], [ 0.000000e+00, %4580 ], [ 0.000000e+00, %4635 ], [ 0.000000e+00, %4577 ]
  %4856 = phi i1 [ true, %4548 ], [ false, %4510 ], [ true, %4838 ], [ false, %4580 ], [ false, %4635 ], [ false, %4577 ]
  %4857 = and i32 %161, 3
  %4858 = icmp eq i32 %4857, 1
  %4859 = select i1 %4858, float 1.000000e+00, float 0.000000e+00
  %4860 = fsub fast float %4852, %145
  %4861 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4862 = select i1 %4856, float %4861, float 1.000000e+00
  %4863 = fmul fast float %4862, %4859
  %4864 = icmp eq i32 %4857, 3
  %4865 = select i1 %4864, float 1.000000e+00, float %4863
  %4866 = call float @dx.op.binary.f32(i32 35, float %4357, float %4865)  ; FMax(a,b)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = fcmp fast une float %4867, 0.000000e+00
  %4869 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = call float @dx.op.unary.f32(i32 25, float %4869)  ; Rsqrt(value)
  br i1 %4868, label %4878, label %4871

; <label>:4871                                    ; preds = %4851
  %4872 = fmul fast float %4870, %143
  %4873 = fmul fast float %4870, %144
  %4874 = fmul fast float %4870, %145
  %4875 = fsub fast float -0.000000e+00, %4872
  %4876 = fsub fast float -0.000000e+00, %4873
  %4877 = fsub fast float -0.000000e+00, %4874
  br label %5046

; <label>:4878                                    ; preds = %4851
  %4879 = fmul fast float %143, %4870
  %4880 = fsub fast float -0.000000e+00, %4879
  %4881 = fmul fast float %144, %4870
  %4882 = fsub fast float -0.000000e+00, %4881
  %4883 = fmul fast float %145, %4870
  %4884 = fsub fast float -0.000000e+00, %4883
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4882, float %4884, float %93, float %95, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = fmul fast float %4867, 2.500000e+00
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4867, 0x4013FFFFE0000000
  %4889 = fadd fast float %4888, 0xBFFFFFFFE0000000
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4867, 0x4004000020000000
  %4892 = fadd fast float %4891, 0xBFF8000040000000
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4895 = fmul fast float %4390, 1.000000e+01
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4896, 2.000000e+00
  %4898 = fsub fast float 3.000000e+00, %4897
  %4899 = fmul fast float %4896, %4896
  %4900 = fmul fast float %4899, %4898
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = fsub fast float 0x3FE3333340000000, %4411
  %4903 = fmul fast float %4902, 0x400AAAAAA0000000
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4901, %4904
  %4906 = fmul fast float %4489, 0x3FEA2B8620000000
  %4907 = fmul fast float %4490, 0x3FEA2B8620000000
  %4908 = fmul fast float %4491, 0x3FEA2B8620000000
  %4909 = fadd fast float %4906, 0x3FC81DFBA0000000
  %4910 = fmul fast float %4909, %4489
  %4911 = fadd fast float %4910, 0x3F910E6020000000
  %4912 = fadd fast float %4907, 0x3FC81DFBA0000000
  %4913 = fmul fast float %4912, %4490
  %4914 = fadd fast float %4913, 0x3F910E6020000000
  %4915 = fadd fast float %4908, 0x3FC81DFBA0000000
  %4916 = fmul fast float %4915, %4491
  %4917 = fadd fast float %4916, 0x3F910E6020000000
  %4918 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4921 = fsub fast float %4918, %4489
  %4922 = fsub fast float %4919, %4490
  %4923 = fsub fast float %4920, %4491
  %4924 = fmul fast float %4921, %4894
  %4925 = fmul fast float %4924, %4905
  %4926 = fmul fast float %4922, %4894
  %4927 = fmul fast float %4926, %4905
  %4928 = fmul fast float %4923, %4894
  %4929 = fmul fast float %4928, %4905
  %4930 = fadd fast float %4925, %4489
  %4931 = fadd fast float %4927, %4490
  %4932 = fadd fast float %4929, %4491
  %4933 = fmul fast float %4371, %4371
  %4934 = fmul fast float %4933, %4933
  %4935 = fadd fast float %4890, 1.000000e+00
  %4936 = fsub fast float %4935, %4905
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = call float @dx.op.dot3.f32(i32 55, float %93, float %95, float %97, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fsub fast float 1.000000e+00, %4934
  %4941 = call float @dx.op.binary.f32(i32 36, float %4937, float %4940)  ; FMin(a,b)
  %4942 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4943 = call float @dx.op.binary.f32(i32 35, float %4941, float %4942)  ; FMax(a,b)
  %4944 = fadd fast float %4939, 0xBFE4CCCCC0000000
  %4945 = fmul fast float %4944, 0x4006DB6DA0000000
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = fmul fast float %4946, 2.000000e+00
  %4948 = fsub fast float 3.000000e+00, %4947
  %4949 = bitcast float %4408 to i32
  %4950 = ashr i32 %4949, 1
  %4951 = add nsw i32 %4950, 532487669
  %4952 = bitcast i32 %4951 to float
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, 2.000000e+00
  %4958 = bitcast float %4409 to i32
  %4959 = ashr i32 %4958, 1
  %4960 = add nsw i32 %4959, 532487669
  %4961 = bitcast i32 %4960 to float
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = bitcast float %4962 to i32
  %4964 = sub nsw i32 2129859010, %4963
  %4965 = bitcast i32 %4964 to float
  %4966 = fmul fast float %4965, 2.000000e+00
  %4967 = bitcast float %4410 to i32
  %4968 = ashr i32 %4967, 1
  %4969 = add nsw i32 %4968, 532487669
  %4970 = bitcast i32 %4969 to float
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4974, 2.000000e+00
  %4976 = fsub fast float 0x4002A9FBE0000000, %4957
  %4977 = fadd fast float %4957, 0x3FD54FDF00000000
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = fmul fast float %4980, %4976
  %4982 = fmul fast float %4981, %4981
  %4983 = fsub fast float 0x4002A9FBE0000000, %4966
  %4984 = fadd fast float %4966, 0x3FD54FDF00000000
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = fmul fast float %4987, %4983
  %4989 = fmul fast float %4988, %4988
  %4990 = fsub fast float 0x4002A9FBE0000000, %4975
  %4991 = fadd fast float %4975, 0x3FD54FDF00000000
  %4992 = bitcast float %4991 to i32
  %4993 = sub nsw i32 2129859010, %4992
  %4994 = bitcast i32 %4993 to float
  %4995 = fmul fast float %4994, %4990
  %4996 = fmul fast float %4995, %4995
  %4997 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4982)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4989)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4996)  ; FMax(a,b)
  %5000 = fsub fast float 1.000000e+00, %4885
  %5001 = fadd fast float %5000, %4901
  %5002 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5003 = fsub fast float 1.000000e+00, %4865
  %5004 = fmul fast float %4943, %5003
  %5005 = fmul fast float %4946, %4946
  %5006 = fmul fast float %5005, %5004
  %5007 = fmul fast float %5006, %4948
  %5008 = fmul fast float %5003, 0xBFE99999A0000000
  %5009 = fmul fast float %5008, %4894
  %5010 = fmul fast float %5009, %4905
  %5011 = fadd fast float %5010, 1.000000e+00
  %5012 = fadd fast float %4411, -1.000000e+00
  %5013 = fmul fast float %5011, %5012
  %5014 = fadd fast float %5013, 1.000000e+00
  %5015 = fsub fast float %4997, %4408
  %5016 = fsub fast float %4998, %4409
  %5017 = fsub fast float %4999, %4410
  %5018 = fmul fast float %5007, %5015
  %5019 = fmul fast float %5007, %5016
  %5020 = fmul fast float %5007, %5017
  %5021 = fadd fast float %5018, %4408
  %5022 = fadd fast float %5019, %4409
  %5023 = fadd fast float %5020, %4410
  %5024 = fsub fast float %93, %4387
  %5025 = fsub fast float %95, %4388
  %5026 = fsub fast float %97, %4389
  %5027 = fmul fast float %5007, %5024
  %5028 = fmul fast float %5007, %5025
  %5029 = fmul fast float %5007, %5026
  %5030 = fadd fast float %5027, %4387
  %5031 = fadd fast float %5028, %4388
  %5032 = fadd fast float %5029, %4389
  %5033 = fmul fast float %5007, %5002
  %5034 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = fmul fast float %5033, %5035
  %5037 = fadd fast float %5036, %5034
  %5038 = fsub fast float 1.000000e+00, %4371
  %5039 = fmul fast float %5007, %5038
  %5040 = fadd fast float %5039, %4371
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.unary.f32(i32 25, float %5041)  ; Rsqrt(value)
  %5043 = fmul fast float %5030, %5042
  %5044 = fmul fast float %5031, %5042
  %5045 = fmul fast float %5032, %5042
  br label %5046

; <label>:5046                                    ; preds = %4878, %4871
  %5047 = phi float [ %4877, %4871 ], [ %4884, %4878 ]
  %5048 = phi float [ %4876, %4871 ], [ %4882, %4878 ]
  %5049 = phi float [ %4875, %4871 ], [ %4880, %4878 ]
  %5050 = phi float [ %4874, %4871 ], [ %4883, %4878 ]
  %5051 = phi float [ %4873, %4871 ], [ %4881, %4878 ]
  %5052 = phi float [ %4872, %4871 ], [ %4879, %4878 ]
  %5053 = phi float [ %4489, %4871 ], [ %4930, %4878 ]
  %5054 = phi float [ %4490, %4871 ], [ %4931, %4878 ]
  %5055 = phi float [ %4491, %4871 ], [ %4932, %4878 ]
  %5056 = phi float [ %4387, %4871 ], [ %5043, %4878 ]
  %5057 = phi float [ %4388, %4871 ], [ %5044, %4878 ]
  %5058 = phi float [ %4389, %4871 ], [ %5045, %4878 ]
  %5059 = phi float [ %4408, %4871 ], [ %5021, %4878 ]
  %5060 = phi float [ %4409, %4871 ], [ %5022, %4878 ]
  %5061 = phi float [ %4410, %4871 ], [ %5023, %4878 ]
  %5062 = phi float [ %4411, %4871 ], [ %5037, %4878 ]
  %5063 = phi float [ %4371, %4871 ], [ %5040, %4878 ]
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5067 = fmul fast float %5065, %84
  %5068 = fmul fast float %5066, %85
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = fmul fast float %5073, %5071
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fadd fast float %5075, -1.000000e+00
  %5077 = fmul fast float %5076, %5070
  %5078 = fadd fast float %5077, 1.000000e+00
  %5079 = select i1 %185, float 0.000000e+00, float %5061
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5049, float %5048, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5052, float %5051, float %5050, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = fmul fast float %5082, 2.000000e+00
  %5084 = fmul fast float %5083, %5056
  %5085 = fmul fast float %5083, %5057
  %5086 = fmul fast float %5083, %5058
  %5087 = fsub fast float %5052, %5084
  %5088 = fsub fast float %5051, %5085
  %5089 = fsub fast float %5050, %5086
  %5090 = call float @dx.op.binary.f32(i32 36, float %5063, float %5078)  ; FMin(a,b)
  %5091 = fsub fast float 1.000000e+00, %5090
  %5092 = bitcast float %5091 to i32
  %5093 = ashr i32 %5092, 1
  %5094 = add nsw i32 %5093, 532487669
  %5095 = bitcast i32 %5094 to float
  %5096 = fsub fast float 1.000000e+00, %5062
  %5097 = call float @dx.op.binary.f32(i32 35, float %5096, float 0x3F847AE140000000)  ; FMax(a,b)
  %5098 = fmul fast float %5097, %5097
  %5099 = fmul fast float %5098, %5098
  %5100 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5095, float %5099, float %5100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5102 = extractvalue %dx.types.ResRet.f32 %5101, 0
  %5103 = fsub fast float 1.000000e+00, %5063
  %5104 = bitcast float %5103 to i32
  %5105 = sub nsw i32 2129859010, %5104
  %5106 = bitcast i32 %5105 to float
  %5107 = call float @dx.op.dot3.f32(i32 55, float %61, float %57, float %53, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = fmul fast float %5107, 0x3FD20DD760000000
  %5109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5110 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = fcmp fast oeq float %5110, 0.000000e+00
  %5112 = fcmp fast oeq float %5109, 0.000000e+00
  %5113 = or i1 %5112, %5111
  br i1 %5113, label %5143, label %5114

; <label>:5114                                    ; preds = %5046
  %5115 = fsub fast float -0.000000e+00, %64
  %5116 = fsub fast float -0.000000e+00, %62
  %5117 = call float @dx.op.unary.f32(i32 24, float %5110)  ; Sqrt(value)
  %5118 = fdiv fast float %5117, %5109
  %5119 = fcmp fast ogt float %5118, 0x3FFB6F8900000000
  %5120 = select i1 %5119, float 0x3FFB6F8900000000, float %5118
  %5121 = fmul fast float %5120, 0x3FE8A23460000000
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5120, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5124 = fmul fast float %5122, %5109
  %5125 = fmul fast float %5123, 0x3FF279A740000000
  %5126 = fadd fast float %5125, -1.000000e+00
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %63, float %5115, float %5116, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call float @dx.op.unary.f32(i32 25, float %5127)  ; Rsqrt(value)
  %5129 = fmul fast float %5128, %5115
  %5130 = fmul fast float %5128, %5116
  %5131 = fmul fast float %5128, %63
  %5132 = fmul fast float %5126, %5126
  %5133 = fsub fast float 1.000000e+00, %5132
  %5134 = fmul fast float %5123, 0x40005F8BE0000000
  %5135 = fsub fast float 0x400C5BF8A0000000, %5134
  %5136 = fdiv fast float %5124, %5135
  %5137 = fmul fast float %5136, 0x3FEE31C3C0000000
  %5138 = fmul fast float %5137, %5133
  %5139 = fmul fast float %5123, 0x3FDACB7480000000
  %5140 = fadd fast float %5139, 0xBFD7347680000000
  %5141 = fmul fast float %5140, %5136
  %5142 = fmul fast float %5141, %5133
  br label %5143

; <label>:5143                                    ; preds = %5114, %5046
  %5144 = phi float [ %5129, %5114 ], [ 0.000000e+00, %5046 ]
  %5145 = phi float [ %5130, %5114 ], [ 0.000000e+00, %5046 ]
  %5146 = phi float [ %5131, %5114 ], [ 0.000000e+00, %5046 ]
  %5147 = phi float [ %5138, %5114 ], [ 0.000000e+00, %5046 ]
  %5148 = phi float [ %5142, %5114 ], [ 0.000000e+00, %5046 ]
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5146, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = fmul fast float %5149, 0x3FDF454380000000
  %5151 = fmul fast float %5149, %5149
  %5152 = fmul fast float %5151, 0x3FEE471020000000
  %5153 = fadd fast float %5152, 0xBFD42F6020000000
  %5154 = fmul fast float %5109, 0x3FD20DD760000000
  %5155 = fmul fast float %5153, %5148
  %5156 = fadd fast float %5155, %5154
  %5157 = fmul fast float %5150, %5147
  %5158 = fadd fast float %5156, %5157
  %5159 = fsub fast float %5156, %5157
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5146, float %5087, float %5088, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = fmul fast float %5160, 0x3FDF454380000000
  %5162 = fmul fast float %5160, %5160
  %5163 = fmul fast float %5162, 0x3FEE471020000000
  %5164 = fadd fast float %5163, 0xBFD42F6020000000
  %5165 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5147, float %5148, float 0x3FD20DD760000000, float %5161, float %5164)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5167 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = fcmp fast oeq float %5167, 0.000000e+00
  %5169 = fcmp fast oeq float %5166, 0.000000e+00
  %5170 = or i1 %5169, %5168
  br i1 %5170, label %5200, label %5171

; <label>:5171                                    ; preds = %5143
  %5172 = fsub fast float -0.000000e+00, %60
  %5173 = fsub fast float -0.000000e+00, %58
  %5174 = call float @dx.op.unary.f32(i32 24, float %5167)  ; Sqrt(value)
  %5175 = fdiv fast float %5174, %5166
  %5176 = fcmp fast ogt float %5175, 0x3FFB6F8900000000
  %5177 = select i1 %5176, float 0x3FFB6F8900000000, float %5175
  %5178 = fmul fast float %5177, 0x3FE8A23460000000
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = call float @dx.op.binary.f32(i32 35, float %5177, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5181 = fmul fast float %5179, %5166
  %5182 = fmul fast float %5180, 0x3FF279A740000000
  %5183 = fadd fast float %5182, -1.000000e+00
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %59, float %5172, float %5173, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = call float @dx.op.unary.f32(i32 25, float %5184)  ; Rsqrt(value)
  %5186 = fmul fast float %5185, %5172
  %5187 = fmul fast float %5185, %5173
  %5188 = fmul fast float %5185, %59
  %5189 = fmul fast float %5183, %5183
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5180, 0x40005F8BE0000000
  %5192 = fsub fast float 0x400C5BF8A0000000, %5191
  %5193 = fdiv fast float %5181, %5192
  %5194 = fmul fast float %5193, 0x3FEE31C3C0000000
  %5195 = fmul fast float %5194, %5190
  %5196 = fmul fast float %5180, 0x3FDACB7480000000
  %5197 = fadd fast float %5196, 0xBFD7347680000000
  %5198 = fmul fast float %5197, %5193
  %5199 = fmul fast float %5198, %5190
  br label %5200

; <label>:5200                                    ; preds = %5171, %5143
  %5201 = phi float [ %5186, %5171 ], [ 0.000000e+00, %5143 ]
  %5202 = phi float [ %5187, %5171 ], [ 0.000000e+00, %5143 ]
  %5203 = phi float [ %5188, %5171 ], [ 0.000000e+00, %5143 ]
  %5204 = phi float [ %5195, %5171 ], [ 0.000000e+00, %5143 ]
  %5205 = phi float [ %5199, %5171 ], [ 0.000000e+00, %5143 ]
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = fmul fast float %5206, 0x3FDF454380000000
  %5208 = fmul fast float %5206, %5206
  %5209 = fmul fast float %5208, 0x3FEE471020000000
  %5210 = fadd fast float %5209, 0xBFD42F6020000000
  %5211 = fmul fast float %5166, 0x3FD20DD760000000
  %5212 = fmul fast float %5210, %5205
  %5213 = fadd fast float %5212, %5211
  %5214 = fmul fast float %5207, %5204
  %5215 = fadd fast float %5213, %5214
  %5216 = fsub fast float %5213, %5214
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %5087, float %5088, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = fmul fast float %5217, 0x3FDF454380000000
  %5219 = fmul fast float %5217, %5217
  %5220 = fmul fast float %5219, 0x3FEE471020000000
  %5221 = fadd fast float %5220, 0xBFD42F6020000000
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5204, float %5205, float 0x3FD20DD760000000, float %5218, float %5221)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %5224 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = fcmp fast oeq float %5224, 0.000000e+00
  %5226 = fcmp fast oeq float %5223, 0.000000e+00
  %5227 = or i1 %5226, %5225
  br i1 %5227, label %5257, label %5228

; <label>:5228                                    ; preds = %5200
  %5229 = fsub fast float -0.000000e+00, %56
  %5230 = fsub fast float -0.000000e+00, %54
  %5231 = call float @dx.op.unary.f32(i32 24, float %5224)  ; Sqrt(value)
  %5232 = fdiv fast float %5231, %5223
  %5233 = fcmp fast ogt float %5232, 0x3FFB6F8900000000
  %5234 = select i1 %5233, float 0x3FFB6F8900000000, float %5232
  %5235 = fmul fast float %5234, 0x3FE8A23460000000
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = call float @dx.op.binary.f32(i32 35, float %5234, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5238 = fmul fast float %5236, %5223
  %5239 = fmul fast float %5237, 0x3FF279A740000000
  %5240 = fadd fast float %5239, -1.000000e+00
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %55, float %5229, float %5230, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.unary.f32(i32 25, float %5241)  ; Rsqrt(value)
  %5243 = fmul fast float %5242, %5229
  %5244 = fmul fast float %5242, %5230
  %5245 = fmul fast float %5242, %55
  %5246 = fmul fast float %5240, %5240
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = fmul fast float %5237, 0x40005F8BE0000000
  %5249 = fsub fast float 0x400C5BF8A0000000, %5248
  %5250 = fdiv fast float %5238, %5249
  %5251 = fmul fast float %5250, 0x3FEE31C3C0000000
  %5252 = fmul fast float %5251, %5247
  %5253 = fmul fast float %5237, 0x3FDACB7480000000
  %5254 = fadd fast float %5253, 0xBFD7347680000000
  %5255 = fmul fast float %5254, %5250
  %5256 = fmul fast float %5255, %5247
  br label %5257

; <label>:5257                                    ; preds = %5228, %5200
  %5258 = phi float [ %5243, %5228 ], [ 0.000000e+00, %5200 ]
  %5259 = phi float [ %5244, %5228 ], [ 0.000000e+00, %5200 ]
  %5260 = phi float [ %5245, %5228 ], [ 0.000000e+00, %5200 ]
  %5261 = phi float [ %5252, %5228 ], [ 0.000000e+00, %5200 ]
  %5262 = phi float [ %5256, %5228 ], [ 0.000000e+00, %5200 ]
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = fmul fast float %5263, 0x3FDF454380000000
  %5265 = fmul fast float %5263, %5263
  %5266 = fmul fast float %5265, 0x3FEE471020000000
  %5267 = fadd fast float %5266, 0xBFD42F6020000000
  %5268 = fmul fast float %5223, 0x3FD20DD760000000
  %5269 = fmul fast float %5267, %5262
  %5270 = fadd fast float %5269, %5268
  %5271 = fmul fast float %5264, %5261
  %5272 = fadd fast float %5270, %5271
  %5273 = fsub fast float %5270, %5271
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5087, float %5088, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = fmul fast float %5274, 0x3FDF454380000000
  %5276 = fmul fast float %5274, %5274
  %5277 = fmul fast float %5276, 0x3FEE471020000000
  %5278 = fadd fast float %5277, 0xBFD42F6020000000
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5261, float %5262, float 0x3FD20DD760000000, float %5275, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.binary.f32(i32 35, float %5158, float 0.000000e+00)  ; FMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 35, float %5215, float 0.000000e+00)  ; FMax(a,b)
  %5282 = call float @dx.op.binary.f32(i32 35, float %5272, float 0.000000e+00)  ; FMax(a,b)
  %5283 = call float @dx.op.binary.f32(i32 35, float %5159, float 0.000000e+00)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5216, float 0.000000e+00)  ; FMax(a,b)
  %5285 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5165, float 0.000000e+00)  ; FMax(a,b)
  %5287 = call float @dx.op.binary.f32(i32 35, float %5222, float 0.000000e+00)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float %5279, float 0.000000e+00)  ; FMax(a,b)
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = call float @dx.op.binary.f32(i32 36, float %5053, float %5290)  ; FMin(a,b)
  %5292 = fmul fast float %5291, %5091
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = bitcast float %5293 to i32
  %5295 = sub nsw i32 2129859010, %5294
  %5296 = bitcast i32 %5295 to float
  %5297 = call float @dx.op.binary.f32(i32 36, float %5054, float %5290)  ; FMin(a,b)
  %5298 = fmul fast float %5297, %5091
  %5299 = fsub fast float 1.000000e+00, %5298
  %5300 = bitcast float %5299 to i32
  %5301 = sub nsw i32 2129859010, %5300
  %5302 = bitcast i32 %5301 to float
  %5303 = call float @dx.op.binary.f32(i32 36, float %5055, float %5290)  ; FMin(a,b)
  %5304 = fmul fast float %5303, %5091
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5280, %5090
  %5310 = fmul fast float %5309, %5296
  %5311 = fmul fast float %5281, %5090
  %5312 = fmul fast float %5311, %5302
  %5313 = fmul fast float %5282, %5090
  %5314 = fmul fast float %5313, %5308
  %5315 = call float @dx.op.binary.f32(i32 36, float %5059, float %5290)  ; FMin(a,b)
  %5316 = fmul fast float %5315, %5091
  %5317 = fsub fast float 1.000000e+00, %5316
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = call float @dx.op.binary.f32(i32 36, float %5060, float %5290)  ; FMin(a,b)
  %5322 = fmul fast float %5321, %5091
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = call float @dx.op.binary.f32(i32 36, float %5079, float %5290)  ; FMin(a,b)
  %5328 = fmul fast float %5327, %5091
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5286, %5090
  %5334 = fmul fast float %5333, %5320
  %5335 = fmul fast float %5287, %5090
  %5336 = fmul fast float %5335, %5326
  %5337 = fmul fast float %5288, %5090
  %5338 = fmul fast float %5337, %5332
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5312, float %5314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = select i1 %185, float 0.000000e+00, float %5310
  %5341 = select i1 %185, float %5339, float %5312
  %5342 = select i1 %185, float 0.000000e+00, float %5314
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = select i1 %185, float 0.000000e+00, float %5283
  %5345 = select i1 %185, float %5343, float %5284
  %5346 = select i1 %185, float 0.000000e+00, float %5285
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5336, float %5338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = select i1 %185, float 0.000000e+00, float %5334
  %5349 = select i1 %185, float %5347, float %5336
  %5350 = select i1 %185, float 0.000000e+00, float %5338
  %5351 = fmul fast float %5081, 9.843750e-01
  %5352 = fmul fast float %5062, 9.843750e-01
  %5353 = fadd fast float %5351, 7.812500e-03
  %5354 = fadd fast float %5352, 7.812500e-03
  %5355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5353, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 2
  %5357 = extractvalue %dx.types.ResRet.f32 %5355, 3
  %5358 = fmul fast float %5356, %5059
  %5359 = fmul fast float %5356, %5060
  %5360 = fmul fast float %5356, %5079
  %5361 = fadd fast float %5358, %5357
  %5362 = fadd fast float %5359, %5357
  %5363 = fadd fast float %5360, %5357
  %5364 = fcmp fast ogt float %4361, 0.000000e+00
  br i1 %5364, label %5365, label %5391

; <label>:5365                                    ; preds = %5257
  %5366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %5081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.ResRet.f32 %5366, 1
  %5369 = extractvalue %dx.types.ResRet.f32 %5366, 2
  %5370 = fadd fast float %5367, -5.000000e-01
  %5371 = fadd fast float %5368, -5.000000e-01
  %5372 = fadd fast float %5369, -5.000000e-01
  %5373 = fsub fast float 1.000000e+00, %5059
  %5374 = fsub fast float 1.000000e+00, %5060
  %5375 = fsub fast float 1.000000e+00, %5079
  %5376 = fmul fast float %5059, 4.000000e+00
  %5377 = fmul fast float %5376, %5373
  %5378 = fmul fast float %5377, %5370
  %5379 = fmul fast float %5060, 4.000000e+00
  %5380 = fmul fast float %5379, %5374
  %5381 = fmul fast float %5380, %5371
  %5382 = fmul fast float %5079, 4.000000e+00
  %5383 = fmul fast float %5382, %5375
  %5384 = fmul fast float %5383, %5372
  %5385 = fadd fast float %5378, %5361
  %5386 = fadd fast float %5381, %5362
  %5387 = fadd fast float %5384, %5363
  %5388 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5389 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5390 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  br label %5391

; <label>:5391                                    ; preds = %5365, %5257
  %5392 = phi float [ %5388, %5365 ], [ %5361, %5257 ]
  %5393 = phi float [ %5389, %5365 ], [ %5362, %5257 ]
  %5394 = phi float [ %5390, %5365 ], [ %5363, %5257 ]
  %5395 = call float @dx.op.binary.f32(i32 35, float %5393, float %5394)  ; FMax(a,b)
  %5396 = call float @dx.op.binary.f32(i32 35, float %5392, float %5395)  ; FMax(a,b)
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = fmul fast float %5396, %5062
  %5399 = fadd fast float %5398, %5062
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5405 = fmul fast float %5399, %5401
  %5406 = fadd fast float %5405, %5402
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5408 = fmul fast float %5403, %5399
  %5409 = fadd fast float %5408, %5404
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fsub fast float 1.000000e+00, %5102
  %5412 = fadd fast float %5411, %5410
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = fcmp fast olt float %5413, 1.000000e+00
  br i1 %5414, label %5415, label %6270

; <label>:5415                                    ; preds = %5391
  %5416 = fcmp fast olt float %5407, 1.000000e+00
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = fcmp fast ogt float %5418, 0.000000e+00
  %5420 = or i1 %5416, %5419
  %5421 = or i1 %5416, %5419
  %5422 = xor i1 %5421, true
  %5423 = zext i1 %5422 to i32
  br i1 %5420, label %5424, label %5667

; <label>:5424                                    ; preds = %5415
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5429 = extractvalue %dx.types.CBufRet.f32 %5425, 3
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = extractvalue %dx.types.CBufRet.f32 %5430, 3
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5444 = extractvalue %dx.types.CBufRet.f32 %5440, 3
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %5454 = extractvalue %dx.types.CBufRet.f32 %5450, 3
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5087, float %5088, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5458 = fmul fast float %5457, 8.000000e+00
  %5459 = fadd fast float %5458, -6.000000e+00
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = fmul fast float %5455, 8.000000e+00
  %5462 = fmul fast float %5461, %5418
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = fcmp fast ogt float %5463, 0.000000e+00
  br i1 %5464, label %5465, label %5642, !dx.controlflow.hints !85

; <label>:5465                                    ; preds = %5424
  %5466 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5467 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5468 = fsub fast float %5466, %5467
  %5469 = fmul fast float %5468, %5062
  %5470 = fadd fast float %5469, %5467
  %5471 = fmul fast float %198, 2.000000e+00
  %5472 = fmul fast float %199, 2.000000e+00
  %5473 = fadd fast float %5471, -1.000000e+00
  %5474 = fadd fast float %5472, -1.000000e+00
  %5475 = fmul fast float %5470, %5473
  %5476 = fmul fast float %5470, %5474
  %5477 = fadd fast float %5475, %84
  %5478 = fadd fast float %5476, %85
  %5479 = fmul fast float %5477, %5065
  %5480 = fmul fast float %5478, %5066
  %5481 = fadd fast float %5062, 0xBFE3333340000000
  %5482 = fmul fast float %5481, 0x4004000020000000
  %5483 = fsub fast float 1.000000e+00, %5482
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fmul fast float %5484, 3.000000e+00
  %5486 = fadd fast float %5485, %198
  %5487 = call float @dx.op.unary.f32(i32 27, float %5486)  ; Round_ni(value)
  %5488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5479, float %5480, float %5487, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5489 = extractvalue %dx.types.ResRet.f32 %5488, 0
  %5490 = fcmp fast une float %5489, 0xFFF0000000000000
  %5491 = fcmp fast une float %5489, 0x7FF0000000000000
  %5492 = and i1 %5490, %5491
  %5493 = fcmp fast olt float %5489, 0.000000e+00
  %5494 = call float @dx.op.unary.f32(i32 6, float %5489)  ; FAbs(value)
  %5495 = fsub fast float 1.000000e+00, %5494
  %5496 = select i1 %5492, float 1.000000e+00, float 0.000000e+00
  %5497 = fmul fast float %5496, %5463
  %5498 = fcmp fast ogt float %5497, 0.000000e+00
  br i1 %5498, label %5499, label %5642, !dx.controlflow.hints !86

; <label>:5499                                    ; preds = %5465
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5504 = select i1 %5493, float 0.000000e+00, float %5501
  %5505 = select i1 %5493, float 0.000000e+00, float %5502
  %5506 = select i1 %5493, float 0.000000e+00, float %5503
  %5507 = select i1 %5493, float %5426, float %5441
  %5508 = select i1 %5493, float %5431, float %5446
  %5509 = select i1 %5493, float %5436, float %5451
  %5510 = select i1 %5493, float %5427, float %5442
  %5511 = select i1 %5493, float %5432, float %5447
  %5512 = select i1 %5493, float %5437, float %5452
  %5513 = select i1 %5493, float %5428, float %5443
  %5514 = select i1 %5493, float %5433, float %5448
  %5515 = select i1 %5493, float %5438, float %5453
  %5516 = select i1 %5493, float %5429, float %5444
  %5517 = select i1 %5493, float %5434, float %5449
  %5518 = select i1 %5493, float %5439, float %5454
  %5519 = fadd fast float %5504, %143
  %5520 = fadd fast float %5505, %144
  %5521 = fadd fast float %5506, %145
  %5522 = fmul fast float %5519, %5507
  %5523 = call float @dx.op.tertiary.f32(i32 46, float %5520, float %5510, float %5522)  ; FMad(a,b,c)
  %5524 = call float @dx.op.tertiary.f32(i32 46, float %5521, float %5513, float %5523)  ; FMad(a,b,c)
  %5525 = fadd fast float %5524, %5516
  %5526 = fmul fast float %5519, %5508
  %5527 = call float @dx.op.tertiary.f32(i32 46, float %5520, float %5511, float %5526)  ; FMad(a,b,c)
  %5528 = call float @dx.op.tertiary.f32(i32 46, float %5521, float %5514, float %5527)  ; FMad(a,b,c)
  %5529 = fadd fast float %5528, %5517
  %5530 = fmul fast float %5519, %5509
  %5531 = call float @dx.op.tertiary.f32(i32 46, float %5520, float %5512, float %5530)  ; FMad(a,b,c)
  %5532 = call float @dx.op.tertiary.f32(i32 46, float %5521, float %5515, float %5531)  ; FMad(a,b,c)
  %5533 = fadd fast float %5532, %5518
  %5534 = fdiv fast float 1.000000e+00, %5533
  %5535 = fmul fast float %5534, %5525
  %5536 = fmul fast float %5534, %5529
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.CBufRet.f32 %5537, 1
  %5540 = fmul fast float %5535, %5538
  %5541 = fmul fast float %5536, %5539
  %5542 = extractvalue %dx.types.CBufRet.f32 %5537, 2
  %5543 = extractvalue %dx.types.CBufRet.f32 %5537, 3
  %5544 = fadd fast float %5540, %5542
  %5545 = fadd fast float %5541, %5543
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5548 = fmul fast float %5547, %5087
  %5549 = fmul fast float %5547, %5088
  %5550 = fmul fast float %5547, %5089
  %5551 = fadd fast float %5548, %5519
  %5552 = fadd fast float %5549, %5520
  %5553 = fadd fast float %5550, %5521
  %5554 = fmul fast float %5551, %5507
  %5555 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5510, float %5554)  ; FMad(a,b,c)
  %5556 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5513, float %5555)  ; FMad(a,b,c)
  %5557 = fadd fast float %5556, %5516
  %5558 = fmul fast float %5551, %5508
  %5559 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5511, float %5558)  ; FMad(a,b,c)
  %5560 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5514, float %5559)  ; FMad(a,b,c)
  %5561 = fadd fast float %5560, %5517
  %5562 = fmul fast float %5551, %5509
  %5563 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5512, float %5562)  ; FMad(a,b,c)
  %5564 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5515, float %5563)  ; FMad(a,b,c)
  %5565 = fadd fast float %5564, %5518
  %5566 = fdiv fast float 1.000000e+00, %5565
  %5567 = fmul fast float %5566, %5557
  %5568 = fmul fast float %5566, %5561
  %5569 = fmul fast float %5544, 2.000000e+00
  %5570 = fadd fast float %5569, -1.000000e+00
  %5571 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5572 = fmul fast float %5571, 5.000000e+00
  %5573 = fadd fast float %5572, -4.000000e+00
  %5574 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5575 = fmul fast float %5574, %5460
  %5576 = fsub fast float %5535, %5567
  %5577 = fmul fast float %5538, %5576
  %5578 = fmul fast float %5575, %5577
  %5579 = fsub fast float %5567, %5535
  %5580 = fmul fast float %5538, %5579
  %5581 = fadd fast float %5580, %5578
  %5582 = fsub fast float %5568, %5536
  %5583 = fmul fast float %5539, %5582
  %5584 = fmul fast float %5581, %5495
  %5585 = fmul fast float %5583, %5495
  %5586 = fadd fast float %5584, %5544
  %5587 = fadd fast float %5585, %5545
  %5588 = fsub fast float %5566, %5534
  %5589 = fmul fast float %5588, %5495
  %5590 = fadd fast float %5589, %5534
  %5591 = fdiv fast float 1.000000e+00, %5590
  %5592 = fadd fast float %5062, -1.000000e+00
  %5593 = fsub fast float %5591, %5533
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5596 = fmul fast float %5595, %5591
  %5597 = fdiv fast float 1.600000e+02, %5596
  %5598 = fmul fast float %5592, %5592
  %5599 = fmul fast float %5598, 0xBFB5B17960000000
  %5600 = fmul fast float %5599, %5593
  %5601 = fmul fast float %5600, %5597
  %5602 = call float @dx.op.unary.f32(i32 21, float %5601)  ; Exp(value)
  %5603 = fmul fast float %5602, 0x3FF04B2960000000
  %5604 = fsub fast float 0x3FF04B2960000000, %5603
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5605, 4.000000e+00
  %5607 = fadd fast float %198, -5.000000e-01
  %5608 = fadd fast float %199, -5.000000e-01
  %5609 = fmul fast float %5605, 0x3FBEB851E0000000
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, %5607
  %5612 = fmul fast float %5610, %5608
  %5613 = fadd fast float %5586, %5611
  %5614 = fadd fast float %5587, %5612
  %5615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5613, float %5614, float undef, float undef, i32 0, i32 0, i32 undef, float %5606)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.ResRet.f32 %5615, 2
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 2
  %5621 = fmul fast float %5620, %5616
  %5622 = fmul fast float %5620, %5617
  %5623 = fmul fast float %5620, %5618
  %5624 = select i1 %185, float 0.000000e+00, float %5622
  %5625 = select i1 %185, float 0.000000e+00, float %5623
  %5626 = fmul fast float %5613, 2.000000e+00
  %5627 = fmul fast float %5614, 2.000000e+00
  %5628 = fadd fast float %5626, -1.000000e+00
  %5629 = fadd fast float %5627, -1.000000e+00
  %5630 = fmul fast float %5628, %5628
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = fmul fast float %5633, %5460
  %5635 = fadd fast float %5634, %5632
  %5636 = fmul fast float %5629, %5629
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = fmul fast float %5635, %5638
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fmul fast float %5640, %5497
  br label %5642

; <label>:5642                                    ; preds = %5499, %5465, %5424
  %5643 = phi float [ %5621, %5499 ], [ 0.000000e+00, %5465 ], [ 0.000000e+00, %5424 ]
  %5644 = phi float [ %5624, %5499 ], [ 0.000000e+00, %5465 ], [ 0.000000e+00, %5424 ]
  %5645 = phi float [ %5625, %5499 ], [ 0.000000e+00, %5465 ], [ 0.000000e+00, %5424 ]
  %5646 = phi float [ %5641, %5499 ], [ 0.000000e+00, %5465 ], [ 0.000000e+00, %5424 ]
  %5647 = fcmp fast olt float %5646, 1.000000e+00
  %5648 = or i1 %5647, %5422
  %5649 = zext i1 %5648 to i32
  %5650 = fmul fast float %5646, %5407
  %5651 = fsub fast float %5646, %5650
  %5652 = fsub fast float 1.000000e+00, %5413
  %5653 = fmul fast float %5651, %5652
  %5654 = fadd fast float %5653, %5413
  %5655 = fsub fast float %5654, %5651
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5348
  %5658 = fmul fast float %5656, %5349
  %5659 = fmul fast float %5656, %5350
  %5660 = fsub fast float -0.000000e+00, %5654
  %5661 = fmul fast float %5651, %5643
  %5662 = fmul fast float %5651, %5644
  %5663 = fmul fast float %5651, %5645
  %5664 = fadd fast float %5661, %5657
  %5665 = fadd fast float %5662, %5658
  %5666 = fadd fast float %5663, %5659
  br label %5667

; <label>:5667                                    ; preds = %5642, %5415
  %5668 = phi float [ %5413, %5415 ], [ %5660, %5642 ]
  %5669 = phi float [ %5348, %5415 ], [ %5664, %5642 ]
  %5670 = phi float [ %5349, %5415 ], [ %5665, %5642 ]
  %5671 = phi float [ %5350, %5415 ], [ %5666, %5642 ]
  %5672 = phi i32 [ %5423, %5415 ], [ %5649, %5642 ]
  %5673 = icmp eq i32 %5672, 0
  br i1 %5673, label %6270, label %5674

; <label>:5674                                    ; preds = %5667
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5677 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5678 = fmul fast float %5676, %84
  %5679 = fmul fast float %5677, %85
  %5680 = fptoui float %5678 to i32
  %5681 = fptoui float %5679 to i32
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5685 = extractvalue %dx.types.CBufRet.f32 %5682, 3
  %5686 = fadd fast float %79, -4.000000e+00
  %5687 = call float @dx.op.binary.f32(i32 35, float %5686, float 0.000000e+00)  ; FMax(a,b)
  %5688 = fadd fast float %5687, %5683
  %5689 = fmul fast float %5688, %5684
  %5690 = call float @dx.op.unary.f32(i32 23, float %5689)  ; Log(value)
  %5691 = fmul fast float %5690, %5685
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 2
  %5694 = fmul fast float %5691, %5693
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.i32 %5696, 1
  %5698 = add i32 %5697, -1
  %5699 = uitofp i32 %5697 to float
  %5700 = fmul fast float %5699, %5695
  %5701 = fptoui float %5700 to i32
  %5702 = call i32 @dx.op.binary.i32(i32 40, i32 %5701, i32 %5698)  ; UMin(a,b)
  %5703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.i32 %5703, 2
  %5705 = extractvalue %dx.types.CBufRet.i32 %5703, 3
  %5706 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5681, i32 %5704, i32 %5680)  ; UMad(a,b,c)
  %5707 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5702, i32 %5705, i32 %5706)  ; UMad(a,b,c)
  %5708 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %5709 = fptoui float %5708 to i32
  %5710 = lshr i32 %5709, 5
  %5711 = call i32 @dx.op.binary.i32(i32 40, i32 %5710, i32 8191)  ; UMin(a,b)
  %5712 = fcmp fast ogt float %4861, 0.000000e+00
  %5713 = fcmp fast ogt float %5089, 0.000000e+00
  %5714 = and i1 %5713, %5712
  br i1 %5714, label %5715, label %5744

; <label>:5715                                    ; preds = %5674
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.binary.f32(i32 35, float %5716, float -1.000000e+00)  ; FMax(a,b)
  %5718 = call float @dx.op.binary.f32(i32 36, float %5717, float 1.000000e+00)  ; FMin(a,b)
  %5719 = fmul fast float %5718, %5718
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = fmul fast float %5720, 0x3FFC6E2300000000
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = fcmp fast ogt float %5722, 0.000000e+00
  %5724 = call float @dx.op.unary.f32(i32 24, float %5722)  ; Sqrt(value)
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = call float @dx.op.unary.f32(i32 23, float %5725)  ; Log(value)
  %5727 = fmul fast float %5726, 5.000000e+00
  %5728 = call float @dx.op.unary.f32(i32 21, float %5727)  ; Exp(value)
  %5729 = fmul fast float %5728, 0x3FEF591A60000000
  %5730 = fadd fast float %5729, 0x3F94DCB540000000
  %5731 = select i1 %5723, float %5730, float 1.000000e+00
  %5732 = fcmp fast oge float %5731, 1.000000e+00
  %5733 = fmul fast float %5716, 2.000000e+00
  %5734 = fadd fast float %5733, %5089
  %5735 = select i1 %5732, float %5734, float %5089
  %5736 = fsub fast float %5735, %5089
  %5737 = fmul fast float %5736, %4861
  %5738 = fadd fast float %5737, %5089
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5738, float %5087, float %5088, float %5738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.unary.f32(i32 25, float %5739)  ; Rsqrt(value)
  %5741 = fmul fast float %5740, %5087
  %5742 = fmul fast float %5740, %5088
  %5743 = fmul fast float %5738, %5740
  br label %5744

; <label>:5744                                    ; preds = %5715, %5674
  %5745 = phi float [ %5741, %5715 ], [ %5087, %5674 ]
  %5746 = phi float [ %5742, %5715 ], [ %5088, %5674 ]
  %5747 = phi float [ %5743, %5715 ], [ %5089, %5674 ]
  %5748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.i32 %5748, 2
  %5750 = add nsw i32 %5749, -1
  %5751 = call i32 @dx.op.binary.i32(i32 37, i32 %5750, i32 0)  ; IMax(a,b)
  %5752 = shl i32 %5711, 2
  %5753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.i32 %5753, 0
  %5755 = lshr i32 %5754, 16
  %5756 = and i32 %5754, 65535
  %5757 = lshr i32 %5754, 21
  %5758 = lshr i32 %5756, 5
  %5759 = call i32 @dx.op.binary.i32(i32 40, i32 %5758, i32 %5751)  ; UMin(a,b)
  %5760 = icmp ugt i32 %5757, %5759
  br i1 %5760, label %6142, label %5761

; <label>:5761                                    ; preds = %5744
  br label %5762

; <label>:5762                                    ; preds = %6131, %5761
  %5763 = phi float [ %6132, %6131 ], [ 0.000000e+00, %5761 ]
  %5764 = phi float [ %6133, %6131 ], [ 0.000000e+00, %5761 ]
  %5765 = phi float [ %6134, %6131 ], [ 0.000000e+00, %5761 ]
  %5766 = phi float [ %6135, %6131 ], [ 1.000000e+00, %5761 ]
  %5767 = phi i32 [ %6139, %6131 ], [ %5757, %5761 ]
  %5768 = phi float [ %6136, %6131 ], [ 0.000000e+00, %5761 ]
  %5769 = phi float [ %6137, %6131 ], [ 0.000000e+00, %5761 ]
  %5770 = phi float [ %6138, %6131 ], [ 0.000000e+00, %5761 ]
  %5771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.i32 %5771, 2
  %5773 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5707, i32 %5772, i32 %5767)  ; UMad(a,b,c)
  %5774 = shl i32 %5773, 2
  %5775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5774, i32 undef)  ; BufferLoad(srv,index,wot)
  %5776 = extractvalue %dx.types.ResRet.i32 %5775, 0
  %5777 = shl i32 %5767, 5
  %5778 = sub nsw i32 %5755, %5777
  %5779 = call i32 @dx.op.binary.i32(i32 37, i32 %5778, i32 0)  ; IMax(a,b)
  %5780 = call i32 @dx.op.binary.i32(i32 38, i32 %5779, i32 31)  ; IMin(a,b)
  %5781 = sub nsw i32 1, %5755
  %5782 = add nsw i32 %5781, %5756
  %5783 = call i32 @dx.op.binary.i32(i32 37, i32 %5782, i32 0)  ; IMax(a,b)
  %5784 = call i32 @dx.op.binary.i32(i32 38, i32 %5783, i32 32)  ; IMin(a,b)
  %5785 = and i32 %5784, 31
  %5786 = shl i32 -1, %5785
  %5787 = xor i32 %5786, -1
  %5788 = and i32 %5780, 31
  %5789 = shl i32 %5787, %5788
  %5790 = icmp eq i32 %5784, 32
  %5791 = select i1 %5790, i32 -1, i32 %5789
  %5792 = and i32 %5791, %5776
  %5793 = icmp eq i32 %5792, 0
  br i1 %5793, label %6131, label %5794

; <label>:5794                                    ; preds = %5762
  br label %5795

; <label>:5795                                    ; preds = %5905, %5794
  %5796 = phi float [ %5906, %5905 ], [ %5763, %5794 ]
  %5797 = phi float [ %5907, %5905 ], [ %5764, %5794 ]
  %5798 = phi float [ %5908, %5905 ], [ %5765, %5794 ]
  %5799 = phi float [ %5909, %5905 ], [ %5766, %5794 ]
  %5800 = phi i32 [ %5808, %5905 ], [ %5792, %5794 ]
  %5801 = phi float [ %5910, %5905 ], [ %5768, %5794 ]
  %5802 = phi float [ %5911, %5905 ], [ %5769, %5794 ]
  %5803 = phi float [ %5912, %5905 ], [ %5770, %5794 ]
  %5804 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5800)  ; FirstbitLo(value)
  %5805 = add i32 %5804, %5777
  %5806 = and i32 %5804, 31
  %5807 = shl i32 1, %5806
  %5808 = xor i32 %5807, %5800
  %5809 = mul i32 %5805, 72
  %5810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5809, i32 undef)  ; BufferLoad(srv,index,wot)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.ResRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.ResRet.f32 %5810, 2
  %5814 = add i32 %5809, 12
  %5815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5814, i32 undef)  ; BufferLoad(srv,index,wot)
  %5816 = extractvalue %dx.types.ResRet.i32 %5815, 0
  %5817 = add i32 %5809, 16
  %5818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5817, i32 undef)  ; BufferLoad(srv,index,wot)
  %5819 = extractvalue %dx.types.ResRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.ResRet.f32 %5818, 1
  %5821 = extractvalue %dx.types.ResRet.f32 %5818, 2
  %5822 = add i32 %5809, 28
  %5823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5822, i32 undef)  ; BufferLoad(srv,index,wot)
  %5824 = extractvalue %dx.types.ResRet.f32 %5823, 0
  %5825 = add i32 %5809, 32
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = extractvalue %dx.types.ResRet.f32 %5826, 3
  %5831 = add i32 %5809, 48
  %5832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5831, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.ResRet.f32 %5832, 1
  %5835 = add i32 %5809, 56
  %5836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5835, i32 undef)  ; BufferLoad(srv,index,wot)
  %5837 = extractvalue %dx.types.ResRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.ResRet.f32 %5836, 1
  %5839 = add i32 %5809, 64
  %5840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.ResRet.f32 %5840, 1
  %5843 = mul i32 %5805, 60
  %5844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5843, i32 undef)  ; BufferLoad(srv,index,wot)
  %5845 = extractvalue %dx.types.ResRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.ResRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.ResRet.f32 %5844, 2
  %5848 = add i32 %5843, 12
  %5849 = add i32 %5843, 48
  %5850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5849, i32 undef)  ; BufferLoad(srv,index,wot)
  %5851 = extractvalue %dx.types.ResRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.ResRet.f32 %5850, 1
  %5853 = extractvalue %dx.types.ResRet.f32 %5850, 2
  %5854 = and i32 %5816, 32767
  %5855 = bitcast float %5811 to i32
  %5856 = icmp eq i32 %5855, -1
  %5857 = bitcast float %5812 to i32
  %5858 = and i32 %5816, 32768
  %5859 = icmp ne i32 %5858, 0
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 0
  %5862 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5863 = extractvalue %dx.types.CBufRet.f32 %5860, 2
  %5864 = fsub fast float %5845, %5861
  %5865 = fsub fast float %5846, %5862
  %5866 = fsub fast float %5847, %5863
  %5867 = fsub fast float %143, %5864
  %5868 = fsub fast float %144, %5865
  %5869 = fsub fast float %145, %5866
  %5870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5848, i32 undef)  ; BufferLoad(srv,index,wot)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5874 = call float @dx.op.dot3.f32(i32 55, float %5867, float %5868, float %5869, float %5871, float %5872, float %5873)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = add i32 %5843, 24
  %5876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5875, i32 undef)  ; BufferLoad(srv,index,wot)
  %5877 = extractvalue %dx.types.ResRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.ResRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.ResRet.f32 %5876, 2
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5867, float %5868, float %5869, float %5877, float %5878, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = add i32 %5843, 36
  %5882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5881, i32 undef)  ; BufferLoad(srv,index,wot)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5886 = call float @dx.op.dot3.f32(i32 55, float %5867, float %5868, float %5869, float %5883, float %5884, float %5885)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = call float @dx.op.unary.f32(i32 6, float %5874)  ; FAbs(value)
  %5888 = call float @dx.op.unary.f32(i32 6, float %5880)  ; FAbs(value)
  %5889 = call float @dx.op.unary.f32(i32 6, float %5886)  ; FAbs(value)
  %5890 = fsub fast float %5851, %5887
  %5891 = fsub fast float %5852, %5888
  %5892 = fsub fast float %5853, %5889
  %5893 = fmul fast float %5890, %5819
  %5894 = fmul fast float %5891, %5820
  %5895 = fmul fast float %5892, %5821
  %5896 = call float @dx.op.binary.f32(i32 36, float %5894, float %5895)  ; FMin(a,b)
  %5897 = call float @dx.op.binary.f32(i32 36, float %5893, float %5896)  ; FMin(a,b)
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = call float @dx.op.binary.f32(i32 36, float %5799, float %5898)  ; FMin(a,b)
  %5900 = uitofp i1 %5859 to float
  %5901 = fadd fast float %4861, 1.000000e+00
  %5902 = fsub fast float %5901, %5900
  %5903 = fmul fast float %5899, %5902
  %5904 = fcmp fast ogt float %5903, 0.000000e+00
  br i1 %5904, label %5914, label %5905

; <label>:5905                                    ; preds = %6056, %5795
  %5906 = phi float [ %6120, %6056 ], [ %5796, %5795 ]
  %5907 = phi float [ %6121, %6056 ], [ %5797, %5795 ]
  %5908 = phi float [ %6122, %6056 ], [ %5798, %5795 ]
  %5909 = phi float [ %6129, %6056 ], [ %5799, %5795 ]
  %5910 = phi float [ %6126, %6056 ], [ %5801, %5795 ]
  %5911 = phi float [ %6127, %6056 ], [ %5802, %5795 ]
  %5912 = phi float [ %6128, %6056 ], [ %5803, %5795 ]
  %5913 = icmp eq i32 %5800, %5807
  br i1 %5913, label %6130, label %5795

; <label>:5914                                    ; preds = %5795
  br i1 %5856, label %5972, label %5915

; <label>:5915                                    ; preds = %5914
  %5916 = fsub fast float -0.000000e+00, %5871
  %5917 = fsub fast float -0.000000e+00, %5872
  %5918 = fsub fast float -0.000000e+00, %5873
  %5919 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5916, float %5917, float %5918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = fsub fast float -0.000000e+00, %5919
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5867, float %5868, float %5869, float %5916, float %5917, float %5918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = fadd fast float %5921, %5834
  %5923 = fadd fast float %5833, %5921
  %5924 = fsub fast float -0.000000e+00, %5923
  %5925 = fcmp ogt float %5919, -0.000000e+00
  %5926 = select i1 %5925, float %5924, float %5922
  %5927 = call float @dx.op.unary.f32(i32 6, float %5920)  ; FAbs(value)
  %5928 = fdiv fast float 1.000000e+00, %5927
  %5929 = fmul fast float %5926, %5928
  %5930 = call float @dx.op.binary.f32(i32 35, float %5929, float 0.000000e+00)  ; FMax(a,b)
  %5931 = fsub fast float -0.000000e+00, %5877
  %5932 = fsub fast float -0.000000e+00, %5878
  %5933 = fsub fast float -0.000000e+00, %5879
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5931, float %5932, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fsub fast float -0.000000e+00, %5934
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5867, float %5868, float %5869, float %5931, float %5932, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = fadd fast float %5936, %5838
  %5938 = fadd fast float %5837, %5936
  %5939 = fsub fast float -0.000000e+00, %5938
  %5940 = fcmp ogt float %5934, -0.000000e+00
  %5941 = select i1 %5940, float %5939, float %5937
  %5942 = call float @dx.op.unary.f32(i32 6, float %5935)  ; FAbs(value)
  %5943 = fdiv fast float 1.000000e+00, %5942
  %5944 = fmul fast float %5941, %5943
  %5945 = call float @dx.op.binary.f32(i32 35, float %5944, float 0.000000e+00)  ; FMax(a,b)
  %5946 = fsub fast float -0.000000e+00, %5883
  %5947 = fsub fast float -0.000000e+00, %5884
  %5948 = fsub fast float -0.000000e+00, %5885
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5946, float %5947, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = fsub fast float -0.000000e+00, %5949
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5867, float %5868, float %5869, float %5946, float %5947, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = fadd fast float %5951, %5842
  %5953 = fadd fast float %5841, %5951
  %5954 = fsub fast float -0.000000e+00, %5953
  %5955 = fcmp ogt float %5949, -0.000000e+00
  %5956 = select i1 %5955, float %5954, float %5952
  %5957 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5958 = fdiv fast float 1.000000e+00, %5957
  %5959 = fmul fast float %5956, %5958
  %5960 = call float @dx.op.binary.f32(i32 35, float %5959, float 0.000000e+00)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 36, float %5945, float %5960)  ; FMin(a,b)
  %5962 = call float @dx.op.binary.f32(i32 36, float %5930, float %5961)  ; FMin(a,b)
  %5963 = fmul fast float %5962, %5745
  %5964 = fmul fast float %5962, %5746
  %5965 = fmul fast float %5962, %5747
  %5966 = fadd fast float %5963, %143
  %5967 = fadd fast float %5964, %144
  %5968 = fadd fast float %5965, %145
  %5969 = fsub fast float %5966, %5811
  %5970 = fsub fast float %5967, %5812
  %5971 = fsub fast float %5968, %5813
  br label %5979

; <label>:5972                                    ; preds = %5914
  %5973 = fmul fast float %5745, 8.096000e+03
  %5974 = fmul fast float %5746, 8.096000e+03
  %5975 = fmul fast float %5747, 8.096000e+03
  %5976 = fadd fast float %5973, %143
  %5977 = fadd fast float %5974, %144
  %5978 = fadd fast float %5975, %145
  br label %5979

; <label>:5979                                    ; preds = %5972, %5915
  %5980 = phi float [ %5745, %5972 ], [ %5969, %5915 ]
  %5981 = phi float [ %5746, %5972 ], [ %5970, %5915 ]
  %5982 = phi float [ %5747, %5972 ], [ %5971, %5915 ]
  %5983 = phi float [ %5976, %5972 ], [ %5966, %5915 ]
  %5984 = phi float [ %5977, %5972 ], [ %5967, %5915 ]
  %5985 = phi float [ %5978, %5972 ], [ %5968, %5915 ]
  %5986 = fcmp fast olt float %5830, 1.000000e+00
  br i1 %5986, label %5987, label %6018, !dx.controlflow.hints !87

; <label>:5987                                    ; preds = %5979
  %5988 = fmul fast float %5982, %5828
  %5989 = fmul fast float %5981, %5829
  %5990 = fsub fast float %5988, %5989
  %5991 = fmul fast float %5980, %5829
  %5992 = fmul fast float %5982, %5827
  %5993 = fsub fast float %5991, %5992
  %5994 = fmul fast float %5981, %5827
  %5995 = fmul fast float %5980, %5828
  %5996 = fsub fast float %5994, %5995
  %5997 = fmul fast float %5990, 2.000000e+00
  %5998 = fmul fast float %5993, 2.000000e+00
  %5999 = fmul fast float %5996, 2.000000e+00
  %6000 = fmul fast float %5997, %5830
  %6001 = fmul fast float %5998, %5830
  %6002 = fmul fast float %5999, %5830
  %6003 = fmul fast float %5999, %5828
  %6004 = fmul fast float %5998, %5829
  %6005 = fmul fast float %5997, %5829
  %6006 = fmul fast float %5999, %5827
  %6007 = fmul fast float %5998, %5827
  %6008 = fmul fast float %5997, %5828
  %6009 = fadd fast float %6003, %5980
  %6010 = fadd fast float %6009, %6000
  %6011 = fsub fast float %6010, %6004
  %6012 = fsub fast float %5981, %6006
  %6013 = fadd fast float %6012, %6001
  %6014 = fadd fast float %6013, %6005
  %6015 = fadd fast float %6002, %5982
  %6016 = fsub fast float %6015, %6008
  %6017 = fadd fast float %6016, %6007
  br label %6018

; <label>:6018                                    ; preds = %5987, %5979
  %6019 = phi float [ %6011, %5987 ], [ %5980, %5979 ]
  %6020 = phi float [ %6014, %5987 ], [ %5981, %5979 ]
  %6021 = phi float [ %6017, %5987 ], [ %5982, %5979 ]
  br i1 %5856, label %6053, label %6022

; <label>:6022                                    ; preds = %6018
  %6023 = fmul fast float %5062, 0x400187C840000000
  %6024 = fadd fast float %6023, 0xC00EFC2120000000
  %6025 = fmul fast float %6024, %5062
  %6026 = fadd fast float %6025, 0x3FE5D16340000000
  %6027 = fmul fast float %6026, %5062
  %6028 = fadd fast float %6027, 1.000000e+00
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6030 = fsub fast float %5983, %143
  %6031 = fsub fast float %5984, %144
  %6032 = fsub fast float %5985, %145
  %6033 = fsub fast float %5983, %5811
  %6034 = fsub fast float %5984, %5812
  %6035 = fsub fast float %5985, %5813
  %6036 = call float @dx.op.dot3.f32(i32 55, float %6030, float %6031, float %6032, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6037 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6035, float %6033, float %6034, float %6035)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = fadd fast float %6037, 0x3EE4F8B580000000
  %6039 = fdiv fast float %6036, %6038
  %6040 = bitcast float %6039 to i32
  %6041 = ashr i32 %6040, 1
  %6042 = add nsw i32 %6041, 532487669
  %6043 = bitcast i32 %6042 to float
  %6044 = fmul fast float %6043, %6029
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6046 = fmul fast float %6045, 0x4009981AE0000000
  %6047 = fsub fast float 0x40111BBD80000000, %6046
  %6048 = fmul fast float %6047, %6045
  %6049 = fadd fast float %6048, 0xC0009F6020000000
  %6050 = fmul fast float %6049, %6045
  %6051 = fadd fast float %6050, 1.000000e+00
  %6052 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  br label %6056

; <label>:6053                                    ; preds = %6018
  %6054 = icmp ne i32 %5857, -1
  %6055 = zext i1 %6054 to i32
  br label %6056

; <label>:6056                                    ; preds = %6053, %6022
  %6057 = phi float [ %5062, %6053 ], [ %6052, %6022 ]
  %6058 = phi i32 [ %6055, %6053 ], [ 0, %6022 ]
  %6059 = fmul float %6057, 5.000000e+00
  %6060 = fsub float 5.000000e+00, %6059
  %6061 = icmp ne i32 %6058, 0
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 3
  %6064 = fadd fast float %6063, %6060
  %6065 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6064)  ; FMax(a,b)
  %6066 = call float @dx.op.unary.f32(i32 6, float %6019)  ; FAbs(value)
  %6067 = call float @dx.op.unary.f32(i32 6, float %6020)  ; FAbs(value)
  %6068 = fadd fast float %6067, %6066
  %6069 = call float @dx.op.unary.f32(i32 6, float %6021)  ; FAbs(value)
  %6070 = fadd fast float %6068, %6069
  %6071 = fcmp fast oeq float %6070, 0.000000e+00
  %6072 = fdiv fast float 1.000000e+00, %6070
  %6073 = select i1 %6071, float 1.000000e+00, float %6072
  %6074 = fmul fast float %6073, %6019
  %6075 = fmul fast float %6073, %6020
  %6076 = call float @dx.op.unary.f32(i32 6, float %6075)  ; FAbs(value)
  %6077 = call float @dx.op.unary.f32(i32 6, float %6074)  ; FAbs(value)
  %6078 = fsub fast float 1.000000e+00, %6076
  %6079 = fsub fast float 1.000000e+00, %6077
  %6080 = fcmp fast oge float %6074, 0.000000e+00
  %6081 = fcmp fast oge float %6075, 0.000000e+00
  %6082 = select i1 %6080, float 1.000000e+00, float -1.000000e+00
  %6083 = select i1 %6081, float 1.000000e+00, float -1.000000e+00
  %6084 = fcmp fast ole float %6021, 0.000000e+00
  %6085 = fmul fast float %6082, %6078
  %6086 = fmul fast float %6083, %6079
  %6087 = select i1 %6084, float %6085, float %6074
  %6088 = select i1 %6084, float %6086, float %6075
  %6089 = fmul fast float %6087, 5.000000e-01
  %6090 = fmul fast float %6088, 5.000000e-01
  %6091 = fadd fast float %6089, 5.000000e-01
  %6092 = fadd fast float %6090, 5.000000e-01
  %6093 = uitofp i32 %5854 to float
  %6094 = call float @dx.op.binary.f32(i32 36, float %6065, float 3.000000e+00)  ; FMin(a,b)
  %6095 = fadd fast float %6094, 2.000000e+00
  %6096 = call float @dx.op.unary.f32(i32 21, float %6095)  ; Exp(value)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6062, 1
  %6098 = fmul fast float %6097, %6096
  %6099 = fmul fast float %6098, 2.000000e+00
  %6100 = fsub fast float 1.000000e+00, %6099
  %6101 = fmul fast float %6091, %6100
  %6102 = fmul fast float %6092, %6100
  %6103 = fadd fast float %6101, %6098
  %6104 = fadd fast float %6102, %6098
  %6105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6103, float %6104, float %6093, float undef, i32 0, i32 0, i32 undef, float %6065)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6106 = extractvalue %dx.types.ResRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.ResRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.ResRet.f32 %6105, 2
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6111 = fmul fast float %6110, %5824
  %6112 = call float @dx.op.binary.f32(i32 36, float %5108, float %6111)  ; FMin(a,b)
  %6113 = select i1 %6061, float %6112, float %6111
  %6114 = fmul fast float %6106, %5903
  %6115 = fmul fast float %6114, %6113
  %6116 = fmul fast float %6107, %5903
  %6117 = fmul fast float %6116, %6113
  %6118 = fmul fast float %6108, %5903
  %6119 = fmul fast float %6118, %6113
  %6120 = fadd fast float %6115, %5796
  %6121 = fadd fast float %6117, %5797
  %6122 = fadd fast float %6119, %5798
  %6123 = fmul fast float %5983, %5903
  %6124 = fmul fast float %5984, %5903
  %6125 = fmul fast float %5985, %5903
  %6126 = fadd fast float %6123, %5801
  %6127 = fadd fast float %6124, %5802
  %6128 = fadd fast float %6125, %5803
  %6129 = fsub fast float %5799, %5903
  br label %5905

; <label>:6130                                    ; preds = %5905
  br label %6131

; <label>:6131                                    ; preds = %6130, %5762
  %6132 = phi float [ %5763, %5762 ], [ %5906, %6130 ]
  %6133 = phi float [ %5764, %5762 ], [ %5907, %6130 ]
  %6134 = phi float [ %5765, %5762 ], [ %5908, %6130 ]
  %6135 = phi float [ %5766, %5762 ], [ %5909, %6130 ]
  %6136 = phi float [ %5768, %5762 ], [ %5910, %6130 ]
  %6137 = phi float [ %5769, %5762 ], [ %5911, %6130 ]
  %6138 = phi float [ %5770, %5762 ], [ %5912, %6130 ]
  %6139 = add i32 %5767, 1
  %6140 = icmp ugt i32 %6139, %5759
  br i1 %6140, label %6141, label %5762, !llvm.loop !88

; <label>:6141                                    ; preds = %6131
  br label %6142

; <label>:6142                                    ; preds = %6141, %5744
  %6143 = phi float [ 0.000000e+00, %5744 ], [ %6132, %6141 ]
  %6144 = phi float [ 0.000000e+00, %5744 ], [ %6133, %6141 ]
  %6145 = phi float [ 0.000000e+00, %5744 ], [ %6134, %6141 ]
  %6146 = phi float [ 0.000000e+00, %5744 ], [ %6136, %6141 ]
  %6147 = phi float [ 0.000000e+00, %5744 ], [ %6137, %6141 ]
  %6148 = phi float [ 0.000000e+00, %5744 ], [ %6138, %6141 ]
  %6149 = call float @dx.op.dot3.f32(i32 55, float %6143, float %6144, float %6145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = select i1 %185, float 0.000000e+00, float %6143
  %6151 = select i1 %185, float %6149, float %6144
  %6152 = select i1 %185, float 0.000000e+00, float %6145
  %6153 = fcmp fast olt float %5668, 0.000000e+00
  %6154 = call float @dx.op.unary.f32(i32 6, float %5668)  ; FAbs(value)
  %6155 = fmul fast float %6154, %5669
  %6156 = fmul fast float %6154, %5670
  %6157 = fmul fast float %6154, %5671
  %6158 = select i1 %6153, float %5669, float %6155
  %6159 = select i1 %6153, float %5670, float %6156
  %6160 = select i1 %6153, float %5671, float %6157
  %6161 = fsub fast float 1.000000e+00, %6154
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6163 = fmul fast float %6162, %6150
  %6164 = fmul fast float %6162, %6151
  %6165 = fmul fast float %6162, %6152
  %6166 = fadd fast float %6158, %6163
  %6167 = fadd fast float %6159, %6164
  %6168 = fadd fast float %6160, %6165
  %6169 = fcmp fast une float %5418, 0.000000e+00
  br i1 %6169, label %6270, label %6170

; <label>:6170                                    ; preds = %6142
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6186 = call float @dx.op.dot3.f32(i32 55, float %6182, float %6183, float %6184, float %5087, float %5088, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %6182, float %6183, float %6184)  ; Dot3(ax,ay,az,bx,by,bz)
  %6188 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %6182, float %6183, float %6184)  ; Dot3(ax,ay,az,bx,by,bz)
  %6189 = fadd fast float %5062, -1.000000e+00
  %6190 = fsub fast float %6187, %6188
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6193 = fmul fast float %6192, %6187
  %6194 = fdiv fast float 1.600000e+02, %6193
  %6195 = fmul fast float %6189, %6189
  %6196 = fmul fast float %6195, 0xBFB5B17960000000
  %6197 = fmul fast float %6196, %6190
  %6198 = fmul fast float %6197, %6194
  %6199 = call float @dx.op.unary.f32(i32 21, float %6198)  ; Exp(value)
  %6200 = fmul fast float %6199, 0x3FF04B2960000000
  %6201 = fsub fast float 0x3FF04B2960000000, %6200
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = fmul fast float %6202, 4.000000e+00
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6208 = fadd fast float %6205, %6146
  %6209 = fadd fast float %6206, %6147
  %6210 = fadd fast float %6207, %6148
  %6211 = fmul fast float %6208, %6172
  %6212 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6173, float %6211)  ; FMad(a,b,c)
  %6213 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6174, float %6212)  ; FMad(a,b,c)
  %6214 = fadd fast float %6213, %6175
  %6215 = fmul fast float %6208, %6177
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6178, float %6215)  ; FMad(a,b,c)
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6179, float %6216)  ; FMad(a,b,c)
  %6218 = fadd fast float %6217, %6180
  %6219 = fmul fast float %6208, %6182
  %6220 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6183, float %6219)  ; FMad(a,b,c)
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6184, float %6220)  ; FMad(a,b,c)
  %6222 = fadd fast float %6221, %6185
  %6223 = fdiv fast float %6214, %6222
  %6224 = fdiv fast float %6218, %6222
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = fmul fast float %6226, %6223
  %6229 = fmul fast float %6227, %6224
  %6230 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6231 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6232 = fadd fast float %6228, %6230
  %6233 = fadd fast float %6229, %6231
  %6234 = fmul fast float %6186, 8.000000e+00
  %6235 = call float @dx.op.unary.f32(i32 7, float %6234)  ; Saturate(value)
  %6236 = fmul fast float %6232, 2.000000e+00
  %6237 = fmul fast float %6233, 2.000000e+00
  %6238 = fadd fast float %6236, -1.000000e+00
  %6239 = fadd fast float %6237, -1.000000e+00
  %6240 = fmul fast float %6238, %6238
  %6241 = fsub fast float 1.000000e+00, %6240
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = fmul fast float %6239, %6239
  %6244 = fsub fast float 1.000000e+00, %6243
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = fmul fast float %5418, %6242
  %6247 = fmul fast float %6246, %6245
  %6248 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6249 = fmul fast float %6248, %6235
  %6250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %6232, float %6233, float undef, float undef, i32 0, i32 0, i32 undef, float %6203)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.ResRet.f32 %6250, 2
  %6254 = select i1 %185, float 0.000000e+00, float %6252
  %6255 = select i1 %185, float 0.000000e+00, float %6253
  %6256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6256, 2
  %6258 = fmul fast float %6257, %6251
  %6259 = fmul fast float %6254, %6257
  %6260 = fmul fast float %6255, %6257
  %6261 = fsub fast float %6258, %6150
  %6262 = fsub fast float %6259, %6151
  %6263 = fsub fast float %6260, %6152
  %6264 = fmul fast float %6261, %6249
  %6265 = fmul fast float %6262, %6249
  %6266 = fmul fast float %6263, %6249
  %6267 = fadd fast float %6264, %6150
  %6268 = fadd fast float %6265, %6151
  %6269 = fadd fast float %6266, %6152
  br label %6270

; <label>:6270                                    ; preds = %6170, %6142, %5667, %5391
  %6271 = phi float [ %5669, %5667 ], [ %6166, %6142 ], [ %5348, %5391 ], [ %6267, %6170 ]
  %6272 = phi float [ %5670, %5667 ], [ %6167, %6142 ], [ %5349, %5391 ], [ %6268, %6170 ]
  %6273 = phi float [ %5671, %5667 ], [ %6168, %6142 ], [ %5350, %5391 ], [ %6269, %6170 ]
  %6274 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6275 = fcmp fast ogt float %6274, 0x3E7FF19E20000000
  %6276 = fdiv fast float 1.000000e+00, %6274
  %6277 = select i1 %6275, float %6276, float 0.000000e+00
  %6278 = fmul fast float %6277, %5053
  %6279 = fmul fast float %6277, %5054
  %6280 = fmul fast float %6277, %5055
  %6281 = fadd fast float %6278, -1.000000e+00
  %6282 = fadd fast float %6279, -1.000000e+00
  %6283 = fadd fast float %6280, -1.000000e+00
  %6284 = fmul fast float %6281, 5.000000e-01
  %6285 = fmul fast float %6282, 5.000000e-01
  %6286 = fmul fast float %6283, 5.000000e-01
  %6287 = fadd fast float %6284, 1.000000e+00
  %6288 = fadd fast float %6285, 1.000000e+00
  %6289 = fadd fast float %6286, 1.000000e+00
  %6290 = fmul fast float %6271, %5392
  %6291 = fmul fast float %6272, %5393
  %6292 = fmul fast float %6273, %5394
  %6293 = fsub fast float 1.000000e+00, %5081
  %6294 = bitcast float %6293 to i32
  %6295 = sitofp i32 %6294 to float
  %6296 = fmul fast float %6295, 5.000000e+00
  %6297 = fadd fast float %6296, 0xC1EFBF8940000000
  %6298 = fptosi float %6297 to i32
  %6299 = bitcast i32 %6298 to float
  %6300 = fmul fast float %6299, %4360
  %6301 = fmul fast float %5340, %6300
  %6302 = fmul fast float %6301, %5397
  %6303 = fmul fast float %6302, %6287
  %6304 = fmul fast float %5341, %6300
  %6305 = fmul fast float %6304, %5397
  %6306 = fmul fast float %6305, %6288
  %6307 = fmul fast float %5342, %6300
  %6308 = fmul fast float %6307, %5397
  %6309 = fmul fast float %6308, %6289
  %6310 = fadd fast float %6290, %4365
  %6311 = fadd fast float %6310, %6303
  %6312 = fmul fast float %6311, %4384
  %6313 = fadd fast float %6291, %4366
  %6314 = fadd fast float %6313, %6306
  %6315 = fmul fast float %6314, %4384
  %6316 = fadd fast float %6292, %4367
  %6317 = fadd fast float %6316, %6309
  %6318 = fmul fast float %6317, %4384
  %6319 = fmul fast float %5397, %5342
  %6320 = fmul fast float %5397, %5341
  %6321 = fmul fast float %5397, %5340
  %6322 = fmul fast float %5397, %4477
  %6323 = fadd fast float %6322, -1.000000e+00
  %6324 = fmul fast float %6323, %4384
  %6325 = fadd fast float %6324, 1.000000e+00
  %6326 = fmul fast float %5397, %4476
  %6327 = fadd fast float %6326, -1.000000e+00
  %6328 = fmul fast float %6327, %4384
  %6329 = fadd fast float %6328, 1.000000e+00
  %6330 = fmul fast float %5397, %4475
  %6331 = fadd fast float %6330, -1.000000e+00
  %6332 = fmul fast float %6331, %4384
  %6333 = fadd fast float %6332, 1.000000e+00
  %6334 = fmul fast float %6333, %5344
  %6335 = fmul fast float %6329, %5345
  %6336 = fmul fast float %6325, %5346
  %6337 = fadd fast float %6334, %6321
  %6338 = fmul fast float %6337, %4384
  %6339 = fadd fast float %6335, %6320
  %6340 = fmul fast float %6339, %4384
  %6341 = fadd fast float %6336, %6319
  %6342 = fmul fast float %6341, %4384
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 3
  %6345 = fcmp fast oeq float %6344, 0.000000e+00
  br i1 %6345, label %6618, label %6346

; <label>:6346                                    ; preds = %6270
  %6347 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6357 = call float @dx.op.dot3.f32(i32 55, float %6351, float %6352, float %6353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = select i1 %185, float %6355, float %6351
  %6359 = select i1 %185, float %6357, float %6352
  %6360 = select i1 %185, float %6356, float %6353
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6363 = fcmp fast une float %6362, 0.000000e+00
  br i1 %6363, label %6364, label %6381

; <label>:6364                                    ; preds = %6346
  %6365 = fptoui float %84 to i32
  %6366 = fptoui float %85 to i32
  %6367 = lshr i32 %6365, 4
  %6368 = lshr i32 %6366, 4
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = fptoui float %6370 to i32
  %6372 = add i32 %6371, 15
  %6373 = lshr i32 %6372, 4
  %6374 = mul i32 %6373, %6368
  %6375 = add i32 %6374, %6367
  %6376 = shl i32 %6375, 3
  %6377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6376, i32 undef)  ; BufferLoad(srv,index,wot)
  %6378 = extractvalue %dx.types.ResRet.i32 %6377, 0
  %6379 = and i32 %6378, -268435456
  %6380 = icmp eq i32 %6379, -1342177280
  br i1 %6380, label %6386, label %6381

; <label>:6381                                    ; preds = %6364, %6346
  %6382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6383 = extractvalue %dx.types.ResRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.ResRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.ResRet.f32 %6382, 2
  br label %6386

; <label>:6386                                    ; preds = %6381, %6364
  %6387 = phi float [ %6383, %6381 ], [ 0.000000e+00, %6364 ]
  %6388 = phi float [ %6384, %6381 ], [ 0.000000e+00, %6364 ]
  %6389 = phi float [ %6385, %6381 ], [ 0.000000e+00, %6364 ]
  %6390 = call float @dx.op.binary.f32(i32 36, float %6388, float %6389)  ; FMin(a,b)
  %6391 = call float @dx.op.binary.f32(i32 36, float %6387, float %6390)  ; FMin(a,b)
  %6392 = fcmp fast ogt float %6391, 0.000000e+00
  br i1 %6392, label %6393, label %6618, !dx.controlflow.hints !90

; <label>:6393                                    ; preds = %6386
  %6394 = fmul fast float %6387, %6358
  %6395 = fmul fast float %6388, %6359
  %6396 = fmul fast float %6389, %6360
  %6397 = fsub fast float %6347, %5052
  %6398 = fsub fast float %6348, %5051
  %6399 = fsub fast float %6349, %5050
  %6400 = call float @dx.op.dot3.f32(i32 55, float %6397, float %6398, float %6399, float %6397, float %6398, float %6399)  ; Dot3(ax,ay,az,bx,by,bz)
  %6401 = call float @dx.op.unary.f32(i32 25, float %6400)  ; Rsqrt(value)
  %6402 = fmul fast float %6401, %6397
  %6403 = fmul fast float %6401, %6398
  %6404 = fmul fast float %6401, %6399
  %6405 = call float @dx.op.dot3.f32(i32 55, float %6347, float %6348, float %6349, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6406 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5048, float %5047, float %6402, float %6403, float %6404)  ; Dot3(ax,ay,az,bx,by,bz)
  %6407 = call float @dx.op.unary.f32(i32 7, float %6405)  ; Saturate(value)
  %6408 = fmul fast float %6407, %6407
  %6409 = fmul fast float %6408, %5106
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = fmul fast float %6410, %6407
  %6412 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %6402, float %6403, float %6404)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = fmul fast float %6412, %6412
  %6414 = call float @dx.op.unary.f32(i32 6, float %6405)  ; FAbs(value)
  %6415 = fsub fast float 1.000000e+00, %5099
  %6416 = fmul fast float %5081, %5081
  %6417 = fmul fast float %6416, %6415
  %6418 = fadd fast float %6417, %5099
  %6419 = bitcast float %6418 to i32
  %6420 = ashr i32 %6419, 1
  %6421 = add nsw i32 %6420, 532487669
  %6422 = bitcast i32 %6421 to float
  %6423 = fadd fast float %6422, %5081
  %6424 = fmul fast float %5099, %6413
  %6425 = fsub fast float 1.000000e+00, %6413
  %6426 = fadd fast float %6425, %6424
  %6427 = fmul fast float %6414, %6414
  %6428 = fmul fast float %6427, %6415
  %6429 = fadd fast float %6428, %5099
  %6430 = bitcast float %6429 to i32
  %6431 = ashr i32 %6430, 1
  %6432 = add nsw i32 %6431, 532487669
  %6433 = bitcast i32 %6432 to float
  %6434 = fadd fast float %6433, %6414
  %6435 = fmul fast float %6426, %6426
  %6436 = fmul fast float %6435, %6423
  %6437 = fmul fast float %6436, %6434
  %6438 = fdiv fast float 0x3FF0A00000000000, %6437
  %6439 = fmul fast float %6438, %5099
  %6440 = call float @dx.op.unary.f32(i32 6, float %6406)  ; FAbs(value)
  %6441 = fsub fast float 1.000000e+00, %6440
  %6442 = bitcast float %6441 to i32
  %6443 = sitofp i32 %6442 to float
  %6444 = fmul fast float %6443, 5.000000e+00
  %6445 = fadd fast float %6444, 0xC1EFBF8940000000
  %6446 = fptosi float %6445 to i32
  %6447 = bitcast i32 %6446 to float
  %6448 = fsub fast float 1.000000e+00, %5059
  %6449 = fsub fast float 1.000000e+00, %5060
  %6450 = fsub fast float 1.000000e+00, %5079
  %6451 = fmul fast float %6447, %6448
  %6452 = fmul fast float %6447, %6449
  %6453 = fmul fast float %6447, %6450
  %6454 = fadd fast float %6451, %5059
  %6455 = fadd fast float %6452, %5060
  %6456 = fadd fast float %6453, %5079
  br i1 %5364, label %6457, label %6480

; <label>:6457                                    ; preds = %6393
  %6458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6459 = extractvalue %dx.types.ResRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.ResRet.f32 %6458, 1
  %6461 = extractvalue %dx.types.ResRet.f32 %6458, 2
  %6462 = fadd fast float %6459, -5.000000e-01
  %6463 = fadd fast float %6460, -5.000000e-01
  %6464 = fadd fast float %6461, -5.000000e-01
  %6465 = fmul fast float %5059, 4.000000e+00
  %6466 = fmul fast float %6465, %6448
  %6467 = fmul fast float %6466, %6462
  %6468 = fmul fast float %5060, 4.000000e+00
  %6469 = fmul fast float %6468, %6449
  %6470 = fmul fast float %6469, %6463
  %6471 = fmul fast float %5079, 4.000000e+00
  %6472 = fmul fast float %6471, %6450
  %6473 = fmul fast float %6472, %6464
  %6474 = fadd fast float %6467, %6454
  %6475 = fadd fast float %6470, %6455
  %6476 = fadd fast float %6473, %6456
  %6477 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6478 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6479 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  br label %6480

; <label>:6480                                    ; preds = %6457, %6393
  %6481 = phi float [ %6477, %6457 ], [ %6454, %6393 ]
  %6482 = phi float [ %6478, %6457 ], [ %6455, %6393 ]
  %6483 = phi float [ %6479, %6457 ], [ %6456, %6393 ]
  %6484 = fmul fast float %6405, 9.843750e-01
  %6485 = fadd fast float %6484, 7.812500e-03
  %6486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6485, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6487 = extractvalue %dx.types.ResRet.f32 %6486, 2
  %6488 = extractvalue %dx.types.ResRet.f32 %6486, 3
  %6489 = fmul fast float %6487, %5059
  %6490 = fmul fast float %6487, %5060
  %6491 = fmul fast float %6487, %5079
  %6492 = fadd fast float %6489, %6488
  %6493 = fadd fast float %6490, %6488
  %6494 = fadd fast float %6491, %6488
  br i1 %5364, label %6495, label %6518

; <label>:6495                                    ; preds = %6480
  %6496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6405, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.ResRet.f32 %6496, 2
  %6500 = fadd fast float %6497, -5.000000e-01
  %6501 = fadd fast float %6498, -5.000000e-01
  %6502 = fadd fast float %6499, -5.000000e-01
  %6503 = fmul fast float %5059, 4.000000e+00
  %6504 = fmul fast float %6503, %6448
  %6505 = fmul fast float %6504, %6500
  %6506 = fmul fast float %5060, 4.000000e+00
  %6507 = fmul fast float %6506, %6449
  %6508 = fmul fast float %6507, %6501
  %6509 = fmul fast float %5079, 4.000000e+00
  %6510 = fmul fast float %6509, %6450
  %6511 = fmul fast float %6510, %6502
  %6512 = fadd fast float %6505, %6492
  %6513 = fadd fast float %6508, %6493
  %6514 = fadd fast float %6511, %6494
  %6515 = call float @dx.op.unary.f32(i32 7, float %6512)  ; Saturate(value)
  %6516 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6517 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  br label %6518

; <label>:6518                                    ; preds = %6495, %6480
  %6519 = phi float [ %6515, %6495 ], [ %6492, %6480 ]
  %6520 = phi float [ %6516, %6495 ], [ %6493, %6480 ]
  %6521 = phi float [ %6517, %6495 ], [ %6494, %6480 ]
  %6522 = call float @dx.op.binary.f32(i32 35, float %6520, float %6521)  ; FMax(a,b)
  %6523 = call float @dx.op.binary.f32(i32 35, float %6519, float %6522)  ; FMax(a,b)
  %6524 = fsub fast float 1.000000e+00, %6523
  %6525 = fsub fast float -0.000000e+00, %5056
  %6526 = fsub fast float -0.000000e+00, %5057
  %6527 = fsub fast float -0.000000e+00, %5058
  %6528 = call float @dx.op.dot3.f32(i32 55, float %6347, float %6348, float %6349, float %6525, float %6526, float %6527)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = call float @dx.op.unary.f32(i32 7, float %6528)  ; Saturate(value)
  %6530 = fmul fast float %6529, 9.843750e-01
  %6531 = fadd fast float %6530, 7.812500e-03
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6531, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 3
  %6535 = fmul fast float %6533, %5059
  %6536 = fmul fast float %6533, %5060
  %6537 = fmul fast float %6533, %5079
  %6538 = fadd fast float %6535, %6534
  %6539 = fadd fast float %6536, %6534
  %6540 = fadd fast float %6537, %6534
  br i1 %5364, label %6541, label %6564

; <label>:6541                                    ; preds = %6518
  %6542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.ResRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.ResRet.f32 %6542, 2
  %6546 = fadd fast float %6543, -5.000000e-01
  %6547 = fadd fast float %6544, -5.000000e-01
  %6548 = fadd fast float %6545, -5.000000e-01
  %6549 = fmul fast float %5059, 4.000000e+00
  %6550 = fmul fast float %6549, %6448
  %6551 = fmul fast float %6550, %6546
  %6552 = fmul fast float %5060, 4.000000e+00
  %6553 = fmul fast float %6552, %6449
  %6554 = fmul fast float %6553, %6547
  %6555 = fmul fast float %5079, 4.000000e+00
  %6556 = fmul fast float %6555, %6450
  %6557 = fmul fast float %6556, %6548
  %6558 = fadd fast float %6551, %6538
  %6559 = fadd fast float %6554, %6539
  %6560 = fadd fast float %6557, %6540
  %6561 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6562 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6563 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  br label %6564

; <label>:6564                                    ; preds = %6541, %6518
  %6565 = phi float [ %6561, %6541 ], [ %6538, %6518 ]
  %6566 = phi float [ %6562, %6541 ], [ %6539, %6518 ]
  %6567 = phi float [ %6563, %6541 ], [ %6540, %6518 ]
  %6568 = call float @dx.op.binary.f32(i32 35, float %6566, float %6567)  ; FMax(a,b)
  %6569 = call float @dx.op.binary.f32(i32 35, float %6565, float %6568)  ; FMax(a,b)
  %6570 = fsub fast float 1.000000e+00, %6569
  %6571 = fmul fast float %6570, %6529
  %6572 = fmul fast float %6571, %4475
  %6573 = fmul fast float %6571, %4476
  %6574 = fmul fast float %6571, %4477
  %6575 = fmul fast float %6481, %6439
  %6576 = fmul fast float %6482, %6439
  %6577 = fmul fast float %6483, %6439
  %6578 = fsub fast float 1.000000e+00, %6406
  %6579 = bitcast float %6578 to i32
  %6580 = sitofp i32 %6579 to float
  %6581 = fmul fast float %6580, 5.000000e+00
  %6582 = fadd fast float %6581, 0xC1EFBF8940000000
  %6583 = fptosi float %6582 to i32
  %6584 = bitcast i32 %6583 to float
  %6585 = fmul fast float %6584, %4360
  %6586 = fmul fast float %6524, %6585
  %6587 = fmul fast float %6586, %6287
  %6588 = fmul fast float %6586, %6288
  %6589 = fmul fast float %6586, %6289
  %6590 = fmul fast float %6524, %6411
  %6591 = fadd fast float %6587, %6575
  %6592 = fadd fast float %6588, %6576
  %6593 = fadd fast float %6589, %6577
  %6594 = fadd fast float %6572, %6590
  %6595 = fadd fast float %6573, %6590
  %6596 = fadd fast float %6574, %6590
  %6597 = fmul fast float %6594, %6394
  %6598 = fmul fast float %6595, %6395
  %6599 = fmul fast float %6596, %6396
  %6600 = fmul fast float %6411, %6394
  %6601 = fmul fast float %6600, %6591
  %6602 = fmul fast float %6411, %6395
  %6603 = fmul fast float %6602, %6592
  %6604 = fmul fast float %6411, %6396
  %6605 = fmul fast float %6604, %6593
  %6606 = fadd fast float %6597, %6337
  %6607 = fmul fast float %6606, %4384
  %6608 = fadd fast float %6598, %6339
  %6609 = fmul fast float %6608, %4384
  %6610 = fadd fast float %6599, %6341
  %6611 = fmul fast float %6610, %4384
  %6612 = fadd fast float %6601, %6311
  %6613 = fmul fast float %6612, %4384
  %6614 = fadd fast float %6603, %6314
  %6615 = fmul fast float %6614, %4384
  %6616 = fadd fast float %6605, %6317
  %6617 = fmul fast float %6616, %4384
  br label %6618

; <label>:6618                                    ; preds = %6564, %6386, %6270
  %6619 = phi float [ %6312, %6270 ], [ %6312, %6386 ], [ %6613, %6564 ]
  %6620 = phi float [ %6315, %6270 ], [ %6315, %6386 ], [ %6615, %6564 ]
  %6621 = phi float [ %6318, %6270 ], [ %6318, %6386 ], [ %6617, %6564 ]
  %6622 = phi float [ %6338, %6270 ], [ %6338, %6386 ], [ %6607, %6564 ]
  %6623 = phi float [ %6340, %6270 ], [ %6340, %6386 ], [ %6609, %6564 ]
  %6624 = phi float [ %6342, %6270 ], [ %6342, %6386 ], [ %6611, %6564 ]
  %6625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.i32 %6625, 0
  %6627 = icmp eq i32 %6626, 0
  br i1 %6627, label %7113, label %6628

; <label>:6628                                    ; preds = %6618
  %6629 = fptoui float %84 to i32
  %6630 = fptoui float %85 to i32
  %6631 = lshr i32 %6629, 4
  %6632 = lshr i32 %6630, 4
  %6633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.i32 %6633, 0
  %6635 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6632, i32 %6634, i32 %6631)  ; UMad(a,b,c)
  %6636 = add nsw i32 %6626, -1
  %6637 = call i32 @dx.op.binary.i32(i32 37, i32 %6636, i32 0)  ; IMax(a,b)
  %6638 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %6639 = fptoui float %6638 to i32
  %6640 = lshr i32 %6639, 5
  %6641 = call i32 @dx.op.binary.i32(i32 40, i32 %6640, i32 8191)  ; UMin(a,b)
  %6642 = shl i32 %6641, 2
  %6643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6642, i32 undef)  ; BufferLoad(srv,index,wot)
  %6644 = extractvalue %dx.types.ResRet.i32 %6643, 0
  %6645 = lshr i32 %6644, 16
  %6646 = and i32 %6644, 65535
  %6647 = lshr i32 %6644, 21
  %6648 = lshr i32 %6646, 5
  %6649 = call i32 @dx.op.binary.i32(i32 40, i32 %6648, i32 %6637)  ; UMin(a,b)
  %6650 = icmp ugt i32 %6647, %6649
  br i1 %6650, label %7113, label %6651

; <label>:6651                                    ; preds = %6628
  br label %6652

; <label>:6652                                    ; preds = %7103, %6651
  %6653 = phi i32 [ %7110, %7103 ], [ %6647, %6651 ]
  %6654 = phi float [ %7104, %7103 ], [ %6619, %6651 ]
  %6655 = phi float [ %7105, %7103 ], [ %6620, %6651 ]
  %6656 = phi float [ %7106, %7103 ], [ %6621, %6651 ]
  %6657 = phi float [ %7107, %7103 ], [ %6622, %6651 ]
  %6658 = phi float [ %7108, %7103 ], [ %6623, %6651 ]
  %6659 = phi float [ %7109, %7103 ], [ %6624, %6651 ]
  %6660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.i32 %6660, 0
  %6662 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6635, i32 %6661, i32 %6653)  ; UMad(a,b,c)
  %6663 = shl i32 %6662, 2
  %6664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6663, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.i32 %6664, 0
  %6666 = shl i32 %6653, 5
  %6667 = sub nsw i32 %6645, %6666
  %6668 = call i32 @dx.op.binary.i32(i32 37, i32 %6667, i32 0)  ; IMax(a,b)
  %6669 = call i32 @dx.op.binary.i32(i32 38, i32 %6668, i32 31)  ; IMin(a,b)
  %6670 = sub nsw i32 1, %6645
  %6671 = add nsw i32 %6670, %6646
  %6672 = call i32 @dx.op.binary.i32(i32 37, i32 %6671, i32 0)  ; IMax(a,b)
  %6673 = call i32 @dx.op.binary.i32(i32 38, i32 %6672, i32 32)  ; IMin(a,b)
  %6674 = and i32 %6673, 31
  %6675 = shl i32 -1, %6674
  %6676 = xor i32 %6675, -1
  %6677 = and i32 %6669, 31
  %6678 = shl i32 %6676, %6677
  %6679 = icmp eq i32 %6673, 32
  %6680 = select i1 %6679, i32 -1, i32 %6678
  %6681 = and i32 %6680, %6665
  %6682 = icmp eq i32 %6681, 0
  br i1 %6682, label %7103, label %6683

; <label>:6683                                    ; preds = %6652
  br label %6684

; <label>:6684                                    ; preds = %6764, %6683
  %6685 = phi i32 [ %6696, %6764 ], [ %6681, %6683 ]
  %6686 = phi float [ %6765, %6764 ], [ %6654, %6683 ]
  %6687 = phi float [ %6766, %6764 ], [ %6655, %6683 ]
  %6688 = phi float [ %6767, %6764 ], [ %6656, %6683 ]
  %6689 = phi float [ %6768, %6764 ], [ %6657, %6683 ]
  %6690 = phi float [ %6769, %6764 ], [ %6658, %6683 ]
  %6691 = phi float [ %6770, %6764 ], [ %6659, %6683 ]
  %6692 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6685)  ; FirstbitLo(value)
  %6693 = add i32 %6692, %6666
  %6694 = and i32 %6692, 31
  %6695 = shl i32 1, %6694
  %6696 = xor i32 %6695, %6685
  %6697 = mul i32 %6693, 112
  %6698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6697, i32 undef)  ; BufferLoad(srv,index,wot)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.ResRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.ResRet.f32 %6698, 2
  %6702 = or i32 %6697, 12
  %6703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6702, i32 undef)  ; BufferLoad(srv,index,wot)
  %6704 = extractvalue %dx.types.ResRet.f32 %6703, 0
  %6705 = add i32 %6697, 44
  %6706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6705, i32 undef)  ; BufferLoad(srv,index,wot)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = add i32 %6697, 48
  %6709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6708, i32 undef)  ; BufferLoad(srv,index,wot)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.ResRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.ResRet.f32 %6709, 2
  %6713 = add i32 %6697, 80
  %6714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6713, i32 undef)  ; BufferLoad(srv,index,wot)
  %6715 = extractvalue %dx.types.ResRet.f32 %6714, 1
  %6716 = extractvalue %dx.types.ResRet.f32 %6714, 2
  %6717 = call float @dx.op.dot3.f32(i32 55, float %6699, float %6700, float %6701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6718 = select i1 %185, float %6715, float %6699
  %6719 = select i1 %185, float %6717, float %6700
  %6720 = select i1 %185, float %6716, float %6701
  %6721 = fsub fast float %6710, %143
  %6722 = fsub fast float %6711, %144
  %6723 = fsub fast float %6712, %145
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6721, float %6722, float %6723, float %6721, float %6722, float %6723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = call float @dx.op.unary.f32(i32 24, float %6724)  ; Sqrt(value)
  %6726 = fdiv fast float 1.000000e+00, %6725
  %6727 = fmul fast float %6726, %6721
  %6728 = fmul fast float %6726, %6722
  %6729 = fmul fast float %6726, %6723
  %6730 = fadd fast float %6725, %6704
  %6731 = fdiv fast float 1.000000e+00, %6730
  %6732 = fmul float %6707, %6731
  %6733 = fmul float %6732, %6732
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = and i32 %6695, %6681
  %6736 = icmp eq i32 %6735, 0
  br i1 %6736, label %6759, label %6737, !dx.controlflow.hints !91

; <label>:6737                                    ; preds = %6684
  %6738 = lshr i32 %6629, 5
  %6739 = lshr i32 %6630, 5
  %6740 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6738, i32 %6739, i32 %6693, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = and i32 %6741, 3
  %6743 = icmp eq i32 %6742, 0
  %6744 = select i1 %6743, float 1.000000e+00, float 0.000000e+00
  %6745 = icmp eq i32 %6742, 3
  br i1 %6745, label %6746, label %6759

; <label>:6746                                    ; preds = %6737
  %6747 = lshr i32 %6741, 10
  %6748 = and i32 %6747, 8160
  %6749 = and i32 %6630, 31
  %6750 = or i32 %6748, %6749
  %6751 = lshr i32 %6741, 1
  %6752 = and i32 %6751, 16352
  %6753 = and i32 %6629, 31
  %6754 = or i32 %6752, %6753
  %6755 = lshr i32 %6741, 23
  %6756 = and i32 %6755, 255
  %6757 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6754, i32 %6750, i32 %6756, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6758 = extractvalue %dx.types.ResRet.f32 %6757, 0
  br label %6759

; <label>:6759                                    ; preds = %6746, %6737, %6684
  %6760 = phi float [ %6758, %6746 ], [ %6744, %6737 ], [ 0.000000e+00, %6684 ]
  %6761 = call float @dx.op.binary.f32(i32 36, float %6760, float %6760)  ; FMin(a,b)
  %6762 = call float @dx.op.binary.f32(i32 36, float %6760, float %6761)  ; FMin(a,b)
  %6763 = fcmp fast ogt float %6762, 0.000000e+00
  br i1 %6763, label %6772, label %6764, !dx.controlflow.hints !92

; <label>:6764                                    ; preds = %7051, %6759
  %6765 = phi float [ %6686, %6759 ], [ %7099, %7051 ]
  %6766 = phi float [ %6687, %6759 ], [ %7100, %7051 ]
  %6767 = phi float [ %6688, %6759 ], [ %7101, %7051 ]
  %6768 = phi float [ %6689, %6759 ], [ %7090, %7051 ]
  %6769 = phi float [ %6690, %6759 ], [ %7091, %7051 ]
  %6770 = phi float [ %6691, %6759 ], [ %7092, %7051 ]
  %6771 = icmp eq i32 %6685, %6695
  br i1 %6771, label %7102, label %6684

; <label>:6772                                    ; preds = %6759
  %6773 = fmul fast float %6760, %6718
  %6774 = fmul fast float %6760, %6719
  %6775 = fmul fast float %6760, %6720
  %6776 = fsub fast float %6712, %4852
  %6777 = fcmp fast ogt float %6776, 0.000000e+00
  %6778 = fsub fast float %145, %4852
  %6779 = fcmp fast ogt float %6778, 0.000000e+00
  %6780 = xor i1 %6779, %6777
  %6781 = fsub fast float %4852, %6712
  %6782 = fmul fast float %6781, 2.000000e+00
  %6783 = fadd fast float %6782, %6712
  %6784 = select i1 %6780, float %6712, float %6783
  %6785 = fsub fast float %6784, %145
  %6786 = call float @dx.op.dot3.f32(i32 55, float %6721, float %6722, float %6785, float %6721, float %6722, float %6785)  ; Dot3(ax,ay,az,bx,by,bz)
  %6787 = call float @dx.op.unary.f32(i32 25, float %6786)  ; Rsqrt(value)
  %6788 = fmul fast float %6787, %6721
  %6789 = fmul fast float %6787, %6722
  %6790 = fmul fast float %6787, %6785
  %6791 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %6792 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6788, float %6789, float %6790)  ; Dot3(ax,ay,az,bx,by,bz)
  %6793 = fdiv fast float 1.000000e+00, %6792
  %6794 = fmul fast float %6793, %6791
  %6795 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6778, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6796 = fcmp fast ogt float %6795, 0.000000e+00
  %6797 = fcmp fast olt float %6795, 0.000000e+00
  %6798 = zext i1 %6796 to i32
  %6799 = zext i1 %6797 to i32
  %6800 = sub nsw i32 %6798, %6799
  %6801 = sitofp i32 %6800 to float
  %6802 = fsub fast float %6784, %4852
  %6803 = call float @dx.op.dot3.f32(i32 55, float %6721, float %6722, float %6802, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = fcmp fast ogt float %6803, 0.000000e+00
  %6805 = fcmp fast olt float %6803, 0.000000e+00
  %6806 = zext i1 %6804 to i32
  %6807 = zext i1 %6805 to i32
  %6808 = sub nsw i32 %6806, %6807
  %6809 = sitofp i32 %6808 to float
  %6810 = fcmp fast une float %6801, %6809
  br i1 %6810, label %6811, label %6821

; <label>:6811                                    ; preds = %6772
  %6812 = fmul fast float %6794, %6790
  %6813 = fmul fast float %6794, %6789
  %6814 = fmul fast float %6794, %6788
  %6815 = fmul fast float %6814, %6814
  %6816 = fmul fast float %6813, %6813
  %6817 = fadd fast float %6815, %6816
  %6818 = fmul fast float %6812, %6812
  %6819 = fadd fast float %6817, %6818
  %6820 = call float @dx.op.unary.f32(i32 24, float %6819)  ; Sqrt(value)
  br label %6833

; <label>:6821                                    ; preds = %6772
  %6822 = icmp slt i32 %6800, 0
  br i1 %6822, label %6823, label %6833

; <label>:6823                                    ; preds = %6821
  %6824 = fsub fast float %143, %6710
  %6825 = fsub fast float %144, %6711
  %6826 = fsub fast float %145, %6784
  %6827 = fmul fast float %6824, %6824
  %6828 = fmul fast float %6825, %6825
  %6829 = fadd fast float %6827, %6828
  %6830 = fmul fast float %6826, %6826
  %6831 = fadd fast float %6829, %6830
  %6832 = call float @dx.op.unary.f32(i32 24, float %6831)  ; Sqrt(value)
  br label %6833

; <label>:6833                                    ; preds = %6823, %6821, %6811
  %6834 = phi float [ %6820, %6811 ], [ %6832, %6823 ], [ 0.000000e+00, %6821 ]
  %6835 = and i1 %6779, %6777
  %6836 = fsub fast float -0.000000e+00, %6834
  %6837 = select i1 %6835, float -0.000000e+00, float %6836
  %6838 = fmul fast float %4853, 0x3FF7154760000000
  %6839 = fmul fast float %6838, %6837
  %6840 = fmul fast float %4854, 0x3FF7154760000000
  %6841 = fmul fast float %6840, %6837
  %6842 = fmul fast float %4855, 0x3FF7154760000000
  %6843 = fmul fast float %6842, %6837
  %6844 = call float @dx.op.unary.f32(i32 21, float %6839)  ; Exp(value)
  %6845 = call float @dx.op.unary.f32(i32 21, float %6841)  ; Exp(value)
  %6846 = call float @dx.op.unary.f32(i32 21, float %6843)  ; Exp(value)
  %6847 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6848 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6849 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6850 = fmul fast float %6773, %6847
  %6851 = fmul fast float %6774, %6848
  %6852 = fmul fast float %6775, %6849
  %6853 = fsub fast float %6727, %5052
  %6854 = fsub fast float %6728, %5051
  %6855 = fsub fast float %6729, %5050
  %6856 = call float @dx.op.dot3.f32(i32 55, float %6853, float %6854, float %6855, float %6853, float %6854, float %6855)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = call float @dx.op.unary.f32(i32 25, float %6856)  ; Rsqrt(value)
  %6858 = fmul fast float %6857, %6853
  %6859 = fmul fast float %6857, %6854
  %6860 = fmul fast float %6857, %6855
  %6861 = call float @dx.op.dot3.f32(i32 55, float %6727, float %6728, float %6729, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6862 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5048, float %5047, float %6858, float %6859, float %6860)  ; Dot3(ax,ay,az,bx,by,bz)
  %6863 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  %6864 = fmul fast float %6863, %6734
  %6865 = fmul fast float %6863, %6863
  %6866 = fmul fast float %6865, %5106
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6868 = fmul fast float %6864, %6867
  %6869 = bitcast float %6724 to i32
  %6870 = ashr i32 %6869, 1
  %6871 = sub nsw i32 1597463007, %6870
  %6872 = bitcast i32 %6871 to float
  %6873 = fmul fast float %6872, %6721
  %6874 = fmul fast float %6872, %6722
  %6875 = fmul fast float %6872, %6723
  %6876 = fsub fast float %6873, %5052
  %6877 = fsub fast float %6874, %5051
  %6878 = fsub fast float %6875, %5050
  %6879 = call float @dx.op.dot3.f32(i32 55, float %6876, float %6877, float %6878, float %6876, float %6877, float %6878)  ; Dot3(ax,ay,az,bx,by,bz)
  %6880 = call float @dx.op.unary.f32(i32 25, float %6879)  ; Rsqrt(value)
  %6881 = fmul fast float %6876, %6880
  %6882 = fmul fast float %6877, %6880
  %6883 = fmul fast float %6878, %6880
  %6884 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %6881, float %6882, float %6883)  ; Dot3(ax,ay,az,bx,by,bz)
  %6885 = fmul fast float %6884, %6884
  %6886 = call float @dx.op.unary.f32(i32 6, float %6861)  ; FAbs(value)
  %6887 = fsub fast float 1.000000e+00, %5099
  %6888 = fmul fast float %5081, %5081
  %6889 = fmul fast float %6888, %6887
  %6890 = fadd fast float %6889, %5099
  %6891 = bitcast float %6890 to i32
  %6892 = ashr i32 %6891, 1
  %6893 = add nsw i32 %6892, 532487669
  %6894 = bitcast i32 %6893 to float
  %6895 = fadd fast float %6894, %5081
  %6896 = fmul fast float %5099, %6885
  %6897 = fsub fast float 1.000000e+00, %6885
  %6898 = fadd fast float %6897, %6896
  %6899 = fmul fast float %6886, %6886
  %6900 = fmul fast float %6899, %6887
  %6901 = fadd fast float %6900, %5099
  %6902 = bitcast float %6901 to i32
  %6903 = ashr i32 %6902, 1
  %6904 = add nsw i32 %6903, 532487669
  %6905 = bitcast i32 %6904 to float
  %6906 = fadd fast float %6905, %6886
  %6907 = fmul fast float %6898, %6898
  %6908 = fmul fast float %6907, %6895
  %6909 = fmul fast float %6908, %6906
  %6910 = fdiv fast float 1.000000e+00, %6909
  %6911 = bitcast float %5099 to i32
  %6912 = sitofp i32 %6911 to float
  %6913 = fmul fast float %6912, 0x3FE7F73180000000
  %6914 = fadd fast float %6913, 0x41AFE27C40000000
  %6915 = fptosi float %6914 to i32
  %6916 = bitcast i32 %6915 to float
  %6917 = fmul fast float %6707, 0x3FD80E9D60000000
  %6918 = fmul fast float %6917, %6872
  %6919 = fadd fast float %6916, %6918
  %6920 = bitcast float %6919 to i32
  %6921 = sub nsw i32 2129859010, %6920
  %6922 = bitcast i32 %6921 to float
  %6923 = fmul fast float %5099, %6910
  %6924 = fmul fast float %6923, %6916
  %6925 = fmul fast float %6924, %6922
  %6926 = call float @dx.op.unary.f32(i32 6, float %6862)  ; FAbs(value)
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = bitcast float %6927 to i32
  %6929 = sitofp i32 %6928 to float
  %6930 = fmul fast float %6929, 5.000000e+00
  %6931 = fadd fast float %6930, 0xC1EFBF8940000000
  %6932 = fptosi float %6931 to i32
  %6933 = bitcast i32 %6932 to float
  %6934 = fsub fast float 1.000000e+00, %5059
  %6935 = fsub fast float 1.000000e+00, %5060
  %6936 = fsub fast float 1.000000e+00, %5079
  %6937 = fmul fast float %6933, %6934
  %6938 = fmul fast float %6933, %6935
  %6939 = fmul fast float %6933, %6936
  %6940 = fadd fast float %6937, %5059
  %6941 = fadd fast float %6938, %5060
  %6942 = fadd fast float %6939, %5079
  br i1 %5364, label %6943, label %6966

; <label>:6943                                    ; preds = %6833
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.ResRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.ResRet.f32 %6944, 2
  %6948 = fadd fast float %6945, -5.000000e-01
  %6949 = fadd fast float %6946, -5.000000e-01
  %6950 = fadd fast float %6947, -5.000000e-01
  %6951 = fmul fast float %5059, 4.000000e+00
  %6952 = fmul fast float %6951, %6934
  %6953 = fmul fast float %6952, %6948
  %6954 = fmul fast float %5060, 4.000000e+00
  %6955 = fmul fast float %6954, %6935
  %6956 = fmul fast float %6955, %6949
  %6957 = fmul fast float %5079, 4.000000e+00
  %6958 = fmul fast float %6957, %6936
  %6959 = fmul fast float %6958, %6950
  %6960 = fadd fast float %6953, %6940
  %6961 = fadd fast float %6956, %6941
  %6962 = fadd fast float %6959, %6942
  %6963 = call float @dx.op.unary.f32(i32 7, float %6960)  ; Saturate(value)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6965 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  br label %6966

; <label>:6966                                    ; preds = %6943, %6833
  %6967 = phi float [ %6963, %6943 ], [ %6940, %6833 ]
  %6968 = phi float [ %6964, %6943 ], [ %6941, %6833 ]
  %6969 = phi float [ %6965, %6943 ], [ %6942, %6833 ]
  %6970 = fmul fast float %6861, 9.843750e-01
  %6971 = fadd fast float %6970, 7.812500e-03
  %6972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6971, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 3
  %6975 = fmul fast float %6973, %5059
  %6976 = fmul fast float %6973, %5060
  %6977 = fmul fast float %6973, %5079
  %6978 = fadd fast float %6975, %6974
  %6979 = fadd fast float %6976, %6974
  %6980 = fadd fast float %6977, %6974
  br i1 %5364, label %6981, label %7004

; <label>:6981                                    ; preds = %6966
  %6982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.ResRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.ResRet.f32 %6982, 2
  %6986 = fadd fast float %6983, -5.000000e-01
  %6987 = fadd fast float %6984, -5.000000e-01
  %6988 = fadd fast float %6985, -5.000000e-01
  %6989 = fmul fast float %5059, 4.000000e+00
  %6990 = fmul fast float %6989, %6934
  %6991 = fmul fast float %6990, %6986
  %6992 = fmul fast float %5060, 4.000000e+00
  %6993 = fmul fast float %6992, %6935
  %6994 = fmul fast float %6993, %6987
  %6995 = fmul fast float %5079, 4.000000e+00
  %6996 = fmul fast float %6995, %6936
  %6997 = fmul fast float %6996, %6988
  %6998 = fadd fast float %6991, %6978
  %6999 = fadd fast float %6994, %6979
  %7000 = fadd fast float %6997, %6980
  %7001 = call float @dx.op.unary.f32(i32 7, float %6998)  ; Saturate(value)
  %7002 = call float @dx.op.unary.f32(i32 7, float %6999)  ; Saturate(value)
  %7003 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  br label %7004

; <label>:7004                                    ; preds = %6981, %6966
  %7005 = phi float [ %7001, %6981 ], [ %6978, %6966 ]
  %7006 = phi float [ %7002, %6981 ], [ %6979, %6966 ]
  %7007 = phi float [ %7003, %6981 ], [ %6980, %6966 ]
  %7008 = call float @dx.op.binary.f32(i32 35, float %7006, float %7007)  ; FMax(a,b)
  %7009 = call float @dx.op.binary.f32(i32 35, float %7005, float %7008)  ; FMax(a,b)
  %7010 = fsub fast float 1.000000e+00, %7009
  %7011 = fsub fast float -0.000000e+00, %5056
  %7012 = fsub fast float -0.000000e+00, %5057
  %7013 = fsub fast float -0.000000e+00, %5058
  %7014 = call float @dx.op.dot3.f32(i32 55, float %6727, float %6728, float %6729, float %7011, float %7012, float %7013)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = fmul fast float %7015, %6734
  %7017 = fmul fast float %7015, 9.843750e-01
  %7018 = fadd fast float %7017, 7.812500e-03
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %7018, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 2
  %7021 = extractvalue %dx.types.ResRet.f32 %7019, 3
  %7022 = fmul fast float %7020, %5059
  %7023 = fmul fast float %7020, %5060
  %7024 = fmul fast float %7020, %5079
  %7025 = fadd fast float %7022, %7021
  %7026 = fadd fast float %7023, %7021
  %7027 = fadd fast float %7024, %7021
  br i1 %5364, label %7028, label %7051

; <label>:7028                                    ; preds = %7004
  %7029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %7015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7030 = extractvalue %dx.types.ResRet.f32 %7029, 0
  %7031 = extractvalue %dx.types.ResRet.f32 %7029, 1
  %7032 = extractvalue %dx.types.ResRet.f32 %7029, 2
  %7033 = fadd fast float %7030, -5.000000e-01
  %7034 = fadd fast float %7031, -5.000000e-01
  %7035 = fadd fast float %7032, -5.000000e-01
  %7036 = fmul fast float %5059, 4.000000e+00
  %7037 = fmul fast float %7036, %6934
  %7038 = fmul fast float %7037, %7033
  %7039 = fmul fast float %5060, 4.000000e+00
  %7040 = fmul fast float %7039, %6935
  %7041 = fmul fast float %7040, %7034
  %7042 = fmul fast float %5079, 4.000000e+00
  %7043 = fmul fast float %7042, %6936
  %7044 = fmul fast float %7043, %7035
  %7045 = fadd fast float %7038, %7025
  %7046 = fadd fast float %7041, %7026
  %7047 = fadd fast float %7044, %7027
  %7048 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7049 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7050 = call float @dx.op.unary.f32(i32 7, float %7047)  ; Saturate(value)
  br label %7051

; <label>:7051                                    ; preds = %7028, %7004
  %7052 = phi float [ %7048, %7028 ], [ %7025, %7004 ]
  %7053 = phi float [ %7049, %7028 ], [ %7026, %7004 ]
  %7054 = phi float [ %7050, %7028 ], [ %7027, %7004 ]
  %7055 = call float @dx.op.binary.f32(i32 35, float %7053, float %7054)  ; FMax(a,b)
  %7056 = call float @dx.op.binary.f32(i32 35, float %7052, float %7055)  ; FMax(a,b)
  %7057 = fsub fast float 1.000000e+00, %7056
  %7058 = fmul fast float %7016, %7057
  %7059 = fmul fast float %7058, %4475
  %7060 = fmul fast float %7058, %4476
  %7061 = fmul fast float %7058, %4477
  %7062 = fmul fast float %6967, %6925
  %7063 = fmul fast float %6968, %6925
  %7064 = fmul fast float %6969, %6925
  %7065 = fsub fast float 1.000000e+00, %6862
  %7066 = bitcast float %7065 to i32
  %7067 = sitofp i32 %7066 to float
  %7068 = fmul fast float %7067, 5.000000e+00
  %7069 = fadd fast float %7068, 0xC1EFBF8940000000
  %7070 = fptosi float %7069 to i32
  %7071 = bitcast i32 %7070 to float
  %7072 = fmul fast float %7071, %4360
  %7073 = fmul fast float %7010, %7072
  %7074 = fmul fast float %7073, %6287
  %7075 = fmul fast float %7073, %6288
  %7076 = fmul fast float %7073, %6289
  %7077 = fmul fast float %7010, %6868
  %7078 = fadd fast float %7074, %7062
  %7079 = fadd fast float %7075, %7063
  %7080 = fadd fast float %7076, %7064
  %7081 = fadd fast float %7059, %7077
  %7082 = fadd fast float %7060, %7077
  %7083 = fadd fast float %7061, %7077
  %7084 = fmul fast float %6850, %4384
  %7085 = fmul fast float %7084, %7081
  %7086 = fmul fast float %6851, %4384
  %7087 = fmul fast float %7086, %7082
  %7088 = fmul fast float %6852, %4384
  %7089 = fmul fast float %7088, %7083
  %7090 = fadd fast float %7085, %6689
  %7091 = fadd fast float %7087, %6690
  %7092 = fadd fast float %7089, %6691
  %7093 = fmul fast float %7084, %6868
  %7094 = fmul fast float %7093, %7078
  %7095 = fmul fast float %7086, %6868
  %7096 = fmul fast float %7095, %7079
  %7097 = fmul fast float %7088, %6868
  %7098 = fmul fast float %7097, %7080
  %7099 = fadd fast float %7094, %6686
  %7100 = fadd fast float %7096, %6687
  %7101 = fadd fast float %7098, %6688
  br label %6764

; <label>:7102                                    ; preds = %6764
  br label %7103

; <label>:7103                                    ; preds = %7102, %6652
  %7104 = phi float [ %6654, %6652 ], [ %6765, %7102 ]
  %7105 = phi float [ %6655, %6652 ], [ %6766, %7102 ]
  %7106 = phi float [ %6656, %6652 ], [ %6767, %7102 ]
  %7107 = phi float [ %6657, %6652 ], [ %6768, %7102 ]
  %7108 = phi float [ %6658, %6652 ], [ %6769, %7102 ]
  %7109 = phi float [ %6659, %6652 ], [ %6770, %7102 ]
  %7110 = add i32 %6653, 1
  %7111 = icmp ugt i32 %7110, %6649
  br i1 %7111, label %7112, label %6652

; <label>:7112                                    ; preds = %7103
  br label %7113

; <label>:7113                                    ; preds = %7112, %6628, %6618
  %7114 = phi float [ %6619, %6618 ], [ %6619, %6628 ], [ %7104, %7112 ]
  %7115 = phi float [ %6620, %6618 ], [ %6620, %6628 ], [ %7105, %7112 ]
  %7116 = phi float [ %6621, %6618 ], [ %6621, %6628 ], [ %7106, %7112 ]
  %7117 = phi float [ %6622, %6618 ], [ %6622, %6628 ], [ %7107, %7112 ]
  %7118 = phi float [ %6623, %6618 ], [ %6623, %6628 ], [ %7108, %7112 ]
  %7119 = phi float [ %6624, %6618 ], [ %6624, %6628 ], [ %7109, %7112 ]
  %7120 = call float @dx.op.unary.f32(i32 24, float %5053)  ; Sqrt(value)
  %7121 = call float @dx.op.unary.f32(i32 24, float %5054)  ; Sqrt(value)
  %7122 = call float @dx.op.unary.f32(i32 24, float %5055)  ; Sqrt(value)
  %7123 = fmul fast float %7120, %7117
  %7124 = fmul fast float %7121, %7118
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  br i1 %185, label %7127, label %7150

; <label>:7127                                    ; preds = %7113
  %7128 = fadd fast float %7119, %4358
  %7129 = fmul fast float %7128, %4359
  %7130 = fsub fast float 1.000000e+00, %4359
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 3
  %7134 = fmul fast float %7133, %7131
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = fmul fast float %7136, %6293
  %7138 = extractvalue %dx.types.CBufRet.f32 %7135, 2
  %7139 = fmul fast float %7138, %5077
  %7140 = fadd fast float %7124, %7123
  %7141 = fmul fast float %7126, %7140
  %7142 = extractvalue %dx.types.CBufRet.f32 %7132, 1
  %7143 = fadd fast float %7134, %7129
  %7144 = fsub fast float %7143, %7137
  %7145 = fadd fast float %7144, %7139
  %7146 = fsub fast float %7145, %7142
  %7147 = extractvalue %dx.types.CBufRet.f32 %7132, 2
  %7148 = fmul fast float %7146, %7147
  %7149 = call float @dx.op.unary.f32(i32 7, float %7148)  ; Saturate(value)
  br label %7166

; <label>:7150                                    ; preds = %7113
  %7151 = fmul fast float %7122, %7119
  %7152 = fmul fast float %7126, %7123
  %7153 = fmul fast float %7126, %7124
  %7154 = fmul fast float %7151, %7126
  %7155 = add i32 %45, 356
  %7156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %7155, i32 undef)  ; BufferLoad(srv,index,wot)
  %7157 = extractvalue %dx.types.ResRet.i32 %7156, 0
  %7158 = and i32 %7157, 32
  %7159 = icmp eq i32 %7158, 0
  br i1 %7159, label %7166, label %7160

; <label>:7160                                    ; preds = %7150
  %7161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.f32 %7161, 0
  %7163 = fmul fast float %7162, 0x3FE99999A0000000
  %7164 = fadd fast float %7162, %7152
  %7165 = fadd fast float %7163, %7154
  br label %7166

; <label>:7166                                    ; preds = %7160, %7150, %7127
  %7167 = phi float [ %7141, %7127 ], [ %7164, %7160 ], [ %7152, %7150 ]
  %7168 = phi float [ %7149, %7127 ], [ %7153, %7160 ], [ %7153, %7150 ]
  %7169 = phi float [ 1.000000e+00, %7127 ], [ %7165, %7160 ], [ %7154, %7150 ]
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 0
  %7172 = fmul fast float %7171, %7115
  %7173 = fmul fast float %7171, %7116
  %7174 = fadd fast float %7115, %7114
  %7175 = select i1 %185, float %7174, float %7114
  %7176 = fmul float %7175, %7171
  %7177 = select i1 %185, float 0.000000e+00, float %7172
  %7178 = select i1 %185, float 0.000000e+00, float %7173
  %7179 = fmul fast float %7167, %7120
  %7180 = fmul fast float %7168, %7121
  %7181 = fmul fast float %7169, %7122
  %7182 = fadd fast float %7176, %7179
  %7183 = fadd fast float %7177, %7180
  %7184 = fadd fast float %7178, %7181
  %7185 = select i1 %185, float %7168, float %7183
  %7186 = select i1 %185, float %7169, float %7184
  %7187 = call float @dx.op.binary.f32(i32 36, float %7182, float 3.225500e+04)  ; FMin(a,b)
  %7188 = call float @dx.op.binary.f32(i32 36, float %7185, float 3.225500e+04)  ; FMin(a,b)
  %7189 = call float @dx.op.binary.f32(i32 36, float %7186, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7187)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7188)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7189)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
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
!78 = !{i32 3, i32 5}
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

