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
; SH_RED                   0   xyzw        5     NONE   float       
; SH_GREEN                 0   xyzw        6     NONE   float       
; SH_BLUE                  0   xyzw        7     NONE   float       
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
; shader hash: 337f5c92a636b74d98cad481819898aa
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %66
  %74 = fmul fast float %72, %67
  %75 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %76 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %58, %75
  %82 = fmul fast float %81, %80
  %83 = fmul fast float %59, %75
  %84 = fmul fast float %83, %80
  %85 = fmul fast float %60, %75
  %86 = fmul fast float %85, %80
  %87 = fmul fast float %59, %56
  %88 = fmul fast float %60, %55
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %60, %54
  %91 = fmul fast float %58, %56
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %58, %55
  %94 = fmul fast float %59, %54
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %57
  %97 = fmul fast float %92, %57
  %98 = fmul fast float %95, %57
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %73, 2.000000e+00
  %103 = fmul fast float %102, %100
  %104 = fmul fast float %74, 2.000000e+00
  %105 = fmul fast float %104, %101
  %106 = fsub fast float 1.000000e+00, %103
  %107 = fsub fast float 1.000000e+00, %105
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %106, %109
  %113 = fmul fast float %106, %110
  %114 = fmul fast float %106, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %107, %116
  %120 = fmul fast float %107, %117
  %121 = fmul fast float %107, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %126, %112
  %128 = fadd fast float %120, %124
  %129 = fadd fast float %128, %113
  %130 = fadd fast float %121, %125
  %131 = fadd fast float %130, %114
  %132 = fmul fast float %127, %68
  %133 = fmul fast float %129, %68
  %134 = fmul fast float %131, %68
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %73
  %139 = fmul fast float %137, %74
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %141, 114688
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %143, float %138, float 0.000000e+00
  %145 = select i1 %143, float %139, float 0.000000e+00
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fmul fast float %147, 2.550000e+02
  %149 = fptoui float %148 to i32
  %150 = select i1 %143, i32 %149, i32 0
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.i32 %152, 3
  %154 = and i32 %153, 3
  %155 = icmp ne i32 %154, 0
  %156 = and i32 %153, 4
  %157 = icmp ne i32 %156, 0
  %158 = and i1 %155, %157
  br i1 %158, label %159, label %170

; <label>:159                                     ; preds = %0
  %160 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %161 = fmul fast float %160, %74
  %162 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %163 = fmul fast float %162, %73
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %163, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = fcmp fast olt float %166, %168
  br label %173

; <label>:170                                     ; preds = %0
  %171 = icmp eq i32 %156, 0
  %172 = and i1 %155, %171
  br label %173

; <label>:173                                     ; preds = %170, %159
  %174 = phi i1 [ %169, %159 ], [ %172, %170 ]
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = fmul fast float %176, 0x3FE3C6EF40000000
  %178 = frem fast float %73, 2.560000e+02
  %179 = frem fast float %74, 2.560000e+02
  %180 = fptoui float %178 to i32
  %181 = fptoui float %179 to i32
  %182 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %180, i32 %181, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = fadd fast float %183, %177
  %186 = fadd fast float %184, %177
  %187 = call float @dx.op.unary.f32(i32 22, float %185)  ; Frc(value)
  %188 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %189 = add i32 %45, 156
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = shl i32 %191, 4
  %193 = and i32 %192, 32752
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %191, 7
  %196 = and i32 %195, 32752
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = lshr i32 %191, 22
  %199 = shl nuw nsw i32 %198, 5
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %45, 216
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 255
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F70101020000000
  %207 = lshr i32 %203, 8
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %203, 16
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = add i32 %45, 36
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 65535
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %217, 16
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %45, 288
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %224, 16
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = fmul fast float %226, 0x3F50624DE0000000
  %230 = fmul fast float %228, 0x3F50624DE0000000
  %231 = add i32 %45, 172
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = shl i32 %233, 4
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %233, 7
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %233, 22
  %241 = shl nuw nsw i32 %240, 5
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %45, 232
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %245, 8
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %245, 16
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = add i32 %45, 52
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %45, 304
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %268, 0x3F50624DE0000000
  %272 = fmul fast float %270, 0x3F50624DE0000000
  %273 = add i32 %45, 188
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %45, 248
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %45, 68
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %45, 320
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %45, 204
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %317, 4
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %317, 7
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %317, 22
  %325 = shl nuw nsw i32 %324, 5
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %45, 264
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %329, 8
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %329, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = add i32 %45, 84
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %45, 336
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = fmul fast float %352, 0x3F50624DE0000000
  %356 = fmul fast float %354, 0x3F50624DE0000000
  %357 = add i32 %45, 348
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 32
  %361 = icmp eq i32 %360, 0
  %362 = and i32 %359, 64
  %363 = icmp eq i32 %362, 0
  %364 = and i32 %359, 128
  %365 = icmp eq i32 %364, 0
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 2
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %383, label %370

; <label>:370                                     ; preds = %173
  %371 = add i32 %45, 472
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = add i32 %373, 0
  %375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %375, %dx.types.Handle %70, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = fmul fast float %377, %63
  %381 = fmul fast float %378, %64
  %382 = fmul fast float %379, %65
  br label %383

; <label>:383                                     ; preds = %370, %173
  %384 = phi float [ %65, %173 ], [ %382, %370 ]
  %385 = phi float [ %64, %173 ], [ %381, %370 ]
  %386 = phi float [ %63, %173 ], [ %380, %370 ]
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 2
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %410, label %391

; <label>:391                                     ; preds = %383
  %392 = add i32 %45, 44
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %386, float 1.000000e+00
  %398 = add i32 %45, 60
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 1
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %385, float 1.000000e+00
  %404 = add i32 %45, 76
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 1
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %384, float 1.000000e+00
  br label %410

; <label>:410                                     ; preds = %391, %383
  %411 = phi float [ %384, %383 ], [ %409, %391 ]
  %412 = phi float [ %385, %383 ], [ %403, %391 ]
  %413 = phi float [ %386, %383 ], [ %397, %391 ]
  %414 = lshr i32 %388, 20
  %415 = and i32 %414, 3
  %416 = add nuw nsw i32 %415, 1
  %417 = add i32 %45, 24
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %45, 28
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = or i32 %422, %419
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %883, label %425

; <label>:425                                     ; preds = %410
  %426 = and i32 %419, 262144
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %48, float 1.000000e+00
  %429 = select i1 %427, float %49, float 0.000000e+00
  %430 = select i1 %427, float %50, float 0.000000e+00
  %431 = select i1 %427, float %51, float 1.000000e+00
  %432 = select i1 %427, float %52, float %61
  %433 = select i1 %427, float %53, float %62
  %434 = add i32 %45, 284
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = lshr i32 %436, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = fmul fast float %438, 0x3F50624DE0000000
  %440 = add i32 %45, 88
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  %445 = lshr i32 %442, 24
  %446 = add i32 %45, 292
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %45, 32
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 22
  %457 = shl nuw nsw i32 %456, 5
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = shl i32 %455, 4
  %460 = and i32 %459, 32752
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %455, 7
  %463 = and i32 %462, 32752
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = fmul fast float %466, 1.000000e+03
  %468 = fmul fast float %229, %467
  %469 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %470 = fadd fast float %469, %219
  %471 = fmul fast float %230, %467
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = fadd fast float %472, %221
  %474 = fmul fast float %439, %467
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = fmul fast float %475, 0x401921FB60000000
  %477 = fadd fast float %476, %458
  %478 = call float @dx.op.unary.f32(i32 13, float %477)  ; Sin(value)
  %479 = call float @dx.op.unary.f32(i32 12, float %477)  ; Cos(value)
  %480 = fsub fast float -0.000000e+00, %478
  %481 = fadd fast float %432, -5.000000e-01
  %482 = fadd fast float %433, -5.000000e-01
  %483 = fmul fast float %450, %481
  %484 = fmul fast float %452, %482
  %485 = fadd fast float %483, 5.000000e-01
  %486 = fadd fast float %484, 5.000000e-01
  %487 = fmul fast float %461, %485
  %488 = fmul fast float %464, %486
  %489 = fmul fast float %479, %487
  %490 = call float @dx.op.tertiary.f32(i32 46, float %480, float %488, float %489)  ; FMad(a,b,c)
  %491 = fmul fast float %478, %487
  %492 = call float @dx.op.tertiary.f32(i32 46, float %479, float %488, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %470, %490
  %494 = fadd fast float %473, %492
  %495 = icmp ugt i32 %444, 1
  %496 = icmp ugt i32 %442, 33554431
  %497 = or i1 %496, %495
  br i1 %497, label %498, label %523

; <label>:498                                     ; preds = %425
  %499 = add i32 %45, 228
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = fmul fast float %466, %503
  %505 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %506 = mul nuw nsw i32 %444, %445
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %505, %507
  %509 = call float @dx.op.unary.f32(i32 27, float %508)  ; Round_ni(value)
  %510 = fptoui float %509 to i32
  %511 = urem i32 %510, %444
  %512 = udiv i32 %510, %445
  %513 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %514 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %515 = uitofp i32 %511 to float
  %516 = uitofp i32 %512 to float
  %517 = fadd fast float %513, %515
  %518 = fadd fast float %514, %516
  %519 = uitofp i32 %444 to float
  %520 = uitofp i32 %445 to float
  %521 = fdiv fast float %517, %519
  %522 = fdiv fast float %518, %520
  br label %523

; <label>:523                                     ; preds = %498, %425
  %524 = phi float [ %521, %498 ], [ %493, %425 ]
  %525 = phi float [ %522, %498 ], [ %494, %425 ]
  %526 = and i32 %419, 16
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %724, label %528

; <label>:528                                     ; preds = %523
  %529 = add i32 %45, 360
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = add i32 %531, 0
  %533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %533, %dx.types.Handle %69, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = extractvalue %dx.types.ResRet.f32 %534, 3
  %539 = and i32 %442, 255
  %540 = uitofp i32 %539 to float
  %541 = lshr i32 %442, 8
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %538, %540
  %545 = fadd fast float %544, %543
  %546 = fmul fast float %545, 0x3F70101000000000
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 512
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %559, label %551

; <label>:551                                     ; preds = %528
  %552 = add i32 %45, 440
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = add i32 %554, 0
  %556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %556, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  br label %559

; <label>:559                                     ; preds = %551, %528
  %560 = phi float [ %558, %551 ], [ 1.000000e+00, %528 ]
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 33554432
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %671, label %565

; <label>:565                                     ; preds = %559
  %566 = add i32 %45, 224
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %45, 228
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 24
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = and i32 %579, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %579, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %579, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = add i32 %45, 220
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = lshr i32 %596, 24
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = and i32 %596, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = lshr i32 %596, 8
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %596, 16
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = bitcast float %535 to i32
  %612 = ashr i32 %611, 1
  %613 = sub nsw i32 1597463174, %612
  %614 = bitcast i32 %613 to float
  %615 = fmul fast float %535, 5.000000e-01
  %616 = fmul fast float %614, %614
  %617 = fmul fast float %616, %615
  %618 = fsub fast float 1.500000e+00, %617
  %619 = fmul fast float %614, %535
  %620 = fmul fast float %619, %618
  %621 = bitcast float %536 to i32
  %622 = ashr i32 %621, 1
  %623 = sub nsw i32 1597463174, %622
  %624 = bitcast i32 %623 to float
  %625 = fmul fast float %536, 5.000000e-01
  %626 = fmul fast float %624, %624
  %627 = fmul fast float %626, %625
  %628 = fsub fast float 1.500000e+00, %627
  %629 = fmul fast float %624, %536
  %630 = fmul fast float %629, %628
  %631 = bitcast float %537 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %537, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %537
  %640 = fmul fast float %639, %638
  %641 = fsub fast float %620, %602
  %642 = fsub fast float %630, %606
  %643 = fsub fast float %640, %610
  %644 = fmul fast float %641, %570
  %645 = fmul fast float %642, %572
  %646 = fmul fast float %643, %577
  %647 = fadd fast float %644, %585
  %648 = fadd fast float %645, %589
  %649 = fadd fast float %646, %593
  %650 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %653 = fmul fast float %650, %650
  %654 = fmul fast float %651, %651
  %655 = fmul fast float %652, %652
  %656 = fsub fast float %653, %535
  %657 = fsub fast float %654, %536
  %658 = fsub fast float %655, %537
  %659 = fmul fast float %656, %560
  %660 = fmul fast float %657, %560
  %661 = fmul fast float %658, %560
  %662 = fadd fast float %659, %535
  %663 = fadd fast float %660, %536
  %664 = fadd fast float %661, %537
  %665 = fadd fast float %582, %546
  %666 = fsub fast float %665, %599
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = fsub fast float %667, %546
  %669 = fmul fast float %668, %560
  %670 = fadd fast float %669, %546
  br label %724

; <label>:671                                     ; preds = %559
  %672 = and i32 %562, 134217728
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %708, label %674

; <label>:674                                     ; preds = %671
  %675 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %677 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %678 = fadd fast float %675, -5.000000e-01
  %679 = fadd fast float %676, -5.000000e-01
  %680 = fadd fast float %677, -5.000000e-01
  %681 = fmul fast float %678, %560
  %682 = fmul fast float %679, %560
  %683 = fmul fast float %680, %560
  %684 = fadd fast float %681, 5.000000e-01
  %685 = fadd fast float %682, 5.000000e-01
  %686 = fadd fast float %683, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 24, float %535)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %536)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %537)  ; Sqrt(value)
  %690 = fmul fast float %684, 2.000000e+00
  %691 = fsub fast float 1.000000e+00, %690
  %692 = fmul fast float %691, %687
  %693 = fadd fast float %692, %690
  %694 = fmul fast float %693, %687
  %695 = fmul fast float %685, 2.000000e+00
  %696 = fsub fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %688
  %698 = fadd fast float %697, %695
  %699 = fmul fast float %698, %688
  %700 = fmul fast float %686, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %689
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %703, %689
  %705 = fmul fast float %694, %694
  %706 = fmul fast float %699, %699
  %707 = fmul fast float %704, %704
  br label %724

; <label>:708                                     ; preds = %671
  %709 = fmul fast float %206, %206
  %710 = fmul fast float %210, %210
  %711 = fmul fast float %214, %214
  %712 = fadd fast float %709, -1.000000e+00
  %713 = fadd fast float %710, -1.000000e+00
  %714 = fadd fast float %711, -1.000000e+00
  %715 = fmul fast float %560, %712
  %716 = fmul fast float %560, %713
  %717 = fmul fast float %560, %714
  %718 = fadd fast float %715, 1.000000e+00
  %719 = fadd fast float %716, 1.000000e+00
  %720 = fadd fast float %717, 1.000000e+00
  %721 = fmul fast float %718, %535
  %722 = fmul fast float %719, %536
  %723 = fmul fast float %720, %537
  br label %724

; <label>:724                                     ; preds = %708, %674, %565, %523
  %725 = phi float [ %670, %565 ], [ %546, %674 ], [ %546, %708 ], [ 0x3FA23C0BE0000000, %523 ]
  %726 = phi float [ %662, %565 ], [ %705, %674 ], [ %721, %708 ], [ 1.000000e+00, %523 ]
  %727 = phi float [ %663, %565 ], [ %706, %674 ], [ %722, %708 ], [ 1.000000e+00, %523 ]
  %728 = phi float [ %664, %565 ], [ %707, %674 ], [ %723, %708 ], [ 1.000000e+00, %523 ]
  %729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.i32 %729, 1
  %731 = and i32 %730, 1
  %732 = icmp ne i32 %731, 0
  %733 = add i32 %45, 356
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 32
  %737 = icmp ne i32 %736, 0
  %738 = and i1 %732, %737
  %739 = select i1 %738, float 1.000000e+00, float %726
  %740 = select i1 %738, float 0x3FD3333340000000, float %727
  %741 = select i1 %738, float 0x3FD3333340000000, float %728
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 32
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %818, label %746

; <label>:746                                     ; preds = %724
  %747 = add i32 %45, 92
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %45, 376
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %69, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = extractvalue %dx.types.ResRet.f32 %755, 3
  %760 = and i32 %749, 255
  %761 = uitofp i32 %760 to float
  %762 = lshr i32 %749, 8
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = lshr i32 %749, 16
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101000000000
  %769 = fmul fast float %756, %761
  %770 = fadd fast float %769, %764
  %771 = fmul fast float %770, 0x3F70101000000000
  %772 = fadd fast float %757, -5.000000e-01
  %773 = fadd fast float %759, -5.000000e-01
  %774 = fmul fast float %772, %768
  %775 = fmul fast float %773, %768
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %776, 2.000000e+00
  %779 = fadd fast float %778, -1.000000e+00
  %780 = fmul fast float %777, 2.000000e+00
  %781 = fadd fast float %780, -1.000000e+00
  %782 = fadd fast float %779, %781
  %783 = fmul fast float %782, 5.000000e-01
  %784 = fsub fast float %779, %781
  %785 = fmul fast float %784, 5.000000e-01
  %786 = call float @dx.op.unary.f32(i32 6, float %783)  ; FAbs(value)
  %787 = fsub fast float 1.000000e+00, %786
  %788 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %789 = fsub fast float %787, %788
  %790 = call float @dx.op.dot3.f32(i32 55, float %783, float %785, float %789, float %783, float %785, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.unary.f32(i32 25, float %790)  ; Rsqrt(value)
  %792 = fmul fast float %783, %791
  %793 = fmul fast float %785, %791
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 67108864
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %814, label %798

; <label>:798                                     ; preds = %746
  %799 = add i32 %45, 280
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %801, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = fsub fast float %771, %809
  %811 = fmul fast float %810, %803
  %812 = fadd fast float %811, %807
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  br label %814

; <label>:814                                     ; preds = %798, %746
  %815 = phi float [ %813, %798 ], [ %771, %746 ]
  %816 = call float @dx.op.dot2.f32(i32 54, float %792, float %793, float %428, float %429)  ; Dot2(ax,ay,bx,by)
  %817 = call float @dx.op.dot2.f32(i32 54, float %792, float %793, float %430, float %431)  ; Dot2(ax,ay,bx,by)
  br label %818

; <label>:818                                     ; preds = %814, %724
  %819 = phi float [ %815, %814 ], [ 0x3FD6666660000000, %724 ]
  %820 = phi float [ %816, %814 ], [ 0.000000e+00, %724 ]
  %821 = phi float [ %817, %814 ], [ 0.000000e+00, %724 ]
  %822 = phi float [ %758, %814 ], [ 1.000000e+00, %724 ]
  %823 = add i32 %45, 160
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = lshr i32 %825, 22
  %827 = shl nuw nsw i32 %826, 5
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 64
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %866, label %833

; <label>:833                                     ; preds = %818
  %834 = add i32 %45, 392
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = add i32 %836, 0
  %838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 131072
  %842 = icmp eq i32 %841, 0
  %843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %838, %dx.types.Handle %69, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = fmul fast float %844, %194
  %848 = fmul fast float %845, %197
  %849 = fmul fast float %846, %200
  br i1 %842, label %856, label %850

; <label>:850                                     ; preds = %833
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = fmul fast float %852, %847
  %854 = fmul fast float %852, %848
  %855 = fmul fast float %852, %849
  br label %856

; <label>:856                                     ; preds = %850, %833
  %857 = phi float [ %853, %850 ], [ %847, %833 ]
  %858 = phi float [ %854, %850 ], [ %848, %833 ]
  %859 = phi float [ %855, %850 ], [ %849, %833 ]
  %860 = fmul fast float %857, %828
  %861 = select i1 %174, float %860, float %857
  %862 = call float @dx.op.dot3.f32(i32 55, float %861, float %858, float %859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = select i1 %174, float 0.000000e+00, float %857
  %864 = select i1 %174, float %862, float %858
  %865 = select i1 %174, float 0.000000e+00, float %859
  br label %866

; <label>:866                                     ; preds = %856, %818
  %867 = phi float [ %863, %856 ], [ 0.000000e+00, %818 ]
  %868 = phi float [ %864, %856 ], [ 0.000000e+00, %818 ]
  %869 = phi float [ %865, %856 ], [ 0.000000e+00, %818 ]
  %870 = add i32 %45, 96
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %872, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = call float @dx.op.dot3.f32(i32 55, float %739, float %740, float %741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = fmul fast float %877, %878
  %880 = fadd fast float %879, %874
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  br label %883

; <label>:883                                     ; preds = %866, %410
  %884 = phi float [ 0.000000e+00, %410 ], [ %820, %866 ]
  %885 = phi float [ 0.000000e+00, %410 ], [ %821, %866 ]
  %886 = phi float [ 0.000000e+00, %410 ], [ %739, %866 ]
  %887 = phi float [ 0.000000e+00, %410 ], [ %740, %866 ]
  %888 = phi float [ 0.000000e+00, %410 ], [ %741, %866 ]
  %889 = phi float [ 0.000000e+00, %410 ], [ %867, %866 ]
  %890 = phi float [ 0.000000e+00, %410 ], [ %868, %866 ]
  %891 = phi float [ 0.000000e+00, %410 ], [ %869, %866 ]
  %892 = phi float [ 0.000000e+00, %410 ], [ %725, %866 ]
  %893 = phi float [ 0.000000e+00, %410 ], [ 1.000000e+00, %866 ]
  %894 = phi float [ 0.000000e+00, %410 ], [ %819, %866 ]
  %895 = phi float [ 0.000000e+00, %410 ], [ %822, %866 ]
  %896 = phi float [ 0.000000e+00, %410 ], [ %882, %866 ]
  br i1 %361, label %1738, label %897

; <label>:897                                     ; preds = %883
  %898 = icmp ult i32 %416, 2
  %899 = add i32 %45, 40
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %45, 44
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = or i32 %904, %901
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %1738, label %907

; <label>:907                                     ; preds = %897
  %908 = and i32 %901, 262144
  %909 = icmp ne i32 %908, 0
  %910 = select i1 %909, float %48, float 1.000000e+00
  %911 = select i1 %909, float %49, float 0.000000e+00
  %912 = select i1 %909, float %50, float 0.000000e+00
  %913 = select i1 %909, float %51, float 1.000000e+00
  %914 = select i1 %909, float %52, float %61
  %915 = select i1 %909, float %53, float %62
  %916 = add i32 %45, 300
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = fmul fast float %920, 0x3F50624DE0000000
  %922 = add i32 %45, 104
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  %927 = lshr i32 %924, 24
  %928 = add i32 %45, 308
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %930, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = add i32 %45, 48
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 22
  %939 = shl nuw nsw i32 %938, 5
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = shl i32 %937, 4
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %937, 7
  %945 = and i32 %944, 32752
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, 1.000000e+03
  %950 = fmul fast float %271, %949
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fadd fast float %951, %261
  %953 = fmul fast float %272, %949
  %954 = call float @dx.op.unary.f32(i32 22, float %953)  ; Frc(value)
  %955 = fadd fast float %954, %263
  %956 = fmul fast float %921, %949
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = fmul fast float %957, 0x401921FB60000000
  %959 = fadd fast float %958, %940
  %960 = call float @dx.op.unary.f32(i32 13, float %959)  ; Sin(value)
  %961 = call float @dx.op.unary.f32(i32 12, float %959)  ; Cos(value)
  %962 = fsub fast float -0.000000e+00, %960
  %963 = fadd fast float %914, -5.000000e-01
  %964 = fadd fast float %915, -5.000000e-01
  %965 = fmul fast float %932, %963
  %966 = fmul fast float %934, %964
  %967 = fadd fast float %965, 5.000000e-01
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fmul fast float %943, %967
  %970 = fmul fast float %946, %968
  %971 = fmul fast float %961, %969
  %972 = call float @dx.op.tertiary.f32(i32 46, float %962, float %970, float %971)  ; FMad(a,b,c)
  %973 = fmul fast float %960, %969
  %974 = call float @dx.op.tertiary.f32(i32 46, float %961, float %970, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %952, %972
  %976 = fadd fast float %955, %974
  %977 = icmp ugt i32 %926, 1
  %978 = icmp ugt i32 %924, 33554431
  %979 = or i1 %978, %977
  br i1 %979, label %980, label %1005

; <label>:980                                     ; preds = %907
  %981 = add i32 %45, 244
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = fmul fast float %948, %985
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = mul nuw nsw i32 %926, %927
  %989 = uitofp i32 %988 to float
  %990 = fmul fast float %987, %989
  %991 = call float @dx.op.unary.f32(i32 27, float %990)  ; Round_ni(value)
  %992 = fptoui float %991 to i32
  %993 = urem i32 %992, %926
  %994 = udiv i32 %992, %927
  %995 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %996 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %997 = uitofp i32 %993 to float
  %998 = uitofp i32 %994 to float
  %999 = fadd fast float %995, %997
  %1000 = fadd fast float %996, %998
  %1001 = uitofp i32 %926 to float
  %1002 = uitofp i32 %927 to float
  %1003 = fdiv fast float %999, %1001
  %1004 = fdiv fast float %1000, %1002
  br label %1005

; <label>:1005                                    ; preds = %980, %907
  %1006 = phi float [ %1003, %980 ], [ %975, %907 ]
  %1007 = phi float [ %1004, %980 ], [ %976, %907 ]
  %1008 = and i32 %901, 16777216
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1119, label %1010

; <label>:1010                                    ; preds = %1005
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fadd fast float %1012, %132
  %1016 = fadd fast float %1013, %133
  %1017 = fadd fast float %1014, %134
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = icmp eq i32 %46, 65535
  br i1 %1021, label %1116, label %1022

; <label>:1022                                    ; preds = %1010
  %1023 = lshr i32 %46, 1
  %1024 = shl i32 %1023, 2
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %46, 1
  %1028 = icmp ne i32 %1027, 0
  %1029 = lshr i32 %1026, 16
  %1030 = and i32 %1026, 65535
  %1031 = select i1 %1028, i32 %1029, i32 %1030
  %1032 = icmp eq i32 %1031, 65535
  br i1 %1032, label %1112, label %1033

; <label>:1033                                    ; preds = %1022
  %1034 = mul nuw nsw i32 %1031, 40
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = add nuw nsw i32 %1034, 12
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = add nuw nsw i32 %1034, 24
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = add nuw nsw i32 %1034, 36
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = fsub fast float %1015, %1036
  %1053 = fsub fast float %1016, %1037
  %1054 = fsub fast float %1017, %1038
  %1055 = fmul fast float %1051, %1052
  %1056 = fmul fast float %1051, %1053
  %1057 = fmul fast float %1051, %1054
  %1058 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = fmul fast float %1061, %1041
  %1065 = fmul fast float %1062, %1042
  %1066 = fmul fast float %1063, %1043
  %1067 = shl i32 %46, 2
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = add i32 %1069, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1073 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1074 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1071, %dx.types.Handle %40, float %1072, float %1073, float %1074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = fmul fast float %1076, 1.023000e+03
  %1080 = fmul fast float %1077, 1.023000e+03
  %1081 = fmul fast float %1078, 1.023000e+03
  %1082 = fadd fast float %1079, 5.000000e-01
  %1083 = fadd fast float %1080, 5.000000e-01
  %1084 = fadd fast float %1081, 5.000000e-01
  %1085 = call float @dx.op.unary.f32(i32 27, float %1082)  ; Round_ni(value)
  %1086 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1087 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1088 = fsub fast float %1055, %1058
  %1089 = fsub fast float %1056, %1059
  %1090 = fsub fast float %1057, %1060
  %1091 = fmul fast float %1088, 7.500000e-01
  %1092 = fmul fast float %1089, 7.500000e-01
  %1093 = fmul fast float %1090, 7.500000e-01
  %1094 = fadd fast float %1058, 1.250000e-01
  %1095 = fadd fast float %1094, %1091
  %1096 = fadd fast float %1095, %1085
  %1097 = fadd fast float %1059, 1.250000e-01
  %1098 = fadd fast float %1097, %1092
  %1099 = fadd fast float %1098, %1086
  %1100 = fadd fast float %1060, 1.250000e-01
  %1101 = fadd fast float %1100, %1093
  %1102 = fadd fast float %1101, %1087
  %1103 = fmul fast float %1096, %1046
  %1104 = fmul fast float %1099, %1047
  %1105 = fmul fast float %1102, %1048
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1109, %dx.types.Handle %38, float %1103, float %1104, float %1105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  br label %1112

; <label>:1112                                    ; preds = %1033, %1022
  %1113 = phi float [ %1111, %1033 ], [ -1.000000e+00, %1022 ]
  %1114 = fadd fast float %1113, %1020
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  br label %1116

; <label>:1116                                    ; preds = %1112, %1010
  %1117 = phi float [ %1115, %1112 ], [ %1020, %1010 ]
  %1118 = fmul fast float %1117, %413
  br label %1119

; <label>:1119                                    ; preds = %1116, %1005
  %1120 = phi float [ %1118, %1116 ], [ %413, %1005 ]
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 256
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1171, label %1125

; <label>:1125                                    ; preds = %1119
  %1126 = add i32 %45, 428
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %1128, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = add i32 %45, 116
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = shl i32 %1135, 4
  %1137 = and i32 %1136, 32752
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = lshr i32 %1135, 7
  %1140 = and i32 %1139, 32752
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = fsub fast float 1.000000e+00, %1120
  %1143 = call float @dx.op.binary.f32(i32 35, float %1142, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1144 = bitcast float %1120 to i32
  %1145 = sitofp i32 %1144 to float
  %1146 = fadd fast float %1145, 0xC1CFBF8940000000
  %1147 = fmul fast float %1141, %1146
  %1148 = fadd fast float %1147, 0x41CFBF8940000000
  %1149 = fptosi float %1148 to i32
  %1150 = bitcast i32 %1149 to float
  %1151 = bitcast float %1143 to i32
  %1152 = sitofp i32 %1151 to float
  %1153 = fadd fast float %1152, 0xC1CFBF8940000000
  %1154 = fmul fast float %1153, %1141
  %1155 = fadd fast float %1154, 0x41CFBF8940000000
  %1156 = fptosi float %1155 to i32
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1150, %1138
  %1159 = fmul fast float %1157, %1138
  %1160 = fsub fast float %1143, %1158
  %1161 = fadd fast float %1159, %1143
  %1162 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1163 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1164 = fsub fast float %1132, %1162
  %1165 = fsub fast float %1163, %1162
  %1166 = bitcast float %1165 to i32
  %1167 = sub nsw i32 2129859010, %1166
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1168, %1164
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  br label %1171

; <label>:1171                                    ; preds = %1125, %1119
  %1172 = phi float [ %1170, %1125 ], [ %1120, %1119 ]
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 128
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1193, label %1177

; <label>:1177                                    ; preds = %1171
  %1178 = add i32 %45, 412
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 524288
  %1188 = icmp ne i32 %1187, 0
  %1189 = fcmp fast ogt float %1184, 0x3FE0101020000000
  %1190 = select i1 %1189, float 1.000000e+00, float 0.000000e+00
  %1191 = select i1 %1188, float %1190, float %1184
  %1192 = fmul fast float %1191, %1172
  br label %1193

; <label>:1193                                    ; preds = %1177, %1171
  %1194 = phi float [ %1192, %1177 ], [ %1172, %1171 ]
  %1195 = fcmp fast ult float %1194, 0x3F70101020000000
  br i1 %1195, label %1738, label %1196

; <label>:1196                                    ; preds = %1193
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 16
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1399, label %1201

; <label>:1201                                    ; preds = %1196
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %45, 364
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1208, %dx.types.Handle %69, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = and i32 %1203, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = lshr i32 %1203, 8
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1213, %1215
  %1220 = fadd fast float %1219, %1218
  %1221 = fmul fast float %1220, 0x3F70101000000000
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 512
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1234, label %1226

; <label>:1226                                    ; preds = %1201
  %1227 = add i32 %45, 444
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %1229, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1231, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  br label %1234

; <label>:1234                                    ; preds = %1226, %1201
  %1235 = phi float [ %1233, %1226 ], [ 1.000000e+00, %1201 ]
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 33554432
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1346, label %1240

; <label>:1240                                    ; preds = %1234
  %1241 = add i32 %45, 240
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 65535
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = lshr i32 %1243, 16
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = add i32 %45, 244
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 65535
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = lshr i32 %1254, 24
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = and i32 %1254, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1254, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = lshr i32 %1254, 16
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = add i32 %45, 236
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 24
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = and i32 %1271, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = lshr i32 %1271, 8
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = lshr i32 %1271, 16
  %1283 = and i32 %1282, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = bitcast float %1210 to i32
  %1287 = ashr i32 %1286, 1
  %1288 = sub nsw i32 1597463174, %1287
  %1289 = bitcast i32 %1288 to float
  %1290 = fmul fast float %1210, 5.000000e-01
  %1291 = fmul fast float %1289, %1289
  %1292 = fmul fast float %1291, %1290
  %1293 = fsub fast float 1.500000e+00, %1292
  %1294 = fmul fast float %1289, %1210
  %1295 = fmul fast float %1294, %1293
  %1296 = bitcast float %1211 to i32
  %1297 = ashr i32 %1296, 1
  %1298 = sub nsw i32 1597463174, %1297
  %1299 = bitcast i32 %1298 to float
  %1300 = fmul fast float %1211, 5.000000e-01
  %1301 = fmul fast float %1299, %1299
  %1302 = fmul fast float %1301, %1300
  %1303 = fsub fast float 1.500000e+00, %1302
  %1304 = fmul fast float %1299, %1211
  %1305 = fmul fast float %1304, %1303
  %1306 = bitcast float %1212 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = sub nsw i32 1597463174, %1307
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1212, 5.000000e-01
  %1311 = fmul fast float %1309, %1309
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float 1.500000e+00, %1312
  %1314 = fmul fast float %1309, %1212
  %1315 = fmul fast float %1314, %1313
  %1316 = fsub fast float %1295, %1277
  %1317 = fsub fast float %1305, %1281
  %1318 = fsub fast float %1315, %1285
  %1319 = fmul fast float %1316, %1245
  %1320 = fmul fast float %1317, %1247
  %1321 = fmul fast float %1318, %1252
  %1322 = fadd fast float %1319, %1260
  %1323 = fadd fast float %1320, %1264
  %1324 = fadd fast float %1321, %1268
  %1325 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1326 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1327 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1328 = fmul fast float %1325, %1325
  %1329 = fmul fast float %1326, %1326
  %1330 = fmul fast float %1327, %1327
  %1331 = fsub fast float %1328, %1210
  %1332 = fsub fast float %1329, %1211
  %1333 = fsub fast float %1330, %1212
  %1334 = fmul fast float %1331, %1235
  %1335 = fmul fast float %1332, %1235
  %1336 = fmul fast float %1333, %1235
  %1337 = fadd fast float %1334, %1210
  %1338 = fadd fast float %1335, %1211
  %1339 = fadd fast float %1336, %1212
  %1340 = fadd fast float %1257, %1221
  %1341 = fsub fast float %1340, %1274
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fsub fast float %1342, %1221
  %1344 = fmul fast float %1343, %1235
  %1345 = fadd fast float %1344, %1221
  br label %1399

; <label>:1346                                    ; preds = %1234
  %1347 = and i32 %1237, 134217728
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1383, label %1349

; <label>:1349                                    ; preds = %1346
  %1350 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1352 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1353 = fadd fast float %1350, -5.000000e-01
  %1354 = fadd fast float %1351, -5.000000e-01
  %1355 = fadd fast float %1352, -5.000000e-01
  %1356 = fmul fast float %1353, %1235
  %1357 = fmul fast float %1354, %1235
  %1358 = fmul fast float %1355, %1235
  %1359 = fadd fast float %1356, 5.000000e-01
  %1360 = fadd fast float %1357, 5.000000e-01
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1364 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1365 = fmul fast float %1359, 2.000000e+00
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = fmul fast float %1366, %1362
  %1368 = fadd fast float %1367, %1365
  %1369 = fmul fast float %1368, %1362
  %1370 = fmul fast float %1360, 2.000000e+00
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = fmul fast float %1371, %1363
  %1373 = fadd fast float %1372, %1370
  %1374 = fmul fast float %1373, %1363
  %1375 = fmul fast float %1361, 2.000000e+00
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fmul fast float %1376, %1364
  %1378 = fadd fast float %1377, %1375
  %1379 = fmul fast float %1378, %1364
  %1380 = fmul fast float %1369, %1369
  %1381 = fmul fast float %1374, %1374
  %1382 = fmul fast float %1379, %1379
  br label %1399

; <label>:1383                                    ; preds = %1346
  %1384 = fmul fast float %248, %248
  %1385 = fmul fast float %252, %252
  %1386 = fmul fast float %256, %256
  %1387 = fadd fast float %1384, -1.000000e+00
  %1388 = fadd fast float %1385, -1.000000e+00
  %1389 = fadd fast float %1386, -1.000000e+00
  %1390 = fmul fast float %1235, %1387
  %1391 = fmul fast float %1235, %1388
  %1392 = fmul fast float %1235, %1389
  %1393 = fadd fast float %1390, 1.000000e+00
  %1394 = fadd fast float %1391, 1.000000e+00
  %1395 = fadd fast float %1392, 1.000000e+00
  %1396 = fmul fast float %1393, %1210
  %1397 = fmul fast float %1394, %1211
  %1398 = fmul fast float %1395, %1212
  br label %1399

; <label>:1399                                    ; preds = %1383, %1349, %1240, %1196
  %1400 = phi float [ %1345, %1240 ], [ %1221, %1349 ], [ %1221, %1383 ], [ 0x3FA23C0BE0000000, %1196 ]
  %1401 = phi float [ %1337, %1240 ], [ %1380, %1349 ], [ %1396, %1383 ], [ 1.000000e+00, %1196 ]
  %1402 = phi float [ %1338, %1240 ], [ %1381, %1349 ], [ %1397, %1383 ], [ 1.000000e+00, %1196 ]
  %1403 = phi float [ %1339, %1240 ], [ %1382, %1349 ], [ %1398, %1383 ], [ 1.000000e+00, %1196 ]
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 1
  %1406 = and i32 %1405, 1
  %1407 = icmp ne i32 %1406, 0
  %1408 = add i32 %45, 356
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 32
  %1412 = icmp ne i32 %1411, 0
  %1413 = and i1 %1407, %1412
  %1414 = select i1 %1413, float 1.000000e+00, float %1401
  %1415 = select i1 %1413, float 0x3FD3333340000000, float %1402
  %1416 = select i1 %1413, float 0x3FD3333340000000, float %1403
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 32
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1493, label %1421

; <label>:1421                                    ; preds = %1399
  %1422 = add i32 %45, 108
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = add i32 %45, 380
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %69, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = extractvalue %dx.types.ResRet.f32 %1430, 3
  %1435 = and i32 %1424, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = lshr i32 %1424, 8
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = lshr i32 %1424, 16
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101000000000
  %1444 = fmul fast float %1431, %1436
  %1445 = fadd fast float %1444, %1439
  %1446 = fmul fast float %1445, 0x3F70101000000000
  %1447 = fadd fast float %1432, -5.000000e-01
  %1448 = fadd fast float %1434, -5.000000e-01
  %1449 = fmul fast float %1447, %1443
  %1450 = fmul fast float %1448, %1443
  %1451 = fadd fast float %1449, 5.000000e-01
  %1452 = fadd fast float %1450, 5.000000e-01
  %1453 = fmul fast float %1451, 2.000000e+00
  %1454 = fadd fast float %1453, -1.000000e+00
  %1455 = fmul fast float %1452, 2.000000e+00
  %1456 = fadd fast float %1455, -1.000000e+00
  %1457 = fadd fast float %1454, %1456
  %1458 = fmul fast float %1457, 5.000000e-01
  %1459 = fsub fast float %1454, %1456
  %1460 = fmul fast float %1459, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = call float @dx.op.unary.f32(i32 6, float %1460)  ; FAbs(value)
  %1464 = fsub fast float %1462, %1463
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1458, float %1460, float %1464, float %1458, float %1460, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = call float @dx.op.unary.f32(i32 25, float %1465)  ; Rsqrt(value)
  %1467 = fmul fast float %1458, %1466
  %1468 = fmul fast float %1460, %1466
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 67108864
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1489, label %1473

; <label>:1473                                    ; preds = %1421
  %1474 = add i32 %45, 296
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 65535
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 65535
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1476, 16
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = fsub fast float %1446, %1484
  %1486 = fmul fast float %1485, %1478
  %1487 = fadd fast float %1486, %1482
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  br label %1489

; <label>:1489                                    ; preds = %1473, %1421
  %1490 = phi float [ %1488, %1473 ], [ %1446, %1421 ]
  %1491 = call float @dx.op.dot2.f32(i32 54, float %1467, float %1468, float %910, float %911)  ; Dot2(ax,ay,bx,by)
  %1492 = call float @dx.op.dot2.f32(i32 54, float %1467, float %1468, float %912, float %913)  ; Dot2(ax,ay,bx,by)
  br label %1493

; <label>:1493                                    ; preds = %1489, %1399
  %1494 = phi float [ %1490, %1489 ], [ 0x3FD6666660000000, %1399 ]
  %1495 = phi float [ %1491, %1489 ], [ 0.000000e+00, %1399 ]
  %1496 = phi float [ %1492, %1489 ], [ 0.000000e+00, %1399 ]
  %1497 = phi float [ %1433, %1489 ], [ 1.000000e+00, %1399 ]
  %1498 = add i32 %45, 176
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = lshr i32 %1500, 22
  %1502 = shl nuw nsw i32 %1501, 5
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 64
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1541, label %1508

; <label>:1508                                    ; preds = %1493
  %1509 = add i32 %45, 396
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 131072
  %1517 = icmp eq i32 %1516, 0
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %69, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = fmul fast float %1519, %236
  %1523 = fmul fast float %1520, %239
  %1524 = fmul fast float %1521, %242
  br i1 %1517, label %1531, label %1525

; <label>:1525                                    ; preds = %1508
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = fmul fast float %1527, %1522
  %1529 = fmul fast float %1527, %1523
  %1530 = fmul fast float %1527, %1524
  br label %1531

; <label>:1531                                    ; preds = %1525, %1508
  %1532 = phi float [ %1528, %1525 ], [ %1522, %1508 ]
  %1533 = phi float [ %1529, %1525 ], [ %1523, %1508 ]
  %1534 = phi float [ %1530, %1525 ], [ %1524, %1508 ]
  %1535 = fmul fast float %1532, %1503
  %1536 = select i1 %174, float %1535, float %1532
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1536, float %1533, float %1534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = select i1 %174, float 0.000000e+00, float %1532
  %1539 = select i1 %174, float %1537, float %1533
  %1540 = select i1 %174, float 0.000000e+00, float %1534
  br label %1541

; <label>:1541                                    ; preds = %1531, %1493
  %1542 = phi float [ %1538, %1531 ], [ 0.000000e+00, %1493 ]
  %1543 = phi float [ %1539, %1531 ], [ 0.000000e+00, %1493 ]
  %1544 = phi float [ %1540, %1531 ], [ 0.000000e+00, %1493 ]
  %1545 = add i32 %45, 112
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = lshr i32 %1547, 8
  %1551 = and i32 %1550, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = fmul fast float %1552, %1553
  %1555 = fadd fast float %1554, %1549
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  br i1 %898, label %1558, label %1566

; <label>:1558                                    ; preds = %1541
  %1559 = fsub fast float 1.000000e+00, %1194
  %1560 = fmul fast float %1559, %886
  %1561 = fmul fast float %1559, %887
  %1562 = fmul fast float %1559, %888
  %1563 = fmul fast float %1559, %889
  %1564 = fmul fast float %1559, %890
  %1565 = fmul fast float %1559, %891
  br label %1566

; <label>:1566                                    ; preds = %1558, %1541
  %1567 = phi float [ %1560, %1558 ], [ %886, %1541 ]
  %1568 = phi float [ %1561, %1558 ], [ %887, %1541 ]
  %1569 = phi float [ %1562, %1558 ], [ %888, %1541 ]
  %1570 = phi float [ %1563, %1558 ], [ %889, %1541 ]
  %1571 = phi float [ %1564, %1558 ], [ %890, %1541 ]
  %1572 = phi float [ %1565, %1558 ], [ %891, %1541 ]
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 3
  %1576 = icmp eq i32 %1575, 3
  br i1 %1576, label %1655, label %1577

; <label>:1577                                    ; preds = %1566
  %1578 = and i32 %1574, 16
  %1579 = icmp ne i32 %1578, 0
  %1580 = select i1 %1579, float %1194, float 0.000000e+00
  %1581 = icmp eq i32 %1575, 0
  br i1 %1581, label %1582, label %1610

; <label>:1582                                    ; preds = %1577
  %1583 = and i32 %1574, 64
  %1584 = icmp ne i32 %1583, 0
  %1585 = select i1 %1584, float %1194, float 0.000000e+00
  %1586 = fsub fast float %1414, %1567
  %1587 = fsub fast float %1415, %1568
  %1588 = fsub fast float %1416, %1569
  %1589 = fmul fast float %1580, %1586
  %1590 = fmul fast float %1580, %1587
  %1591 = fmul fast float %1580, %1588
  %1592 = fadd fast float %1589, %1567
  %1593 = fadd fast float %1590, %1568
  %1594 = fadd fast float %1591, %1569
  %1595 = fsub fast float %1400, %892
  %1596 = fmul fast float %1580, %1595
  %1597 = fadd fast float %1596, %892
  %1598 = fsub fast float %1542, %1570
  %1599 = fsub fast float %1543, %1571
  %1600 = fsub fast float %1544, %1572
  %1601 = fmul fast float %1585, %1598
  %1602 = fmul fast float %1585, %1599
  %1603 = fmul fast float %1585, %1600
  %1604 = fadd fast float %1601, %1570
  %1605 = fadd fast float %1602, %1571
  %1606 = fadd fast float %1603, %1572
  %1607 = fsub fast float %1557, %896
  %1608 = fmul fast float %1580, %1607
  %1609 = fadd fast float %1608, %896
  br label %1655

; <label>:1610                                    ; preds = %1577
  %1611 = icmp eq i32 %1575, 1
  br i1 %1611, label %1612, label %1625

; <label>:1612                                    ; preds = %1610
  %1613 = fadd fast float %1414, -1.000000e+00
  %1614 = fadd fast float %1415, -1.000000e+00
  %1615 = fadd fast float %1416, -1.000000e+00
  %1616 = fmul fast float %1580, %1613
  %1617 = fmul fast float %1580, %1614
  %1618 = fmul fast float %1580, %1615
  %1619 = fadd fast float %1616, 1.000000e+00
  %1620 = fadd fast float %1617, 1.000000e+00
  %1621 = fadd fast float %1618, 1.000000e+00
  %1622 = fmul fast float %1619, %1567
  %1623 = fmul fast float %1620, %1568
  %1624 = fmul fast float %1621, %1569
  br label %1655

; <label>:1625                                    ; preds = %1610
  %1626 = icmp eq i32 %1575, 2
  br i1 %1626, label %1627, label %1655

; <label>:1627                                    ; preds = %1625
  %1628 = call float @dx.op.unary.f32(i32 24, float %1414)  ; Sqrt(value)
  %1629 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1630 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1631 = fadd fast float %1628, -5.000000e-01
  %1632 = fadd fast float %1629, -5.000000e-01
  %1633 = fadd fast float %1630, -5.000000e-01
  %1634 = fmul fast float %1631, %1580
  %1635 = fmul fast float %1632, %1580
  %1636 = fmul fast float %1633, %1580
  %1637 = fadd fast float %1634, 5.000000e-01
  %1638 = fadd fast float %1635, 5.000000e-01
  %1639 = fadd fast float %1636, 5.000000e-01
  %1640 = fmul fast float %1637, 2.000000e+00
  %1641 = fsub fast float 1.000000e+00, %1640
  %1642 = fmul fast float %1641, %1567
  %1643 = fadd fast float %1642, %1640
  %1644 = fmul fast float %1643, %1567
  %1645 = fmul fast float %1638, 2.000000e+00
  %1646 = fsub fast float 1.000000e+00, %1645
  %1647 = fmul fast float %1646, %1568
  %1648 = fadd fast float %1647, %1645
  %1649 = fmul fast float %1648, %1568
  %1650 = fmul fast float %1639, 2.000000e+00
  %1651 = fsub fast float 1.000000e+00, %1650
  %1652 = fmul fast float %1651, %1569
  %1653 = fadd fast float %1652, %1650
  %1654 = fmul fast float %1653, %1569
  br label %1655

; <label>:1655                                    ; preds = %1627, %1625, %1612, %1582, %1566
  %1656 = phi float [ %1567, %1566 ], [ %1644, %1627 ], [ %1567, %1625 ], [ %1622, %1612 ], [ %1592, %1582 ]
  %1657 = phi float [ %1568, %1566 ], [ %1649, %1627 ], [ %1568, %1625 ], [ %1623, %1612 ], [ %1593, %1582 ]
  %1658 = phi float [ %1569, %1566 ], [ %1654, %1627 ], [ %1569, %1625 ], [ %1624, %1612 ], [ %1594, %1582 ]
  %1659 = phi float [ %1570, %1566 ], [ %1570, %1627 ], [ %1570, %1625 ], [ %1570, %1612 ], [ %1604, %1582 ]
  %1660 = phi float [ %1571, %1566 ], [ %1571, %1627 ], [ %1571, %1625 ], [ %1571, %1612 ], [ %1605, %1582 ]
  %1661 = phi float [ %1572, %1566 ], [ %1572, %1627 ], [ %1572, %1625 ], [ %1572, %1612 ], [ %1606, %1582 ]
  %1662 = phi float [ %892, %1566 ], [ %892, %1627 ], [ %892, %1625 ], [ %892, %1612 ], [ %1597, %1582 ]
  %1663 = phi float [ %896, %1566 ], [ %896, %1627 ], [ %896, %1625 ], [ %896, %1612 ], [ %1609, %1582 ]
  %1664 = and i32 %1574, 12
  %1665 = icmp eq i32 %1664, 12
  br i1 %1665, label %1738, label %1666

; <label>:1666                                    ; preds = %1655
  %1667 = and i32 %1574, 2097184
  %1668 = icmp eq i32 %1667, 2097184
  %1669 = select i1 %1668, float %1194, float 0.000000e+00
  %1670 = and i32 %1574, 4194336
  %1671 = icmp eq i32 %1670, 4194336
  %1672 = select i1 %1671, float %1194, float 0.000000e+00
  %1673 = and i32 %1574, 8388640
  %1674 = icmp eq i32 %1673, 8388640
  %1675 = select i1 %1674, float %1194, float 0.000000e+00
  %1676 = icmp eq i32 %1664, 0
  br i1 %1676, label %1677, label %1690

; <label>:1677                                    ; preds = %1666
  %1678 = fsub fast float %1495, %884
  %1679 = fsub fast float %1496, %885
  %1680 = fmul fast float %1669, %1678
  %1681 = fmul fast float %1669, %1679
  %1682 = fadd fast float %1680, %884
  %1683 = fadd fast float %1681, %885
  %1684 = fsub fast float %1497, %895
  %1685 = fmul fast float %1672, %1684
  %1686 = fadd fast float %1685, %895
  %1687 = fsub fast float %1494, %894
  %1688 = fmul fast float %1675, %1687
  %1689 = fadd fast float %1688, %894
  br label %1738

; <label>:1690                                    ; preds = %1666
  %1691 = icmp eq i32 %1664, 4
  br i1 %1691, label %1692, label %1724

; <label>:1692                                    ; preds = %1690
  %1693 = fmul fast float %1669, %1495
  %1694 = fmul fast float %1669, %1496
  %1695 = fadd fast float %1693, %884
  %1696 = fadd fast float %1694, %885
  %1697 = call float @dx.op.binary.f32(i32 36, float %895, float %1497)  ; FMin(a,b)
  %1698 = fsub fast float %1697, %895
  %1699 = fmul fast float %1698, %1672
  %1700 = fadd fast float %1699, %895
  %1701 = fadd fast float %1494, %894
  %1702 = fmul fast float %1701, 0x3FF337FAE0000000
  %1703 = fmul fast float %894, %894
  %1704 = fmul fast float %1494, %1494
  %1705 = fadd fast float %1704, %1703
  %1706 = fmul fast float %1705, 0x3FE5152B00000000
  %1707 = fmul fast float %894, 0xBFCC1F85E0000000
  %1708 = fmul fast float %1707, %1494
  %1709 = fadd fast float %1708, 0xBFE1363700000000
  %1710 = fadd fast float %1709, %1702
  %1711 = fsub fast float %1710, %1706
  %1712 = fmul fast float %1701, 0x3FBA6F0D00000000
  %1713 = fmul fast float %1705, 0x3FD0432880000000
  %1714 = fmul fast float %894, 0xBFEF110800000000
  %1715 = fmul fast float %1714, %1494
  %1716 = fadd fast float %1715, 1.000000e+00
  %1717 = fsub fast float %1716, %1712
  %1718 = fadd fast float %1717, %1713
  %1719 = fdiv fast float %1711, %1718
  %1720 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1721 = fsub fast float %1720, %894
  %1722 = fmul fast float %1721, %1675
  %1723 = fadd fast float %1722, %894
  br label %1738

; <label>:1724                                    ; preds = %1690
  %1725 = icmp eq i32 %1664, 8
  br i1 %1725, label %1726, label %1738

; <label>:1726                                    ; preds = %1724
  %1727 = fmul fast float %1669, %1495
  %1728 = fmul fast float %1669, %1496
  %1729 = fadd fast float %1727, %884
  %1730 = fadd fast float %1728, %885
  %1731 = call float @dx.op.binary.f32(i32 36, float %895, float %1497)  ; FMin(a,b)
  %1732 = fsub fast float %1731, %895
  %1733 = fmul fast float %1732, %1672
  %1734 = fadd fast float %1733, %895
  %1735 = fsub fast float %1494, %894
  %1736 = fmul fast float %1675, %1735
  %1737 = fadd fast float %1736, %894
  br label %1738

; <label>:1738                                    ; preds = %1726, %1724, %1692, %1677, %1655, %1193, %897, %883
  %1739 = phi float [ %884, %1655 ], [ %884, %1193 ], [ %884, %883 ], [ %1729, %1726 ], [ %884, %1724 ], [ %1695, %1692 ], [ %1682, %1677 ], [ %884, %897 ]
  %1740 = phi float [ %885, %1655 ], [ %885, %1193 ], [ %885, %883 ], [ %1730, %1726 ], [ %885, %1724 ], [ %1696, %1692 ], [ %1683, %1677 ], [ %885, %897 ]
  %1741 = phi float [ %1656, %1655 ], [ %886, %1193 ], [ %886, %883 ], [ %1656, %1726 ], [ %1656, %1724 ], [ %1656, %1692 ], [ %1656, %1677 ], [ %886, %897 ]
  %1742 = phi float [ %1657, %1655 ], [ %887, %1193 ], [ %887, %883 ], [ %1657, %1726 ], [ %1657, %1724 ], [ %1657, %1692 ], [ %1657, %1677 ], [ %887, %897 ]
  %1743 = phi float [ %1658, %1655 ], [ %888, %1193 ], [ %888, %883 ], [ %1658, %1726 ], [ %1658, %1724 ], [ %1658, %1692 ], [ %1658, %1677 ], [ %888, %897 ]
  %1744 = phi float [ %1659, %1655 ], [ %889, %1193 ], [ %889, %883 ], [ %1659, %1726 ], [ %1659, %1724 ], [ %1659, %1692 ], [ %1659, %1677 ], [ %889, %897 ]
  %1745 = phi float [ %1660, %1655 ], [ %890, %1193 ], [ %890, %883 ], [ %1660, %1726 ], [ %1660, %1724 ], [ %1660, %1692 ], [ %1660, %1677 ], [ %890, %897 ]
  %1746 = phi float [ %1661, %1655 ], [ %891, %1193 ], [ %891, %883 ], [ %1661, %1726 ], [ %1661, %1724 ], [ %1661, %1692 ], [ %1661, %1677 ], [ %891, %897 ]
  %1747 = phi float [ %1662, %1655 ], [ %892, %1193 ], [ %892, %883 ], [ %1662, %1726 ], [ %1662, %1724 ], [ %1662, %1692 ], [ %1662, %1677 ], [ %892, %897 ]
  %1748 = phi float [ %894, %1655 ], [ %894, %1193 ], [ %894, %883 ], [ %1737, %1726 ], [ %894, %1724 ], [ %1723, %1692 ], [ %1689, %1677 ], [ %894, %897 ]
  %1749 = phi float [ %895, %1655 ], [ %895, %1193 ], [ %895, %883 ], [ %1734, %1726 ], [ %895, %1724 ], [ %1700, %1692 ], [ %1686, %1677 ], [ %895, %897 ]
  %1750 = phi float [ %1663, %1655 ], [ %896, %1193 ], [ %896, %883 ], [ %1663, %1726 ], [ %1663, %1724 ], [ %1663, %1692 ], [ %1663, %1677 ], [ %896, %897 ]
  br i1 %363, label %2592, label %1751

; <label>:1751                                    ; preds = %1738
  %1752 = icmp ult i32 %416, 3
  %1753 = add i32 %45, 56
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = add i32 %45, 60
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = or i32 %1758, %1755
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %2592, label %1761

; <label>:1761                                    ; preds = %1751
  %1762 = and i32 %1755, 262144
  %1763 = icmp ne i32 %1762, 0
  %1764 = select i1 %1763, float %48, float 1.000000e+00
  %1765 = select i1 %1763, float %49, float 0.000000e+00
  %1766 = select i1 %1763, float %50, float 0.000000e+00
  %1767 = select i1 %1763, float %51, float 1.000000e+00
  %1768 = select i1 %1763, float %52, float %61
  %1769 = select i1 %1763, float %53, float %62
  %1770 = add i32 %45, 316
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = lshr i32 %1772, 16
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = fmul fast float %1774, 0x3F50624DE0000000
  %1776 = add i32 %45, 120
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = lshr i32 %1778, 16
  %1780 = and i32 %1779, 255
  %1781 = lshr i32 %1778, 24
  %1782 = add i32 %45, 324
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 65535
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = lshr i32 %1784, 16
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = add i32 %45, 64
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = lshr i32 %1791, 22
  %1793 = shl nuw nsw i32 %1792, 5
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = shl i32 %1791, 4
  %1796 = and i32 %1795, 32752
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = lshr i32 %1791, 7
  %1799 = and i32 %1798, 32752
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 3
  %1803 = fmul fast float %1802, 1.000000e+03
  %1804 = fmul fast float %313, %1803
  %1805 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1806 = fadd fast float %1805, %303
  %1807 = fmul fast float %314, %1803
  %1808 = call float @dx.op.unary.f32(i32 22, float %1807)  ; Frc(value)
  %1809 = fadd fast float %1808, %305
  %1810 = fmul fast float %1775, %1803
  %1811 = call float @dx.op.unary.f32(i32 22, float %1810)  ; Frc(value)
  %1812 = fmul fast float %1811, 0x401921FB60000000
  %1813 = fadd fast float %1812, %1794
  %1814 = call float @dx.op.unary.f32(i32 13, float %1813)  ; Sin(value)
  %1815 = call float @dx.op.unary.f32(i32 12, float %1813)  ; Cos(value)
  %1816 = fsub fast float -0.000000e+00, %1814
  %1817 = fadd fast float %1768, -5.000000e-01
  %1818 = fadd fast float %1769, -5.000000e-01
  %1819 = fmul fast float %1786, %1817
  %1820 = fmul fast float %1788, %1818
  %1821 = fadd fast float %1819, 5.000000e-01
  %1822 = fadd fast float %1820, 5.000000e-01
  %1823 = fmul fast float %1797, %1821
  %1824 = fmul fast float %1800, %1822
  %1825 = fmul fast float %1815, %1823
  %1826 = call float @dx.op.tertiary.f32(i32 46, float %1816, float %1824, float %1825)  ; FMad(a,b,c)
  %1827 = fmul fast float %1814, %1823
  %1828 = call float @dx.op.tertiary.f32(i32 46, float %1815, float %1824, float %1827)  ; FMad(a,b,c)
  %1829 = fadd fast float %1806, %1826
  %1830 = fadd fast float %1809, %1828
  %1831 = icmp ugt i32 %1780, 1
  %1832 = icmp ugt i32 %1778, 33554431
  %1833 = or i1 %1832, %1831
  br i1 %1833, label %1834, label %1859

; <label>:1834                                    ; preds = %1761
  %1835 = add i32 %45, 260
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = lshr i32 %1837, 16
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = fmul fast float %1802, %1839
  %1841 = call float @dx.op.unary.f32(i32 22, float %1840)  ; Frc(value)
  %1842 = mul nuw nsw i32 %1780, %1781
  %1843 = uitofp i32 %1842 to float
  %1844 = fmul fast float %1841, %1843
  %1845 = call float @dx.op.unary.f32(i32 27, float %1844)  ; Round_ni(value)
  %1846 = fptoui float %1845 to i32
  %1847 = urem i32 %1846, %1780
  %1848 = udiv i32 %1846, %1781
  %1849 = call float @dx.op.unary.f32(i32 22, float %1829)  ; Frc(value)
  %1850 = call float @dx.op.unary.f32(i32 22, float %1830)  ; Frc(value)
  %1851 = uitofp i32 %1847 to float
  %1852 = uitofp i32 %1848 to float
  %1853 = fadd fast float %1849, %1851
  %1854 = fadd fast float %1850, %1852
  %1855 = uitofp i32 %1780 to float
  %1856 = uitofp i32 %1781 to float
  %1857 = fdiv fast float %1853, %1855
  %1858 = fdiv fast float %1854, %1856
  br label %1859

; <label>:1859                                    ; preds = %1834, %1761
  %1860 = phi float [ %1857, %1834 ], [ %1829, %1761 ]
  %1861 = phi float [ %1858, %1834 ], [ %1830, %1761 ]
  %1862 = and i32 %1755, 16777216
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1973, label %1864

; <label>:1864                                    ; preds = %1859
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1869 = fadd fast float %1866, %132
  %1870 = fadd fast float %1867, %133
  %1871 = fadd fast float %1868, %134
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1875 = icmp eq i32 %46, 65535
  br i1 %1875, label %1970, label %1876

; <label>:1876                                    ; preds = %1864
  %1877 = lshr i32 %46, 1
  %1878 = shl i32 %1877, 2
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %46, 1
  %1882 = icmp ne i32 %1881, 0
  %1883 = lshr i32 %1880, 16
  %1884 = and i32 %1880, 65535
  %1885 = select i1 %1882, i32 %1883, i32 %1884
  %1886 = icmp eq i32 %1885, 65535
  br i1 %1886, label %1966, label %1887

; <label>:1887                                    ; preds = %1876
  %1888 = mul nuw nsw i32 %1885, 40
  %1889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.ResRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.ResRet.f32 %1889, 2
  %1893 = add nuw nsw i32 %1888, 12
  %1894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1894, 2
  %1898 = add nuw nsw i32 %1888, 24
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = add nuw nsw i32 %1888, 36
  %1904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = fsub fast float %1869, %1890
  %1907 = fsub fast float %1870, %1891
  %1908 = fsub fast float %1871, %1892
  %1909 = fmul fast float %1905, %1906
  %1910 = fmul fast float %1905, %1907
  %1911 = fmul fast float %1905, %1908
  %1912 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1913 = call float @dx.op.unary.f32(i32 27, float %1910)  ; Round_ni(value)
  %1914 = call float @dx.op.unary.f32(i32 27, float %1911)  ; Round_ni(value)
  %1915 = fadd fast float %1912, 5.000000e-01
  %1916 = fadd fast float %1913, 5.000000e-01
  %1917 = fadd fast float %1914, 5.000000e-01
  %1918 = fmul fast float %1915, %1895
  %1919 = fmul fast float %1916, %1896
  %1920 = fmul fast float %1917, %1897
  %1921 = shl i32 %46, 2
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = add i32 %1923, 0
  %1925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1926 = call float @dx.op.unary.f32(i32 22, float %1918)  ; Frc(value)
  %1927 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  %1928 = call float @dx.op.unary.f32(i32 22, float %1920)  ; Frc(value)
  %1929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1925, %dx.types.Handle %40, float %1926, float %1927, float %1928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = fmul fast float %1930, 1.023000e+03
  %1934 = fmul fast float %1931, 1.023000e+03
  %1935 = fmul fast float %1932, 1.023000e+03
  %1936 = fadd fast float %1933, 5.000000e-01
  %1937 = fadd fast float %1934, 5.000000e-01
  %1938 = fadd fast float %1935, 5.000000e-01
  %1939 = call float @dx.op.unary.f32(i32 27, float %1936)  ; Round_ni(value)
  %1940 = call float @dx.op.unary.f32(i32 27, float %1937)  ; Round_ni(value)
  %1941 = call float @dx.op.unary.f32(i32 27, float %1938)  ; Round_ni(value)
  %1942 = fsub fast float %1909, %1912
  %1943 = fsub fast float %1910, %1913
  %1944 = fsub fast float %1911, %1914
  %1945 = fmul fast float %1942, 7.500000e-01
  %1946 = fmul fast float %1943, 7.500000e-01
  %1947 = fmul fast float %1944, 7.500000e-01
  %1948 = fadd fast float %1912, 1.250000e-01
  %1949 = fadd fast float %1948, %1945
  %1950 = fadd fast float %1949, %1939
  %1951 = fadd fast float %1913, 1.250000e-01
  %1952 = fadd fast float %1951, %1946
  %1953 = fadd fast float %1952, %1940
  %1954 = fadd fast float %1914, 1.250000e-01
  %1955 = fadd fast float %1954, %1947
  %1956 = fadd fast float %1955, %1941
  %1957 = fmul fast float %1950, %1900
  %1958 = fmul fast float %1953, %1901
  %1959 = fmul fast float %1956, %1902
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1963, %dx.types.Handle %38, float %1957, float %1958, float %1959, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  br label %1966

; <label>:1966                                    ; preds = %1887, %1876
  %1967 = phi float [ %1965, %1887 ], [ -1.000000e+00, %1876 ]
  %1968 = fadd fast float %1967, %1874
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  br label %1970

; <label>:1970                                    ; preds = %1966, %1864
  %1971 = phi float [ %1969, %1966 ], [ %1874, %1864 ]
  %1972 = fmul fast float %1971, %412
  br label %1973

; <label>:1973                                    ; preds = %1970, %1859
  %1974 = phi float [ %1972, %1970 ], [ %412, %1859 ]
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = and i32 %1976, 256
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %2025, label %1979

; <label>:1979                                    ; preds = %1973
  %1980 = add i32 %45, 432
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %70, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = add i32 %45, 132
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = shl i32 %1989, 4
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = lshr i32 %1989, 7
  %1994 = and i32 %1993, 32752
  %1995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1994)  ; LegacyF16ToF32(value)
  %1996 = fsub fast float 1.000000e+00, %1974
  %1997 = call float @dx.op.binary.f32(i32 35, float %1996, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1998 = bitcast float %1974 to i32
  %1999 = sitofp i32 %1998 to float
  %2000 = fadd fast float %1999, 0xC1CFBF8940000000
  %2001 = fmul fast float %1995, %2000
  %2002 = fadd fast float %2001, 0x41CFBF8940000000
  %2003 = fptosi float %2002 to i32
  %2004 = bitcast i32 %2003 to float
  %2005 = bitcast float %1997 to i32
  %2006 = sitofp i32 %2005 to float
  %2007 = fadd fast float %2006, 0xC1CFBF8940000000
  %2008 = fmul fast float %2007, %1995
  %2009 = fadd fast float %2008, 0x41CFBF8940000000
  %2010 = fptosi float %2009 to i32
  %2011 = bitcast i32 %2010 to float
  %2012 = fmul fast float %2004, %1992
  %2013 = fmul fast float %2011, %1992
  %2014 = fsub fast float %1997, %2012
  %2015 = fadd fast float %2013, %1997
  %2016 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2017 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2018 = fsub fast float %1986, %2016
  %2019 = fsub fast float %2017, %2016
  %2020 = bitcast float %2019 to i32
  %2021 = sub nsw i32 2129859010, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2022, %2018
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  br label %2025

; <label>:2025                                    ; preds = %1979, %1973
  %2026 = phi float [ %2024, %1979 ], [ %1974, %1973 ]
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 128
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2047, label %2031

; <label>:2031                                    ; preds = %2025
  %2032 = add i32 %45, 416
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = add i32 %2034, 0
  %2036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2036, %dx.types.Handle %70, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2038 = extractvalue %dx.types.ResRet.f32 %2037, 0
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 524288
  %2042 = icmp ne i32 %2041, 0
  %2043 = fcmp fast ogt float %2038, 0x3FE0101020000000
  %2044 = select i1 %2043, float 1.000000e+00, float 0.000000e+00
  %2045 = select i1 %2042, float %2044, float %2038
  %2046 = fmul fast float %2045, %2026
  br label %2047

; <label>:2047                                    ; preds = %2031, %2025
  %2048 = phi float [ %2046, %2031 ], [ %2026, %2025 ]
  %2049 = fcmp fast ult float %2048, 0x3F70101020000000
  br i1 %2049, label %2592, label %2050

; <label>:2050                                    ; preds = %2047
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 16
  %2054 = icmp eq i32 %2053, 0
  br i1 %2054, label %2253, label %2055

; <label>:2055                                    ; preds = %2050
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %45, 368
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = add i32 %2060, 0
  %2062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2062, %dx.types.Handle %69, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.ResRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.ResRet.f32 %2063, 2
  %2067 = extractvalue %dx.types.ResRet.f32 %2063, 3
  %2068 = and i32 %2057, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = lshr i32 %2057, 8
  %2071 = and i32 %2070, 255
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2067, %2069
  %2074 = fadd fast float %2073, %2072
  %2075 = fmul fast float %2074, 0x3F70101000000000
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 512
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2088, label %2080

; <label>:2080                                    ; preds = %2055
  %2081 = add i32 %45, 448
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = add i32 %2083, 0
  %2085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2085, %dx.types.Handle %70, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  br label %2088

; <label>:2088                                    ; preds = %2080, %2055
  %2089 = phi float [ %2087, %2080 ], [ 1.000000e+00, %2055 ]
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, 33554432
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2200, label %2094

; <label>:2094                                    ; preds = %2088
  %2095 = add i32 %45, 256
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 65535
  %2099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2098)  ; LegacyF16ToF32(value)
  %2100 = lshr i32 %2097, 16
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = add i32 %45, 260
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 65535
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = lshr i32 %2108, 24
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = and i32 %2108, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2108, 8
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = lshr i32 %2108, 16
  %2120 = and i32 %2119, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = add i32 %45, 252
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = lshr i32 %2125, 24
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = and i32 %2125, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = lshr i32 %2125, 8
  %2133 = and i32 %2132, 255
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = lshr i32 %2125, 16
  %2137 = and i32 %2136, 255
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = bitcast float %2064 to i32
  %2141 = ashr i32 %2140, 1
  %2142 = sub nsw i32 1597463174, %2141
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2064, 5.000000e-01
  %2145 = fmul fast float %2143, %2143
  %2146 = fmul fast float %2145, %2144
  %2147 = fsub fast float 1.500000e+00, %2146
  %2148 = fmul fast float %2143, %2064
  %2149 = fmul fast float %2148, %2147
  %2150 = bitcast float %2065 to i32
  %2151 = ashr i32 %2150, 1
  %2152 = sub nsw i32 1597463174, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2065, 5.000000e-01
  %2155 = fmul fast float %2153, %2153
  %2156 = fmul fast float %2155, %2154
  %2157 = fsub fast float 1.500000e+00, %2156
  %2158 = fmul fast float %2153, %2065
  %2159 = fmul fast float %2158, %2157
  %2160 = bitcast float %2066 to i32
  %2161 = ashr i32 %2160, 1
  %2162 = sub nsw i32 1597463174, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2066, 5.000000e-01
  %2165 = fmul fast float %2163, %2163
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float 1.500000e+00, %2166
  %2168 = fmul fast float %2163, %2066
  %2169 = fmul fast float %2168, %2167
  %2170 = fsub fast float %2149, %2131
  %2171 = fsub fast float %2159, %2135
  %2172 = fsub fast float %2169, %2139
  %2173 = fmul fast float %2170, %2099
  %2174 = fmul fast float %2171, %2101
  %2175 = fmul fast float %2172, %2106
  %2176 = fadd fast float %2173, %2114
  %2177 = fadd fast float %2174, %2118
  %2178 = fadd fast float %2175, %2122
  %2179 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2180 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2181 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2182 = fmul fast float %2179, %2179
  %2183 = fmul fast float %2180, %2180
  %2184 = fmul fast float %2181, %2181
  %2185 = fsub fast float %2182, %2064
  %2186 = fsub fast float %2183, %2065
  %2187 = fsub fast float %2184, %2066
  %2188 = fmul fast float %2185, %2089
  %2189 = fmul fast float %2186, %2089
  %2190 = fmul fast float %2187, %2089
  %2191 = fadd fast float %2188, %2064
  %2192 = fadd fast float %2189, %2065
  %2193 = fadd fast float %2190, %2066
  %2194 = fadd fast float %2111, %2075
  %2195 = fsub fast float %2194, %2128
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = fsub fast float %2196, %2075
  %2198 = fmul fast float %2197, %2089
  %2199 = fadd fast float %2198, %2075
  br label %2253

; <label>:2200                                    ; preds = %2088
  %2201 = and i32 %2091, 134217728
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2237, label %2203

; <label>:2203                                    ; preds = %2200
  %2204 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %2205 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2207 = fadd fast float %2204, -5.000000e-01
  %2208 = fadd fast float %2205, -5.000000e-01
  %2209 = fadd fast float %2206, -5.000000e-01
  %2210 = fmul fast float %2207, %2089
  %2211 = fmul fast float %2208, %2089
  %2212 = fmul fast float %2209, %2089
  %2213 = fadd fast float %2210, 5.000000e-01
  %2214 = fadd fast float %2211, 5.000000e-01
  %2215 = fadd fast float %2212, 5.000000e-01
  %2216 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2218 = call float @dx.op.unary.f32(i32 24, float %2066)  ; Sqrt(value)
  %2219 = fmul fast float %2213, 2.000000e+00
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fmul fast float %2220, %2216
  %2222 = fadd fast float %2221, %2219
  %2223 = fmul fast float %2222, %2216
  %2224 = fmul fast float %2214, 2.000000e+00
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = fmul fast float %2225, %2217
  %2227 = fadd fast float %2226, %2224
  %2228 = fmul fast float %2227, %2217
  %2229 = fmul fast float %2215, 2.000000e+00
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2230, %2218
  %2232 = fadd fast float %2231, %2229
  %2233 = fmul fast float %2232, %2218
  %2234 = fmul fast float %2223, %2223
  %2235 = fmul fast float %2228, %2228
  %2236 = fmul fast float %2233, %2233
  br label %2253

; <label>:2237                                    ; preds = %2200
  %2238 = fmul fast float %290, %290
  %2239 = fmul fast float %294, %294
  %2240 = fmul fast float %298, %298
  %2241 = fadd fast float %2238, -1.000000e+00
  %2242 = fadd fast float %2239, -1.000000e+00
  %2243 = fadd fast float %2240, -1.000000e+00
  %2244 = fmul fast float %2089, %2241
  %2245 = fmul fast float %2089, %2242
  %2246 = fmul fast float %2089, %2243
  %2247 = fadd fast float %2244, 1.000000e+00
  %2248 = fadd fast float %2245, 1.000000e+00
  %2249 = fadd fast float %2246, 1.000000e+00
  %2250 = fmul fast float %2247, %2064
  %2251 = fmul fast float %2248, %2065
  %2252 = fmul fast float %2249, %2066
  br label %2253

; <label>:2253                                    ; preds = %2237, %2203, %2094, %2050
  %2254 = phi float [ %2199, %2094 ], [ %2075, %2203 ], [ %2075, %2237 ], [ 0x3FA23C0BE0000000, %2050 ]
  %2255 = phi float [ %2191, %2094 ], [ %2234, %2203 ], [ %2250, %2237 ], [ 1.000000e+00, %2050 ]
  %2256 = phi float [ %2192, %2094 ], [ %2235, %2203 ], [ %2251, %2237 ], [ 1.000000e+00, %2050 ]
  %2257 = phi float [ %2193, %2094 ], [ %2236, %2203 ], [ %2252, %2237 ], [ 1.000000e+00, %2050 ]
  %2258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.i32 %2258, 1
  %2260 = and i32 %2259, 1
  %2261 = icmp ne i32 %2260, 0
  %2262 = add i32 %45, 356
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 32
  %2266 = icmp ne i32 %2265, 0
  %2267 = and i1 %2261, %2266
  %2268 = select i1 %2267, float 1.000000e+00, float %2255
  %2269 = select i1 %2267, float 0x3FD3333340000000, float %2256
  %2270 = select i1 %2267, float 0x3FD3333340000000, float %2257
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = and i32 %2272, 32
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2347, label %2275

; <label>:2275                                    ; preds = %2253
  %2276 = add i32 %45, 124
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = add i32 %45, 384
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %69, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.ResRet.f32 %2284, 3
  %2289 = and i32 %2278, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = lshr i32 %2278, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = lshr i32 %2278, 16
  %2295 = and i32 %2294, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101000000000
  %2298 = fmul fast float %2285, %2290
  %2299 = fadd fast float %2298, %2293
  %2300 = fmul fast float %2299, 0x3F70101000000000
  %2301 = fadd fast float %2286, -5.000000e-01
  %2302 = fadd fast float %2288, -5.000000e-01
  %2303 = fmul fast float %2301, %2297
  %2304 = fmul fast float %2302, %2297
  %2305 = fadd fast float %2303, 5.000000e-01
  %2306 = fadd fast float %2304, 5.000000e-01
  %2307 = fmul fast float %2305, 2.000000e+00
  %2308 = fadd fast float %2307, -1.000000e+00
  %2309 = fmul fast float %2306, 2.000000e+00
  %2310 = fadd fast float %2309, -1.000000e+00
  %2311 = fadd fast float %2308, %2310
  %2312 = fmul fast float %2311, 5.000000e-01
  %2313 = fsub fast float %2308, %2310
  %2314 = fmul fast float %2313, 5.000000e-01
  %2315 = call float @dx.op.unary.f32(i32 6, float %2312)  ; FAbs(value)
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = call float @dx.op.unary.f32(i32 6, float %2314)  ; FAbs(value)
  %2318 = fsub fast float %2316, %2317
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2314, float %2318, float %2312, float %2314, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.unary.f32(i32 25, float %2319)  ; Rsqrt(value)
  %2321 = fmul fast float %2312, %2320
  %2322 = fmul fast float %2314, %2320
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 67108864
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2343, label %2327

; <label>:2327                                    ; preds = %2275
  %2328 = add i32 %45, 312
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2330, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = fsub fast float %2300, %2338
  %2340 = fmul fast float %2339, %2332
  %2341 = fadd fast float %2340, %2336
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  br label %2343

; <label>:2343                                    ; preds = %2327, %2275
  %2344 = phi float [ %2342, %2327 ], [ %2300, %2275 ]
  %2345 = call float @dx.op.dot2.f32(i32 54, float %2321, float %2322, float %1764, float %1765)  ; Dot2(ax,ay,bx,by)
  %2346 = call float @dx.op.dot2.f32(i32 54, float %2321, float %2322, float %1766, float %1767)  ; Dot2(ax,ay,bx,by)
  br label %2347

; <label>:2347                                    ; preds = %2343, %2253
  %2348 = phi float [ %2344, %2343 ], [ 0x3FD6666660000000, %2253 ]
  %2349 = phi float [ %2345, %2343 ], [ 0.000000e+00, %2253 ]
  %2350 = phi float [ %2346, %2343 ], [ 0.000000e+00, %2253 ]
  %2351 = phi float [ %2287, %2343 ], [ 1.000000e+00, %2253 ]
  %2352 = add i32 %45, 192
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = lshr i32 %2354, 22
  %2356 = shl nuw nsw i32 %2355, 5
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 64
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2395, label %2362

; <label>:2362                                    ; preds = %2347
  %2363 = add i32 %45, 400
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = add i32 %2365, 0
  %2367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 131072
  %2371 = icmp eq i32 %2370, 0
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2367, %dx.types.Handle %69, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = fmul fast float %2373, %278
  %2377 = fmul fast float %2374, %281
  %2378 = fmul fast float %2375, %284
  br i1 %2371, label %2385, label %2379

; <label>:2379                                    ; preds = %2362
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2382 = fmul fast float %2381, %2376
  %2383 = fmul fast float %2381, %2377
  %2384 = fmul fast float %2381, %2378
  br label %2385

; <label>:2385                                    ; preds = %2379, %2362
  %2386 = phi float [ %2382, %2379 ], [ %2376, %2362 ]
  %2387 = phi float [ %2383, %2379 ], [ %2377, %2362 ]
  %2388 = phi float [ %2384, %2379 ], [ %2378, %2362 ]
  %2389 = fmul fast float %2386, %2357
  %2390 = select i1 %174, float %2389, float %2386
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2387, float %2388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = select i1 %174, float 0.000000e+00, float %2386
  %2393 = select i1 %174, float %2391, float %2387
  %2394 = select i1 %174, float 0.000000e+00, float %2388
  br label %2395

; <label>:2395                                    ; preds = %2385, %2347
  %2396 = phi float [ %2392, %2385 ], [ 0.000000e+00, %2347 ]
  %2397 = phi float [ %2393, %2385 ], [ 0.000000e+00, %2347 ]
  %2398 = phi float [ %2394, %2385 ], [ 0.000000e+00, %2347 ]
  %2399 = add i32 %45, 128
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = lshr i32 %2401, 8
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2268, float %2269, float %2270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = fmul fast float %2406, %2407
  %2409 = fadd fast float %2408, %2403
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  br i1 %1752, label %2412, label %2420

; <label>:2412                                    ; preds = %2395
  %2413 = fsub fast float 1.000000e+00, %2048
  %2414 = fmul fast float %2413, %1741
  %2415 = fmul fast float %2413, %1742
  %2416 = fmul fast float %2413, %1743
  %2417 = fmul fast float %2413, %1744
  %2418 = fmul fast float %2413, %1745
  %2419 = fmul fast float %2413, %1746
  br label %2420

; <label>:2420                                    ; preds = %2412, %2395
  %2421 = phi float [ %2414, %2412 ], [ %1741, %2395 ]
  %2422 = phi float [ %2415, %2412 ], [ %1742, %2395 ]
  %2423 = phi float [ %2416, %2412 ], [ %1743, %2395 ]
  %2424 = phi float [ %2417, %2412 ], [ %1744, %2395 ]
  %2425 = phi float [ %2418, %2412 ], [ %1745, %2395 ]
  %2426 = phi float [ %2419, %2412 ], [ %1746, %2395 ]
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 3
  %2430 = icmp eq i32 %2429, 3
  br i1 %2430, label %2509, label %2431

; <label>:2431                                    ; preds = %2420
  %2432 = and i32 %2428, 16
  %2433 = icmp ne i32 %2432, 0
  %2434 = select i1 %2433, float %2048, float 0.000000e+00
  %2435 = icmp eq i32 %2429, 0
  br i1 %2435, label %2436, label %2464

; <label>:2436                                    ; preds = %2431
  %2437 = and i32 %2428, 64
  %2438 = icmp ne i32 %2437, 0
  %2439 = select i1 %2438, float %2048, float 0.000000e+00
  %2440 = fsub fast float %2268, %2421
  %2441 = fsub fast float %2269, %2422
  %2442 = fsub fast float %2270, %2423
  %2443 = fmul fast float %2434, %2440
  %2444 = fmul fast float %2434, %2441
  %2445 = fmul fast float %2434, %2442
  %2446 = fadd fast float %2443, %2421
  %2447 = fadd fast float %2444, %2422
  %2448 = fadd fast float %2445, %2423
  %2449 = fsub fast float %2254, %1747
  %2450 = fmul fast float %2434, %2449
  %2451 = fadd fast float %2450, %1747
  %2452 = fsub fast float %2396, %2424
  %2453 = fsub fast float %2397, %2425
  %2454 = fsub fast float %2398, %2426
  %2455 = fmul fast float %2439, %2452
  %2456 = fmul fast float %2439, %2453
  %2457 = fmul fast float %2439, %2454
  %2458 = fadd fast float %2455, %2424
  %2459 = fadd fast float %2456, %2425
  %2460 = fadd fast float %2457, %2426
  %2461 = fsub fast float %2411, %1750
  %2462 = fmul fast float %2434, %2461
  %2463 = fadd fast float %2462, %1750
  br label %2509

; <label>:2464                                    ; preds = %2431
  %2465 = icmp eq i32 %2429, 1
  br i1 %2465, label %2466, label %2479

; <label>:2466                                    ; preds = %2464
  %2467 = fadd fast float %2268, -1.000000e+00
  %2468 = fadd fast float %2269, -1.000000e+00
  %2469 = fadd fast float %2270, -1.000000e+00
  %2470 = fmul fast float %2434, %2467
  %2471 = fmul fast float %2434, %2468
  %2472 = fmul fast float %2434, %2469
  %2473 = fadd fast float %2470, 1.000000e+00
  %2474 = fadd fast float %2471, 1.000000e+00
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fmul fast float %2473, %2421
  %2477 = fmul fast float %2474, %2422
  %2478 = fmul fast float %2475, %2423
  br label %2509

; <label>:2479                                    ; preds = %2464
  %2480 = icmp eq i32 %2429, 2
  br i1 %2480, label %2481, label %2509

; <label>:2481                                    ; preds = %2479
  %2482 = call float @dx.op.unary.f32(i32 24, float %2268)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %2269)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %2270)  ; Sqrt(value)
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fmul fast float %2485, %2434
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2487, %2434
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fmul fast float %2491, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2495, %2421
  %2497 = fadd fast float %2496, %2494
  %2498 = fmul fast float %2497, %2421
  %2499 = fmul fast float %2492, 2.000000e+00
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2500, %2422
  %2502 = fadd fast float %2501, %2499
  %2503 = fmul fast float %2502, %2422
  %2504 = fmul fast float %2493, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2423
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2423
  br label %2509

; <label>:2509                                    ; preds = %2481, %2479, %2466, %2436, %2420
  %2510 = phi float [ %2421, %2420 ], [ %2498, %2481 ], [ %2421, %2479 ], [ %2476, %2466 ], [ %2446, %2436 ]
  %2511 = phi float [ %2422, %2420 ], [ %2503, %2481 ], [ %2422, %2479 ], [ %2477, %2466 ], [ %2447, %2436 ]
  %2512 = phi float [ %2423, %2420 ], [ %2508, %2481 ], [ %2423, %2479 ], [ %2478, %2466 ], [ %2448, %2436 ]
  %2513 = phi float [ %2424, %2420 ], [ %2424, %2481 ], [ %2424, %2479 ], [ %2424, %2466 ], [ %2458, %2436 ]
  %2514 = phi float [ %2425, %2420 ], [ %2425, %2481 ], [ %2425, %2479 ], [ %2425, %2466 ], [ %2459, %2436 ]
  %2515 = phi float [ %2426, %2420 ], [ %2426, %2481 ], [ %2426, %2479 ], [ %2426, %2466 ], [ %2460, %2436 ]
  %2516 = phi float [ %1747, %2420 ], [ %1747, %2481 ], [ %1747, %2479 ], [ %1747, %2466 ], [ %2451, %2436 ]
  %2517 = phi float [ %1750, %2420 ], [ %1750, %2481 ], [ %1750, %2479 ], [ %1750, %2466 ], [ %2463, %2436 ]
  %2518 = and i32 %2428, 12
  %2519 = icmp eq i32 %2518, 12
  br i1 %2519, label %2592, label %2520

; <label>:2520                                    ; preds = %2509
  %2521 = and i32 %2428, 2097184
  %2522 = icmp eq i32 %2521, 2097184
  %2523 = select i1 %2522, float %2048, float 0.000000e+00
  %2524 = and i32 %2428, 4194336
  %2525 = icmp eq i32 %2524, 4194336
  %2526 = select i1 %2525, float %2048, float 0.000000e+00
  %2527 = and i32 %2428, 8388640
  %2528 = icmp eq i32 %2527, 8388640
  %2529 = select i1 %2528, float %2048, float 0.000000e+00
  %2530 = icmp eq i32 %2518, 0
  br i1 %2530, label %2531, label %2544

; <label>:2531                                    ; preds = %2520
  %2532 = fsub fast float %2349, %1739
  %2533 = fsub fast float %2350, %1740
  %2534 = fmul fast float %2523, %2532
  %2535 = fmul fast float %2523, %2533
  %2536 = fadd fast float %2534, %1739
  %2537 = fadd fast float %2535, %1740
  %2538 = fsub fast float %2351, %1749
  %2539 = fmul fast float %2526, %2538
  %2540 = fadd fast float %2539, %1749
  %2541 = fsub fast float %2348, %1748
  %2542 = fmul fast float %2529, %2541
  %2543 = fadd fast float %2542, %1748
  br label %2592

; <label>:2544                                    ; preds = %2520
  %2545 = icmp eq i32 %2518, 4
  br i1 %2545, label %2546, label %2578

; <label>:2546                                    ; preds = %2544
  %2547 = fmul fast float %2523, %2349
  %2548 = fmul fast float %2523, %2350
  %2549 = fadd fast float %2547, %1739
  %2550 = fadd fast float %2548, %1740
  %2551 = call float @dx.op.binary.f32(i32 36, float %1749, float %2351)  ; FMin(a,b)
  %2552 = fsub fast float %2551, %1749
  %2553 = fmul fast float %2552, %2526
  %2554 = fadd fast float %2553, %1749
  %2555 = fadd fast float %2348, %1748
  %2556 = fmul fast float %2555, 0x3FF337FAE0000000
  %2557 = fmul fast float %1748, %1748
  %2558 = fmul fast float %2348, %2348
  %2559 = fadd fast float %2558, %2557
  %2560 = fmul fast float %2559, 0x3FE5152B00000000
  %2561 = fmul fast float %1748, 0xBFCC1F85E0000000
  %2562 = fmul fast float %2561, %2348
  %2563 = fadd fast float %2562, 0xBFE1363700000000
  %2564 = fadd fast float %2563, %2556
  %2565 = fsub fast float %2564, %2560
  %2566 = fmul fast float %2555, 0x3FBA6F0D00000000
  %2567 = fmul fast float %2559, 0x3FD0432880000000
  %2568 = fmul fast float %1748, 0xBFEF110800000000
  %2569 = fmul fast float %2568, %2348
  %2570 = fadd fast float %2569, 1.000000e+00
  %2571 = fsub fast float %2570, %2566
  %2572 = fadd fast float %2571, %2567
  %2573 = fdiv fast float %2565, %2572
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fsub fast float %2574, %1748
  %2576 = fmul fast float %2575, %2529
  %2577 = fadd fast float %2576, %1748
  br label %2592

; <label>:2578                                    ; preds = %2544
  %2579 = icmp eq i32 %2518, 8
  br i1 %2579, label %2580, label %2592

; <label>:2580                                    ; preds = %2578
  %2581 = fmul fast float %2523, %2349
  %2582 = fmul fast float %2523, %2350
  %2583 = fadd fast float %2581, %1739
  %2584 = fadd fast float %2582, %1740
  %2585 = call float @dx.op.binary.f32(i32 36, float %1749, float %2351)  ; FMin(a,b)
  %2586 = fsub fast float %2585, %1749
  %2587 = fmul fast float %2586, %2526
  %2588 = fadd fast float %2587, %1749
  %2589 = fsub fast float %2348, %1748
  %2590 = fmul fast float %2529, %2589
  %2591 = fadd fast float %2590, %1748
  br label %2592

; <label>:2592                                    ; preds = %2580, %2578, %2546, %2531, %2509, %2047, %1751, %1738
  %2593 = phi float [ %1739, %2509 ], [ %1739, %2047 ], [ %1739, %1738 ], [ %2583, %2580 ], [ %1739, %2578 ], [ %2549, %2546 ], [ %2536, %2531 ], [ %1739, %1751 ]
  %2594 = phi float [ %1740, %2509 ], [ %1740, %2047 ], [ %1740, %1738 ], [ %2584, %2580 ], [ %1740, %2578 ], [ %2550, %2546 ], [ %2537, %2531 ], [ %1740, %1751 ]
  %2595 = phi float [ %2510, %2509 ], [ %1741, %2047 ], [ %1741, %1738 ], [ %2510, %2580 ], [ %2510, %2578 ], [ %2510, %2546 ], [ %2510, %2531 ], [ %1741, %1751 ]
  %2596 = phi float [ %2511, %2509 ], [ %1742, %2047 ], [ %1742, %1738 ], [ %2511, %2580 ], [ %2511, %2578 ], [ %2511, %2546 ], [ %2511, %2531 ], [ %1742, %1751 ]
  %2597 = phi float [ %2512, %2509 ], [ %1743, %2047 ], [ %1743, %1738 ], [ %2512, %2580 ], [ %2512, %2578 ], [ %2512, %2546 ], [ %2512, %2531 ], [ %1743, %1751 ]
  %2598 = phi float [ %2513, %2509 ], [ %1744, %2047 ], [ %1744, %1738 ], [ %2513, %2580 ], [ %2513, %2578 ], [ %2513, %2546 ], [ %2513, %2531 ], [ %1744, %1751 ]
  %2599 = phi float [ %2514, %2509 ], [ %1745, %2047 ], [ %1745, %1738 ], [ %2514, %2580 ], [ %2514, %2578 ], [ %2514, %2546 ], [ %2514, %2531 ], [ %1745, %1751 ]
  %2600 = phi float [ %2515, %2509 ], [ %1746, %2047 ], [ %1746, %1738 ], [ %2515, %2580 ], [ %2515, %2578 ], [ %2515, %2546 ], [ %2515, %2531 ], [ %1746, %1751 ]
  %2601 = phi float [ %2516, %2509 ], [ %1747, %2047 ], [ %1747, %1738 ], [ %2516, %2580 ], [ %2516, %2578 ], [ %2516, %2546 ], [ %2516, %2531 ], [ %1747, %1751 ]
  %2602 = phi float [ %1748, %2509 ], [ %1748, %2047 ], [ %1748, %1738 ], [ %2591, %2580 ], [ %1748, %2578 ], [ %2577, %2546 ], [ %2543, %2531 ], [ %1748, %1751 ]
  %2603 = phi float [ %1749, %2509 ], [ %1749, %2047 ], [ %1749, %1738 ], [ %2588, %2580 ], [ %1749, %2578 ], [ %2554, %2546 ], [ %2540, %2531 ], [ %1749, %1751 ]
  %2604 = phi float [ %2517, %2509 ], [ %1750, %2047 ], [ %1750, %1738 ], [ %2517, %2580 ], [ %2517, %2578 ], [ %2517, %2546 ], [ %2517, %2531 ], [ %1750, %1751 ]
  br i1 %365, label %3446, label %2605

; <label>:2605                                    ; preds = %2592
  %2606 = icmp ult i32 %416, 4
  %2607 = add i32 %45, 72
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %45, 76
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = or i32 %2612, %2609
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %3446, label %2615

; <label>:2615                                    ; preds = %2605
  %2616 = and i32 %2609, 262144
  %2617 = icmp ne i32 %2616, 0
  %2618 = select i1 %2617, float %48, float 1.000000e+00
  %2619 = select i1 %2617, float %49, float 0.000000e+00
  %2620 = select i1 %2617, float %50, float 0.000000e+00
  %2621 = select i1 %2617, float %51, float 1.000000e+00
  %2622 = select i1 %2617, float %52, float %61
  %2623 = select i1 %2617, float %53, float %62
  %2624 = add i32 %45, 332
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 16
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = fmul fast float %2628, 0x3F50624DE0000000
  %2630 = add i32 %45, 136
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 16
  %2634 = and i32 %2633, 255
  %2635 = lshr i32 %2632, 24
  %2636 = add i32 %45, 340
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 65535
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = lshr i32 %2638, 16
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = add i32 %45, 80
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 22
  %2647 = shl nuw nsw i32 %2646, 5
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = shl i32 %2645, 4
  %2650 = and i32 %2649, 32752
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2645, 7
  %2653 = and i32 %2652, 32752
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2657 = fmul fast float %2656, 1.000000e+03
  %2658 = fmul fast float %355, %2657
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = fadd fast float %2659, %345
  %2661 = fmul fast float %356, %2657
  %2662 = call float @dx.op.unary.f32(i32 22, float %2661)  ; Frc(value)
  %2663 = fadd fast float %2662, %347
  %2664 = fmul fast float %2629, %2657
  %2665 = call float @dx.op.unary.f32(i32 22, float %2664)  ; Frc(value)
  %2666 = fmul fast float %2665, 0x401921FB60000000
  %2667 = fadd fast float %2666, %2648
  %2668 = call float @dx.op.unary.f32(i32 13, float %2667)  ; Sin(value)
  %2669 = call float @dx.op.unary.f32(i32 12, float %2667)  ; Cos(value)
  %2670 = fsub fast float -0.000000e+00, %2668
  %2671 = fadd fast float %2622, -5.000000e-01
  %2672 = fadd fast float %2623, -5.000000e-01
  %2673 = fmul fast float %2640, %2671
  %2674 = fmul fast float %2642, %2672
  %2675 = fadd fast float %2673, 5.000000e-01
  %2676 = fadd fast float %2674, 5.000000e-01
  %2677 = fmul fast float %2651, %2675
  %2678 = fmul fast float %2654, %2676
  %2679 = fmul fast float %2669, %2677
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %2670, float %2678, float %2679)  ; FMad(a,b,c)
  %2681 = fmul fast float %2668, %2677
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2669, float %2678, float %2681)  ; FMad(a,b,c)
  %2683 = fadd fast float %2660, %2680
  %2684 = fadd fast float %2663, %2682
  %2685 = icmp ugt i32 %2634, 1
  %2686 = icmp ugt i32 %2632, 33554431
  %2687 = or i1 %2686, %2685
  br i1 %2687, label %2688, label %2713

; <label>:2688                                    ; preds = %2615
  %2689 = add i32 %45, 276
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = lshr i32 %2691, 16
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = fmul fast float %2656, %2693
  %2695 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2696 = mul nuw nsw i32 %2634, %2635
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2695, %2697
  %2699 = call float @dx.op.unary.f32(i32 27, float %2698)  ; Round_ni(value)
  %2700 = fptoui float %2699 to i32
  %2701 = urem i32 %2700, %2634
  %2702 = udiv i32 %2700, %2635
  %2703 = call float @dx.op.unary.f32(i32 22, float %2683)  ; Frc(value)
  %2704 = call float @dx.op.unary.f32(i32 22, float %2684)  ; Frc(value)
  %2705 = uitofp i32 %2701 to float
  %2706 = uitofp i32 %2702 to float
  %2707 = fadd fast float %2703, %2705
  %2708 = fadd fast float %2704, %2706
  %2709 = uitofp i32 %2634 to float
  %2710 = uitofp i32 %2635 to float
  %2711 = fdiv fast float %2707, %2709
  %2712 = fdiv fast float %2708, %2710
  br label %2713

; <label>:2713                                    ; preds = %2688, %2615
  %2714 = phi float [ %2711, %2688 ], [ %2683, %2615 ]
  %2715 = phi float [ %2712, %2688 ], [ %2684, %2615 ]
  %2716 = and i32 %2609, 16777216
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2827, label %2718

; <label>:2718                                    ; preds = %2713
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2723 = fadd fast float %2720, %132
  %2724 = fadd fast float %2721, %133
  %2725 = fadd fast float %2722, %134
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = icmp eq i32 %46, 65535
  br i1 %2729, label %2824, label %2730

; <label>:2730                                    ; preds = %2718
  %2731 = lshr i32 %46, 1
  %2732 = shl i32 %2731, 2
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %46, 1
  %2736 = icmp ne i32 %2735, 0
  %2737 = lshr i32 %2734, 16
  %2738 = and i32 %2734, 65535
  %2739 = select i1 %2736, i32 %2737, i32 %2738
  %2740 = icmp eq i32 %2739, 65535
  br i1 %2740, label %2820, label %2741

; <label>:2741                                    ; preds = %2730
  %2742 = mul nuw nsw i32 %2739, 40
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = add nuw nsw i32 %2742, 12
  %2748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.ResRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.ResRet.f32 %2748, 2
  %2752 = add nuw nsw i32 %2742, 24
  %2753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.ResRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2753, 2
  %2757 = add nuw nsw i32 %2742, 36
  %2758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = fsub fast float %2723, %2744
  %2761 = fsub fast float %2724, %2745
  %2762 = fsub fast float %2725, %2746
  %2763 = fmul fast float %2759, %2760
  %2764 = fmul fast float %2759, %2761
  %2765 = fmul fast float %2759, %2762
  %2766 = call float @dx.op.unary.f32(i32 27, float %2763)  ; Round_ni(value)
  %2767 = call float @dx.op.unary.f32(i32 27, float %2764)  ; Round_ni(value)
  %2768 = call float @dx.op.unary.f32(i32 27, float %2765)  ; Round_ni(value)
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fmul fast float %2769, %2749
  %2773 = fmul fast float %2770, %2750
  %2774 = fmul fast float %2771, %2751
  %2775 = shl i32 %46, 2
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = add i32 %2777, 0
  %2779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2780 = call float @dx.op.unary.f32(i32 22, float %2772)  ; Frc(value)
  %2781 = call float @dx.op.unary.f32(i32 22, float %2773)  ; Frc(value)
  %2782 = call float @dx.op.unary.f32(i32 22, float %2774)  ; Frc(value)
  %2783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2779, %dx.types.Handle %40, float %2780, float %2781, float %2782, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2787 = fmul fast float %2784, 1.023000e+03
  %2788 = fmul fast float %2785, 1.023000e+03
  %2789 = fmul fast float %2786, 1.023000e+03
  %2790 = fadd fast float %2787, 5.000000e-01
  %2791 = fadd fast float %2788, 5.000000e-01
  %2792 = fadd fast float %2789, 5.000000e-01
  %2793 = call float @dx.op.unary.f32(i32 27, float %2790)  ; Round_ni(value)
  %2794 = call float @dx.op.unary.f32(i32 27, float %2791)  ; Round_ni(value)
  %2795 = call float @dx.op.unary.f32(i32 27, float %2792)  ; Round_ni(value)
  %2796 = fsub fast float %2763, %2766
  %2797 = fsub fast float %2764, %2767
  %2798 = fsub fast float %2765, %2768
  %2799 = fmul fast float %2796, 7.500000e-01
  %2800 = fmul fast float %2797, 7.500000e-01
  %2801 = fmul fast float %2798, 7.500000e-01
  %2802 = fadd fast float %2766, 1.250000e-01
  %2803 = fadd fast float %2802, %2799
  %2804 = fadd fast float %2803, %2793
  %2805 = fadd fast float %2767, 1.250000e-01
  %2806 = fadd fast float %2805, %2800
  %2807 = fadd fast float %2806, %2794
  %2808 = fadd fast float %2768, 1.250000e-01
  %2809 = fadd fast float %2808, %2801
  %2810 = fadd fast float %2809, %2795
  %2811 = fmul fast float %2804, %2754
  %2812 = fmul fast float %2807, %2755
  %2813 = fmul fast float %2810, %2756
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %2815, 0
  %2817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2817, %dx.types.Handle %38, float %2811, float %2812, float %2813, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  br label %2820

; <label>:2820                                    ; preds = %2741, %2730
  %2821 = phi float [ %2819, %2741 ], [ -1.000000e+00, %2730 ]
  %2822 = fadd fast float %2821, %2728
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  br label %2824

; <label>:2824                                    ; preds = %2820, %2718
  %2825 = phi float [ %2823, %2820 ], [ %2728, %2718 ]
  %2826 = fmul fast float %2825, %411
  br label %2827

; <label>:2827                                    ; preds = %2824, %2713
  %2828 = phi float [ %2826, %2824 ], [ %411, %2713 ]
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 256
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2879, label %2833

; <label>:2833                                    ; preds = %2827
  %2834 = add i32 %45, 436
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %2836, 0
  %2838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2838, %dx.types.Handle %70, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = add i32 %45, 148
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = shl i32 %2843, 4
  %2845 = and i32 %2844, 32752
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = lshr i32 %2843, 7
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = fsub fast float 1.000000e+00, %2828
  %2851 = call float @dx.op.binary.f32(i32 35, float %2850, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2852 = bitcast float %2828 to i32
  %2853 = sitofp i32 %2852 to float
  %2854 = fadd fast float %2853, 0xC1CFBF8940000000
  %2855 = fmul fast float %2849, %2854
  %2856 = fadd fast float %2855, 0x41CFBF8940000000
  %2857 = fptosi float %2856 to i32
  %2858 = bitcast i32 %2857 to float
  %2859 = bitcast float %2851 to i32
  %2860 = sitofp i32 %2859 to float
  %2861 = fadd fast float %2860, 0xC1CFBF8940000000
  %2862 = fmul fast float %2861, %2849
  %2863 = fadd fast float %2862, 0x41CFBF8940000000
  %2864 = fptosi float %2863 to i32
  %2865 = bitcast i32 %2864 to float
  %2866 = fmul fast float %2858, %2846
  %2867 = fmul fast float %2865, %2846
  %2868 = fsub fast float %2851, %2866
  %2869 = fadd fast float %2867, %2851
  %2870 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2871 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2872 = fsub fast float %2840, %2870
  %2873 = fsub fast float %2871, %2870
  %2874 = bitcast float %2873 to i32
  %2875 = sub nsw i32 2129859010, %2874
  %2876 = bitcast i32 %2875 to float
  %2877 = fmul fast float %2876, %2872
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  br label %2879

; <label>:2879                                    ; preds = %2833, %2827
  %2880 = phi float [ %2878, %2833 ], [ %2828, %2827 ]
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 128
  %2884 = icmp eq i32 %2883, 0
  br i1 %2884, label %2901, label %2885

; <label>:2885                                    ; preds = %2879
  %2886 = add i32 %45, 420
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = add i32 %2888, 0
  %2890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2890, %dx.types.Handle %70, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 524288
  %2896 = icmp ne i32 %2895, 0
  %2897 = fcmp fast ogt float %2892, 0x3FE0101020000000
  %2898 = select i1 %2897, float 1.000000e+00, float 0.000000e+00
  %2899 = select i1 %2896, float %2898, float %2892
  %2900 = fmul fast float %2899, %2880
  br label %2901

; <label>:2901                                    ; preds = %2885, %2879
  %2902 = phi float [ %2900, %2885 ], [ %2880, %2879 ]
  %2903 = fcmp fast ult float %2902, 0x3F70101020000000
  br i1 %2903, label %3446, label %2904

; <label>:2904                                    ; preds = %2901
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 16
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %3107, label %2909

; <label>:2909                                    ; preds = %2904
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = add i32 %45, 372
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2916, %dx.types.Handle %69, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.ResRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.ResRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.ResRet.f32 %2917, 3
  %2922 = and i32 %2911, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = lshr i32 %2911, 8
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2921, %2923
  %2928 = fadd fast float %2927, %2926
  %2929 = fmul fast float %2928, 0x3F70101000000000
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 512
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %2942, label %2934

; <label>:2934                                    ; preds = %2909
  %2935 = add i32 %45, 452
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = add i32 %2937, 0
  %2939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2939, %dx.types.Handle %70, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  br label %2942

; <label>:2942                                    ; preds = %2934, %2909
  %2943 = phi float [ %2941, %2934 ], [ 1.000000e+00, %2909 ]
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = and i32 %2945, 33554432
  %2947 = icmp eq i32 %2946, 0
  br i1 %2947, label %3054, label %2948

; <label>:2948                                    ; preds = %2942
  %2949 = add i32 %45, 272
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 65535
  %2953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2952)  ; LegacyF16ToF32(value)
  %2954 = lshr i32 %2951, 16
  %2955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2954)  ; LegacyF16ToF32(value)
  %2956 = add i32 %45, 276
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = lshr i32 %2962, 24
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = and i32 %2962, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2962, 8
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = lshr i32 %2962, 16
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = add i32 %45, 268
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = lshr i32 %2979, 24
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = and i32 %2979, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2979, 8
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = lshr i32 %2979, 16
  %2991 = and i32 %2990, 255
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = bitcast float %2918 to i32
  %2995 = ashr i32 %2994, 1
  %2996 = sub nsw i32 1597463174, %2995
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2918, 5.000000e-01
  %2999 = fmul fast float %2997, %2997
  %3000 = fmul fast float %2999, %2998
  %3001 = fsub fast float 1.500000e+00, %3000
  %3002 = fmul fast float %2997, %2918
  %3003 = fmul fast float %3002, %3001
  %3004 = bitcast float %2919 to i32
  %3005 = ashr i32 %3004, 1
  %3006 = sub nsw i32 1597463174, %3005
  %3007 = bitcast i32 %3006 to float
  %3008 = fmul fast float %2919, 5.000000e-01
  %3009 = fmul fast float %3007, %3007
  %3010 = fmul fast float %3009, %3008
  %3011 = fsub fast float 1.500000e+00, %3010
  %3012 = fmul fast float %3007, %2919
  %3013 = fmul fast float %3012, %3011
  %3014 = bitcast float %2920 to i32
  %3015 = ashr i32 %3014, 1
  %3016 = sub nsw i32 1597463174, %3015
  %3017 = bitcast i32 %3016 to float
  %3018 = fmul fast float %2920, 5.000000e-01
  %3019 = fmul fast float %3017, %3017
  %3020 = fmul fast float %3019, %3018
  %3021 = fsub fast float 1.500000e+00, %3020
  %3022 = fmul fast float %3017, %2920
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float %3003, %2985
  %3025 = fsub fast float %3013, %2989
  %3026 = fsub fast float %3023, %2993
  %3027 = fmul fast float %3024, %2953
  %3028 = fmul fast float %3025, %2955
  %3029 = fmul fast float %3026, %2960
  %3030 = fadd fast float %3027, %2968
  %3031 = fadd fast float %3028, %2972
  %3032 = fadd fast float %3029, %2976
  %3033 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3034 = call float @dx.op.unary.f32(i32 7, float %3031)  ; Saturate(value)
  %3035 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3036 = fmul fast float %3033, %3033
  %3037 = fmul fast float %3034, %3034
  %3038 = fmul fast float %3035, %3035
  %3039 = fsub fast float %3036, %2918
  %3040 = fsub fast float %3037, %2919
  %3041 = fsub fast float %3038, %2920
  %3042 = fmul fast float %3039, %2943
  %3043 = fmul fast float %3040, %2943
  %3044 = fmul fast float %3041, %2943
  %3045 = fadd fast float %3042, %2918
  %3046 = fadd fast float %3043, %2919
  %3047 = fadd fast float %3044, %2920
  %3048 = fadd fast float %2965, %2929
  %3049 = fsub fast float %3048, %2982
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3051 = fsub fast float %3050, %2929
  %3052 = fmul fast float %3051, %2943
  %3053 = fadd fast float %3052, %2929
  br label %3107

; <label>:3054                                    ; preds = %2942
  %3055 = and i32 %2945, 134217728
  %3056 = icmp eq i32 %3055, 0
  br i1 %3056, label %3091, label %3057

; <label>:3057                                    ; preds = %3054
  %3058 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %3059 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %3060 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %3061 = fadd fast float %3058, -5.000000e-01
  %3062 = fadd fast float %3059, -5.000000e-01
  %3063 = fadd fast float %3060, -5.000000e-01
  %3064 = fmul fast float %3061, %2943
  %3065 = fmul fast float %3062, %2943
  %3066 = fmul fast float %3063, %2943
  %3067 = fadd fast float %3064, 5.000000e-01
  %3068 = fadd fast float %3065, 5.000000e-01
  %3069 = fadd fast float %3066, 5.000000e-01
  %3070 = call float @dx.op.unary.f32(i32 24, float %2918)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %2919)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %2920)  ; Sqrt(value)
  %3073 = fmul fast float %3067, 2.000000e+00
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = fmul fast float %3074, %3070
  %3076 = fadd fast float %3075, %3073
  %3077 = fmul fast float %3076, %3070
  %3078 = fmul fast float %3068, 2.000000e+00
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = fmul fast float %3079, %3071
  %3081 = fadd fast float %3080, %3078
  %3082 = fmul fast float %3081, %3071
  %3083 = fmul fast float %3069, 2.000000e+00
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = fmul fast float %3084, %3072
  %3086 = fadd fast float %3085, %3083
  %3087 = fmul fast float %3086, %3072
  %3088 = fmul fast float %3077, %3077
  %3089 = fmul fast float %3082, %3082
  %3090 = fmul fast float %3087, %3087
  br label %3107

; <label>:3091                                    ; preds = %3054
  %3092 = fmul fast float %332, %332
  %3093 = fmul fast float %336, %336
  %3094 = fmul fast float %340, %340
  %3095 = fadd fast float %3092, -1.000000e+00
  %3096 = fadd fast float %3093, -1.000000e+00
  %3097 = fadd fast float %3094, -1.000000e+00
  %3098 = fmul fast float %2943, %3095
  %3099 = fmul fast float %2943, %3096
  %3100 = fmul fast float %2943, %3097
  %3101 = fadd fast float %3098, 1.000000e+00
  %3102 = fadd fast float %3099, 1.000000e+00
  %3103 = fadd fast float %3100, 1.000000e+00
  %3104 = fmul fast float %3101, %2918
  %3105 = fmul fast float %3102, %2919
  %3106 = fmul fast float %3103, %2920
  br label %3107

; <label>:3107                                    ; preds = %3091, %3057, %2948, %2904
  %3108 = phi float [ %3053, %2948 ], [ %2929, %3057 ], [ %2929, %3091 ], [ 0x3FA23C0BE0000000, %2904 ]
  %3109 = phi float [ %3045, %2948 ], [ %3088, %3057 ], [ %3104, %3091 ], [ 1.000000e+00, %2904 ]
  %3110 = phi float [ %3046, %2948 ], [ %3089, %3057 ], [ %3105, %3091 ], [ 1.000000e+00, %2904 ]
  %3111 = phi float [ %3047, %2948 ], [ %3090, %3057 ], [ %3106, %3091 ], [ 1.000000e+00, %2904 ]
  %3112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.i32 %3112, 1
  %3114 = and i32 %3113, 1
  %3115 = icmp ne i32 %3114, 0
  %3116 = add i32 %45, 356
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 32
  %3120 = icmp ne i32 %3119, 0
  %3121 = and i1 %3115, %3120
  %3122 = select i1 %3121, float 1.000000e+00, float %3109
  %3123 = select i1 %3121, float 0x3FD3333340000000, float %3110
  %3124 = select i1 %3121, float 0x3FD3333340000000, float %3111
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 32
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3201, label %3129

; <label>:3129                                    ; preds = %3107
  %3130 = add i32 %45, 140
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %45, 388
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %69, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = extractvalue %dx.types.ResRet.f32 %3138, 3
  %3143 = and i32 %3132, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = lshr i32 %3132, 8
  %3146 = and i32 %3145, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = lshr i32 %3132, 16
  %3149 = and i32 %3148, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = fmul fast float %3150, 0x3F70101000000000
  %3152 = fmul fast float %3139, %3144
  %3153 = fadd fast float %3152, %3147
  %3154 = fmul fast float %3153, 0x3F70101000000000
  %3155 = fadd fast float %3140, -5.000000e-01
  %3156 = fadd fast float %3142, -5.000000e-01
  %3157 = fmul fast float %3155, %3151
  %3158 = fmul fast float %3156, %3151
  %3159 = fadd fast float %3157, 5.000000e-01
  %3160 = fadd fast float %3158, 5.000000e-01
  %3161 = fmul fast float %3159, 2.000000e+00
  %3162 = fadd fast float %3161, -1.000000e+00
  %3163 = fmul fast float %3160, 2.000000e+00
  %3164 = fadd fast float %3163, -1.000000e+00
  %3165 = fadd fast float %3162, %3164
  %3166 = fmul fast float %3165, 5.000000e-01
  %3167 = fsub fast float %3162, %3164
  %3168 = fmul fast float %3167, 5.000000e-01
  %3169 = call float @dx.op.unary.f32(i32 6, float %3166)  ; FAbs(value)
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = call float @dx.op.unary.f32(i32 6, float %3168)  ; FAbs(value)
  %3172 = fsub fast float %3170, %3171
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3166, float %3168, float %3172, float %3166, float %3168, float %3172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = call float @dx.op.unary.f32(i32 25, float %3173)  ; Rsqrt(value)
  %3175 = fmul fast float %3166, %3174
  %3176 = fmul fast float %3168, %3174
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 67108864
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3197, label %3181

; <label>:3181                                    ; preds = %3129
  %3182 = add i32 %45, 328
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 65535
  %3190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3189)  ; LegacyF16ToF32(value)
  %3191 = lshr i32 %3184, 16
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = fsub fast float %3154, %3192
  %3194 = fmul fast float %3193, %3186
  %3195 = fadd fast float %3194, %3190
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  br label %3197

; <label>:3197                                    ; preds = %3181, %3129
  %3198 = phi float [ %3196, %3181 ], [ %3154, %3129 ]
  %3199 = call float @dx.op.dot2.f32(i32 54, float %3175, float %3176, float %2618, float %2619)  ; Dot2(ax,ay,bx,by)
  %3200 = call float @dx.op.dot2.f32(i32 54, float %3175, float %3176, float %2620, float %2621)  ; Dot2(ax,ay,bx,by)
  br label %3201

; <label>:3201                                    ; preds = %3197, %3107
  %3202 = phi float [ %3198, %3197 ], [ 0x3FD6666660000000, %3107 ]
  %3203 = phi float [ %3199, %3197 ], [ 0.000000e+00, %3107 ]
  %3204 = phi float [ %3200, %3197 ], [ 0.000000e+00, %3107 ]
  %3205 = phi float [ %3141, %3197 ], [ 1.000000e+00, %3107 ]
  %3206 = add i32 %45, 208
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = lshr i32 %3208, 22
  %3210 = shl nuw nsw i32 %3209, 5
  %3211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3210)  ; LegacyF16ToF32(value)
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 64
  %3215 = icmp eq i32 %3214, 0
  br i1 %3215, label %3249, label %3216

; <label>:3216                                    ; preds = %3201
  %3217 = add i32 %45, 404
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = add i32 %3219, 0
  %3221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 131072
  %3225 = icmp eq i32 %3224, 0
  %3226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3221, %dx.types.Handle %69, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = fmul fast float %3227, %320
  %3231 = fmul fast float %3228, %323
  %3232 = fmul fast float %3229, %326
  br i1 %3225, label %3239, label %3233

; <label>:3233                                    ; preds = %3216
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = fmul fast float %3235, %3230
  %3237 = fmul fast float %3235, %3231
  %3238 = fmul fast float %3235, %3232
  br label %3239

; <label>:3239                                    ; preds = %3233, %3216
  %3240 = phi float [ %3236, %3233 ], [ %3230, %3216 ]
  %3241 = phi float [ %3237, %3233 ], [ %3231, %3216 ]
  %3242 = phi float [ %3238, %3233 ], [ %3232, %3216 ]
  %3243 = fmul fast float %3240, %3211
  %3244 = select i1 %174, float %3243, float %3240
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3241, float %3242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = select i1 %174, float 0.000000e+00, float %3240
  %3247 = select i1 %174, float %3245, float %3241
  %3248 = select i1 %174, float 0.000000e+00, float %3242
  br label %3249

; <label>:3249                                    ; preds = %3239, %3201
  %3250 = phi float [ %3246, %3239 ], [ 0.000000e+00, %3201 ]
  %3251 = phi float [ %3247, %3239 ], [ 0.000000e+00, %3201 ]
  %3252 = phi float [ %3248, %3239 ], [ 0.000000e+00, %3201 ]
  %3253 = add i32 %45, 144
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = lshr i32 %3255, 8
  %3259 = and i32 %3258, 255
  %3260 = uitofp i32 %3259 to float
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3122, float %3123, float %3124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = fmul fast float %3260, %3261
  %3263 = fadd fast float %3262, %3257
  %3264 = fmul fast float %3263, 0x3F70101020000000
  %3265 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  br i1 %2606, label %3266, label %3274

; <label>:3266                                    ; preds = %3249
  %3267 = fsub fast float 1.000000e+00, %2902
  %3268 = fmul fast float %3267, %2595
  %3269 = fmul fast float %3267, %2596
  %3270 = fmul fast float %3267, %2597
  %3271 = fmul fast float %3267, %2598
  %3272 = fmul fast float %3267, %2599
  %3273 = fmul fast float %3267, %2600
  br label %3274

; <label>:3274                                    ; preds = %3266, %3249
  %3275 = phi float [ %3268, %3266 ], [ %2595, %3249 ]
  %3276 = phi float [ %3269, %3266 ], [ %2596, %3249 ]
  %3277 = phi float [ %3270, %3266 ], [ %2597, %3249 ]
  %3278 = phi float [ %3271, %3266 ], [ %2598, %3249 ]
  %3279 = phi float [ %3272, %3266 ], [ %2599, %3249 ]
  %3280 = phi float [ %3273, %3266 ], [ %2600, %3249 ]
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = and i32 %3282, 3
  %3284 = icmp eq i32 %3283, 3
  br i1 %3284, label %3363, label %3285

; <label>:3285                                    ; preds = %3274
  %3286 = and i32 %3282, 16
  %3287 = icmp ne i32 %3286, 0
  %3288 = select i1 %3287, float %2902, float 0.000000e+00
  %3289 = icmp eq i32 %3283, 0
  br i1 %3289, label %3290, label %3318

; <label>:3290                                    ; preds = %3285
  %3291 = and i32 %3282, 64
  %3292 = icmp ne i32 %3291, 0
  %3293 = select i1 %3292, float %2902, float 0.000000e+00
  %3294 = fsub fast float %3122, %3275
  %3295 = fsub fast float %3123, %3276
  %3296 = fsub fast float %3124, %3277
  %3297 = fmul fast float %3288, %3294
  %3298 = fmul fast float %3288, %3295
  %3299 = fmul fast float %3288, %3296
  %3300 = fadd fast float %3297, %3275
  %3301 = fadd fast float %3298, %3276
  %3302 = fadd fast float %3299, %3277
  %3303 = fsub fast float %3108, %2601
  %3304 = fmul fast float %3288, %3303
  %3305 = fadd fast float %3304, %2601
  %3306 = fsub fast float %3250, %3278
  %3307 = fsub fast float %3251, %3279
  %3308 = fsub fast float %3252, %3280
  %3309 = fmul fast float %3293, %3306
  %3310 = fmul fast float %3293, %3307
  %3311 = fmul fast float %3293, %3308
  %3312 = fadd fast float %3309, %3278
  %3313 = fadd fast float %3310, %3279
  %3314 = fadd fast float %3311, %3280
  %3315 = fsub fast float %3265, %2604
  %3316 = fmul fast float %3288, %3315
  %3317 = fadd fast float %3316, %2604
  br label %3363

; <label>:3318                                    ; preds = %3285
  %3319 = icmp eq i32 %3283, 1
  br i1 %3319, label %3320, label %3333

; <label>:3320                                    ; preds = %3318
  %3321 = fadd fast float %3122, -1.000000e+00
  %3322 = fadd fast float %3123, -1.000000e+00
  %3323 = fadd fast float %3124, -1.000000e+00
  %3324 = fmul fast float %3288, %3321
  %3325 = fmul fast float %3288, %3322
  %3326 = fmul fast float %3288, %3323
  %3327 = fadd fast float %3324, 1.000000e+00
  %3328 = fadd fast float %3325, 1.000000e+00
  %3329 = fadd fast float %3326, 1.000000e+00
  %3330 = fmul fast float %3327, %3275
  %3331 = fmul fast float %3328, %3276
  %3332 = fmul fast float %3329, %3277
  br label %3363

; <label>:3333                                    ; preds = %3318
  %3334 = icmp eq i32 %3283, 2
  br i1 %3334, label %3335, label %3363

; <label>:3335                                    ; preds = %3333
  %3336 = call float @dx.op.unary.f32(i32 24, float %3122)  ; Sqrt(value)
  %3337 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3338 = call float @dx.op.unary.f32(i32 24, float %3124)  ; Sqrt(value)
  %3339 = fadd fast float %3336, -5.000000e-01
  %3340 = fadd fast float %3337, -5.000000e-01
  %3341 = fadd fast float %3338, -5.000000e-01
  %3342 = fmul fast float %3339, %3288
  %3343 = fmul fast float %3340, %3288
  %3344 = fmul fast float %3341, %3288
  %3345 = fadd fast float %3342, 5.000000e-01
  %3346 = fadd fast float %3343, 5.000000e-01
  %3347 = fadd fast float %3344, 5.000000e-01
  %3348 = fmul fast float %3345, 2.000000e+00
  %3349 = fsub fast float 1.000000e+00, %3348
  %3350 = fmul fast float %3349, %3275
  %3351 = fadd fast float %3350, %3348
  %3352 = fmul fast float %3351, %3275
  %3353 = fmul fast float %3346, 2.000000e+00
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = fmul fast float %3354, %3276
  %3356 = fadd fast float %3355, %3353
  %3357 = fmul fast float %3356, %3276
  %3358 = fmul fast float %3347, 2.000000e+00
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3277
  %3361 = fadd fast float %3360, %3358
  %3362 = fmul fast float %3361, %3277
  br label %3363

; <label>:3363                                    ; preds = %3335, %3333, %3320, %3290, %3274
  %3364 = phi float [ %3275, %3274 ], [ %3352, %3335 ], [ %3275, %3333 ], [ %3330, %3320 ], [ %3300, %3290 ]
  %3365 = phi float [ %3276, %3274 ], [ %3357, %3335 ], [ %3276, %3333 ], [ %3331, %3320 ], [ %3301, %3290 ]
  %3366 = phi float [ %3277, %3274 ], [ %3362, %3335 ], [ %3277, %3333 ], [ %3332, %3320 ], [ %3302, %3290 ]
  %3367 = phi float [ %3278, %3274 ], [ %3278, %3335 ], [ %3278, %3333 ], [ %3278, %3320 ], [ %3312, %3290 ]
  %3368 = phi float [ %3279, %3274 ], [ %3279, %3335 ], [ %3279, %3333 ], [ %3279, %3320 ], [ %3313, %3290 ]
  %3369 = phi float [ %3280, %3274 ], [ %3280, %3335 ], [ %3280, %3333 ], [ %3280, %3320 ], [ %3314, %3290 ]
  %3370 = phi float [ %2601, %3274 ], [ %2601, %3335 ], [ %2601, %3333 ], [ %2601, %3320 ], [ %3305, %3290 ]
  %3371 = phi float [ %2604, %3274 ], [ %2604, %3335 ], [ %2604, %3333 ], [ %2604, %3320 ], [ %3317, %3290 ]
  %3372 = and i32 %3282, 12
  %3373 = icmp eq i32 %3372, 12
  br i1 %3373, label %3446, label %3374

; <label>:3374                                    ; preds = %3363
  %3375 = and i32 %3282, 2097184
  %3376 = icmp eq i32 %3375, 2097184
  %3377 = select i1 %3376, float %2902, float 0.000000e+00
  %3378 = and i32 %3282, 4194336
  %3379 = icmp eq i32 %3378, 4194336
  %3380 = select i1 %3379, float %2902, float 0.000000e+00
  %3381 = and i32 %3282, 8388640
  %3382 = icmp eq i32 %3381, 8388640
  %3383 = select i1 %3382, float %2902, float 0.000000e+00
  %3384 = icmp eq i32 %3372, 0
  br i1 %3384, label %3385, label %3398

; <label>:3385                                    ; preds = %3374
  %3386 = fsub fast float %3203, %2593
  %3387 = fsub fast float %3204, %2594
  %3388 = fmul fast float %3377, %3386
  %3389 = fmul fast float %3377, %3387
  %3390 = fadd fast float %3388, %2593
  %3391 = fadd fast float %3389, %2594
  %3392 = fsub fast float %3205, %2603
  %3393 = fmul fast float %3380, %3392
  %3394 = fadd fast float %3393, %2603
  %3395 = fsub fast float %3202, %2602
  %3396 = fmul fast float %3383, %3395
  %3397 = fadd fast float %3396, %2602
  br label %3446

; <label>:3398                                    ; preds = %3374
  %3399 = icmp eq i32 %3372, 4
  br i1 %3399, label %3400, label %3432

; <label>:3400                                    ; preds = %3398
  %3401 = fmul fast float %3377, %3203
  %3402 = fmul fast float %3377, %3204
  %3403 = fadd fast float %3401, %2593
  %3404 = fadd fast float %3402, %2594
  %3405 = call float @dx.op.binary.f32(i32 36, float %2603, float %3205)  ; FMin(a,b)
  %3406 = fsub fast float %3405, %2603
  %3407 = fmul fast float %3406, %3380
  %3408 = fadd fast float %3407, %2603
  %3409 = fadd fast float %3202, %2602
  %3410 = fmul fast float %3409, 0x3FF337FAE0000000
  %3411 = fmul fast float %2602, %2602
  %3412 = fmul fast float %3202, %3202
  %3413 = fadd fast float %3412, %3411
  %3414 = fmul fast float %3413, 0x3FE5152B00000000
  %3415 = fmul fast float %2602, 0xBFCC1F85E0000000
  %3416 = fmul fast float %3415, %3202
  %3417 = fadd fast float %3416, 0xBFE1363700000000
  %3418 = fadd fast float %3417, %3410
  %3419 = fsub fast float %3418, %3414
  %3420 = fmul fast float %3409, 0x3FBA6F0D00000000
  %3421 = fmul fast float %3413, 0x3FD0432880000000
  %3422 = fmul fast float %2602, 0xBFEF110800000000
  %3423 = fmul fast float %3422, %3202
  %3424 = fadd fast float %3423, 1.000000e+00
  %3425 = fsub fast float %3424, %3420
  %3426 = fadd fast float %3425, %3421
  %3427 = fdiv fast float %3419, %3426
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3429 = fsub fast float %3428, %2602
  %3430 = fmul fast float %3429, %3383
  %3431 = fadd fast float %3430, %2602
  br label %3446

; <label>:3432                                    ; preds = %3398
  %3433 = icmp eq i32 %3372, 8
  br i1 %3433, label %3434, label %3446

; <label>:3434                                    ; preds = %3432
  %3435 = fmul fast float %3377, %3203
  %3436 = fmul fast float %3377, %3204
  %3437 = fadd fast float %3435, %2593
  %3438 = fadd fast float %3436, %2594
  %3439 = call float @dx.op.binary.f32(i32 36, float %2603, float %3205)  ; FMin(a,b)
  %3440 = fsub fast float %3439, %2603
  %3441 = fmul fast float %3440, %3380
  %3442 = fadd fast float %3441, %2603
  %3443 = fsub fast float %3202, %2602
  %3444 = fmul fast float %3383, %3443
  %3445 = fadd fast float %3444, %2602
  br label %3446

; <label>:3446                                    ; preds = %3434, %3432, %3400, %3385, %3363, %2901, %2605, %2592
  %3447 = phi float [ %2593, %3363 ], [ %2593, %2901 ], [ %2593, %2592 ], [ %2593, %2605 ], [ %3390, %3385 ], [ %3403, %3400 ], [ %2593, %3432 ], [ %3437, %3434 ]
  %3448 = phi float [ %2594, %3363 ], [ %2594, %2901 ], [ %2594, %2592 ], [ %2594, %2605 ], [ %3391, %3385 ], [ %3404, %3400 ], [ %2594, %3432 ], [ %3438, %3434 ]
  %3449 = phi float [ %3364, %3363 ], [ %2595, %2901 ], [ %2595, %2592 ], [ %2595, %2605 ], [ %3364, %3385 ], [ %3364, %3400 ], [ %3364, %3432 ], [ %3364, %3434 ]
  %3450 = phi float [ %3365, %3363 ], [ %2596, %2901 ], [ %2596, %2592 ], [ %2596, %2605 ], [ %3365, %3385 ], [ %3365, %3400 ], [ %3365, %3432 ], [ %3365, %3434 ]
  %3451 = phi float [ %3366, %3363 ], [ %2597, %2901 ], [ %2597, %2592 ], [ %2597, %2605 ], [ %3366, %3385 ], [ %3366, %3400 ], [ %3366, %3432 ], [ %3366, %3434 ]
  %3452 = phi float [ %3367, %3363 ], [ %2598, %2901 ], [ %2598, %2592 ], [ %2598, %2605 ], [ %3367, %3385 ], [ %3367, %3400 ], [ %3367, %3432 ], [ %3367, %3434 ]
  %3453 = phi float [ %3368, %3363 ], [ %2599, %2901 ], [ %2599, %2592 ], [ %2599, %2605 ], [ %3368, %3385 ], [ %3368, %3400 ], [ %3368, %3432 ], [ %3368, %3434 ]
  %3454 = phi float [ %3369, %3363 ], [ %2600, %2901 ], [ %2600, %2592 ], [ %2600, %2605 ], [ %3369, %3385 ], [ %3369, %3400 ], [ %3369, %3432 ], [ %3369, %3434 ]
  %3455 = phi float [ %3370, %3363 ], [ %2601, %2901 ], [ %2601, %2592 ], [ %2601, %2605 ], [ %3370, %3385 ], [ %3370, %3400 ], [ %3370, %3432 ], [ %3370, %3434 ]
  %3456 = phi float [ %2602, %3363 ], [ %2602, %2901 ], [ %2602, %2592 ], [ %2602, %2605 ], [ %3397, %3385 ], [ %3431, %3400 ], [ %2602, %3432 ], [ %3445, %3434 ]
  %3457 = phi float [ %2603, %3363 ], [ %2603, %2901 ], [ %2603, %2592 ], [ %2603, %2605 ], [ %3394, %3385 ], [ %3408, %3400 ], [ %2603, %3432 ], [ %3442, %3434 ]
  %3458 = phi float [ %3371, %3363 ], [ %2604, %2901 ], [ %2604, %2592 ], [ %2604, %2605 ], [ %3371, %3385 ], [ %3371, %3400 ], [ %3371, %3432 ], [ %3371, %3434 ]
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = call float @dx.op.dot2.f32(i32 54, float %3447, float %3448, float %3447, float %3448)  ; Dot2(ax,ay,bx,by)
  %3462 = fmul fast float %3461, 0x3FE3333340000000
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3448, float %3463, float %3447, float %3448, float %3463)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = call float @dx.op.unary.f32(i32 25, float %3464)  ; Rsqrt(value)
  %3466 = fmul fast float %3465, %3447
  %3467 = fmul fast float %3465, %3448
  %3468 = fmul fast float %3463, %3465
  %3469 = fmul fast float %3468, %82
  %3470 = fmul fast float %3468, %84
  %3471 = fmul fast float %3468, %86
  %3472 = fmul fast float %3466, %54
  %3473 = fmul fast float %3466, %55
  %3474 = fmul fast float %3466, %56
  %3475 = fadd fast float %3469, %3472
  %3476 = fadd fast float %3470, %3473
  %3477 = fadd fast float %3471, %3474
  %3478 = fmul fast float %96, %3467
  %3479 = fmul fast float %97, %3467
  %3480 = fmul fast float %98, %3467
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %3481, float %3482, float %3483)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = call float @dx.op.unary.f32(i32 25, float %3484)  ; Rsqrt(value)
  %3486 = fmul fast float %3481, %3485
  %3487 = fmul fast float %3482, %3485
  %3488 = fmul fast float %3483, %3485
  %3489 = and i32 %47, 1
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3491, label %3999

; <label>:3491                                    ; preds = %3446
  %3492 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3493 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3494 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3495 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3496 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3497 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3498 = fadd fast float %3492, %132
  %3499 = fadd fast float %3493, %133
  %3500 = fadd fast float %3494, %134
  %3501 = fadd fast float %3495, %132
  %3502 = fadd fast float %3496, %133
  %3503 = fadd fast float %3497, %134
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.CBufRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3511 = fmul fast float %3505, %73
  %3512 = fmul fast float %3511, %3509
  %3513 = fmul fast float %3506, %74
  %3514 = fmul fast float %3513, %3510
  %3515 = fptoui float %3512 to i32
  %3516 = fptoui float %3514 to i32
  %3517 = fadd fast float %3505, -1.000000e+00
  %3518 = fadd fast float %3506, -1.000000e+00
  %3519 = fptoui float %3517 to i32
  %3520 = fptoui float %3518 to i32
  %3521 = call i32 @dx.op.binary.i32(i32 40, i32 %3515, i32 %3519)  ; UMin(a,b)
  %3522 = call i32 @dx.op.binary.i32(i32 40, i32 %3516, i32 %3520)  ; UMin(a,b)
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3526 = fmul fast float %3524, %68
  %3527 = fsub fast float %3526, %3525
  %3528 = fadd fast float %3507, -1.000000e+00
  %3529 = call float @dx.op.binary.f32(i32 36, float %3527, float %3528)  ; FMin(a,b)
  %3530 = fptoui float %3529 to i32
  %3531 = fptoui float %3505 to i32
  %3532 = fptoui float %3506 to i32
  %3533 = mul i32 %3530, %3532
  %3534 = add i32 %3533, %3522
  %3535 = mul i32 %3534, %3531
  %3536 = add i32 %3535, %3521
  %3537 = shl i32 %3536, 2
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 1023
  %3541 = lshr i32 %3539, 10
  %3542 = icmp eq i32 %3540, 0
  br i1 %3542, label %3968, label %3543

; <label>:3543                                    ; preds = %3491
  %3544 = and i32 %3539, 1023
  br label %3545

; <label>:3545                                    ; preds = %3671, %3543
  %3546 = phi i32 [ %3621, %3671 ], [ 0, %3543 ]
  %3547 = phi float [ %3672, %3671 ], [ 0.000000e+00, %3543 ]
  %3548 = phi float [ %3673, %3671 ], [ %3460, %3543 ]
  %3549 = phi float [ %3674, %3671 ], [ %3458, %3543 ]
  %3550 = phi float [ %3675, %3671 ], [ 0.000000e+00, %3543 ]
  %3551 = phi float [ %3676, %3671 ], [ 0.000000e+00, %3543 ]
  %3552 = phi float [ %3677, %3671 ], [ %3452, %3543 ]
  %3553 = phi float [ %3678, %3671 ], [ %3453, %3543 ]
  %3554 = phi float [ %3679, %3671 ], [ %3454, %3543 ]
  %3555 = phi float [ %3680, %3671 ], [ %3486, %3543 ]
  %3556 = phi float [ %3681, %3671 ], [ %3487, %3543 ]
  %3557 = phi float [ %3682, %3671 ], [ %3488, %3543 ]
  %3558 = phi float [ %3683, %3671 ], [ %3457, %3543 ]
  %3559 = phi float [ %3684, %3671 ], [ %3456, %3543 ]
  %3560 = phi float [ %3685, %3671 ], [ 0.000000e+00, %3543 ]
  %3561 = phi float [ %3686, %3671 ], [ %3455, %3543 ]
  %3562 = phi float [ %3687, %3671 ], [ %3449, %3543 ]
  %3563 = phi float [ %3688, %3671 ], [ %3450, %3543 ]
  %3564 = phi float [ %3689, %3671 ], [ %3451, %3543 ]
  %3565 = add nuw nsw i32 %3546, %3541
  %3566 = shl i32 %3565, 2
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = shl i32 %3568, 8
  %3570 = or i32 %3569, 48
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = extractvalue %dx.types.ResRet.f32 %3571, 3
  %3576 = or i32 %3569, 64
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.i32 %3577, 1
  %3580 = or i32 %3569, 80
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3584 = or i32 %3569, 96
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3569, 112
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3593 = or i32 %3569, 128
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = or i32 %3569, 144
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3569, 160
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3569, 192
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = or i32 %3569, 208
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = or i32 %3569, 248
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = add nuw nsw i32 %3546, 1
  %3622 = bitcast float %3575 to i32
  %3623 = and i32 %3622, 512
  %3624 = icmp eq i32 %3623, 0
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = or i32 %3569, 16
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = or i32 %3569, 32
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3646 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3647 = call float @dx.op.unary.f32(i32 27, float %3637)  ; Round_ni(value)
  %3648 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3649 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3650 = call float @dx.op.unary.f32(i32 27, float %3649)  ; Round_ni(value)
  %3651 = fadd fast float %3648, %3646
  %3652 = fadd fast float %3651, %3650
  %3653 = fcmp fast oeq float %3652, 0.000000e+00
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3501, float %3502, float %3503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3501, float %3502, float %3503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = fsub fast float %3654, %3630
  %3659 = fsub fast float %3656, %3630
  %3660 = fsub fast float %3655, %3637
  %3661 = fsub fast float %3657, %3637
  %3662 = call float @dx.op.dot3.f32(i32 55, float %3572, float %3573, float %3574, float %82, float %84, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3665 = fadd fast float %3664, %3662
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3668 = fcmp fast ogt float %3666, %3667
  %3669 = and i1 %3653, %3668
  %3670 = and i1 %3624, %3669
  br i1 %3670, label %3691, label %3671

; <label>:3671                                    ; preds = %3954, %3772, %3691, %3545
  %3672 = phi float [ %3547, %3691 ], [ %3775, %3772 ], [ %3775, %3954 ], [ %3547, %3545 ]
  %3673 = phi float [ %3548, %3691 ], [ %3548, %3772 ], [ %3929, %3954 ], [ %3548, %3545 ]
  %3674 = phi float [ %3549, %3691 ], [ %3549, %3772 ], [ %3927, %3954 ], [ %3549, %3545 ]
  %3675 = phi float [ %3550, %3691 ], [ %3550, %3772 ], [ %3899, %3954 ], [ %3550, %3545 ]
  %3676 = phi float [ %3551, %3691 ], [ %3551, %3772 ], [ %3897, %3954 ], [ %3551, %3545 ]
  %3677 = phi float [ %3552, %3691 ], [ %3552, %3772 ], [ %3964, %3954 ], [ %3552, %3545 ]
  %3678 = phi float [ %3553, %3691 ], [ %3553, %3772 ], [ %3965, %3954 ], [ %3553, %3545 ]
  %3679 = phi float [ %3554, %3691 ], [ %3554, %3772 ], [ %3966, %3954 ], [ %3554, %3545 ]
  %3680 = phi float [ %3555, %3691 ], [ %3555, %3772 ], [ %3878, %3954 ], [ %3555, %3545 ]
  %3681 = phi float [ %3556, %3691 ], [ %3556, %3772 ], [ %3879, %3954 ], [ %3556, %3545 ]
  %3682 = phi float [ %3557, %3691 ], [ %3557, %3772 ], [ %3880, %3954 ], [ %3557, %3545 ]
  %3683 = phi float [ %3558, %3691 ], [ %3558, %3772 ], [ %3907, %3954 ], [ %3558, %3545 ]
  %3684 = phi float [ %3559, %3691 ], [ %3559, %3772 ], [ %3904, %3954 ], [ %3559, %3545 ]
  %3685 = phi float [ %3560, %3691 ], [ %3560, %3772 ], [ %3901, %3954 ], [ %3560, %3545 ]
  %3686 = phi float [ %3561, %3691 ], [ %3561, %3772 ], [ %3895, %3954 ], [ %3561, %3545 ]
  %3687 = phi float [ %3562, %3691 ], [ %3562, %3772 ], [ %3890, %3954 ], [ %3562, %3545 ]
  %3688 = phi float [ %3563, %3691 ], [ %3563, %3772 ], [ %3891, %3954 ], [ %3563, %3545 ]
  %3689 = phi float [ %3564, %3691 ], [ %3564, %3772 ], [ %3892, %3954 ], [ %3564, %3545 ]
  %3690 = icmp eq i32 %3621, %3544
  br i1 %3690, label %3967, label %3545

; <label>:3691                                    ; preds = %3545
  %3692 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3693 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3697 = extractvalue %dx.types.ResRet.i32 %3577, 3
  %3698 = extractvalue %dx.types.ResRet.i32 %3577, 2
  %3699 = add i32 %3697, 0
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3700, %dx.types.Handle %3701, float %3630, float %3637, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3659, float %3661, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = fmul fast float %3703, %3696
  %3705 = fadd fast float %3704, %3695
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fmul fast float %3630, %3586
  %3708 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3637, float %3707)  ; FMad(a,b,c)
  %3709 = fadd fast float %3708, %3694
  %3710 = fmul fast float %3630, %3588
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3637, float %3710)  ; FMad(a,b,c)
  %3712 = fadd fast float %3711, %3693
  %3713 = fmul fast float %3658, %3586
  %3714 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3660, float %3713)  ; FMad(a,b,c)
  %3715 = fmul fast float %3658, %3588
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3660, float %3715)  ; FMad(a,b,c)
  %3717 = fmul fast float %3659, %3586
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3661, float %3717)  ; FMad(a,b,c)
  %3719 = fmul fast float %3659, %3588
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3661, float %3719)  ; FMad(a,b,c)
  %3721 = add i32 %3698, 0
  %3722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3722, %dx.types.Handle %3701, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = and i32 %3622, 1024
  %3726 = icmp ne i32 %3725, 0
  %3727 = fcmp fast ogt float %3724, 0x3FE0101020000000
  %3728 = uitofp i1 %3727 to float
  %3729 = select i1 %3726, float %3728, float %3724
  %3730 = and i32 %3622, 8192
  %3731 = icmp ne i32 %3730, 0
  %3732 = select i1 %3731, float %3692, float 1.000000e+00
  %3733 = fmul fast float %3630, 2.000000e+00
  %3734 = fadd fast float %3733, -1.000000e+00
  %3735 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3736 = fmul fast float %3735, %3619
  %3737 = fsub fast float %3736, %3619
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3637, 2.000000e+00
  %3740 = fadd fast float %3739, -1.000000e+00
  %3741 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3742 = fmul fast float %3741, %3620
  %3743 = fsub fast float %3742, %3620
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3649, %3582
  %3746 = fsub fast float %3745, %3582
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3706, %3732
  %3749 = fmul fast float %3748, %3703
  %3750 = fmul fast float %3749, %3738
  %3751 = fmul fast float %3750, %3729
  %3752 = fmul fast float %3751, %3744
  %3753 = fmul fast float %3752, %3747
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3757 = fsub fast float %3666, %3756
  %3758 = fmul fast float %3757, %3755
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3753, %3583
  %3761 = fadd fast float %3753, %3583
  %3762 = fmul fast float %3761, %3592
  %3763 = fsub fast float %3762, %3592
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = and i32 %3622, 128
  %3766 = icmp ne i32 %3765, 0
  %3767 = select i1 %3766, float %3764, float %3760
  %3768 = fmul fast float %3767, %3759
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = fcmp fast ugt float %3768, %3770
  br i1 %3771, label %3772, label %3671

; <label>:3772                                    ; preds = %3691
  %3773 = select i1 %3731, float %3768, float 0.000000e+00
  %3774 = fadd fast float %3773, %3547
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  br i1 %3731, label %3671, label %3776

; <label>:3776                                    ; preds = %3772
  %3777 = and i32 %3622, 4
  %3778 = and i32 %3622, 8
  %3779 = add i32 %3578, 0
  %3780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3779, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3780, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3783 = extractvalue %dx.types.ResRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.ResRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.ResRet.f32 %3782, 2
  %3786 = extractvalue %dx.types.ResRet.f32 %3782, 3
  %3787 = bitcast float %3604 to i32
  %3788 = and i32 %3787, 255
  %3789 = uitofp i32 %3788 to float
  %3790 = lshr i32 %3787, 8
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = fmul fast float %3786, %3789
  %3794 = fadd fast float %3793, %3792
  %3795 = fmul fast float %3794, 0x3F70101000000000
  %3796 = add i32 %3579, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3797, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3803 = bitcast float %3598 to i32
  %3804 = and i32 %3803, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = lshr i32 %3803, 8
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = lshr i32 %3803, 16
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = fmul fast float %3811, 0x3F70101000000000
  %3813 = fmul fast float %3799, %3805
  %3814 = fadd fast float %3813, %3808
  %3815 = fmul fast float %3814, 0x3F70101000000000
  %3816 = fadd fast float %3800, -5.000000e-01
  %3817 = fadd fast float %3802, -5.000000e-01
  %3818 = fmul fast float %3816, %3812
  %3819 = fmul fast float %3817, %3812
  %3820 = fadd fast float %3818, 5.000000e-01
  %3821 = fadd fast float %3819, 5.000000e-01
  %3822 = fmul fast float %3783, %3607
  %3823 = fmul fast float %3784, %3608
  %3824 = fmul fast float %3785, %3609
  %3825 = fmul fast float %3820, 2.000000e+00
  %3826 = fadd fast float %3825, -1.000000e+00
  %3827 = fmul fast float %3821, 2.000000e+00
  %3828 = fadd fast float %3827, -1.000000e+00
  %3829 = fadd fast float %3826, %3828
  %3830 = fmul fast float %3829, 5.000000e-01
  %3831 = fsub fast float %3826, %3828
  %3832 = fmul fast float %3831, 5.000000e-01
  %3833 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3836 = fsub fast float %3834, %3835
  %3837 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3832, float %3836, float %3830, float %3832, float %3836)  ; Dot3(ax,ay,az,bx,by,bz)
  %3838 = call float @dx.op.unary.f32(i32 25, float %3837)  ; Rsqrt(value)
  %3839 = fmul fast float %3830, %3838
  %3840 = fmul fast float %3832, %3838
  %3841 = fmul fast float %3838, %3836
  %3842 = fmul fast float %3841, %3572
  %3843 = fmul fast float %3841, %3573
  %3844 = fmul fast float %3841, %3574
  %3845 = fmul fast float %3839, %3595
  %3846 = fmul fast float %3839, %3596
  %3847 = fmul fast float %3839, %3597
  %3848 = fadd fast float %3845, %3842
  %3849 = fadd fast float %3846, %3843
  %3850 = fadd fast float %3847, %3844
  %3851 = fmul fast float %3840, %3601
  %3852 = fmul fast float %3840, %3602
  %3853 = fmul fast float %3840, %3603
  %3854 = fadd fast float %3848, %3851
  %3855 = fadd fast float %3849, %3852
  %3856 = fadd fast float %3850, %3853
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float %3854, float %3855, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3854, %3858
  %3860 = fmul fast float %3855, %3858
  %3861 = fmul fast float %3856, %3858
  %3862 = icmp ne i32 %3778, 0
  %3863 = select i1 %3862, float 1.000000e+00, float 0.000000e+00
  %3864 = fmul fast float %3768, %3863
  %3865 = and i32 %3622, 1
  %3866 = icmp eq i32 %3865, 0
  br i1 %3866, label %3867, label %3871

; <label>:3867                                    ; preds = %3776
  %3868 = fsub fast float %3859, %3555
  %3869 = fsub fast float %3860, %3556
  %3870 = fsub fast float %3861, %3557
  br label %3871

; <label>:3871                                    ; preds = %3867, %3776
  %3872 = phi float [ %3868, %3867 ], [ %3859, %3776 ]
  %3873 = phi float [ %3869, %3867 ], [ %3860, %3776 ]
  %3874 = phi float [ %3870, %3867 ], [ %3861, %3776 ]
  %3875 = fmul float %3874, %3864
  %3876 = fmul float %3873, %3864
  %3877 = fmul float %3872, %3864
  %3878 = fadd fast float %3877, %3555
  %3879 = fadd fast float %3876, %3556
  %3880 = fadd fast float %3875, %3557
  %3881 = icmp ne i32 %3777, 0
  %3882 = select i1 %3881, float 1.000000e+00, float 0.000000e+00
  %3883 = fmul fast float %3768, %3882
  %3884 = fsub fast float %3822, %3562
  %3885 = fsub fast float %3823, %3563
  %3886 = fsub fast float %3824, %3564
  %3887 = fmul fast float %3884, %3883
  %3888 = fmul fast float %3885, %3883
  %3889 = fmul fast float %3886, %3883
  %3890 = fadd fast float %3887, %3562
  %3891 = fadd fast float %3888, %3563
  %3892 = fadd fast float %3889, %3564
  %3893 = fsub fast float %3795, %3561
  %3894 = fmul fast float %3893, %3883
  %3895 = fadd fast float %3894, %3561
  %3896 = fmul fast float %3883, %3551
  %3897 = fsub fast float %3551, %3896
  %3898 = fmul fast float %3883, %3550
  %3899 = fsub fast float %3550, %3898
  %3900 = fadd fast float %3768, %3560
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fsub fast float %3815, %3559
  %3903 = fmul fast float %3902, %3864
  %3904 = fadd fast float %3903, %3559
  %3905 = fsub fast float %3801, %3558
  %3906 = fmul fast float %3905, %3864
  %3907 = fadd fast float %3906, %3558
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3912 = fmul fast float %3911, %3908
  %3913 = fadd fast float %3912, %3910
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = bitcast float %3610 to i32
  %3916 = and i32 %3915, 65535
  %3917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3916)  ; LegacyF16ToF32(value)
  %3918 = lshr i32 %3915, 16
  %3919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3918)  ; LegacyF16ToF32(value)
  %3920 = fcmp fast oge float %3917, 0.000000e+00
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = select i1 %3920, float %3917, float %3922
  %3924 = fadd fast float %3923, %3919
  %3925 = fsub fast float %3914, %3549
  %3926 = fmul fast float %3925, %3768
  %3927 = fadd fast float %3926, %3549
  %3928 = fmul fast float %3924, %3768
  %3929 = call float @dx.op.binary.f32(i32 35, float %3548, float %3928)  ; FMax(a,b)
  %3930 = and i32 %3622, 16
  %3931 = icmp eq i32 %3930, 0
  br i1 %3931, label %3954, label %3932

; <label>:3932                                    ; preds = %3871
  %3933 = bitcast float %3616 to i32
  %3934 = add i32 %3613, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = and i32 %3933, 65535
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = fmul fast float %3937, %3607
  %3943 = fmul fast float %3938, %3608
  %3944 = fmul fast float %3939, %3609
  %3945 = and i32 %3622, 16384
  %3946 = icmp ne i32 %3945, 0
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = select i1 %3946, float %3948, float 1.000000e+00
  %3950 = fmul fast float %3949, %3941
  %3951 = fmul fast float %3942, %3950
  %3952 = fmul fast float %3943, %3950
  %3953 = fmul fast float %3944, %3950
  br label %3954

; <label>:3954                                    ; preds = %3932, %3871
  %3955 = phi float [ %3951, %3932 ], [ 0.000000e+00, %3871 ]
  %3956 = phi float [ %3952, %3932 ], [ 0.000000e+00, %3871 ]
  %3957 = phi float [ %3953, %3932 ], [ 0.000000e+00, %3871 ]
  %3958 = fsub fast float %3955, %3552
  %3959 = fsub fast float %3956, %3553
  %3960 = fsub fast float %3957, %3554
  %3961 = fmul fast float %3958, %3768
  %3962 = fmul fast float %3959, %3768
  %3963 = fmul fast float %3960, %3768
  %3964 = fadd fast float %3961, %3552
  %3965 = fadd fast float %3962, %3553
  %3966 = fadd fast float %3963, %3554
  br label %3671

; <label>:3967                                    ; preds = %3671
  br label %3968

; <label>:3968                                    ; preds = %3967, %3491
  %3969 = phi float [ 0.000000e+00, %3491 ], [ %3672, %3967 ]
  %3970 = phi float [ %3460, %3491 ], [ %3673, %3967 ]
  %3971 = phi float [ %3458, %3491 ], [ %3674, %3967 ]
  %3972 = phi float [ 0.000000e+00, %3491 ], [ %3675, %3967 ]
  %3973 = phi float [ 0.000000e+00, %3491 ], [ %3676, %3967 ]
  %3974 = phi float [ %3452, %3491 ], [ %3677, %3967 ]
  %3975 = phi float [ %3453, %3491 ], [ %3678, %3967 ]
  %3976 = phi float [ %3454, %3491 ], [ %3679, %3967 ]
  %3977 = phi float [ %3486, %3491 ], [ %3680, %3967 ]
  %3978 = phi float [ %3487, %3491 ], [ %3681, %3967 ]
  %3979 = phi float [ %3488, %3491 ], [ %3682, %3967 ]
  %3980 = phi float [ %3457, %3491 ], [ %3683, %3967 ]
  %3981 = phi float [ %3456, %3491 ], [ %3684, %3967 ]
  %3982 = phi float [ 0.000000e+00, %3491 ], [ %3685, %3967 ]
  %3983 = phi float [ %3455, %3491 ], [ %3686, %3967 ]
  %3984 = phi float [ %3449, %3491 ], [ %3687, %3967 ]
  %3985 = phi float [ %3450, %3491 ], [ %3688, %3967 ]
  %3986 = phi float [ %3451, %3491 ], [ %3689, %3967 ]
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float %3977, float %3978, float %3979)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3988, %3977
  %3990 = fmul fast float %3988, %3978
  %3991 = fmul fast float %3988, %3979
  %3992 = fadd fast float %3982, %893
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = call float @dx.op.unary.f32(i32 25, float %3994)  ; Rsqrt(value)
  %3996 = fmul fast float %3995, %3989
  %3997 = fmul fast float %3995, %3990
  %3998 = fmul fast float %3995, %3991
  br label %3999

; <label>:3999                                    ; preds = %3968, %3446
  %4000 = phi float [ %3996, %3968 ], [ %3486, %3446 ]
  %4001 = phi float [ %3997, %3968 ], [ %3487, %3446 ]
  %4002 = phi float [ %3998, %3968 ], [ %3488, %3446 ]
  %4003 = phi float [ %3984, %3968 ], [ %3449, %3446 ]
  %4004 = phi float [ %3985, %3968 ], [ %3450, %3446 ]
  %4005 = phi float [ %3986, %3968 ], [ %3451, %3446 ]
  %4006 = phi float [ %3974, %3968 ], [ %3452, %3446 ]
  %4007 = phi float [ %3975, %3968 ], [ %3453, %3446 ]
  %4008 = phi float [ %3976, %3968 ], [ %3454, %3446 ]
  %4009 = phi float [ %3983, %3968 ], [ %3455, %3446 ]
  %4010 = phi float [ %3993, %3968 ], [ %893, %3446 ]
  %4011 = phi float [ %3981, %3968 ], [ %3456, %3446 ]
  %4012 = phi float [ %3980, %3968 ], [ %3457, %3446 ]
  %4013 = phi float [ %3973, %3968 ], [ 0.000000e+00, %3446 ]
  %4014 = phi float [ %3972, %3968 ], [ 0.000000e+00, %3446 ]
  %4015 = phi float [ %3969, %3968 ], [ 0.000000e+00, %3446 ]
  %4016 = phi float [ %3970, %3968 ], [ %3460, %3446 ]
  %4017 = phi float [ %3971, %3968 ], [ %3458, %3446 ]
  %4018 = fadd fast float %4009, 0xBFB99999A0000000
  %4019 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4020 = fmul fast float %4019, 0x3FF1C71C80000000
  %4021 = call float @dx.op.binary.f32(i32 36, float %4009, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4022 = fsub fast float 1.000000e+00, %4020
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %4023, %4003
  %4025 = fmul fast float %4023, %4004
  %4026 = fmul fast float %4023, %4005
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = fmul fast float %4020, %4003
  %4031 = fmul fast float %4020, %4004
  %4032 = fmul fast float %4020, %4005
  %4033 = fadd fast float %4030, %4021
  %4034 = fadd fast float %4031, %4021
  %4035 = fadd fast float %4032, %4021
  %4036 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4037 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.i32 %4040, 3
  %4042 = and i32 %4041, 8
  %4043 = icmp ne i32 %4042, 0
  %4044 = call float @dx.op.binary.f32(i32 35, float %4027, float %4003)  ; FMax(a,b)
  %4045 = call float @dx.op.binary.f32(i32 35, float %4028, float %4003)  ; FMax(a,b)
  %4046 = call float @dx.op.binary.f32(i32 35, float %4029, float %4003)  ; FMax(a,b)
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4027, float %4028, float %4029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = select i1 %174, float %4003, float %4027
  %4049 = select i1 %174, float %4047, float %4028
  %4050 = select i1 %174, float 1.000000e+00, float %4029
  %4051 = select i1 %4043, float %4044, float %4048
  %4052 = select i1 %4043, float %4045, float %4049
  %4053 = select i1 %4043, float %4046, float %4050
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4058 = fadd fast float %4055, %132
  %4059 = fadd fast float %4056, %133
  %4060 = fadd fast float %4057, %134
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = fsub fast float %4058, %4062
  %4065 = fsub fast float %4059, %4063
  %4066 = fmul fast float %4064, %4064
  %4067 = fmul fast float %4065, %4065
  %4068 = fadd fast float %4066, %4067
  %4069 = call float @dx.op.unary.f32(i32 24, float %4068)  ; Sqrt(value)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4071 = fcmp fast olt float %4069, %4070
  br i1 %4071, label %4072, label %4139

; <label>:4072                                    ; preds = %3999
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4083 = extractvalue %dx.types.CBufRet.f32 %4075, 3
  %4084 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4085 = fadd fast float %4082, %4058
  %4086 = fadd fast float %4083, %4059
  %4087 = fadd fast float %4084, %4060
  %4088 = fmul fast float %4085, %4074
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4076, float %4088)  ; FMad(a,b,c)
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4078, float %4089)  ; FMad(a,b,c)
  %4091 = fmul fast float %4085, %4079
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4080, float %4091)  ; FMad(a,b,c)
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4081, float %4092)  ; FMad(a,b,c)
  %4094 = fsub fast float %4090, %4082
  %4095 = fsub fast float %4093, %4083
  %4096 = fsub fast float %4094, %4062
  %4097 = fadd fast float %4096, %4070
  %4098 = fsub fast float %4095, %4063
  %4099 = fadd fast float %4098, %4070
  %4100 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4101 = fmul fast float %4097, %4100
  %4102 = fmul fast float %4099, %4100
  %4103 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4104 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4105 = fsub fast float 1.000000e+00, %4103
  %4106 = fsub fast float 1.000000e+00, %4104
  %4107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4105, float %4106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = fcmp fast ugt float %4108, 0.000000e+00
  br i1 %4109, label %4110, label %4413

; <label>:4110                                    ; preds = %4072
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4113 = fmul fast float %4112, %4108
  %4114 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4115 = fadd fast float %4114, %4113
  %4116 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4117 = fadd fast float %4115, %4084
  %4118 = fmul fast float %4090, %4078
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4081, float %4118)  ; FMad(a,b,c)
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %4117, float %4116, float %4119)  ; FMad(a,b,c)
  %4121 = fsub fast float %4120, %4084
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4124 = fsub fast float %4121, %4123
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4105, float %4106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4105, float %4106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4129, 2
  %4133 = fadd fast float %4130, %4126
  %4134 = fmul fast float %4133, 0x3F847AE140000000
  %4135 = fadd fast float %4131, %4127
  %4136 = fmul fast float %4135, 0x3F847AE140000000
  %4137 = fadd fast float %4132, %4128
  %4138 = fmul fast float %4137, 0x3F847AE140000000
  br label %4413

; <label>:4139                                    ; preds = %3999
  %4140 = and i32 %150, 1
  %4141 = icmp eq i32 %4140, 0
  br i1 %4141, label %4413, label %4142

; <label>:4142                                    ; preds = %4139
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4150 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4151 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4153 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4154 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4155 = fadd fast float %4152, %4058
  %4156 = fadd fast float %4153, %4059
  %4157 = fadd fast float %4154, %4060
  %4158 = fmul fast float %4155, %4144
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4146, float %4158)  ; FMad(a,b,c)
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4148, float %4159)  ; FMad(a,b,c)
  %4161 = fmul fast float %4155, %4149
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4150, float %4161)  ; FMad(a,b,c)
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4151, float %4162)  ; FMad(a,b,c)
  %4164 = fsub fast float %4160, %4152
  %4165 = fsub fast float %4163, %4153
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.i32 %4173, 0
  %4175 = extractvalue %dx.types.CBufRet.i32 %4173, 1
  %4176 = udiv i32 %4175, %4174
  %4177 = fsub fast float %4164, %4167
  %4178 = fsub fast float %4165, %4168
  %4179 = call float @dx.op.binary.f32(i32 35, float %4177, float 0.000000e+00)  ; FMax(a,b)
  %4180 = call float @dx.op.binary.f32(i32 35, float %4178, float 0.000000e+00)  ; FMax(a,b)
  %4181 = call float @dx.op.binary.f32(i32 36, float %4179, float %4169)  ; FMin(a,b)
  %4182 = call float @dx.op.binary.f32(i32 36, float %4180, float %4170)  ; FMin(a,b)
  %4183 = add i32 %4174, -1
  %4184 = add i32 %4176, -1
  %4185 = fmul fast float %4181, %4172
  %4186 = fmul fast float %4182, %4172
  %4187 = fptoui float %4185 to i32
  %4188 = fptoui float %4186 to i32
  %4189 = call i32 @dx.op.binary.i32(i32 40, i32 %4187, i32 %4183)  ; UMin(a,b)
  %4190 = call i32 @dx.op.binary.i32(i32 40, i32 %4188, i32 %4184)  ; UMin(a,b)
  %4191 = mul i32 %4190, %4174
  %4192 = add i32 %4191, %4189
  %4193 = shl i32 %4192, 2
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = icmp eq i32 %4195, -1
  br i1 %4196, label %4413, label %4197

; <label>:4197                                    ; preds = %4142
  %4198 = mul i32 %4195, 148
  %4199 = add i32 %4198, 4
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = add i32 %4198, 8
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = add i32 %4198, 36
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = add i32 %4198, 60
  %4209 = add i32 %4198, 92
  %4210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.i32 %4210, 0
  %4212 = add i32 %4198, 116
  %4213 = fsub fast float %4164, %4201
  %4214 = fsub fast float %4165, %4204
  %4215 = fmul fast float %4172, %4213
  %4216 = fmul fast float %4172, %4214
  %4217 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4218 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4219 = fsub fast float 1.000000e+00, %4218
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4222 = call float @dx.op.unary.f32(i32 83, float %4217)  ; DerivCoarseX(value)
  %4223 = call float @dx.op.unary.f32(i32 83, float %4219)  ; DerivCoarseX(value)
  %4224 = call float @dx.op.unary.f32(i32 84, float %4217)  ; DerivCoarseY(value)
  %4225 = call float @dx.op.unary.f32(i32 84, float %4219)  ; DerivCoarseY(value)
  %4226 = fmul fast float %4222, %4221
  %4227 = fmul fast float %4223, %4221
  %4228 = fmul fast float %4224, %4221
  %4229 = fmul fast float %4225, %4221
  %4230 = call float @dx.op.dot2.f32(i32 54, float %4228, float %4229, float %4228, float %4229)  ; Dot2(ax,ay,bx,by)
  %4231 = call float @dx.op.dot2.f32(i32 54, float %4226, float %4227, float %4226, float %4227)  ; Dot2(ax,ay,bx,by)
  %4232 = call float @dx.op.binary.f32(i32 35, float %4231, float %4230)  ; FMax(a,b)
  %4233 = call float @dx.op.unary.f32(i32 23, float %4232)  ; Log(value)
  %4234 = fmul fast float %4233, 5.000000e-01
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4237 = fadd fast float %4236, %4234
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float 0.000000e+00)  ; FMax(a,b)
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 3
  %4241 = fadd fast float %4240, %4238
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4244 = fadd fast float %4241, %4243
  %4245 = add i32 %4211, 0
  %4246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4245, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4246, i32 0)  ; GetDimensions(handle,mipLevel)
  %4248 = extractvalue %dx.types.Dimensions %4247, 0
  %4249 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4248)  ; FirstbitLo(value)
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4252 = sub nsw i32 %4251, %4249
  %4253 = sitofp i32 %4252 to float
  %4254 = fsub fast float %4244, %4253
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4246, %dx.types.Handle %37, float %4217, float %4219, float %4207, float undef, i32 0, i32 0, i32 undef, float %4255)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = fcmp ule float %4257, 0x3FE0101020000000
  %4259 = extractvalue %dx.types.CBufRet.i32 %4250, 0
  %4260 = and i32 %4259, 128
  %4261 = icmp ne i32 %4260, 0
  %4262 = and i1 %4258, %4261
  br i1 %4262, label %4413, label %4263

; <label>:4263                                    ; preds = %4197
  %4264 = add i32 %4198, 20
  %4265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = add i32 %4198, 24
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = add i32 %4198, 40
  %4271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = add i32 %4198, 96
  %4274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.i32 %4274, 0
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = fmul fast float %4277, %4217
  %4279 = fmul fast float %4277, %4219
  %4280 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4281 = fadd fast float %4278, %4280
  %4282 = fadd fast float %4279, %4280
  %4283 = add i32 %4275, 0
  %4284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4283, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4285 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4284, i32 0)  ; GetDimensions(handle,mipLevel)
  %4286 = extractvalue %dx.types.Dimensions %4285, 0
  %4287 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4286)  ; FirstbitLo(value)
  %4288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.i32 %4288, 1
  %4290 = sub nsw i32 %4289, %4287
  %4291 = sitofp i32 %4290 to float
  %4292 = fsub fast float %4241, %4291
  %4293 = call float @dx.op.binary.f32(i32 35, float %4292, float 0.000000e+00)  ; FMax(a,b)
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4284, %dx.types.Handle %37, float %4281, float %4282, float %4272, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = fmul fast float %4295, %4266
  %4297 = fadd fast float %4296, %4269
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 3
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4306 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4307 = fadd fast float %4303, %4164
  %4308 = fadd fast float %4305, %4165
  %4309 = fadd fast float %4297, %4306
  %4310 = fmul fast float %4307, %4299
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4300, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4301, float %4311)  ; FMad(a,b,c)
  %4313 = fsub fast float %4312, %4306
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4316 = fsub fast float %4313, %4315
  %4317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.i32 %4317, 0
  %4319 = call i32 @dx.op.binary.i32(i32 40, i32 %4195, i32 %4318)  ; UMin(a,b)
  %4320 = mul i32 %4319, 36
  %4321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.i32 %4321, 0
  %4323 = add i32 %4320, 4
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = fmul fast float %4325, %4217
  %4327 = fmul fast float %4325, %4219
  %4328 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4329 = fadd fast float %4326, %4328
  %4330 = fadd fast float %4327, %4328
  %4331 = icmp eq i32 %4322, 0
  br i1 %4331, label %4400, label %4332

; <label>:4332                                    ; preds = %4263
  br label %4333

; <label>:4333                                    ; preds = %4390, %4332
  %4334 = phi float [ %4391, %4390 ], [ 0.000000e+00, %4332 ]
  %4335 = phi float [ %4392, %4390 ], [ 0.000000e+00, %4332 ]
  %4336 = phi float [ %4393, %4390 ], [ 0.000000e+00, %4332 ]
  %4337 = phi float [ %4394, %4390 ], [ 0.000000e+00, %4332 ]
  %4338 = phi float [ %4395, %4390 ], [ 0.000000e+00, %4332 ]
  %4339 = phi float [ %4396, %4390 ], [ 0.000000e+00, %4332 ]
  %4340 = phi i32 [ %4397, %4390 ], [ 0, %4332 ]
  %4341 = shl i32 %4340, 2
  %4342 = add i32 %4208, %4341
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = add i32 %4212, %4341
  %4346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.i32 %4346, 0
  %4348 = add i32 %4347, 0
  %4349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4348, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4349, i32 0)  ; GetDimensions(handle,mipLevel)
  %4351 = extractvalue %dx.types.Dimensions %4350, 0
  %4352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4351)  ; FirstbitLo(value)
  %4353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.i32 %4353, 1
  %4355 = sub nsw i32 %4354, %4352
  %4356 = sitofp i32 %4355 to float
  %4357 = fsub fast float %4241, %4356
  %4358 = call float @dx.op.binary.f32(i32 35, float %4357, float 0.000000e+00)  ; FMax(a,b)
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4349, %dx.types.Handle %37, float %4329, float %4330, float %4344, float undef, i32 0, i32 0, i32 undef, float %4358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = fcmp fast ogt float %4360, 0.000000e+00
  br i1 %4361, label %4362, label %4390

; <label>:4362                                    ; preds = %4333
  %4363 = add i32 %4323, %4341
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = and i32 %4365, 32767
  %4367 = mul nuw nsw i32 %4366, 928
  %4368 = add nuw nsw i32 %4367, 48
  %4369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = add nuw nsw i32 %4367, 60
  %4374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.ResRet.f32 %4374, 1
  %4377 = extractvalue %dx.types.ResRet.f32 %4374, 2
  %4378 = fmul fast float %4370, %4360
  %4379 = fmul fast float %4371, %4360
  %4380 = fmul fast float %4372, %4360
  %4381 = fadd fast float %4378, %4334
  %4382 = fadd fast float %4379, %4335
  %4383 = fadd fast float %4380, %4336
  %4384 = fmul fast float %4375, %4360
  %4385 = fmul fast float %4376, %4360
  %4386 = fmul fast float %4377, %4360
  %4387 = fadd fast float %4384, %4337
  %4388 = fadd fast float %4385, %4338
  %4389 = fadd fast float %4386, %4339
  br label %4390

; <label>:4390                                    ; preds = %4362, %4333
  %4391 = phi float [ %4381, %4362 ], [ %4334, %4333 ]
  %4392 = phi float [ %4382, %4362 ], [ %4335, %4333 ]
  %4393 = phi float [ %4383, %4362 ], [ %4336, %4333 ]
  %4394 = phi float [ %4387, %4362 ], [ %4337, %4333 ]
  %4395 = phi float [ %4388, %4362 ], [ %4338, %4333 ]
  %4396 = phi float [ %4389, %4362 ], [ %4339, %4333 ]
  %4397 = add nuw i32 %4340, 1
  %4398 = icmp eq i32 %4397, %4322
  br i1 %4398, label %4399, label %4333

; <label>:4399                                    ; preds = %4390
  br label %4400

; <label>:4400                                    ; preds = %4399, %4263
  %4401 = phi float [ 0.000000e+00, %4263 ], [ %4391, %4399 ]
  %4402 = phi float [ 0.000000e+00, %4263 ], [ %4392, %4399 ]
  %4403 = phi float [ 0.000000e+00, %4263 ], [ %4393, %4399 ]
  %4404 = phi float [ 0.000000e+00, %4263 ], [ %4394, %4399 ]
  %4405 = phi float [ 0.000000e+00, %4263 ], [ %4395, %4399 ]
  %4406 = phi float [ 0.000000e+00, %4263 ], [ %4396, %4399 ]
  %4407 = fadd fast float %4404, %4401
  %4408 = fmul fast float %4407, 0x3F847AE140000000
  %4409 = fadd fast float %4405, %4402
  %4410 = fmul fast float %4409, 0x3F847AE140000000
  %4411 = fadd fast float %4406, %4403
  %4412 = fmul fast float %4411, 0x3F847AE140000000
  br label %4413

; <label>:4413                                    ; preds = %4400, %4197, %4142, %4139, %4110, %4072
  %4414 = phi float [ %4124, %4110 ], [ -1.310720e+05, %4072 ], [ %4316, %4400 ], [ -1.310720e+05, %4142 ], [ -1.310720e+05, %4197 ], [ -1.310720e+05, %4139 ]
  %4415 = phi float [ %4134, %4110 ], [ 0.000000e+00, %4072 ], [ %4408, %4400 ], [ 0.000000e+00, %4142 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4139 ]
  %4416 = phi float [ %4136, %4110 ], [ 0.000000e+00, %4072 ], [ %4410, %4400 ], [ 0.000000e+00, %4142 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4139 ]
  %4417 = phi float [ %4138, %4110 ], [ 0.000000e+00, %4072 ], [ %4412, %4400 ], [ 0.000000e+00, %4142 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4139 ]
  %4418 = phi i1 [ true, %4110 ], [ false, %4072 ], [ true, %4400 ], [ false, %4142 ], [ false, %4197 ], [ false, %4139 ]
  %4419 = and i32 %150, 3
  %4420 = icmp eq i32 %4419, 1
  %4421 = select i1 %4420, float 1.000000e+00, float 0.000000e+00
  %4422 = fsub fast float %4414, %134
  %4423 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4424 = select i1 %4418, float %4423, float 1.000000e+00
  %4425 = fmul fast float %4424, %4421
  %4426 = icmp eq i32 %4419, 3
  %4427 = select i1 %4426, float 1.000000e+00, float %4425
  %4428 = call float @dx.op.binary.f32(i32 35, float %4015, float %4427)  ; FMax(a,b)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fcmp fast une float %4429, 0.000000e+00
  %4431 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 25, float %4431)  ; Rsqrt(value)
  br i1 %4430, label %4440, label %4433

; <label>:4433                                    ; preds = %4413
  %4434 = fmul fast float %4432, %132
  %4435 = fmul fast float %4432, %133
  %4436 = fmul fast float %4432, %134
  %4437 = fsub fast float -0.000000e+00, %4434
  %4438 = fsub fast float -0.000000e+00, %4435
  %4439 = fsub fast float -0.000000e+00, %4436
  br label %4608

; <label>:4440                                    ; preds = %4413
  %4441 = fmul fast float %132, %4432
  %4442 = fsub fast float -0.000000e+00, %4441
  %4443 = fmul fast float %133, %4432
  %4444 = fsub fast float -0.000000e+00, %4443
  %4445 = fmul fast float %134, %4432
  %4446 = fsub fast float -0.000000e+00, %4445
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4444, float %4446, float %82, float %84, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = fmul fast float %4429, 2.500000e+00
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fmul fast float %4429, 0x4013FFFFE0000000
  %4451 = fadd fast float %4450, 0xBFFFFFFFE0000000
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4429, 0x4004000020000000
  %4454 = fadd fast float %4453, 0xBFF8000040000000
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4457 = fmul fast float %4018, 1.000000e+01
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, 2.000000e+00
  %4460 = fsub fast float 3.000000e+00, %4459
  %4461 = fmul fast float %4458, %4458
  %4462 = fmul fast float %4461, %4460
  %4463 = fsub fast float 1.000000e+00, %4462
  %4464 = fsub fast float 0x3FE3333340000000, %4039
  %4465 = fmul fast float %4464, 0x400AAAAAA0000000
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4463, %4466
  %4468 = fmul fast float %4051, 0x3FEA2B8620000000
  %4469 = fmul fast float %4052, 0x3FEA2B8620000000
  %4470 = fmul fast float %4053, 0x3FEA2B8620000000
  %4471 = fadd fast float %4468, 0x3FC81DFBA0000000
  %4472 = fmul fast float %4471, %4051
  %4473 = fadd fast float %4472, 0x3F910E6020000000
  %4474 = fadd fast float %4469, 0x3FC81DFBA0000000
  %4475 = fmul fast float %4474, %4052
  %4476 = fadd fast float %4475, 0x3F910E6020000000
  %4477 = fadd fast float %4470, 0x3FC81DFBA0000000
  %4478 = fmul fast float %4477, %4053
  %4479 = fadd fast float %4478, 0x3F910E6020000000
  %4480 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4483 = fsub fast float %4480, %4051
  %4484 = fsub fast float %4481, %4052
  %4485 = fsub fast float %4482, %4053
  %4486 = fmul fast float %4483, %4456
  %4487 = fmul fast float %4486, %4467
  %4488 = fmul fast float %4484, %4456
  %4489 = fmul fast float %4488, %4467
  %4490 = fmul fast float %4485, %4456
  %4491 = fmul fast float %4490, %4467
  %4492 = fadd fast float %4487, %4051
  %4493 = fadd fast float %4489, %4052
  %4494 = fadd fast float %4491, %4053
  %4495 = fmul fast float %4012, %4012
  %4496 = fmul fast float %4495, %4495
  %4497 = fadd fast float %4452, 1.000000e+00
  %4498 = fsub fast float %4497, %4467
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = call float @dx.op.dot3.f32(i32 55, float %82, float %84, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fsub fast float 1.000000e+00, %4496
  %4503 = call float @dx.op.binary.f32(i32 36, float %4499, float %4502)  ; FMin(a,b)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4503, float %4504)  ; FMax(a,b)
  %4506 = fadd fast float %4501, 0xBFE4CCCCC0000000
  %4507 = fmul fast float %4506, 0x4006DB6DA0000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fmul fast float %4508, 2.000000e+00
  %4510 = fsub fast float 3.000000e+00, %4509
  %4511 = bitcast float %4036 to i32
  %4512 = ashr i32 %4511, 1
  %4513 = add nsw i32 %4512, 532487669
  %4514 = bitcast i32 %4513 to float
  %4515 = fsub fast float 1.000000e+00, %4514
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, 2.000000e+00
  %4520 = bitcast float %4037 to i32
  %4521 = ashr i32 %4520, 1
  %4522 = add nsw i32 %4521, 532487669
  %4523 = bitcast i32 %4522 to float
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = bitcast float %4524 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = fmul fast float %4527, 2.000000e+00
  %4529 = bitcast float %4038 to i32
  %4530 = ashr i32 %4529, 1
  %4531 = add nsw i32 %4530, 532487669
  %4532 = bitcast i32 %4531 to float
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = bitcast float %4533 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, 2.000000e+00
  %4538 = fsub fast float 0x4002A9FBE0000000, %4519
  %4539 = fadd fast float %4519, 0x3FD54FDF00000000
  %4540 = bitcast float %4539 to i32
  %4541 = sub nsw i32 2129859010, %4540
  %4542 = bitcast i32 %4541 to float
  %4543 = fmul fast float %4542, %4538
  %4544 = fmul fast float %4543, %4543
  %4545 = fsub fast float 0x4002A9FBE0000000, %4528
  %4546 = fadd fast float %4528, 0x3FD54FDF00000000
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, %4545
  %4551 = fmul fast float %4550, %4550
  %4552 = fsub fast float 0x4002A9FBE0000000, %4537
  %4553 = fadd fast float %4537, 0x3FD54FDF00000000
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, %4552
  %4558 = fmul fast float %4557, %4557
  %4559 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4544)  ; FMax(a,b)
  %4560 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4551)  ; FMax(a,b)
  %4561 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4558)  ; FMax(a,b)
  %4562 = fsub fast float 1.000000e+00, %4447
  %4563 = fadd fast float %4562, %4463
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fsub fast float 1.000000e+00, %4427
  %4566 = fmul fast float %4505, %4565
  %4567 = fmul fast float %4508, %4508
  %4568 = fmul fast float %4567, %4566
  %4569 = fmul fast float %4568, %4510
  %4570 = fmul fast float %4565, 0xBFE99999A0000000
  %4571 = fmul fast float %4570, %4456
  %4572 = fmul fast float %4571, %4467
  %4573 = fadd fast float %4572, 1.000000e+00
  %4574 = fadd fast float %4039, -1.000000e+00
  %4575 = fmul fast float %4573, %4574
  %4576 = fadd fast float %4575, 1.000000e+00
  %4577 = fsub fast float %4559, %4036
  %4578 = fsub fast float %4560, %4037
  %4579 = fsub fast float %4561, %4038
  %4580 = fmul fast float %4569, %4577
  %4581 = fmul fast float %4569, %4578
  %4582 = fmul fast float %4569, %4579
  %4583 = fadd fast float %4580, %4036
  %4584 = fadd fast float %4581, %4037
  %4585 = fadd fast float %4582, %4038
  %4586 = fsub fast float %82, %4000
  %4587 = fsub fast float %84, %4001
  %4588 = fsub fast float %86, %4002
  %4589 = fmul fast float %4569, %4586
  %4590 = fmul fast float %4569, %4587
  %4591 = fmul fast float %4569, %4588
  %4592 = fadd fast float %4589, %4000
  %4593 = fadd fast float %4590, %4001
  %4594 = fadd fast float %4591, %4002
  %4595 = fmul fast float %4569, %4564
  %4596 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4597 = fsub fast float 1.000000e+00, %4596
  %4598 = fmul fast float %4595, %4597
  %4599 = fadd fast float %4598, %4596
  %4600 = fsub fast float 1.000000e+00, %4012
  %4601 = fmul fast float %4569, %4600
  %4602 = fadd fast float %4601, %4012
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4592, float %4593, float %4594, float %4592, float %4593, float %4594)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 25, float %4603)  ; Rsqrt(value)
  %4605 = fmul fast float %4592, %4604
  %4606 = fmul fast float %4593, %4604
  %4607 = fmul fast float %4594, %4604
  br label %4608

; <label>:4608                                    ; preds = %4440, %4433
  %4609 = phi float [ %4439, %4433 ], [ %4446, %4440 ]
  %4610 = phi float [ %4438, %4433 ], [ %4444, %4440 ]
  %4611 = phi float [ %4437, %4433 ], [ %4442, %4440 ]
  %4612 = phi float [ %4436, %4433 ], [ %4445, %4440 ]
  %4613 = phi float [ %4435, %4433 ], [ %4443, %4440 ]
  %4614 = phi float [ %4434, %4433 ], [ %4441, %4440 ]
  %4615 = phi float [ %4000, %4433 ], [ %4605, %4440 ]
  %4616 = phi float [ %4001, %4433 ], [ %4606, %4440 ]
  %4617 = phi float [ %4002, %4433 ], [ %4607, %4440 ]
  %4618 = phi float [ %4036, %4433 ], [ %4583, %4440 ]
  %4619 = phi float [ %4037, %4433 ], [ %4584, %4440 ]
  %4620 = phi float [ %4038, %4433 ], [ %4585, %4440 ]
  %4621 = phi float [ %4051, %4433 ], [ %4492, %4440 ]
  %4622 = phi float [ %4052, %4433 ], [ %4493, %4440 ]
  %4623 = phi float [ %4053, %4433 ], [ %4494, %4440 ]
  %4624 = phi float [ %4039, %4433 ], [ %4599, %4440 ]
  %4625 = phi float [ %4012, %4433 ], [ %4602, %4440 ]
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4628 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4629 = fmul fast float %4627, %73
  %4630 = fmul fast float %4628, %74
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = fmul fast float %4635, %4633
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fadd fast float %4637, -1.000000e+00
  %4639 = fmul fast float %4638, %4632
  %4640 = fadd fast float %4639, 1.000000e+00
  %4641 = select i1 %174, float 0.000000e+00, float %4620
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %4611, float %4610, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4613, float %4612, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = fmul fast float %4644, 2.000000e+00
  %4646 = fmul fast float %4645, %4615
  %4647 = fmul fast float %4645, %4616
  %4648 = fmul fast float %4645, %4617
  %4649 = fsub fast float %4614, %4646
  %4650 = fsub fast float %4613, %4647
  %4651 = fsub fast float %4612, %4648
  %4652 = call float @dx.op.binary.f32(i32 36, float %4625, float %4640)  ; FMin(a,b)
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = bitcast float %4653 to i32
  %4655 = ashr i32 %4654, 1
  %4656 = add nsw i32 %4655, 532487669
  %4657 = bitcast i32 %4656 to float
  %4658 = fsub fast float 1.000000e+00, %4624
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0x3F847AE140000000)  ; FMax(a,b)
  %4660 = fmul fast float %4659, %4659
  %4661 = fmul fast float %4660, %4660
  %4662 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4657, float %4661, float %4662, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = fsub fast float 1.000000e+00, %4625
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = fmul fast float %4643, 9.843750e-01
  %4669 = fmul fast float %4624, 9.843750e-01
  %4670 = fadd fast float %4668, 7.812500e-03
  %4671 = fadd fast float %4669, 7.812500e-03
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4670, float %4671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 3
  %4675 = fmul fast float %4673, %4618
  %4676 = fmul fast float %4673, %4619
  %4677 = fmul fast float %4673, %4641
  %4678 = fadd fast float %4675, %4674
  %4679 = fadd fast float %4676, %4674
  %4680 = fadd fast float %4677, %4674
  %4681 = fcmp fast ogt float %4013, 0.000000e+00
  br i1 %4681, label %4682, label %4708

; <label>:4682                                    ; preds = %4608
  %4683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.ResRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.ResRet.f32 %4683, 2
  %4687 = fadd fast float %4684, -5.000000e-01
  %4688 = fadd fast float %4685, -5.000000e-01
  %4689 = fadd fast float %4686, -5.000000e-01
  %4690 = fsub fast float 1.000000e+00, %4618
  %4691 = fsub fast float 1.000000e+00, %4619
  %4692 = fsub fast float 1.000000e+00, %4641
  %4693 = fmul fast float %4618, 4.000000e+00
  %4694 = fmul fast float %4693, %4690
  %4695 = fmul fast float %4694, %4687
  %4696 = fmul fast float %4619, 4.000000e+00
  %4697 = fmul fast float %4696, %4691
  %4698 = fmul fast float %4697, %4688
  %4699 = fmul fast float %4641, 4.000000e+00
  %4700 = fmul fast float %4699, %4692
  %4701 = fmul fast float %4700, %4689
  %4702 = fadd fast float %4695, %4678
  %4703 = fadd fast float %4698, %4679
  %4704 = fadd fast float %4701, %4680
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  br label %4708

; <label>:4708                                    ; preds = %4682, %4608
  %4709 = phi float [ %4705, %4682 ], [ %4678, %4608 ]
  %4710 = phi float [ %4706, %4682 ], [ %4679, %4608 ]
  %4711 = phi float [ %4707, %4682 ], [ %4680, %4608 ]
  %4712 = call float @dx.op.binary.f32(i32 35, float %4710, float %4711)  ; FMax(a,b)
  %4713 = call float @dx.op.binary.f32(i32 35, float %4709, float %4712)  ; FMax(a,b)
  %4714 = fmul fast float %4713, %4624
  %4715 = fadd fast float %4714, %4624
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4716, 2
  %4720 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4721 = fmul fast float %4715, %4717
  %4722 = fadd fast float %4721, %4718
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4719, %4715
  %4725 = fadd fast float %4724, %4720
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fsub fast float 1.000000e+00, %4664
  %4728 = fadd fast float %4727, %4726
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fcmp fast olt float %4729, 1.000000e+00
  br i1 %4730, label %4731, label %5578

; <label>:4731                                    ; preds = %4708
  %4732 = fcmp fast olt float %4723, 1.000000e+00
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = fcmp fast ogt float %4734, 0.000000e+00
  %4736 = or i1 %4732, %4735
  %4737 = or i1 %4732, %4735
  %4738 = xor i1 %4737, true
  %4739 = zext i1 %4738 to i32
  br i1 %4736, label %4740, label %4975

; <label>:4740                                    ; preds = %4731
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4745 = extractvalue %dx.types.CBufRet.f32 %4741, 3
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4750 = extractvalue %dx.types.CBufRet.f32 %4746, 3
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.CBufRet.f32 %4751, 2
  %4755 = extractvalue %dx.types.CBufRet.f32 %4751, 3
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 0
  %4758 = extractvalue %dx.types.CBufRet.f32 %4756, 1
  %4759 = extractvalue %dx.types.CBufRet.f32 %4756, 2
  %4760 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.CBufRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.CBufRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %4770 = extractvalue %dx.types.CBufRet.f32 %4766, 3
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4768, float %4769, float %4649, float %4650, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = call float @dx.op.unary.f32(i32 6, float %4772)  ; FAbs(value)
  %4774 = fmul fast float %4773, 8.000000e+00
  %4775 = fadd fast float %4774, -6.000000e+00
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4771, 8.000000e+00
  %4778 = fmul fast float %4777, %4734
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fcmp fast ogt float %4779, 0.000000e+00
  br i1 %4780, label %4781, label %4958, !dx.controlflow.hints !85

; <label>:4781                                    ; preds = %4740
  %4782 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4783 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4784 = fsub fast float %4782, %4783
  %4785 = fmul fast float %4784, %4624
  %4786 = fadd fast float %4785, %4783
  %4787 = fmul fast float %187, 2.000000e+00
  %4788 = fmul fast float %188, 2.000000e+00
  %4789 = fadd fast float %4787, -1.000000e+00
  %4790 = fadd fast float %4788, -1.000000e+00
  %4791 = fmul fast float %4786, %4789
  %4792 = fmul fast float %4786, %4790
  %4793 = fadd fast float %4791, %73
  %4794 = fadd fast float %4792, %74
  %4795 = fmul fast float %4793, %4627
  %4796 = fmul fast float %4794, %4628
  %4797 = fadd fast float %4624, 0xBFE3333340000000
  %4798 = fmul fast float %4797, 0x4004000020000000
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, 3.000000e+00
  %4802 = fadd fast float %4801, %187
  %4803 = call float @dx.op.unary.f32(i32 27, float %4802)  ; Round_ni(value)
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4795, float %4796, float %4803, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = fcmp fast une float %4805, 0xFFF0000000000000
  %4807 = fcmp fast une float %4805, 0x7FF0000000000000
  %4808 = and i1 %4806, %4807
  %4809 = fcmp fast olt float %4805, 0.000000e+00
  %4810 = call float @dx.op.unary.f32(i32 6, float %4805)  ; FAbs(value)
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = select i1 %4808, float 1.000000e+00, float 0.000000e+00
  %4813 = fmul fast float %4812, %4779
  %4814 = fcmp fast ogt float %4813, 0.000000e+00
  br i1 %4814, label %4815, label %4958, !dx.controlflow.hints !86

; <label>:4815                                    ; preds = %4781
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 0
  %4818 = extractvalue %dx.types.CBufRet.f32 %4816, 1
  %4819 = extractvalue %dx.types.CBufRet.f32 %4816, 2
  %4820 = select i1 %4809, float 0.000000e+00, float %4817
  %4821 = select i1 %4809, float 0.000000e+00, float %4818
  %4822 = select i1 %4809, float 0.000000e+00, float %4819
  %4823 = select i1 %4809, float %4742, float %4757
  %4824 = select i1 %4809, float %4747, float %4762
  %4825 = select i1 %4809, float %4752, float %4767
  %4826 = select i1 %4809, float %4743, float %4758
  %4827 = select i1 %4809, float %4748, float %4763
  %4828 = select i1 %4809, float %4753, float %4768
  %4829 = select i1 %4809, float %4744, float %4759
  %4830 = select i1 %4809, float %4749, float %4764
  %4831 = select i1 %4809, float %4754, float %4769
  %4832 = select i1 %4809, float %4745, float %4760
  %4833 = select i1 %4809, float %4750, float %4765
  %4834 = select i1 %4809, float %4755, float %4770
  %4835 = fadd fast float %4820, %132
  %4836 = fadd fast float %4821, %133
  %4837 = fadd fast float %4822, %134
  %4838 = fmul fast float %4835, %4823
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4826, float %4838)  ; FMad(a,b,c)
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4829, float %4839)  ; FMad(a,b,c)
  %4841 = fadd fast float %4840, %4832
  %4842 = fmul fast float %4835, %4824
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4827, float %4842)  ; FMad(a,b,c)
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4830, float %4843)  ; FMad(a,b,c)
  %4845 = fadd fast float %4844, %4833
  %4846 = fmul fast float %4835, %4825
  %4847 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4828, float %4846)  ; FMad(a,b,c)
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4831, float %4847)  ; FMad(a,b,c)
  %4849 = fadd fast float %4848, %4834
  %4850 = fdiv fast float 1.000000e+00, %4849
  %4851 = fmul fast float %4850, %4841
  %4852 = fmul fast float %4850, %4845
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4856 = fmul fast float %4851, %4854
  %4857 = fmul fast float %4852, %4855
  %4858 = extractvalue %dx.types.CBufRet.f32 %4853, 2
  %4859 = extractvalue %dx.types.CBufRet.f32 %4853, 3
  %4860 = fadd fast float %4856, %4858
  %4861 = fadd fast float %4857, %4859
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 3
  %4864 = fmul fast float %4863, %4649
  %4865 = fmul fast float %4863, %4650
  %4866 = fmul fast float %4863, %4651
  %4867 = fadd fast float %4864, %4835
  %4868 = fadd fast float %4865, %4836
  %4869 = fadd fast float %4866, %4837
  %4870 = fmul fast float %4867, %4823
  %4871 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4826, float %4870)  ; FMad(a,b,c)
  %4872 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4829, float %4871)  ; FMad(a,b,c)
  %4873 = fadd fast float %4872, %4832
  %4874 = fmul fast float %4867, %4824
  %4875 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4827, float %4874)  ; FMad(a,b,c)
  %4876 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4830, float %4875)  ; FMad(a,b,c)
  %4877 = fadd fast float %4876, %4833
  %4878 = fmul fast float %4867, %4825
  %4879 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4828, float %4878)  ; FMad(a,b,c)
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4831, float %4879)  ; FMad(a,b,c)
  %4881 = fadd fast float %4880, %4834
  %4882 = fdiv fast float 1.000000e+00, %4881
  %4883 = fmul fast float %4882, %4873
  %4884 = fmul fast float %4882, %4877
  %4885 = fmul fast float %4860, 2.000000e+00
  %4886 = fadd fast float %4885, -1.000000e+00
  %4887 = call float @dx.op.unary.f32(i32 6, float %4886)  ; FAbs(value)
  %4888 = fmul fast float %4887, 5.000000e+00
  %4889 = fadd fast float %4888, -4.000000e+00
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, %4776
  %4892 = fsub fast float %4851, %4883
  %4893 = fmul fast float %4854, %4892
  %4894 = fmul fast float %4891, %4893
  %4895 = fsub fast float %4883, %4851
  %4896 = fmul fast float %4854, %4895
  %4897 = fadd fast float %4896, %4894
  %4898 = fsub fast float %4884, %4852
  %4899 = fmul fast float %4855, %4898
  %4900 = fmul fast float %4897, %4811
  %4901 = fmul fast float %4899, %4811
  %4902 = fadd fast float %4900, %4860
  %4903 = fadd fast float %4901, %4861
  %4904 = fsub fast float %4882, %4850
  %4905 = fmul fast float %4904, %4811
  %4906 = fadd fast float %4905, %4850
  %4907 = fdiv fast float 1.000000e+00, %4906
  %4908 = fadd fast float %4624, -1.000000e+00
  %4909 = fsub fast float %4907, %4849
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4912 = fmul fast float %4911, %4907
  %4913 = fdiv fast float 1.600000e+02, %4912
  %4914 = fmul fast float %4908, %4908
  %4915 = fmul fast float %4914, 0xBFB5B17960000000
  %4916 = fmul fast float %4915, %4909
  %4917 = fmul fast float %4916, %4913
  %4918 = call float @dx.op.unary.f32(i32 21, float %4917)  ; Exp(value)
  %4919 = fmul fast float %4918, 0x3FF04B2960000000
  %4920 = fsub fast float 0x3FF04B2960000000, %4919
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fmul fast float %4921, 4.000000e+00
  %4923 = fadd fast float %187, -5.000000e-01
  %4924 = fadd fast float %188, -5.000000e-01
  %4925 = fmul fast float %4921, 0x3FBEB851E0000000
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, %4923
  %4928 = fmul fast float %4926, %4924
  %4929 = fadd fast float %4902, %4927
  %4930 = fadd fast float %4903, %4928
  %4931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4922)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = extractvalue %dx.types.ResRet.f32 %4931, 1
  %4934 = extractvalue %dx.types.ResRet.f32 %4931, 2
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4937 = fmul fast float %4936, %4932
  %4938 = fmul fast float %4936, %4933
  %4939 = fmul fast float %4936, %4934
  %4940 = select i1 %174, float 0.000000e+00, float %4938
  %4941 = select i1 %174, float 0.000000e+00, float %4939
  %4942 = fmul fast float %4929, 2.000000e+00
  %4943 = fmul fast float %4930, 2.000000e+00
  %4944 = fadd fast float %4942, -1.000000e+00
  %4945 = fadd fast float %4943, -1.000000e+00
  %4946 = fmul fast float %4944, %4944
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = fmul fast float %4949, %4776
  %4951 = fadd fast float %4950, %4948
  %4952 = fmul fast float %4945, %4945
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fmul fast float %4951, %4954
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = fmul fast float %4956, %4813
  br label %4958

; <label>:4958                                    ; preds = %4815, %4781, %4740
  %4959 = phi float [ %4937, %4815 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4740 ]
  %4960 = phi float [ %4940, %4815 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4740 ]
  %4961 = phi float [ %4941, %4815 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4740 ]
  %4962 = phi float [ %4957, %4815 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4740 ]
  %4963 = fcmp fast olt float %4962, 1.000000e+00
  %4964 = or i1 %4963, %4738
  %4965 = zext i1 %4964 to i32
  %4966 = fmul fast float %4962, %4723
  %4967 = fsub fast float %4962, %4966
  %4968 = fsub fast float 1.000000e+00, %4729
  %4969 = fmul fast float %4967, %4968
  %4970 = fadd fast float %4729, %4969
  %4971 = fsub fast float -0.000000e+00, %4970
  %4972 = fmul fast float %4967, %4959
  %4973 = fmul fast float %4967, %4960
  %4974 = fmul fast float %4967, %4961
  br label %4975

; <label>:4975                                    ; preds = %4958, %4731
  %4976 = phi float [ %4729, %4731 ], [ %4971, %4958 ]
  %4977 = phi float [ 0.000000e+00, %4731 ], [ %4972, %4958 ]
  %4978 = phi float [ 0.000000e+00, %4731 ], [ %4973, %4958 ]
  %4979 = phi float [ 0.000000e+00, %4731 ], [ %4974, %4958 ]
  %4980 = phi i32 [ %4739, %4731 ], [ %4965, %4958 ]
  %4981 = icmp eq i32 %4980, 0
  br i1 %4981, label %5578, label %4982

; <label>:4982                                    ; preds = %4975
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4985 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4986 = fmul fast float %4984, %73
  %4987 = fmul fast float %4985, %74
  %4988 = fptoui float %4986 to i32
  %4989 = fptoui float %4987 to i32
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.CBufRet.f32 %4990, 2
  %4993 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %4994 = fadd fast float %68, -4.000000e+00
  %4995 = call float @dx.op.binary.f32(i32 35, float %4994, float 0.000000e+00)  ; FMax(a,b)
  %4996 = fadd fast float %4995, %4991
  %4997 = fmul fast float %4996, %4992
  %4998 = call float @dx.op.unary.f32(i32 23, float %4997)  ; Log(value)
  %4999 = fmul fast float %4998, %4993
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5002 = fmul fast float %4999, %5001
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.i32 %5004, 1
  %5006 = add i32 %5005, -1
  %5007 = uitofp i32 %5005 to float
  %5008 = fmul fast float %5007, %5003
  %5009 = fptoui float %5008 to i32
  %5010 = call i32 @dx.op.binary.i32(i32 40, i32 %5009, i32 %5006)  ; UMin(a,b)
  %5011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.i32 %5011, 2
  %5013 = extractvalue %dx.types.CBufRet.i32 %5011, 3
  %5014 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4989, i32 %5012, i32 %4988)  ; UMad(a,b,c)
  %5015 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5010, i32 %5013, i32 %5014)  ; UMad(a,b,c)
  %5016 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %5017 = fptoui float %5016 to i32
  %5018 = lshr i32 %5017, 5
  %5019 = call i32 @dx.op.binary.i32(i32 40, i32 %5018, i32 8191)  ; UMin(a,b)
  %5020 = fcmp fast ogt float %4423, 0.000000e+00
  %5021 = fcmp fast ogt float %4651, 0.000000e+00
  %5022 = and i1 %5021, %5020
  br i1 %5022, label %5023, label %5052

; <label>:5023                                    ; preds = %4982
  %5024 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %4651, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = call float @dx.op.binary.f32(i32 35, float %5024, float -1.000000e+00)  ; FMax(a,b)
  %5026 = call float @dx.op.binary.f32(i32 36, float %5025, float 1.000000e+00)  ; FMin(a,b)
  %5027 = fmul fast float %5026, %5026
  %5028 = fsub fast float 1.000000e+00, %5027
  %5029 = fmul fast float %5028, 0x3FFC6E2300000000
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = fcmp fast ogt float %5030, 0.000000e+00
  %5032 = call float @dx.op.unary.f32(i32 24, float %5030)  ; Sqrt(value)
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = call float @dx.op.unary.f32(i32 23, float %5033)  ; Log(value)
  %5035 = fmul fast float %5034, 5.000000e+00
  %5036 = call float @dx.op.unary.f32(i32 21, float %5035)  ; Exp(value)
  %5037 = fmul fast float %5036, 0x3FEF591A60000000
  %5038 = fadd fast float %5037, 0x3F94DCB540000000
  %5039 = select i1 %5031, float %5038, float 1.000000e+00
  %5040 = fcmp fast oge float %5039, 1.000000e+00
  %5041 = fmul fast float %5024, 2.000000e+00
  %5042 = fadd fast float %5041, %4651
  %5043 = select i1 %5040, float %5042, float %4651
  %5044 = fsub fast float %5043, %4651
  %5045 = fmul fast float %5044, %4423
  %5046 = fadd fast float %5045, %4651
  %5047 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %5046, float %4649, float %4650, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.unary.f32(i32 25, float %5047)  ; Rsqrt(value)
  %5049 = fmul fast float %5048, %4649
  %5050 = fmul fast float %5048, %4650
  %5051 = fmul fast float %5046, %5048
  br label %5052

; <label>:5052                                    ; preds = %5023, %4982
  %5053 = phi float [ %5049, %5023 ], [ %4649, %4982 ]
  %5054 = phi float [ %5050, %5023 ], [ %4650, %4982 ]
  %5055 = phi float [ %5051, %5023 ], [ %4651, %4982 ]
  %5056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.i32 %5056, 2
  %5058 = add nsw i32 %5057, -1
  %5059 = call i32 @dx.op.binary.i32(i32 37, i32 %5058, i32 0)  ; IMax(a,b)
  %5060 = shl i32 %5019, 2
  %5061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.i32 %5061, 0
  %5063 = lshr i32 %5062, 16
  %5064 = and i32 %5062, 65535
  %5065 = lshr i32 %5062, 21
  %5066 = lshr i32 %5064, 5
  %5067 = call i32 @dx.op.binary.i32(i32 40, i32 %5066, i32 %5059)  ; UMin(a,b)
  %5068 = icmp ugt i32 %5065, %5067
  br i1 %5068, label %5450, label %5069

; <label>:5069                                    ; preds = %5052
  br label %5070

; <label>:5070                                    ; preds = %5439, %5069
  %5071 = phi float [ %5440, %5439 ], [ 0.000000e+00, %5069 ]
  %5072 = phi float [ %5441, %5439 ], [ 0.000000e+00, %5069 ]
  %5073 = phi float [ %5442, %5439 ], [ 0.000000e+00, %5069 ]
  %5074 = phi float [ %5443, %5439 ], [ 1.000000e+00, %5069 ]
  %5075 = phi i32 [ %5447, %5439 ], [ %5065, %5069 ]
  %5076 = phi float [ %5444, %5439 ], [ 0.000000e+00, %5069 ]
  %5077 = phi float [ %5445, %5439 ], [ 0.000000e+00, %5069 ]
  %5078 = phi float [ %5446, %5439 ], [ 0.000000e+00, %5069 ]
  %5079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.i32 %5079, 2
  %5081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5015, i32 %5080, i32 %5075)  ; UMad(a,b,c)
  %5082 = shl i32 %5081, 2
  %5083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.i32 %5083, 0
  %5085 = shl i32 %5075, 5
  %5086 = sub nsw i32 %5063, %5085
  %5087 = call i32 @dx.op.binary.i32(i32 37, i32 %5086, i32 0)  ; IMax(a,b)
  %5088 = call i32 @dx.op.binary.i32(i32 38, i32 %5087, i32 31)  ; IMin(a,b)
  %5089 = sub nsw i32 1, %5063
  %5090 = add nsw i32 %5089, %5064
  %5091 = call i32 @dx.op.binary.i32(i32 37, i32 %5090, i32 0)  ; IMax(a,b)
  %5092 = call i32 @dx.op.binary.i32(i32 38, i32 %5091, i32 32)  ; IMin(a,b)
  %5093 = and i32 %5092, 31
  %5094 = shl i32 -1, %5093
  %5095 = xor i32 %5094, -1
  %5096 = and i32 %5088, 31
  %5097 = shl i32 %5095, %5096
  %5098 = icmp eq i32 %5092, 32
  %5099 = select i1 %5098, i32 -1, i32 %5097
  %5100 = and i32 %5099, %5084
  %5101 = icmp eq i32 %5100, 0
  br i1 %5101, label %5439, label %5102

; <label>:5102                                    ; preds = %5070
  br label %5103

; <label>:5103                                    ; preds = %5213, %5102
  %5104 = phi float [ %5214, %5213 ], [ %5071, %5102 ]
  %5105 = phi float [ %5215, %5213 ], [ %5072, %5102 ]
  %5106 = phi float [ %5216, %5213 ], [ %5073, %5102 ]
  %5107 = phi float [ %5217, %5213 ], [ %5074, %5102 ]
  %5108 = phi i32 [ %5116, %5213 ], [ %5100, %5102 ]
  %5109 = phi float [ %5218, %5213 ], [ %5076, %5102 ]
  %5110 = phi float [ %5219, %5213 ], [ %5077, %5102 ]
  %5111 = phi float [ %5220, %5213 ], [ %5078, %5102 ]
  %5112 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5108)  ; FirstbitLo(value)
  %5113 = add i32 %5112, %5085
  %5114 = and i32 %5112, 31
  %5115 = shl i32 1, %5114
  %5116 = xor i32 %5115, %5108
  %5117 = mul i32 %5113, 72
  %5118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = add i32 %5117, 12
  %5123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5122, i32 undef)  ; BufferLoad(srv,index,wot)
  %5124 = extractvalue %dx.types.ResRet.i32 %5123, 0
  %5125 = add i32 %5117, 16
  %5126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5125, i32 undef)  ; BufferLoad(srv,index,wot)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 0
  %5128 = extractvalue %dx.types.ResRet.f32 %5126, 1
  %5129 = extractvalue %dx.types.ResRet.f32 %5126, 2
  %5130 = add i32 %5117, 28
  %5131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5130, i32 undef)  ; BufferLoad(srv,index,wot)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = add i32 %5117, 32
  %5134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.f32 %5134, 0
  %5136 = extractvalue %dx.types.ResRet.f32 %5134, 1
  %5137 = extractvalue %dx.types.ResRet.f32 %5134, 2
  %5138 = extractvalue %dx.types.ResRet.f32 %5134, 3
  %5139 = add i32 %5117, 48
  %5140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 1
  %5143 = add i32 %5117, 56
  %5144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5143, i32 undef)  ; BufferLoad(srv,index,wot)
  %5145 = extractvalue %dx.types.ResRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.ResRet.f32 %5144, 1
  %5147 = add i32 %5117, 64
  %5148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5147, i32 undef)  ; BufferLoad(srv,index,wot)
  %5149 = extractvalue %dx.types.ResRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.ResRet.f32 %5148, 1
  %5151 = mul i32 %5113, 60
  %5152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5151, i32 undef)  ; BufferLoad(srv,index,wot)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.ResRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.ResRet.f32 %5152, 2
  %5156 = add i32 %5151, 12
  %5157 = add i32 %5151, 48
  %5158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = and i32 %5124, 32767
  %5163 = bitcast float %5119 to i32
  %5164 = icmp eq i32 %5163, -1
  %5165 = bitcast float %5120 to i32
  %5166 = and i32 %5124, 32768
  %5167 = icmp ne i32 %5166, 0
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5172 = fsub fast float %5153, %5169
  %5173 = fsub fast float %5154, %5170
  %5174 = fsub fast float %5155, %5171
  %5175 = fsub fast float %132, %5172
  %5176 = fsub fast float %133, %5173
  %5177 = fsub fast float %134, %5174
  %5178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5156, i32 undef)  ; BufferLoad(srv,index,wot)
  %5179 = extractvalue %dx.types.ResRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.ResRet.f32 %5178, 1
  %5181 = extractvalue %dx.types.ResRet.f32 %5178, 2
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = add i32 %5151, 24
  %5184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5183, i32 undef)  ; BufferLoad(srv,index,wot)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.ResRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.ResRet.f32 %5184, 2
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = add i32 %5151, 36
  %5190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5191, float %5192, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5196 = call float @dx.op.unary.f32(i32 6, float %5188)  ; FAbs(value)
  %5197 = call float @dx.op.unary.f32(i32 6, float %5194)  ; FAbs(value)
  %5198 = fsub fast float %5159, %5195
  %5199 = fsub fast float %5160, %5196
  %5200 = fsub fast float %5161, %5197
  %5201 = fmul fast float %5198, %5127
  %5202 = fmul fast float %5199, %5128
  %5203 = fmul fast float %5200, %5129
  %5204 = call float @dx.op.binary.f32(i32 36, float %5202, float %5203)  ; FMin(a,b)
  %5205 = call float @dx.op.binary.f32(i32 36, float %5201, float %5204)  ; FMin(a,b)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5207 = call float @dx.op.binary.f32(i32 36, float %5107, float %5206)  ; FMin(a,b)
  %5208 = uitofp i1 %5167 to float
  %5209 = fadd fast float %4423, 1.000000e+00
  %5210 = fsub fast float %5209, %5208
  %5211 = fmul fast float %5207, %5210
  %5212 = fcmp fast ogt float %5211, 0.000000e+00
  br i1 %5212, label %5222, label %5213

; <label>:5213                                    ; preds = %5364, %5103
  %5214 = phi float [ %5428, %5364 ], [ %5104, %5103 ]
  %5215 = phi float [ %5429, %5364 ], [ %5105, %5103 ]
  %5216 = phi float [ %5430, %5364 ], [ %5106, %5103 ]
  %5217 = phi float [ %5437, %5364 ], [ %5107, %5103 ]
  %5218 = phi float [ %5434, %5364 ], [ %5109, %5103 ]
  %5219 = phi float [ %5435, %5364 ], [ %5110, %5103 ]
  %5220 = phi float [ %5436, %5364 ], [ %5111, %5103 ]
  %5221 = icmp eq i32 %5108, %5115
  br i1 %5221, label %5438, label %5103

; <label>:5222                                    ; preds = %5103
  br i1 %5164, label %5280, label %5223

; <label>:5223                                    ; preds = %5222
  %5224 = fsub fast float -0.000000e+00, %5179
  %5225 = fsub fast float -0.000000e+00, %5180
  %5226 = fsub fast float -0.000000e+00, %5181
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float %5224, float %5225, float %5226)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = fsub fast float -0.000000e+00, %5227
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5224, float %5225, float %5226)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = fadd fast float %5229, %5142
  %5231 = fadd fast float %5141, %5229
  %5232 = fsub fast float -0.000000e+00, %5231
  %5233 = fcmp ogt float %5227, -0.000000e+00
  %5234 = select i1 %5233, float %5232, float %5230
  %5235 = call float @dx.op.unary.f32(i32 6, float %5228)  ; FAbs(value)
  %5236 = fdiv fast float 1.000000e+00, %5235
  %5237 = fmul fast float %5234, %5236
  %5238 = call float @dx.op.binary.f32(i32 35, float %5237, float 0.000000e+00)  ; FMax(a,b)
  %5239 = fsub fast float -0.000000e+00, %5185
  %5240 = fsub fast float -0.000000e+00, %5186
  %5241 = fsub fast float -0.000000e+00, %5187
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float %5239, float %5240, float %5241)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fsub fast float -0.000000e+00, %5242
  %5244 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5239, float %5240, float %5241)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fadd fast float %5244, %5146
  %5246 = fadd fast float %5145, %5244
  %5247 = fsub fast float -0.000000e+00, %5246
  %5248 = fcmp ogt float %5242, -0.000000e+00
  %5249 = select i1 %5248, float %5247, float %5245
  %5250 = call float @dx.op.unary.f32(i32 6, float %5243)  ; FAbs(value)
  %5251 = fdiv fast float 1.000000e+00, %5250
  %5252 = fmul fast float %5249, %5251
  %5253 = call float @dx.op.binary.f32(i32 35, float %5252, float 0.000000e+00)  ; FMax(a,b)
  %5254 = fsub fast float -0.000000e+00, %5191
  %5255 = fsub fast float -0.000000e+00, %5192
  %5256 = fsub fast float -0.000000e+00, %5193
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float %5254, float %5255, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = fsub fast float -0.000000e+00, %5257
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5254, float %5255, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = fadd fast float %5259, %5150
  %5261 = fadd fast float %5149, %5259
  %5262 = fsub fast float -0.000000e+00, %5261
  %5263 = fcmp ogt float %5257, -0.000000e+00
  %5264 = select i1 %5263, float %5262, float %5260
  %5265 = call float @dx.op.unary.f32(i32 6, float %5258)  ; FAbs(value)
  %5266 = fdiv fast float 1.000000e+00, %5265
  %5267 = fmul fast float %5264, %5266
  %5268 = call float @dx.op.binary.f32(i32 35, float %5267, float 0.000000e+00)  ; FMax(a,b)
  %5269 = call float @dx.op.binary.f32(i32 36, float %5253, float %5268)  ; FMin(a,b)
  %5270 = call float @dx.op.binary.f32(i32 36, float %5238, float %5269)  ; FMin(a,b)
  %5271 = fmul fast float %5270, %5053
  %5272 = fmul fast float %5270, %5054
  %5273 = fmul fast float %5270, %5055
  %5274 = fadd fast float %5271, %132
  %5275 = fadd fast float %5272, %133
  %5276 = fadd fast float %5273, %134
  %5277 = fsub fast float %5274, %5119
  %5278 = fsub fast float %5275, %5120
  %5279 = fsub fast float %5276, %5121
  br label %5287

; <label>:5280                                    ; preds = %5222
  %5281 = fmul fast float %5053, 8.096000e+03
  %5282 = fmul fast float %5054, 8.096000e+03
  %5283 = fmul fast float %5055, 8.096000e+03
  %5284 = fadd fast float %5281, %132
  %5285 = fadd fast float %5282, %133
  %5286 = fadd fast float %5283, %134
  br label %5287

; <label>:5287                                    ; preds = %5280, %5223
  %5288 = phi float [ %5053, %5280 ], [ %5277, %5223 ]
  %5289 = phi float [ %5054, %5280 ], [ %5278, %5223 ]
  %5290 = phi float [ %5055, %5280 ], [ %5279, %5223 ]
  %5291 = phi float [ %5284, %5280 ], [ %5274, %5223 ]
  %5292 = phi float [ %5285, %5280 ], [ %5275, %5223 ]
  %5293 = phi float [ %5286, %5280 ], [ %5276, %5223 ]
  %5294 = fcmp fast olt float %5138, 1.000000e+00
  br i1 %5294, label %5295, label %5326, !dx.controlflow.hints !87

; <label>:5295                                    ; preds = %5287
  %5296 = fmul fast float %5290, %5136
  %5297 = fmul fast float %5289, %5137
  %5298 = fsub fast float %5296, %5297
  %5299 = fmul fast float %5288, %5137
  %5300 = fmul fast float %5290, %5135
  %5301 = fsub fast float %5299, %5300
  %5302 = fmul fast float %5289, %5135
  %5303 = fmul fast float %5288, %5136
  %5304 = fsub fast float %5302, %5303
  %5305 = fmul fast float %5298, 2.000000e+00
  %5306 = fmul fast float %5301, 2.000000e+00
  %5307 = fmul fast float %5304, 2.000000e+00
  %5308 = fmul fast float %5305, %5138
  %5309 = fmul fast float %5306, %5138
  %5310 = fmul fast float %5307, %5138
  %5311 = fmul fast float %5307, %5136
  %5312 = fmul fast float %5306, %5137
  %5313 = fmul fast float %5305, %5137
  %5314 = fmul fast float %5307, %5135
  %5315 = fmul fast float %5306, %5135
  %5316 = fmul fast float %5305, %5136
  %5317 = fadd fast float %5311, %5288
  %5318 = fadd fast float %5317, %5308
  %5319 = fsub fast float %5318, %5312
  %5320 = fsub fast float %5289, %5314
  %5321 = fadd fast float %5320, %5309
  %5322 = fadd fast float %5321, %5313
  %5323 = fadd fast float %5310, %5290
  %5324 = fsub fast float %5323, %5316
  %5325 = fadd fast float %5324, %5315
  br label %5326

; <label>:5326                                    ; preds = %5295, %5287
  %5327 = phi float [ %5319, %5295 ], [ %5288, %5287 ]
  %5328 = phi float [ %5322, %5295 ], [ %5289, %5287 ]
  %5329 = phi float [ %5325, %5295 ], [ %5290, %5287 ]
  br i1 %5164, label %5361, label %5330

; <label>:5330                                    ; preds = %5326
  %5331 = fmul fast float %4624, 0x400187C840000000
  %5332 = fadd fast float %5331, 0xC00EFC2120000000
  %5333 = fmul fast float %5332, %4624
  %5334 = fadd fast float %5333, 0x3FE5D16340000000
  %5335 = fmul fast float %5334, %4624
  %5336 = fadd fast float %5335, 1.000000e+00
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fsub fast float %5291, %132
  %5339 = fsub fast float %5292, %133
  %5340 = fsub fast float %5293, %134
  %5341 = fsub fast float %5291, %5119
  %5342 = fsub fast float %5292, %5120
  %5343 = fsub fast float %5293, %5121
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5338, float %5339, float %5340)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = fadd fast float %5345, 0x3EE4F8B580000000
  %5347 = fdiv fast float %5344, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = ashr i32 %5348, 1
  %5350 = add nsw i32 %5349, 532487669
  %5351 = bitcast i32 %5350 to float
  %5352 = fmul fast float %5351, %5337
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = fmul fast float %5353, 0x4009981AE0000000
  %5355 = fsub fast float 0x40111BBD80000000, %5354
  %5356 = fmul fast float %5355, %5353
  %5357 = fadd fast float %5356, 0xC0009F6020000000
  %5358 = fmul fast float %5357, %5353
  %5359 = fadd fast float %5358, 1.000000e+00
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  br label %5364

; <label>:5361                                    ; preds = %5326
  %5362 = icmp ne i32 %5165, -1
  %5363 = zext i1 %5362 to i32
  br label %5364

; <label>:5364                                    ; preds = %5361, %5330
  %5365 = phi float [ %4624, %5361 ], [ %5360, %5330 ]
  %5366 = phi i32 [ %5363, %5361 ], [ 0, %5330 ]
  %5367 = fmul float %5365, 5.000000e+00
  %5368 = fsub float 5.000000e+00, %5367
  %5369 = icmp ne i32 %5366, 0
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5372 = fadd fast float %5371, %5368
  %5373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5372)  ; FMax(a,b)
  %5374 = call float @dx.op.unary.f32(i32 6, float %5327)  ; FAbs(value)
  %5375 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5376 = fadd fast float %5375, %5374
  %5377 = call float @dx.op.unary.f32(i32 6, float %5329)  ; FAbs(value)
  %5378 = fadd fast float %5376, %5377
  %5379 = fcmp fast oeq float %5378, 0.000000e+00
  %5380 = fdiv fast float 1.000000e+00, %5378
  %5381 = select i1 %5379, float 1.000000e+00, float %5380
  %5382 = fmul fast float %5381, %5327
  %5383 = fmul fast float %5381, %5328
  %5384 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5385 = call float @dx.op.unary.f32(i32 6, float %5382)  ; FAbs(value)
  %5386 = fsub fast float 1.000000e+00, %5384
  %5387 = fsub fast float 1.000000e+00, %5385
  %5388 = fcmp fast oge float %5382, 0.000000e+00
  %5389 = fcmp fast oge float %5383, 0.000000e+00
  %5390 = select i1 %5388, float 1.000000e+00, float -1.000000e+00
  %5391 = select i1 %5389, float 1.000000e+00, float -1.000000e+00
  %5392 = fcmp fast ole float %5329, 0.000000e+00
  %5393 = fmul fast float %5390, %5386
  %5394 = fmul fast float %5391, %5387
  %5395 = select i1 %5392, float %5393, float %5382
  %5396 = select i1 %5392, float %5394, float %5383
  %5397 = fmul fast float %5395, 5.000000e-01
  %5398 = fmul fast float %5396, 5.000000e-01
  %5399 = fadd fast float %5397, 5.000000e-01
  %5400 = fadd fast float %5398, 5.000000e-01
  %5401 = uitofp i32 %5162 to float
  %5402 = call float @dx.op.binary.f32(i32 36, float %5373, float 3.000000e+00)  ; FMin(a,b)
  %5403 = fadd fast float %5402, 2.000000e+00
  %5404 = call float @dx.op.unary.f32(i32 21, float %5403)  ; Exp(value)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5406 = fmul fast float %5405, %5404
  %5407 = fmul fast float %5406, 2.000000e+00
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5399, %5408
  %5410 = fmul fast float %5400, %5408
  %5411 = fadd fast float %5409, %5406
  %5412 = fadd fast float %5410, %5406
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5411, float %5412, float %5401, float undef, i32 0, i32 0, i32 undef, float %5373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 3
  %5419 = fmul fast float %5418, %5132
  %5420 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %5419)  ; FMin(a,b)
  %5421 = select i1 %5369, float %5420, float %5419
  %5422 = fmul fast float %5414, %5211
  %5423 = fmul fast float %5422, %5421
  %5424 = fmul fast float %5415, %5211
  %5425 = fmul fast float %5424, %5421
  %5426 = fmul fast float %5416, %5211
  %5427 = fmul fast float %5426, %5421
  %5428 = fadd fast float %5423, %5104
  %5429 = fadd fast float %5425, %5105
  %5430 = fadd fast float %5427, %5106
  %5431 = fmul fast float %5291, %5211
  %5432 = fmul fast float %5292, %5211
  %5433 = fmul fast float %5293, %5211
  %5434 = fadd fast float %5431, %5109
  %5435 = fadd fast float %5432, %5110
  %5436 = fadd fast float %5433, %5111
  %5437 = fsub fast float %5107, %5211
  br label %5213

; <label>:5438                                    ; preds = %5213
  br label %5439

; <label>:5439                                    ; preds = %5438, %5070
  %5440 = phi float [ %5071, %5070 ], [ %5214, %5438 ]
  %5441 = phi float [ %5072, %5070 ], [ %5215, %5438 ]
  %5442 = phi float [ %5073, %5070 ], [ %5216, %5438 ]
  %5443 = phi float [ %5074, %5070 ], [ %5217, %5438 ]
  %5444 = phi float [ %5076, %5070 ], [ %5218, %5438 ]
  %5445 = phi float [ %5077, %5070 ], [ %5219, %5438 ]
  %5446 = phi float [ %5078, %5070 ], [ %5220, %5438 ]
  %5447 = add i32 %5075, 1
  %5448 = icmp ugt i32 %5447, %5067
  br i1 %5448, label %5449, label %5070, !llvm.loop !88

; <label>:5449                                    ; preds = %5439
  br label %5450

; <label>:5450                                    ; preds = %5449, %5052
  %5451 = phi float [ 0.000000e+00, %5052 ], [ %5440, %5449 ]
  %5452 = phi float [ 0.000000e+00, %5052 ], [ %5441, %5449 ]
  %5453 = phi float [ 0.000000e+00, %5052 ], [ %5442, %5449 ]
  %5454 = phi float [ 0.000000e+00, %5052 ], [ %5444, %5449 ]
  %5455 = phi float [ 0.000000e+00, %5052 ], [ %5445, %5449 ]
  %5456 = phi float [ 0.000000e+00, %5052 ], [ %5446, %5449 ]
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = select i1 %174, float 0.000000e+00, float %5451
  %5459 = select i1 %174, float %5457, float %5452
  %5460 = select i1 %174, float 0.000000e+00, float %5453
  %5461 = fcmp fast olt float %4976, 0.000000e+00
  %5462 = call float @dx.op.unary.f32(i32 6, float %4976)  ; FAbs(value)
  %5463 = fmul fast float %5462, %4977
  %5464 = fmul fast float %5462, %4978
  %5465 = fmul fast float %5462, %4979
  %5466 = select i1 %5461, float %4977, float %5463
  %5467 = select i1 %5461, float %4978, float %5464
  %5468 = select i1 %5461, float %4979, float %5465
  %5469 = fsub fast float 1.000000e+00, %5462
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5471 = fmul fast float %5470, %5458
  %5472 = fmul fast float %5470, %5459
  %5473 = fmul fast float %5470, %5460
  %5474 = fadd fast float %5466, %5471
  %5475 = fadd fast float %5467, %5472
  %5476 = fadd fast float %5468, %5473
  %5477 = fcmp fast une float %4734, 0.000000e+00
  br i1 %5477, label %5578, label %5478

; <label>:5478                                    ; preds = %5450
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5488 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5493 = extractvalue %dx.types.CBufRet.f32 %5489, 3
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %5492, float %4649, float %4650, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5490, float %5491, float %5492)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %5490, float %5491, float %5492)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fadd fast float %4624, -1.000000e+00
  %5498 = fsub fast float %5495, %5496
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 2
  %5501 = fmul fast float %5500, %5495
  %5502 = fdiv fast float 1.600000e+02, %5501
  %5503 = fmul fast float %5497, %5497
  %5504 = fmul fast float %5503, 0xBFB5B17960000000
  %5505 = fmul fast float %5504, %5498
  %5506 = fmul fast float %5505, %5502
  %5507 = call float @dx.op.unary.f32(i32 21, float %5506)  ; Exp(value)
  %5508 = fmul fast float %5507, 0x3FF04B2960000000
  %5509 = fsub fast float 0x3FF04B2960000000, %5508
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5510, 4.000000e+00
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.CBufRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.CBufRet.f32 %5512, 2
  %5516 = fadd fast float %5513, %5454
  %5517 = fadd fast float %5514, %5455
  %5518 = fadd fast float %5515, %5456
  %5519 = fmul fast float %5516, %5480
  %5520 = call float @dx.op.tertiary.f32(i32 46, float %5517, float %5481, float %5519)  ; FMad(a,b,c)
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5482, float %5520)  ; FMad(a,b,c)
  %5522 = fadd fast float %5521, %5483
  %5523 = fmul fast float %5516, %5485
  %5524 = call float @dx.op.tertiary.f32(i32 46, float %5517, float %5486, float %5523)  ; FMad(a,b,c)
  %5525 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5487, float %5524)  ; FMad(a,b,c)
  %5526 = fadd fast float %5525, %5488
  %5527 = fmul fast float %5516, %5490
  %5528 = call float @dx.op.tertiary.f32(i32 46, float %5517, float %5491, float %5527)  ; FMad(a,b,c)
  %5529 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5492, float %5528)  ; FMad(a,b,c)
  %5530 = fadd fast float %5529, %5493
  %5531 = fdiv fast float %5522, %5530
  %5532 = fdiv fast float %5526, %5530
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = fmul fast float %5534, %5531
  %5537 = fmul fast float %5535, %5532
  %5538 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5539 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5540 = fadd fast float %5536, %5538
  %5541 = fadd fast float %5537, %5539
  %5542 = fmul fast float %5494, 8.000000e+00
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5540, 2.000000e+00
  %5545 = fmul fast float %5541, 2.000000e+00
  %5546 = fadd fast float %5544, -1.000000e+00
  %5547 = fadd fast float %5545, -1.000000e+00
  %5548 = fmul fast float %5546, %5546
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = fmul fast float %5547, %5547
  %5552 = fsub fast float 1.000000e+00, %5551
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fmul fast float %4734, %5550
  %5555 = fmul fast float %5554, %5553
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fmul fast float %5556, %5543
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5540, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float %5511)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = select i1 %174, float 0.000000e+00, float %5560
  %5563 = select i1 %174, float 0.000000e+00, float %5561
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5566 = fmul fast float %5565, %5559
  %5567 = fmul fast float %5562, %5565
  %5568 = fmul fast float %5563, %5565
  %5569 = fsub fast float %5566, %5458
  %5570 = fsub fast float %5567, %5459
  %5571 = fsub fast float %5568, %5460
  %5572 = fmul fast float %5569, %5557
  %5573 = fmul fast float %5570, %5557
  %5574 = fmul fast float %5571, %5557
  %5575 = fadd fast float %5572, %5458
  %5576 = fadd fast float %5573, %5459
  %5577 = fadd fast float %5574, %5460
  br label %5578

; <label>:5578                                    ; preds = %5478, %5450, %4975, %4708
  %5579 = phi float [ %4977, %4975 ], [ %5474, %5450 ], [ 0.000000e+00, %4708 ], [ %5575, %5478 ]
  %5580 = phi float [ %4978, %4975 ], [ %5475, %5450 ], [ 0.000000e+00, %4708 ], [ %5576, %5478 ]
  %5581 = phi float [ %4979, %4975 ], [ %5476, %5450 ], [ 0.000000e+00, %4708 ], [ %5577, %5478 ]
  %5582 = fmul fast float %5579, %4709
  %5583 = fmul fast float %5580, %4710
  %5584 = fmul fast float %5581, %4711
  %5585 = fadd fast float %5582, %4006
  %5586 = fmul fast float %5585, %4010
  %5587 = fadd fast float %5583, %4007
  %5588 = fmul fast float %5587, %4010
  %5589 = fadd fast float %5584, %4008
  %5590 = fmul fast float %5589, %4010
  %5591 = bitcast i32 %4667 to float
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 3
  %5594 = fcmp fast oeq float %5593, 0.000000e+00
  br i1 %5594, label %5829, label %5595

; <label>:5595                                    ; preds = %5578
  %5596 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5592, 2
  %5599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.CBufRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.CBufRet.f32 %5599, 2
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = select i1 %174, float %5604, float %5600
  %5608 = select i1 %174, float %5606, float %5601
  %5609 = select i1 %174, float %5605, float %5602
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5612 = fcmp fast une float %5611, 0.000000e+00
  br i1 %5612, label %5613, label %5630

; <label>:5613                                    ; preds = %5595
  %5614 = fptoui float %73 to i32
  %5615 = fptoui float %74 to i32
  %5616 = lshr i32 %5614, 4
  %5617 = lshr i32 %5615, 4
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = fptoui float %5619 to i32
  %5621 = add i32 %5620, 15
  %5622 = lshr i32 %5621, 4
  %5623 = mul i32 %5622, %5617
  %5624 = add i32 %5623, %5616
  %5625 = shl i32 %5624, 3
  %5626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5625, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.i32 %5626, 0
  %5628 = and i32 %5627, -268435456
  %5629 = icmp eq i32 %5628, -1342177280
  br i1 %5629, label %5635, label %5630

; <label>:5630                                    ; preds = %5613, %5595
  %5631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5632 = extractvalue %dx.types.ResRet.f32 %5631, 0
  %5633 = extractvalue %dx.types.ResRet.f32 %5631, 1
  %5634 = extractvalue %dx.types.ResRet.f32 %5631, 2
  br label %5635

; <label>:5635                                    ; preds = %5630, %5613
  %5636 = phi float [ %5632, %5630 ], [ 0.000000e+00, %5613 ]
  %5637 = phi float [ %5633, %5630 ], [ 0.000000e+00, %5613 ]
  %5638 = phi float [ %5634, %5630 ], [ 0.000000e+00, %5613 ]
  %5639 = call float @dx.op.binary.f32(i32 36, float %5637, float %5638)  ; FMin(a,b)
  %5640 = call float @dx.op.binary.f32(i32 36, float %5636, float %5639)  ; FMin(a,b)
  %5641 = fcmp fast ogt float %5640, 0.000000e+00
  br i1 %5641, label %5642, label %5829, !dx.controlflow.hints !90

; <label>:5642                                    ; preds = %5635
  %5643 = fmul fast float %5636, %5607
  %5644 = fmul fast float %5637, %5608
  %5645 = fmul fast float %5638, %5609
  %5646 = fsub fast float %5596, %4614
  %5647 = fsub fast float %5597, %4613
  %5648 = fsub fast float %5598, %4612
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 25, float %5649)  ; Rsqrt(value)
  %5651 = fmul fast float %5650, %5646
  %5652 = fmul fast float %5650, %5647
  %5653 = fmul fast float %5650, %5648
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4610, float %4609, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5656
  %5658 = fmul fast float %5657, %5591
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5659, %5656
  %5661 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fmul fast float %5661, %5661
  %5663 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5664 = fsub fast float 1.000000e+00, %4661
  %5665 = fmul fast float %4643, %4643
  %5666 = fmul fast float %5665, %5664
  %5667 = fadd fast float %5666, %4661
  %5668 = bitcast float %5667 to i32
  %5669 = ashr i32 %5668, 1
  %5670 = add nsw i32 %5669, 532487669
  %5671 = bitcast i32 %5670 to float
  %5672 = fadd fast float %5671, %4643
  %5673 = fmul fast float %4661, %5662
  %5674 = fsub fast float 1.000000e+00, %5662
  %5675 = fadd fast float %5674, %5673
  %5676 = fmul fast float %5663, %5663
  %5677 = fmul fast float %5676, %5664
  %5678 = fadd fast float %5677, %4661
  %5679 = bitcast float %5678 to i32
  %5680 = ashr i32 %5679, 1
  %5681 = add nsw i32 %5680, 532487669
  %5682 = bitcast i32 %5681 to float
  %5683 = fadd fast float %5682, %5663
  %5684 = fmul fast float %5675, %5675
  %5685 = fmul fast float %5684, %5672
  %5686 = fmul fast float %5685, %5683
  %5687 = fdiv fast float 0x3FF0A00000000000, %5686
  %5688 = fmul fast float %5687, %4661
  %5689 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = bitcast float %5690 to i32
  %5692 = sitofp i32 %5691 to float
  %5693 = fmul fast float %5692, 5.000000e+00
  %5694 = fadd fast float %5693, 0xC1EFBF8940000000
  %5695 = fptosi float %5694 to i32
  %5696 = bitcast i32 %5695 to float
  %5697 = fsub fast float 1.000000e+00, %4618
  %5698 = fsub fast float 1.000000e+00, %4619
  %5699 = fsub fast float 1.000000e+00, %4641
  %5700 = fmul fast float %5696, %5697
  %5701 = fmul fast float %5696, %5698
  %5702 = fmul fast float %5696, %5699
  %5703 = fadd fast float %5700, %4618
  %5704 = fadd fast float %5701, %4619
  %5705 = fadd fast float %5702, %4641
  br i1 %4681, label %5706, label %5729

; <label>:5706                                    ; preds = %5642
  %5707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %5689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5708 = extractvalue %dx.types.ResRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.ResRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.ResRet.f32 %5707, 2
  %5711 = fadd fast float %5708, -5.000000e-01
  %5712 = fadd fast float %5709, -5.000000e-01
  %5713 = fadd fast float %5710, -5.000000e-01
  %5714 = fmul fast float %4618, 4.000000e+00
  %5715 = fmul fast float %5714, %5697
  %5716 = fmul fast float %5715, %5711
  %5717 = fmul fast float %4619, 4.000000e+00
  %5718 = fmul fast float %5717, %5698
  %5719 = fmul fast float %5718, %5712
  %5720 = fmul fast float %4641, 4.000000e+00
  %5721 = fmul fast float %5720, %5699
  %5722 = fmul fast float %5721, %5713
  %5723 = fadd fast float %5716, %5703
  %5724 = fadd fast float %5719, %5704
  %5725 = fadd fast float %5722, %5705
  %5726 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  br label %5729

; <label>:5729                                    ; preds = %5706, %5642
  %5730 = phi float [ %5726, %5706 ], [ %5703, %5642 ]
  %5731 = phi float [ %5727, %5706 ], [ %5704, %5642 ]
  %5732 = phi float [ %5728, %5706 ], [ %5705, %5642 ]
  %5733 = fmul fast float %5654, 9.843750e-01
  %5734 = fadd fast float %5733, 7.812500e-03
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5734, float %4671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 3
  %5738 = fmul fast float %5736, %4618
  %5739 = fmul fast float %5736, %4619
  %5740 = fmul fast float %5736, %4641
  %5741 = fadd fast float %5738, %5737
  %5742 = fadd fast float %5739, %5737
  %5743 = fadd fast float %5740, %5737
  br i1 %4681, label %5744, label %5767

; <label>:5744                                    ; preds = %5729
  %5745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %5654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.ResRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.ResRet.f32 %5745, 2
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fadd fast float %5747, -5.000000e-01
  %5751 = fadd fast float %5748, -5.000000e-01
  %5752 = fmul fast float %4618, 4.000000e+00
  %5753 = fmul fast float %5752, %5697
  %5754 = fmul fast float %5753, %5749
  %5755 = fmul fast float %4619, 4.000000e+00
  %5756 = fmul fast float %5755, %5698
  %5757 = fmul fast float %5756, %5750
  %5758 = fmul fast float %4641, 4.000000e+00
  %5759 = fmul fast float %5758, %5699
  %5760 = fmul fast float %5759, %5751
  %5761 = fadd fast float %5754, %5741
  %5762 = fadd fast float %5757, %5742
  %5763 = fadd fast float %5760, %5743
  %5764 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5765 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  br label %5767

; <label>:5767                                    ; preds = %5744, %5729
  %5768 = phi float [ %5764, %5744 ], [ %5741, %5729 ]
  %5769 = phi float [ %5765, %5744 ], [ %5742, %5729 ]
  %5770 = phi float [ %5766, %5744 ], [ %5743, %5729 ]
  %5771 = call float @dx.op.binary.f32(i32 35, float %5769, float %5770)  ; FMax(a,b)
  %5772 = call float @dx.op.binary.f32(i32 35, float %5768, float %5771)  ; FMax(a,b)
  %5773 = fsub fast float 1.000000e+00, %5772
  %5774 = fmul fast float %5730, %5688
  %5775 = fmul fast float %5731, %5688
  %5776 = fmul fast float %5732, %5688
  %5777 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = fcmp fast ogt float %5777, 0x3E7FF19E20000000
  %5779 = fdiv fast float 1.000000e+00, %5777
  %5780 = select i1 %5778, float %5779, float 0.000000e+00
  %5781 = fmul fast float %5780, %4621
  %5782 = fmul fast float %5780, %4622
  %5783 = fmul fast float %5780, %4623
  %5784 = fadd fast float %5781, -1.000000e+00
  %5785 = fadd fast float %5782, -1.000000e+00
  %5786 = fadd fast float %5783, -1.000000e+00
  %5787 = fmul fast float %5784, 5.000000e-01
  %5788 = fmul fast float %5785, 5.000000e-01
  %5789 = fmul fast float %5786, 5.000000e-01
  %5790 = fadd fast float %5787, 1.000000e+00
  %5791 = fadd fast float %5788, 1.000000e+00
  %5792 = fadd fast float %5789, 1.000000e+00
  %5793 = fsub fast float 1.000000e+00, %5655
  %5794 = bitcast float %5793 to i32
  %5795 = sitofp i32 %5794 to float
  %5796 = fmul fast float %5795, 5.000000e+00
  %5797 = fadd fast float %5796, 0xC1EFBF8940000000
  %5798 = fptosi float %5797 to i32
  %5799 = bitcast i32 %5798 to float
  %5800 = fmul fast float %5799, %4014
  %5801 = fmul fast float %5773, %5800
  %5802 = fmul fast float %5801, %5790
  %5803 = fmul fast float %5801, %5791
  %5804 = fmul fast float %5801, %5792
  %5805 = fadd fast float %5802, %5774
  %5806 = fadd fast float %5803, %5775
  %5807 = fadd fast float %5804, %5776
  %5808 = fmul fast float %5660, %5643
  %5809 = fmul fast float %5808, %5805
  %5810 = fmul fast float %5660, %5644
  %5811 = fmul fast float %5810, %5806
  %5812 = fmul fast float %5660, %5645
  %5813 = fmul fast float %5812, %5807
  %5814 = fmul fast float %5643, %4010
  %5815 = fmul fast float %5814, %5660
  %5816 = fmul fast float %5815, %5773
  %5817 = fmul fast float %5644, %4010
  %5818 = fmul fast float %5817, %5660
  %5819 = fmul fast float %5818, %5773
  %5820 = fmul fast float %5645, %4010
  %5821 = fmul fast float %5820, %5660
  %5822 = fmul fast float %5821, %5773
  %5823 = fadd fast float %5809, %5585
  %5824 = fmul fast float %5823, %4010
  %5825 = fadd fast float %5811, %5587
  %5826 = fmul fast float %5825, %4010
  %5827 = fadd fast float %5813, %5589
  %5828 = fmul fast float %5827, %4010
  br label %5829

; <label>:5829                                    ; preds = %5767, %5635, %5578
  %5830 = phi float [ %5586, %5578 ], [ %5586, %5635 ], [ %5824, %5767 ]
  %5831 = phi float [ %5588, %5578 ], [ %5588, %5635 ], [ %5826, %5767 ]
  %5832 = phi float [ %5590, %5578 ], [ %5590, %5635 ], [ %5828, %5767 ]
  %5833 = phi float [ 0.000000e+00, %5578 ], [ 0.000000e+00, %5635 ], [ %5816, %5767 ]
  %5834 = phi float [ 0.000000e+00, %5578 ], [ 0.000000e+00, %5635 ], [ %5819, %5767 ]
  %5835 = phi float [ 0.000000e+00, %5578 ], [ 0.000000e+00, %5635 ], [ %5822, %5767 ]
  %5836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.i32 %5836, 0
  %5838 = icmp eq i32 %5837, 0
  br i1 %5838, label %6285, label %5839

; <label>:5839                                    ; preds = %5829
  %5840 = fptoui float %73 to i32
  %5841 = fptoui float %74 to i32
  %5842 = lshr i32 %5840, 4
  %5843 = lshr i32 %5841, 4
  %5844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.i32 %5844, 0
  %5846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5843, i32 %5845, i32 %5842)  ; UMad(a,b,c)
  %5847 = add nsw i32 %5837, -1
  %5848 = call i32 @dx.op.binary.i32(i32 37, i32 %5847, i32 0)  ; IMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %5850 = fptoui float %5849 to i32
  %5851 = lshr i32 %5850, 5
  %5852 = call i32 @dx.op.binary.i32(i32 40, i32 %5851, i32 8191)  ; UMin(a,b)
  %5853 = shl i32 %5852, 2
  %5854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.i32 %5854, 0
  %5856 = lshr i32 %5855, 16
  %5857 = and i32 %5855, 65535
  %5858 = lshr i32 %5855, 21
  %5859 = lshr i32 %5857, 5
  %5860 = call i32 @dx.op.binary.i32(i32 40, i32 %5859, i32 %5848)  ; UMin(a,b)
  %5861 = icmp ugt i32 %5858, %5860
  br i1 %5861, label %6285, label %5862

; <label>:5862                                    ; preds = %5839
  br label %5863

; <label>:5863                                    ; preds = %6275, %5862
  %5864 = phi i32 [ %6282, %6275 ], [ %5858, %5862 ]
  %5865 = phi float [ %6276, %6275 ], [ %5830, %5862 ]
  %5866 = phi float [ %6277, %6275 ], [ %5831, %5862 ]
  %5867 = phi float [ %6278, %6275 ], [ %5832, %5862 ]
  %5868 = phi float [ %6279, %6275 ], [ %5833, %5862 ]
  %5869 = phi float [ %6280, %6275 ], [ %5834, %5862 ]
  %5870 = phi float [ %6281, %6275 ], [ %5835, %5862 ]
  %5871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.i32 %5871, 0
  %5873 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5846, i32 %5872, i32 %5864)  ; UMad(a,b,c)
  %5874 = shl i32 %5873, 2
  %5875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5874, i32 undef)  ; BufferLoad(srv,index,wot)
  %5876 = extractvalue %dx.types.ResRet.i32 %5875, 0
  %5877 = shl i32 %5864, 5
  %5878 = sub nsw i32 %5856, %5877
  %5879 = call i32 @dx.op.binary.i32(i32 37, i32 %5878, i32 0)  ; IMax(a,b)
  %5880 = call i32 @dx.op.binary.i32(i32 38, i32 %5879, i32 31)  ; IMin(a,b)
  %5881 = sub nsw i32 1, %5856
  %5882 = add nsw i32 %5881, %5857
  %5883 = call i32 @dx.op.binary.i32(i32 37, i32 %5882, i32 0)  ; IMax(a,b)
  %5884 = call i32 @dx.op.binary.i32(i32 38, i32 %5883, i32 32)  ; IMin(a,b)
  %5885 = and i32 %5884, 31
  %5886 = shl i32 -1, %5885
  %5887 = xor i32 %5886, -1
  %5888 = and i32 %5880, 31
  %5889 = shl i32 %5887, %5888
  %5890 = icmp eq i32 %5884, 32
  %5891 = select i1 %5890, i32 -1, i32 %5889
  %5892 = and i32 %5891, %5876
  %5893 = icmp eq i32 %5892, 0
  br i1 %5893, label %6275, label %5894

; <label>:5894                                    ; preds = %5863
  br label %5895

; <label>:5895                                    ; preds = %5975, %5894
  %5896 = phi i32 [ %5907, %5975 ], [ %5892, %5894 ]
  %5897 = phi float [ %5976, %5975 ], [ %5865, %5894 ]
  %5898 = phi float [ %5977, %5975 ], [ %5866, %5894 ]
  %5899 = phi float [ %5978, %5975 ], [ %5867, %5894 ]
  %5900 = phi float [ %5979, %5975 ], [ %5868, %5894 ]
  %5901 = phi float [ %5980, %5975 ], [ %5869, %5894 ]
  %5902 = phi float [ %5981, %5975 ], [ %5870, %5894 ]
  %5903 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5896)  ; FirstbitLo(value)
  %5904 = add i32 %5903, %5877
  %5905 = and i32 %5903, 31
  %5906 = shl i32 1, %5905
  %5907 = xor i32 %5906, %5896
  %5908 = mul i32 %5904, 112
  %5909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5908, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = or i32 %5908, 12
  %5914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5913, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = add i32 %5908, 44
  %5917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5916, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = add i32 %5908, 48
  %5920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5919, i32 undef)  ; BufferLoad(srv,index,wot)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.ResRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.ResRet.f32 %5920, 2
  %5924 = add i32 %5908, 80
  %5925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = select i1 %174, float %5926, float %5910
  %5930 = select i1 %174, float %5928, float %5911
  %5931 = select i1 %174, float %5927, float %5912
  %5932 = fsub fast float %5921, %132
  %5933 = fsub fast float %5922, %133
  %5934 = fsub fast float %5923, %134
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %5934, float %5932, float %5933, float %5934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = call float @dx.op.unary.f32(i32 24, float %5935)  ; Sqrt(value)
  %5937 = fdiv fast float 1.000000e+00, %5936
  %5938 = fmul fast float %5937, %5932
  %5939 = fmul fast float %5937, %5933
  %5940 = fmul fast float %5937, %5934
  %5941 = fadd fast float %5936, %5915
  %5942 = fdiv fast float 1.000000e+00, %5941
  %5943 = fmul float %5918, %5942
  %5944 = fmul float %5943, %5943
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = and i32 %5906, %5892
  %5947 = icmp eq i32 %5946, 0
  br i1 %5947, label %5970, label %5948, !dx.controlflow.hints !91

; <label>:5948                                    ; preds = %5895
  %5949 = lshr i32 %5840, 5
  %5950 = lshr i32 %5841, 5
  %5951 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %5949, i32 %5950, i32 %5904, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5952 = extractvalue %dx.types.ResRet.i32 %5951, 0
  %5953 = and i32 %5952, 3
  %5954 = icmp eq i32 %5953, 0
  %5955 = select i1 %5954, float 1.000000e+00, float 0.000000e+00
  %5956 = icmp eq i32 %5953, 3
  br i1 %5956, label %5957, label %5970

; <label>:5957                                    ; preds = %5948
  %5958 = lshr i32 %5952, 10
  %5959 = and i32 %5958, 8160
  %5960 = and i32 %5841, 31
  %5961 = or i32 %5959, %5960
  %5962 = lshr i32 %5952, 1
  %5963 = and i32 %5962, 16352
  %5964 = and i32 %5840, 31
  %5965 = or i32 %5963, %5964
  %5966 = lshr i32 %5952, 23
  %5967 = and i32 %5966, 255
  %5968 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5965, i32 %5961, i32 %5967, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  br label %5970

; <label>:5970                                    ; preds = %5957, %5948, %5895
  %5971 = phi float [ %5969, %5957 ], [ %5955, %5948 ], [ 0.000000e+00, %5895 ]
  %5972 = call float @dx.op.binary.f32(i32 36, float %5971, float %5971)  ; FMin(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5971, float %5972)  ; FMin(a,b)
  %5974 = fcmp fast ogt float %5973, 0.000000e+00
  br i1 %5974, label %5983, label %5975, !dx.controlflow.hints !92

; <label>:5975                                    ; preds = %6215, %5970
  %5976 = phi float [ %5897, %5970 ], [ %6271, %6215 ]
  %5977 = phi float [ %5898, %5970 ], [ %6272, %6215 ]
  %5978 = phi float [ %5899, %5970 ], [ %6273, %6215 ]
  %5979 = phi float [ %5900, %5970 ], [ %6265, %6215 ]
  %5980 = phi float [ %5901, %5970 ], [ %6266, %6215 ]
  %5981 = phi float [ %5902, %5970 ], [ %6267, %6215 ]
  %5982 = icmp eq i32 %5896, %5906
  br i1 %5982, label %6274, label %5895

; <label>:5983                                    ; preds = %5970
  %5984 = fmul fast float %5971, %5929
  %5985 = fmul fast float %5971, %5930
  %5986 = fmul fast float %5971, %5931
  %5987 = fsub fast float %5923, %4414
  %5988 = fcmp fast ogt float %5987, 0.000000e+00
  %5989 = fsub fast float %134, %4414
  %5990 = fcmp fast ogt float %5989, 0.000000e+00
  %5991 = xor i1 %5990, %5988
  %5992 = fsub fast float %4414, %5923
  %5993 = fmul fast float %5992, 2.000000e+00
  %5994 = fadd fast float %5993, %5923
  %5995 = select i1 %5991, float %5923, float %5994
  %5996 = fsub fast float %5995, %134
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %5996, float %5932, float %5933, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = call float @dx.op.unary.f32(i32 25, float %5997)  ; Rsqrt(value)
  %5999 = fmul fast float %5998, %5932
  %6000 = fmul fast float %5998, %5933
  %6001 = fmul fast float %5998, %5996
  %6002 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = fdiv fast float 1.000000e+00, %6003
  %6005 = fmul fast float %6004, %6002
  %6006 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5989, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = fcmp fast ogt float %6006, 0.000000e+00
  %6008 = fcmp fast olt float %6006, 0.000000e+00
  %6009 = zext i1 %6007 to i32
  %6010 = zext i1 %6008 to i32
  %6011 = sub nsw i32 %6009, %6010
  %6012 = sitofp i32 %6011 to float
  %6013 = fsub fast float %5995, %4414
  %6014 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %6013, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = zext i1 %6015 to i32
  %6018 = zext i1 %6016 to i32
  %6019 = sub nsw i32 %6017, %6018
  %6020 = sitofp i32 %6019 to float
  %6021 = fcmp fast une float %6012, %6020
  br i1 %6021, label %6022, label %6032

; <label>:6022                                    ; preds = %5983
  %6023 = fmul fast float %6005, %6001
  %6024 = fmul fast float %6005, %6000
  %6025 = fmul fast float %6005, %5999
  %6026 = fmul fast float %6025, %6025
  %6027 = fmul fast float %6024, %6024
  %6028 = fadd fast float %6026, %6027
  %6029 = fmul fast float %6023, %6023
  %6030 = fadd fast float %6028, %6029
  %6031 = call float @dx.op.unary.f32(i32 24, float %6030)  ; Sqrt(value)
  br label %6044

; <label>:6032                                    ; preds = %5983
  %6033 = icmp slt i32 %6011, 0
  br i1 %6033, label %6034, label %6044

; <label>:6034                                    ; preds = %6032
  %6035 = fsub fast float %132, %5921
  %6036 = fsub fast float %133, %5922
  %6037 = fsub fast float %134, %5995
  %6038 = fmul fast float %6035, %6035
  %6039 = fmul fast float %6036, %6036
  %6040 = fadd fast float %6038, %6039
  %6041 = fmul fast float %6037, %6037
  %6042 = fadd fast float %6040, %6041
  %6043 = call float @dx.op.unary.f32(i32 24, float %6042)  ; Sqrt(value)
  br label %6044

; <label>:6044                                    ; preds = %6034, %6032, %6022
  %6045 = phi float [ %6031, %6022 ], [ %6043, %6034 ], [ 0.000000e+00, %6032 ]
  %6046 = and i1 %5990, %5988
  %6047 = fsub fast float -0.000000e+00, %6045
  %6048 = select i1 %6046, float -0.000000e+00, float %6047
  %6049 = fmul fast float %4415, 0x3FF7154760000000
  %6050 = fmul fast float %6049, %6048
  %6051 = fmul fast float %4416, 0x3FF7154760000000
  %6052 = fmul fast float %6051, %6048
  %6053 = fmul fast float %4417, 0x3FF7154760000000
  %6054 = fmul fast float %6053, %6048
  %6055 = call float @dx.op.unary.f32(i32 21, float %6050)  ; Exp(value)
  %6056 = call float @dx.op.unary.f32(i32 21, float %6052)  ; Exp(value)
  %6057 = call float @dx.op.unary.f32(i32 21, float %6054)  ; Exp(value)
  %6058 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6059 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = fmul fast float %5984, %6058
  %6062 = fmul fast float %5985, %6059
  %6063 = fmul fast float %5986, %6060
  %6064 = fsub fast float %5938, %4614
  %6065 = fsub fast float %5939, %4613
  %6066 = fsub fast float %5940, %4612
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = call float @dx.op.unary.f32(i32 25, float %6067)  ; Rsqrt(value)
  %6069 = fmul fast float %6068, %6064
  %6070 = fmul fast float %6068, %6065
  %6071 = fmul fast float %6068, %6066
  %6072 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4610, float %4609, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6075 = fmul fast float %6074, %5945
  %6076 = fmul fast float %6074, %6074
  %6077 = fmul fast float %6076, %5591
  %6078 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6079 = fmul fast float %6075, %6078
  %6080 = bitcast float %5935 to i32
  %6081 = ashr i32 %6080, 1
  %6082 = sub nsw i32 1597463007, %6081
  %6083 = bitcast i32 %6082 to float
  %6084 = fmul fast float %6083, %5932
  %6085 = fmul fast float %6083, %5933
  %6086 = fmul fast float %6083, %5934
  %6087 = fsub fast float %6084, %4614
  %6088 = fsub fast float %6085, %4613
  %6089 = fsub fast float %6086, %4612
  %6090 = call float @dx.op.dot3.f32(i32 55, float %6087, float %6088, float %6089, float %6087, float %6088, float %6089)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = call float @dx.op.unary.f32(i32 25, float %6090)  ; Rsqrt(value)
  %6092 = fmul fast float %6087, %6091
  %6093 = fmul fast float %6088, %6091
  %6094 = fmul fast float %6089, %6091
  %6095 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %6092, float %6093, float %6094)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = fmul fast float %6095, %6095
  %6097 = call float @dx.op.unary.f32(i32 6, float %6072)  ; FAbs(value)
  %6098 = fsub fast float 1.000000e+00, %4661
  %6099 = fmul fast float %4643, %4643
  %6100 = fmul fast float %6099, %6098
  %6101 = fadd fast float %6100, %4661
  %6102 = bitcast float %6101 to i32
  %6103 = ashr i32 %6102, 1
  %6104 = add nsw i32 %6103, 532487669
  %6105 = bitcast i32 %6104 to float
  %6106 = fadd fast float %6105, %4643
  %6107 = fmul fast float %4661, %6096
  %6108 = fsub fast float 1.000000e+00, %6096
  %6109 = fadd fast float %6108, %6107
  %6110 = fmul fast float %6097, %6097
  %6111 = fmul fast float %6110, %6098
  %6112 = fadd fast float %6111, %4661
  %6113 = bitcast float %6112 to i32
  %6114 = ashr i32 %6113, 1
  %6115 = add nsw i32 %6114, 532487669
  %6116 = bitcast i32 %6115 to float
  %6117 = fadd fast float %6116, %6097
  %6118 = fmul fast float %6109, %6109
  %6119 = fmul fast float %6118, %6106
  %6120 = fmul fast float %6119, %6117
  %6121 = fdiv fast float 1.000000e+00, %6120
  %6122 = bitcast float %4661 to i32
  %6123 = sitofp i32 %6122 to float
  %6124 = fmul fast float %6123, 0x3FE7F73180000000
  %6125 = fadd fast float %6124, 0x41AFE27C40000000
  %6126 = fptosi float %6125 to i32
  %6127 = bitcast i32 %6126 to float
  %6128 = fmul fast float %5918, 0x3FD80E9D60000000
  %6129 = fmul fast float %6128, %6083
  %6130 = fadd fast float %6127, %6129
  %6131 = bitcast float %6130 to i32
  %6132 = sub nsw i32 2129859010, %6131
  %6133 = bitcast i32 %6132 to float
  %6134 = fmul fast float %4661, %6121
  %6135 = fmul fast float %6134, %6127
  %6136 = fmul fast float %6135, %6133
  %6137 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6138 = fsub fast float 1.000000e+00, %6137
  %6139 = bitcast float %6138 to i32
  %6140 = sitofp i32 %6139 to float
  %6141 = fmul fast float %6140, 5.000000e+00
  %6142 = fadd fast float %6141, 0xC1EFBF8940000000
  %6143 = fptosi float %6142 to i32
  %6144 = bitcast i32 %6143 to float
  %6145 = fsub fast float 1.000000e+00, %4618
  %6146 = fsub fast float 1.000000e+00, %4619
  %6147 = fsub fast float 1.000000e+00, %4641
  %6148 = fmul fast float %6144, %6145
  %6149 = fmul fast float %6144, %6146
  %6150 = fmul fast float %6144, %6147
  %6151 = fadd fast float %6148, %4618
  %6152 = fadd fast float %6149, %4619
  %6153 = fadd fast float %6150, %4641
  br i1 %4681, label %6154, label %6177

; <label>:6154                                    ; preds = %6044
  %6155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %6137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6156 = extractvalue %dx.types.ResRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.f32 %6155, 1
  %6158 = extractvalue %dx.types.ResRet.f32 %6155, 2
  %6159 = fadd fast float %6156, -5.000000e-01
  %6160 = fadd fast float %6157, -5.000000e-01
  %6161 = fadd fast float %6158, -5.000000e-01
  %6162 = fmul fast float %4618, 4.000000e+00
  %6163 = fmul fast float %6162, %6145
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %4619, 4.000000e+00
  %6166 = fmul fast float %6165, %6146
  %6167 = fmul fast float %6166, %6160
  %6168 = fmul fast float %4641, 4.000000e+00
  %6169 = fmul fast float %6168, %6147
  %6170 = fmul fast float %6169, %6161
  %6171 = fadd fast float %6164, %6151
  %6172 = fadd fast float %6167, %6152
  %6173 = fadd fast float %6170, %6153
  %6174 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6176 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  br label %6177

; <label>:6177                                    ; preds = %6154, %6044
  %6178 = phi float [ %6174, %6154 ], [ %6151, %6044 ]
  %6179 = phi float [ %6175, %6154 ], [ %6152, %6044 ]
  %6180 = phi float [ %6176, %6154 ], [ %6153, %6044 ]
  %6181 = fmul fast float %6072, 9.843750e-01
  %6182 = fadd fast float %6181, 7.812500e-03
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6182, float %4671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 3
  %6186 = fmul fast float %6184, %4618
  %6187 = fmul fast float %6184, %4619
  %6188 = fmul fast float %6184, %4641
  %6189 = fadd fast float %6186, %6185
  %6190 = fadd fast float %6187, %6185
  %6191 = fadd fast float %6188, %6185
  br i1 %4681, label %6192, label %6215

; <label>:6192                                    ; preds = %6177
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  %6197 = fadd fast float %6194, -5.000000e-01
  %6198 = fadd fast float %6195, -5.000000e-01
  %6199 = fadd fast float %6196, -5.000000e-01
  %6200 = fmul fast float %4618, 4.000000e+00
  %6201 = fmul fast float %6200, %6145
  %6202 = fmul fast float %6201, %6197
  %6203 = fmul fast float %4619, 4.000000e+00
  %6204 = fmul fast float %6203, %6146
  %6205 = fmul fast float %6204, %6198
  %6206 = fmul fast float %4641, 4.000000e+00
  %6207 = fmul fast float %6206, %6147
  %6208 = fmul fast float %6207, %6199
  %6209 = fadd fast float %6202, %6189
  %6210 = fadd fast float %6205, %6190
  %6211 = fadd fast float %6208, %6191
  %6212 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6213 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6214 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  br label %6215

; <label>:6215                                    ; preds = %6192, %6177
  %6216 = phi float [ %6212, %6192 ], [ %6189, %6177 ]
  %6217 = phi float [ %6213, %6192 ], [ %6190, %6177 ]
  %6218 = phi float [ %6214, %6192 ], [ %6191, %6177 ]
  %6219 = call float @dx.op.binary.f32(i32 35, float %6217, float %6218)  ; FMax(a,b)
  %6220 = call float @dx.op.binary.f32(i32 35, float %6216, float %6219)  ; FMax(a,b)
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6178, %6136
  %6223 = fmul fast float %6179, %6136
  %6224 = fmul fast float %6180, %6136
  %6225 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = fcmp fast ogt float %6225, 0x3E7FF19E20000000
  %6227 = fdiv fast float 1.000000e+00, %6225
  %6228 = select i1 %6226, float %6227, float 0.000000e+00
  %6229 = fmul fast float %6228, %4621
  %6230 = fmul fast float %6228, %4622
  %6231 = fmul fast float %6228, %4623
  %6232 = fadd fast float %6229, -1.000000e+00
  %6233 = fadd fast float %6230, -1.000000e+00
  %6234 = fadd fast float %6231, -1.000000e+00
  %6235 = fmul fast float %6232, 5.000000e-01
  %6236 = fmul fast float %6233, 5.000000e-01
  %6237 = fmul fast float %6234, 5.000000e-01
  %6238 = fadd fast float %6235, 1.000000e+00
  %6239 = fadd fast float %6236, 1.000000e+00
  %6240 = fadd fast float %6237, 1.000000e+00
  %6241 = fsub fast float 1.000000e+00, %6073
  %6242 = bitcast float %6241 to i32
  %6243 = sitofp i32 %6242 to float
  %6244 = fmul fast float %6243, 5.000000e+00
  %6245 = fadd fast float %6244, 0xC1EFBF8940000000
  %6246 = fptosi float %6245 to i32
  %6247 = bitcast i32 %6246 to float
  %6248 = fmul fast float %6247, %4014
  %6249 = fmul fast float %6221, %6248
  %6250 = fmul fast float %6249, %6238
  %6251 = fmul fast float %6249, %6239
  %6252 = fmul fast float %6249, %6240
  %6253 = fadd fast float %6250, %6222
  %6254 = fadd fast float %6251, %6223
  %6255 = fadd fast float %6252, %6224
  %6256 = fmul fast float %6061, %4010
  %6257 = fmul fast float %6256, %6079
  %6258 = fmul fast float %6257, %6221
  %6259 = fmul fast float %6062, %4010
  %6260 = fmul fast float %6259, %6079
  %6261 = fmul fast float %6260, %6221
  %6262 = fmul fast float %6063, %4010
  %6263 = fmul fast float %6262, %6079
  %6264 = fmul fast float %6263, %6221
  %6265 = fadd fast float %6258, %5900
  %6266 = fadd fast float %6261, %5901
  %6267 = fadd fast float %6264, %5902
  %6268 = fmul fast float %6257, %6253
  %6269 = fmul fast float %6260, %6254
  %6270 = fmul fast float %6263, %6255
  %6271 = fadd fast float %6268, %5897
  %6272 = fadd fast float %6269, %5898
  %6273 = fadd fast float %6270, %5899
  br label %5975

; <label>:6274                                    ; preds = %5975
  br label %6275

; <label>:6275                                    ; preds = %6274, %5863
  %6276 = phi float [ %5865, %5863 ], [ %5976, %6274 ]
  %6277 = phi float [ %5866, %5863 ], [ %5977, %6274 ]
  %6278 = phi float [ %5867, %5863 ], [ %5978, %6274 ]
  %6279 = phi float [ %5868, %5863 ], [ %5979, %6274 ]
  %6280 = phi float [ %5869, %5863 ], [ %5980, %6274 ]
  %6281 = phi float [ %5870, %5863 ], [ %5981, %6274 ]
  %6282 = add i32 %5864, 1
  %6283 = icmp ugt i32 %6282, %5860
  br i1 %6283, label %6284, label %5863

; <label>:6284                                    ; preds = %6275
  br label %6285

; <label>:6285                                    ; preds = %6284, %5839, %5829
  %6286 = phi float [ %5830, %5829 ], [ %5830, %5839 ], [ %6276, %6284 ]
  %6287 = phi float [ %5831, %5829 ], [ %5831, %5839 ], [ %6277, %6284 ]
  %6288 = phi float [ %5832, %5829 ], [ %5832, %5839 ], [ %6278, %6284 ]
  %6289 = phi float [ %5833, %5829 ], [ %5833, %5839 ], [ %6279, %6284 ]
  %6290 = phi float [ %5834, %5829 ], [ %5834, %5839 ], [ %6280, %6284 ]
  %6291 = phi float [ %5835, %5829 ], [ %5835, %5839 ], [ %6281, %6284 ]
  %6292 = call float @dx.op.unary.f32(i32 24, float %4621)  ; Sqrt(value)
  %6293 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %6294 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %6295 = fmul fast float %6292, %6289
  %6296 = fmul fast float %6293, %6290
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  br i1 %174, label %6299, label %6323

; <label>:6299                                    ; preds = %6285
  %6300 = fadd fast float %6291, %4016
  %6301 = fmul fast float %6300, %4017
  %6302 = fsub fast float 1.000000e+00, %4017
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 3
  %6306 = fmul fast float %6305, %6303
  %6307 = fsub fast float 1.000000e+00, %4643
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = fmul fast float %6309, %6307
  %6311 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6312 = fmul fast float %6311, %4639
  %6313 = fadd fast float %6296, %6295
  %6314 = fmul fast float %6298, %6313
  %6315 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6316 = fadd fast float %6306, %6301
  %6317 = fsub fast float %6316, %6310
  %6318 = fadd fast float %6317, %6312
  %6319 = fsub fast float %6318, %6315
  %6320 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6321 = fmul fast float %6319, %6320
  %6322 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  br label %6339

; <label>:6323                                    ; preds = %6285
  %6324 = fmul fast float %6294, %6291
  %6325 = fmul fast float %6298, %6295
  %6326 = fmul fast float %6298, %6296
  %6327 = fmul fast float %6324, %6298
  %6328 = add i32 %45, 356
  %6329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6328, i32 undef)  ; BufferLoad(srv,index,wot)
  %6330 = extractvalue %dx.types.ResRet.i32 %6329, 0
  %6331 = and i32 %6330, 32
  %6332 = icmp eq i32 %6331, 0
  br i1 %6332, label %6339, label %6333

; <label>:6333                                    ; preds = %6323
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = fmul fast float %6335, 0x3FE99999A0000000
  %6337 = fadd fast float %6335, %6325
  %6338 = fadd fast float %6336, %6327
  br label %6339

; <label>:6339                                    ; preds = %6333, %6323, %6299
  %6340 = phi float [ %6314, %6299 ], [ %6337, %6333 ], [ %6325, %6323 ]
  %6341 = phi float [ %6322, %6299 ], [ %6326, %6333 ], [ %6326, %6323 ]
  %6342 = phi float [ 1.000000e+00, %6299 ], [ %6338, %6333 ], [ %6327, %6323 ]
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = fmul fast float %6344, %6287
  %6346 = fmul fast float %6344, %6288
  %6347 = fadd fast float %6287, %6286
  %6348 = select i1 %174, float %6347, float %6286
  %6349 = fmul float %6348, %6344
  %6350 = select i1 %174, float 0.000000e+00, float %6345
  %6351 = select i1 %174, float 0.000000e+00, float %6346
  %6352 = fmul fast float %6340, %6292
  %6353 = fmul fast float %6341, %6293
  %6354 = fmul fast float %6342, %6294
  %6355 = fadd fast float %6349, %6352
  %6356 = fadd fast float %6350, %6353
  %6357 = fadd fast float %6351, %6354
  %6358 = select i1 %174, float %6341, float %6356
  %6359 = select i1 %174, float %6342, float %6357
  %6360 = call float @dx.op.binary.f32(i32 36, float %6355, float 3.225500e+04)  ; FMin(a,b)
  %6361 = call float @dx.op.binary.f32(i32 36, float %6358, float 3.225500e+04)  ; FMin(a,b)
  %6362 = call float @dx.op.binary.f32(i32 36, float %6359, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6360)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6361)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6362)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
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
!72 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!73 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!74 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, null}
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

