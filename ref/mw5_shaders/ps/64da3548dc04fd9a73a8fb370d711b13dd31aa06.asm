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
; shader hash: a327ecf4532148600343dc42bdd1cf3c
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
  %108 = fmul fast float %101, %69
  %109 = fmul fast float %104, %69
  %110 = fmul fast float %107, %69
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %85, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %86, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %132, %136
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %133, %137
  %143 = fadd fast float %142, %126
  %144 = fmul fast float %139, %80
  %145 = fmul fast float %141, %80
  %146 = fmul fast float %143, %80
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %85
  %151 = fmul fast float %149, %86
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %153, 114688
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float %150, float 0.000000e+00
  %157 = select i1 %155, float %151, float 0.000000e+00
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fmul fast float %159, 2.550000e+02
  %161 = fptoui float %160 to i32
  %162 = select i1 %155, i32 %161, i32 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %166 = and i32 %165, 3
  %167 = icmp ne i32 %166, 0
  %168 = and i32 %165, 4
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %167, %169
  br i1 %170, label %171, label %182

; <label>:171                                     ; preds = %0
  %172 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %173 = fmul fast float %172, %86
  %174 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %175 = fmul fast float %174, %85
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %175, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = fcmp fast olt float %178, %180
  br label %185

; <label>:182                                     ; preds = %0
  %183 = icmp eq i32 %168, 0
  %184 = and i1 %167, %183
  br label %185

; <label>:185                                     ; preds = %182, %171
  %186 = phi i1 [ %181, %171 ], [ %184, %182 ]
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = fmul fast float %188, 0x3FE3C6EF40000000
  %190 = frem fast float %85, 2.560000e+02
  %191 = frem fast float %86, 2.560000e+02
  %192 = fptoui float %190 to i32
  %193 = fptoui float %191 to i32
  %194 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = extractvalue %dx.types.ResRet.f32 %194, 1
  %197 = fadd fast float %195, %189
  %198 = fadd fast float %196, %189
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = add i32 %45, 156
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = shl i32 %203, 4
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %203, 7
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %203, 22
  %211 = shl nuw nsw i32 %210, 5
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = add i32 %45, 216
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = add i32 %45, 36
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %45, 288
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = add i32 %45, 172
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %45, 232
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %45, 52
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %45, 304
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %45, 188
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %45, 248
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %45, 68
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %45, 320
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %45, 204
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %45, 264
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %45, 84
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %45, 336
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %45, 348
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 32
  %373 = icmp eq i32 %372, 0
  %374 = and i32 %371, 64
  %375 = icmp eq i32 %374, 0
  %376 = and i32 %371, 128
  %377 = icmp eq i32 %376, 0
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 2
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %395, label %382

; <label>:382                                     ; preds = %185
  %383 = add i32 %45, 488
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = add i32 %385, 0
  %387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %387, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = fmul fast float %389, %75
  %393 = fmul fast float %390, %76
  %394 = fmul fast float %391, %77
  br label %395

; <label>:395                                     ; preds = %382, %185
  %396 = phi float [ %77, %185 ], [ %394, %382 ]
  %397 = phi float [ %76, %185 ], [ %393, %382 ]
  %398 = phi float [ %75, %185 ], [ %392, %382 ]
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 2
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %422, label %403

; <label>:403                                     ; preds = %395
  %404 = add i32 %45, 44
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 1
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %398, float 1.000000e+00
  %410 = add i32 %45, 60
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %397, float 1.000000e+00
  %416 = add i32 %45, 76
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %396, float 1.000000e+00
  br label %422

; <label>:422                                     ; preds = %403, %395
  %423 = phi float [ %396, %395 ], [ %421, %403 ]
  %424 = phi float [ %397, %395 ], [ %415, %403 ]
  %425 = phi float [ %398, %395 ], [ %409, %403 ]
  %426 = lshr i32 %400, 20
  %427 = and i32 %426, 3
  %428 = add nuw nsw i32 %427, 1
  %429 = add i32 %45, 24
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = add i32 %45, 28
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = or i32 %434, %431
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %924, label %437

; <label>:437                                     ; preds = %422
  %438 = and i32 %431, 262144
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %48, float 1.000000e+00
  %441 = select i1 %439, float %49, float 0.000000e+00
  %442 = select i1 %439, float %50, float 0.000000e+00
  %443 = select i1 %439, float %51, float 1.000000e+00
  %444 = select i1 %439, float %52, float %73
  %445 = select i1 %439, float %53, float %74
  %446 = add i32 %45, 284
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = lshr i32 %448, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = fmul fast float %450, 0x3F50624DE0000000
  %452 = add i32 %45, 88
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  %457 = lshr i32 %454, 24
  %458 = add i32 %45, 292
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = add i32 %45, 32
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 22
  %469 = shl nuw nsw i32 %468, 5
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = shl i32 %467, 4
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %467, 7
  %475 = and i32 %474, 32752
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %479 = fmul fast float %478, 1.000000e+03
  %480 = fmul fast float %241, %479
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %481, %231
  %483 = fmul fast float %242, %479
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = fadd fast float %484, %233
  %486 = fmul fast float %451, %479
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fmul fast float %487, 0x401921FB60000000
  %489 = fadd fast float %488, %470
  %490 = call float @dx.op.unary.f32(i32 13, float %489)  ; Sin(value)
  %491 = call float @dx.op.unary.f32(i32 12, float %489)  ; Cos(value)
  %492 = fsub fast float -0.000000e+00, %490
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fadd fast float %445, -5.000000e-01
  %495 = fmul fast float %462, %493
  %496 = fmul fast float %464, %494
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fmul fast float %473, %497
  %500 = fmul fast float %476, %498
  %501 = fmul fast float %491, %499
  %502 = call float @dx.op.tertiary.f32(i32 46, float %492, float %500, float %501)  ; FMad(a,b,c)
  %503 = fmul fast float %490, %499
  %504 = call float @dx.op.tertiary.f32(i32 46, float %491, float %500, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %482, %502
  %506 = fadd fast float %485, %504
  %507 = icmp ugt i32 %456, 1
  %508 = icmp ugt i32 %454, 33554431
  %509 = or i1 %508, %507
  br i1 %509, label %510, label %535

; <label>:510                                     ; preds = %437
  %511 = add i32 %45, 228
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = fmul fast float %478, %515
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = mul nuw nsw i32 %456, %457
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %517, %519
  %521 = call float @dx.op.unary.f32(i32 27, float %520)  ; Round_ni(value)
  %522 = fptoui float %521 to i32
  %523 = urem i32 %522, %456
  %524 = udiv i32 %522, %457
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %527 = uitofp i32 %523 to float
  %528 = uitofp i32 %524 to float
  %529 = fadd fast float %525, %527
  %530 = fadd fast float %526, %528
  %531 = uitofp i32 %456 to float
  %532 = uitofp i32 %457 to float
  %533 = fdiv fast float %529, %531
  %534 = fdiv fast float %530, %532
  br label %535

; <label>:535                                     ; preds = %510, %437
  %536 = phi float [ %533, %510 ], [ %505, %437 ]
  %537 = phi float [ %534, %510 ], [ %506, %437 ]
  %538 = and i32 %431, 16
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %736, label %540

; <label>:540                                     ; preds = %535
  %541 = add i32 %45, 376
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %543, 0
  %545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %545, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = extractvalue %dx.types.ResRet.f32 %546, 3
  %551 = and i32 %454, 255
  %552 = uitofp i32 %551 to float
  %553 = lshr i32 %454, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %550, %552
  %557 = fadd fast float %556, %555
  %558 = fmul fast float %557, 0x3F70101000000000
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 512
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %571, label %563

; <label>:563                                     ; preds = %540
  %564 = add i32 %45, 456
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = add i32 %566, 0
  %568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %568, %dx.types.Handle %82, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  br label %571

; <label>:571                                     ; preds = %563, %540
  %572 = phi float [ %570, %563 ], [ 1.000000e+00, %540 ]
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 33554432
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %683, label %577

; <label>:577                                     ; preds = %571
  %578 = add i32 %45, 224
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %580, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = add i32 %45, 228
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 24
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = and i32 %591, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = lshr i32 %591, 8
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %591, 16
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = add i32 %45, 220
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = lshr i32 %608, 24
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = and i32 %608, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %608, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %608, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = bitcast float %547 to i32
  %624 = ashr i32 %623, 1
  %625 = sub nsw i32 1597463174, %624
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %547, 5.000000e-01
  %628 = fmul fast float %626, %626
  %629 = fmul fast float %628, %627
  %630 = fsub fast float 1.500000e+00, %629
  %631 = fmul fast float %626, %547
  %632 = fmul fast float %631, %630
  %633 = bitcast float %548 to i32
  %634 = ashr i32 %633, 1
  %635 = sub nsw i32 1597463174, %634
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %548, 5.000000e-01
  %638 = fmul fast float %636, %636
  %639 = fmul fast float %638, %637
  %640 = fsub fast float 1.500000e+00, %639
  %641 = fmul fast float %636, %548
  %642 = fmul fast float %641, %640
  %643 = bitcast float %549 to i32
  %644 = ashr i32 %643, 1
  %645 = sub nsw i32 1597463174, %644
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %549, 5.000000e-01
  %648 = fmul fast float %646, %646
  %649 = fmul fast float %648, %647
  %650 = fsub fast float 1.500000e+00, %649
  %651 = fmul fast float %646, %549
  %652 = fmul fast float %651, %650
  %653 = fsub fast float %632, %614
  %654 = fsub fast float %642, %618
  %655 = fsub fast float %652, %622
  %656 = fmul fast float %653, %582
  %657 = fmul fast float %654, %584
  %658 = fmul fast float %655, %589
  %659 = fadd fast float %656, %597
  %660 = fadd fast float %657, %601
  %661 = fadd fast float %658, %605
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fsub fast float %667, %549
  %671 = fmul fast float %668, %572
  %672 = fmul fast float %669, %572
  %673 = fmul fast float %670, %572
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %673, %549
  %677 = fadd fast float %594, %558
  %678 = fsub fast float %677, %611
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fsub fast float %679, %558
  %681 = fmul fast float %680, %572
  %682 = fadd fast float %681, %558
  br label %736

; <label>:683                                     ; preds = %571
  %684 = and i32 %574, 134217728
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %720, label %686

; <label>:686                                     ; preds = %683
  %687 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fadd fast float %689, -5.000000e-01
  %693 = fmul fast float %690, %572
  %694 = fmul fast float %691, %572
  %695 = fmul fast float %692, %572
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = fadd fast float %695, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %702 = fmul fast float %696, 2.000000e+00
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %699
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %705, %699
  %707 = fmul fast float %697, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %700
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %700
  %712 = fmul fast float %698, 2.000000e+00
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, %701
  %715 = fadd fast float %714, %712
  %716 = fmul fast float %715, %701
  %717 = fmul fast float %706, %706
  %718 = fmul fast float %711, %711
  %719 = fmul fast float %716, %716
  br label %736

; <label>:720                                     ; preds = %683
  %721 = fmul fast float %218, %218
  %722 = fmul fast float %222, %222
  %723 = fmul fast float %226, %226
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fadd fast float %723, -1.000000e+00
  %727 = fmul fast float %572, %724
  %728 = fmul fast float %572, %725
  %729 = fmul fast float %572, %726
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fadd fast float %729, 1.000000e+00
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  %735 = fmul fast float %732, %549
  br label %736

; <label>:736                                     ; preds = %720, %686, %577, %535
  %737 = phi float [ %682, %577 ], [ %558, %686 ], [ %558, %720 ], [ 0x3FA23C0BE0000000, %535 ]
  %738 = phi float [ %674, %577 ], [ %717, %686 ], [ %733, %720 ], [ 1.000000e+00, %535 ]
  %739 = phi float [ %675, %577 ], [ %718, %686 ], [ %734, %720 ], [ 1.000000e+00, %535 ]
  %740 = phi float [ %676, %577 ], [ %719, %686 ], [ %735, %720 ], [ 1.000000e+00, %535 ]
  %741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.i32 %741, 1
  %743 = and i32 %742, 1
  %744 = icmp ne i32 %743, 0
  %745 = add i32 %45, 356
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 32
  %749 = icmp ne i32 %748, 0
  %750 = and i1 %744, %749
  %751 = select i1 %750, float 1.000000e+00, float %738
  %752 = select i1 %750, float 0x3FD3333340000000, float %739
  %753 = select i1 %750, float 0x3FD3333340000000, float %740
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 32
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %830, label %758

; <label>:758                                     ; preds = %736
  %759 = add i32 %45, 92
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %45, 392
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = add i32 %764, 0
  %766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %766, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  %772 = and i32 %761, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %761, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = lshr i32 %761, 16
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = fmul fast float %768, %773
  %782 = fadd fast float %781, %776
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = fadd fast float %769, -5.000000e-01
  %785 = fadd fast float %771, -5.000000e-01
  %786 = fmul fast float %784, %780
  %787 = fmul fast float %785, %780
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fmul fast float %788, 2.000000e+00
  %791 = fadd fast float %790, -1.000000e+00
  %792 = fmul fast float %789, 2.000000e+00
  %793 = fadd fast float %792, -1.000000e+00
  %794 = fadd fast float %791, %793
  %795 = fmul fast float %794, 5.000000e-01
  %796 = fsub fast float %791, %793
  %797 = fmul fast float %796, 5.000000e-01
  %798 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %799 = fsub fast float 1.000000e+00, %798
  %800 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %801 = fsub fast float %799, %800
  %802 = call float @dx.op.dot3.f32(i32 55, float %795, float %797, float %801, float %795, float %797, float %801)  ; Dot3(ax,ay,az,bx,by,bz)
  %803 = call float @dx.op.unary.f32(i32 25, float %802)  ; Rsqrt(value)
  %804 = fmul fast float %795, %803
  %805 = fmul fast float %797, %803
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 67108864
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %826, label %810

; <label>:810                                     ; preds = %758
  %811 = add i32 %45, 280
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = lshr i32 %813, 16
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = fsub fast float %783, %821
  %823 = fmul fast float %822, %815
  %824 = fadd fast float %823, %819
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  br label %826

; <label>:826                                     ; preds = %810, %758
  %827 = phi float [ %825, %810 ], [ %783, %758 ]
  %828 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %440, float %441)  ; Dot2(ax,ay,bx,by)
  %829 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %442, float %443)  ; Dot2(ax,ay,bx,by)
  br label %830

; <label>:830                                     ; preds = %826, %736
  %831 = phi float [ %827, %826 ], [ 0x3FD6666660000000, %736 ]
  %832 = phi float [ %828, %826 ], [ 0.000000e+00, %736 ]
  %833 = phi float [ %829, %826 ], [ 0.000000e+00, %736 ]
  %834 = phi float [ %770, %826 ], [ 1.000000e+00, %736 ]
  %835 = add i32 %45, 160
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 22
  %839 = shl nuw nsw i32 %838, 5
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 64
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %878, label %845

; <label>:845                                     ; preds = %830
  %846 = add i32 %45, 408
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = add i32 %848, 0
  %850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 131072
  %854 = icmp eq i32 %853, 0
  %855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %850, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = fmul fast float %856, %206
  %860 = fmul fast float %857, %209
  %861 = fmul fast float %858, %212
  br i1 %854, label %868, label %862

; <label>:862                                     ; preds = %845
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = fmul fast float %864, %859
  %866 = fmul fast float %864, %860
  %867 = fmul fast float %864, %861
  br label %868

; <label>:868                                     ; preds = %862, %845
  %869 = phi float [ %865, %862 ], [ %859, %845 ]
  %870 = phi float [ %866, %862 ], [ %860, %845 ]
  %871 = phi float [ %867, %862 ], [ %861, %845 ]
  %872 = fmul fast float %869, %840
  %873 = select i1 %186, float %872, float %869
  %874 = call float @dx.op.dot3.f32(i32 55, float %873, float %870, float %871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = select i1 %186, float 0.000000e+00, float %869
  %876 = select i1 %186, float %874, float %870
  %877 = select i1 %186, float 0.000000e+00, float %871
  br label %878

; <label>:878                                     ; preds = %868, %830
  %879 = phi float [ %875, %868 ], [ 0.000000e+00, %830 ]
  %880 = phi float [ %876, %868 ], [ 0.000000e+00, %830 ]
  %881 = phi float [ %877, %868 ], [ 0.000000e+00, %830 ]
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 26624
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %909, label %886

; <label>:886                                     ; preds = %878
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 16384
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %909, label %891

; <label>:891                                     ; preds = %886
  %892 = and i32 %888, 1048576
  %893 = icmp ne i32 %892, 0
  %894 = add i32 %45, 472
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = add i32 %896, 0
  %898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %898, %dx.types.Handle %82, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = add i32 %45, 96
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 24
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %900, 0x3F70101020000000
  %907 = select i1 %893, float 0x3F70101020000000, float %906
  %908 = fmul fast float %907, %905
  br label %909

; <label>:909                                     ; preds = %891, %886, %878
  %910 = phi float [ %908, %891 ], [ 0.000000e+00, %886 ], [ 0.000000e+00, %878 ]
  %911 = add i32 %45, 96
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %913, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = fmul fast float %918, %919
  %921 = fadd fast float %920, %915
  %922 = fmul fast float %921, 0x3F70101020000000
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  br label %924

; <label>:924                                     ; preds = %909, %422
  %925 = phi float [ 0.000000e+00, %422 ], [ %832, %909 ]
  %926 = phi float [ 0.000000e+00, %422 ], [ %833, %909 ]
  %927 = phi float [ 0.000000e+00, %422 ], [ %751, %909 ]
  %928 = phi float [ 0.000000e+00, %422 ], [ %752, %909 ]
  %929 = phi float [ 0.000000e+00, %422 ], [ %753, %909 ]
  %930 = phi float [ 0.000000e+00, %422 ], [ %879, %909 ]
  %931 = phi float [ 0.000000e+00, %422 ], [ %880, %909 ]
  %932 = phi float [ 0.000000e+00, %422 ], [ %881, %909 ]
  %933 = phi float [ 0.000000e+00, %422 ], [ %737, %909 ]
  %934 = phi float [ 0.000000e+00, %422 ], [ 1.000000e+00, %909 ]
  %935 = phi float [ 0.000000e+00, %422 ], [ %831, %909 ]
  %936 = phi float [ 0.000000e+00, %422 ], [ %834, %909 ]
  %937 = phi float [ 0.000000e+00, %422 ], [ %910, %909 ]
  %938 = phi float [ 0.000000e+00, %422 ], [ %923, %909 ]
  br i1 %373, label %1819, label %939

; <label>:939                                     ; preds = %924
  %940 = icmp ult i32 %428, 2
  %941 = add i32 %45, 40
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %45, 44
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = or i32 %946, %943
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %1819, label %949

; <label>:949                                     ; preds = %939
  %950 = and i32 %943, 262144
  %951 = icmp ne i32 %950, 0
  %952 = select i1 %951, float %48, float 1.000000e+00
  %953 = select i1 %951, float %49, float 0.000000e+00
  %954 = select i1 %951, float %50, float 0.000000e+00
  %955 = select i1 %951, float %51, float 1.000000e+00
  %956 = select i1 %951, float %52, float %73
  %957 = select i1 %951, float %53, float %74
  %958 = add i32 %45, 300
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = lshr i32 %960, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = fmul fast float %962, 0x3F50624DE0000000
  %964 = add i32 %45, 104
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = lshr i32 %966, 16
  %968 = and i32 %967, 255
  %969 = lshr i32 %966, 24
  %970 = add i32 %45, 308
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %972, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = add i32 %45, 48
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 22
  %981 = shl nuw nsw i32 %980, 5
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = shl i32 %979, 4
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = lshr i32 %979, 7
  %987 = and i32 %986, 32752
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %991 = fmul fast float %990, 1.000000e+03
  %992 = fmul fast float %283, %991
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fadd fast float %993, %273
  %995 = fmul fast float %284, %991
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fadd fast float %996, %275
  %998 = fmul fast float %963, %991
  %999 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1000 = fmul fast float %999, 0x401921FB60000000
  %1001 = fadd fast float %1000, %982
  %1002 = call float @dx.op.unary.f32(i32 13, float %1001)  ; Sin(value)
  %1003 = call float @dx.op.unary.f32(i32 12, float %1001)  ; Cos(value)
  %1004 = fsub fast float -0.000000e+00, %1002
  %1005 = fadd fast float %956, -5.000000e-01
  %1006 = fadd fast float %957, -5.000000e-01
  %1007 = fmul fast float %974, %1005
  %1008 = fmul fast float %976, %1006
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fmul fast float %985, %1009
  %1012 = fmul fast float %988, %1010
  %1013 = fmul fast float %1003, %1011
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1012, float %1013)  ; FMad(a,b,c)
  %1015 = fmul fast float %1002, %1011
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %1003, float %1012, float %1015)  ; FMad(a,b,c)
  %1017 = fadd fast float %994, %1014
  %1018 = fadd fast float %997, %1016
  %1019 = icmp ugt i32 %968, 1
  %1020 = icmp ugt i32 %966, 33554431
  %1021 = or i1 %1020, %1019
  br i1 %1021, label %1022, label %1047

; <label>:1022                                    ; preds = %949
  %1023 = add i32 %45, 244
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = lshr i32 %1025, 16
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = fmul fast float %990, %1027
  %1029 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1030 = mul nuw nsw i32 %968, %969
  %1031 = uitofp i32 %1030 to float
  %1032 = fmul fast float %1029, %1031
  %1033 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1034 = fptoui float %1033 to i32
  %1035 = urem i32 %1034, %968
  %1036 = udiv i32 %1034, %969
  %1037 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1038 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1039 = uitofp i32 %1035 to float
  %1040 = uitofp i32 %1036 to float
  %1041 = fadd fast float %1037, %1039
  %1042 = fadd fast float %1038, %1040
  %1043 = uitofp i32 %968 to float
  %1044 = uitofp i32 %969 to float
  %1045 = fdiv fast float %1041, %1043
  %1046 = fdiv fast float %1042, %1044
  br label %1047

; <label>:1047                                    ; preds = %1022, %949
  %1048 = phi float [ %1045, %1022 ], [ %1017, %949 ]
  %1049 = phi float [ %1046, %1022 ], [ %1018, %949 ]
  %1050 = and i32 %943, 16777216
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1161, label %1052

; <label>:1052                                    ; preds = %1047
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1057 = fadd fast float %1054, %144
  %1058 = fadd fast float %1055, %145
  %1059 = fadd fast float %1056, %146
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = icmp eq i32 %46, 65535
  br i1 %1063, label %1158, label %1064

; <label>:1064                                    ; preds = %1052
  %1065 = lshr i32 %46, 1
  %1066 = shl i32 %1065, 2
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %46, 1
  %1070 = icmp ne i32 %1069, 0
  %1071 = lshr i32 %1068, 16
  %1072 = and i32 %1068, 65535
  %1073 = select i1 %1070, i32 %1071, i32 %1072
  %1074 = icmp eq i32 %1073, 65535
  br i1 %1074, label %1154, label %1075

; <label>:1075                                    ; preds = %1064
  %1076 = mul nuw nsw i32 %1073, 40
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = add nuw nsw i32 %1076, 12
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = add nuw nsw i32 %1076, 24
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = add nuw nsw i32 %1076, 36
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = fsub fast float %1057, %1078
  %1095 = fsub fast float %1058, %1079
  %1096 = fsub fast float %1059, %1080
  %1097 = fmul fast float %1093, %1094
  %1098 = fmul fast float %1093, %1095
  %1099 = fmul fast float %1093, %1096
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fadd fast float %1102, 5.000000e-01
  %1106 = fmul fast float %1103, %1083
  %1107 = fmul fast float %1104, %1084
  %1108 = fmul fast float %1105, %1085
  %1109 = shl i32 %46, 2
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call float @dx.op.unary.f32(i32 22, float %1106)  ; Frc(value)
  %1115 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1116 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1113, %dx.types.Handle %40, float %1114, float %1115, float %1116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = fmul fast float %1118, 1.023000e+03
  %1122 = fmul fast float %1119, 1.023000e+03
  %1123 = fmul fast float %1120, 1.023000e+03
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = fadd fast float %1123, 5.000000e-01
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1130 = fsub fast float %1097, %1100
  %1131 = fsub fast float %1098, %1101
  %1132 = fsub fast float %1099, %1102
  %1133 = fmul fast float %1130, 7.500000e-01
  %1134 = fmul fast float %1131, 7.500000e-01
  %1135 = fmul fast float %1132, 7.500000e-01
  %1136 = fadd fast float %1100, 1.250000e-01
  %1137 = fadd fast float %1136, %1133
  %1138 = fadd fast float %1137, %1127
  %1139 = fadd fast float %1101, 1.250000e-01
  %1140 = fadd fast float %1139, %1134
  %1141 = fadd fast float %1140, %1128
  %1142 = fadd fast float %1102, 1.250000e-01
  %1143 = fadd fast float %1142, %1135
  %1144 = fadd fast float %1143, %1129
  %1145 = fmul fast float %1138, %1088
  %1146 = fmul fast float %1141, %1089
  %1147 = fmul fast float %1144, %1090
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %1149, 0
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1151, %dx.types.Handle %38, float %1145, float %1146, float %1147, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  br label %1154

; <label>:1154                                    ; preds = %1075, %1064
  %1155 = phi float [ %1153, %1075 ], [ -1.000000e+00, %1064 ]
  %1156 = fadd fast float %1155, %1062
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  br label %1158

; <label>:1158                                    ; preds = %1154, %1052
  %1159 = phi float [ %1157, %1154 ], [ %1062, %1052 ]
  %1160 = fmul fast float %1159, %425
  br label %1161

; <label>:1161                                    ; preds = %1158, %1047
  %1162 = phi float [ %1160, %1158 ], [ %425, %1047 ]
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 256
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1213, label %1167

; <label>:1167                                    ; preds = %1161
  %1168 = add i32 %45, 444
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = add i32 %45, 116
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = shl i32 %1177, 4
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1177, 7
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = fsub fast float 1.000000e+00, %1162
  %1185 = call float @dx.op.binary.f32(i32 35, float %1184, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1186 = bitcast float %1162 to i32
  %1187 = sitofp i32 %1186 to float
  %1188 = fadd fast float %1187, 0xC1CFBF8940000000
  %1189 = fmul fast float %1183, %1188
  %1190 = fadd fast float %1189, 0x41CFBF8940000000
  %1191 = fptosi float %1190 to i32
  %1192 = bitcast i32 %1191 to float
  %1193 = bitcast float %1185 to i32
  %1194 = sitofp i32 %1193 to float
  %1195 = fadd fast float %1194, 0xC1CFBF8940000000
  %1196 = fmul fast float %1195, %1183
  %1197 = fadd fast float %1196, 0x41CFBF8940000000
  %1198 = fptosi float %1197 to i32
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1192, %1180
  %1201 = fmul fast float %1199, %1180
  %1202 = fsub fast float %1185, %1200
  %1203 = fadd fast float %1201, %1185
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1206 = fsub fast float %1174, %1204
  %1207 = fsub fast float %1205, %1204
  %1208 = bitcast float %1207 to i32
  %1209 = sub nsw i32 2129859010, %1208
  %1210 = bitcast i32 %1209 to float
  %1211 = fmul fast float %1210, %1206
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  br label %1213

; <label>:1213                                    ; preds = %1167, %1161
  %1214 = phi float [ %1212, %1167 ], [ %1162, %1161 ]
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 128
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1235, label %1219

; <label>:1219                                    ; preds = %1213
  %1220 = add i32 %45, 428
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1224, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 524288
  %1230 = icmp ne i32 %1229, 0
  %1231 = fcmp fast ogt float %1226, 0x3FE0101020000000
  %1232 = select i1 %1231, float 1.000000e+00, float 0.000000e+00
  %1233 = select i1 %1230, float %1232, float %1226
  %1234 = fmul fast float %1233, %1214
  br label %1235

; <label>:1235                                    ; preds = %1219, %1213
  %1236 = phi float [ %1234, %1219 ], [ %1214, %1213 ]
  %1237 = fcmp fast ult float %1236, 0x3F70101020000000
  br i1 %1237, label %1819, label %1238

; <label>:1238                                    ; preds = %1235
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 16
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1441, label %1243

; <label>:1243                                    ; preds = %1238
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %45, 380
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %1248, 0
  %1250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1250, %dx.types.Handle %81, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = and i32 %1245, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1245, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1255, %1257
  %1262 = fadd fast float %1261, %1260
  %1263 = fmul fast float %1262, 0x3F70101000000000
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 512
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1276, label %1268

; <label>:1268                                    ; preds = %1243
  %1269 = add i32 %45, 460
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  br label %1276

; <label>:1276                                    ; preds = %1268, %1243
  %1277 = phi float [ %1275, %1268 ], [ 1.000000e+00, %1243 ]
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 33554432
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1388, label %1282

; <label>:1282                                    ; preds = %1276
  %1283 = add i32 %45, 240
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 65535
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = lshr i32 %1285, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = add i32 %45, 244
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 65535
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = lshr i32 %1296, 24
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = and i32 %1296, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = lshr i32 %1296, 8
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = lshr i32 %1296, 16
  %1308 = and i32 %1307, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = add i32 %45, 236
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = lshr i32 %1313, 24
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = and i32 %1313, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = lshr i32 %1313, 8
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101020000000
  %1324 = lshr i32 %1313, 16
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = bitcast float %1252 to i32
  %1329 = ashr i32 %1328, 1
  %1330 = sub nsw i32 1597463174, %1329
  %1331 = bitcast i32 %1330 to float
  %1332 = fmul fast float %1252, 5.000000e-01
  %1333 = fmul fast float %1331, %1331
  %1334 = fmul fast float %1333, %1332
  %1335 = fsub fast float 1.500000e+00, %1334
  %1336 = fmul fast float %1331, %1252
  %1337 = fmul fast float %1336, %1335
  %1338 = bitcast float %1253 to i32
  %1339 = ashr i32 %1338, 1
  %1340 = sub nsw i32 1597463174, %1339
  %1341 = bitcast i32 %1340 to float
  %1342 = fmul fast float %1253, 5.000000e-01
  %1343 = fmul fast float %1341, %1341
  %1344 = fmul fast float %1343, %1342
  %1345 = fsub fast float 1.500000e+00, %1344
  %1346 = fmul fast float %1341, %1253
  %1347 = fmul fast float %1346, %1345
  %1348 = bitcast float %1254 to i32
  %1349 = ashr i32 %1348, 1
  %1350 = sub nsw i32 1597463174, %1349
  %1351 = bitcast i32 %1350 to float
  %1352 = fmul fast float %1254, 5.000000e-01
  %1353 = fmul fast float %1351, %1351
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float 1.500000e+00, %1354
  %1356 = fmul fast float %1351, %1254
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float %1337, %1319
  %1359 = fsub fast float %1347, %1323
  %1360 = fsub fast float %1357, %1327
  %1361 = fmul fast float %1358, %1287
  %1362 = fmul fast float %1359, %1289
  %1363 = fmul fast float %1360, %1294
  %1364 = fadd fast float %1361, %1302
  %1365 = fadd fast float %1362, %1306
  %1366 = fadd fast float %1363, %1310
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = fmul fast float %1367, %1367
  %1371 = fmul fast float %1368, %1368
  %1372 = fmul fast float %1369, %1369
  %1373 = fsub fast float %1370, %1252
  %1374 = fsub fast float %1371, %1253
  %1375 = fsub fast float %1372, %1254
  %1376 = fmul fast float %1373, %1277
  %1377 = fmul fast float %1374, %1277
  %1378 = fmul fast float %1375, %1277
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1378, %1254
  %1382 = fadd fast float %1299, %1263
  %1383 = fsub fast float %1382, %1316
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = fsub fast float %1384, %1263
  %1386 = fmul fast float %1385, %1277
  %1387 = fadd fast float %1386, %1263
  br label %1441

; <label>:1388                                    ; preds = %1276
  %1389 = and i32 %1279, 134217728
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1425, label %1391

; <label>:1391                                    ; preds = %1388
  %1392 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1394 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fadd fast float %1394, -5.000000e-01
  %1398 = fmul fast float %1395, %1277
  %1399 = fmul fast float %1396, %1277
  %1400 = fmul fast float %1397, %1277
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1407 = fmul fast float %1401, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1404
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1404
  %1412 = fmul fast float %1402, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1405
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1405
  %1417 = fmul fast float %1403, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = fmul fast float %1418, %1406
  %1420 = fadd fast float %1419, %1417
  %1421 = fmul fast float %1420, %1406
  %1422 = fmul fast float %1411, %1411
  %1423 = fmul fast float %1416, %1416
  %1424 = fmul fast float %1421, %1421
  br label %1441

; <label>:1425                                    ; preds = %1388
  %1426 = fmul fast float %260, %260
  %1427 = fmul fast float %264, %264
  %1428 = fmul fast float %268, %268
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fadd fast float %1428, -1.000000e+00
  %1432 = fmul fast float %1277, %1429
  %1433 = fmul fast float %1277, %1430
  %1434 = fmul fast float %1277, %1431
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fadd fast float %1434, 1.000000e+00
  %1438 = fmul fast float %1435, %1252
  %1439 = fmul fast float %1436, %1253
  %1440 = fmul fast float %1437, %1254
  br label %1441

; <label>:1441                                    ; preds = %1425, %1391, %1282, %1238
  %1442 = phi float [ %1387, %1282 ], [ %1263, %1391 ], [ %1263, %1425 ], [ 0x3FA23C0BE0000000, %1238 ]
  %1443 = phi float [ %1379, %1282 ], [ %1422, %1391 ], [ %1438, %1425 ], [ 1.000000e+00, %1238 ]
  %1444 = phi float [ %1380, %1282 ], [ %1423, %1391 ], [ %1439, %1425 ], [ 1.000000e+00, %1238 ]
  %1445 = phi float [ %1381, %1282 ], [ %1424, %1391 ], [ %1440, %1425 ], [ 1.000000e+00, %1238 ]
  %1446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.i32 %1446, 1
  %1448 = and i32 %1447, 1
  %1449 = icmp ne i32 %1448, 0
  %1450 = add i32 %45, 356
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 32
  %1454 = icmp ne i32 %1453, 0
  %1455 = and i1 %1449, %1454
  %1456 = select i1 %1455, float 1.000000e+00, float %1443
  %1457 = select i1 %1455, float 0x3FD3333340000000, float %1444
  %1458 = select i1 %1455, float 0x3FD3333340000000, float %1445
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 32
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1535, label %1463

; <label>:1463                                    ; preds = %1441
  %1464 = add i32 %45, 108
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %45, 396
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %81, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.ResRet.f32 %1472, 3
  %1477 = and i32 %1466, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1466, 8
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = lshr i32 %1466, 16
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fmul fast float %1473, %1478
  %1487 = fadd fast float %1486, %1481
  %1488 = fmul fast float %1487, 0x3F70101000000000
  %1489 = fadd fast float %1474, -5.000000e-01
  %1490 = fadd fast float %1476, -5.000000e-01
  %1491 = fmul fast float %1489, %1485
  %1492 = fmul fast float %1490, %1485
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fmul fast float %1493, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fmul fast float %1494, 2.000000e+00
  %1498 = fadd fast float %1497, -1.000000e+00
  %1499 = fadd fast float %1496, %1498
  %1500 = fmul fast float %1499, 5.000000e-01
  %1501 = fsub fast float %1496, %1498
  %1502 = fmul fast float %1501, 5.000000e-01
  %1503 = call float @dx.op.unary.f32(i32 6, float %1500)  ; FAbs(value)
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1506 = fsub fast float %1504, %1505
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1502, float %1506, float %1500, float %1502, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.unary.f32(i32 25, float %1507)  ; Rsqrt(value)
  %1509 = fmul fast float %1500, %1508
  %1510 = fmul fast float %1502, %1508
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 67108864
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1531, label %1515

; <label>:1515                                    ; preds = %1463
  %1516 = add i32 %45, 296
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = lshr i32 %1518, 16
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = fsub fast float %1488, %1526
  %1528 = fmul fast float %1527, %1520
  %1529 = fadd fast float %1528, %1524
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  br label %1531

; <label>:1531                                    ; preds = %1515, %1463
  %1532 = phi float [ %1530, %1515 ], [ %1488, %1463 ]
  %1533 = call float @dx.op.dot2.f32(i32 54, float %1509, float %1510, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  %1534 = call float @dx.op.dot2.f32(i32 54, float %1509, float %1510, float %954, float %955)  ; Dot2(ax,ay,bx,by)
  br label %1535

; <label>:1535                                    ; preds = %1531, %1441
  %1536 = phi float [ %1532, %1531 ], [ 0x3FD6666660000000, %1441 ]
  %1537 = phi float [ %1533, %1531 ], [ 0.000000e+00, %1441 ]
  %1538 = phi float [ %1534, %1531 ], [ 0.000000e+00, %1441 ]
  %1539 = phi float [ %1475, %1531 ], [ 1.000000e+00, %1441 ]
  %1540 = add i32 %45, 176
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = lshr i32 %1542, 22
  %1544 = shl nuw nsw i32 %1543, 5
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 64
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1583, label %1550

; <label>:1550                                    ; preds = %1535
  %1551 = add i32 %45, 412
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 131072
  %1559 = icmp eq i32 %1558, 0
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %81, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = fmul fast float %1561, %248
  %1565 = fmul fast float %1562, %251
  %1566 = fmul fast float %1563, %254
  br i1 %1559, label %1573, label %1567

; <label>:1567                                    ; preds = %1550
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = fmul fast float %1569, %1564
  %1571 = fmul fast float %1569, %1565
  %1572 = fmul fast float %1569, %1566
  br label %1573

; <label>:1573                                    ; preds = %1567, %1550
  %1574 = phi float [ %1570, %1567 ], [ %1564, %1550 ]
  %1575 = phi float [ %1571, %1567 ], [ %1565, %1550 ]
  %1576 = phi float [ %1572, %1567 ], [ %1566, %1550 ]
  %1577 = fmul fast float %1574, %1545
  %1578 = select i1 %186, float %1577, float %1574
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1578, float %1575, float %1576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %186, float 0.000000e+00, float %1574
  %1581 = select i1 %186, float %1579, float %1575
  %1582 = select i1 %186, float 0.000000e+00, float %1576
  br label %1583

; <label>:1583                                    ; preds = %1573, %1535
  %1584 = phi float [ %1580, %1573 ], [ 0.000000e+00, %1535 ]
  %1585 = phi float [ %1581, %1573 ], [ 0.000000e+00, %1535 ]
  %1586 = phi float [ %1582, %1573 ], [ 0.000000e+00, %1535 ]
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 26624
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1614, label %1591

; <label>:1591                                    ; preds = %1583
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 16384
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1614, label %1596

; <label>:1596                                    ; preds = %1591
  %1597 = and i32 %1593, 1048576
  %1598 = icmp ne i32 %1597, 0
  %1599 = add i32 %45, 476
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = add i32 %1601, 0
  %1603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1603, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = add i32 %45, 112
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = lshr i32 %1608, 24
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1605, 0x3F70101020000000
  %1612 = select i1 %1598, float 0x3F70101020000000, float %1611
  %1613 = fmul fast float %1612, %1610
  br label %1614

; <label>:1614                                    ; preds = %1596, %1591, %1583
  %1615 = phi float [ %1613, %1596 ], [ 0.000000e+00, %1591 ], [ 0.000000e+00, %1583 ]
  %1616 = add i32 %45, 112
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = lshr i32 %1618, 8
  %1622 = and i32 %1621, 255
  %1623 = uitofp i32 %1622 to float
  %1624 = call float @dx.op.dot3.f32(i32 55, float %1456, float %1457, float %1458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1625 = fmul fast float %1623, %1624
  %1626 = fadd fast float %1625, %1620
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  br i1 %940, label %1629, label %1637

; <label>:1629                                    ; preds = %1614
  %1630 = fsub fast float 1.000000e+00, %1236
  %1631 = fmul fast float %1630, %927
  %1632 = fmul fast float %1630, %928
  %1633 = fmul fast float %1630, %929
  %1634 = fmul fast float %1630, %930
  %1635 = fmul fast float %1630, %931
  %1636 = fmul fast float %1630, %932
  br label %1637

; <label>:1637                                    ; preds = %1629, %1614
  %1638 = phi float [ %1631, %1629 ], [ %927, %1614 ]
  %1639 = phi float [ %1632, %1629 ], [ %928, %1614 ]
  %1640 = phi float [ %1633, %1629 ], [ %929, %1614 ]
  %1641 = phi float [ %1634, %1629 ], [ %930, %1614 ]
  %1642 = phi float [ %1635, %1629 ], [ %931, %1614 ]
  %1643 = phi float [ %1636, %1629 ], [ %932, %1614 ]
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 3
  %1647 = icmp eq i32 %1646, 3
  br i1 %1647, label %1726, label %1648

; <label>:1648                                    ; preds = %1637
  %1649 = and i32 %1645, 16
  %1650 = icmp ne i32 %1649, 0
  %1651 = select i1 %1650, float %1236, float 0.000000e+00
  %1652 = icmp eq i32 %1646, 0
  br i1 %1652, label %1653, label %1681

; <label>:1653                                    ; preds = %1648
  %1654 = and i32 %1645, 64
  %1655 = icmp ne i32 %1654, 0
  %1656 = select i1 %1655, float %1236, float 0.000000e+00
  %1657 = fsub fast float %1456, %1638
  %1658 = fsub fast float %1457, %1639
  %1659 = fsub fast float %1458, %1640
  %1660 = fmul fast float %1651, %1657
  %1661 = fmul fast float %1651, %1658
  %1662 = fmul fast float %1651, %1659
  %1663 = fadd fast float %1660, %1638
  %1664 = fadd fast float %1661, %1639
  %1665 = fadd fast float %1662, %1640
  %1666 = fsub fast float %1442, %933
  %1667 = fmul fast float %1651, %1666
  %1668 = fadd fast float %1667, %933
  %1669 = fsub fast float %1584, %1641
  %1670 = fsub fast float %1585, %1642
  %1671 = fsub fast float %1586, %1643
  %1672 = fmul fast float %1656, %1669
  %1673 = fmul fast float %1656, %1670
  %1674 = fmul fast float %1656, %1671
  %1675 = fadd fast float %1672, %1641
  %1676 = fadd fast float %1673, %1642
  %1677 = fadd fast float %1674, %1643
  %1678 = fsub fast float %1628, %938
  %1679 = fmul fast float %1651, %1678
  %1680 = fadd fast float %1679, %938
  br label %1726

; <label>:1681                                    ; preds = %1648
  %1682 = icmp eq i32 %1646, 1
  br i1 %1682, label %1683, label %1696

; <label>:1683                                    ; preds = %1681
  %1684 = fadd fast float %1456, -1.000000e+00
  %1685 = fadd fast float %1457, -1.000000e+00
  %1686 = fadd fast float %1458, -1.000000e+00
  %1687 = fmul fast float %1651, %1684
  %1688 = fmul fast float %1651, %1685
  %1689 = fmul fast float %1651, %1686
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fadd fast float %1688, 1.000000e+00
  %1692 = fadd fast float %1689, 1.000000e+00
  %1693 = fmul fast float %1690, %1638
  %1694 = fmul fast float %1691, %1639
  %1695 = fmul fast float %1692, %1640
  br label %1726

; <label>:1696                                    ; preds = %1681
  %1697 = icmp eq i32 %1646, 2
  br i1 %1697, label %1698, label %1726

; <label>:1698                                    ; preds = %1696
  %1699 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fmul fast float %1702, %1651
  %1706 = fmul fast float %1703, %1651
  %1707 = fmul fast float %1704, %1651
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = fmul fast float %1708, 2.000000e+00
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = fmul fast float %1712, %1638
  %1714 = fadd fast float %1713, %1711
  %1715 = fmul fast float %1714, %1638
  %1716 = fmul fast float %1709, 2.000000e+00
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1717, %1639
  %1719 = fadd fast float %1718, %1716
  %1720 = fmul fast float %1719, %1639
  %1721 = fmul fast float %1710, 2.000000e+00
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1722, %1640
  %1724 = fadd fast float %1723, %1721
  %1725 = fmul fast float %1724, %1640
  br label %1726

; <label>:1726                                    ; preds = %1698, %1696, %1683, %1653, %1637
  %1727 = phi float [ %1638, %1637 ], [ %1715, %1698 ], [ %1638, %1696 ], [ %1693, %1683 ], [ %1663, %1653 ]
  %1728 = phi float [ %1639, %1637 ], [ %1720, %1698 ], [ %1639, %1696 ], [ %1694, %1683 ], [ %1664, %1653 ]
  %1729 = phi float [ %1640, %1637 ], [ %1725, %1698 ], [ %1640, %1696 ], [ %1695, %1683 ], [ %1665, %1653 ]
  %1730 = phi float [ %1641, %1637 ], [ %1641, %1698 ], [ %1641, %1696 ], [ %1641, %1683 ], [ %1675, %1653 ]
  %1731 = phi float [ %1642, %1637 ], [ %1642, %1698 ], [ %1642, %1696 ], [ %1642, %1683 ], [ %1676, %1653 ]
  %1732 = phi float [ %1643, %1637 ], [ %1643, %1698 ], [ %1643, %1696 ], [ %1643, %1683 ], [ %1677, %1653 ]
  %1733 = phi float [ %933, %1637 ], [ %933, %1698 ], [ %933, %1696 ], [ %933, %1683 ], [ %1668, %1653 ]
  %1734 = phi float [ %938, %1637 ], [ %938, %1698 ], [ %938, %1696 ], [ %938, %1683 ], [ %1680, %1653 ]
  %1735 = and i32 %1645, 12
  %1736 = icmp eq i32 %1735, 12
  br i1 %1736, label %1819, label %1737

; <label>:1737                                    ; preds = %1726
  %1738 = and i32 %1645, 2097184
  %1739 = icmp eq i32 %1738, 2097184
  %1740 = select i1 %1739, float %1236, float 0.000000e+00
  %1741 = and i32 %1645, 4194336
  %1742 = icmp eq i32 %1741, 4194336
  %1743 = select i1 %1742, float %1236, float 0.000000e+00
  %1744 = and i32 %1645, 8388640
  %1745 = icmp eq i32 %1744, 8388640
  %1746 = select i1 %1745, float %1236, float 0.000000e+00
  %1747 = and i32 %1645, 16384
  %1748 = icmp ne i32 %1747, 0
  %1749 = select i1 %1748, float %1236, float 0.000000e+00
  %1750 = icmp eq i32 %1735, 0
  br i1 %1750, label %1751, label %1767

; <label>:1751                                    ; preds = %1737
  %1752 = fsub fast float %1537, %925
  %1753 = fsub fast float %1538, %926
  %1754 = fmul fast float %1740, %1752
  %1755 = fmul fast float %1740, %1753
  %1756 = fadd fast float %1754, %925
  %1757 = fadd fast float %1755, %926
  %1758 = fsub fast float %1539, %936
  %1759 = fmul fast float %1743, %1758
  %1760 = fadd fast float %1759, %936
  %1761 = fsub fast float %1536, %935
  %1762 = fmul fast float %1746, %1761
  %1763 = fadd fast float %1762, %935
  %1764 = fsub fast float %1615, %937
  %1765 = fmul fast float %1749, %1764
  %1766 = fadd fast float %1765, %937
  br label %1819

; <label>:1767                                    ; preds = %1737
  %1768 = icmp eq i32 %1735, 4
  br i1 %1768, label %1769, label %1803

; <label>:1769                                    ; preds = %1767
  %1770 = fmul fast float %1740, %1537
  %1771 = fmul fast float %1740, %1538
  %1772 = fadd fast float %1770, %925
  %1773 = fadd fast float %1771, %926
  %1774 = call float @dx.op.binary.f32(i32 36, float %936, float %1539)  ; FMin(a,b)
  %1775 = fsub fast float %1774, %936
  %1776 = fmul fast float %1775, %1743
  %1777 = fadd fast float %1776, %936
  %1778 = fadd fast float %1536, %935
  %1779 = fmul fast float %1778, 0x3FF337FAE0000000
  %1780 = fmul fast float %935, %935
  %1781 = fmul fast float %1536, %1536
  %1782 = fadd fast float %1781, %1780
  %1783 = fmul fast float %1782, 0x3FE5152B00000000
  %1784 = fmul fast float %935, 0xBFCC1F85E0000000
  %1785 = fmul fast float %1784, %1536
  %1786 = fadd fast float %1785, 0xBFE1363700000000
  %1787 = fadd fast float %1786, %1779
  %1788 = fsub fast float %1787, %1783
  %1789 = fmul fast float %1778, 0x3FBA6F0D00000000
  %1790 = fmul fast float %1782, 0x3FD0432880000000
  %1791 = fmul fast float %935, 0xBFEF110800000000
  %1792 = fmul fast float %1791, %1536
  %1793 = fadd fast float %1792, 1.000000e+00
  %1794 = fsub fast float %1793, %1789
  %1795 = fadd fast float %1794, %1790
  %1796 = fdiv fast float %1788, %1795
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1798 = fsub fast float %1797, %935
  %1799 = fmul fast float %1798, %1746
  %1800 = fadd fast float %1799, %935
  %1801 = fmul fast float %1749, %1615
  %1802 = fadd fast float %1801, %937
  br label %1819

; <label>:1803                                    ; preds = %1767
  %1804 = icmp eq i32 %1735, 8
  br i1 %1804, label %1805, label %1819

; <label>:1805                                    ; preds = %1803
  %1806 = fmul fast float %1740, %1537
  %1807 = fmul fast float %1740, %1538
  %1808 = fadd fast float %1806, %925
  %1809 = fadd fast float %1807, %926
  %1810 = call float @dx.op.binary.f32(i32 36, float %936, float %1539)  ; FMin(a,b)
  %1811 = fsub fast float %1810, %936
  %1812 = fmul fast float %1811, %1743
  %1813 = fadd fast float %1812, %936
  %1814 = fsub fast float %1536, %935
  %1815 = fmul fast float %1746, %1814
  %1816 = fadd fast float %1815, %935
  %1817 = fmul fast float %1749, %1615
  %1818 = fadd fast float %1817, %937
  br label %1819

; <label>:1819                                    ; preds = %1805, %1803, %1769, %1751, %1726, %1235, %939, %924
  %1820 = phi float [ %925, %1726 ], [ %925, %1235 ], [ %925, %924 ], [ %1808, %1805 ], [ %925, %1803 ], [ %1772, %1769 ], [ %1756, %1751 ], [ %925, %939 ]
  %1821 = phi float [ %926, %1726 ], [ %926, %1235 ], [ %926, %924 ], [ %1809, %1805 ], [ %926, %1803 ], [ %1773, %1769 ], [ %1757, %1751 ], [ %926, %939 ]
  %1822 = phi float [ %1727, %1726 ], [ %927, %1235 ], [ %927, %924 ], [ %1727, %1805 ], [ %1727, %1803 ], [ %1727, %1769 ], [ %1727, %1751 ], [ %927, %939 ]
  %1823 = phi float [ %1728, %1726 ], [ %928, %1235 ], [ %928, %924 ], [ %1728, %1805 ], [ %1728, %1803 ], [ %1728, %1769 ], [ %1728, %1751 ], [ %928, %939 ]
  %1824 = phi float [ %1729, %1726 ], [ %929, %1235 ], [ %929, %924 ], [ %1729, %1805 ], [ %1729, %1803 ], [ %1729, %1769 ], [ %1729, %1751 ], [ %929, %939 ]
  %1825 = phi float [ %1730, %1726 ], [ %930, %1235 ], [ %930, %924 ], [ %1730, %1805 ], [ %1730, %1803 ], [ %1730, %1769 ], [ %1730, %1751 ], [ %930, %939 ]
  %1826 = phi float [ %1731, %1726 ], [ %931, %1235 ], [ %931, %924 ], [ %1731, %1805 ], [ %1731, %1803 ], [ %1731, %1769 ], [ %1731, %1751 ], [ %931, %939 ]
  %1827 = phi float [ %1732, %1726 ], [ %932, %1235 ], [ %932, %924 ], [ %1732, %1805 ], [ %1732, %1803 ], [ %1732, %1769 ], [ %1732, %1751 ], [ %932, %939 ]
  %1828 = phi float [ %1733, %1726 ], [ %933, %1235 ], [ %933, %924 ], [ %1733, %1805 ], [ %1733, %1803 ], [ %1733, %1769 ], [ %1733, %1751 ], [ %933, %939 ]
  %1829 = phi float [ %935, %1726 ], [ %935, %1235 ], [ %935, %924 ], [ %1816, %1805 ], [ %935, %1803 ], [ %1800, %1769 ], [ %1763, %1751 ], [ %935, %939 ]
  %1830 = phi float [ %936, %1726 ], [ %936, %1235 ], [ %936, %924 ], [ %1813, %1805 ], [ %936, %1803 ], [ %1777, %1769 ], [ %1760, %1751 ], [ %936, %939 ]
  %1831 = phi float [ %937, %1726 ], [ %937, %1235 ], [ %937, %924 ], [ %1818, %1805 ], [ %937, %1803 ], [ %1802, %1769 ], [ %1766, %1751 ], [ %937, %939 ]
  %1832 = phi float [ %1734, %1726 ], [ %938, %1235 ], [ %938, %924 ], [ %1734, %1805 ], [ %1734, %1803 ], [ %1734, %1769 ], [ %1734, %1751 ], [ %938, %939 ]
  br i1 %375, label %2713, label %1833

; <label>:1833                                    ; preds = %1819
  %1834 = icmp ult i32 %428, 3
  %1835 = add i32 %45, 56
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = add i32 %45, 60
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = or i32 %1840, %1837
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %2713, label %1843

; <label>:1843                                    ; preds = %1833
  %1844 = and i32 %1837, 262144
  %1845 = icmp ne i32 %1844, 0
  %1846 = select i1 %1845, float %48, float 1.000000e+00
  %1847 = select i1 %1845, float %49, float 0.000000e+00
  %1848 = select i1 %1845, float %50, float 0.000000e+00
  %1849 = select i1 %1845, float %51, float 1.000000e+00
  %1850 = select i1 %1845, float %52, float %73
  %1851 = select i1 %1845, float %53, float %74
  %1852 = add i32 %45, 316
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = lshr i32 %1854, 16
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = fmul fast float %1856, 0x3F50624DE0000000
  %1858 = add i32 %45, 120
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 16
  %1862 = and i32 %1861, 255
  %1863 = lshr i32 %1860, 24
  %1864 = add i32 %45, 324
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 65535
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = lshr i32 %1866, 16
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = add i32 %45, 64
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 22
  %1875 = shl nuw nsw i32 %1874, 5
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = shl i32 %1873, 4
  %1878 = and i32 %1877, 32752
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = lshr i32 %1873, 7
  %1881 = and i32 %1880, 32752
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1885 = fmul fast float %1884, 1.000000e+03
  %1886 = fmul fast float %325, %1885
  %1887 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1888 = fadd fast float %1887, %315
  %1889 = fmul fast float %326, %1885
  %1890 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1891 = fadd fast float %1890, %317
  %1892 = fmul fast float %1857, %1885
  %1893 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1894 = fmul fast float %1893, 0x401921FB60000000
  %1895 = fadd fast float %1894, %1876
  %1896 = call float @dx.op.unary.f32(i32 13, float %1895)  ; Sin(value)
  %1897 = call float @dx.op.unary.f32(i32 12, float %1895)  ; Cos(value)
  %1898 = fsub fast float -0.000000e+00, %1896
  %1899 = fadd fast float %1850, -5.000000e-01
  %1900 = fadd fast float %1851, -5.000000e-01
  %1901 = fmul fast float %1868, %1899
  %1902 = fmul fast float %1870, %1900
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fadd fast float %1902, 5.000000e-01
  %1905 = fmul fast float %1879, %1903
  %1906 = fmul fast float %1882, %1904
  %1907 = fmul fast float %1897, %1905
  %1908 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1906, float %1907)  ; FMad(a,b,c)
  %1909 = fmul fast float %1896, %1905
  %1910 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1906, float %1909)  ; FMad(a,b,c)
  %1911 = fadd fast float %1888, %1908
  %1912 = fadd fast float %1891, %1910
  %1913 = icmp ugt i32 %1862, 1
  %1914 = icmp ugt i32 %1860, 33554431
  %1915 = or i1 %1914, %1913
  br i1 %1915, label %1916, label %1941

; <label>:1916                                    ; preds = %1843
  %1917 = add i32 %45, 260
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = lshr i32 %1919, 16
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = fmul fast float %1884, %1921
  %1923 = call float @dx.op.unary.f32(i32 22, float %1922)  ; Frc(value)
  %1924 = mul nuw nsw i32 %1862, %1863
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1923, %1925
  %1927 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1928 = fptoui float %1927 to i32
  %1929 = urem i32 %1928, %1862
  %1930 = udiv i32 %1928, %1863
  %1931 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1932 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1933 = uitofp i32 %1929 to float
  %1934 = uitofp i32 %1930 to float
  %1935 = fadd fast float %1931, %1933
  %1936 = fadd fast float %1932, %1934
  %1937 = uitofp i32 %1862 to float
  %1938 = uitofp i32 %1863 to float
  %1939 = fdiv fast float %1935, %1937
  %1940 = fdiv fast float %1936, %1938
  br label %1941

; <label>:1941                                    ; preds = %1916, %1843
  %1942 = phi float [ %1939, %1916 ], [ %1911, %1843 ]
  %1943 = phi float [ %1940, %1916 ], [ %1912, %1843 ]
  %1944 = and i32 %1837, 16777216
  %1945 = icmp eq i32 %1944, 0
  br i1 %1945, label %2055, label %1946

; <label>:1946                                    ; preds = %1941
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = fadd fast float %1948, %144
  %1952 = fadd fast float %1949, %145
  %1953 = fadd fast float %1950, %146
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 0
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = icmp eq i32 %46, 65535
  br i1 %1957, label %2052, label %1958

; <label>:1958                                    ; preds = %1946
  %1959 = lshr i32 %46, 1
  %1960 = shl i32 %1959, 2
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %46, 1
  %1964 = icmp ne i32 %1963, 0
  %1965 = lshr i32 %1962, 16
  %1966 = and i32 %1962, 65535
  %1967 = select i1 %1964, i32 %1965, i32 %1966
  %1968 = icmp eq i32 %1967, 65535
  br i1 %1968, label %2048, label %1969

; <label>:1969                                    ; preds = %1958
  %1970 = mul nuw nsw i32 %1967, 40
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1975 = add nuw nsw i32 %1970, 12
  %1976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.ResRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.ResRet.f32 %1976, 2
  %1980 = add nuw nsw i32 %1970, 24
  %1981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = extractvalue %dx.types.ResRet.f32 %1981, 1
  %1984 = extractvalue %dx.types.ResRet.f32 %1981, 2
  %1985 = add nuw nsw i32 %1970, 36
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = fsub fast float %1951, %1972
  %1989 = fsub fast float %1952, %1973
  %1990 = fsub fast float %1953, %1974
  %1991 = fmul fast float %1987, %1988
  %1992 = fmul fast float %1987, %1989
  %1993 = fmul fast float %1987, %1990
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1997 = fadd fast float %1994, 5.000000e-01
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fadd fast float %1996, 5.000000e-01
  %2000 = fmul fast float %1997, %1977
  %2001 = fmul fast float %1998, %1978
  %2002 = fmul fast float %1999, %1979
  %2003 = shl i32 %46, 2
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %2005, 0
  %2007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2008 = call float @dx.op.unary.f32(i32 22, float %2000)  ; Frc(value)
  %2009 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2010 = call float @dx.op.unary.f32(i32 22, float %2002)  ; Frc(value)
  %2011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2007, %dx.types.Handle %40, float %2008, float %2009, float %2010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = fmul fast float %2012, 1.023000e+03
  %2016 = fmul fast float %2013, 1.023000e+03
  %2017 = fmul fast float %2014, 1.023000e+03
  %2018 = fadd fast float %2015, 5.000000e-01
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = fadd fast float %2017, 5.000000e-01
  %2021 = call float @dx.op.unary.f32(i32 27, float %2018)  ; Round_ni(value)
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = call float @dx.op.unary.f32(i32 27, float %2020)  ; Round_ni(value)
  %2024 = fsub fast float %1991, %1994
  %2025 = fsub fast float %1992, %1995
  %2026 = fsub fast float %1993, %1996
  %2027 = fmul fast float %2024, 7.500000e-01
  %2028 = fmul fast float %2025, 7.500000e-01
  %2029 = fmul fast float %2026, 7.500000e-01
  %2030 = fadd fast float %1994, 1.250000e-01
  %2031 = fadd fast float %2030, %2027
  %2032 = fadd fast float %2031, %2021
  %2033 = fadd fast float %1995, 1.250000e-01
  %2034 = fadd fast float %2033, %2028
  %2035 = fadd fast float %2034, %2022
  %2036 = fadd fast float %1996, 1.250000e-01
  %2037 = fadd fast float %2036, %2029
  %2038 = fadd fast float %2037, %2023
  %2039 = fmul fast float %2032, %1982
  %2040 = fmul fast float %2035, %1983
  %2041 = fmul fast float %2038, %1984
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2045, %dx.types.Handle %38, float %2039, float %2040, float %2041, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  br label %2048

; <label>:2048                                    ; preds = %1969, %1958
  %2049 = phi float [ %2047, %1969 ], [ -1.000000e+00, %1958 ]
  %2050 = fadd fast float %2049, %1956
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  br label %2052

; <label>:2052                                    ; preds = %2048, %1946
  %2053 = phi float [ %2051, %2048 ], [ %1956, %1946 ]
  %2054 = fmul fast float %2053, %424
  br label %2055

; <label>:2055                                    ; preds = %2052, %1941
  %2056 = phi float [ %2054, %2052 ], [ %424, %1941 ]
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 256
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2107, label %2061

; <label>:2061                                    ; preds = %2055
  %2062 = add i32 %45, 448
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %2064, 0
  %2066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2067 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2066, %dx.types.Handle %82, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = add i32 %45, 132
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = shl i32 %2071, 4
  %2073 = and i32 %2072, 32752
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = lshr i32 %2071, 7
  %2076 = and i32 %2075, 32752
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = fsub fast float 1.000000e+00, %2056
  %2079 = call float @dx.op.binary.f32(i32 35, float %2078, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2080 = bitcast float %2056 to i32
  %2081 = sitofp i32 %2080 to float
  %2082 = fadd fast float %2081, 0xC1CFBF8940000000
  %2083 = fmul fast float %2077, %2082
  %2084 = fadd fast float %2083, 0x41CFBF8940000000
  %2085 = fptosi float %2084 to i32
  %2086 = bitcast i32 %2085 to float
  %2087 = bitcast float %2079 to i32
  %2088 = sitofp i32 %2087 to float
  %2089 = fadd fast float %2088, 0xC1CFBF8940000000
  %2090 = fmul fast float %2089, %2077
  %2091 = fadd fast float %2090, 0x41CFBF8940000000
  %2092 = fptosi float %2091 to i32
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2086, %2074
  %2095 = fmul fast float %2093, %2074
  %2096 = fsub fast float %2079, %2094
  %2097 = fadd fast float %2095, %2079
  %2098 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2099 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2100 = fsub fast float %2068, %2098
  %2101 = fsub fast float %2099, %2098
  %2102 = bitcast float %2101 to i32
  %2103 = sub nsw i32 2129859010, %2102
  %2104 = bitcast i32 %2103 to float
  %2105 = fmul fast float %2104, %2100
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  br label %2107

; <label>:2107                                    ; preds = %2061, %2055
  %2108 = phi float [ %2106, %2061 ], [ %2056, %2055 ]
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 128
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2129, label %2113

; <label>:2113                                    ; preds = %2107
  %2114 = add i32 %45, 432
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = add i32 %2116, 0
  %2118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2118, %dx.types.Handle %82, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = and i32 %2122, 524288
  %2124 = icmp ne i32 %2123, 0
  %2125 = fcmp fast ogt float %2120, 0x3FE0101020000000
  %2126 = select i1 %2125, float 1.000000e+00, float 0.000000e+00
  %2127 = select i1 %2124, float %2126, float %2120
  %2128 = fmul fast float %2127, %2108
  br label %2129

; <label>:2129                                    ; preds = %2113, %2107
  %2130 = phi float [ %2128, %2113 ], [ %2108, %2107 ]
  %2131 = fcmp fast ult float %2130, 0x3F70101020000000
  br i1 %2131, label %2713, label %2132

; <label>:2132                                    ; preds = %2129
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 16
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2335, label %2137

; <label>:2137                                    ; preds = %2132
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %45, 384
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %2142, 0
  %2144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2144, %dx.types.Handle %81, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.ResRet.f32 %2145, 2
  %2149 = extractvalue %dx.types.ResRet.f32 %2145, 3
  %2150 = and i32 %2139, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = lshr i32 %2139, 8
  %2153 = and i32 %2152, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2149, %2151
  %2156 = fadd fast float %2155, %2154
  %2157 = fmul fast float %2156, 0x3F70101000000000
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 512
  %2161 = icmp eq i32 %2160, 0
  br i1 %2161, label %2170, label %2162

; <label>:2162                                    ; preds = %2137
  %2163 = add i32 %45, 464
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = add i32 %2165, 0
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2167, %dx.types.Handle %82, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  br label %2170

; <label>:2170                                    ; preds = %2162, %2137
  %2171 = phi float [ %2169, %2162 ], [ 1.000000e+00, %2137 ]
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 33554432
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2282, label %2176

; <label>:2176                                    ; preds = %2170
  %2177 = add i32 %45, 256
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 65535
  %2181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2180)  ; LegacyF16ToF32(value)
  %2182 = lshr i32 %2179, 16
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = add i32 %45, 260
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 65535
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = lshr i32 %2190, 24
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3F70101020000000
  %2194 = and i32 %2190, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = fmul fast float %2195, 0x3F70101020000000
  %2197 = lshr i32 %2190, 8
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F70101020000000
  %2201 = lshr i32 %2190, 16
  %2202 = and i32 %2201, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = fmul fast float %2203, 0x3F70101020000000
  %2205 = add i32 %45, 252
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = lshr i32 %2207, 24
  %2209 = uitofp i32 %2208 to float
  %2210 = fmul fast float %2209, 0x3F70101020000000
  %2211 = and i32 %2207, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F70101020000000
  %2214 = lshr i32 %2207, 8
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = fmul fast float %2216, 0x3F70101020000000
  %2218 = lshr i32 %2207, 16
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2220, 0x3F70101020000000
  %2222 = bitcast float %2146 to i32
  %2223 = ashr i32 %2222, 1
  %2224 = sub nsw i32 1597463174, %2223
  %2225 = bitcast i32 %2224 to float
  %2226 = fmul fast float %2146, 5.000000e-01
  %2227 = fmul fast float %2225, %2225
  %2228 = fmul fast float %2227, %2226
  %2229 = fsub fast float 1.500000e+00, %2228
  %2230 = fmul fast float %2225, %2146
  %2231 = fmul fast float %2230, %2229
  %2232 = bitcast float %2147 to i32
  %2233 = ashr i32 %2232, 1
  %2234 = sub nsw i32 1597463174, %2233
  %2235 = bitcast i32 %2234 to float
  %2236 = fmul fast float %2147, 5.000000e-01
  %2237 = fmul fast float %2235, %2235
  %2238 = fmul fast float %2237, %2236
  %2239 = fsub fast float 1.500000e+00, %2238
  %2240 = fmul fast float %2235, %2147
  %2241 = fmul fast float %2240, %2239
  %2242 = bitcast float %2148 to i32
  %2243 = ashr i32 %2242, 1
  %2244 = sub nsw i32 1597463174, %2243
  %2245 = bitcast i32 %2244 to float
  %2246 = fmul fast float %2148, 5.000000e-01
  %2247 = fmul fast float %2245, %2245
  %2248 = fmul fast float %2247, %2246
  %2249 = fsub fast float 1.500000e+00, %2248
  %2250 = fmul fast float %2245, %2148
  %2251 = fmul fast float %2250, %2249
  %2252 = fsub fast float %2231, %2213
  %2253 = fsub fast float %2241, %2217
  %2254 = fsub fast float %2251, %2221
  %2255 = fmul fast float %2252, %2181
  %2256 = fmul fast float %2253, %2183
  %2257 = fmul fast float %2254, %2188
  %2258 = fadd fast float %2255, %2196
  %2259 = fadd fast float %2256, %2200
  %2260 = fadd fast float %2257, %2204
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2264 = fmul fast float %2261, %2261
  %2265 = fmul fast float %2262, %2262
  %2266 = fmul fast float %2263, %2263
  %2267 = fsub fast float %2264, %2146
  %2268 = fsub fast float %2265, %2147
  %2269 = fsub fast float %2266, %2148
  %2270 = fmul fast float %2267, %2171
  %2271 = fmul fast float %2268, %2171
  %2272 = fmul fast float %2269, %2171
  %2273 = fadd fast float %2270, %2146
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2272, %2148
  %2276 = fadd fast float %2193, %2157
  %2277 = fsub fast float %2276, %2210
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2279 = fsub fast float %2278, %2157
  %2280 = fmul fast float %2279, %2171
  %2281 = fadd fast float %2280, %2157
  br label %2335

; <label>:2282                                    ; preds = %2170
  %2283 = and i32 %2173, 134217728
  %2284 = icmp eq i32 %2283, 0
  br i1 %2284, label %2319, label %2285

; <label>:2285                                    ; preds = %2282
  %2286 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2288 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fadd fast float %2288, -5.000000e-01
  %2292 = fmul fast float %2289, %2171
  %2293 = fmul fast float %2290, %2171
  %2294 = fmul fast float %2291, %2171
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2301 = fmul fast float %2295, 2.000000e+00
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul fast float %2302, %2298
  %2304 = fadd fast float %2303, %2301
  %2305 = fmul fast float %2304, %2298
  %2306 = fmul fast float %2296, 2.000000e+00
  %2307 = fsub fast float 1.000000e+00, %2306
  %2308 = fmul fast float %2307, %2299
  %2309 = fadd fast float %2308, %2306
  %2310 = fmul fast float %2309, %2299
  %2311 = fmul fast float %2297, 2.000000e+00
  %2312 = fsub fast float 1.000000e+00, %2311
  %2313 = fmul fast float %2312, %2300
  %2314 = fadd fast float %2313, %2311
  %2315 = fmul fast float %2314, %2300
  %2316 = fmul fast float %2305, %2305
  %2317 = fmul fast float %2310, %2310
  %2318 = fmul fast float %2315, %2315
  br label %2335

; <label>:2319                                    ; preds = %2282
  %2320 = fmul fast float %302, %302
  %2321 = fmul fast float %306, %306
  %2322 = fmul fast float %310, %310
  %2323 = fadd fast float %2320, -1.000000e+00
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fadd fast float %2322, -1.000000e+00
  %2326 = fmul fast float %2171, %2323
  %2327 = fmul fast float %2171, %2324
  %2328 = fmul fast float %2171, %2325
  %2329 = fadd fast float %2326, 1.000000e+00
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fadd fast float %2328, 1.000000e+00
  %2332 = fmul fast float %2329, %2146
  %2333 = fmul fast float %2330, %2147
  %2334 = fmul fast float %2331, %2148
  br label %2335

; <label>:2335                                    ; preds = %2319, %2285, %2176, %2132
  %2336 = phi float [ %2281, %2176 ], [ %2157, %2285 ], [ %2157, %2319 ], [ 0x3FA23C0BE0000000, %2132 ]
  %2337 = phi float [ %2273, %2176 ], [ %2316, %2285 ], [ %2332, %2319 ], [ 1.000000e+00, %2132 ]
  %2338 = phi float [ %2274, %2176 ], [ %2317, %2285 ], [ %2333, %2319 ], [ 1.000000e+00, %2132 ]
  %2339 = phi float [ %2275, %2176 ], [ %2318, %2285 ], [ %2334, %2319 ], [ 1.000000e+00, %2132 ]
  %2340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.i32 %2340, 1
  %2342 = and i32 %2341, 1
  %2343 = icmp ne i32 %2342, 0
  %2344 = add i32 %45, 356
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 32
  %2348 = icmp ne i32 %2347, 0
  %2349 = and i1 %2343, %2348
  %2350 = select i1 %2349, float 1.000000e+00, float %2337
  %2351 = select i1 %2349, float 0x3FD3333340000000, float %2338
  %2352 = select i1 %2349, float 0x3FD3333340000000, float %2339
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 32
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2429, label %2357

; <label>:2357                                    ; preds = %2335
  %2358 = add i32 %45, 124
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %45, 400
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = add i32 %2363, 0
  %2365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2365, %dx.types.Handle %81, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.ResRet.f32 %2366, 3
  %2371 = and i32 %2360, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = lshr i32 %2360, 8
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = lshr i32 %2360, 16
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101000000000
  %2380 = fmul fast float %2367, %2372
  %2381 = fadd fast float %2380, %2375
  %2382 = fmul fast float %2381, 0x3F70101000000000
  %2383 = fadd fast float %2368, -5.000000e-01
  %2384 = fadd fast float %2370, -5.000000e-01
  %2385 = fmul fast float %2383, %2379
  %2386 = fmul fast float %2384, %2379
  %2387 = fadd fast float %2385, 5.000000e-01
  %2388 = fadd fast float %2386, 5.000000e-01
  %2389 = fmul fast float %2387, 2.000000e+00
  %2390 = fadd fast float %2389, -1.000000e+00
  %2391 = fmul fast float %2388, 2.000000e+00
  %2392 = fadd fast float %2391, -1.000000e+00
  %2393 = fadd fast float %2390, %2392
  %2394 = fmul fast float %2393, 5.000000e-01
  %2395 = fsub fast float %2390, %2392
  %2396 = fmul fast float %2395, 5.000000e-01
  %2397 = call float @dx.op.unary.f32(i32 6, float %2394)  ; FAbs(value)
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = call float @dx.op.unary.f32(i32 6, float %2396)  ; FAbs(value)
  %2400 = fsub fast float %2398, %2399
  %2401 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2396, float %2400, float %2394, float %2396, float %2400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = call float @dx.op.unary.f32(i32 25, float %2401)  ; Rsqrt(value)
  %2403 = fmul fast float %2394, %2402
  %2404 = fmul fast float %2396, %2402
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 67108864
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2425, label %2409

; <label>:2409                                    ; preds = %2357
  %2410 = add i32 %45, 312
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 65535
  %2414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2413)  ; LegacyF16ToF32(value)
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 65535
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = lshr i32 %2412, 16
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = fsub fast float %2382, %2420
  %2422 = fmul fast float %2421, %2414
  %2423 = fadd fast float %2422, %2418
  %2424 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  br label %2425

; <label>:2425                                    ; preds = %2409, %2357
  %2426 = phi float [ %2424, %2409 ], [ %2382, %2357 ]
  %2427 = call float @dx.op.dot2.f32(i32 54, float %2403, float %2404, float %1846, float %1847)  ; Dot2(ax,ay,bx,by)
  %2428 = call float @dx.op.dot2.f32(i32 54, float %2403, float %2404, float %1848, float %1849)  ; Dot2(ax,ay,bx,by)
  br label %2429

; <label>:2429                                    ; preds = %2425, %2335
  %2430 = phi float [ %2426, %2425 ], [ 0x3FD6666660000000, %2335 ]
  %2431 = phi float [ %2427, %2425 ], [ 0.000000e+00, %2335 ]
  %2432 = phi float [ %2428, %2425 ], [ 0.000000e+00, %2335 ]
  %2433 = phi float [ %2369, %2425 ], [ 1.000000e+00, %2335 ]
  %2434 = add i32 %45, 192
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = lshr i32 %2436, 22
  %2438 = shl nuw nsw i32 %2437, 5
  %2439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2438)  ; LegacyF16ToF32(value)
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 64
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2477, label %2444

; <label>:2444                                    ; preds = %2429
  %2445 = add i32 %45, 416
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %2447, 0
  %2449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 131072
  %2453 = icmp eq i32 %2452, 0
  %2454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2449, %dx.types.Handle %81, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = fmul fast float %2455, %290
  %2459 = fmul fast float %2456, %293
  %2460 = fmul fast float %2457, %296
  br i1 %2453, label %2467, label %2461

; <label>:2461                                    ; preds = %2444
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = fmul fast float %2463, %2458
  %2465 = fmul fast float %2463, %2459
  %2466 = fmul fast float %2463, %2460
  br label %2467

; <label>:2467                                    ; preds = %2461, %2444
  %2468 = phi float [ %2464, %2461 ], [ %2458, %2444 ]
  %2469 = phi float [ %2465, %2461 ], [ %2459, %2444 ]
  %2470 = phi float [ %2466, %2461 ], [ %2460, %2444 ]
  %2471 = fmul fast float %2468, %2439
  %2472 = select i1 %186, float %2471, float %2468
  %2473 = call float @dx.op.dot3.f32(i32 55, float %2472, float %2469, float %2470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2474 = select i1 %186, float 0.000000e+00, float %2468
  %2475 = select i1 %186, float %2473, float %2469
  %2476 = select i1 %186, float 0.000000e+00, float %2470
  br label %2477

; <label>:2477                                    ; preds = %2467, %2429
  %2478 = phi float [ %2474, %2467 ], [ 0.000000e+00, %2429 ]
  %2479 = phi float [ %2475, %2467 ], [ 0.000000e+00, %2429 ]
  %2480 = phi float [ %2476, %2467 ], [ 0.000000e+00, %2429 ]
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 26624
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2508, label %2485

; <label>:2485                                    ; preds = %2477
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 16384
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2508, label %2490

; <label>:2490                                    ; preds = %2485
  %2491 = and i32 %2487, 1048576
  %2492 = icmp ne i32 %2491, 0
  %2493 = add i32 %45, 480
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = add i32 %2495, 0
  %2497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2497, %dx.types.Handle %82, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2499 = extractvalue %dx.types.ResRet.f32 %2498, 0
  %2500 = add i32 %45, 128
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = lshr i32 %2502, 24
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2499, 0x3F70101020000000
  %2506 = select i1 %2492, float 0x3F70101020000000, float %2505
  %2507 = fmul fast float %2506, %2504
  br label %2508

; <label>:2508                                    ; preds = %2490, %2485, %2477
  %2509 = phi float [ %2507, %2490 ], [ 0.000000e+00, %2485 ], [ 0.000000e+00, %2477 ]
  %2510 = add i32 %45, 128
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = lshr i32 %2512, 8
  %2516 = and i32 %2515, 255
  %2517 = uitofp i32 %2516 to float
  %2518 = call float @dx.op.dot3.f32(i32 55, float %2350, float %2351, float %2352, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2519 = fmul fast float %2517, %2518
  %2520 = fadd fast float %2519, %2514
  %2521 = fmul fast float %2520, 0x3F70101020000000
  %2522 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  br i1 %1834, label %2523, label %2531

; <label>:2523                                    ; preds = %2508
  %2524 = fsub fast float 1.000000e+00, %2130
  %2525 = fmul fast float %2524, %1822
  %2526 = fmul fast float %2524, %1823
  %2527 = fmul fast float %2524, %1824
  %2528 = fmul fast float %2524, %1825
  %2529 = fmul fast float %2524, %1826
  %2530 = fmul fast float %2524, %1827
  br label %2531

; <label>:2531                                    ; preds = %2523, %2508
  %2532 = phi float [ %2525, %2523 ], [ %1822, %2508 ]
  %2533 = phi float [ %2526, %2523 ], [ %1823, %2508 ]
  %2534 = phi float [ %2527, %2523 ], [ %1824, %2508 ]
  %2535 = phi float [ %2528, %2523 ], [ %1825, %2508 ]
  %2536 = phi float [ %2529, %2523 ], [ %1826, %2508 ]
  %2537 = phi float [ %2530, %2523 ], [ %1827, %2508 ]
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 3
  %2541 = icmp eq i32 %2540, 3
  br i1 %2541, label %2620, label %2542

; <label>:2542                                    ; preds = %2531
  %2543 = and i32 %2539, 16
  %2544 = icmp ne i32 %2543, 0
  %2545 = select i1 %2544, float %2130, float 0.000000e+00
  %2546 = icmp eq i32 %2540, 0
  br i1 %2546, label %2547, label %2575

; <label>:2547                                    ; preds = %2542
  %2548 = and i32 %2539, 64
  %2549 = icmp ne i32 %2548, 0
  %2550 = select i1 %2549, float %2130, float 0.000000e+00
  %2551 = fsub fast float %2350, %2532
  %2552 = fsub fast float %2351, %2533
  %2553 = fsub fast float %2352, %2534
  %2554 = fmul fast float %2545, %2551
  %2555 = fmul fast float %2545, %2552
  %2556 = fmul fast float %2545, %2553
  %2557 = fadd fast float %2554, %2532
  %2558 = fadd fast float %2555, %2533
  %2559 = fadd fast float %2556, %2534
  %2560 = fsub fast float %2336, %1828
  %2561 = fmul fast float %2545, %2560
  %2562 = fadd fast float %2561, %1828
  %2563 = fsub fast float %2478, %2535
  %2564 = fsub fast float %2479, %2536
  %2565 = fsub fast float %2480, %2537
  %2566 = fmul fast float %2550, %2563
  %2567 = fmul fast float %2550, %2564
  %2568 = fmul fast float %2550, %2565
  %2569 = fadd fast float %2566, %2535
  %2570 = fadd fast float %2567, %2536
  %2571 = fadd fast float %2568, %2537
  %2572 = fsub fast float %2522, %1832
  %2573 = fmul fast float %2545, %2572
  %2574 = fadd fast float %2573, %1832
  br label %2620

; <label>:2575                                    ; preds = %2542
  %2576 = icmp eq i32 %2540, 1
  br i1 %2576, label %2577, label %2590

; <label>:2577                                    ; preds = %2575
  %2578 = fadd fast float %2350, -1.000000e+00
  %2579 = fadd fast float %2351, -1.000000e+00
  %2580 = fadd fast float %2352, -1.000000e+00
  %2581 = fmul fast float %2545, %2578
  %2582 = fmul fast float %2545, %2579
  %2583 = fmul fast float %2545, %2580
  %2584 = fadd fast float %2581, 1.000000e+00
  %2585 = fadd fast float %2582, 1.000000e+00
  %2586 = fadd fast float %2583, 1.000000e+00
  %2587 = fmul fast float %2584, %2532
  %2588 = fmul fast float %2585, %2533
  %2589 = fmul fast float %2586, %2534
  br label %2620

; <label>:2590                                    ; preds = %2575
  %2591 = icmp eq i32 %2540, 2
  br i1 %2591, label %2592, label %2620

; <label>:2592                                    ; preds = %2590
  %2593 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2594 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2595 = call float @dx.op.unary.f32(i32 24, float %2352)  ; Sqrt(value)
  %2596 = fadd fast float %2593, -5.000000e-01
  %2597 = fadd fast float %2594, -5.000000e-01
  %2598 = fadd fast float %2595, -5.000000e-01
  %2599 = fmul fast float %2596, %2545
  %2600 = fmul fast float %2597, %2545
  %2601 = fmul fast float %2598, %2545
  %2602 = fadd fast float %2599, 5.000000e-01
  %2603 = fadd fast float %2600, 5.000000e-01
  %2604 = fadd fast float %2601, 5.000000e-01
  %2605 = fmul fast float %2602, 2.000000e+00
  %2606 = fsub fast float 1.000000e+00, %2605
  %2607 = fmul fast float %2606, %2532
  %2608 = fadd fast float %2607, %2605
  %2609 = fmul fast float %2608, %2532
  %2610 = fmul fast float %2603, 2.000000e+00
  %2611 = fsub fast float 1.000000e+00, %2610
  %2612 = fmul fast float %2611, %2533
  %2613 = fadd fast float %2612, %2610
  %2614 = fmul fast float %2613, %2533
  %2615 = fmul fast float %2604, 2.000000e+00
  %2616 = fsub fast float 1.000000e+00, %2615
  %2617 = fmul fast float %2616, %2534
  %2618 = fadd fast float %2617, %2615
  %2619 = fmul fast float %2618, %2534
  br label %2620

; <label>:2620                                    ; preds = %2592, %2590, %2577, %2547, %2531
  %2621 = phi float [ %2532, %2531 ], [ %2609, %2592 ], [ %2532, %2590 ], [ %2587, %2577 ], [ %2557, %2547 ]
  %2622 = phi float [ %2533, %2531 ], [ %2614, %2592 ], [ %2533, %2590 ], [ %2588, %2577 ], [ %2558, %2547 ]
  %2623 = phi float [ %2534, %2531 ], [ %2619, %2592 ], [ %2534, %2590 ], [ %2589, %2577 ], [ %2559, %2547 ]
  %2624 = phi float [ %2535, %2531 ], [ %2535, %2592 ], [ %2535, %2590 ], [ %2535, %2577 ], [ %2569, %2547 ]
  %2625 = phi float [ %2536, %2531 ], [ %2536, %2592 ], [ %2536, %2590 ], [ %2536, %2577 ], [ %2570, %2547 ]
  %2626 = phi float [ %2537, %2531 ], [ %2537, %2592 ], [ %2537, %2590 ], [ %2537, %2577 ], [ %2571, %2547 ]
  %2627 = phi float [ %1828, %2531 ], [ %1828, %2592 ], [ %1828, %2590 ], [ %1828, %2577 ], [ %2562, %2547 ]
  %2628 = phi float [ %1832, %2531 ], [ %1832, %2592 ], [ %1832, %2590 ], [ %1832, %2577 ], [ %2574, %2547 ]
  %2629 = and i32 %2539, 12
  %2630 = icmp eq i32 %2629, 12
  br i1 %2630, label %2713, label %2631

; <label>:2631                                    ; preds = %2620
  %2632 = and i32 %2539, 2097184
  %2633 = icmp eq i32 %2632, 2097184
  %2634 = select i1 %2633, float %2130, float 0.000000e+00
  %2635 = and i32 %2539, 4194336
  %2636 = icmp eq i32 %2635, 4194336
  %2637 = select i1 %2636, float %2130, float 0.000000e+00
  %2638 = and i32 %2539, 8388640
  %2639 = icmp eq i32 %2638, 8388640
  %2640 = select i1 %2639, float %2130, float 0.000000e+00
  %2641 = and i32 %2539, 16384
  %2642 = icmp ne i32 %2641, 0
  %2643 = select i1 %2642, float %2130, float 0.000000e+00
  %2644 = icmp eq i32 %2629, 0
  br i1 %2644, label %2645, label %2661

; <label>:2645                                    ; preds = %2631
  %2646 = fsub fast float %2431, %1820
  %2647 = fsub fast float %2432, %1821
  %2648 = fmul fast float %2634, %2646
  %2649 = fmul fast float %2634, %2647
  %2650 = fadd fast float %2648, %1820
  %2651 = fadd fast float %2649, %1821
  %2652 = fsub fast float %2433, %1830
  %2653 = fmul fast float %2637, %2652
  %2654 = fadd fast float %2653, %1830
  %2655 = fsub fast float %2430, %1829
  %2656 = fmul fast float %2640, %2655
  %2657 = fadd fast float %2656, %1829
  %2658 = fsub fast float %2509, %1831
  %2659 = fmul fast float %2643, %2658
  %2660 = fadd fast float %2659, %1831
  br label %2713

; <label>:2661                                    ; preds = %2631
  %2662 = icmp eq i32 %2629, 4
  br i1 %2662, label %2663, label %2697

; <label>:2663                                    ; preds = %2661
  %2664 = fmul fast float %2634, %2431
  %2665 = fmul fast float %2634, %2432
  %2666 = fadd fast float %2664, %1820
  %2667 = fadd fast float %2665, %1821
  %2668 = call float @dx.op.binary.f32(i32 36, float %1830, float %2433)  ; FMin(a,b)
  %2669 = fsub fast float %2668, %1830
  %2670 = fmul fast float %2669, %2637
  %2671 = fadd fast float %2670, %1830
  %2672 = fadd fast float %2430, %1829
  %2673 = fmul fast float %2672, 0x3FF337FAE0000000
  %2674 = fmul fast float %1829, %1829
  %2675 = fmul fast float %2430, %2430
  %2676 = fadd fast float %2675, %2674
  %2677 = fmul fast float %2676, 0x3FE5152B00000000
  %2678 = fmul fast float %1829, 0xBFCC1F85E0000000
  %2679 = fmul fast float %2678, %2430
  %2680 = fadd fast float %2679, 0xBFE1363700000000
  %2681 = fadd fast float %2680, %2673
  %2682 = fsub fast float %2681, %2677
  %2683 = fmul fast float %2672, 0x3FBA6F0D00000000
  %2684 = fmul fast float %2676, 0x3FD0432880000000
  %2685 = fmul fast float %1829, 0xBFEF110800000000
  %2686 = fmul fast float %2685, %2430
  %2687 = fadd fast float %2686, 1.000000e+00
  %2688 = fsub fast float %2687, %2683
  %2689 = fadd fast float %2688, %2684
  %2690 = fdiv fast float %2682, %2689
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = fsub fast float %2691, %1829
  %2693 = fmul fast float %2692, %2640
  %2694 = fadd fast float %2693, %1829
  %2695 = fmul fast float %2643, %2509
  %2696 = fadd fast float %2695, %1831
  br label %2713

; <label>:2697                                    ; preds = %2661
  %2698 = icmp eq i32 %2629, 8
  br i1 %2698, label %2699, label %2713

; <label>:2699                                    ; preds = %2697
  %2700 = fmul fast float %2634, %2431
  %2701 = fmul fast float %2634, %2432
  %2702 = fadd fast float %2700, %1820
  %2703 = fadd fast float %2701, %1821
  %2704 = call float @dx.op.binary.f32(i32 36, float %1830, float %2433)  ; FMin(a,b)
  %2705 = fsub fast float %2704, %1830
  %2706 = fmul fast float %2705, %2637
  %2707 = fadd fast float %2706, %1830
  %2708 = fsub fast float %2430, %1829
  %2709 = fmul fast float %2640, %2708
  %2710 = fadd fast float %2709, %1829
  %2711 = fmul fast float %2643, %2509
  %2712 = fadd fast float %2711, %1831
  br label %2713

; <label>:2713                                    ; preds = %2699, %2697, %2663, %2645, %2620, %2129, %1833, %1819
  %2714 = phi float [ %1820, %2620 ], [ %1820, %2129 ], [ %1820, %1819 ], [ %2702, %2699 ], [ %1820, %2697 ], [ %2666, %2663 ], [ %2650, %2645 ], [ %1820, %1833 ]
  %2715 = phi float [ %1821, %2620 ], [ %1821, %2129 ], [ %1821, %1819 ], [ %2703, %2699 ], [ %1821, %2697 ], [ %2667, %2663 ], [ %2651, %2645 ], [ %1821, %1833 ]
  %2716 = phi float [ %2621, %2620 ], [ %1822, %2129 ], [ %1822, %1819 ], [ %2621, %2699 ], [ %2621, %2697 ], [ %2621, %2663 ], [ %2621, %2645 ], [ %1822, %1833 ]
  %2717 = phi float [ %2622, %2620 ], [ %1823, %2129 ], [ %1823, %1819 ], [ %2622, %2699 ], [ %2622, %2697 ], [ %2622, %2663 ], [ %2622, %2645 ], [ %1823, %1833 ]
  %2718 = phi float [ %2623, %2620 ], [ %1824, %2129 ], [ %1824, %1819 ], [ %2623, %2699 ], [ %2623, %2697 ], [ %2623, %2663 ], [ %2623, %2645 ], [ %1824, %1833 ]
  %2719 = phi float [ %2624, %2620 ], [ %1825, %2129 ], [ %1825, %1819 ], [ %2624, %2699 ], [ %2624, %2697 ], [ %2624, %2663 ], [ %2624, %2645 ], [ %1825, %1833 ]
  %2720 = phi float [ %2625, %2620 ], [ %1826, %2129 ], [ %1826, %1819 ], [ %2625, %2699 ], [ %2625, %2697 ], [ %2625, %2663 ], [ %2625, %2645 ], [ %1826, %1833 ]
  %2721 = phi float [ %2626, %2620 ], [ %1827, %2129 ], [ %1827, %1819 ], [ %2626, %2699 ], [ %2626, %2697 ], [ %2626, %2663 ], [ %2626, %2645 ], [ %1827, %1833 ]
  %2722 = phi float [ %2627, %2620 ], [ %1828, %2129 ], [ %1828, %1819 ], [ %2627, %2699 ], [ %2627, %2697 ], [ %2627, %2663 ], [ %2627, %2645 ], [ %1828, %1833 ]
  %2723 = phi float [ %1829, %2620 ], [ %1829, %2129 ], [ %1829, %1819 ], [ %2710, %2699 ], [ %1829, %2697 ], [ %2694, %2663 ], [ %2657, %2645 ], [ %1829, %1833 ]
  %2724 = phi float [ %1830, %2620 ], [ %1830, %2129 ], [ %1830, %1819 ], [ %2707, %2699 ], [ %1830, %2697 ], [ %2671, %2663 ], [ %2654, %2645 ], [ %1830, %1833 ]
  %2725 = phi float [ %1831, %2620 ], [ %1831, %2129 ], [ %1831, %1819 ], [ %2712, %2699 ], [ %1831, %2697 ], [ %2696, %2663 ], [ %2660, %2645 ], [ %1831, %1833 ]
  %2726 = phi float [ %2628, %2620 ], [ %1832, %2129 ], [ %1832, %1819 ], [ %2628, %2699 ], [ %2628, %2697 ], [ %2628, %2663 ], [ %2628, %2645 ], [ %1832, %1833 ]
  br i1 %377, label %3607, label %2727

; <label>:2727                                    ; preds = %2713
  %2728 = icmp ult i32 %428, 4
  %2729 = add i32 %45, 72
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = add i32 %45, 76
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = or i32 %2734, %2731
  %2736 = icmp eq i32 %2735, 0
  br i1 %2736, label %3607, label %2737

; <label>:2737                                    ; preds = %2727
  %2738 = and i32 %2731, 262144
  %2739 = icmp ne i32 %2738, 0
  %2740 = select i1 %2739, float %48, float 1.000000e+00
  %2741 = select i1 %2739, float %49, float 0.000000e+00
  %2742 = select i1 %2739, float %50, float 0.000000e+00
  %2743 = select i1 %2739, float %51, float 1.000000e+00
  %2744 = select i1 %2739, float %52, float %73
  %2745 = select i1 %2739, float %53, float %74
  %2746 = add i32 %45, 332
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = lshr i32 %2748, 16
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = fmul fast float %2750, 0x3F50624DE0000000
  %2752 = add i32 %45, 136
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = lshr i32 %2754, 16
  %2756 = and i32 %2755, 255
  %2757 = lshr i32 %2754, 24
  %2758 = add i32 %45, 340
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = and i32 %2760, 65535
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = lshr i32 %2760, 16
  %2764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2763)  ; LegacyF16ToF32(value)
  %2765 = add i32 %45, 80
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = lshr i32 %2767, 22
  %2769 = shl nuw nsw i32 %2768, 5
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = shl i32 %2767, 4
  %2772 = and i32 %2771, 32752
  %2773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2772)  ; LegacyF16ToF32(value)
  %2774 = lshr i32 %2767, 7
  %2775 = and i32 %2774, 32752
  %2776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2775)  ; LegacyF16ToF32(value)
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 3
  %2779 = fmul fast float %2778, 1.000000e+03
  %2780 = fmul fast float %367, %2779
  %2781 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2782 = fadd fast float %2781, %357
  %2783 = fmul fast float %368, %2779
  %2784 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2785 = fadd fast float %2784, %359
  %2786 = fmul fast float %2751, %2779
  %2787 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2788 = fmul fast float %2787, 0x401921FB60000000
  %2789 = fadd fast float %2788, %2770
  %2790 = call float @dx.op.unary.f32(i32 13, float %2789)  ; Sin(value)
  %2791 = call float @dx.op.unary.f32(i32 12, float %2789)  ; Cos(value)
  %2792 = fsub fast float -0.000000e+00, %2790
  %2793 = fadd fast float %2744, -5.000000e-01
  %2794 = fadd fast float %2745, -5.000000e-01
  %2795 = fmul fast float %2762, %2793
  %2796 = fmul fast float %2764, %2794
  %2797 = fadd fast float %2795, 5.000000e-01
  %2798 = fadd fast float %2796, 5.000000e-01
  %2799 = fmul fast float %2773, %2797
  %2800 = fmul fast float %2776, %2798
  %2801 = fmul fast float %2791, %2799
  %2802 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2800, float %2801)  ; FMad(a,b,c)
  %2803 = fmul fast float %2790, %2799
  %2804 = call float @dx.op.tertiary.f32(i32 46, float %2791, float %2800, float %2803)  ; FMad(a,b,c)
  %2805 = fadd fast float %2782, %2802
  %2806 = fadd fast float %2785, %2804
  %2807 = icmp ugt i32 %2756, 1
  %2808 = icmp ugt i32 %2754, 33554431
  %2809 = or i1 %2808, %2807
  br i1 %2809, label %2810, label %2835

; <label>:2810                                    ; preds = %2737
  %2811 = add i32 %45, 276
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = lshr i32 %2813, 16
  %2815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2814)  ; LegacyF16ToF32(value)
  %2816 = fmul fast float %2778, %2815
  %2817 = call float @dx.op.unary.f32(i32 22, float %2816)  ; Frc(value)
  %2818 = mul nuw nsw i32 %2756, %2757
  %2819 = uitofp i32 %2818 to float
  %2820 = fmul fast float %2817, %2819
  %2821 = call float @dx.op.unary.f32(i32 27, float %2820)  ; Round_ni(value)
  %2822 = fptoui float %2821 to i32
  %2823 = urem i32 %2822, %2756
  %2824 = udiv i32 %2822, %2757
  %2825 = call float @dx.op.unary.f32(i32 22, float %2805)  ; Frc(value)
  %2826 = call float @dx.op.unary.f32(i32 22, float %2806)  ; Frc(value)
  %2827 = uitofp i32 %2823 to float
  %2828 = uitofp i32 %2824 to float
  %2829 = fadd fast float %2825, %2827
  %2830 = fadd fast float %2826, %2828
  %2831 = uitofp i32 %2756 to float
  %2832 = uitofp i32 %2757 to float
  %2833 = fdiv fast float %2829, %2831
  %2834 = fdiv fast float %2830, %2832
  br label %2835

; <label>:2835                                    ; preds = %2810, %2737
  %2836 = phi float [ %2833, %2810 ], [ %2805, %2737 ]
  %2837 = phi float [ %2834, %2810 ], [ %2806, %2737 ]
  %2838 = and i32 %2731, 16777216
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2949, label %2840

; <label>:2840                                    ; preds = %2835
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.CBufRet.f32 %2841, 2
  %2845 = fadd fast float %2842, %144
  %2846 = fadd fast float %2843, %145
  %2847 = fadd fast float %2844, %146
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = icmp eq i32 %46, 65535
  br i1 %2851, label %2946, label %2852

; <label>:2852                                    ; preds = %2840
  %2853 = lshr i32 %46, 1
  %2854 = shl i32 %2853, 2
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %46, 1
  %2858 = icmp ne i32 %2857, 0
  %2859 = lshr i32 %2856, 16
  %2860 = and i32 %2856, 65535
  %2861 = select i1 %2858, i32 %2859, i32 %2860
  %2862 = icmp eq i32 %2861, 65535
  br i1 %2862, label %2942, label %2863

; <label>:2863                                    ; preds = %2852
  %2864 = mul nuw nsw i32 %2861, 40
  %2865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.ResRet.f32 %2865, 1
  %2868 = extractvalue %dx.types.ResRet.f32 %2865, 2
  %2869 = add nuw nsw i32 %2864, 12
  %2870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2872 = extractvalue %dx.types.ResRet.f32 %2870, 1
  %2873 = extractvalue %dx.types.ResRet.f32 %2870, 2
  %2874 = add nuw nsw i32 %2864, 24
  %2875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = add nuw nsw i32 %2864, 36
  %2880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = fsub fast float %2845, %2866
  %2883 = fsub fast float %2846, %2867
  %2884 = fsub fast float %2847, %2868
  %2885 = fmul fast float %2881, %2882
  %2886 = fmul fast float %2881, %2883
  %2887 = fmul fast float %2881, %2884
  %2888 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = call float @dx.op.unary.f32(i32 27, float %2887)  ; Round_ni(value)
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = fmul fast float %2891, %2871
  %2895 = fmul fast float %2892, %2872
  %2896 = fmul fast float %2893, %2873
  %2897 = shl i32 %46, 2
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2903 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2904 = call float @dx.op.unary.f32(i32 22, float %2896)  ; Frc(value)
  %2905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2901, %dx.types.Handle %40, float %2902, float %2903, float %2904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2905, 2
  %2909 = fmul fast float %2906, 1.023000e+03
  %2910 = fmul fast float %2907, 1.023000e+03
  %2911 = fmul fast float %2908, 1.023000e+03
  %2912 = fadd fast float %2909, 5.000000e-01
  %2913 = fadd fast float %2910, 5.000000e-01
  %2914 = fadd fast float %2911, 5.000000e-01
  %2915 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2916 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2917 = call float @dx.op.unary.f32(i32 27, float %2914)  ; Round_ni(value)
  %2918 = fsub fast float %2885, %2888
  %2919 = fsub fast float %2886, %2889
  %2920 = fsub fast float %2887, %2890
  %2921 = fmul fast float %2918, 7.500000e-01
  %2922 = fmul fast float %2919, 7.500000e-01
  %2923 = fmul fast float %2920, 7.500000e-01
  %2924 = fadd fast float %2888, 1.250000e-01
  %2925 = fadd fast float %2924, %2921
  %2926 = fadd fast float %2925, %2915
  %2927 = fadd fast float %2889, 1.250000e-01
  %2928 = fadd fast float %2927, %2922
  %2929 = fadd fast float %2928, %2916
  %2930 = fadd fast float %2890, 1.250000e-01
  %2931 = fadd fast float %2930, %2923
  %2932 = fadd fast float %2931, %2917
  %2933 = fmul fast float %2926, %2876
  %2934 = fmul fast float %2929, %2877
  %2935 = fmul fast float %2932, %2878
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = add i32 %2937, 0
  %2939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2939, %dx.types.Handle %38, float %2933, float %2934, float %2935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  br label %2942

; <label>:2942                                    ; preds = %2863, %2852
  %2943 = phi float [ %2941, %2863 ], [ -1.000000e+00, %2852 ]
  %2944 = fadd fast float %2943, %2850
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  br label %2946

; <label>:2946                                    ; preds = %2942, %2840
  %2947 = phi float [ %2945, %2942 ], [ %2850, %2840 ]
  %2948 = fmul fast float %2947, %423
  br label %2949

; <label>:2949                                    ; preds = %2946, %2835
  %2950 = phi float [ %2948, %2946 ], [ %423, %2835 ]
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 256
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3001, label %2955

; <label>:2955                                    ; preds = %2949
  %2956 = add i32 %45, 452
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = add i32 %2958, 0
  %2960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2960, %dx.types.Handle %82, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = add i32 %45, 148
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = shl i32 %2965, 4
  %2967 = and i32 %2966, 32752
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = lshr i32 %2965, 7
  %2970 = and i32 %2969, 32752
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = fsub fast float 1.000000e+00, %2950
  %2973 = call float @dx.op.binary.f32(i32 35, float %2972, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2974 = bitcast float %2950 to i32
  %2975 = sitofp i32 %2974 to float
  %2976 = fadd fast float %2975, 0xC1CFBF8940000000
  %2977 = fmul fast float %2971, %2976
  %2978 = fadd fast float %2977, 0x41CFBF8940000000
  %2979 = fptosi float %2978 to i32
  %2980 = bitcast i32 %2979 to float
  %2981 = bitcast float %2973 to i32
  %2982 = sitofp i32 %2981 to float
  %2983 = fadd fast float %2982, 0xC1CFBF8940000000
  %2984 = fmul fast float %2983, %2971
  %2985 = fadd fast float %2984, 0x41CFBF8940000000
  %2986 = fptosi float %2985 to i32
  %2987 = bitcast i32 %2986 to float
  %2988 = fmul fast float %2980, %2968
  %2989 = fmul fast float %2987, %2968
  %2990 = fsub fast float %2973, %2988
  %2991 = fadd fast float %2989, %2973
  %2992 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2993 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  %2994 = fsub fast float %2962, %2992
  %2995 = fsub fast float %2993, %2992
  %2996 = bitcast float %2995 to i32
  %2997 = sub nsw i32 2129859010, %2996
  %2998 = bitcast i32 %2997 to float
  %2999 = fmul fast float %2998, %2994
  %3000 = call float @dx.op.unary.f32(i32 7, float %2999)  ; Saturate(value)
  br label %3001

; <label>:3001                                    ; preds = %2955, %2949
  %3002 = phi float [ %3000, %2955 ], [ %2950, %2949 ]
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 128
  %3006 = icmp eq i32 %3005, 0
  br i1 %3006, label %3023, label %3007

; <label>:3007                                    ; preds = %3001
  %3008 = add i32 %45, 436
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = add i32 %3010, 0
  %3012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3012, %dx.types.Handle %82, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 524288
  %3018 = icmp ne i32 %3017, 0
  %3019 = fcmp fast ogt float %3014, 0x3FE0101020000000
  %3020 = select i1 %3019, float 1.000000e+00, float 0.000000e+00
  %3021 = select i1 %3018, float %3020, float %3014
  %3022 = fmul fast float %3021, %3002
  br label %3023

; <label>:3023                                    ; preds = %3007, %3001
  %3024 = phi float [ %3022, %3007 ], [ %3002, %3001 ]
  %3025 = fcmp fast ult float %3024, 0x3F70101020000000
  br i1 %3025, label %3607, label %3026

; <label>:3026                                    ; preds = %3023
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 16
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3229, label %3031

; <label>:3031                                    ; preds = %3026
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %45, 388
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = add i32 %3036, 0
  %3038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3038, %dx.types.Handle %81, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.ResRet.f32 %3039, 1
  %3042 = extractvalue %dx.types.ResRet.f32 %3039, 2
  %3043 = extractvalue %dx.types.ResRet.f32 %3039, 3
  %3044 = and i32 %3033, 255
  %3045 = uitofp i32 %3044 to float
  %3046 = lshr i32 %3033, 8
  %3047 = and i32 %3046, 255
  %3048 = uitofp i32 %3047 to float
  %3049 = fmul fast float %3043, %3045
  %3050 = fadd fast float %3049, %3048
  %3051 = fmul fast float %3050, 0x3F70101000000000
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %3053, 512
  %3055 = icmp eq i32 %3054, 0
  br i1 %3055, label %3064, label %3056

; <label>:3056                                    ; preds = %3031
  %3057 = add i32 %45, 468
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = add i32 %3059, 0
  %3061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3061, %dx.types.Handle %82, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  br label %3064

; <label>:3064                                    ; preds = %3056, %3031
  %3065 = phi float [ %3063, %3056 ], [ 1.000000e+00, %3031 ]
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 33554432
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3176, label %3070

; <label>:3070                                    ; preds = %3064
  %3071 = add i32 %45, 272
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 65535
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = lshr i32 %3073, 16
  %3077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3076)  ; LegacyF16ToF32(value)
  %3078 = add i32 %45, 276
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 65535
  %3082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3081)  ; LegacyF16ToF32(value)
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 24
  %3086 = uitofp i32 %3085 to float
  %3087 = fmul fast float %3086, 0x3F70101020000000
  %3088 = and i32 %3084, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = fmul fast float %3089, 0x3F70101020000000
  %3091 = lshr i32 %3084, 8
  %3092 = and i32 %3091, 255
  %3093 = uitofp i32 %3092 to float
  %3094 = fmul fast float %3093, 0x3F70101020000000
  %3095 = lshr i32 %3084, 16
  %3096 = and i32 %3095, 255
  %3097 = uitofp i32 %3096 to float
  %3098 = fmul fast float %3097, 0x3F70101020000000
  %3099 = add i32 %45, 268
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = lshr i32 %3101, 24
  %3103 = uitofp i32 %3102 to float
  %3104 = fmul fast float %3103, 0x3F70101020000000
  %3105 = and i32 %3101, 255
  %3106 = uitofp i32 %3105 to float
  %3107 = fmul fast float %3106, 0x3F70101020000000
  %3108 = lshr i32 %3101, 8
  %3109 = and i32 %3108, 255
  %3110 = uitofp i32 %3109 to float
  %3111 = fmul fast float %3110, 0x3F70101020000000
  %3112 = lshr i32 %3101, 16
  %3113 = and i32 %3112, 255
  %3114 = uitofp i32 %3113 to float
  %3115 = fmul fast float %3114, 0x3F70101020000000
  %3116 = bitcast float %3040 to i32
  %3117 = ashr i32 %3116, 1
  %3118 = sub nsw i32 1597463174, %3117
  %3119 = bitcast i32 %3118 to float
  %3120 = fmul fast float %3040, 5.000000e-01
  %3121 = fmul fast float %3119, %3119
  %3122 = fmul fast float %3121, %3120
  %3123 = fsub fast float 1.500000e+00, %3122
  %3124 = fmul fast float %3119, %3040
  %3125 = fmul fast float %3124, %3123
  %3126 = bitcast float %3041 to i32
  %3127 = ashr i32 %3126, 1
  %3128 = sub nsw i32 1597463174, %3127
  %3129 = bitcast i32 %3128 to float
  %3130 = fmul fast float %3041, 5.000000e-01
  %3131 = fmul fast float %3129, %3129
  %3132 = fmul fast float %3131, %3130
  %3133 = fsub fast float 1.500000e+00, %3132
  %3134 = fmul fast float %3129, %3041
  %3135 = fmul fast float %3134, %3133
  %3136 = bitcast float %3042 to i32
  %3137 = ashr i32 %3136, 1
  %3138 = sub nsw i32 1597463174, %3137
  %3139 = bitcast i32 %3138 to float
  %3140 = fmul fast float %3042, 5.000000e-01
  %3141 = fmul fast float %3139, %3139
  %3142 = fmul fast float %3141, %3140
  %3143 = fsub fast float 1.500000e+00, %3142
  %3144 = fmul fast float %3139, %3042
  %3145 = fmul fast float %3144, %3143
  %3146 = fsub fast float %3125, %3107
  %3147 = fsub fast float %3135, %3111
  %3148 = fsub fast float %3145, %3115
  %3149 = fmul fast float %3146, %3075
  %3150 = fmul fast float %3147, %3077
  %3151 = fmul fast float %3148, %3082
  %3152 = fadd fast float %3149, %3090
  %3153 = fadd fast float %3150, %3094
  %3154 = fadd fast float %3151, %3098
  %3155 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3156 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3157 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3158 = fmul fast float %3155, %3155
  %3159 = fmul fast float %3156, %3156
  %3160 = fmul fast float %3157, %3157
  %3161 = fsub fast float %3158, %3040
  %3162 = fsub fast float %3159, %3041
  %3163 = fsub fast float %3160, %3042
  %3164 = fmul fast float %3161, %3065
  %3165 = fmul fast float %3162, %3065
  %3166 = fmul fast float %3163, %3065
  %3167 = fadd fast float %3164, %3040
  %3168 = fadd fast float %3165, %3041
  %3169 = fadd fast float %3166, %3042
  %3170 = fadd fast float %3087, %3051
  %3171 = fsub fast float %3170, %3104
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3173 = fsub fast float %3172, %3051
  %3174 = fmul fast float %3173, %3065
  %3175 = fadd fast float %3174, %3051
  br label %3229

; <label>:3176                                    ; preds = %3064
  %3177 = and i32 %3067, 134217728
  %3178 = icmp eq i32 %3177, 0
  br i1 %3178, label %3213, label %3179

; <label>:3179                                    ; preds = %3176
  %3180 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3181 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3182 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fmul fast float %3183, %3065
  %3187 = fmul fast float %3184, %3065
  %3188 = fmul fast float %3185, %3065
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = call float @dx.op.unary.f32(i32 24, float %3040)  ; Sqrt(value)
  %3193 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3194 = call float @dx.op.unary.f32(i32 24, float %3042)  ; Sqrt(value)
  %3195 = fmul fast float %3189, 2.000000e+00
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3196, %3192
  %3198 = fadd fast float %3197, %3195
  %3199 = fmul fast float %3198, %3192
  %3200 = fmul fast float %3190, 2.000000e+00
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3201, %3193
  %3203 = fadd fast float %3202, %3200
  %3204 = fmul fast float %3203, %3193
  %3205 = fmul fast float %3191, 2.000000e+00
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3206, %3194
  %3208 = fadd fast float %3207, %3205
  %3209 = fmul fast float %3208, %3194
  %3210 = fmul fast float %3199, %3199
  %3211 = fmul fast float %3204, %3204
  %3212 = fmul fast float %3209, %3209
  br label %3229

; <label>:3213                                    ; preds = %3176
  %3214 = fmul fast float %344, %344
  %3215 = fmul fast float %348, %348
  %3216 = fmul fast float %352, %352
  %3217 = fadd fast float %3214, -1.000000e+00
  %3218 = fadd fast float %3215, -1.000000e+00
  %3219 = fadd fast float %3216, -1.000000e+00
  %3220 = fmul fast float %3065, %3217
  %3221 = fmul fast float %3065, %3218
  %3222 = fmul fast float %3065, %3219
  %3223 = fadd fast float %3220, 1.000000e+00
  %3224 = fadd fast float %3221, 1.000000e+00
  %3225 = fadd fast float %3222, 1.000000e+00
  %3226 = fmul fast float %3223, %3040
  %3227 = fmul fast float %3224, %3041
  %3228 = fmul fast float %3225, %3042
  br label %3229

; <label>:3229                                    ; preds = %3213, %3179, %3070, %3026
  %3230 = phi float [ %3175, %3070 ], [ %3051, %3179 ], [ %3051, %3213 ], [ 0x3FA23C0BE0000000, %3026 ]
  %3231 = phi float [ %3167, %3070 ], [ %3210, %3179 ], [ %3226, %3213 ], [ 1.000000e+00, %3026 ]
  %3232 = phi float [ %3168, %3070 ], [ %3211, %3179 ], [ %3227, %3213 ], [ 1.000000e+00, %3026 ]
  %3233 = phi float [ %3169, %3070 ], [ %3212, %3179 ], [ %3228, %3213 ], [ 1.000000e+00, %3026 ]
  %3234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.i32 %3234, 1
  %3236 = and i32 %3235, 1
  %3237 = icmp ne i32 %3236, 0
  %3238 = add i32 %45, 356
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 32
  %3242 = icmp ne i32 %3241, 0
  %3243 = and i1 %3237, %3242
  %3244 = select i1 %3243, float 1.000000e+00, float %3231
  %3245 = select i1 %3243, float 0x3FD3333340000000, float %3232
  %3246 = select i1 %3243, float 0x3FD3333340000000, float %3233
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = and i32 %3248, 32
  %3250 = icmp eq i32 %3249, 0
  br i1 %3250, label %3323, label %3251

; <label>:3251                                    ; preds = %3229
  %3252 = add i32 %45, 140
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = add i32 %45, 404
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = add i32 %3257, 0
  %3259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3259, %dx.types.Handle %81, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = extractvalue %dx.types.ResRet.f32 %3260, 3
  %3265 = and i32 %3254, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3254, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = lshr i32 %3254, 16
  %3271 = and i32 %3270, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = fmul fast float %3272, 0x3F70101000000000
  %3274 = fmul fast float %3261, %3266
  %3275 = fadd fast float %3274, %3269
  %3276 = fmul fast float %3275, 0x3F70101000000000
  %3277 = fadd fast float %3262, -5.000000e-01
  %3278 = fadd fast float %3264, -5.000000e-01
  %3279 = fmul fast float %3277, %3273
  %3280 = fmul fast float %3278, %3273
  %3281 = fadd fast float %3279, 5.000000e-01
  %3282 = fadd fast float %3280, 5.000000e-01
  %3283 = fmul fast float %3281, 2.000000e+00
  %3284 = fadd fast float %3283, -1.000000e+00
  %3285 = fmul fast float %3282, 2.000000e+00
  %3286 = fadd fast float %3285, -1.000000e+00
  %3287 = fadd fast float %3284, %3286
  %3288 = fmul fast float %3287, 5.000000e-01
  %3289 = fsub fast float %3284, %3286
  %3290 = fmul fast float %3289, 5.000000e-01
  %3291 = call float @dx.op.unary.f32(i32 6, float %3288)  ; FAbs(value)
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = call float @dx.op.unary.f32(i32 6, float %3290)  ; FAbs(value)
  %3294 = fsub fast float %3292, %3293
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3290, float %3294, float %3288, float %3290, float %3294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = call float @dx.op.unary.f32(i32 25, float %3295)  ; Rsqrt(value)
  %3297 = fmul fast float %3288, %3296
  %3298 = fmul fast float %3290, %3296
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = and i32 %3300, 67108864
  %3302 = icmp eq i32 %3301, 0
  br i1 %3302, label %3319, label %3303

; <label>:3303                                    ; preds = %3251
  %3304 = add i32 %45, 328
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 65535
  %3308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3307)  ; LegacyF16ToF32(value)
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 65535
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = lshr i32 %3306, 16
  %3314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3313)  ; LegacyF16ToF32(value)
  %3315 = fsub fast float %3276, %3314
  %3316 = fmul fast float %3315, %3308
  %3317 = fadd fast float %3316, %3312
  %3318 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  br label %3319

; <label>:3319                                    ; preds = %3303, %3251
  %3320 = phi float [ %3318, %3303 ], [ %3276, %3251 ]
  %3321 = call float @dx.op.dot2.f32(i32 54, float %3297, float %3298, float %2740, float %2741)  ; Dot2(ax,ay,bx,by)
  %3322 = call float @dx.op.dot2.f32(i32 54, float %3297, float %3298, float %2742, float %2743)  ; Dot2(ax,ay,bx,by)
  br label %3323

; <label>:3323                                    ; preds = %3319, %3229
  %3324 = phi float [ %3320, %3319 ], [ 0x3FD6666660000000, %3229 ]
  %3325 = phi float [ %3321, %3319 ], [ 0.000000e+00, %3229 ]
  %3326 = phi float [ %3322, %3319 ], [ 0.000000e+00, %3229 ]
  %3327 = phi float [ %3263, %3319 ], [ 1.000000e+00, %3229 ]
  %3328 = add i32 %45, 208
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = lshr i32 %3330, 22
  %3332 = shl nuw nsw i32 %3331, 5
  %3333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3332)  ; LegacyF16ToF32(value)
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = and i32 %3335, 64
  %3337 = icmp eq i32 %3336, 0
  br i1 %3337, label %3371, label %3338

; <label>:3338                                    ; preds = %3323
  %3339 = add i32 %45, 420
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = add i32 %3341, 0
  %3343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = and i32 %3345, 131072
  %3347 = icmp eq i32 %3346, 0
  %3348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3343, %dx.types.Handle %81, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = fmul fast float %3349, %332
  %3353 = fmul fast float %3350, %335
  %3354 = fmul fast float %3351, %338
  br i1 %3347, label %3361, label %3355

; <label>:3355                                    ; preds = %3338
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3358 = fmul fast float %3357, %3352
  %3359 = fmul fast float %3357, %3353
  %3360 = fmul fast float %3357, %3354
  br label %3361

; <label>:3361                                    ; preds = %3355, %3338
  %3362 = phi float [ %3358, %3355 ], [ %3352, %3338 ]
  %3363 = phi float [ %3359, %3355 ], [ %3353, %3338 ]
  %3364 = phi float [ %3360, %3355 ], [ %3354, %3338 ]
  %3365 = fmul fast float %3362, %3333
  %3366 = select i1 %186, float %3365, float %3362
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3363, float %3364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = select i1 %186, float 0.000000e+00, float %3362
  %3369 = select i1 %186, float %3367, float %3363
  %3370 = select i1 %186, float 0.000000e+00, float %3364
  br label %3371

; <label>:3371                                    ; preds = %3361, %3323
  %3372 = phi float [ %3368, %3361 ], [ 0.000000e+00, %3323 ]
  %3373 = phi float [ %3369, %3361 ], [ 0.000000e+00, %3323 ]
  %3374 = phi float [ %3370, %3361 ], [ 0.000000e+00, %3323 ]
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 26624
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3402, label %3379

; <label>:3379                                    ; preds = %3371
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 16384
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3402, label %3384

; <label>:3384                                    ; preds = %3379
  %3385 = and i32 %3381, 1048576
  %3386 = icmp ne i32 %3385, 0
  %3387 = add i32 %45, 484
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = add i32 %3389, 0
  %3391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3391, %dx.types.Handle %82, float %2836, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = add i32 %45, 144
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = lshr i32 %3396, 24
  %3398 = uitofp i32 %3397 to float
  %3399 = fmul fast float %3393, 0x3F70101020000000
  %3400 = select i1 %3386, float 0x3F70101020000000, float %3399
  %3401 = fmul fast float %3400, %3398
  br label %3402

; <label>:3402                                    ; preds = %3384, %3379, %3371
  %3403 = phi float [ %3401, %3384 ], [ 0.000000e+00, %3379 ], [ 0.000000e+00, %3371 ]
  %3404 = add i32 %45, 144
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = lshr i32 %3406, 8
  %3410 = and i32 %3409, 255
  %3411 = uitofp i32 %3410 to float
  %3412 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3413 = fmul fast float %3411, %3412
  %3414 = fadd fast float %3413, %3408
  %3415 = fmul fast float %3414, 0x3F70101020000000
  %3416 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  br i1 %2728, label %3417, label %3425

; <label>:3417                                    ; preds = %3402
  %3418 = fsub fast float 1.000000e+00, %3024
  %3419 = fmul fast float %3418, %2716
  %3420 = fmul fast float %3418, %2717
  %3421 = fmul fast float %3418, %2718
  %3422 = fmul fast float %3418, %2719
  %3423 = fmul fast float %3418, %2720
  %3424 = fmul fast float %3418, %2721
  br label %3425

; <label>:3425                                    ; preds = %3417, %3402
  %3426 = phi float [ %3419, %3417 ], [ %2716, %3402 ]
  %3427 = phi float [ %3420, %3417 ], [ %2717, %3402 ]
  %3428 = phi float [ %3421, %3417 ], [ %2718, %3402 ]
  %3429 = phi float [ %3422, %3417 ], [ %2719, %3402 ]
  %3430 = phi float [ %3423, %3417 ], [ %2720, %3402 ]
  %3431 = phi float [ %3424, %3417 ], [ %2721, %3402 ]
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 3
  %3435 = icmp eq i32 %3434, 3
  br i1 %3435, label %3514, label %3436

; <label>:3436                                    ; preds = %3425
  %3437 = and i32 %3433, 16
  %3438 = icmp ne i32 %3437, 0
  %3439 = select i1 %3438, float %3024, float 0.000000e+00
  %3440 = icmp eq i32 %3434, 0
  br i1 %3440, label %3441, label %3469

; <label>:3441                                    ; preds = %3436
  %3442 = and i32 %3433, 64
  %3443 = icmp ne i32 %3442, 0
  %3444 = select i1 %3443, float %3024, float 0.000000e+00
  %3445 = fsub fast float %3244, %3426
  %3446 = fsub fast float %3245, %3427
  %3447 = fsub fast float %3246, %3428
  %3448 = fmul fast float %3439, %3445
  %3449 = fmul fast float %3439, %3446
  %3450 = fmul fast float %3439, %3447
  %3451 = fadd fast float %3448, %3426
  %3452 = fadd fast float %3449, %3427
  %3453 = fadd fast float %3450, %3428
  %3454 = fsub fast float %3230, %2722
  %3455 = fmul fast float %3439, %3454
  %3456 = fadd fast float %3455, %2722
  %3457 = fsub fast float %3372, %3429
  %3458 = fsub fast float %3373, %3430
  %3459 = fsub fast float %3374, %3431
  %3460 = fmul fast float %3444, %3457
  %3461 = fmul fast float %3444, %3458
  %3462 = fmul fast float %3444, %3459
  %3463 = fadd fast float %3460, %3429
  %3464 = fadd fast float %3461, %3430
  %3465 = fadd fast float %3462, %3431
  %3466 = fsub fast float %3416, %2726
  %3467 = fmul fast float %3439, %3466
  %3468 = fadd fast float %3467, %2726
  br label %3514

; <label>:3469                                    ; preds = %3436
  %3470 = icmp eq i32 %3434, 1
  br i1 %3470, label %3471, label %3484

; <label>:3471                                    ; preds = %3469
  %3472 = fadd fast float %3244, -1.000000e+00
  %3473 = fadd fast float %3245, -1.000000e+00
  %3474 = fadd fast float %3246, -1.000000e+00
  %3475 = fmul fast float %3439, %3472
  %3476 = fmul fast float %3439, %3473
  %3477 = fmul fast float %3439, %3474
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fadd fast float %3476, 1.000000e+00
  %3480 = fadd fast float %3477, 1.000000e+00
  %3481 = fmul fast float %3478, %3426
  %3482 = fmul fast float %3479, %3427
  %3483 = fmul fast float %3480, %3428
  br label %3514

; <label>:3484                                    ; preds = %3469
  %3485 = icmp eq i32 %3434, 2
  br i1 %3485, label %3486, label %3514

; <label>:3486                                    ; preds = %3484
  %3487 = call float @dx.op.unary.f32(i32 24, float %3244)  ; Sqrt(value)
  %3488 = call float @dx.op.unary.f32(i32 24, float %3245)  ; Sqrt(value)
  %3489 = call float @dx.op.unary.f32(i32 24, float %3246)  ; Sqrt(value)
  %3490 = fadd fast float %3487, -5.000000e-01
  %3491 = fadd fast float %3488, -5.000000e-01
  %3492 = fadd fast float %3489, -5.000000e-01
  %3493 = fmul fast float %3490, %3439
  %3494 = fmul fast float %3491, %3439
  %3495 = fmul fast float %3492, %3439
  %3496 = fadd fast float %3493, 5.000000e-01
  %3497 = fadd fast float %3494, 5.000000e-01
  %3498 = fadd fast float %3495, 5.000000e-01
  %3499 = fmul fast float %3496, 2.000000e+00
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = fmul fast float %3500, %3426
  %3502 = fadd fast float %3501, %3499
  %3503 = fmul fast float %3502, %3426
  %3504 = fmul fast float %3497, 2.000000e+00
  %3505 = fsub fast float 1.000000e+00, %3504
  %3506 = fmul fast float %3505, %3427
  %3507 = fadd fast float %3506, %3504
  %3508 = fmul fast float %3507, %3427
  %3509 = fmul fast float %3498, 2.000000e+00
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = fmul fast float %3510, %3428
  %3512 = fadd fast float %3511, %3509
  %3513 = fmul fast float %3512, %3428
  br label %3514

; <label>:3514                                    ; preds = %3486, %3484, %3471, %3441, %3425
  %3515 = phi float [ %3426, %3425 ], [ %3503, %3486 ], [ %3426, %3484 ], [ %3481, %3471 ], [ %3451, %3441 ]
  %3516 = phi float [ %3427, %3425 ], [ %3508, %3486 ], [ %3427, %3484 ], [ %3482, %3471 ], [ %3452, %3441 ]
  %3517 = phi float [ %3428, %3425 ], [ %3513, %3486 ], [ %3428, %3484 ], [ %3483, %3471 ], [ %3453, %3441 ]
  %3518 = phi float [ %3429, %3425 ], [ %3429, %3486 ], [ %3429, %3484 ], [ %3429, %3471 ], [ %3463, %3441 ]
  %3519 = phi float [ %3430, %3425 ], [ %3430, %3486 ], [ %3430, %3484 ], [ %3430, %3471 ], [ %3464, %3441 ]
  %3520 = phi float [ %3431, %3425 ], [ %3431, %3486 ], [ %3431, %3484 ], [ %3431, %3471 ], [ %3465, %3441 ]
  %3521 = phi float [ %2722, %3425 ], [ %2722, %3486 ], [ %2722, %3484 ], [ %2722, %3471 ], [ %3456, %3441 ]
  %3522 = phi float [ %2726, %3425 ], [ %2726, %3486 ], [ %2726, %3484 ], [ %2726, %3471 ], [ %3468, %3441 ]
  %3523 = and i32 %3433, 12
  %3524 = icmp eq i32 %3523, 12
  br i1 %3524, label %3607, label %3525

; <label>:3525                                    ; preds = %3514
  %3526 = and i32 %3433, 2097184
  %3527 = icmp eq i32 %3526, 2097184
  %3528 = select i1 %3527, float %3024, float 0.000000e+00
  %3529 = and i32 %3433, 4194336
  %3530 = icmp eq i32 %3529, 4194336
  %3531 = select i1 %3530, float %3024, float 0.000000e+00
  %3532 = and i32 %3433, 8388640
  %3533 = icmp eq i32 %3532, 8388640
  %3534 = select i1 %3533, float %3024, float 0.000000e+00
  %3535 = and i32 %3433, 16384
  %3536 = icmp ne i32 %3535, 0
  %3537 = select i1 %3536, float %3024, float 0.000000e+00
  %3538 = icmp eq i32 %3523, 0
  br i1 %3538, label %3539, label %3555

; <label>:3539                                    ; preds = %3525
  %3540 = fsub fast float %3325, %2714
  %3541 = fsub fast float %3326, %2715
  %3542 = fmul fast float %3528, %3540
  %3543 = fmul fast float %3528, %3541
  %3544 = fadd fast float %3542, %2714
  %3545 = fadd fast float %3543, %2715
  %3546 = fsub fast float %3327, %2724
  %3547 = fmul fast float %3531, %3546
  %3548 = fadd fast float %3547, %2724
  %3549 = fsub fast float %3324, %2723
  %3550 = fmul fast float %3534, %3549
  %3551 = fadd fast float %3550, %2723
  %3552 = fsub fast float %3403, %2725
  %3553 = fmul fast float %3537, %3552
  %3554 = fadd fast float %3553, %2725
  br label %3607

; <label>:3555                                    ; preds = %3525
  %3556 = icmp eq i32 %3523, 4
  br i1 %3556, label %3557, label %3591

; <label>:3557                                    ; preds = %3555
  %3558 = fmul fast float %3528, %3325
  %3559 = fmul fast float %3528, %3326
  %3560 = fadd fast float %3558, %2714
  %3561 = fadd fast float %3559, %2715
  %3562 = call float @dx.op.binary.f32(i32 36, float %2724, float %3327)  ; FMin(a,b)
  %3563 = fsub fast float %3562, %2724
  %3564 = fmul fast float %3563, %3531
  %3565 = fadd fast float %3564, %2724
  %3566 = fadd fast float %3324, %2723
  %3567 = fmul fast float %3566, 0x3FF337FAE0000000
  %3568 = fmul fast float %2723, %2723
  %3569 = fmul fast float %3324, %3324
  %3570 = fadd fast float %3569, %3568
  %3571 = fmul fast float %3570, 0x3FE5152B00000000
  %3572 = fmul fast float %2723, 0xBFCC1F85E0000000
  %3573 = fmul fast float %3572, %3324
  %3574 = fadd fast float %3573, 0xBFE1363700000000
  %3575 = fadd fast float %3574, %3567
  %3576 = fsub fast float %3575, %3571
  %3577 = fmul fast float %3566, 0x3FBA6F0D00000000
  %3578 = fmul fast float %3570, 0x3FD0432880000000
  %3579 = fmul fast float %2723, 0xBFEF110800000000
  %3580 = fmul fast float %3579, %3324
  %3581 = fadd fast float %3580, 1.000000e+00
  %3582 = fsub fast float %3581, %3577
  %3583 = fadd fast float %3582, %3578
  %3584 = fdiv fast float %3576, %3583
  %3585 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3586 = fsub fast float %3585, %2723
  %3587 = fmul fast float %3586, %3534
  %3588 = fadd fast float %3587, %2723
  %3589 = fmul fast float %3537, %3403
  %3590 = fadd fast float %3589, %2725
  br label %3607

; <label>:3591                                    ; preds = %3555
  %3592 = icmp eq i32 %3523, 8
  br i1 %3592, label %3593, label %3607

; <label>:3593                                    ; preds = %3591
  %3594 = fmul fast float %3528, %3325
  %3595 = fmul fast float %3528, %3326
  %3596 = fadd fast float %3594, %2714
  %3597 = fadd fast float %3595, %2715
  %3598 = call float @dx.op.binary.f32(i32 36, float %2724, float %3327)  ; FMin(a,b)
  %3599 = fsub fast float %3598, %2724
  %3600 = fmul fast float %3599, %3531
  %3601 = fadd fast float %3600, %2724
  %3602 = fsub fast float %3324, %2723
  %3603 = fmul fast float %3534, %3602
  %3604 = fadd fast float %3603, %2723
  %3605 = fmul fast float %3537, %3403
  %3606 = fadd fast float %3605, %2725
  br label %3607

; <label>:3607                                    ; preds = %3593, %3591, %3557, %3539, %3514, %3023, %2727, %2713
  %3608 = phi float [ %2714, %3514 ], [ %2714, %3023 ], [ %2714, %2713 ], [ %2714, %2727 ], [ %3544, %3539 ], [ %3560, %3557 ], [ %2714, %3591 ], [ %3596, %3593 ]
  %3609 = phi float [ %2715, %3514 ], [ %2715, %3023 ], [ %2715, %2713 ], [ %2715, %2727 ], [ %3545, %3539 ], [ %3561, %3557 ], [ %2715, %3591 ], [ %3597, %3593 ]
  %3610 = phi float [ %3515, %3514 ], [ %2716, %3023 ], [ %2716, %2713 ], [ %2716, %2727 ], [ %3515, %3539 ], [ %3515, %3557 ], [ %3515, %3591 ], [ %3515, %3593 ]
  %3611 = phi float [ %3516, %3514 ], [ %2717, %3023 ], [ %2717, %2713 ], [ %2717, %2727 ], [ %3516, %3539 ], [ %3516, %3557 ], [ %3516, %3591 ], [ %3516, %3593 ]
  %3612 = phi float [ %3517, %3514 ], [ %2718, %3023 ], [ %2718, %2713 ], [ %2718, %2727 ], [ %3517, %3539 ], [ %3517, %3557 ], [ %3517, %3591 ], [ %3517, %3593 ]
  %3613 = phi float [ %3518, %3514 ], [ %2719, %3023 ], [ %2719, %2713 ], [ %2719, %2727 ], [ %3518, %3539 ], [ %3518, %3557 ], [ %3518, %3591 ], [ %3518, %3593 ]
  %3614 = phi float [ %3519, %3514 ], [ %2720, %3023 ], [ %2720, %2713 ], [ %2720, %2727 ], [ %3519, %3539 ], [ %3519, %3557 ], [ %3519, %3591 ], [ %3519, %3593 ]
  %3615 = phi float [ %3520, %3514 ], [ %2721, %3023 ], [ %2721, %2713 ], [ %2721, %2727 ], [ %3520, %3539 ], [ %3520, %3557 ], [ %3520, %3591 ], [ %3520, %3593 ]
  %3616 = phi float [ %3521, %3514 ], [ %2722, %3023 ], [ %2722, %2713 ], [ %2722, %2727 ], [ %3521, %3539 ], [ %3521, %3557 ], [ %3521, %3591 ], [ %3521, %3593 ]
  %3617 = phi float [ %2723, %3514 ], [ %2723, %3023 ], [ %2723, %2713 ], [ %2723, %2727 ], [ %3551, %3539 ], [ %3588, %3557 ], [ %2723, %3591 ], [ %3604, %3593 ]
  %3618 = phi float [ %2724, %3514 ], [ %2724, %3023 ], [ %2724, %2713 ], [ %2724, %2727 ], [ %3548, %3539 ], [ %3565, %3557 ], [ %2724, %3591 ], [ %3601, %3593 ]
  %3619 = phi float [ %2725, %3514 ], [ %2725, %3023 ], [ %2725, %2713 ], [ %2725, %2727 ], [ %3554, %3539 ], [ %3590, %3557 ], [ %2725, %3591 ], [ %3606, %3593 ]
  %3620 = phi float [ %3522, %3514 ], [ %2726, %3023 ], [ %2726, %2713 ], [ %2726, %2727 ], [ %3522, %3539 ], [ %3522, %3557 ], [ %3522, %3591 ], [ %3522, %3593 ]
  %3621 = add i32 %45, 360
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = bitcast i32 %3623 to float
  %3625 = fcmp fast oge float %3624, 0.000000e+00
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3628 = select i1 %3625, float %3624, float %3627
  %3629 = call float @dx.op.dot2.f32(i32 54, float %3608, float %3609, float %3608, float %3609)  ; Dot2(ax,ay,bx,by)
  %3630 = fmul fast float %3629, 0x3FE3333340000000
  %3631 = fsub fast float 1.000000e+00, %3630
  %3632 = call float @dx.op.dot3.f32(i32 55, float %3608, float %3609, float %3631, float %3608, float %3609, float %3631)  ; Dot3(ax,ay,az,bx,by,bz)
  %3633 = call float @dx.op.unary.f32(i32 25, float %3632)  ; Rsqrt(value)
  %3634 = fmul fast float %3633, %3608
  %3635 = fmul fast float %3633, %3609
  %3636 = fmul fast float %3631, %3633
  %3637 = fmul fast float %3636, %94
  %3638 = fmul fast float %3636, %96
  %3639 = fmul fast float %3636, %98
  %3640 = fmul fast float %3634, %66
  %3641 = fmul fast float %3634, %67
  %3642 = fmul fast float %3634, %68
  %3643 = fadd fast float %3637, %3640
  %3644 = fadd fast float %3638, %3641
  %3645 = fadd fast float %3639, %3642
  %3646 = fmul fast float %108, %3635
  %3647 = fmul fast float %109, %3635
  %3648 = fmul fast float %110, %3635
  %3649 = fadd fast float %3643, %3646
  %3650 = fadd fast float %3644, %3647
  %3651 = fadd fast float %3645, %3648
  %3652 = call float @dx.op.dot3.f32(i32 55, float %3649, float %3650, float %3651, float %3649, float %3650, float %3651)  ; Dot3(ax,ay,az,bx,by,bz)
  %3653 = call float @dx.op.unary.f32(i32 25, float %3652)  ; Rsqrt(value)
  %3654 = fmul fast float %3649, %3653
  %3655 = fmul fast float %3650, %3653
  %3656 = fmul fast float %3651, %3653
  %3657 = and i32 %47, 1
  %3658 = icmp eq i32 %3657, 0
  br i1 %3658, label %3659, label %4167

; <label>:3659                                    ; preds = %3607
  %3660 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3661 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3662 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3663 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3664 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3665 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3666 = fadd fast float %3660, %144
  %3667 = fadd fast float %3661, %145
  %3668 = fadd fast float %3662, %146
  %3669 = fadd fast float %3663, %144
  %3670 = fadd fast float %3664, %145
  %3671 = fadd fast float %3665, %146
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.CBufRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3678 = extractvalue %dx.types.CBufRet.f32 %3676, 3
  %3679 = fmul fast float %3673, %85
  %3680 = fmul fast float %3679, %3677
  %3681 = fmul fast float %3674, %86
  %3682 = fmul fast float %3681, %3678
  %3683 = fptoui float %3680 to i32
  %3684 = fptoui float %3682 to i32
  %3685 = fadd fast float %3673, -1.000000e+00
  %3686 = fadd fast float %3674, -1.000000e+00
  %3687 = fptoui float %3685 to i32
  %3688 = fptoui float %3686 to i32
  %3689 = call i32 @dx.op.binary.i32(i32 40, i32 %3683, i32 %3687)  ; UMin(a,b)
  %3690 = call i32 @dx.op.binary.i32(i32 40, i32 %3684, i32 %3688)  ; UMin(a,b)
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 2
  %3693 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3694 = fmul fast float %3692, %80
  %3695 = fsub fast float %3694, %3693
  %3696 = fadd fast float %3675, -1.000000e+00
  %3697 = call float @dx.op.binary.f32(i32 36, float %3695, float %3696)  ; FMin(a,b)
  %3698 = fptoui float %3697 to i32
  %3699 = fptoui float %3673 to i32
  %3700 = fptoui float %3674 to i32
  %3701 = mul i32 %3698, %3700
  %3702 = add i32 %3701, %3690
  %3703 = mul i32 %3702, %3699
  %3704 = add i32 %3703, %3689
  %3705 = shl i32 %3704, 2
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = and i32 %3707, 1023
  %3709 = lshr i32 %3707, 10
  %3710 = icmp eq i32 %3708, 0
  br i1 %3710, label %4136, label %3711

; <label>:3711                                    ; preds = %3659
  %3712 = and i32 %3707, 1023
  br label %3713

; <label>:3713                                    ; preds = %3839, %3711
  %3714 = phi i32 [ %3789, %3839 ], [ 0, %3711 ]
  %3715 = phi float [ %3840, %3839 ], [ 0.000000e+00, %3711 ]
  %3716 = phi float [ %3841, %3839 ], [ %3628, %3711 ]
  %3717 = phi float [ %3842, %3839 ], [ %3620, %3711 ]
  %3718 = phi float [ %3843, %3839 ], [ %3619, %3711 ]
  %3719 = phi float [ %3844, %3839 ], [ 0.000000e+00, %3711 ]
  %3720 = phi float [ %3845, %3839 ], [ %3613, %3711 ]
  %3721 = phi float [ %3846, %3839 ], [ %3614, %3711 ]
  %3722 = phi float [ %3847, %3839 ], [ %3615, %3711 ]
  %3723 = phi float [ %3848, %3839 ], [ %3654, %3711 ]
  %3724 = phi float [ %3849, %3839 ], [ %3655, %3711 ]
  %3725 = phi float [ %3850, %3839 ], [ %3656, %3711 ]
  %3726 = phi float [ %3851, %3839 ], [ %3618, %3711 ]
  %3727 = phi float [ %3852, %3839 ], [ %3617, %3711 ]
  %3728 = phi float [ %3853, %3839 ], [ 0.000000e+00, %3711 ]
  %3729 = phi float [ %3854, %3839 ], [ %3616, %3711 ]
  %3730 = phi float [ %3855, %3839 ], [ %3610, %3711 ]
  %3731 = phi float [ %3856, %3839 ], [ %3611, %3711 ]
  %3732 = phi float [ %3857, %3839 ], [ %3612, %3711 ]
  %3733 = add nuw nsw i32 %3714, %3709
  %3734 = shl i32 %3733, 2
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = shl i32 %3736, 8
  %3738 = or i32 %3737, 48
  %3739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.ResRet.f32 %3739, 1
  %3742 = extractvalue %dx.types.ResRet.f32 %3739, 2
  %3743 = extractvalue %dx.types.ResRet.f32 %3739, 3
  %3744 = or i32 %3737, 64
  %3745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.i32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.i32 %3745, 1
  %3748 = or i32 %3737, 80
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 2
  %3751 = extractvalue %dx.types.ResRet.f32 %3749, 3
  %3752 = or i32 %3737, 96
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.ResRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.ResRet.f32 %3753, 2
  %3757 = extractvalue %dx.types.ResRet.f32 %3753, 3
  %3758 = or i32 %3737, 112
  %3759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.f32 %3759, 2
  %3761 = or i32 %3737, 128
  %3762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = extractvalue %dx.types.ResRet.f32 %3762, 3
  %3767 = or i32 %3737, 144
  %3768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3772 = extractvalue %dx.types.ResRet.f32 %3768, 3
  %3773 = or i32 %3737, 160
  %3774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3779 = or i32 %3737, 192
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = or i32 %3737, 208
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = or i32 %3737, 248
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = add nuw nsw i32 %3714, 1
  %3790 = bitcast float %3743 to i32
  %3791 = and i32 %3790, 512
  %3792 = icmp eq i32 %3791, 0
  %3793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = call float @dx.op.dot4.f32(i32 56, float %3794, float %3795, float %3796, float %3797, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3799 = or i32 %3737, 16
  %3800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3805 = call float @dx.op.dot4.f32(i32 56, float %3801, float %3802, float %3803, float %3804, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3806 = or i32 %3737, 32
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3812 = call float @dx.op.dot4.f32(i32 56, float %3808, float %3809, float %3810, float %3811, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3813 = call float @dx.op.unary.f32(i32 27, float %3798)  ; Round_ni(value)
  %3814 = call float @dx.op.unary.f32(i32 6, float %3813)  ; FAbs(value)
  %3815 = call float @dx.op.unary.f32(i32 27, float %3805)  ; Round_ni(value)
  %3816 = call float @dx.op.unary.f32(i32 6, float %3815)  ; FAbs(value)
  %3817 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3818 = call float @dx.op.unary.f32(i32 27, float %3817)  ; Round_ni(value)
  %3819 = fadd fast float %3816, %3814
  %3820 = fadd fast float %3819, %3818
  %3821 = fcmp fast oeq float %3820, 0.000000e+00
  %3822 = call float @dx.op.dot4.f32(i32 56, float %3794, float %3795, float %3796, float %3797, float %3666, float %3667, float %3668, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3823 = call float @dx.op.dot4.f32(i32 56, float %3801, float %3802, float %3803, float %3804, float %3666, float %3667, float %3668, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3824 = call float @dx.op.dot4.f32(i32 56, float %3794, float %3795, float %3796, float %3797, float %3669, float %3670, float %3671, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3825 = call float @dx.op.dot4.f32(i32 56, float %3801, float %3802, float %3803, float %3804, float %3669, float %3670, float %3671, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3826 = fsub fast float %3822, %3798
  %3827 = fsub fast float %3824, %3798
  %3828 = fsub fast float %3823, %3805
  %3829 = fsub fast float %3825, %3805
  %3830 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 2
  %3833 = fadd fast float %3832, %3830
  %3834 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3836 = fcmp fast ogt float %3834, %3835
  %3837 = and i1 %3821, %3836
  %3838 = and i1 %3792, %3837
  br i1 %3838, label %3859, label %3839

; <label>:3839                                    ; preds = %4122, %3940, %3859, %3713
  %3840 = phi float [ %3715, %3859 ], [ %3943, %3940 ], [ %3943, %4122 ], [ %3715, %3713 ]
  %3841 = phi float [ %3716, %3859 ], [ %3716, %3940 ], [ %4097, %4122 ], [ %3716, %3713 ]
  %3842 = phi float [ %3717, %3859 ], [ %3717, %3940 ], [ %4095, %4122 ], [ %3717, %3713 ]
  %3843 = phi float [ %3718, %3859 ], [ %3718, %3940 ], [ %4067, %4122 ], [ %3718, %3713 ]
  %3844 = phi float [ %3719, %3859 ], [ %3719, %3940 ], [ %4065, %4122 ], [ %3719, %3713 ]
  %3845 = phi float [ %3720, %3859 ], [ %3720, %3940 ], [ %4132, %4122 ], [ %3720, %3713 ]
  %3846 = phi float [ %3721, %3859 ], [ %3721, %3940 ], [ %4133, %4122 ], [ %3721, %3713 ]
  %3847 = phi float [ %3722, %3859 ], [ %3722, %3940 ], [ %4134, %4122 ], [ %3722, %3713 ]
  %3848 = phi float [ %3723, %3859 ], [ %3723, %3940 ], [ %4046, %4122 ], [ %3723, %3713 ]
  %3849 = phi float [ %3724, %3859 ], [ %3724, %3940 ], [ %4047, %4122 ], [ %3724, %3713 ]
  %3850 = phi float [ %3725, %3859 ], [ %3725, %3940 ], [ %4048, %4122 ], [ %3725, %3713 ]
  %3851 = phi float [ %3726, %3859 ], [ %3726, %3940 ], [ %4075, %4122 ], [ %3726, %3713 ]
  %3852 = phi float [ %3727, %3859 ], [ %3727, %3940 ], [ %4072, %4122 ], [ %3727, %3713 ]
  %3853 = phi float [ %3728, %3859 ], [ %3728, %3940 ], [ %4069, %4122 ], [ %3728, %3713 ]
  %3854 = phi float [ %3729, %3859 ], [ %3729, %3940 ], [ %4063, %4122 ], [ %3729, %3713 ]
  %3855 = phi float [ %3730, %3859 ], [ %3730, %3940 ], [ %4058, %4122 ], [ %3730, %3713 ]
  %3856 = phi float [ %3731, %3859 ], [ %3731, %3940 ], [ %4059, %4122 ], [ %3731, %3713 ]
  %3857 = phi float [ %3732, %3859 ], [ %3732, %3940 ], [ %4060, %4122 ], [ %3732, %3713 ]
  %3858 = icmp eq i32 %3789, %3712
  br i1 %3858, label %4135, label %3713

; <label>:3859                                    ; preds = %3713
  %3860 = extractvalue %dx.types.ResRet.f32 %3759, 3
  %3861 = extractvalue %dx.types.ResRet.f32 %3759, 1
  %3862 = extractvalue %dx.types.ResRet.f32 %3759, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3749, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3865 = extractvalue %dx.types.ResRet.i32 %3745, 3
  %3866 = extractvalue %dx.types.ResRet.i32 %3745, 2
  %3867 = add i32 %3865, 0
  %3868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3867, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3870 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3868, %dx.types.Handle %3869, float %3798, float %3805, float undef, float undef, i32 0, i32 0, i32 undef, float %3826, float %3828, float undef, float %3827, float %3829, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = fmul fast float %3871, %3864
  %3873 = fadd fast float %3872, %3863
  %3874 = call float @dx.op.unary.f32(i32 7, float %3873)  ; Saturate(value)
  %3875 = fmul fast float %3798, %3754
  %3876 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3805, float %3875)  ; FMad(a,b,c)
  %3877 = fadd fast float %3876, %3862
  %3878 = fmul fast float %3798, %3756
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3805, float %3878)  ; FMad(a,b,c)
  %3880 = fadd fast float %3879, %3861
  %3881 = fmul fast float %3826, %3754
  %3882 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3828, float %3881)  ; FMad(a,b,c)
  %3883 = fmul fast float %3826, %3756
  %3884 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3828, float %3883)  ; FMad(a,b,c)
  %3885 = fmul fast float %3827, %3754
  %3886 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3829, float %3885)  ; FMad(a,b,c)
  %3887 = fmul fast float %3827, %3756
  %3888 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3829, float %3887)  ; FMad(a,b,c)
  %3889 = add i32 %3866, 0
  %3890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3889, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3891 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3890, %dx.types.Handle %3869, float %3877, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3884, float undef, float %3886, float %3888, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = and i32 %3790, 1024
  %3894 = icmp ne i32 %3893, 0
  %3895 = fcmp fast ogt float %3892, 0x3FE0101020000000
  %3896 = uitofp i1 %3895 to float
  %3897 = select i1 %3894, float %3896, float %3892
  %3898 = and i32 %3790, 8192
  %3899 = icmp ne i32 %3898, 0
  %3900 = select i1 %3899, float %3860, float 1.000000e+00
  %3901 = fmul fast float %3798, 2.000000e+00
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = call float @dx.op.unary.f32(i32 6, float %3902)  ; FAbs(value)
  %3904 = fmul fast float %3903, %3787
  %3905 = fsub fast float %3904, %3787
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fmul fast float %3805, 2.000000e+00
  %3908 = fadd fast float %3907, -1.000000e+00
  %3909 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %3910 = fmul fast float %3909, %3788
  %3911 = fsub fast float %3910, %3788
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fmul fast float %3817, %3750
  %3914 = fsub fast float %3913, %3750
  %3915 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3916 = fmul fast float %3874, %3900
  %3917 = fmul fast float %3916, %3871
  %3918 = fmul fast float %3917, %3906
  %3919 = fmul fast float %3918, %3897
  %3920 = fmul fast float %3919, %3912
  %3921 = fmul fast float %3920, %3915
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3925 = fsub fast float %3834, %3924
  %3926 = fmul fast float %3925, %3923
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = fmul fast float %3921, %3751
  %3929 = fadd fast float %3921, %3751
  %3930 = fmul fast float %3929, %3760
  %3931 = fsub fast float %3930, %3760
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = and i32 %3790, 128
  %3934 = icmp ne i32 %3933, 0
  %3935 = select i1 %3934, float %3932, float %3928
  %3936 = fmul fast float %3935, %3927
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = fcmp fast ugt float %3936, %3938
  br i1 %3939, label %3940, label %3839

; <label>:3940                                    ; preds = %3859
  %3941 = select i1 %3899, float %3936, float 0.000000e+00
  %3942 = fadd fast float %3941, %3715
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  br i1 %3899, label %3839, label %3944

; <label>:3944                                    ; preds = %3940
  %3945 = and i32 %3790, 4
  %3946 = and i32 %3790, 8
  %3947 = add i32 %3746, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3948, %dx.types.Handle %3949, float %3877, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3884, float undef, float %3886, float %3888, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %3955 = bitcast float %3772 to i32
  %3956 = and i32 %3955, 255
  %3957 = uitofp i32 %3956 to float
  %3958 = lshr i32 %3955, 8
  %3959 = and i32 %3958, 255
  %3960 = uitofp i32 %3959 to float
  %3961 = fmul fast float %3954, %3957
  %3962 = fadd fast float %3961, %3960
  %3963 = fmul fast float %3962, 0x3F70101000000000
  %3964 = add i32 %3747, 0
  %3965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3964, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3966 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3965, %dx.types.Handle %3949, float %3877, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3884, float undef, float %3886, float %3888, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = extractvalue %dx.types.ResRet.f32 %3966, 2
  %3970 = extractvalue %dx.types.ResRet.f32 %3966, 3
  %3971 = bitcast float %3766 to i32
  %3972 = and i32 %3971, 255
  %3973 = uitofp i32 %3972 to float
  %3974 = lshr i32 %3971, 8
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3971, 16
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = fmul fast float %3979, 0x3F70101000000000
  %3981 = fmul fast float %3967, %3973
  %3982 = fadd fast float %3981, %3976
  %3983 = fmul fast float %3982, 0x3F70101000000000
  %3984 = fadd fast float %3968, -5.000000e-01
  %3985 = fadd fast float %3970, -5.000000e-01
  %3986 = fmul fast float %3984, %3980
  %3987 = fmul fast float %3985, %3980
  %3988 = fadd fast float %3986, 5.000000e-01
  %3989 = fadd fast float %3987, 5.000000e-01
  %3990 = fmul fast float %3951, %3775
  %3991 = fmul fast float %3952, %3776
  %3992 = fmul fast float %3953, %3777
  %3993 = fmul fast float %3988, 2.000000e+00
  %3994 = fadd fast float %3993, -1.000000e+00
  %3995 = fmul fast float %3989, 2.000000e+00
  %3996 = fadd fast float %3995, -1.000000e+00
  %3997 = fadd fast float %3994, %3996
  %3998 = fmul fast float %3997, 5.000000e-01
  %3999 = fsub fast float %3994, %3996
  %4000 = fmul fast float %3999, 5.000000e-01
  %4001 = call float @dx.op.unary.f32(i32 6, float %3998)  ; FAbs(value)
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = call float @dx.op.unary.f32(i32 6, float %4000)  ; FAbs(value)
  %4004 = fsub fast float %4002, %4003
  %4005 = call float @dx.op.dot3.f32(i32 55, float %3998, float %4000, float %4004, float %3998, float %4000, float %4004)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.unary.f32(i32 25, float %4005)  ; Rsqrt(value)
  %4007 = fmul fast float %3998, %4006
  %4008 = fmul fast float %4000, %4006
  %4009 = fmul fast float %4006, %4004
  %4010 = fmul fast float %4009, %3740
  %4011 = fmul fast float %4009, %3741
  %4012 = fmul fast float %4009, %3742
  %4013 = fmul fast float %4007, %3763
  %4014 = fmul fast float %4007, %3764
  %4015 = fmul fast float %4007, %3765
  %4016 = fadd fast float %4013, %4010
  %4017 = fadd fast float %4014, %4011
  %4018 = fadd fast float %4015, %4012
  %4019 = fmul fast float %4008, %3769
  %4020 = fmul fast float %4008, %3770
  %4021 = fmul fast float %4008, %3771
  %4022 = fadd fast float %4016, %4019
  %4023 = fadd fast float %4017, %4020
  %4024 = fadd fast float %4018, %4021
  %4025 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float %4022, float %4023, float %4024)  ; Dot3(ax,ay,az,bx,by,bz)
  %4026 = call float @dx.op.unary.f32(i32 25, float %4025)  ; Rsqrt(value)
  %4027 = fmul fast float %4022, %4026
  %4028 = fmul fast float %4023, %4026
  %4029 = fmul fast float %4024, %4026
  %4030 = icmp ne i32 %3946, 0
  %4031 = select i1 %4030, float 1.000000e+00, float 0.000000e+00
  %4032 = fmul fast float %3936, %4031
  %4033 = and i32 %3790, 1
  %4034 = icmp eq i32 %4033, 0
  br i1 %4034, label %4035, label %4039

; <label>:4035                                    ; preds = %3944
  %4036 = fsub fast float %4027, %3723
  %4037 = fsub fast float %4028, %3724
  %4038 = fsub fast float %4029, %3725
  br label %4039

; <label>:4039                                    ; preds = %4035, %3944
  %4040 = phi float [ %4036, %4035 ], [ %4027, %3944 ]
  %4041 = phi float [ %4037, %4035 ], [ %4028, %3944 ]
  %4042 = phi float [ %4038, %4035 ], [ %4029, %3944 ]
  %4043 = fmul float %4042, %4032
  %4044 = fmul float %4041, %4032
  %4045 = fmul float %4040, %4032
  %4046 = fadd fast float %4045, %3723
  %4047 = fadd fast float %4044, %3724
  %4048 = fadd fast float %4043, %3725
  %4049 = icmp ne i32 %3945, 0
  %4050 = select i1 %4049, float 1.000000e+00, float 0.000000e+00
  %4051 = fmul fast float %3936, %4050
  %4052 = fsub fast float %3990, %3730
  %4053 = fsub fast float %3991, %3731
  %4054 = fsub fast float %3992, %3732
  %4055 = fmul fast float %4052, %4051
  %4056 = fmul fast float %4053, %4051
  %4057 = fmul fast float %4054, %4051
  %4058 = fadd fast float %4055, %3730
  %4059 = fadd fast float %4056, %3731
  %4060 = fadd fast float %4057, %3732
  %4061 = fsub fast float %3963, %3729
  %4062 = fmul fast float %4061, %4051
  %4063 = fadd fast float %4062, %3729
  %4064 = fmul fast float %4051, %3719
  %4065 = fsub fast float %3719, %4064
  %4066 = fmul fast float %4051, %3718
  %4067 = fsub fast float %3718, %4066
  %4068 = fadd fast float %3936, %3728
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4070 = fsub fast float %3983, %3727
  %4071 = fmul fast float %4070, %4032
  %4072 = fadd fast float %4071, %3727
  %4073 = fsub fast float %3969, %3726
  %4074 = fmul fast float %4073, %4032
  %4075 = fadd fast float %4074, %3726
  %4076 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4080 = fmul fast float %4079, %4076
  %4081 = fadd fast float %4080, %4078
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = bitcast float %3778 to i32
  %4084 = and i32 %4083, 65535
  %4085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4084)  ; LegacyF16ToF32(value)
  %4086 = lshr i32 %4083, 16
  %4087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4086)  ; LegacyF16ToF32(value)
  %4088 = fcmp fast oge float %4085, 0.000000e+00
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = select i1 %4088, float %4085, float %4090
  %4092 = fadd fast float %4091, %4087
  %4093 = fsub fast float %4082, %3717
  %4094 = fmul fast float %4093, %3936
  %4095 = fadd fast float %4094, %3717
  %4096 = fmul fast float %4092, %3936
  %4097 = call float @dx.op.binary.f32(i32 35, float %3716, float %4096)  ; FMax(a,b)
  %4098 = and i32 %3790, 16
  %4099 = icmp eq i32 %4098, 0
  br i1 %4099, label %4122, label %4100

; <label>:4100                                    ; preds = %4039
  %4101 = bitcast float %3784 to i32
  %4102 = add i32 %3781, 0
  %4103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4102, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4103, %dx.types.Handle %3949, float %3877, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3884, float undef, float %3886, float %3888, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = and i32 %4101, 65535
  %4109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4108)  ; LegacyF16ToF32(value)
  %4110 = fmul fast float %4105, %3775
  %4111 = fmul fast float %4106, %3776
  %4112 = fmul fast float %4107, %3777
  %4113 = and i32 %3790, 16384
  %4114 = icmp ne i32 %4113, 0
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = select i1 %4114, float %4116, float 1.000000e+00
  %4118 = fmul fast float %4117, %4109
  %4119 = fmul fast float %4110, %4118
  %4120 = fmul fast float %4111, %4118
  %4121 = fmul fast float %4112, %4118
  br label %4122

; <label>:4122                                    ; preds = %4100, %4039
  %4123 = phi float [ %4119, %4100 ], [ 0.000000e+00, %4039 ]
  %4124 = phi float [ %4120, %4100 ], [ 0.000000e+00, %4039 ]
  %4125 = phi float [ %4121, %4100 ], [ 0.000000e+00, %4039 ]
  %4126 = fsub fast float %4123, %3720
  %4127 = fsub fast float %4124, %3721
  %4128 = fsub fast float %4125, %3722
  %4129 = fmul fast float %4126, %3936
  %4130 = fmul fast float %4127, %3936
  %4131 = fmul fast float %4128, %3936
  %4132 = fadd fast float %4129, %3720
  %4133 = fadd fast float %4130, %3721
  %4134 = fadd fast float %4131, %3722
  br label %3839

; <label>:4135                                    ; preds = %3839
  br label %4136

; <label>:4136                                    ; preds = %4135, %3659
  %4137 = phi float [ 0.000000e+00, %3659 ], [ %3840, %4135 ]
  %4138 = phi float [ %3628, %3659 ], [ %3841, %4135 ]
  %4139 = phi float [ %3620, %3659 ], [ %3842, %4135 ]
  %4140 = phi float [ %3619, %3659 ], [ %3843, %4135 ]
  %4141 = phi float [ 0.000000e+00, %3659 ], [ %3844, %4135 ]
  %4142 = phi float [ %3613, %3659 ], [ %3845, %4135 ]
  %4143 = phi float [ %3614, %3659 ], [ %3846, %4135 ]
  %4144 = phi float [ %3615, %3659 ], [ %3847, %4135 ]
  %4145 = phi float [ %3654, %3659 ], [ %3848, %4135 ]
  %4146 = phi float [ %3655, %3659 ], [ %3849, %4135 ]
  %4147 = phi float [ %3656, %3659 ], [ %3850, %4135 ]
  %4148 = phi float [ %3618, %3659 ], [ %3851, %4135 ]
  %4149 = phi float [ %3617, %3659 ], [ %3852, %4135 ]
  %4150 = phi float [ 0.000000e+00, %3659 ], [ %3853, %4135 ]
  %4151 = phi float [ %3616, %3659 ], [ %3854, %4135 ]
  %4152 = phi float [ %3610, %3659 ], [ %3855, %4135 ]
  %4153 = phi float [ %3611, %3659 ], [ %3856, %4135 ]
  %4154 = phi float [ %3612, %3659 ], [ %3857, %4135 ]
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4145, float %4146, float %4147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 25, float %4155)  ; Rsqrt(value)
  %4157 = fmul fast float %4156, %4145
  %4158 = fmul fast float %4156, %4146
  %4159 = fmul fast float %4156, %4147
  %4160 = fadd fast float %4150, %934
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4163 = call float @dx.op.unary.f32(i32 25, float %4162)  ; Rsqrt(value)
  %4164 = fmul fast float %4163, %4157
  %4165 = fmul fast float %4163, %4158
  %4166 = fmul fast float %4163, %4159
  br label %4167

; <label>:4167                                    ; preds = %4136, %3607
  %4168 = phi float [ %4164, %4136 ], [ %3654, %3607 ]
  %4169 = phi float [ %4165, %4136 ], [ %3655, %3607 ]
  %4170 = phi float [ %4166, %4136 ], [ %3656, %3607 ]
  %4171 = phi float [ %4152, %4136 ], [ %3610, %3607 ]
  %4172 = phi float [ %4153, %4136 ], [ %3611, %3607 ]
  %4173 = phi float [ %4154, %4136 ], [ %3612, %3607 ]
  %4174 = phi float [ %4142, %4136 ], [ %3613, %3607 ]
  %4175 = phi float [ %4143, %4136 ], [ %3614, %3607 ]
  %4176 = phi float [ %4144, %4136 ], [ %3615, %3607 ]
  %4177 = phi float [ %4151, %4136 ], [ %3616, %3607 ]
  %4178 = phi float [ %4161, %4136 ], [ %934, %3607 ]
  %4179 = phi float [ %4149, %4136 ], [ %3617, %3607 ]
  %4180 = phi float [ %4148, %4136 ], [ %3618, %3607 ]
  %4181 = phi float [ %4141, %4136 ], [ 0.000000e+00, %3607 ]
  %4182 = phi float [ %4140, %4136 ], [ %3619, %3607 ]
  %4183 = phi float [ %4137, %4136 ], [ 0.000000e+00, %3607 ]
  %4184 = phi float [ %4138, %4136 ], [ %3628, %3607 ]
  %4185 = phi float [ %4139, %4136 ], [ %3620, %3607 ]
  %4186 = fadd fast float %4177, 0xBFB99999A0000000
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = fmul fast float %4187, 0x3FF1C71C80000000
  %4189 = call float @dx.op.binary.f32(i32 36, float %4177, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4190 = fsub fast float 1.000000e+00, %4188
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4192 = fmul fast float %4191, %4171
  %4193 = fmul fast float %4191, %4172
  %4194 = fmul fast float %4191, %4173
  %4195 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4198 = fmul fast float %4188, %4171
  %4199 = fmul fast float %4188, %4172
  %4200 = fmul fast float %4188, %4173
  %4201 = fadd fast float %4198, %4189
  %4202 = fadd fast float %4199, %4189
  %4203 = fadd fast float %4200, %4189
  %4204 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4205 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4206 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4207 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.i32 %4208, 3
  %4210 = and i32 %4209, 8
  %4211 = icmp ne i32 %4210, 0
  %4212 = call float @dx.op.binary.f32(i32 35, float %4195, float %4171)  ; FMax(a,b)
  %4213 = call float @dx.op.binary.f32(i32 35, float %4196, float %4171)  ; FMax(a,b)
  %4214 = call float @dx.op.binary.f32(i32 35, float %4197, float %4171)  ; FMax(a,b)
  %4215 = call float @dx.op.dot3.f32(i32 55, float %4195, float %4196, float %4197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4216 = select i1 %186, float %4171, float %4195
  %4217 = select i1 %186, float %4215, float %4196
  %4218 = select i1 %186, float 1.000000e+00, float %4197
  %4219 = select i1 %4211, float %4212, float %4216
  %4220 = select i1 %4211, float %4213, float %4217
  %4221 = select i1 %4211, float %4214, float %4218
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4226 = fadd fast float %4223, %144
  %4227 = fadd fast float %4224, %145
  %4228 = fadd fast float %4225, %146
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = fsub fast float %4226, %4230
  %4233 = fsub fast float %4227, %4231
  %4234 = fmul fast float %4232, %4232
  %4235 = fmul fast float %4233, %4233
  %4236 = fadd fast float %4234, %4235
  %4237 = call float @dx.op.unary.f32(i32 24, float %4236)  ; Sqrt(value)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4239 = fcmp fast olt float %4237, %4238
  br i1 %4239, label %4240, label %4307

; <label>:4240                                    ; preds = %4167
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 0
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.CBufRet.f32 %4241, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4249 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4250 = extractvalue %dx.types.CBufRet.f32 %4241, 3
  %4251 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4252 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4253 = fadd fast float %4250, %4226
  %4254 = fadd fast float %4251, %4227
  %4255 = fadd fast float %4252, %4228
  %4256 = fmul fast float %4253, %4242
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4244, float %4256)  ; FMad(a,b,c)
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4255, float %4246, float %4257)  ; FMad(a,b,c)
  %4259 = fmul fast float %4253, %4247
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4248, float %4259)  ; FMad(a,b,c)
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4255, float %4249, float %4260)  ; FMad(a,b,c)
  %4262 = fsub fast float %4258, %4250
  %4263 = fsub fast float %4261, %4251
  %4264 = fsub fast float %4262, %4230
  %4265 = fadd fast float %4264, %4238
  %4266 = fsub fast float %4263, %4231
  %4267 = fadd fast float %4266, %4238
  %4268 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4269 = fmul fast float %4265, %4268
  %4270 = fmul fast float %4267, %4268
  %4271 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4273 = fsub fast float 1.000000e+00, %4271
  %4274 = fsub fast float 1.000000e+00, %4272
  %4275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4273, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = fcmp fast ugt float %4276, 0.000000e+00
  br i1 %4277, label %4278, label %4581

; <label>:4278                                    ; preds = %4240
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 2
  %4281 = fmul fast float %4280, %4276
  %4282 = extractvalue %dx.types.CBufRet.f32 %4279, 3
  %4283 = fadd fast float %4282, %4281
  %4284 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4285 = fadd fast float %4283, %4252
  %4286 = fmul fast float %4258, %4246
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4261, float %4249, float %4286)  ; FMad(a,b,c)
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4284, float %4287)  ; FMad(a,b,c)
  %4289 = fsub fast float %4288, %4252
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4292 = fsub fast float %4289, %4291
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4273, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4293, 2
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4273, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = fadd fast float %4298, %4294
  %4302 = fmul fast float %4301, 0x3F847AE140000000
  %4303 = fadd fast float %4299, %4295
  %4304 = fmul fast float %4303, 0x3F847AE140000000
  %4305 = fadd fast float %4300, %4296
  %4306 = fmul fast float %4305, 0x3F847AE140000000
  br label %4581

; <label>:4307                                    ; preds = %4167
  %4308 = and i32 %162, 1
  %4309 = icmp eq i32 %4308, 0
  br i1 %4309, label %4581, label %4310

; <label>:4310                                    ; preds = %4307
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4320 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4321 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4322 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4323 = fadd fast float %4320, %4226
  %4324 = fadd fast float %4321, %4227
  %4325 = fadd fast float %4322, %4228
  %4326 = fmul fast float %4323, %4312
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4314, float %4326)  ; FMad(a,b,c)
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4316, float %4327)  ; FMad(a,b,c)
  %4329 = fmul fast float %4323, %4317
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4318, float %4329)  ; FMad(a,b,c)
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4319, float %4330)  ; FMad(a,b,c)
  %4332 = fsub fast float %4328, %4320
  %4333 = fsub fast float %4331, %4321
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4337 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4338 = extractvalue %dx.types.CBufRet.f32 %4334, 3
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.i32 %4341, 0
  %4343 = extractvalue %dx.types.CBufRet.i32 %4341, 1
  %4344 = udiv i32 %4343, %4342
  %4345 = fsub fast float %4332, %4335
  %4346 = fsub fast float %4333, %4336
  %4347 = call float @dx.op.binary.f32(i32 35, float %4345, float 0.000000e+00)  ; FMax(a,b)
  %4348 = call float @dx.op.binary.f32(i32 35, float %4346, float 0.000000e+00)  ; FMax(a,b)
  %4349 = call float @dx.op.binary.f32(i32 36, float %4347, float %4337)  ; FMin(a,b)
  %4350 = call float @dx.op.binary.f32(i32 36, float %4348, float %4338)  ; FMin(a,b)
  %4351 = add i32 %4342, -1
  %4352 = add i32 %4344, -1
  %4353 = fmul fast float %4349, %4340
  %4354 = fmul fast float %4350, %4340
  %4355 = fptoui float %4353 to i32
  %4356 = fptoui float %4354 to i32
  %4357 = call i32 @dx.op.binary.i32(i32 40, i32 %4355, i32 %4351)  ; UMin(a,b)
  %4358 = call i32 @dx.op.binary.i32(i32 40, i32 %4356, i32 %4352)  ; UMin(a,b)
  %4359 = mul i32 %4358, %4342
  %4360 = add i32 %4359, %4357
  %4361 = shl i32 %4360, 2
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = icmp eq i32 %4363, -1
  br i1 %4364, label %4581, label %4365

; <label>:4365                                    ; preds = %4310
  %4366 = mul i32 %4363, 148
  %4367 = add i32 %4366, 4
  %4368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4367, i32 undef)  ; BufferLoad(srv,index,wot)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = add i32 %4366, 8
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = add i32 %4366, 36
  %4374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = add i32 %4366, 60
  %4377 = add i32 %4366, 92
  %4378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.i32 %4378, 0
  %4380 = add i32 %4366, 116
  %4381 = fsub fast float %4332, %4369
  %4382 = fsub fast float %4333, %4372
  %4383 = fmul fast float %4340, %4381
  %4384 = fmul fast float %4340, %4382
  %4385 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4386 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4387 = fsub fast float 1.000000e+00, %4386
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4390 = call float @dx.op.unary.f32(i32 83, float %4385)  ; DerivCoarseX(value)
  %4391 = call float @dx.op.unary.f32(i32 83, float %4387)  ; DerivCoarseX(value)
  %4392 = call float @dx.op.unary.f32(i32 84, float %4385)  ; DerivCoarseY(value)
  %4393 = call float @dx.op.unary.f32(i32 84, float %4387)  ; DerivCoarseY(value)
  %4394 = fmul fast float %4390, %4389
  %4395 = fmul fast float %4391, %4389
  %4396 = fmul fast float %4392, %4389
  %4397 = fmul fast float %4393, %4389
  %4398 = call float @dx.op.dot2.f32(i32 54, float %4396, float %4397, float %4396, float %4397)  ; Dot2(ax,ay,bx,by)
  %4399 = call float @dx.op.dot2.f32(i32 54, float %4394, float %4395, float %4394, float %4395)  ; Dot2(ax,ay,bx,by)
  %4400 = call float @dx.op.binary.f32(i32 35, float %4399, float %4398)  ; FMax(a,b)
  %4401 = call float @dx.op.unary.f32(i32 23, float %4400)  ; Log(value)
  %4402 = fmul fast float %4401, 5.000000e-01
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4405 = fadd fast float %4404, %4402
  %4406 = call float @dx.op.binary.f32(i32 35, float %4405, float 0.000000e+00)  ; FMax(a,b)
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4409 = fadd fast float %4408, %4406
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4412 = fadd fast float %4409, %4411
  %4413 = add i32 %4379, 0
  %4414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4413, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4415 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4414, i32 0)  ; GetDimensions(handle,mipLevel)
  %4416 = extractvalue %dx.types.Dimensions %4415, 0
  %4417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4416)  ; FirstbitLo(value)
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 1
  %4420 = sub nsw i32 %4419, %4417
  %4421 = sitofp i32 %4420 to float
  %4422 = fsub fast float %4412, %4421
  %4423 = call float @dx.op.binary.f32(i32 35, float %4422, float 0.000000e+00)  ; FMax(a,b)
  %4424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4414, %dx.types.Handle %37, float %4385, float %4387, float %4375, float undef, i32 0, i32 0, i32 undef, float %4423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = fcmp ule float %4425, 0x3FE0101020000000
  %4427 = extractvalue %dx.types.CBufRet.i32 %4418, 0
  %4428 = and i32 %4427, 128
  %4429 = icmp ne i32 %4428, 0
  %4430 = and i1 %4426, %4429
  br i1 %4430, label %4581, label %4431

; <label>:4431                                    ; preds = %4365
  %4432 = add i32 %4366, 20
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = add i32 %4366, 24
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = add i32 %4366, 40
  %4439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = add i32 %4366, 96
  %4442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.i32 %4442, 0
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4446 = fmul fast float %4445, %4385
  %4447 = fmul fast float %4445, %4387
  %4448 = extractvalue %dx.types.CBufRet.f32 %4444, 3
  %4449 = fadd fast float %4446, %4448
  %4450 = fadd fast float %4447, %4448
  %4451 = add i32 %4443, 0
  %4452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4451, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4453 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4452, i32 0)  ; GetDimensions(handle,mipLevel)
  %4454 = extractvalue %dx.types.Dimensions %4453, 0
  %4455 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4454)  ; FirstbitLo(value)
  %4456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.i32 %4456, 1
  %4458 = sub nsw i32 %4457, %4455
  %4459 = sitofp i32 %4458 to float
  %4460 = fsub fast float %4409, %4459
  %4461 = call float @dx.op.binary.f32(i32 35, float %4460, float 0.000000e+00)  ; FMax(a,b)
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4452, %dx.types.Handle %37, float %4449, float %4450, float %4440, float undef, i32 0, i32 0, i32 undef, float %4461)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = fmul fast float %4463, %4434
  %4465 = fadd fast float %4464, %4437
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 3
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4474 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4475 = fadd fast float %4471, %4332
  %4476 = fadd fast float %4473, %4333
  %4477 = fadd fast float %4465, %4474
  %4478 = fmul fast float %4475, %4467
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4468, float %4478)  ; FMad(a,b,c)
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4469, float %4479)  ; FMad(a,b,c)
  %4481 = fsub fast float %4480, %4474
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4484 = fsub fast float %4481, %4483
  %4485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.i32 %4485, 0
  %4487 = call i32 @dx.op.binary.i32(i32 40, i32 %4363, i32 %4486)  ; UMin(a,b)
  %4488 = mul i32 %4487, 36
  %4489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.i32 %4489, 0
  %4491 = add i32 %4488, 4
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = fmul fast float %4493, %4385
  %4495 = fmul fast float %4493, %4387
  %4496 = extractvalue %dx.types.CBufRet.f32 %4492, 1
  %4497 = fadd fast float %4494, %4496
  %4498 = fadd fast float %4495, %4496
  %4499 = icmp eq i32 %4490, 0
  br i1 %4499, label %4568, label %4500

; <label>:4500                                    ; preds = %4431
  br label %4501

; <label>:4501                                    ; preds = %4558, %4500
  %4502 = phi float [ %4559, %4558 ], [ 0.000000e+00, %4500 ]
  %4503 = phi float [ %4560, %4558 ], [ 0.000000e+00, %4500 ]
  %4504 = phi float [ %4561, %4558 ], [ 0.000000e+00, %4500 ]
  %4505 = phi float [ %4562, %4558 ], [ 0.000000e+00, %4500 ]
  %4506 = phi float [ %4563, %4558 ], [ 0.000000e+00, %4500 ]
  %4507 = phi float [ %4564, %4558 ], [ 0.000000e+00, %4500 ]
  %4508 = phi i32 [ %4565, %4558 ], [ 0, %4500 ]
  %4509 = shl i32 %4508, 2
  %4510 = add i32 %4376, %4509
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = add i32 %4380, %4509
  %4514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.i32 %4514, 0
  %4516 = add i32 %4515, 0
  %4517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4518 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4517, i32 0)  ; GetDimensions(handle,mipLevel)
  %4519 = extractvalue %dx.types.Dimensions %4518, 0
  %4520 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4519)  ; FirstbitLo(value)
  %4521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.i32 %4521, 1
  %4523 = sub nsw i32 %4522, %4520
  %4524 = sitofp i32 %4523 to float
  %4525 = fsub fast float %4409, %4524
  %4526 = call float @dx.op.binary.f32(i32 35, float %4525, float 0.000000e+00)  ; FMax(a,b)
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4517, %dx.types.Handle %37, float %4497, float %4498, float %4512, float undef, i32 0, i32 0, i32 undef, float %4526)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = fcmp fast ogt float %4528, 0.000000e+00
  br i1 %4529, label %4530, label %4558

; <label>:4530                                    ; preds = %4501
  %4531 = add i32 %4491, %4509
  %4532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.i32 %4532, 0
  %4534 = and i32 %4533, 32767
  %4535 = mul nuw nsw i32 %4534, 928
  %4536 = add nuw nsw i32 %4535, 48
  %4537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = add nuw nsw i32 %4535, 60
  %4542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = extractvalue %dx.types.ResRet.f32 %4542, 1
  %4545 = extractvalue %dx.types.ResRet.f32 %4542, 2
  %4546 = fmul fast float %4538, %4528
  %4547 = fmul fast float %4539, %4528
  %4548 = fmul fast float %4540, %4528
  %4549 = fadd fast float %4546, %4502
  %4550 = fadd fast float %4547, %4503
  %4551 = fadd fast float %4548, %4504
  %4552 = fmul fast float %4543, %4528
  %4553 = fmul fast float %4544, %4528
  %4554 = fmul fast float %4545, %4528
  %4555 = fadd fast float %4552, %4505
  %4556 = fadd fast float %4553, %4506
  %4557 = fadd fast float %4554, %4507
  br label %4558

; <label>:4558                                    ; preds = %4530, %4501
  %4559 = phi float [ %4549, %4530 ], [ %4502, %4501 ]
  %4560 = phi float [ %4550, %4530 ], [ %4503, %4501 ]
  %4561 = phi float [ %4551, %4530 ], [ %4504, %4501 ]
  %4562 = phi float [ %4555, %4530 ], [ %4505, %4501 ]
  %4563 = phi float [ %4556, %4530 ], [ %4506, %4501 ]
  %4564 = phi float [ %4557, %4530 ], [ %4507, %4501 ]
  %4565 = add nuw i32 %4508, 1
  %4566 = icmp eq i32 %4565, %4490
  br i1 %4566, label %4567, label %4501

; <label>:4567                                    ; preds = %4558
  br label %4568

; <label>:4568                                    ; preds = %4567, %4431
  %4569 = phi float [ 0.000000e+00, %4431 ], [ %4559, %4567 ]
  %4570 = phi float [ 0.000000e+00, %4431 ], [ %4560, %4567 ]
  %4571 = phi float [ 0.000000e+00, %4431 ], [ %4561, %4567 ]
  %4572 = phi float [ 0.000000e+00, %4431 ], [ %4562, %4567 ]
  %4573 = phi float [ 0.000000e+00, %4431 ], [ %4563, %4567 ]
  %4574 = phi float [ 0.000000e+00, %4431 ], [ %4564, %4567 ]
  %4575 = fadd fast float %4572, %4569
  %4576 = fmul fast float %4575, 0x3F847AE140000000
  %4577 = fadd fast float %4573, %4570
  %4578 = fmul fast float %4577, 0x3F847AE140000000
  %4579 = fadd fast float %4574, %4571
  %4580 = fmul fast float %4579, 0x3F847AE140000000
  br label %4581

; <label>:4581                                    ; preds = %4568, %4365, %4310, %4307, %4278, %4240
  %4582 = phi float [ %4292, %4278 ], [ -1.310720e+05, %4240 ], [ %4484, %4568 ], [ -1.310720e+05, %4310 ], [ -1.310720e+05, %4365 ], [ -1.310720e+05, %4307 ]
  %4583 = phi float [ %4302, %4278 ], [ 0.000000e+00, %4240 ], [ %4576, %4568 ], [ 0.000000e+00, %4310 ], [ 0.000000e+00, %4365 ], [ 0.000000e+00, %4307 ]
  %4584 = phi float [ %4304, %4278 ], [ 0.000000e+00, %4240 ], [ %4578, %4568 ], [ 0.000000e+00, %4310 ], [ 0.000000e+00, %4365 ], [ 0.000000e+00, %4307 ]
  %4585 = phi float [ %4306, %4278 ], [ 0.000000e+00, %4240 ], [ %4580, %4568 ], [ 0.000000e+00, %4310 ], [ 0.000000e+00, %4365 ], [ 0.000000e+00, %4307 ]
  %4586 = phi i1 [ true, %4278 ], [ false, %4240 ], [ true, %4568 ], [ false, %4310 ], [ false, %4365 ], [ false, %4307 ]
  %4587 = and i32 %162, 3
  %4588 = icmp eq i32 %4587, 1
  %4589 = select i1 %4588, float 1.000000e+00, float 0.000000e+00
  %4590 = fsub fast float %4582, %146
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = select i1 %4586, float %4591, float 1.000000e+00
  %4593 = fmul fast float %4592, %4589
  %4594 = icmp eq i32 %4587, 3
  %4595 = select i1 %4594, float 1.000000e+00, float %4593
  %4596 = call float @dx.op.binary.f32(i32 35, float %4183, float %4595)  ; FMax(a,b)
  %4597 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4598 = fcmp fast une float %4597, 0.000000e+00
  %4599 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = call float @dx.op.unary.f32(i32 25, float %4599)  ; Rsqrt(value)
  br i1 %4598, label %4608, label %4601

; <label>:4601                                    ; preds = %4581
  %4602 = fmul fast float %4600, %144
  %4603 = fmul fast float %4600, %145
  %4604 = fmul fast float %4600, %146
  %4605 = fsub fast float -0.000000e+00, %4602
  %4606 = fsub fast float -0.000000e+00, %4603
  %4607 = fsub fast float -0.000000e+00, %4604
  br label %4776

; <label>:4608                                    ; preds = %4581
  %4609 = fmul fast float %144, %4600
  %4610 = fsub fast float -0.000000e+00, %4609
  %4611 = fmul fast float %145, %4600
  %4612 = fsub fast float -0.000000e+00, %4611
  %4613 = fmul fast float %146, %4600
  %4614 = fsub fast float -0.000000e+00, %4613
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4612, float %4614, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = fmul fast float %4597, 2.500000e+00
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fmul fast float %4597, 0x4013FFFFE0000000
  %4619 = fadd fast float %4618, 0xBFFFFFFFE0000000
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fmul fast float %4597, 0x4004000020000000
  %4622 = fadd fast float %4621, 0xBFF8000040000000
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4625 = fmul fast float %4186, 1.000000e+01
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fmul fast float %4626, 2.000000e+00
  %4628 = fsub fast float 3.000000e+00, %4627
  %4629 = fmul fast float %4626, %4626
  %4630 = fmul fast float %4629, %4628
  %4631 = fsub fast float 1.000000e+00, %4630
  %4632 = fsub fast float 0x3FE3333340000000, %4207
  %4633 = fmul fast float %4632, 0x400AAAAAA0000000
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fmul fast float %4631, %4634
  %4636 = fmul fast float %4219, 0x3FEA2B8620000000
  %4637 = fmul fast float %4220, 0x3FEA2B8620000000
  %4638 = fmul fast float %4221, 0x3FEA2B8620000000
  %4639 = fadd fast float %4636, 0x3FC81DFBA0000000
  %4640 = fmul fast float %4639, %4219
  %4641 = fadd fast float %4640, 0x3F910E6020000000
  %4642 = fadd fast float %4637, 0x3FC81DFBA0000000
  %4643 = fmul fast float %4642, %4220
  %4644 = fadd fast float %4643, 0x3F910E6020000000
  %4645 = fadd fast float %4638, 0x3FC81DFBA0000000
  %4646 = fmul fast float %4645, %4221
  %4647 = fadd fast float %4646, 0x3F910E6020000000
  %4648 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = fsub fast float %4648, %4219
  %4652 = fsub fast float %4649, %4220
  %4653 = fsub fast float %4650, %4221
  %4654 = fmul fast float %4651, %4624
  %4655 = fmul fast float %4654, %4635
  %4656 = fmul fast float %4652, %4624
  %4657 = fmul fast float %4656, %4635
  %4658 = fmul fast float %4653, %4624
  %4659 = fmul fast float %4658, %4635
  %4660 = fadd fast float %4655, %4219
  %4661 = fadd fast float %4657, %4220
  %4662 = fadd fast float %4659, %4221
  %4663 = fmul fast float %4180, %4180
  %4664 = fmul fast float %4663, %4663
  %4665 = fadd fast float %4620, 1.000000e+00
  %4666 = fsub fast float %4665, %4635
  %4667 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4668 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fsub fast float 1.000000e+00, %4664
  %4671 = call float @dx.op.binary.f32(i32 36, float %4667, float %4670)  ; FMin(a,b)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4673 = call float @dx.op.binary.f32(i32 35, float %4671, float %4672)  ; FMax(a,b)
  %4674 = fadd fast float %4669, 0xBFE4CCCCC0000000
  %4675 = fmul fast float %4674, 0x4006DB6DA0000000
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fmul fast float %4676, 2.000000e+00
  %4678 = fsub fast float 3.000000e+00, %4677
  %4679 = bitcast float %4204 to i32
  %4680 = ashr i32 %4679, 1
  %4681 = add nsw i32 %4680, 532487669
  %4682 = bitcast i32 %4681 to float
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = fmul fast float %4686, 2.000000e+00
  %4688 = bitcast float %4205 to i32
  %4689 = ashr i32 %4688, 1
  %4690 = add nsw i32 %4689, 532487669
  %4691 = bitcast i32 %4690 to float
  %4692 = fsub fast float 1.000000e+00, %4691
  %4693 = bitcast float %4692 to i32
  %4694 = sub nsw i32 2129859010, %4693
  %4695 = bitcast i32 %4694 to float
  %4696 = fmul fast float %4695, 2.000000e+00
  %4697 = bitcast float %4206 to i32
  %4698 = ashr i32 %4697, 1
  %4699 = add nsw i32 %4698, 532487669
  %4700 = bitcast i32 %4699 to float
  %4701 = fsub fast float 1.000000e+00, %4700
  %4702 = bitcast float %4701 to i32
  %4703 = sub nsw i32 2129859010, %4702
  %4704 = bitcast i32 %4703 to float
  %4705 = fmul fast float %4704, 2.000000e+00
  %4706 = fsub fast float 0x4002A9FBE0000000, %4687
  %4707 = fadd fast float %4687, 0x3FD54FDF00000000
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4710, %4706
  %4712 = fmul fast float %4711, %4711
  %4713 = fsub fast float 0x4002A9FBE0000000, %4696
  %4714 = fadd fast float %4696, 0x3FD54FDF00000000
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4718, %4718
  %4720 = fsub fast float 0x4002A9FBE0000000, %4705
  %4721 = fadd fast float %4705, 0x3FD54FDF00000000
  %4722 = bitcast float %4721 to i32
  %4723 = sub nsw i32 2129859010, %4722
  %4724 = bitcast i32 %4723 to float
  %4725 = fmul fast float %4724, %4720
  %4726 = fmul fast float %4725, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4712)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4719)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4726)  ; FMax(a,b)
  %4730 = fsub fast float 1.000000e+00, %4615
  %4731 = fadd fast float %4730, %4631
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fsub fast float 1.000000e+00, %4595
  %4734 = fmul fast float %4673, %4733
  %4735 = fmul fast float %4676, %4676
  %4736 = fmul fast float %4735, %4734
  %4737 = fmul fast float %4736, %4678
  %4738 = fmul fast float %4733, 0xBFE99999A0000000
  %4739 = fmul fast float %4738, %4624
  %4740 = fmul fast float %4739, %4635
  %4741 = fadd fast float %4740, 1.000000e+00
  %4742 = fadd fast float %4207, -1.000000e+00
  %4743 = fmul fast float %4741, %4742
  %4744 = fadd fast float %4743, 1.000000e+00
  %4745 = fsub fast float %4727, %4204
  %4746 = fsub fast float %4728, %4205
  %4747 = fsub fast float %4729, %4206
  %4748 = fmul fast float %4737, %4745
  %4749 = fmul fast float %4737, %4746
  %4750 = fmul fast float %4737, %4747
  %4751 = fadd fast float %4748, %4204
  %4752 = fadd fast float %4749, %4205
  %4753 = fadd fast float %4750, %4206
  %4754 = fsub fast float %94, %4168
  %4755 = fsub fast float %96, %4169
  %4756 = fsub fast float %98, %4170
  %4757 = fmul fast float %4737, %4754
  %4758 = fmul fast float %4737, %4755
  %4759 = fmul fast float %4737, %4756
  %4760 = fadd fast float %4757, %4168
  %4761 = fadd fast float %4758, %4169
  %4762 = fadd fast float %4759, %4170
  %4763 = fmul fast float %4737, %4732
  %4764 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = fmul fast float %4763, %4765
  %4767 = fadd fast float %4766, %4764
  %4768 = fsub fast float 1.000000e+00, %4180
  %4769 = fmul fast float %4737, %4768
  %4770 = fadd fast float %4769, %4180
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4761, float %4762, float %4760, float %4761, float %4762)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = call float @dx.op.unary.f32(i32 25, float %4771)  ; Rsqrt(value)
  %4773 = fmul fast float %4760, %4772
  %4774 = fmul fast float %4761, %4772
  %4775 = fmul fast float %4762, %4772
  br label %4776

; <label>:4776                                    ; preds = %4608, %4601
  %4777 = phi float [ %4607, %4601 ], [ %4614, %4608 ]
  %4778 = phi float [ %4606, %4601 ], [ %4612, %4608 ]
  %4779 = phi float [ %4605, %4601 ], [ %4610, %4608 ]
  %4780 = phi float [ %4604, %4601 ], [ %4613, %4608 ]
  %4781 = phi float [ %4603, %4601 ], [ %4611, %4608 ]
  %4782 = phi float [ %4602, %4601 ], [ %4609, %4608 ]
  %4783 = phi float [ %4219, %4601 ], [ %4660, %4608 ]
  %4784 = phi float [ %4220, %4601 ], [ %4661, %4608 ]
  %4785 = phi float [ %4221, %4601 ], [ %4662, %4608 ]
  %4786 = phi float [ %4204, %4601 ], [ %4751, %4608 ]
  %4787 = phi float [ %4205, %4601 ], [ %4752, %4608 ]
  %4788 = phi float [ %4206, %4601 ], [ %4753, %4608 ]
  %4789 = phi float [ %4168, %4601 ], [ %4773, %4608 ]
  %4790 = phi float [ %4169, %4601 ], [ %4774, %4608 ]
  %4791 = phi float [ %4170, %4601 ], [ %4775, %4608 ]
  %4792 = phi float [ %4207, %4601 ], [ %4767, %4608 ]
  %4793 = phi float [ %4180, %4601 ], [ %4770, %4608 ]
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4797 = fmul fast float %4795, %85
  %4798 = fmul fast float %4796, %86
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4797, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = fmul fast float %4803, %4801
  %4805 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = fmul fast float %4806, %4800
  %4808 = fadd fast float %4807, 1.000000e+00
  %4809 = select i1 %186, float 0.000000e+00, float %4788
  %4810 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4779, float %4778, float %4777)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4781, float %4780, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = fmul fast float %4812, 2.000000e+00
  %4814 = fmul fast float %4813, %4789
  %4815 = fmul fast float %4813, %4790
  %4816 = fmul fast float %4813, %4791
  %4817 = fsub fast float %4782, %4814
  %4818 = fsub fast float %4781, %4815
  %4819 = fsub fast float %4780, %4816
  %4820 = call float @dx.op.binary.f32(i32 36, float %4793, float %4808)  ; FMin(a,b)
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = bitcast float %4821 to i32
  %4823 = ashr i32 %4822, 1
  %4824 = add nsw i32 %4823, 532487669
  %4825 = bitcast i32 %4824 to float
  %4826 = fsub fast float 1.000000e+00, %4792
  %4827 = call float @dx.op.binary.f32(i32 35, float %4826, float 0x3F847AE140000000)  ; FMax(a,b)
  %4828 = fmul fast float %4827, %4827
  %4829 = fmul fast float %4828, %4828
  %4830 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4825, float %4829, float %4830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = fsub fast float 1.000000e+00, %4793
  %4834 = bitcast float %4833 to i32
  %4835 = sub nsw i32 2129859010, %4834
  %4836 = bitcast i32 %4835 to float
  %4837 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = fmul fast float %4837, 0x3FD20DD760000000
  %4839 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4840 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = fcmp fast oeq float %4840, 0.000000e+00
  %4842 = fcmp fast oeq float %4839, 0.000000e+00
  %4843 = or i1 %4842, %4841
  br i1 %4843, label %4873, label %4844

; <label>:4844                                    ; preds = %4776
  %4845 = fsub fast float -0.000000e+00, %65
  %4846 = fsub fast float -0.000000e+00, %63
  %4847 = call float @dx.op.unary.f32(i32 24, float %4840)  ; Sqrt(value)
  %4848 = fdiv fast float %4847, %4839
  %4849 = fcmp fast ogt float %4848, 0x3FFB6F8900000000
  %4850 = select i1 %4849, float 0x3FFB6F8900000000, float %4848
  %4851 = fmul fast float %4850, 0x3FE8A23460000000
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = call float @dx.op.binary.f32(i32 35, float %4850, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4854 = fmul fast float %4852, %4839
  %4855 = fmul fast float %4853, 0x3FF279A740000000
  %4856 = fadd fast float %4855, -1.000000e+00
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4846, float %64, float %4845, float %4846, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 25, float %4857)  ; Rsqrt(value)
  %4859 = fmul fast float %4858, %4845
  %4860 = fmul fast float %4858, %4846
  %4861 = fmul fast float %4858, %64
  %4862 = fmul fast float %4856, %4856
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = fmul fast float %4853, 0x40005F8BE0000000
  %4865 = fsub fast float 0x400C5BF8A0000000, %4864
  %4866 = fdiv fast float %4854, %4865
  %4867 = fmul fast float %4866, 0x3FEE31C3C0000000
  %4868 = fmul fast float %4867, %4863
  %4869 = fmul fast float %4853, 0x3FDACB7480000000
  %4870 = fadd fast float %4869, 0xBFD7347680000000
  %4871 = fmul fast float %4870, %4866
  %4872 = fmul fast float %4871, %4863
  br label %4873

; <label>:4873                                    ; preds = %4844, %4776
  %4874 = phi float [ %4859, %4844 ], [ 0.000000e+00, %4776 ]
  %4875 = phi float [ %4860, %4844 ], [ 0.000000e+00, %4776 ]
  %4876 = phi float [ %4861, %4844 ], [ 0.000000e+00, %4776 ]
  %4877 = phi float [ %4868, %4844 ], [ 0.000000e+00, %4776 ]
  %4878 = phi float [ %4872, %4844 ], [ 0.000000e+00, %4776 ]
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4875, float %4876, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = fmul fast float %4879, %4879
  %4881 = fmul fast float %4880, 0x3FEE471020000000
  %4882 = fadd fast float %4881, 0xBFD42F6020000000
  %4883 = fmul fast float %4839, 0x3FD20DD760000000
  %4884 = fmul fast float %4882, %4878
  %4885 = fmul fast float %4877, 0x3FDF454380000000
  %4886 = fmul fast float %4885, %4879
  %4887 = fadd fast float %4886, %4883
  %4888 = fadd fast float %4887, %4884
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4875, float %4876, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = fmul fast float %4889, 0x3FDF454380000000
  %4891 = fmul fast float %4889, %4889
  %4892 = fmul fast float %4891, 0x3FEE471020000000
  %4893 = fadd fast float %4892, 0xBFD42F6020000000
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4877, float %4878, float 0x3FD20DD760000000, float %4890, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4896 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = fcmp fast oeq float %4896, 0.000000e+00
  %4898 = fcmp fast oeq float %4895, 0.000000e+00
  %4899 = or i1 %4898, %4897
  br i1 %4899, label %4929, label %4900

; <label>:4900                                    ; preds = %4873
  %4901 = fsub fast float -0.000000e+00, %61
  %4902 = fsub fast float -0.000000e+00, %59
  %4903 = call float @dx.op.unary.f32(i32 24, float %4896)  ; Sqrt(value)
  %4904 = fdiv fast float %4903, %4895
  %4905 = fcmp fast ogt float %4904, 0x3FFB6F8900000000
  %4906 = select i1 %4905, float 0x3FFB6F8900000000, float %4904
  %4907 = fmul fast float %4906, 0x3FE8A23460000000
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = call float @dx.op.binary.f32(i32 35, float %4906, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4910 = fmul fast float %4908, %4895
  %4911 = fmul fast float %4909, 0x3FF279A740000000
  %4912 = fadd fast float %4911, -1.000000e+00
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %60, float %4901, float %4902, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = call float @dx.op.unary.f32(i32 25, float %4913)  ; Rsqrt(value)
  %4915 = fmul fast float %4914, %4901
  %4916 = fmul fast float %4914, %4902
  %4917 = fmul fast float %4914, %60
  %4918 = fmul fast float %4912, %4912
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = fmul fast float %4909, 0x40005F8BE0000000
  %4921 = fsub fast float 0x400C5BF8A0000000, %4920
  %4922 = fdiv fast float %4910, %4921
  %4923 = fmul fast float %4922, 0x3FEE31C3C0000000
  %4924 = fmul fast float %4923, %4919
  %4925 = fmul fast float %4909, 0x3FDACB7480000000
  %4926 = fadd fast float %4925, 0xBFD7347680000000
  %4927 = fmul fast float %4926, %4922
  %4928 = fmul fast float %4927, %4919
  br label %4929

; <label>:4929                                    ; preds = %4900, %4873
  %4930 = phi float [ %4915, %4900 ], [ 0.000000e+00, %4873 ]
  %4931 = phi float [ %4916, %4900 ], [ 0.000000e+00, %4873 ]
  %4932 = phi float [ %4917, %4900 ], [ 0.000000e+00, %4873 ]
  %4933 = phi float [ %4924, %4900 ], [ 0.000000e+00, %4873 ]
  %4934 = phi float [ %4928, %4900 ], [ 0.000000e+00, %4873 ]
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %4932, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = fmul fast float %4935, %4935
  %4937 = fmul fast float %4936, 0x3FEE471020000000
  %4938 = fadd fast float %4937, 0xBFD42F6020000000
  %4939 = fmul fast float %4895, 0x3FD20DD760000000
  %4940 = fmul fast float %4938, %4934
  %4941 = fmul fast float %4933, 0x3FDF454380000000
  %4942 = fmul fast float %4941, %4935
  %4943 = fadd fast float %4942, %4939
  %4944 = fadd fast float %4943, %4940
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %4932, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = fmul fast float %4945, 0x3FDF454380000000
  %4947 = fmul fast float %4945, %4945
  %4948 = fmul fast float %4947, 0x3FEE471020000000
  %4949 = fadd fast float %4948, 0xBFD42F6020000000
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4933, float %4934, float 0x3FD20DD760000000, float %4946, float %4949)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4952 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = fcmp fast oeq float %4952, 0.000000e+00
  %4954 = fcmp fast oeq float %4951, 0.000000e+00
  %4955 = or i1 %4954, %4953
  br i1 %4955, label %4985, label %4956

; <label>:4956                                    ; preds = %4929
  %4957 = fsub fast float -0.000000e+00, %57
  %4958 = fsub fast float -0.000000e+00, %55
  %4959 = call float @dx.op.unary.f32(i32 24, float %4952)  ; Sqrt(value)
  %4960 = fdiv fast float %4959, %4951
  %4961 = fcmp fast ogt float %4960, 0x3FFB6F8900000000
  %4962 = select i1 %4961, float 0x3FFB6F8900000000, float %4960
  %4963 = fmul fast float %4962, 0x3FE8A23460000000
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4962, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4966 = fmul fast float %4964, %4951
  %4967 = fmul fast float %4965, 0x3FF279A740000000
  %4968 = fadd fast float %4967, -1.000000e+00
  %4969 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %56, float %4957, float %4958, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = call float @dx.op.unary.f32(i32 25, float %4969)  ; Rsqrt(value)
  %4971 = fmul fast float %4970, %4957
  %4972 = fmul fast float %4970, %4958
  %4973 = fmul fast float %4970, %56
  %4974 = fmul fast float %4968, %4968
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = fmul fast float %4965, 0x40005F8BE0000000
  %4977 = fsub fast float 0x400C5BF8A0000000, %4976
  %4978 = fdiv fast float %4966, %4977
  %4979 = fmul fast float %4978, 0x3FEE31C3C0000000
  %4980 = fmul fast float %4979, %4975
  %4981 = fmul fast float %4965, 0x3FDACB7480000000
  %4982 = fadd fast float %4981, 0xBFD7347680000000
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4983, %4975
  br label %4985

; <label>:4985                                    ; preds = %4956, %4929
  %4986 = phi float [ %4971, %4956 ], [ 0.000000e+00, %4929 ]
  %4987 = phi float [ %4972, %4956 ], [ 0.000000e+00, %4929 ]
  %4988 = phi float [ %4973, %4956 ], [ 0.000000e+00, %4929 ]
  %4989 = phi float [ %4980, %4956 ], [ 0.000000e+00, %4929 ]
  %4990 = phi float [ %4984, %4956 ], [ 0.000000e+00, %4929 ]
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = fmul fast float %4991, %4991
  %4993 = fmul fast float %4992, 0x3FEE471020000000
  %4994 = fadd fast float %4993, 0xBFD42F6020000000
  %4995 = fmul fast float %4951, 0x3FD20DD760000000
  %4996 = fmul fast float %4994, %4990
  %4997 = fmul fast float %4989, 0x3FDF454380000000
  %4998 = fmul fast float %4997, %4991
  %4999 = fadd fast float %4998, %4995
  %5000 = fadd fast float %4999, %4996
  %5001 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5002 = fmul fast float %5001, 0x3FDF454380000000
  %5003 = fmul fast float %5001, %5001
  %5004 = fmul fast float %5003, 0x3FEE471020000000
  %5005 = fadd fast float %5004, 0xBFD42F6020000000
  %5006 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4989, float %4990, float 0x3FD20DD760000000, float %5002, float %5005)  ; Dot3(ax,ay,az,bx,by,bz)
  %5007 = call float @dx.op.binary.f32(i32 35, float %4888, float 0.000000e+00)  ; FMax(a,b)
  %5008 = call float @dx.op.binary.f32(i32 35, float %4944, float 0.000000e+00)  ; FMax(a,b)
  %5009 = call float @dx.op.binary.f32(i32 35, float %5000, float 0.000000e+00)  ; FMax(a,b)
  %5010 = call float @dx.op.binary.f32(i32 35, float %4894, float 0.000000e+00)  ; FMax(a,b)
  %5011 = call float @dx.op.binary.f32(i32 35, float %4950, float 0.000000e+00)  ; FMax(a,b)
  %5012 = call float @dx.op.binary.f32(i32 35, float %5006, float 0.000000e+00)  ; FMax(a,b)
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 0
  %5015 = call float @dx.op.binary.f32(i32 36, float %4783, float %5014)  ; FMin(a,b)
  %5016 = fmul fast float %5015, %4821
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = bitcast float %5017 to i32
  %5019 = sub nsw i32 2129859010, %5018
  %5020 = bitcast i32 %5019 to float
  %5021 = call float @dx.op.binary.f32(i32 36, float %4784, float %5014)  ; FMin(a,b)
  %5022 = fmul fast float %5021, %4821
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = bitcast float %5023 to i32
  %5025 = sub nsw i32 2129859010, %5024
  %5026 = bitcast i32 %5025 to float
  %5027 = call float @dx.op.binary.f32(i32 36, float %4785, float %5014)  ; FMin(a,b)
  %5028 = fmul fast float %5027, %4821
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = bitcast float %5029 to i32
  %5031 = sub nsw i32 2129859010, %5030
  %5032 = bitcast i32 %5031 to float
  %5033 = fmul fast float %5007, %4820
  %5034 = fmul fast float %5033, %5020
  %5035 = fmul fast float %5008, %4820
  %5036 = fmul fast float %5035, %5026
  %5037 = fmul fast float %5009, %4820
  %5038 = fmul fast float %5037, %5032
  %5039 = call float @dx.op.binary.f32(i32 36, float %4786, float %5014)  ; FMin(a,b)
  %5040 = fmul fast float %5039, %4821
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = bitcast float %5041 to i32
  %5043 = sub nsw i32 2129859010, %5042
  %5044 = bitcast i32 %5043 to float
  %5045 = call float @dx.op.binary.f32(i32 36, float %4787, float %5014)  ; FMin(a,b)
  %5046 = fmul fast float %5045, %4821
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = bitcast float %5047 to i32
  %5049 = sub nsw i32 2129859010, %5048
  %5050 = bitcast i32 %5049 to float
  %5051 = call float @dx.op.binary.f32(i32 36, float %4809, float %5014)  ; FMin(a,b)
  %5052 = fmul fast float %5051, %4821
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = bitcast float %5053 to i32
  %5055 = sub nsw i32 2129859010, %5054
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %5010, %4820
  %5058 = fmul fast float %5057, %5044
  %5059 = fmul fast float %5011, %4820
  %5060 = fmul fast float %5059, %5050
  %5061 = fmul fast float %5012, %4820
  %5062 = fmul fast float %5061, %5056
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5036, float %5038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = select i1 %186, float 0.000000e+00, float %5034
  %5065 = select i1 %186, float %5063, float %5036
  %5066 = select i1 %186, float 0.000000e+00, float %5038
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5060, float %5062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = select i1 %186, float 0.000000e+00, float %5058
  %5069 = select i1 %186, float %5067, float %5060
  %5070 = select i1 %186, float 0.000000e+00, float %5062
  %5071 = fmul fast float %4811, 9.843750e-01
  %5072 = fmul fast float %4792, 9.843750e-01
  %5073 = fadd fast float %5071, 7.812500e-03
  %5074 = fadd fast float %5072, 7.812500e-03
  %5075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5073, float %5074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 2
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 3
  %5078 = fmul fast float %5076, %4786
  %5079 = fmul fast float %5076, %4787
  %5080 = fmul fast float %5076, %4809
  %5081 = fadd fast float %5078, %5077
  %5082 = fadd fast float %5079, %5077
  %5083 = fadd fast float %5080, %5077
  %5084 = fcmp fast ogt float %4181, 0.000000e+00
  br i1 %5084, label %5085, label %5111

; <label>:5085                                    ; preds = %4985
  %5086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4181, float %4811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.ResRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.ResRet.f32 %5086, 2
  %5090 = fadd fast float %5087, -5.000000e-01
  %5091 = fadd fast float %5088, -5.000000e-01
  %5092 = fadd fast float %5089, -5.000000e-01
  %5093 = fsub fast float 1.000000e+00, %4786
  %5094 = fsub fast float 1.000000e+00, %4787
  %5095 = fsub fast float 1.000000e+00, %4809
  %5096 = fmul fast float %4786, 4.000000e+00
  %5097 = fmul fast float %5096, %5093
  %5098 = fmul fast float %5097, %5090
  %5099 = fmul fast float %4787, 4.000000e+00
  %5100 = fmul fast float %5099, %5094
  %5101 = fmul fast float %5100, %5091
  %5102 = fmul fast float %4809, 4.000000e+00
  %5103 = fmul fast float %5102, %5095
  %5104 = fmul fast float %5103, %5092
  %5105 = fadd fast float %5098, %5081
  %5106 = fadd fast float %5101, %5082
  %5107 = fadd fast float %5104, %5083
  %5108 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  br label %5111

; <label>:5111                                    ; preds = %5085, %4985
  %5112 = phi float [ %5108, %5085 ], [ %5081, %4985 ]
  %5113 = phi float [ %5109, %5085 ], [ %5082, %4985 ]
  %5114 = phi float [ %5110, %5085 ], [ %5083, %4985 ]
  %5115 = call float @dx.op.binary.f32(i32 35, float %5113, float %5114)  ; FMax(a,b)
  %5116 = call float @dx.op.binary.f32(i32 35, float %5112, float %5115)  ; FMax(a,b)
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = fmul fast float %5116, %4792
  %5119 = fadd fast float %5118, %4792
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5122 = extractvalue %dx.types.CBufRet.f32 %5120, 1
  %5123 = extractvalue %dx.types.CBufRet.f32 %5120, 2
  %5124 = extractvalue %dx.types.CBufRet.f32 %5120, 3
  %5125 = fmul fast float %5119, %5121
  %5126 = fadd fast float %5125, %5122
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %5123, %5119
  %5129 = fadd fast float %5128, %5124
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fsub fast float 1.000000e+00, %4832
  %5132 = fadd fast float %5131, %5130
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fcmp fast olt float %5133, 1.000000e+00
  br i1 %5134, label %5135, label %5990

; <label>:5135                                    ; preds = %5111
  %5136 = fcmp fast olt float %5127, 1.000000e+00
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = fcmp fast ogt float %5138, 0.000000e+00
  %5140 = or i1 %5136, %5139
  %5141 = or i1 %5136, %5139
  %5142 = xor i1 %5141, true
  %5143 = zext i1 %5142 to i32
  br i1 %5140, label %5144, label %5387

; <label>:5144                                    ; preds = %5135
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5149 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.CBufRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5154 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5165, 2
  %5169 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.CBufRet.f32 %5170, 2
  %5174 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.unary.f32(i32 6, float %5176)  ; FAbs(value)
  %5178 = fmul fast float %5177, 8.000000e+00
  %5179 = fadd fast float %5178, -6.000000e+00
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fmul fast float %5175, 8.000000e+00
  %5182 = fmul fast float %5181, %5138
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = fcmp fast ogt float %5183, 0.000000e+00
  br i1 %5184, label %5185, label %5362, !dx.controlflow.hints !85

; <label>:5185                                    ; preds = %5144
  %5186 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5187 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5188 = fsub fast float %5186, %5187
  %5189 = fmul fast float %5188, %4792
  %5190 = fadd fast float %5189, %5187
  %5191 = fmul fast float %199, 2.000000e+00
  %5192 = fmul fast float %200, 2.000000e+00
  %5193 = fadd fast float %5191, -1.000000e+00
  %5194 = fadd fast float %5192, -1.000000e+00
  %5195 = fmul fast float %5190, %5193
  %5196 = fmul fast float %5190, %5194
  %5197 = fadd fast float %5195, %85
  %5198 = fadd fast float %5196, %86
  %5199 = fmul fast float %5197, %4795
  %5200 = fmul fast float %5198, %4796
  %5201 = fadd fast float %4792, 0xBFE3333340000000
  %5202 = fmul fast float %5201, 0x4004000020000000
  %5203 = fsub fast float 1.000000e+00, %5202
  %5204 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5205 = fmul fast float %5204, 3.000000e+00
  %5206 = fadd fast float %5205, %199
  %5207 = call float @dx.op.unary.f32(i32 27, float %5206)  ; Round_ni(value)
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5199, float %5200, float %5207, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = fcmp fast une float %5209, 0xFFF0000000000000
  %5211 = fcmp fast une float %5209, 0x7FF0000000000000
  %5212 = and i1 %5210, %5211
  %5213 = fcmp fast olt float %5209, 0.000000e+00
  %5214 = call float @dx.op.unary.f32(i32 6, float %5209)  ; FAbs(value)
  %5215 = fsub fast float 1.000000e+00, %5214
  %5216 = select i1 %5212, float 1.000000e+00, float 0.000000e+00
  %5217 = fmul fast float %5216, %5183
  %5218 = fcmp fast ogt float %5217, 0.000000e+00
  br i1 %5218, label %5219, label %5362, !dx.controlflow.hints !86

; <label>:5219                                    ; preds = %5185
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.CBufRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.CBufRet.f32 %5220, 2
  %5224 = select i1 %5213, float 0.000000e+00, float %5221
  %5225 = select i1 %5213, float 0.000000e+00, float %5222
  %5226 = select i1 %5213, float 0.000000e+00, float %5223
  %5227 = select i1 %5213, float %5146, float %5161
  %5228 = select i1 %5213, float %5151, float %5166
  %5229 = select i1 %5213, float %5156, float %5171
  %5230 = select i1 %5213, float %5147, float %5162
  %5231 = select i1 %5213, float %5152, float %5167
  %5232 = select i1 %5213, float %5157, float %5172
  %5233 = select i1 %5213, float %5148, float %5163
  %5234 = select i1 %5213, float %5153, float %5168
  %5235 = select i1 %5213, float %5158, float %5173
  %5236 = select i1 %5213, float %5149, float %5164
  %5237 = select i1 %5213, float %5154, float %5169
  %5238 = select i1 %5213, float %5159, float %5174
  %5239 = fadd fast float %5224, %144
  %5240 = fadd fast float %5225, %145
  %5241 = fadd fast float %5226, %146
  %5242 = fmul fast float %5239, %5227
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5240, float %5230, float %5242)  ; FMad(a,b,c)
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5233, float %5243)  ; FMad(a,b,c)
  %5245 = fadd fast float %5244, %5236
  %5246 = fmul fast float %5239, %5228
  %5247 = call float @dx.op.tertiary.f32(i32 46, float %5240, float %5231, float %5246)  ; FMad(a,b,c)
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5234, float %5247)  ; FMad(a,b,c)
  %5249 = fadd fast float %5248, %5237
  %5250 = fmul fast float %5239, %5229
  %5251 = call float @dx.op.tertiary.f32(i32 46, float %5240, float %5232, float %5250)  ; FMad(a,b,c)
  %5252 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5235, float %5251)  ; FMad(a,b,c)
  %5253 = fadd fast float %5252, %5238
  %5254 = fdiv fast float 1.000000e+00, %5253
  %5255 = fmul fast float %5254, %5245
  %5256 = fmul fast float %5254, %5249
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 1
  %5260 = fmul fast float %5255, %5258
  %5261 = fmul fast float %5256, %5259
  %5262 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5263 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5264 = fadd fast float %5260, %5262
  %5265 = fadd fast float %5261, %5263
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5268 = fmul fast float %5267, %4817
  %5269 = fmul fast float %5267, %4818
  %5270 = fmul fast float %5267, %4819
  %5271 = fadd fast float %5268, %5239
  %5272 = fadd fast float %5269, %5240
  %5273 = fadd fast float %5270, %5241
  %5274 = fmul fast float %5271, %5227
  %5275 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5230, float %5274)  ; FMad(a,b,c)
  %5276 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5233, float %5275)  ; FMad(a,b,c)
  %5277 = fadd fast float %5276, %5236
  %5278 = fmul fast float %5271, %5228
  %5279 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5231, float %5278)  ; FMad(a,b,c)
  %5280 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5234, float %5279)  ; FMad(a,b,c)
  %5281 = fadd fast float %5280, %5237
  %5282 = fmul fast float %5271, %5229
  %5283 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5232, float %5282)  ; FMad(a,b,c)
  %5284 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5235, float %5283)  ; FMad(a,b,c)
  %5285 = fadd fast float %5284, %5238
  %5286 = fdiv fast float 1.000000e+00, %5285
  %5287 = fmul fast float %5286, %5277
  %5288 = fmul fast float %5286, %5281
  %5289 = fmul fast float %5264, 2.000000e+00
  %5290 = fadd fast float %5289, -1.000000e+00
  %5291 = call float @dx.op.unary.f32(i32 6, float %5290)  ; FAbs(value)
  %5292 = fmul fast float %5291, 5.000000e+00
  %5293 = fadd fast float %5292, -4.000000e+00
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = fmul fast float %5294, %5180
  %5296 = fsub fast float %5255, %5287
  %5297 = fmul fast float %5258, %5296
  %5298 = fmul fast float %5295, %5297
  %5299 = fsub fast float %5287, %5255
  %5300 = fmul fast float %5258, %5299
  %5301 = fadd fast float %5300, %5298
  %5302 = fsub fast float %5288, %5256
  %5303 = fmul fast float %5259, %5302
  %5304 = fmul fast float %5301, %5215
  %5305 = fmul fast float %5303, %5215
  %5306 = fadd fast float %5304, %5264
  %5307 = fadd fast float %5305, %5265
  %5308 = fsub fast float %5286, %5254
  %5309 = fmul fast float %5308, %5215
  %5310 = fadd fast float %5309, %5254
  %5311 = fdiv fast float 1.000000e+00, %5310
  %5312 = fadd fast float %4792, -1.000000e+00
  %5313 = fsub fast float %5311, %5253
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5316 = fmul fast float %5315, %5311
  %5317 = fdiv fast float 1.600000e+02, %5316
  %5318 = fmul fast float %5312, %5312
  %5319 = fmul fast float %5318, 0xBFB5B17960000000
  %5320 = fmul fast float %5319, %5313
  %5321 = fmul fast float %5320, %5317
  %5322 = call float @dx.op.unary.f32(i32 21, float %5321)  ; Exp(value)
  %5323 = fmul fast float %5322, 0x3FF04B2960000000
  %5324 = fsub fast float 0x3FF04B2960000000, %5323
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fmul fast float %5325, 4.000000e+00
  %5327 = fadd fast float %199, -5.000000e-01
  %5328 = fadd fast float %200, -5.000000e-01
  %5329 = fmul fast float %5325, 0x3FBEB851E0000000
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fmul fast float %5330, %5327
  %5332 = fmul fast float %5330, %5328
  %5333 = fadd fast float %5306, %5331
  %5334 = fadd fast float %5307, %5332
  %5335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5333, float %5334, float undef, float undef, i32 0, i32 0, i32 undef, float %5326)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5341 = fmul fast float %5340, %5336
  %5342 = fmul fast float %5340, %5337
  %5343 = fmul fast float %5340, %5338
  %5344 = select i1 %186, float 0.000000e+00, float %5342
  %5345 = select i1 %186, float 0.000000e+00, float %5343
  %5346 = fmul fast float %5333, 2.000000e+00
  %5347 = fmul fast float %5334, 2.000000e+00
  %5348 = fadd fast float %5346, -1.000000e+00
  %5349 = fadd fast float %5347, -1.000000e+00
  %5350 = fmul fast float %5348, %5348
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = fmul fast float %5353, %5180
  %5355 = fadd fast float %5354, %5352
  %5356 = fmul fast float %5349, %5349
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5355, %5358
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5360, %5217
  br label %5362

; <label>:5362                                    ; preds = %5219, %5185, %5144
  %5363 = phi float [ %5341, %5219 ], [ 0.000000e+00, %5185 ], [ 0.000000e+00, %5144 ]
  %5364 = phi float [ %5344, %5219 ], [ 0.000000e+00, %5185 ], [ 0.000000e+00, %5144 ]
  %5365 = phi float [ %5345, %5219 ], [ 0.000000e+00, %5185 ], [ 0.000000e+00, %5144 ]
  %5366 = phi float [ %5361, %5219 ], [ 0.000000e+00, %5185 ], [ 0.000000e+00, %5144 ]
  %5367 = fcmp fast olt float %5366, 1.000000e+00
  %5368 = or i1 %5367, %5142
  %5369 = zext i1 %5368 to i32
  %5370 = fmul fast float %5366, %5127
  %5371 = fsub fast float %5366, %5370
  %5372 = fsub fast float 1.000000e+00, %5133
  %5373 = fmul fast float %5371, %5372
  %5374 = fadd fast float %5373, %5133
  %5375 = fsub fast float %5374, %5371
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fmul fast float %5376, %5068
  %5378 = fmul fast float %5376, %5069
  %5379 = fmul fast float %5376, %5070
  %5380 = fsub fast float -0.000000e+00, %5374
  %5381 = fmul fast float %5371, %5363
  %5382 = fmul fast float %5371, %5364
  %5383 = fmul fast float %5371, %5365
  %5384 = fadd fast float %5381, %5377
  %5385 = fadd fast float %5382, %5378
  %5386 = fadd fast float %5383, %5379
  br label %5387

; <label>:5387                                    ; preds = %5362, %5135
  %5388 = phi float [ %5133, %5135 ], [ %5380, %5362 ]
  %5389 = phi float [ %5068, %5135 ], [ %5384, %5362 ]
  %5390 = phi float [ %5069, %5135 ], [ %5385, %5362 ]
  %5391 = phi float [ %5070, %5135 ], [ %5386, %5362 ]
  %5392 = phi i32 [ %5143, %5135 ], [ %5369, %5362 ]
  %5393 = icmp eq i32 %5392, 0
  br i1 %5393, label %5990, label %5394

; <label>:5394                                    ; preds = %5387
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5398 = fmul fast float %5396, %85
  %5399 = fmul fast float %5397, %86
  %5400 = fptoui float %5398 to i32
  %5401 = fptoui float %5399 to i32
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.f32 %5402, 2
  %5405 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5406 = fadd fast float %80, -4.000000e+00
  %5407 = call float @dx.op.binary.f32(i32 35, float %5406, float 0.000000e+00)  ; FMax(a,b)
  %5408 = fadd fast float %5407, %5403
  %5409 = fmul fast float %5408, %5404
  %5410 = call float @dx.op.unary.f32(i32 23, float %5409)  ; Log(value)
  %5411 = fmul fast float %5410, %5405
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5414 = fmul fast float %5411, %5413
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.i32 %5416, 1
  %5418 = add i32 %5417, -1
  %5419 = uitofp i32 %5417 to float
  %5420 = fmul fast float %5419, %5415
  %5421 = fptoui float %5420 to i32
  %5422 = call i32 @dx.op.binary.i32(i32 40, i32 %5421, i32 %5418)  ; UMin(a,b)
  %5423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.i32 %5423, 2
  %5425 = extractvalue %dx.types.CBufRet.i32 %5423, 3
  %5426 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5401, i32 %5424, i32 %5400)  ; UMad(a,b,c)
  %5427 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5422, i32 %5425, i32 %5426)  ; UMad(a,b,c)
  %5428 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5429 = fptoui float %5428 to i32
  %5430 = lshr i32 %5429, 5
  %5431 = call i32 @dx.op.binary.i32(i32 40, i32 %5430, i32 8191)  ; UMin(a,b)
  %5432 = fcmp fast ogt float %4591, 0.000000e+00
  %5433 = fcmp fast ogt float %4819, 0.000000e+00
  %5434 = and i1 %5433, %5432
  br i1 %5434, label %5435, label %5464

; <label>:5435                                    ; preds = %5394
  %5436 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5437 = call float @dx.op.binary.f32(i32 35, float %5436, float -1.000000e+00)  ; FMax(a,b)
  %5438 = call float @dx.op.binary.f32(i32 36, float %5437, float 1.000000e+00)  ; FMin(a,b)
  %5439 = fmul fast float %5438, %5438
  %5440 = fsub fast float 1.000000e+00, %5439
  %5441 = fmul fast float %5440, 0x3FFC6E2300000000
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = fcmp fast ogt float %5442, 0.000000e+00
  %5444 = call float @dx.op.unary.f32(i32 24, float %5442)  ; Sqrt(value)
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = call float @dx.op.unary.f32(i32 23, float %5445)  ; Log(value)
  %5447 = fmul fast float %5446, 5.000000e+00
  %5448 = call float @dx.op.unary.f32(i32 21, float %5447)  ; Exp(value)
  %5449 = fmul fast float %5448, 0x3FEF591A60000000
  %5450 = fadd fast float %5449, 0x3F94DCB540000000
  %5451 = select i1 %5443, float %5450, float 1.000000e+00
  %5452 = fcmp fast oge float %5451, 1.000000e+00
  %5453 = fmul fast float %5436, 2.000000e+00
  %5454 = fadd fast float %5453, %4819
  %5455 = select i1 %5452, float %5454, float %4819
  %5456 = fsub fast float %5455, %4819
  %5457 = fmul fast float %5456, %4591
  %5458 = fadd fast float %5457, %4819
  %5459 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %5458, float %4817, float %4818, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = call float @dx.op.unary.f32(i32 25, float %5459)  ; Rsqrt(value)
  %5461 = fmul fast float %5460, %4817
  %5462 = fmul fast float %5460, %4818
  %5463 = fmul fast float %5458, %5460
  br label %5464

; <label>:5464                                    ; preds = %5435, %5394
  %5465 = phi float [ %5461, %5435 ], [ %4817, %5394 ]
  %5466 = phi float [ %5462, %5435 ], [ %4818, %5394 ]
  %5467 = phi float [ %5463, %5435 ], [ %4819, %5394 ]
  %5468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.i32 %5468, 2
  %5470 = add nsw i32 %5469, -1
  %5471 = call i32 @dx.op.binary.i32(i32 37, i32 %5470, i32 0)  ; IMax(a,b)
  %5472 = shl i32 %5431, 2
  %5473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5472, i32 undef)  ; BufferLoad(srv,index,wot)
  %5474 = extractvalue %dx.types.ResRet.i32 %5473, 0
  %5475 = lshr i32 %5474, 16
  %5476 = and i32 %5474, 65535
  %5477 = lshr i32 %5474, 21
  %5478 = lshr i32 %5476, 5
  %5479 = call i32 @dx.op.binary.i32(i32 40, i32 %5478, i32 %5471)  ; UMin(a,b)
  %5480 = icmp ugt i32 %5477, %5479
  br i1 %5480, label %5862, label %5481

; <label>:5481                                    ; preds = %5464
  br label %5482

; <label>:5482                                    ; preds = %5851, %5481
  %5483 = phi float [ %5852, %5851 ], [ 0.000000e+00, %5481 ]
  %5484 = phi float [ %5853, %5851 ], [ 0.000000e+00, %5481 ]
  %5485 = phi float [ %5854, %5851 ], [ 0.000000e+00, %5481 ]
  %5486 = phi float [ %5855, %5851 ], [ 1.000000e+00, %5481 ]
  %5487 = phi i32 [ %5859, %5851 ], [ %5477, %5481 ]
  %5488 = phi float [ %5856, %5851 ], [ 0.000000e+00, %5481 ]
  %5489 = phi float [ %5857, %5851 ], [ 0.000000e+00, %5481 ]
  %5490 = phi float [ %5858, %5851 ], [ 0.000000e+00, %5481 ]
  %5491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.i32 %5491, 2
  %5493 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5427, i32 %5492, i32 %5487)  ; UMad(a,b,c)
  %5494 = shl i32 %5493, 2
  %5495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5494, i32 undef)  ; BufferLoad(srv,index,wot)
  %5496 = extractvalue %dx.types.ResRet.i32 %5495, 0
  %5497 = shl i32 %5487, 5
  %5498 = sub nsw i32 %5475, %5497
  %5499 = call i32 @dx.op.binary.i32(i32 37, i32 %5498, i32 0)  ; IMax(a,b)
  %5500 = call i32 @dx.op.binary.i32(i32 38, i32 %5499, i32 31)  ; IMin(a,b)
  %5501 = sub nsw i32 1, %5475
  %5502 = add nsw i32 %5501, %5476
  %5503 = call i32 @dx.op.binary.i32(i32 37, i32 %5502, i32 0)  ; IMax(a,b)
  %5504 = call i32 @dx.op.binary.i32(i32 38, i32 %5503, i32 32)  ; IMin(a,b)
  %5505 = and i32 %5504, 31
  %5506 = shl i32 -1, %5505
  %5507 = xor i32 %5506, -1
  %5508 = and i32 %5500, 31
  %5509 = shl i32 %5507, %5508
  %5510 = icmp eq i32 %5504, 32
  %5511 = select i1 %5510, i32 -1, i32 %5509
  %5512 = and i32 %5511, %5496
  %5513 = icmp eq i32 %5512, 0
  br i1 %5513, label %5851, label %5514

; <label>:5514                                    ; preds = %5482
  br label %5515

; <label>:5515                                    ; preds = %5625, %5514
  %5516 = phi float [ %5626, %5625 ], [ %5483, %5514 ]
  %5517 = phi float [ %5627, %5625 ], [ %5484, %5514 ]
  %5518 = phi float [ %5628, %5625 ], [ %5485, %5514 ]
  %5519 = phi float [ %5629, %5625 ], [ %5486, %5514 ]
  %5520 = phi i32 [ %5528, %5625 ], [ %5512, %5514 ]
  %5521 = phi float [ %5630, %5625 ], [ %5488, %5514 ]
  %5522 = phi float [ %5631, %5625 ], [ %5489, %5514 ]
  %5523 = phi float [ %5632, %5625 ], [ %5490, %5514 ]
  %5524 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5520)  ; FirstbitLo(value)
  %5525 = add i32 %5524, %5497
  %5526 = and i32 %5524, 31
  %5527 = shl i32 1, %5526
  %5528 = xor i32 %5527, %5520
  %5529 = mul i32 %5525, 72
  %5530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = add i32 %5529, 12
  %5535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5536 = extractvalue %dx.types.ResRet.i32 %5535, 0
  %5537 = add i32 %5529, 16
  %5538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5537, i32 undef)  ; BufferLoad(srv,index,wot)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = add i32 %5529, 28
  %5543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5542, i32 undef)  ; BufferLoad(srv,index,wot)
  %5544 = extractvalue %dx.types.ResRet.f32 %5543, 0
  %5545 = add i32 %5529, 32
  %5546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5545, i32 undef)  ; BufferLoad(srv,index,wot)
  %5547 = extractvalue %dx.types.ResRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.ResRet.f32 %5546, 1
  %5549 = extractvalue %dx.types.ResRet.f32 %5546, 2
  %5550 = extractvalue %dx.types.ResRet.f32 %5546, 3
  %5551 = add i32 %5529, 48
  %5552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5551, i32 undef)  ; BufferLoad(srv,index,wot)
  %5553 = extractvalue %dx.types.ResRet.f32 %5552, 0
  %5554 = extractvalue %dx.types.ResRet.f32 %5552, 1
  %5555 = add i32 %5529, 56
  %5556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5555, i32 undef)  ; BufferLoad(srv,index,wot)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.ResRet.f32 %5556, 1
  %5559 = add i32 %5529, 64
  %5560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5559, i32 undef)  ; BufferLoad(srv,index,wot)
  %5561 = extractvalue %dx.types.ResRet.f32 %5560, 0
  %5562 = extractvalue %dx.types.ResRet.f32 %5560, 1
  %5563 = mul i32 %5525, 60
  %5564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5563, i32 undef)  ; BufferLoad(srv,index,wot)
  %5565 = extractvalue %dx.types.ResRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.ResRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.ResRet.f32 %5564, 2
  %5568 = add i32 %5563, 12
  %5569 = add i32 %5563, 48
  %5570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5569, i32 undef)  ; BufferLoad(srv,index,wot)
  %5571 = extractvalue %dx.types.ResRet.f32 %5570, 0
  %5572 = extractvalue %dx.types.ResRet.f32 %5570, 1
  %5573 = extractvalue %dx.types.ResRet.f32 %5570, 2
  %5574 = and i32 %5536, 32767
  %5575 = bitcast float %5531 to i32
  %5576 = icmp eq i32 %5575, -1
  %5577 = bitcast float %5532 to i32
  %5578 = and i32 %5536, 32768
  %5579 = icmp ne i32 %5578, 0
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.CBufRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5580, 2
  %5584 = fsub fast float %5565, %5581
  %5585 = fsub fast float %5566, %5582
  %5586 = fsub fast float %5567, %5583
  %5587 = fsub fast float %144, %5584
  %5588 = fsub fast float %145, %5585
  %5589 = fsub fast float %146, %5586
  %5590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5568, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.ResRet.f32 %5590, 1
  %5593 = extractvalue %dx.types.ResRet.f32 %5590, 2
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5591, float %5592, float %5593)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = add i32 %5563, 24
  %5596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5595, i32 undef)  ; BufferLoad(srv,index,wot)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = add i32 %5563, 36
  %5602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5601, i32 undef)  ; BufferLoad(srv,index,wot)
  %5603 = extractvalue %dx.types.ResRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.ResRet.f32 %5602, 1
  %5605 = extractvalue %dx.types.ResRet.f32 %5602, 2
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 6, float %5594)  ; FAbs(value)
  %5608 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5609 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5610 = fsub fast float %5571, %5607
  %5611 = fsub fast float %5572, %5608
  %5612 = fsub fast float %5573, %5609
  %5613 = fmul fast float %5610, %5539
  %5614 = fmul fast float %5611, %5540
  %5615 = fmul fast float %5612, %5541
  %5616 = call float @dx.op.binary.f32(i32 36, float %5614, float %5615)  ; FMin(a,b)
  %5617 = call float @dx.op.binary.f32(i32 36, float %5613, float %5616)  ; FMin(a,b)
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = call float @dx.op.binary.f32(i32 36, float %5519, float %5618)  ; FMin(a,b)
  %5620 = uitofp i1 %5579 to float
  %5621 = fadd fast float %4591, 1.000000e+00
  %5622 = fsub fast float %5621, %5620
  %5623 = fmul fast float %5619, %5622
  %5624 = fcmp fast ogt float %5623, 0.000000e+00
  br i1 %5624, label %5634, label %5625

; <label>:5625                                    ; preds = %5776, %5515
  %5626 = phi float [ %5840, %5776 ], [ %5516, %5515 ]
  %5627 = phi float [ %5841, %5776 ], [ %5517, %5515 ]
  %5628 = phi float [ %5842, %5776 ], [ %5518, %5515 ]
  %5629 = phi float [ %5849, %5776 ], [ %5519, %5515 ]
  %5630 = phi float [ %5846, %5776 ], [ %5521, %5515 ]
  %5631 = phi float [ %5847, %5776 ], [ %5522, %5515 ]
  %5632 = phi float [ %5848, %5776 ], [ %5523, %5515 ]
  %5633 = icmp eq i32 %5520, %5527
  br i1 %5633, label %5850, label %5515

; <label>:5634                                    ; preds = %5515
  br i1 %5576, label %5692, label %5635

; <label>:5635                                    ; preds = %5634
  %5636 = fsub fast float -0.000000e+00, %5591
  %5637 = fsub fast float -0.000000e+00, %5592
  %5638 = fsub fast float -0.000000e+00, %5593
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = fsub fast float -0.000000e+00, %5639
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fadd fast float %5641, %5554
  %5643 = fadd fast float %5553, %5641
  %5644 = fsub fast float -0.000000e+00, %5643
  %5645 = fcmp ogt float %5639, -0.000000e+00
  %5646 = select i1 %5645, float %5644, float %5642
  %5647 = call float @dx.op.unary.f32(i32 6, float %5640)  ; FAbs(value)
  %5648 = fdiv fast float 1.000000e+00, %5647
  %5649 = fmul fast float %5646, %5648
  %5650 = call float @dx.op.binary.f32(i32 35, float %5649, float 0.000000e+00)  ; FMax(a,b)
  %5651 = fsub fast float -0.000000e+00, %5597
  %5652 = fsub fast float -0.000000e+00, %5598
  %5653 = fsub fast float -0.000000e+00, %5599
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = fsub fast float -0.000000e+00, %5654
  %5656 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = fadd fast float %5656, %5558
  %5658 = fadd fast float %5557, %5656
  %5659 = fsub fast float -0.000000e+00, %5658
  %5660 = fcmp ogt float %5654, -0.000000e+00
  %5661 = select i1 %5660, float %5659, float %5657
  %5662 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5663 = fdiv fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5661, %5663
  %5665 = call float @dx.op.binary.f32(i32 35, float %5664, float 0.000000e+00)  ; FMax(a,b)
  %5666 = fsub fast float -0.000000e+00, %5603
  %5667 = fsub fast float -0.000000e+00, %5604
  %5668 = fsub fast float -0.000000e+00, %5605
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5666, float %5667, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fsub fast float -0.000000e+00, %5669
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5666, float %5667, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = fadd fast float %5671, %5562
  %5673 = fadd fast float %5561, %5671
  %5674 = fsub fast float -0.000000e+00, %5673
  %5675 = fcmp ogt float %5669, -0.000000e+00
  %5676 = select i1 %5675, float %5674, float %5672
  %5677 = call float @dx.op.unary.f32(i32 6, float %5670)  ; FAbs(value)
  %5678 = fdiv fast float 1.000000e+00, %5677
  %5679 = fmul fast float %5676, %5678
  %5680 = call float @dx.op.binary.f32(i32 35, float %5679, float 0.000000e+00)  ; FMax(a,b)
  %5681 = call float @dx.op.binary.f32(i32 36, float %5665, float %5680)  ; FMin(a,b)
  %5682 = call float @dx.op.binary.f32(i32 36, float %5650, float %5681)  ; FMin(a,b)
  %5683 = fmul fast float %5682, %5465
  %5684 = fmul fast float %5682, %5466
  %5685 = fmul fast float %5682, %5467
  %5686 = fadd fast float %5683, %144
  %5687 = fadd fast float %5684, %145
  %5688 = fadd fast float %5685, %146
  %5689 = fsub fast float %5686, %5531
  %5690 = fsub fast float %5687, %5532
  %5691 = fsub fast float %5688, %5533
  br label %5699

; <label>:5692                                    ; preds = %5634
  %5693 = fmul fast float %5465, 8.096000e+03
  %5694 = fmul fast float %5466, 8.096000e+03
  %5695 = fmul fast float %5467, 8.096000e+03
  %5696 = fadd fast float %5693, %144
  %5697 = fadd fast float %5694, %145
  %5698 = fadd fast float %5695, %146
  br label %5699

; <label>:5699                                    ; preds = %5692, %5635
  %5700 = phi float [ %5465, %5692 ], [ %5689, %5635 ]
  %5701 = phi float [ %5466, %5692 ], [ %5690, %5635 ]
  %5702 = phi float [ %5467, %5692 ], [ %5691, %5635 ]
  %5703 = phi float [ %5696, %5692 ], [ %5686, %5635 ]
  %5704 = phi float [ %5697, %5692 ], [ %5687, %5635 ]
  %5705 = phi float [ %5698, %5692 ], [ %5688, %5635 ]
  %5706 = fcmp fast olt float %5550, 1.000000e+00
  br i1 %5706, label %5707, label %5738, !dx.controlflow.hints !87

; <label>:5707                                    ; preds = %5699
  %5708 = fmul fast float %5702, %5548
  %5709 = fmul fast float %5701, %5549
  %5710 = fsub fast float %5708, %5709
  %5711 = fmul fast float %5700, %5549
  %5712 = fmul fast float %5702, %5547
  %5713 = fsub fast float %5711, %5712
  %5714 = fmul fast float %5701, %5547
  %5715 = fmul fast float %5700, %5548
  %5716 = fsub fast float %5714, %5715
  %5717 = fmul fast float %5710, 2.000000e+00
  %5718 = fmul fast float %5713, 2.000000e+00
  %5719 = fmul fast float %5716, 2.000000e+00
  %5720 = fmul fast float %5717, %5550
  %5721 = fmul fast float %5718, %5550
  %5722 = fmul fast float %5719, %5550
  %5723 = fmul fast float %5719, %5548
  %5724 = fmul fast float %5718, %5549
  %5725 = fmul fast float %5717, %5549
  %5726 = fmul fast float %5719, %5547
  %5727 = fmul fast float %5718, %5547
  %5728 = fmul fast float %5717, %5548
  %5729 = fadd fast float %5723, %5700
  %5730 = fadd fast float %5729, %5720
  %5731 = fsub fast float %5730, %5724
  %5732 = fsub fast float %5701, %5726
  %5733 = fadd fast float %5732, %5721
  %5734 = fadd fast float %5733, %5725
  %5735 = fadd fast float %5722, %5702
  %5736 = fsub fast float %5735, %5728
  %5737 = fadd fast float %5736, %5727
  br label %5738

; <label>:5738                                    ; preds = %5707, %5699
  %5739 = phi float [ %5731, %5707 ], [ %5700, %5699 ]
  %5740 = phi float [ %5734, %5707 ], [ %5701, %5699 ]
  %5741 = phi float [ %5737, %5707 ], [ %5702, %5699 ]
  br i1 %5576, label %5773, label %5742

; <label>:5742                                    ; preds = %5738
  %5743 = fmul fast float %4792, 0x400187C840000000
  %5744 = fadd fast float %5743, 0xC00EFC2120000000
  %5745 = fmul fast float %5744, %4792
  %5746 = fadd fast float %5745, 0x3FE5D16340000000
  %5747 = fmul fast float %5746, %4792
  %5748 = fadd fast float %5747, 1.000000e+00
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fsub fast float %5703, %144
  %5751 = fsub fast float %5704, %145
  %5752 = fsub fast float %5705, %146
  %5753 = fsub fast float %5703, %5531
  %5754 = fsub fast float %5704, %5532
  %5755 = fsub fast float %5705, %5533
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %5752, float %5750, float %5751, float %5752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = fadd fast float %5757, 0x3EE4F8B580000000
  %5759 = fdiv fast float %5756, %5758
  %5760 = bitcast float %5759 to i32
  %5761 = ashr i32 %5760, 1
  %5762 = add nsw i32 %5761, 532487669
  %5763 = bitcast i32 %5762 to float
  %5764 = fmul fast float %5763, %5749
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = fmul fast float %5765, 0x4009981AE0000000
  %5767 = fsub fast float 0x40111BBD80000000, %5766
  %5768 = fmul fast float %5767, %5765
  %5769 = fadd fast float %5768, 0xC0009F6020000000
  %5770 = fmul fast float %5769, %5765
  %5771 = fadd fast float %5770, 1.000000e+00
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  br label %5776

; <label>:5773                                    ; preds = %5738
  %5774 = icmp ne i32 %5577, -1
  %5775 = zext i1 %5774 to i32
  br label %5776

; <label>:5776                                    ; preds = %5773, %5742
  %5777 = phi float [ %4792, %5773 ], [ %5772, %5742 ]
  %5778 = phi i32 [ %5775, %5773 ], [ 0, %5742 ]
  %5779 = fmul float %5777, 5.000000e+00
  %5780 = fsub float 5.000000e+00, %5779
  %5781 = icmp ne i32 %5778, 0
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5784 = fadd fast float %5783, %5780
  %5785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5784)  ; FMax(a,b)
  %5786 = call float @dx.op.unary.f32(i32 6, float %5739)  ; FAbs(value)
  %5787 = call float @dx.op.unary.f32(i32 6, float %5740)  ; FAbs(value)
  %5788 = fadd fast float %5787, %5786
  %5789 = call float @dx.op.unary.f32(i32 6, float %5741)  ; FAbs(value)
  %5790 = fadd fast float %5788, %5789
  %5791 = fcmp fast oeq float %5790, 0.000000e+00
  %5792 = fdiv fast float 1.000000e+00, %5790
  %5793 = select i1 %5791, float 1.000000e+00, float %5792
  %5794 = fmul fast float %5793, %5739
  %5795 = fmul fast float %5793, %5740
  %5796 = call float @dx.op.unary.f32(i32 6, float %5795)  ; FAbs(value)
  %5797 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5798 = fsub fast float 1.000000e+00, %5796
  %5799 = fsub fast float 1.000000e+00, %5797
  %5800 = fcmp fast oge float %5794, 0.000000e+00
  %5801 = fcmp fast oge float %5795, 0.000000e+00
  %5802 = select i1 %5800, float 1.000000e+00, float -1.000000e+00
  %5803 = select i1 %5801, float 1.000000e+00, float -1.000000e+00
  %5804 = fcmp fast ole float %5741, 0.000000e+00
  %5805 = fmul fast float %5802, %5798
  %5806 = fmul fast float %5803, %5799
  %5807 = select i1 %5804, float %5805, float %5794
  %5808 = select i1 %5804, float %5806, float %5795
  %5809 = fmul fast float %5807, 5.000000e-01
  %5810 = fmul fast float %5808, 5.000000e-01
  %5811 = fadd fast float %5809, 5.000000e-01
  %5812 = fadd fast float %5810, 5.000000e-01
  %5813 = uitofp i32 %5574 to float
  %5814 = call float @dx.op.binary.f32(i32 36, float %5785, float 3.000000e+00)  ; FMin(a,b)
  %5815 = fadd fast float %5814, 2.000000e+00
  %5816 = call float @dx.op.unary.f32(i32 21, float %5815)  ; Exp(value)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5818 = fmul fast float %5817, %5816
  %5819 = fmul fast float %5818, 2.000000e+00
  %5820 = fsub fast float 1.000000e+00, %5819
  %5821 = fmul fast float %5811, %5820
  %5822 = fmul fast float %5812, %5820
  %5823 = fadd fast float %5821, %5818
  %5824 = fadd fast float %5822, %5818
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5823, float %5824, float %5813, float undef, i32 0, i32 0, i32 undef, float %5785)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 3
  %5831 = fmul fast float %5830, %5544
  %5832 = call float @dx.op.binary.f32(i32 36, float %4838, float %5831)  ; FMin(a,b)
  %5833 = select i1 %5781, float %5832, float %5831
  %5834 = fmul fast float %5826, %5623
  %5835 = fmul fast float %5834, %5833
  %5836 = fmul fast float %5827, %5623
  %5837 = fmul fast float %5836, %5833
  %5838 = fmul fast float %5828, %5623
  %5839 = fmul fast float %5838, %5833
  %5840 = fadd fast float %5835, %5516
  %5841 = fadd fast float %5837, %5517
  %5842 = fadd fast float %5839, %5518
  %5843 = fmul fast float %5703, %5623
  %5844 = fmul fast float %5704, %5623
  %5845 = fmul fast float %5705, %5623
  %5846 = fadd fast float %5843, %5521
  %5847 = fadd fast float %5844, %5522
  %5848 = fadd fast float %5845, %5523
  %5849 = fsub fast float %5519, %5623
  br label %5625

; <label>:5850                                    ; preds = %5625
  br label %5851

; <label>:5851                                    ; preds = %5850, %5482
  %5852 = phi float [ %5483, %5482 ], [ %5626, %5850 ]
  %5853 = phi float [ %5484, %5482 ], [ %5627, %5850 ]
  %5854 = phi float [ %5485, %5482 ], [ %5628, %5850 ]
  %5855 = phi float [ %5486, %5482 ], [ %5629, %5850 ]
  %5856 = phi float [ %5488, %5482 ], [ %5630, %5850 ]
  %5857 = phi float [ %5489, %5482 ], [ %5631, %5850 ]
  %5858 = phi float [ %5490, %5482 ], [ %5632, %5850 ]
  %5859 = add i32 %5487, 1
  %5860 = icmp ugt i32 %5859, %5479
  br i1 %5860, label %5861, label %5482, !llvm.loop !88

; <label>:5861                                    ; preds = %5851
  br label %5862

; <label>:5862                                    ; preds = %5861, %5464
  %5863 = phi float [ 0.000000e+00, %5464 ], [ %5852, %5861 ]
  %5864 = phi float [ 0.000000e+00, %5464 ], [ %5853, %5861 ]
  %5865 = phi float [ 0.000000e+00, %5464 ], [ %5854, %5861 ]
  %5866 = phi float [ 0.000000e+00, %5464 ], [ %5856, %5861 ]
  %5867 = phi float [ 0.000000e+00, %5464 ], [ %5857, %5861 ]
  %5868 = phi float [ 0.000000e+00, %5464 ], [ %5858, %5861 ]
  %5869 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %5865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5870 = select i1 %186, float 0.000000e+00, float %5863
  %5871 = select i1 %186, float %5869, float %5864
  %5872 = select i1 %186, float 0.000000e+00, float %5865
  %5873 = fcmp fast olt float %5388, 0.000000e+00
  %5874 = call float @dx.op.unary.f32(i32 6, float %5388)  ; FAbs(value)
  %5875 = fmul fast float %5874, %5389
  %5876 = fmul fast float %5874, %5390
  %5877 = fmul fast float %5874, %5391
  %5878 = select i1 %5873, float %5389, float %5875
  %5879 = select i1 %5873, float %5390, float %5876
  %5880 = select i1 %5873, float %5391, float %5877
  %5881 = fsub fast float 1.000000e+00, %5874
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = fmul fast float %5882, %5870
  %5884 = fmul fast float %5882, %5871
  %5885 = fmul fast float %5882, %5872
  %5886 = fadd fast float %5878, %5883
  %5887 = fadd fast float %5879, %5884
  %5888 = fadd fast float %5880, %5885
  %5889 = fcmp fast une float %5138, 0.000000e+00
  br i1 %5889, label %5990, label %5890

; <label>:5890                                    ; preds = %5862
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5900 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5903, float %5904, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float %5902, float %5903, float %5904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5902, float %5903, float %5904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = fadd fast float %4792, -1.000000e+00
  %5910 = fsub fast float %5907, %5908
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5913 = fmul fast float %5912, %5907
  %5914 = fdiv fast float 1.600000e+02, %5913
  %5915 = fmul fast float %5909, %5909
  %5916 = fmul fast float %5915, 0xBFB5B17960000000
  %5917 = fmul fast float %5916, %5910
  %5918 = fmul fast float %5917, %5914
  %5919 = call float @dx.op.unary.f32(i32 21, float %5918)  ; Exp(value)
  %5920 = fmul fast float %5919, 0x3FF04B2960000000
  %5921 = fsub fast float 0x3FF04B2960000000, %5920
  %5922 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  %5923 = fmul fast float %5922, 4.000000e+00
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = fadd fast float %5925, %5866
  %5929 = fadd fast float %5926, %5867
  %5930 = fadd fast float %5927, %5868
  %5931 = fmul fast float %5928, %5892
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5929, float %5893, float %5931)  ; FMad(a,b,c)
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %5930, float %5894, float %5932)  ; FMad(a,b,c)
  %5934 = fadd fast float %5933, %5895
  %5935 = fmul fast float %5928, %5897
  %5936 = call float @dx.op.tertiary.f32(i32 46, float %5929, float %5898, float %5935)  ; FMad(a,b,c)
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %5930, float %5899, float %5936)  ; FMad(a,b,c)
  %5938 = fadd fast float %5937, %5900
  %5939 = fmul fast float %5928, %5902
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5929, float %5903, float %5939)  ; FMad(a,b,c)
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %5930, float %5904, float %5940)  ; FMad(a,b,c)
  %5942 = fadd fast float %5941, %5905
  %5943 = fdiv fast float %5934, %5942
  %5944 = fdiv fast float %5938, %5942
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = fmul fast float %5946, %5943
  %5949 = fmul fast float %5947, %5944
  %5950 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5951 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5952 = fadd fast float %5948, %5950
  %5953 = fadd fast float %5949, %5951
  %5954 = fmul fast float %5906, 8.000000e+00
  %5955 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5956 = fmul fast float %5952, 2.000000e+00
  %5957 = fmul fast float %5953, 2.000000e+00
  %5958 = fadd fast float %5956, -1.000000e+00
  %5959 = fadd fast float %5957, -1.000000e+00
  %5960 = fmul fast float %5958, %5958
  %5961 = fsub fast float 1.000000e+00, %5960
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = fmul fast float %5959, %5959
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = fmul fast float %5138, %5962
  %5967 = fmul fast float %5966, %5965
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = fmul fast float %5968, %5955
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5952, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float %5923)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  %5974 = select i1 %186, float 0.000000e+00, float %5972
  %5975 = select i1 %186, float 0.000000e+00, float %5973
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5978 = fmul fast float %5977, %5971
  %5979 = fmul fast float %5974, %5977
  %5980 = fmul fast float %5975, %5977
  %5981 = fsub fast float %5978, %5870
  %5982 = fsub fast float %5979, %5871
  %5983 = fsub fast float %5980, %5872
  %5984 = fmul fast float %5981, %5969
  %5985 = fmul fast float %5982, %5969
  %5986 = fmul fast float %5983, %5969
  %5987 = fadd fast float %5984, %5870
  %5988 = fadd fast float %5985, %5871
  %5989 = fadd fast float %5986, %5872
  br label %5990

; <label>:5990                                    ; preds = %5890, %5862, %5387, %5111
  %5991 = phi float [ %5389, %5387 ], [ %5886, %5862 ], [ %5068, %5111 ], [ %5987, %5890 ]
  %5992 = phi float [ %5390, %5387 ], [ %5887, %5862 ], [ %5069, %5111 ], [ %5988, %5890 ]
  %5993 = phi float [ %5391, %5387 ], [ %5888, %5862 ], [ %5070, %5111 ], [ %5989, %5890 ]
  %5994 = fmul fast float %5117, %5064
  %5995 = fmul fast float %5117, %5065
  %5996 = fmul fast float %5117, %5066
  %5997 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = fcmp fast ogt float %5997, 0x3E7FF19E20000000
  %5999 = fdiv fast float 1.000000e+00, %5997
  %6000 = select i1 %5998, float %5999, float 0.000000e+00
  %6001 = fmul fast float %6000, %4783
  %6002 = fmul fast float %6000, %4784
  %6003 = fmul fast float %6000, %4785
  %6004 = fadd fast float %6001, -1.000000e+00
  %6005 = fadd fast float %6002, -1.000000e+00
  %6006 = fadd fast float %6003, -1.000000e+00
  %6007 = fmul fast float %6004, 5.000000e-01
  %6008 = fmul fast float %6005, 5.000000e-01
  %6009 = fmul fast float %6006, 5.000000e-01
  %6010 = fadd fast float %6007, 1.000000e+00
  %6011 = fadd fast float %6008, 1.000000e+00
  %6012 = fadd fast float %6009, 1.000000e+00
  %6013 = fmul fast float %5991, %5112
  %6014 = fmul fast float %5992, %5113
  %6015 = fmul fast float %5993, %5114
  %6016 = fsub fast float 1.000000e+00, %4811
  %6017 = bitcast float %6016 to i32
  %6018 = sitofp i32 %6017 to float
  %6019 = fmul fast float %6018, 5.000000e+00
  %6020 = fadd fast float %6019, 0xC1EFBF8940000000
  %6021 = fptosi float %6020 to i32
  %6022 = bitcast i32 %6021 to float
  %6023 = fmul fast float %6022, %4182
  %6024 = fmul fast float %5064, %6023
  %6025 = fmul fast float %6024, %5117
  %6026 = fmul fast float %6025, %6010
  %6027 = fmul fast float %5065, %6023
  %6028 = fmul fast float %6027, %5117
  %6029 = fmul fast float %6028, %6011
  %6030 = fmul fast float %5066, %6023
  %6031 = fmul fast float %6030, %5117
  %6032 = fmul fast float %6031, %6012
  %6033 = fmul fast float %5994, %4178
  %6034 = fmul fast float %5995, %4178
  %6035 = fmul fast float %5996, %4178
  %6036 = fadd fast float %6013, %4174
  %6037 = fadd fast float %6036, %6026
  %6038 = fmul fast float %6037, %4178
  %6039 = fadd fast float %6014, %4175
  %6040 = fadd fast float %6039, %6029
  %6041 = fmul fast float %6040, %4178
  %6042 = fadd fast float %6015, %4176
  %6043 = fadd fast float %6042, %6032
  %6044 = fmul fast float %6043, %4178
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6047 = fcmp fast oeq float %6046, 0.000000e+00
  br i1 %6047, label %6266, label %6048

; <label>:6048                                    ; preds = %5990
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.CBufRet.f32 %6052, 1
  %6055 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = select i1 %186, float %6057, float %6053
  %6061 = select i1 %186, float %6059, float %6054
  %6062 = select i1 %186, float %6058, float %6055
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6065 = fcmp fast une float %6064, 0.000000e+00
  br i1 %6065, label %6066, label %6083

; <label>:6066                                    ; preds = %6048
  %6067 = fptoui float %85 to i32
  %6068 = fptoui float %86 to i32
  %6069 = lshr i32 %6067, 4
  %6070 = lshr i32 %6068, 4
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = fptoui float %6072 to i32
  %6074 = add i32 %6073, 15
  %6075 = lshr i32 %6074, 4
  %6076 = mul i32 %6075, %6070
  %6077 = add i32 %6076, %6069
  %6078 = shl i32 %6077, 3
  %6079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6078, i32 undef)  ; BufferLoad(srv,index,wot)
  %6080 = extractvalue %dx.types.ResRet.i32 %6079, 0
  %6081 = and i32 %6080, -268435456
  %6082 = icmp eq i32 %6081, -1342177280
  br i1 %6082, label %6088, label %6083

; <label>:6083                                    ; preds = %6066, %6048
  %6084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4797, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.ResRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.ResRet.f32 %6084, 2
  br label %6088

; <label>:6088                                    ; preds = %6083, %6066
  %6089 = phi float [ %6085, %6083 ], [ 0.000000e+00, %6066 ]
  %6090 = phi float [ %6086, %6083 ], [ 0.000000e+00, %6066 ]
  %6091 = phi float [ %6087, %6083 ], [ 0.000000e+00, %6066 ]
  %6092 = call float @dx.op.binary.f32(i32 36, float %6090, float %6091)  ; FMin(a,b)
  %6093 = call float @dx.op.binary.f32(i32 36, float %6089, float %6092)  ; FMin(a,b)
  %6094 = fcmp fast ogt float %6093, 0.000000e+00
  br i1 %6094, label %6095, label %6266, !dx.controlflow.hints !90

; <label>:6095                                    ; preds = %6088
  %6096 = fmul fast float %6089, %6060
  %6097 = fmul fast float %6090, %6061
  %6098 = fmul fast float %6091, %6062
  %6099 = fsub fast float %6049, %4782
  %6100 = fsub fast float %6050, %4781
  %6101 = fsub fast float %6051, %4780
  %6102 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6101, float %6099, float %6100, float %6101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = call float @dx.op.unary.f32(i32 25, float %6102)  ; Rsqrt(value)
  %6104 = fmul fast float %6103, %6099
  %6105 = fmul fast float %6103, %6100
  %6106 = fmul fast float %6103, %6101
  %6107 = call float @dx.op.dot3.f32(i32 55, float %6049, float %6050, float %6051, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4778, float %4777, float %6104, float %6105, float %6106)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6110 = fmul fast float %6109, %6109
  %6111 = fmul fast float %6110, %4836
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6113 = fmul fast float %6112, %6109
  %6114 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %6104, float %6105, float %6106)  ; Dot3(ax,ay,az,bx,by,bz)
  %6115 = fmul fast float %6114, %6114
  %6116 = call float @dx.op.unary.f32(i32 6, float %6107)  ; FAbs(value)
  %6117 = fsub fast float 1.000000e+00, %4829
  %6118 = fmul fast float %4811, %4811
  %6119 = fmul fast float %6118, %6117
  %6120 = fadd fast float %6119, %4829
  %6121 = bitcast float %6120 to i32
  %6122 = ashr i32 %6121, 1
  %6123 = add nsw i32 %6122, 532487669
  %6124 = bitcast i32 %6123 to float
  %6125 = fadd fast float %6124, %4811
  %6126 = fmul fast float %4829, %6115
  %6127 = fsub fast float 1.000000e+00, %6115
  %6128 = fadd fast float %6127, %6126
  %6129 = fmul fast float %6116, %6116
  %6130 = fmul fast float %6129, %6117
  %6131 = fadd fast float %6130, %4829
  %6132 = bitcast float %6131 to i32
  %6133 = ashr i32 %6132, 1
  %6134 = add nsw i32 %6133, 532487669
  %6135 = bitcast i32 %6134 to float
  %6136 = fadd fast float %6135, %6116
  %6137 = fmul fast float %6128, %6128
  %6138 = fmul fast float %6137, %6125
  %6139 = fmul fast float %6138, %6136
  %6140 = fdiv fast float 0x3FF0A00000000000, %6139
  %6141 = fmul fast float %6140, %4829
  %6142 = call float @dx.op.unary.f32(i32 6, float %6108)  ; FAbs(value)
  %6143 = fsub fast float 1.000000e+00, %6142
  %6144 = bitcast float %6143 to i32
  %6145 = sitofp i32 %6144 to float
  %6146 = fmul fast float %6145, 5.000000e+00
  %6147 = fadd fast float %6146, 0xC1EFBF8940000000
  %6148 = fptosi float %6147 to i32
  %6149 = bitcast i32 %6148 to float
  %6150 = fsub fast float 1.000000e+00, %4786
  %6151 = fsub fast float 1.000000e+00, %4787
  %6152 = fsub fast float 1.000000e+00, %4809
  %6153 = fmul fast float %6149, %6150
  %6154 = fmul fast float %6149, %6151
  %6155 = fmul fast float %6149, %6152
  %6156 = fadd fast float %6153, %4786
  %6157 = fadd fast float %6154, %4787
  %6158 = fadd fast float %6155, %4809
  br i1 %5084, label %6159, label %6182

; <label>:6159                                    ; preds = %6095
  %6160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4181, float %6142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6161 = extractvalue %dx.types.ResRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.ResRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.ResRet.f32 %6160, 2
  %6164 = fadd fast float %6161, -5.000000e-01
  %6165 = fadd fast float %6162, -5.000000e-01
  %6166 = fadd fast float %6163, -5.000000e-01
  %6167 = fmul fast float %4786, 4.000000e+00
  %6168 = fmul fast float %6167, %6150
  %6169 = fmul fast float %6168, %6164
  %6170 = fmul fast float %4787, 4.000000e+00
  %6171 = fmul fast float %6170, %6151
  %6172 = fmul fast float %6171, %6165
  %6173 = fmul fast float %4809, 4.000000e+00
  %6174 = fmul fast float %6173, %6152
  %6175 = fmul fast float %6174, %6166
  %6176 = fadd fast float %6169, %6156
  %6177 = fadd fast float %6172, %6157
  %6178 = fadd fast float %6175, %6158
  %6179 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6180 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6181 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  br label %6182

; <label>:6182                                    ; preds = %6159, %6095
  %6183 = phi float [ %6179, %6159 ], [ %6156, %6095 ]
  %6184 = phi float [ %6180, %6159 ], [ %6157, %6095 ]
  %6185 = phi float [ %6181, %6159 ], [ %6158, %6095 ]
  %6186 = fmul fast float %6107, 9.843750e-01
  %6187 = fadd fast float %6186, 7.812500e-03
  %6188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6187, float %5074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6189 = extractvalue %dx.types.ResRet.f32 %6188, 2
  %6190 = extractvalue %dx.types.ResRet.f32 %6188, 3
  %6191 = fmul fast float %6189, %4786
  %6192 = fmul fast float %6189, %4787
  %6193 = fmul fast float %6189, %4809
  %6194 = fadd fast float %6191, %6190
  %6195 = fadd fast float %6192, %6190
  %6196 = fadd fast float %6193, %6190
  br i1 %5084, label %6197, label %6220

; <label>:6197                                    ; preds = %6182
  %6198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4181, float %6107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.ResRet.f32 %6198, 1
  %6201 = extractvalue %dx.types.ResRet.f32 %6198, 2
  %6202 = fadd fast float %6199, -5.000000e-01
  %6203 = fadd fast float %6200, -5.000000e-01
  %6204 = fadd fast float %6201, -5.000000e-01
  %6205 = fmul fast float %4786, 4.000000e+00
  %6206 = fmul fast float %6205, %6150
  %6207 = fmul fast float %6206, %6202
  %6208 = fmul fast float %4787, 4.000000e+00
  %6209 = fmul fast float %6208, %6151
  %6210 = fmul fast float %6209, %6203
  %6211 = fmul fast float %4809, 4.000000e+00
  %6212 = fmul fast float %6211, %6152
  %6213 = fmul fast float %6212, %6204
  %6214 = fadd fast float %6207, %6194
  %6215 = fadd fast float %6210, %6195
  %6216 = fadd fast float %6213, %6196
  %6217 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6218 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6219 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  br label %6220

; <label>:6220                                    ; preds = %6197, %6182
  %6221 = phi float [ %6217, %6197 ], [ %6194, %6182 ]
  %6222 = phi float [ %6218, %6197 ], [ %6195, %6182 ]
  %6223 = phi float [ %6219, %6197 ], [ %6196, %6182 ]
  %6224 = call float @dx.op.binary.f32(i32 35, float %6222, float %6223)  ; FMax(a,b)
  %6225 = call float @dx.op.binary.f32(i32 35, float %6221, float %6224)  ; FMax(a,b)
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = fmul fast float %6183, %6141
  %6228 = fmul fast float %6184, %6141
  %6229 = fmul fast float %6185, %6141
  %6230 = fsub fast float 1.000000e+00, %6108
  %6231 = bitcast float %6230 to i32
  %6232 = sitofp i32 %6231 to float
  %6233 = fmul fast float %6232, 5.000000e+00
  %6234 = fadd fast float %6233, 0xC1EFBF8940000000
  %6235 = fptosi float %6234 to i32
  %6236 = bitcast i32 %6235 to float
  %6237 = fmul fast float %6236, %4182
  %6238 = fmul fast float %6226, %6237
  %6239 = fmul fast float %6238, %6010
  %6240 = fmul fast float %6238, %6011
  %6241 = fmul fast float %6238, %6012
  %6242 = fadd fast float %6239, %6227
  %6243 = fadd fast float %6240, %6228
  %6244 = fadd fast float %6241, %6229
  %6245 = fmul fast float %6113, %6096
  %6246 = fmul fast float %6245, %6226
  %6247 = fmul fast float %6113, %6097
  %6248 = fmul fast float %6247, %6226
  %6249 = fmul fast float %6113, %6098
  %6250 = fmul fast float %6249, %6226
  %6251 = fmul fast float %6245, %6242
  %6252 = fmul fast float %6247, %6243
  %6253 = fmul fast float %6249, %6244
  %6254 = fadd fast float %6246, %5994
  %6255 = fmul fast float %6254, %4178
  %6256 = fadd fast float %6248, %5995
  %6257 = fmul fast float %6256, %4178
  %6258 = fadd fast float %6250, %5996
  %6259 = fmul fast float %6258, %4178
  %6260 = fadd fast float %6251, %6037
  %6261 = fmul fast float %6260, %4178
  %6262 = fadd fast float %6252, %6040
  %6263 = fmul fast float %6262, %4178
  %6264 = fadd fast float %6253, %6043
  %6265 = fmul fast float %6264, %4178
  br label %6266

; <label>:6266                                    ; preds = %6220, %6088, %5990
  %6267 = phi float [ %6038, %5990 ], [ %6038, %6088 ], [ %6261, %6220 ]
  %6268 = phi float [ %6041, %5990 ], [ %6041, %6088 ], [ %6263, %6220 ]
  %6269 = phi float [ %6044, %5990 ], [ %6044, %6088 ], [ %6265, %6220 ]
  %6270 = phi float [ %6033, %5990 ], [ %6033, %6088 ], [ %6255, %6220 ]
  %6271 = phi float [ %6034, %5990 ], [ %6034, %6088 ], [ %6257, %6220 ]
  %6272 = phi float [ %6035, %5990 ], [ %6035, %6088 ], [ %6259, %6220 ]
  %6273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.i32 %6273, 0
  %6275 = icmp eq i32 %6274, 0
  br i1 %6275, label %6706, label %6276

; <label>:6276                                    ; preds = %6266
  %6277 = fptoui float %85 to i32
  %6278 = fptoui float %86 to i32
  %6279 = lshr i32 %6277, 4
  %6280 = lshr i32 %6278, 4
  %6281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.i32 %6281, 0
  %6283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6280, i32 %6282, i32 %6279)  ; UMad(a,b,c)
  %6284 = add nsw i32 %6274, -1
  %6285 = call i32 @dx.op.binary.i32(i32 37, i32 %6284, i32 0)  ; IMax(a,b)
  %6286 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6287 = fptoui float %6286 to i32
  %6288 = lshr i32 %6287, 5
  %6289 = call i32 @dx.op.binary.i32(i32 40, i32 %6288, i32 8191)  ; UMin(a,b)
  %6290 = shl i32 %6289, 2
  %6291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.i32 %6291, 0
  %6293 = lshr i32 %6292, 16
  %6294 = and i32 %6292, 65535
  %6295 = lshr i32 %6292, 21
  %6296 = lshr i32 %6294, 5
  %6297 = call i32 @dx.op.binary.i32(i32 40, i32 %6296, i32 %6285)  ; UMin(a,b)
  %6298 = icmp ugt i32 %6295, %6297
  br i1 %6298, label %6706, label %6299

; <label>:6299                                    ; preds = %6276
  br label %6300

; <label>:6300                                    ; preds = %6696, %6299
  %6301 = phi i32 [ %6703, %6696 ], [ %6295, %6299 ]
  %6302 = phi float [ %6697, %6696 ], [ %6267, %6299 ]
  %6303 = phi float [ %6698, %6696 ], [ %6268, %6299 ]
  %6304 = phi float [ %6699, %6696 ], [ %6269, %6299 ]
  %6305 = phi float [ %6700, %6696 ], [ %6270, %6299 ]
  %6306 = phi float [ %6701, %6696 ], [ %6271, %6299 ]
  %6307 = phi float [ %6702, %6696 ], [ %6272, %6299 ]
  %6308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.i32 %6308, 0
  %6310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6283, i32 %6309, i32 %6301)  ; UMad(a,b,c)
  %6311 = shl i32 %6310, 2
  %6312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6311, i32 undef)  ; BufferLoad(srv,index,wot)
  %6313 = extractvalue %dx.types.ResRet.i32 %6312, 0
  %6314 = shl i32 %6301, 5
  %6315 = sub nsw i32 %6293, %6314
  %6316 = call i32 @dx.op.binary.i32(i32 37, i32 %6315, i32 0)  ; IMax(a,b)
  %6317 = call i32 @dx.op.binary.i32(i32 38, i32 %6316, i32 31)  ; IMin(a,b)
  %6318 = sub nsw i32 1, %6293
  %6319 = add nsw i32 %6318, %6294
  %6320 = call i32 @dx.op.binary.i32(i32 37, i32 %6319, i32 0)  ; IMax(a,b)
  %6321 = call i32 @dx.op.binary.i32(i32 38, i32 %6320, i32 32)  ; IMin(a,b)
  %6322 = and i32 %6321, 31
  %6323 = shl i32 -1, %6322
  %6324 = xor i32 %6323, -1
  %6325 = and i32 %6317, 31
  %6326 = shl i32 %6324, %6325
  %6327 = icmp eq i32 %6321, 32
  %6328 = select i1 %6327, i32 -1, i32 %6326
  %6329 = and i32 %6328, %6313
  %6330 = icmp eq i32 %6329, 0
  br i1 %6330, label %6696, label %6331

; <label>:6331                                    ; preds = %6300
  br label %6332

; <label>:6332                                    ; preds = %6412, %6331
  %6333 = phi i32 [ %6344, %6412 ], [ %6329, %6331 ]
  %6334 = phi float [ %6413, %6412 ], [ %6302, %6331 ]
  %6335 = phi float [ %6414, %6412 ], [ %6303, %6331 ]
  %6336 = phi float [ %6415, %6412 ], [ %6304, %6331 ]
  %6337 = phi float [ %6416, %6412 ], [ %6305, %6331 ]
  %6338 = phi float [ %6417, %6412 ], [ %6306, %6331 ]
  %6339 = phi float [ %6418, %6412 ], [ %6307, %6331 ]
  %6340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6333)  ; FirstbitLo(value)
  %6341 = add i32 %6340, %6314
  %6342 = and i32 %6340, 31
  %6343 = shl i32 1, %6342
  %6344 = xor i32 %6343, %6333
  %6345 = mul i32 %6341, 112
  %6346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6345, i32 undef)  ; BufferLoad(srv,index,wot)
  %6347 = extractvalue %dx.types.ResRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.ResRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.ResRet.f32 %6346, 2
  %6350 = or i32 %6345, 12
  %6351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6350, i32 undef)  ; BufferLoad(srv,index,wot)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 0
  %6353 = add i32 %6345, 44
  %6354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6353, i32 undef)  ; BufferLoad(srv,index,wot)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = add i32 %6345, 48
  %6357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6356, i32 undef)  ; BufferLoad(srv,index,wot)
  %6358 = extractvalue %dx.types.ResRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.ResRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.ResRet.f32 %6357, 2
  %6361 = add i32 %6345, 80
  %6362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6361, i32 undef)  ; BufferLoad(srv,index,wot)
  %6363 = extractvalue %dx.types.ResRet.f32 %6362, 1
  %6364 = extractvalue %dx.types.ResRet.f32 %6362, 2
  %6365 = call float @dx.op.dot3.f32(i32 55, float %6347, float %6348, float %6349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6366 = select i1 %186, float %6363, float %6347
  %6367 = select i1 %186, float %6365, float %6348
  %6368 = select i1 %186, float %6364, float %6349
  %6369 = fsub fast float %6358, %144
  %6370 = fsub fast float %6359, %145
  %6371 = fsub fast float %6360, %146
  %6372 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6371, float %6369, float %6370, float %6371)  ; Dot3(ax,ay,az,bx,by,bz)
  %6373 = call float @dx.op.unary.f32(i32 24, float %6372)  ; Sqrt(value)
  %6374 = fdiv fast float 1.000000e+00, %6373
  %6375 = fmul fast float %6374, %6369
  %6376 = fmul fast float %6374, %6370
  %6377 = fmul fast float %6374, %6371
  %6378 = fadd fast float %6373, %6352
  %6379 = fdiv fast float 1.000000e+00, %6378
  %6380 = fmul float %6355, %6379
  %6381 = fmul float %6380, %6380
  %6382 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  %6383 = and i32 %6343, %6329
  %6384 = icmp eq i32 %6383, 0
  br i1 %6384, label %6407, label %6385, !dx.controlflow.hints !91

; <label>:6385                                    ; preds = %6332
  %6386 = lshr i32 %6277, 5
  %6387 = lshr i32 %6278, 5
  %6388 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6386, i32 %6387, i32 %6341, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6389 = extractvalue %dx.types.ResRet.i32 %6388, 0
  %6390 = and i32 %6389, 3
  %6391 = icmp eq i32 %6390, 0
  %6392 = select i1 %6391, float 1.000000e+00, float 0.000000e+00
  %6393 = icmp eq i32 %6390, 3
  br i1 %6393, label %6394, label %6407

; <label>:6394                                    ; preds = %6385
  %6395 = lshr i32 %6389, 10
  %6396 = and i32 %6395, 8160
  %6397 = and i32 %6278, 31
  %6398 = or i32 %6396, %6397
  %6399 = lshr i32 %6389, 1
  %6400 = and i32 %6399, 16352
  %6401 = and i32 %6277, 31
  %6402 = or i32 %6400, %6401
  %6403 = lshr i32 %6389, 23
  %6404 = and i32 %6403, 255
  %6405 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6402, i32 %6398, i32 %6404, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  br label %6407

; <label>:6407                                    ; preds = %6394, %6385, %6332
  %6408 = phi float [ %6406, %6394 ], [ %6392, %6385 ], [ 0.000000e+00, %6332 ]
  %6409 = call float @dx.op.binary.f32(i32 36, float %6408, float %6408)  ; FMin(a,b)
  %6410 = call float @dx.op.binary.f32(i32 36, float %6408, float %6409)  ; FMin(a,b)
  %6411 = fcmp fast ogt float %6410, 0.000000e+00
  br i1 %6411, label %6420, label %6412, !dx.controlflow.hints !92

; <label>:6412                                    ; preds = %6652, %6407
  %6413 = phi float [ %6334, %6407 ], [ %6692, %6652 ]
  %6414 = phi float [ %6335, %6407 ], [ %6693, %6652 ]
  %6415 = phi float [ %6336, %6407 ], [ %6694, %6652 ]
  %6416 = phi float [ %6337, %6407 ], [ %6686, %6652 ]
  %6417 = phi float [ %6338, %6407 ], [ %6687, %6652 ]
  %6418 = phi float [ %6339, %6407 ], [ %6688, %6652 ]
  %6419 = icmp eq i32 %6333, %6343
  br i1 %6419, label %6695, label %6332

; <label>:6420                                    ; preds = %6407
  %6421 = fmul fast float %6408, %6366
  %6422 = fmul fast float %6408, %6367
  %6423 = fmul fast float %6408, %6368
  %6424 = fsub fast float %6360, %4582
  %6425 = fcmp fast ogt float %6424, 0.000000e+00
  %6426 = fsub fast float %146, %4582
  %6427 = fcmp fast ogt float %6426, 0.000000e+00
  %6428 = xor i1 %6427, %6425
  %6429 = fsub fast float %4582, %6360
  %6430 = fmul fast float %6429, 2.000000e+00
  %6431 = fadd fast float %6430, %6360
  %6432 = select i1 %6428, float %6360, float %6431
  %6433 = fsub fast float %6432, %146
  %6434 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6433, float %6369, float %6370, float %6433)  ; Dot3(ax,ay,az,bx,by,bz)
  %6435 = call float @dx.op.unary.f32(i32 25, float %6434)  ; Rsqrt(value)
  %6436 = fmul fast float %6435, %6369
  %6437 = fmul fast float %6435, %6370
  %6438 = fmul fast float %6435, %6433
  %6439 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4590)  ; Dot3(ax,ay,az,bx,by,bz)
  %6440 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6436, float %6437, float %6438)  ; Dot3(ax,ay,az,bx,by,bz)
  %6441 = fdiv fast float 1.000000e+00, %6440
  %6442 = fmul fast float %6441, %6439
  %6443 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6426, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6444 = fcmp fast ogt float %6443, 0.000000e+00
  %6445 = fcmp fast olt float %6443, 0.000000e+00
  %6446 = zext i1 %6444 to i32
  %6447 = zext i1 %6445 to i32
  %6448 = sub nsw i32 %6446, %6447
  %6449 = sitofp i32 %6448 to float
  %6450 = fsub fast float %6432, %4582
  %6451 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6450, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6452 = fcmp fast ogt float %6451, 0.000000e+00
  %6453 = fcmp fast olt float %6451, 0.000000e+00
  %6454 = zext i1 %6452 to i32
  %6455 = zext i1 %6453 to i32
  %6456 = sub nsw i32 %6454, %6455
  %6457 = sitofp i32 %6456 to float
  %6458 = fcmp fast une float %6449, %6457
  br i1 %6458, label %6459, label %6469

; <label>:6459                                    ; preds = %6420
  %6460 = fmul fast float %6442, %6438
  %6461 = fmul fast float %6442, %6437
  %6462 = fmul fast float %6442, %6436
  %6463 = fmul fast float %6462, %6462
  %6464 = fmul fast float %6461, %6461
  %6465 = fadd fast float %6463, %6464
  %6466 = fmul fast float %6460, %6460
  %6467 = fadd fast float %6465, %6466
  %6468 = call float @dx.op.unary.f32(i32 24, float %6467)  ; Sqrt(value)
  br label %6481

; <label>:6469                                    ; preds = %6420
  %6470 = icmp slt i32 %6448, 0
  br i1 %6470, label %6471, label %6481

; <label>:6471                                    ; preds = %6469
  %6472 = fsub fast float %144, %6358
  %6473 = fsub fast float %145, %6359
  %6474 = fsub fast float %146, %6432
  %6475 = fmul fast float %6472, %6472
  %6476 = fmul fast float %6473, %6473
  %6477 = fadd fast float %6475, %6476
  %6478 = fmul fast float %6474, %6474
  %6479 = fadd fast float %6477, %6478
  %6480 = call float @dx.op.unary.f32(i32 24, float %6479)  ; Sqrt(value)
  br label %6481

; <label>:6481                                    ; preds = %6471, %6469, %6459
  %6482 = phi float [ %6468, %6459 ], [ %6480, %6471 ], [ 0.000000e+00, %6469 ]
  %6483 = and i1 %6427, %6425
  %6484 = fsub fast float -0.000000e+00, %6482
  %6485 = select i1 %6483, float -0.000000e+00, float %6484
  %6486 = fmul fast float %4583, 0x3FF7154760000000
  %6487 = fmul fast float %6486, %6485
  %6488 = fmul fast float %4584, 0x3FF7154760000000
  %6489 = fmul fast float %6488, %6485
  %6490 = fmul fast float %4585, 0x3FF7154760000000
  %6491 = fmul fast float %6490, %6485
  %6492 = call float @dx.op.unary.f32(i32 21, float %6487)  ; Exp(value)
  %6493 = call float @dx.op.unary.f32(i32 21, float %6489)  ; Exp(value)
  %6494 = call float @dx.op.unary.f32(i32 21, float %6491)  ; Exp(value)
  %6495 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  %6496 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6497 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6498 = fmul fast float %6421, %6495
  %6499 = fmul fast float %6422, %6496
  %6500 = fmul fast float %6423, %6497
  %6501 = fsub fast float %6375, %4782
  %6502 = fsub fast float %6376, %4781
  %6503 = fsub fast float %6377, %4780
  %6504 = call float @dx.op.dot3.f32(i32 55, float %6501, float %6502, float %6503, float %6501, float %6502, float %6503)  ; Dot3(ax,ay,az,bx,by,bz)
  %6505 = call float @dx.op.unary.f32(i32 25, float %6504)  ; Rsqrt(value)
  %6506 = fmul fast float %6505, %6501
  %6507 = fmul fast float %6505, %6502
  %6508 = fmul fast float %6505, %6503
  %6509 = call float @dx.op.dot3.f32(i32 55, float %6375, float %6376, float %6377, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4778, float %4777, float %6506, float %6507, float %6508)  ; Dot3(ax,ay,az,bx,by,bz)
  %6511 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6512 = fmul fast float %6511, %6382
  %6513 = fmul fast float %6511, %6511
  %6514 = fmul fast float %6513, %4836
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6512, %6515
  %6517 = bitcast float %6372 to i32
  %6518 = ashr i32 %6517, 1
  %6519 = sub nsw i32 1597463007, %6518
  %6520 = bitcast i32 %6519 to float
  %6521 = fmul fast float %6520, %6369
  %6522 = fmul fast float %6520, %6370
  %6523 = fmul fast float %6520, %6371
  %6524 = fsub fast float %6521, %4782
  %6525 = fsub fast float %6522, %4781
  %6526 = fsub fast float %6523, %4780
  %6527 = call float @dx.op.dot3.f32(i32 55, float %6524, float %6525, float %6526, float %6524, float %6525, float %6526)  ; Dot3(ax,ay,az,bx,by,bz)
  %6528 = call float @dx.op.unary.f32(i32 25, float %6527)  ; Rsqrt(value)
  %6529 = fmul fast float %6524, %6528
  %6530 = fmul fast float %6525, %6528
  %6531 = fmul fast float %6526, %6528
  %6532 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %6529, float %6530, float %6531)  ; Dot3(ax,ay,az,bx,by,bz)
  %6533 = fmul fast float %6532, %6532
  %6534 = call float @dx.op.unary.f32(i32 6, float %6509)  ; FAbs(value)
  %6535 = fsub fast float 1.000000e+00, %4829
  %6536 = fmul fast float %4811, %4811
  %6537 = fmul fast float %6536, %6535
  %6538 = fadd fast float %6537, %4829
  %6539 = bitcast float %6538 to i32
  %6540 = ashr i32 %6539, 1
  %6541 = add nsw i32 %6540, 532487669
  %6542 = bitcast i32 %6541 to float
  %6543 = fadd fast float %6542, %4811
  %6544 = fmul fast float %4829, %6533
  %6545 = fsub fast float 1.000000e+00, %6533
  %6546 = fadd fast float %6545, %6544
  %6547 = fmul fast float %6534, %6534
  %6548 = fmul fast float %6547, %6535
  %6549 = fadd fast float %6548, %4829
  %6550 = bitcast float %6549 to i32
  %6551 = ashr i32 %6550, 1
  %6552 = add nsw i32 %6551, 532487669
  %6553 = bitcast i32 %6552 to float
  %6554 = fadd fast float %6553, %6534
  %6555 = fmul fast float %6546, %6546
  %6556 = fmul fast float %6555, %6543
  %6557 = fmul fast float %6556, %6554
  %6558 = fdiv fast float 1.000000e+00, %6557
  %6559 = bitcast float %4829 to i32
  %6560 = sitofp i32 %6559 to float
  %6561 = fmul fast float %6560, 0x3FE7F73180000000
  %6562 = fadd fast float %6561, 0x41AFE27C40000000
  %6563 = fptosi float %6562 to i32
  %6564 = bitcast i32 %6563 to float
  %6565 = fmul fast float %6355, 0x3FD80E9D60000000
  %6566 = fmul fast float %6565, %6520
  %6567 = fadd fast float %6564, %6566
  %6568 = bitcast float %6567 to i32
  %6569 = sub nsw i32 2129859010, %6568
  %6570 = bitcast i32 %6569 to float
  %6571 = fmul fast float %4829, %6558
  %6572 = fmul fast float %6571, %6564
  %6573 = fmul fast float %6572, %6570
  %6574 = call float @dx.op.unary.f32(i32 6, float %6510)  ; FAbs(value)
  %6575 = fsub fast float 1.000000e+00, %6574
  %6576 = bitcast float %6575 to i32
  %6577 = sitofp i32 %6576 to float
  %6578 = fmul fast float %6577, 5.000000e+00
  %6579 = fadd fast float %6578, 0xC1EFBF8940000000
  %6580 = fptosi float %6579 to i32
  %6581 = bitcast i32 %6580 to float
  %6582 = fsub fast float 1.000000e+00, %4786
  %6583 = fsub fast float 1.000000e+00, %4787
  %6584 = fsub fast float 1.000000e+00, %4809
  %6585 = fmul fast float %6581, %6582
  %6586 = fmul fast float %6581, %6583
  %6587 = fmul fast float %6581, %6584
  %6588 = fadd fast float %6585, %4786
  %6589 = fadd fast float %6586, %4787
  %6590 = fadd fast float %6587, %4809
  br i1 %5084, label %6591, label %6614

; <label>:6591                                    ; preds = %6481
  %6592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4181, float %6574, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.ResRet.f32 %6592, 2
  %6596 = fadd fast float %6593, -5.000000e-01
  %6597 = fadd fast float %6594, -5.000000e-01
  %6598 = fadd fast float %6595, -5.000000e-01
  %6599 = fmul fast float %4786, 4.000000e+00
  %6600 = fmul fast float %6599, %6582
  %6601 = fmul fast float %6600, %6596
  %6602 = fmul fast float %4787, 4.000000e+00
  %6603 = fmul fast float %6602, %6583
  %6604 = fmul fast float %6603, %6597
  %6605 = fmul fast float %4809, 4.000000e+00
  %6606 = fmul fast float %6605, %6584
  %6607 = fmul fast float %6606, %6598
  %6608 = fadd fast float %6601, %6588
  %6609 = fadd fast float %6604, %6589
  %6610 = fadd fast float %6607, %6590
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6613 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  br label %6614

; <label>:6614                                    ; preds = %6591, %6481
  %6615 = phi float [ %6611, %6591 ], [ %6588, %6481 ]
  %6616 = phi float [ %6612, %6591 ], [ %6589, %6481 ]
  %6617 = phi float [ %6613, %6591 ], [ %6590, %6481 ]
  %6618 = fmul fast float %6509, 9.843750e-01
  %6619 = fadd fast float %6618, 7.812500e-03
  %6620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6619, float %5074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6621 = extractvalue %dx.types.ResRet.f32 %6620, 2
  %6622 = extractvalue %dx.types.ResRet.f32 %6620, 3
  %6623 = fmul fast float %6621, %4786
  %6624 = fmul fast float %6621, %4787
  %6625 = fmul fast float %6621, %4809
  %6626 = fadd fast float %6623, %6622
  %6627 = fadd fast float %6624, %6622
  %6628 = fadd fast float %6625, %6622
  br i1 %5084, label %6629, label %6652

; <label>:6629                                    ; preds = %6614
  %6630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4181, float %6509, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6631 = extractvalue %dx.types.ResRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.ResRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.ResRet.f32 %6630, 2
  %6634 = fadd fast float %6631, -5.000000e-01
  %6635 = fadd fast float %6632, -5.000000e-01
  %6636 = fadd fast float %6633, -5.000000e-01
  %6637 = fmul fast float %4786, 4.000000e+00
  %6638 = fmul fast float %6637, %6582
  %6639 = fmul fast float %6638, %6634
  %6640 = fmul fast float %4787, 4.000000e+00
  %6641 = fmul fast float %6640, %6583
  %6642 = fmul fast float %6641, %6635
  %6643 = fmul fast float %4809, 4.000000e+00
  %6644 = fmul fast float %6643, %6584
  %6645 = fmul fast float %6644, %6636
  %6646 = fadd fast float %6639, %6626
  %6647 = fadd fast float %6642, %6627
  %6648 = fadd fast float %6645, %6628
  %6649 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  %6650 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6651 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  br label %6652

; <label>:6652                                    ; preds = %6629, %6614
  %6653 = phi float [ %6649, %6629 ], [ %6626, %6614 ]
  %6654 = phi float [ %6650, %6629 ], [ %6627, %6614 ]
  %6655 = phi float [ %6651, %6629 ], [ %6628, %6614 ]
  %6656 = call float @dx.op.binary.f32(i32 35, float %6654, float %6655)  ; FMax(a,b)
  %6657 = call float @dx.op.binary.f32(i32 35, float %6653, float %6656)  ; FMax(a,b)
  %6658 = fsub fast float 1.000000e+00, %6657
  %6659 = fmul fast float %6615, %6573
  %6660 = fmul fast float %6616, %6573
  %6661 = fmul fast float %6617, %6573
  %6662 = fsub fast float 1.000000e+00, %6510
  %6663 = bitcast float %6662 to i32
  %6664 = sitofp i32 %6663 to float
  %6665 = fmul fast float %6664, 5.000000e+00
  %6666 = fadd fast float %6665, 0xC1EFBF8940000000
  %6667 = fptosi float %6666 to i32
  %6668 = bitcast i32 %6667 to float
  %6669 = fmul fast float %6668, %4182
  %6670 = fmul fast float %6658, %6669
  %6671 = fmul fast float %6670, %6010
  %6672 = fmul fast float %6670, %6011
  %6673 = fmul fast float %6670, %6012
  %6674 = fadd fast float %6671, %6659
  %6675 = fadd fast float %6672, %6660
  %6676 = fadd fast float %6673, %6661
  %6677 = fmul fast float %6498, %4178
  %6678 = fmul fast float %6677, %6516
  %6679 = fmul fast float %6678, %6658
  %6680 = fmul fast float %6499, %4178
  %6681 = fmul fast float %6680, %6516
  %6682 = fmul fast float %6681, %6658
  %6683 = fmul fast float %6500, %4178
  %6684 = fmul fast float %6683, %6516
  %6685 = fmul fast float %6684, %6658
  %6686 = fadd fast float %6679, %6337
  %6687 = fadd fast float %6682, %6338
  %6688 = fadd fast float %6685, %6339
  %6689 = fmul fast float %6678, %6674
  %6690 = fmul fast float %6681, %6675
  %6691 = fmul fast float %6684, %6676
  %6692 = fadd fast float %6689, %6334
  %6693 = fadd fast float %6690, %6335
  %6694 = fadd fast float %6691, %6336
  br label %6412

; <label>:6695                                    ; preds = %6412
  br label %6696

; <label>:6696                                    ; preds = %6695, %6300
  %6697 = phi float [ %6302, %6300 ], [ %6413, %6695 ]
  %6698 = phi float [ %6303, %6300 ], [ %6414, %6695 ]
  %6699 = phi float [ %6304, %6300 ], [ %6415, %6695 ]
  %6700 = phi float [ %6305, %6300 ], [ %6416, %6695 ]
  %6701 = phi float [ %6306, %6300 ], [ %6417, %6695 ]
  %6702 = phi float [ %6307, %6300 ], [ %6418, %6695 ]
  %6703 = add i32 %6301, 1
  %6704 = icmp ugt i32 %6703, %6297
  br i1 %6704, label %6705, label %6300

; <label>:6705                                    ; preds = %6696
  br label %6706

; <label>:6706                                    ; preds = %6705, %6276, %6266
  %6707 = phi float [ %6267, %6266 ], [ %6267, %6276 ], [ %6697, %6705 ]
  %6708 = phi float [ %6268, %6266 ], [ %6268, %6276 ], [ %6698, %6705 ]
  %6709 = phi float [ %6269, %6266 ], [ %6269, %6276 ], [ %6699, %6705 ]
  %6710 = phi float [ %6270, %6266 ], [ %6270, %6276 ], [ %6700, %6705 ]
  %6711 = phi float [ %6271, %6266 ], [ %6271, %6276 ], [ %6701, %6705 ]
  %6712 = phi float [ %6272, %6266 ], [ %6272, %6276 ], [ %6702, %6705 ]
  %6713 = call float @dx.op.unary.f32(i32 24, float %4783)  ; Sqrt(value)
  %6714 = call float @dx.op.unary.f32(i32 24, float %4784)  ; Sqrt(value)
  %6715 = call float @dx.op.unary.f32(i32 24, float %4785)  ; Sqrt(value)
  %6716 = fmul fast float %6713, %6710
  %6717 = fmul fast float %6714, %6711
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  br i1 %186, label %6720, label %6743

; <label>:6720                                    ; preds = %6706
  %6721 = fadd fast float %6712, %4184
  %6722 = fmul fast float %6721, %4185
  %6723 = fsub fast float 1.000000e+00, %4185
  %6724 = call float @dx.op.unary.f32(i32 7, float %6723)  ; Saturate(value)
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 3
  %6727 = fmul fast float %6726, %6724
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 0
  %6730 = fmul fast float %6729, %6016
  %6731 = extractvalue %dx.types.CBufRet.f32 %6728, 2
  %6732 = fmul fast float %6731, %4807
  %6733 = fadd fast float %6717, %6716
  %6734 = fmul fast float %6719, %6733
  %6735 = extractvalue %dx.types.CBufRet.f32 %6725, 1
  %6736 = fadd fast float %6727, %6722
  %6737 = fsub fast float %6736, %6730
  %6738 = fadd fast float %6737, %6732
  %6739 = fsub fast float %6738, %6735
  %6740 = extractvalue %dx.types.CBufRet.f32 %6725, 2
  %6741 = fmul fast float %6739, %6740
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  br label %6759

; <label>:6743                                    ; preds = %6706
  %6744 = fmul fast float %6715, %6712
  %6745 = fmul fast float %6719, %6716
  %6746 = fmul fast float %6719, %6717
  %6747 = fmul fast float %6744, %6719
  %6748 = add i32 %45, 356
  %6749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6748, i32 undef)  ; BufferLoad(srv,index,wot)
  %6750 = extractvalue %dx.types.ResRet.i32 %6749, 0
  %6751 = and i32 %6750, 32
  %6752 = icmp eq i32 %6751, 0
  br i1 %6752, label %6759, label %6753

; <label>:6753                                    ; preds = %6743
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = fmul fast float %6755, 0x3FE99999A0000000
  %6757 = fadd fast float %6755, %6745
  %6758 = fadd fast float %6756, %6747
  br label %6759

; <label>:6759                                    ; preds = %6753, %6743, %6720
  %6760 = phi float [ %6734, %6720 ], [ %6757, %6753 ], [ %6745, %6743 ]
  %6761 = phi float [ %6742, %6720 ], [ %6746, %6753 ], [ %6746, %6743 ]
  %6762 = phi float [ 1.000000e+00, %6720 ], [ %6758, %6753 ], [ %6747, %6743 ]
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6765 = fmul fast float %6764, %6708
  %6766 = fmul fast float %6764, %6709
  %6767 = fadd fast float %6708, %6707
  %6768 = select i1 %186, float %6767, float %6707
  %6769 = fmul float %6768, %6764
  %6770 = select i1 %186, float 0.000000e+00, float %6765
  %6771 = select i1 %186, float 0.000000e+00, float %6766
  %6772 = fmul fast float %6760, %6713
  %6773 = fmul fast float %6761, %6714
  %6774 = fmul fast float %6762, %6715
  %6775 = fadd fast float %6769, %6772
  %6776 = fadd fast float %6770, %6773
  %6777 = fadd fast float %6771, %6774
  %6778 = select i1 %186, float %6761, float %6776
  %6779 = select i1 %186, float %6762, float %6777
  %6780 = call float @dx.op.binary.f32(i32 36, float %6775, float 3.225500e+04)  ; FMin(a,b)
  %6781 = call float @dx.op.binary.f32(i32 36, float %6778, float 3.225500e+04)  ; FMin(a,b)
  %6782 = call float @dx.op.binary.f32(i32 36, float %6779, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6780)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6781)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

