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
; shader hash: 1df938ac3ec1c6711cdb807cc2afa40a
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
  %382 = add i32 %45, 488
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
  br i1 %435, label %894, label %436

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
  %881 = add i32 %45, 96
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = lshr i32 %883, 8
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fmul fast float %888, %889
  %891 = fadd fast float %890, %885
  %892 = fmul fast float %891, 0x3F70101020000000
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  br label %894

; <label>:894                                     ; preds = %877, %421
  %895 = phi float [ 0.000000e+00, %421 ], [ %831, %877 ]
  %896 = phi float [ 0.000000e+00, %421 ], [ %832, %877 ]
  %897 = phi float [ 0.000000e+00, %421 ], [ %750, %877 ]
  %898 = phi float [ 0.000000e+00, %421 ], [ %751, %877 ]
  %899 = phi float [ 0.000000e+00, %421 ], [ %752, %877 ]
  %900 = phi float [ 0.000000e+00, %421 ], [ %878, %877 ]
  %901 = phi float [ 0.000000e+00, %421 ], [ %879, %877 ]
  %902 = phi float [ 0.000000e+00, %421 ], [ %880, %877 ]
  %903 = phi float [ 0.000000e+00, %421 ], [ %736, %877 ]
  %904 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %877 ]
  %905 = phi float [ 0.000000e+00, %421 ], [ %830, %877 ]
  %906 = phi float [ 0.000000e+00, %421 ], [ %833, %877 ]
  %907 = phi float [ 0.000000e+00, %421 ], [ %893, %877 ]
  br i1 %372, label %1860, label %908

; <label>:908                                     ; preds = %894
  %909 = icmp ult i32 %427, 2
  %910 = add i32 %45, 40
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = add i32 %45, 44
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = or i32 %915, %912
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1860, label %918

; <label>:918                                     ; preds = %908
  %919 = and i32 %912, 262144
  %920 = icmp ne i32 %919, 0
  %921 = select i1 %920, float %47, float 1.000000e+00
  %922 = select i1 %920, float %48, float 0.000000e+00
  %923 = select i1 %920, float %49, float 0.000000e+00
  %924 = select i1 %920, float %50, float 1.000000e+00
  %925 = select i1 %920, float %51, float %72
  %926 = select i1 %920, float %52, float %73
  %927 = add i32 %45, 300
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = fmul fast float %931, 0x3F50624DE0000000
  %933 = add i32 %45, 104
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = lshr i32 %935, 16
  %937 = and i32 %936, 255
  %938 = lshr i32 %935, 24
  %939 = add i32 %45, 308
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %941, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = add i32 %45, 48
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 22
  %950 = shl nuw nsw i32 %949, 5
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = shl i32 %948, 4
  %953 = and i32 %952, 32752
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = lshr i32 %948, 7
  %956 = and i32 %955, 32752
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %960 = fmul fast float %959, 1.000000e+03
  %961 = fmul fast float %282, %960
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = fadd fast float %962, %272
  %964 = fmul fast float %283, %960
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = fadd fast float %965, %274
  %967 = fmul fast float %932, %960
  %968 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %969 = fmul fast float %968, 0x401921FB60000000
  %970 = fadd fast float %969, %951
  %971 = call float @dx.op.unary.f32(i32 13, float %970)  ; Sin(value)
  %972 = call float @dx.op.unary.f32(i32 12, float %970)  ; Cos(value)
  %973 = fsub fast float -0.000000e+00, %971
  %974 = fadd fast float %925, -5.000000e-01
  %975 = fadd fast float %926, -5.000000e-01
  %976 = fmul fast float %943, %974
  %977 = fmul fast float %945, %975
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fadd fast float %977, 5.000000e-01
  %980 = fmul fast float %954, %978
  %981 = fmul fast float %957, %979
  %982 = fmul fast float %972, %980
  %983 = call float @dx.op.tertiary.f32(i32 46, float %973, float %981, float %982)  ; FMad(a,b,c)
  %984 = fmul fast float %971, %980
  %985 = call float @dx.op.tertiary.f32(i32 46, float %972, float %981, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %963, %983
  %987 = fadd fast float %966, %985
  %988 = icmp ugt i32 %937, 1
  %989 = icmp ugt i32 %935, 33554431
  %990 = or i1 %989, %988
  br i1 %990, label %991, label %1016

; <label>:991                                     ; preds = %918
  %992 = add i32 %45, 244
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 16
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = fmul fast float %959, %996
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = mul nuw nsw i32 %937, %938
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %998, %1000
  %1002 = call float @dx.op.unary.f32(i32 27, float %1001)  ; Round_ni(value)
  %1003 = fptoui float %1002 to i32
  %1004 = urem i32 %1003, %937
  %1005 = udiv i32 %1003, %938
  %1006 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %1007 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %1008 = uitofp i32 %1004 to float
  %1009 = uitofp i32 %1005 to float
  %1010 = fadd fast float %1006, %1008
  %1011 = fadd fast float %1007, %1009
  %1012 = uitofp i32 %937 to float
  %1013 = uitofp i32 %938 to float
  %1014 = fdiv fast float %1010, %1012
  %1015 = fdiv fast float %1011, %1013
  br label %1016

; <label>:1016                                    ; preds = %991, %918
  %1017 = phi float [ %1014, %991 ], [ %986, %918 ]
  %1018 = phi float [ %1015, %991 ], [ %987, %918 ]
  %1019 = and i32 %912, 16777216
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1130, label %1021

; <label>:1021                                    ; preds = %1016
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fadd fast float %1023, %143
  %1027 = fadd fast float %1024, %144
  %1028 = fadd fast float %1025, %145
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = icmp eq i32 %46, 65535
  br i1 %1032, label %1127, label %1033

; <label>:1033                                    ; preds = %1021
  %1034 = lshr i32 %46, 1
  %1035 = shl i32 %1034, 2
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %46, 1
  %1039 = icmp ne i32 %1038, 0
  %1040 = lshr i32 %1037, 16
  %1041 = and i32 %1037, 65535
  %1042 = select i1 %1039, i32 %1040, i32 %1041
  %1043 = icmp eq i32 %1042, 65535
  br i1 %1043, label %1123, label %1044

; <label>:1044                                    ; preds = %1033
  %1045 = mul nuw nsw i32 %1042, 40
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = add nuw nsw i32 %1045, 12
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = add nuw nsw i32 %1045, 24
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = add nuw nsw i32 %1045, 36
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = fsub fast float %1026, %1047
  %1064 = fsub fast float %1027, %1048
  %1065 = fsub fast float %1028, %1049
  %1066 = fmul fast float %1062, %1063
  %1067 = fmul fast float %1062, %1064
  %1068 = fmul fast float %1062, %1065
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fmul fast float %1072, %1052
  %1076 = fmul fast float %1073, %1053
  %1077 = fmul fast float %1074, %1054
  %1078 = shl i32 %46, 2
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1082, %dx.types.Handle %40, float %1083, float %1084, float %1085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = fmul fast float %1087, 1.023000e+03
  %1091 = fmul fast float %1088, 1.023000e+03
  %1092 = fmul fast float %1089, 1.023000e+03
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = fsub fast float %1066, %1069
  %1100 = fsub fast float %1067, %1070
  %1101 = fsub fast float %1068, %1071
  %1102 = fmul fast float %1099, 7.500000e-01
  %1103 = fmul fast float %1100, 7.500000e-01
  %1104 = fmul fast float %1101, 7.500000e-01
  %1105 = fadd fast float %1069, 1.250000e-01
  %1106 = fadd fast float %1105, %1102
  %1107 = fadd fast float %1106, %1096
  %1108 = fadd fast float %1070, 1.250000e-01
  %1109 = fadd fast float %1108, %1103
  %1110 = fadd fast float %1109, %1097
  %1111 = fadd fast float %1071, 1.250000e-01
  %1112 = fadd fast float %1111, %1104
  %1113 = fadd fast float %1112, %1098
  %1114 = fmul fast float %1107, %1057
  %1115 = fmul fast float %1110, %1058
  %1116 = fmul fast float %1113, %1059
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %1118, 0
  %1120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1120, %dx.types.Handle %38, float %1114, float %1115, float %1116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  br label %1123

; <label>:1123                                    ; preds = %1044, %1033
  %1124 = phi float [ %1122, %1044 ], [ -1.000000e+00, %1033 ]
  %1125 = fadd fast float %1124, %1031
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  br label %1127

; <label>:1127                                    ; preds = %1123, %1021
  %1128 = phi float [ %1126, %1123 ], [ %1031, %1021 ]
  %1129 = fmul fast float %1128, %424
  br label %1130

; <label>:1130                                    ; preds = %1127, %1016
  %1131 = phi float [ %1129, %1127 ], [ %424, %1016 ]
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 256
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1182, label %1136

; <label>:1136                                    ; preds = %1130
  %1137 = add i32 %45, 428
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1139, 0
  %1141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1141, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = add i32 %45, 116
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = shl i32 %1146, 4
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1146, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fsub fast float 1.000000e+00, %1131
  %1154 = call float @dx.op.binary.f32(i32 35, float %1153, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1155 = bitcast float %1131 to i32
  %1156 = sitofp i32 %1155 to float
  %1157 = fadd fast float %1156, 0xC1CFBF8940000000
  %1158 = fmul fast float %1152, %1157
  %1159 = fadd fast float %1158, 0x41CFBF8940000000
  %1160 = fptosi float %1159 to i32
  %1161 = bitcast i32 %1160 to float
  %1162 = bitcast float %1154 to i32
  %1163 = sitofp i32 %1162 to float
  %1164 = fadd fast float %1163, 0xC1CFBF8940000000
  %1165 = fmul fast float %1164, %1152
  %1166 = fadd fast float %1165, 0x41CFBF8940000000
  %1167 = fptosi float %1166 to i32
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1161, %1149
  %1170 = fmul fast float %1168, %1149
  %1171 = fsub fast float %1154, %1169
  %1172 = fadd fast float %1170, %1154
  %1173 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1174 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1175 = fsub fast float %1143, %1173
  %1176 = fsub fast float %1174, %1173
  %1177 = bitcast float %1176 to i32
  %1178 = sub nsw i32 2129859010, %1177
  %1179 = bitcast i32 %1178 to float
  %1180 = fmul fast float %1179, %1175
  %1181 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  br label %1182

; <label>:1182                                    ; preds = %1136, %1130
  %1183 = phi float [ %1181, %1136 ], [ %1131, %1130 ]
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 128
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1204, label %1188

; <label>:1188                                    ; preds = %1182
  %1189 = add i32 %45, 412
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 524288
  %1199 = icmp ne i32 %1198, 0
  %1200 = fcmp fast ogt float %1195, 0x3FE0101020000000
  %1201 = select i1 %1200, float 1.000000e+00, float 0.000000e+00
  %1202 = select i1 %1199, float %1201, float %1195
  %1203 = fmul fast float %1202, %1183
  br label %1204

; <label>:1204                                    ; preds = %1188, %1182
  %1205 = phi float [ %1203, %1188 ], [ %1183, %1182 ]
  %1206 = fcmp fast ult float %1205, 0x3F70101020000000
  br i1 %1206, label %1860, label %1207

; <label>:1207                                    ; preds = %1204
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 16
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1410, label %1212

; <label>:1212                                    ; preds = %1207
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %45, 364
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %80, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = extractvalue %dx.types.ResRet.f32 %1220, 3
  %1225 = and i32 %1214, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = lshr i32 %1214, 8
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1224, %1226
  %1231 = fadd fast float %1230, %1229
  %1232 = fmul fast float %1231, 0x3F70101000000000
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 512
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1245, label %1237

; <label>:1237                                    ; preds = %1212
  %1238 = add i32 %45, 444
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %1240, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1242, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  br label %1245

; <label>:1245                                    ; preds = %1237, %1212
  %1246 = phi float [ %1244, %1237 ], [ 1.000000e+00, %1212 ]
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 33554432
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1357, label %1251

; <label>:1251                                    ; preds = %1245
  %1252 = add i32 %45, 240
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 65535
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = lshr i32 %1254, 16
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = add i32 %45, 244
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 65535
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 24
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = and i32 %1265, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = lshr i32 %1265, 8
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = lshr i32 %1265, 16
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = add i32 %45, 236
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 24
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = and i32 %1282, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = lshr i32 %1282, 8
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = lshr i32 %1282, 16
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = bitcast float %1221 to i32
  %1298 = ashr i32 %1297, 1
  %1299 = sub nsw i32 1597463174, %1298
  %1300 = bitcast i32 %1299 to float
  %1301 = fmul fast float %1221, 5.000000e-01
  %1302 = fmul fast float %1300, %1300
  %1303 = fmul fast float %1302, %1301
  %1304 = fsub fast float 1.500000e+00, %1303
  %1305 = fmul fast float %1300, %1221
  %1306 = fmul fast float %1305, %1304
  %1307 = bitcast float %1222 to i32
  %1308 = ashr i32 %1307, 1
  %1309 = sub nsw i32 1597463174, %1308
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1222, 5.000000e-01
  %1312 = fmul fast float %1310, %1310
  %1313 = fmul fast float %1312, %1311
  %1314 = fsub fast float 1.500000e+00, %1313
  %1315 = fmul fast float %1310, %1222
  %1316 = fmul fast float %1315, %1314
  %1317 = bitcast float %1223 to i32
  %1318 = ashr i32 %1317, 1
  %1319 = sub nsw i32 1597463174, %1318
  %1320 = bitcast i32 %1319 to float
  %1321 = fmul fast float %1223, 5.000000e-01
  %1322 = fmul fast float %1320, %1320
  %1323 = fmul fast float %1322, %1321
  %1324 = fsub fast float 1.500000e+00, %1323
  %1325 = fmul fast float %1320, %1223
  %1326 = fmul fast float %1325, %1324
  %1327 = fsub fast float %1306, %1288
  %1328 = fsub fast float %1316, %1292
  %1329 = fsub fast float %1326, %1296
  %1330 = fmul fast float %1327, %1256
  %1331 = fmul fast float %1328, %1258
  %1332 = fmul fast float %1329, %1263
  %1333 = fadd fast float %1330, %1271
  %1334 = fadd fast float %1331, %1275
  %1335 = fadd fast float %1332, %1279
  %1336 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = fmul fast float %1336, %1336
  %1340 = fmul fast float %1337, %1337
  %1341 = fmul fast float %1338, %1338
  %1342 = fsub fast float %1339, %1221
  %1343 = fsub fast float %1340, %1222
  %1344 = fsub fast float %1341, %1223
  %1345 = fmul fast float %1342, %1246
  %1346 = fmul fast float %1343, %1246
  %1347 = fmul fast float %1344, %1246
  %1348 = fadd fast float %1345, %1221
  %1349 = fadd fast float %1346, %1222
  %1350 = fadd fast float %1347, %1223
  %1351 = fadd fast float %1268, %1232
  %1352 = fsub fast float %1351, %1285
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fsub fast float %1353, %1232
  %1355 = fmul fast float %1354, %1246
  %1356 = fadd fast float %1355, %1232
  br label %1410

; <label>:1357                                    ; preds = %1245
  %1358 = and i32 %1248, 134217728
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1394, label %1360

; <label>:1360                                    ; preds = %1357
  %1361 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1362 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1364 = fadd fast float %1361, -5.000000e-01
  %1365 = fadd fast float %1362, -5.000000e-01
  %1366 = fadd fast float %1363, -5.000000e-01
  %1367 = fmul fast float %1364, %1246
  %1368 = fmul fast float %1365, %1246
  %1369 = fmul fast float %1366, %1246
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = fadd fast float %1369, 5.000000e-01
  %1373 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1374 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1375 = call float @dx.op.unary.f32(i32 24, float %1223)  ; Sqrt(value)
  %1376 = fmul fast float %1370, 2.000000e+00
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = fmul fast float %1377, %1373
  %1379 = fadd fast float %1378, %1376
  %1380 = fmul fast float %1379, %1373
  %1381 = fmul fast float %1371, 2.000000e+00
  %1382 = fsub fast float 1.000000e+00, %1381
  %1383 = fmul fast float %1382, %1374
  %1384 = fadd fast float %1383, %1381
  %1385 = fmul fast float %1384, %1374
  %1386 = fmul fast float %1372, 2.000000e+00
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = fmul fast float %1387, %1375
  %1389 = fadd fast float %1388, %1386
  %1390 = fmul fast float %1389, %1375
  %1391 = fmul fast float %1380, %1380
  %1392 = fmul fast float %1385, %1385
  %1393 = fmul fast float %1390, %1390
  br label %1410

; <label>:1394                                    ; preds = %1357
  %1395 = fmul fast float %259, %259
  %1396 = fmul fast float %263, %263
  %1397 = fmul fast float %267, %267
  %1398 = fadd fast float %1395, -1.000000e+00
  %1399 = fadd fast float %1396, -1.000000e+00
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fmul fast float %1246, %1398
  %1402 = fmul fast float %1246, %1399
  %1403 = fmul fast float %1246, %1400
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fmul fast float %1404, %1221
  %1408 = fmul fast float %1405, %1222
  %1409 = fmul fast float %1406, %1223
  br label %1410

; <label>:1410                                    ; preds = %1394, %1360, %1251, %1207
  %1411 = phi float [ %1356, %1251 ], [ %1232, %1360 ], [ %1232, %1394 ], [ 0x3FA23C0BE0000000, %1207 ]
  %1412 = phi float [ %1348, %1251 ], [ %1391, %1360 ], [ %1407, %1394 ], [ 1.000000e+00, %1207 ]
  %1413 = phi float [ %1349, %1251 ], [ %1392, %1360 ], [ %1408, %1394 ], [ 1.000000e+00, %1207 ]
  %1414 = phi float [ %1350, %1251 ], [ %1393, %1360 ], [ %1409, %1394 ], [ 1.000000e+00, %1207 ]
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 1
  %1417 = and i32 %1416, 1
  %1418 = icmp ne i32 %1417, 0
  %1419 = add i32 %45, 356
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 32
  %1423 = icmp ne i32 %1422, 0
  %1424 = and i1 %1418, %1423
  %1425 = select i1 %1424, float 1.000000e+00, float %1412
  %1426 = select i1 %1424, float 0x3FD3333340000000, float %1413
  %1427 = select i1 %1424, float 0x3FD3333340000000, float %1414
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 32
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1504, label %1432

; <label>:1432                                    ; preds = %1410
  %1433 = add i32 %45, 108
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %45, 380
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1438, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1440, %dx.types.Handle %80, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = extractvalue %dx.types.ResRet.f32 %1441, 3
  %1446 = and i32 %1435, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = lshr i32 %1435, 8
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1435, 16
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = fmul fast float %1442, %1447
  %1456 = fadd fast float %1455, %1450
  %1457 = fmul fast float %1456, 0x3F70101000000000
  %1458 = fadd fast float %1443, -5.000000e-01
  %1459 = fadd fast float %1445, -5.000000e-01
  %1460 = fmul fast float %1458, %1454
  %1461 = fmul fast float %1459, %1454
  %1462 = fadd fast float %1460, 5.000000e-01
  %1463 = fadd fast float %1461, 5.000000e-01
  %1464 = fmul fast float %1462, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fmul fast float %1463, 2.000000e+00
  %1467 = fadd fast float %1466, -1.000000e+00
  %1468 = fadd fast float %1465, %1467
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = fsub fast float %1465, %1467
  %1471 = fmul fast float %1470, 5.000000e-01
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = call float @dx.op.unary.f32(i32 6, float %1471)  ; FAbs(value)
  %1475 = fsub fast float %1473, %1474
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1471, float %1475, float %1469, float %1471, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.unary.f32(i32 25, float %1476)  ; Rsqrt(value)
  %1478 = fmul fast float %1469, %1477
  %1479 = fmul fast float %1471, %1477
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 67108864
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1500, label %1484

; <label>:1484                                    ; preds = %1432
  %1485 = add i32 %45, 296
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1487, 16
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = fsub fast float %1457, %1495
  %1497 = fmul fast float %1496, %1489
  %1498 = fadd fast float %1497, %1493
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  br label %1500

; <label>:1500                                    ; preds = %1484, %1432
  %1501 = phi float [ %1499, %1484 ], [ %1457, %1432 ]
  %1502 = call float @dx.op.dot2.f32(i32 54, float %1478, float %1479, float %921, float %922)  ; Dot2(ax,ay,bx,by)
  %1503 = call float @dx.op.dot2.f32(i32 54, float %1478, float %1479, float %923, float %924)  ; Dot2(ax,ay,bx,by)
  br label %1504

; <label>:1504                                    ; preds = %1500, %1410
  %1505 = phi float [ %1501, %1500 ], [ 0x3FD6666660000000, %1410 ]
  %1506 = phi float [ %1502, %1500 ], [ 0.000000e+00, %1410 ]
  %1507 = phi float [ %1503, %1500 ], [ 0.000000e+00, %1410 ]
  %1508 = phi float [ %1444, %1500 ], [ 1.000000e+00, %1410 ]
  %1509 = add i32 %45, 176
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = lshr i32 %1511, 22
  %1513 = shl nuw nsw i32 %1512, 5
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 64
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1552, label %1519

; <label>:1519                                    ; preds = %1504
  %1520 = add i32 %45, 396
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 131072
  %1528 = icmp eq i32 %1527, 0
  %1529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %80, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = fmul fast float %1530, %247
  %1534 = fmul fast float %1531, %250
  %1535 = fmul fast float %1532, %253
  br i1 %1528, label %1542, label %1536

; <label>:1536                                    ; preds = %1519
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = fmul fast float %1538, %1533
  %1540 = fmul fast float %1538, %1534
  %1541 = fmul fast float %1538, %1535
  br label %1542

; <label>:1542                                    ; preds = %1536, %1519
  %1543 = phi float [ %1539, %1536 ], [ %1533, %1519 ]
  %1544 = phi float [ %1540, %1536 ], [ %1534, %1519 ]
  %1545 = phi float [ %1541, %1536 ], [ %1535, %1519 ]
  %1546 = fmul fast float %1543, %1514
  %1547 = select i1 %185, float %1546, float %1543
  %1548 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1544, float %1545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1549 = select i1 %185, float 0.000000e+00, float %1543
  %1550 = select i1 %185, float %1548, float %1544
  %1551 = select i1 %185, float 0.000000e+00, float %1545
  br label %1552

; <label>:1552                                    ; preds = %1542, %1504
  %1553 = phi float [ %1549, %1542 ], [ 0.000000e+00, %1504 ]
  %1554 = phi float [ %1550, %1542 ], [ 0.000000e+00, %1504 ]
  %1555 = phi float [ %1551, %1542 ], [ 0.000000e+00, %1504 ]
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 1024
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1590, label %1560

; <label>:1560                                    ; preds = %1552
  %1561 = add i32 %45, 168
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = lshr i32 %1563, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101020000000
  %1571 = lshr i32 %1563, 16
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = fmul fast float %1566, %1566
  %1576 = fmul fast float %1570, %1570
  %1577 = fmul fast float %1574, %1574
  %1578 = add i32 %45, 460
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = fmul fast float %1575, %1584
  %1588 = fmul fast float %1576, %1585
  %1589 = fmul fast float %1577, %1586
  br label %1590

; <label>:1590                                    ; preds = %1560, %1552
  %1591 = phi float [ %1587, %1560 ], [ 0.000000e+00, %1552 ]
  %1592 = phi float [ %1588, %1560 ], [ 0.000000e+00, %1552 ]
  %1593 = phi float [ %1589, %1560 ], [ 0.000000e+00, %1552 ]
  %1594 = fcmp fast ogt float %1591, 0.000000e+00
  %1595 = fcmp fast ogt float %1592, 0.000000e+00
  %1596 = fcmp fast ogt float %1593, 0.000000e+00
  %1597 = call float @dx.op.unary.f32(i32 23, float %1591)  ; Log(value)
  %1598 = call float @dx.op.unary.f32(i32 23, float %1592)  ; Log(value)
  %1599 = call float @dx.op.unary.f32(i32 23, float %1593)  ; Log(value)
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = lshr i32 %1601, 7
  %1603 = and i32 %1602, 32752
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = fmul fast float %1597, 0xBFE62E4300000000
  %1606 = fmul fast float %1605, %1604
  %1607 = fmul fast float %1598, 0xBFE62E4300000000
  %1608 = fmul fast float %1607, %1604
  %1609 = fmul fast float %1599, 0xBFE62E4300000000
  %1610 = fmul fast float %1609, %1604
  %1611 = select i1 %1594, float %1606, float 1.270000e+02
  %1612 = select i1 %1595, float %1608, float 1.270000e+02
  %1613 = select i1 %1596, float %1610, float 1.270000e+02
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 10240
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1638, label %1618

; <label>:1618                                    ; preds = %1590
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 2048
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1638, label %1623

; <label>:1623                                    ; preds = %1618
  %1624 = add i32 %45, 476
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = add i32 %1626, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1628, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 3
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = shl i32 %1632, 4
  %1634 = and i32 %1633, 32752
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = fmul fast float %1635, %1630
  %1637 = call float @dx.op.binary.f32(i32 35, float %1636, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1638

; <label>:1638                                    ; preds = %1623, %1618, %1590
  %1639 = phi float [ %1637, %1623 ], [ 0x3F70101020000000, %1618 ], [ 0x3F70101020000000, %1590 ]
  %1640 = add i32 %45, 112
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = lshr i32 %1642, 8
  %1646 = and i32 %1645, 255
  %1647 = uitofp i32 %1646 to float
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1426, float %1427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = fmul fast float %1647, %1648
  %1650 = fadd fast float %1649, %1644
  %1651 = fmul fast float %1650, 0x3F70101020000000
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  br i1 %909, label %1653, label %1688

; <label>:1653                                    ; preds = %1638
  %1654 = fmul fast float %1639, 2.000000e+00
  %1655 = fcmp fast olt float %1611, 1.270000e+02
  %1656 = fcmp fast olt float %1612, 1.270000e+02
  %1657 = fcmp fast olt float %1613, 1.270000e+02
  %1658 = fmul fast float %1611, 0xBFF7154760000000
  %1659 = fmul fast float %1658, %1654
  %1660 = fmul fast float %1612, 0xBFF7154760000000
  %1661 = fmul fast float %1660, %1654
  %1662 = fmul fast float %1613, 0xBFF7154760000000
  %1663 = fmul fast float %1662, %1654
  %1664 = call float @dx.op.unary.f32(i32 21, float %1659)  ; Exp(value)
  %1665 = call float @dx.op.unary.f32(i32 21, float %1661)  ; Exp(value)
  %1666 = call float @dx.op.unary.f32(i32 21, float %1663)  ; Exp(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1668 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1669 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1670 = fadd fast float %1667, -1.000000e+00
  %1671 = select i1 %1655, float %1670, float -1.000000e+00
  %1672 = fadd fast float %1668, -1.000000e+00
  %1673 = select i1 %1656, float %1672, float -1.000000e+00
  %1674 = fadd fast float %1669, -1.000000e+00
  %1675 = select i1 %1657, float %1674, float -1.000000e+00
  %1676 = fmul fast float %1671, %1205
  %1677 = fmul fast float %1673, %1205
  %1678 = fmul fast float %1675, %1205
  %1679 = fadd fast float %1676, 1.000000e+00
  %1680 = fadd fast float %1677, 1.000000e+00
  %1681 = fadd fast float %1678, 1.000000e+00
  %1682 = fmul fast float %1679, %897
  %1683 = fmul fast float %1680, %898
  %1684 = fmul fast float %1681, %899
  %1685 = fmul fast float %1679, %900
  %1686 = fmul fast float %1680, %901
  %1687 = fmul fast float %1681, %902
  br label %1688

; <label>:1688                                    ; preds = %1653, %1638
  %1689 = phi float [ %1682, %1653 ], [ %897, %1638 ]
  %1690 = phi float [ %1683, %1653 ], [ %898, %1638 ]
  %1691 = phi float [ %1684, %1653 ], [ %899, %1638 ]
  %1692 = phi float [ %1685, %1653 ], [ %900, %1638 ]
  %1693 = phi float [ %1686, %1653 ], [ %901, %1638 ]
  %1694 = phi float [ %1687, %1653 ], [ %902, %1638 ]
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = and i32 %1696, 3
  %1698 = icmp eq i32 %1697, 3
  br i1 %1698, label %1777, label %1699

; <label>:1699                                    ; preds = %1688
  %1700 = and i32 %1696, 16
  %1701 = icmp ne i32 %1700, 0
  %1702 = select i1 %1701, float %1205, float 0.000000e+00
  %1703 = icmp eq i32 %1697, 0
  br i1 %1703, label %1704, label %1732

; <label>:1704                                    ; preds = %1699
  %1705 = and i32 %1696, 64
  %1706 = icmp ne i32 %1705, 0
  %1707 = select i1 %1706, float %1205, float 0.000000e+00
  %1708 = fsub fast float %1425, %1689
  %1709 = fsub fast float %1426, %1690
  %1710 = fsub fast float %1427, %1691
  %1711 = fmul fast float %1702, %1708
  %1712 = fmul fast float %1702, %1709
  %1713 = fmul fast float %1702, %1710
  %1714 = fadd fast float %1711, %1689
  %1715 = fadd fast float %1712, %1690
  %1716 = fadd fast float %1713, %1691
  %1717 = fsub fast float %1411, %903
  %1718 = fmul fast float %1702, %1717
  %1719 = fadd fast float %1718, %903
  %1720 = fsub fast float %1553, %1692
  %1721 = fsub fast float %1554, %1693
  %1722 = fsub fast float %1555, %1694
  %1723 = fmul fast float %1707, %1720
  %1724 = fmul fast float %1707, %1721
  %1725 = fmul fast float %1707, %1722
  %1726 = fadd fast float %1723, %1692
  %1727 = fadd fast float %1724, %1693
  %1728 = fadd fast float %1725, %1694
  %1729 = fsub fast float %1652, %907
  %1730 = fmul fast float %1702, %1729
  %1731 = fadd fast float %1730, %907
  br label %1777

; <label>:1732                                    ; preds = %1699
  %1733 = icmp eq i32 %1697, 1
  br i1 %1733, label %1734, label %1747

; <label>:1734                                    ; preds = %1732
  %1735 = fadd fast float %1425, -1.000000e+00
  %1736 = fadd fast float %1426, -1.000000e+00
  %1737 = fadd fast float %1427, -1.000000e+00
  %1738 = fmul fast float %1702, %1735
  %1739 = fmul fast float %1702, %1736
  %1740 = fmul fast float %1702, %1737
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fadd fast float %1739, 1.000000e+00
  %1743 = fadd fast float %1740, 1.000000e+00
  %1744 = fmul fast float %1741, %1689
  %1745 = fmul fast float %1742, %1690
  %1746 = fmul fast float %1743, %1691
  br label %1777

; <label>:1747                                    ; preds = %1732
  %1748 = icmp eq i32 %1697, 2
  br i1 %1748, label %1749, label %1777

; <label>:1749                                    ; preds = %1747
  %1750 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1751 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1752 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fadd fast float %1751, -5.000000e-01
  %1755 = fadd fast float %1752, -5.000000e-01
  %1756 = fmul fast float %1753, %1702
  %1757 = fmul fast float %1754, %1702
  %1758 = fmul fast float %1755, %1702
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = fadd fast float %1758, 5.000000e-01
  %1762 = fmul fast float %1759, 2.000000e+00
  %1763 = fsub fast float 1.000000e+00, %1762
  %1764 = fmul fast float %1763, %1689
  %1765 = fadd fast float %1764, %1762
  %1766 = fmul fast float %1765, %1689
  %1767 = fmul fast float %1760, 2.000000e+00
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = fmul fast float %1768, %1690
  %1770 = fadd fast float %1769, %1767
  %1771 = fmul fast float %1770, %1690
  %1772 = fmul fast float %1761, 2.000000e+00
  %1773 = fsub fast float 1.000000e+00, %1772
  %1774 = fmul fast float %1773, %1691
  %1775 = fadd fast float %1774, %1772
  %1776 = fmul fast float %1775, %1691
  br label %1777

; <label>:1777                                    ; preds = %1749, %1747, %1734, %1704, %1688
  %1778 = phi float [ %1689, %1688 ], [ %1766, %1749 ], [ %1689, %1747 ], [ %1744, %1734 ], [ %1714, %1704 ]
  %1779 = phi float [ %1690, %1688 ], [ %1771, %1749 ], [ %1690, %1747 ], [ %1745, %1734 ], [ %1715, %1704 ]
  %1780 = phi float [ %1691, %1688 ], [ %1776, %1749 ], [ %1691, %1747 ], [ %1746, %1734 ], [ %1716, %1704 ]
  %1781 = phi float [ %1692, %1688 ], [ %1692, %1749 ], [ %1692, %1747 ], [ %1692, %1734 ], [ %1726, %1704 ]
  %1782 = phi float [ %1693, %1688 ], [ %1693, %1749 ], [ %1693, %1747 ], [ %1693, %1734 ], [ %1727, %1704 ]
  %1783 = phi float [ %1694, %1688 ], [ %1694, %1749 ], [ %1694, %1747 ], [ %1694, %1734 ], [ %1728, %1704 ]
  %1784 = phi float [ %903, %1688 ], [ %903, %1749 ], [ %903, %1747 ], [ %903, %1734 ], [ %1719, %1704 ]
  %1785 = phi float [ %907, %1688 ], [ %907, %1749 ], [ %907, %1747 ], [ %907, %1734 ], [ %1731, %1704 ]
  %1786 = and i32 %1696, 12
  %1787 = icmp eq i32 %1786, 12
  br i1 %1787, label %1860, label %1788

; <label>:1788                                    ; preds = %1777
  %1789 = and i32 %1696, 2097184
  %1790 = icmp eq i32 %1789, 2097184
  %1791 = select i1 %1790, float %1205, float 0.000000e+00
  %1792 = and i32 %1696, 4194336
  %1793 = icmp eq i32 %1792, 4194336
  %1794 = select i1 %1793, float %1205, float 0.000000e+00
  %1795 = and i32 %1696, 8388640
  %1796 = icmp eq i32 %1795, 8388640
  %1797 = select i1 %1796, float %1205, float 0.000000e+00
  %1798 = icmp eq i32 %1786, 0
  br i1 %1798, label %1799, label %1812

; <label>:1799                                    ; preds = %1788
  %1800 = fsub fast float %1506, %895
  %1801 = fsub fast float %1507, %896
  %1802 = fmul fast float %1791, %1800
  %1803 = fmul fast float %1791, %1801
  %1804 = fadd fast float %1802, %895
  %1805 = fadd fast float %1803, %896
  %1806 = fsub fast float %1508, %906
  %1807 = fmul fast float %1794, %1806
  %1808 = fadd fast float %1807, %906
  %1809 = fsub fast float %1505, %905
  %1810 = fmul fast float %1797, %1809
  %1811 = fadd fast float %1810, %905
  br label %1860

; <label>:1812                                    ; preds = %1788
  %1813 = icmp eq i32 %1786, 4
  br i1 %1813, label %1814, label %1846

; <label>:1814                                    ; preds = %1812
  %1815 = fmul fast float %1791, %1506
  %1816 = fmul fast float %1791, %1507
  %1817 = fadd fast float %1815, %895
  %1818 = fadd fast float %1816, %896
  %1819 = call float @dx.op.binary.f32(i32 36, float %906, float %1508)  ; FMin(a,b)
  %1820 = fsub fast float %1819, %906
  %1821 = fmul fast float %1820, %1794
  %1822 = fadd fast float %1821, %906
  %1823 = fadd fast float %1505, %905
  %1824 = fmul fast float %1823, 0x3FF337FAE0000000
  %1825 = fmul fast float %905, %905
  %1826 = fmul fast float %1505, %1505
  %1827 = fadd fast float %1826, %1825
  %1828 = fmul fast float %1827, 0x3FE5152B00000000
  %1829 = fmul fast float %905, 0xBFCC1F85E0000000
  %1830 = fmul fast float %1829, %1505
  %1831 = fadd fast float %1830, 0xBFE1363700000000
  %1832 = fadd fast float %1831, %1824
  %1833 = fsub fast float %1832, %1828
  %1834 = fmul fast float %1823, 0x3FBA6F0D00000000
  %1835 = fmul fast float %1827, 0x3FD0432880000000
  %1836 = fmul fast float %905, 0xBFEF110800000000
  %1837 = fmul fast float %1836, %1505
  %1838 = fadd fast float %1837, 1.000000e+00
  %1839 = fsub fast float %1838, %1834
  %1840 = fadd fast float %1839, %1835
  %1841 = fdiv fast float %1833, %1840
  %1842 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1843 = fsub fast float %1842, %905
  %1844 = fmul fast float %1843, %1797
  %1845 = fadd fast float %1844, %905
  br label %1860

; <label>:1846                                    ; preds = %1812
  %1847 = icmp eq i32 %1786, 8
  br i1 %1847, label %1848, label %1860

; <label>:1848                                    ; preds = %1846
  %1849 = fmul fast float %1791, %1506
  %1850 = fmul fast float %1791, %1507
  %1851 = fadd fast float %1849, %895
  %1852 = fadd fast float %1850, %896
  %1853 = call float @dx.op.binary.f32(i32 36, float %906, float %1508)  ; FMin(a,b)
  %1854 = fsub fast float %1853, %906
  %1855 = fmul fast float %1854, %1794
  %1856 = fadd fast float %1855, %906
  %1857 = fsub fast float %1505, %905
  %1858 = fmul fast float %1797, %1857
  %1859 = fadd fast float %1858, %905
  br label %1860

; <label>:1860                                    ; preds = %1848, %1846, %1814, %1799, %1777, %1204, %908, %894
  %1861 = phi float [ %895, %1777 ], [ %895, %1204 ], [ %895, %894 ], [ %1851, %1848 ], [ %895, %1846 ], [ %1817, %1814 ], [ %1804, %1799 ], [ %895, %908 ]
  %1862 = phi float [ %896, %1777 ], [ %896, %1204 ], [ %896, %894 ], [ %1852, %1848 ], [ %896, %1846 ], [ %1818, %1814 ], [ %1805, %1799 ], [ %896, %908 ]
  %1863 = phi float [ %1778, %1777 ], [ %897, %1204 ], [ %897, %894 ], [ %1778, %1848 ], [ %1778, %1846 ], [ %1778, %1814 ], [ %1778, %1799 ], [ %897, %908 ]
  %1864 = phi float [ %1779, %1777 ], [ %898, %1204 ], [ %898, %894 ], [ %1779, %1848 ], [ %1779, %1846 ], [ %1779, %1814 ], [ %1779, %1799 ], [ %898, %908 ]
  %1865 = phi float [ %1780, %1777 ], [ %899, %1204 ], [ %899, %894 ], [ %1780, %1848 ], [ %1780, %1846 ], [ %1780, %1814 ], [ %1780, %1799 ], [ %899, %908 ]
  %1866 = phi float [ %1781, %1777 ], [ %900, %1204 ], [ %900, %894 ], [ %1781, %1848 ], [ %1781, %1846 ], [ %1781, %1814 ], [ %1781, %1799 ], [ %900, %908 ]
  %1867 = phi float [ %1782, %1777 ], [ %901, %1204 ], [ %901, %894 ], [ %1782, %1848 ], [ %1782, %1846 ], [ %1782, %1814 ], [ %1782, %1799 ], [ %901, %908 ]
  %1868 = phi float [ %1783, %1777 ], [ %902, %1204 ], [ %902, %894 ], [ %1783, %1848 ], [ %1783, %1846 ], [ %1783, %1814 ], [ %1783, %1799 ], [ %902, %908 ]
  %1869 = phi float [ %1784, %1777 ], [ %903, %1204 ], [ %903, %894 ], [ %1784, %1848 ], [ %1784, %1846 ], [ %1784, %1814 ], [ %1784, %1799 ], [ %903, %908 ]
  %1870 = phi float [ %905, %1777 ], [ %905, %1204 ], [ %905, %894 ], [ %1859, %1848 ], [ %905, %1846 ], [ %1845, %1814 ], [ %1811, %1799 ], [ %905, %908 ]
  %1871 = phi float [ %906, %1777 ], [ %906, %1204 ], [ %906, %894 ], [ %1856, %1848 ], [ %906, %1846 ], [ %1822, %1814 ], [ %1808, %1799 ], [ %906, %908 ]
  %1872 = phi float [ %1785, %1777 ], [ %907, %1204 ], [ %907, %894 ], [ %1785, %1848 ], [ %1785, %1846 ], [ %1785, %1814 ], [ %1785, %1799 ], [ %907, %908 ]
  br i1 %374, label %2825, label %1873

; <label>:1873                                    ; preds = %1860
  %1874 = icmp ult i32 %427, 3
  %1875 = add i32 %45, 56
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = add i32 %45, 60
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = or i32 %1880, %1877
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %2825, label %1883

; <label>:1883                                    ; preds = %1873
  %1884 = and i32 %1877, 262144
  %1885 = icmp ne i32 %1884, 0
  %1886 = select i1 %1885, float %47, float 1.000000e+00
  %1887 = select i1 %1885, float %48, float 0.000000e+00
  %1888 = select i1 %1885, float %49, float 0.000000e+00
  %1889 = select i1 %1885, float %50, float 1.000000e+00
  %1890 = select i1 %1885, float %51, float %72
  %1891 = select i1 %1885, float %52, float %73
  %1892 = add i32 %45, 316
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = lshr i32 %1894, 16
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = fmul fast float %1896, 0x3F50624DE0000000
  %1898 = add i32 %45, 120
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = lshr i32 %1900, 16
  %1902 = and i32 %1901, 255
  %1903 = lshr i32 %1900, 24
  %1904 = add i32 %45, 324
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 65535
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = lshr i32 %1906, 16
  %1910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1909)  ; LegacyF16ToF32(value)
  %1911 = add i32 %45, 64
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = lshr i32 %1913, 22
  %1915 = shl nuw nsw i32 %1914, 5
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = shl i32 %1913, 4
  %1918 = and i32 %1917, 32752
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = lshr i32 %1913, 7
  %1921 = and i32 %1920, 32752
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 3
  %1925 = fmul fast float %1924, 1.000000e+03
  %1926 = fmul fast float %324, %1925
  %1927 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1928 = fadd fast float %1927, %314
  %1929 = fmul fast float %325, %1925
  %1930 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1931 = fadd fast float %1930, %316
  %1932 = fmul fast float %1897, %1925
  %1933 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1934 = fmul fast float %1933, 0x401921FB60000000
  %1935 = fadd fast float %1934, %1916
  %1936 = call float @dx.op.unary.f32(i32 13, float %1935)  ; Sin(value)
  %1937 = call float @dx.op.unary.f32(i32 12, float %1935)  ; Cos(value)
  %1938 = fsub fast float -0.000000e+00, %1936
  %1939 = fadd fast float %1890, -5.000000e-01
  %1940 = fadd fast float %1891, -5.000000e-01
  %1941 = fmul fast float %1908, %1939
  %1942 = fmul fast float %1910, %1940
  %1943 = fadd fast float %1941, 5.000000e-01
  %1944 = fadd fast float %1942, 5.000000e-01
  %1945 = fmul fast float %1919, %1943
  %1946 = fmul fast float %1922, %1944
  %1947 = fmul fast float %1937, %1945
  %1948 = call float @dx.op.tertiary.f32(i32 46, float %1938, float %1946, float %1947)  ; FMad(a,b,c)
  %1949 = fmul fast float %1936, %1945
  %1950 = call float @dx.op.tertiary.f32(i32 46, float %1937, float %1946, float %1949)  ; FMad(a,b,c)
  %1951 = fadd fast float %1928, %1948
  %1952 = fadd fast float %1931, %1950
  %1953 = icmp ugt i32 %1902, 1
  %1954 = icmp ugt i32 %1900, 33554431
  %1955 = or i1 %1954, %1953
  br i1 %1955, label %1956, label %1981

; <label>:1956                                    ; preds = %1883
  %1957 = add i32 %45, 260
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = lshr i32 %1959, 16
  %1961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1960)  ; LegacyF16ToF32(value)
  %1962 = fmul fast float %1924, %1961
  %1963 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %1964 = mul nuw nsw i32 %1902, %1903
  %1965 = uitofp i32 %1964 to float
  %1966 = fmul fast float %1963, %1965
  %1967 = call float @dx.op.unary.f32(i32 27, float %1966)  ; Round_ni(value)
  %1968 = fptoui float %1967 to i32
  %1969 = urem i32 %1968, %1902
  %1970 = udiv i32 %1968, %1903
  %1971 = call float @dx.op.unary.f32(i32 22, float %1951)  ; Frc(value)
  %1972 = call float @dx.op.unary.f32(i32 22, float %1952)  ; Frc(value)
  %1973 = uitofp i32 %1969 to float
  %1974 = uitofp i32 %1970 to float
  %1975 = fadd fast float %1971, %1973
  %1976 = fadd fast float %1972, %1974
  %1977 = uitofp i32 %1902 to float
  %1978 = uitofp i32 %1903 to float
  %1979 = fdiv fast float %1975, %1977
  %1980 = fdiv fast float %1976, %1978
  br label %1981

; <label>:1981                                    ; preds = %1956, %1883
  %1982 = phi float [ %1979, %1956 ], [ %1951, %1883 ]
  %1983 = phi float [ %1980, %1956 ], [ %1952, %1883 ]
  %1984 = and i32 %1877, 16777216
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %2095, label %1986

; <label>:1986                                    ; preds = %1981
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1991 = fadd fast float %1988, %143
  %1992 = fadd fast float %1989, %144
  %1993 = fadd fast float %1990, %145
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = icmp eq i32 %46, 65535
  br i1 %1997, label %2092, label %1998

; <label>:1998                                    ; preds = %1986
  %1999 = lshr i32 %46, 1
  %2000 = shl i32 %1999, 2
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %46, 1
  %2004 = icmp ne i32 %2003, 0
  %2005 = lshr i32 %2002, 16
  %2006 = and i32 %2002, 65535
  %2007 = select i1 %2004, i32 %2005, i32 %2006
  %2008 = icmp eq i32 %2007, 65535
  br i1 %2008, label %2088, label %2009

; <label>:2009                                    ; preds = %1998
  %2010 = mul nuw nsw i32 %2007, 40
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = add nuw nsw i32 %2010, 12
  %2016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = add nuw nsw i32 %2010, 24
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = extractvalue %dx.types.ResRet.f32 %2021, 2
  %2025 = add nuw nsw i32 %2010, 36
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = fsub fast float %1991, %2012
  %2029 = fsub fast float %1992, %2013
  %2030 = fsub fast float %1993, %2014
  %2031 = fmul fast float %2027, %2028
  %2032 = fmul fast float %2027, %2029
  %2033 = fmul fast float %2027, %2030
  %2034 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2035 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2036 = call float @dx.op.unary.f32(i32 27, float %2033)  ; Round_ni(value)
  %2037 = fadd fast float %2034, 5.000000e-01
  %2038 = fadd fast float %2035, 5.000000e-01
  %2039 = fadd fast float %2036, 5.000000e-01
  %2040 = fmul fast float %2037, %2017
  %2041 = fmul fast float %2038, %2018
  %2042 = fmul fast float %2039, %2019
  %2043 = shl i32 %46, 2
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call float @dx.op.unary.f32(i32 22, float %2040)  ; Frc(value)
  %2049 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2050 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2047, %dx.types.Handle %40, float %2048, float %2049, float %2050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 1
  %2054 = extractvalue %dx.types.ResRet.f32 %2051, 2
  %2055 = fmul fast float %2052, 1.023000e+03
  %2056 = fmul fast float %2053, 1.023000e+03
  %2057 = fmul fast float %2054, 1.023000e+03
  %2058 = fadd fast float %2055, 5.000000e-01
  %2059 = fadd fast float %2056, 5.000000e-01
  %2060 = fadd fast float %2057, 5.000000e-01
  %2061 = call float @dx.op.unary.f32(i32 27, float %2058)  ; Round_ni(value)
  %2062 = call float @dx.op.unary.f32(i32 27, float %2059)  ; Round_ni(value)
  %2063 = call float @dx.op.unary.f32(i32 27, float %2060)  ; Round_ni(value)
  %2064 = fsub fast float %2031, %2034
  %2065 = fsub fast float %2032, %2035
  %2066 = fsub fast float %2033, %2036
  %2067 = fmul fast float %2064, 7.500000e-01
  %2068 = fmul fast float %2065, 7.500000e-01
  %2069 = fmul fast float %2066, 7.500000e-01
  %2070 = fadd fast float %2034, 1.250000e-01
  %2071 = fadd fast float %2070, %2067
  %2072 = fadd fast float %2071, %2061
  %2073 = fadd fast float %2035, 1.250000e-01
  %2074 = fadd fast float %2073, %2068
  %2075 = fadd fast float %2074, %2062
  %2076 = fadd fast float %2036, 1.250000e-01
  %2077 = fadd fast float %2076, %2069
  %2078 = fadd fast float %2077, %2063
  %2079 = fmul fast float %2072, %2022
  %2080 = fmul fast float %2075, %2023
  %2081 = fmul fast float %2078, %2024
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = add i32 %2083, 0
  %2085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2085, %dx.types.Handle %38, float %2079, float %2080, float %2081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  br label %2088

; <label>:2088                                    ; preds = %2009, %1998
  %2089 = phi float [ %2087, %2009 ], [ -1.000000e+00, %1998 ]
  %2090 = fadd fast float %2089, %1996
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  br label %2092

; <label>:2092                                    ; preds = %2088, %1986
  %2093 = phi float [ %2091, %2088 ], [ %1996, %1986 ]
  %2094 = fmul fast float %2093, %423
  br label %2095

; <label>:2095                                    ; preds = %2092, %1981
  %2096 = phi float [ %2094, %2092 ], [ %423, %1981 ]
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = and i32 %2098, 256
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2147, label %2101

; <label>:2101                                    ; preds = %2095
  %2102 = add i32 %45, 432
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = add i32 %2104, 0
  %2106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2106, %dx.types.Handle %81, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = add i32 %45, 132
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = shl i32 %2111, 4
  %2113 = and i32 %2112, 32752
  %2114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2113)  ; LegacyF16ToF32(value)
  %2115 = lshr i32 %2111, 7
  %2116 = and i32 %2115, 32752
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = fsub fast float 1.000000e+00, %2096
  %2119 = call float @dx.op.binary.f32(i32 35, float %2118, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2120 = bitcast float %2096 to i32
  %2121 = sitofp i32 %2120 to float
  %2122 = fadd fast float %2121, 0xC1CFBF8940000000
  %2123 = fmul fast float %2117, %2122
  %2124 = fadd fast float %2123, 0x41CFBF8940000000
  %2125 = fptosi float %2124 to i32
  %2126 = bitcast i32 %2125 to float
  %2127 = bitcast float %2119 to i32
  %2128 = sitofp i32 %2127 to float
  %2129 = fadd fast float %2128, 0xC1CFBF8940000000
  %2130 = fmul fast float %2129, %2117
  %2131 = fadd fast float %2130, 0x41CFBF8940000000
  %2132 = fptosi float %2131 to i32
  %2133 = bitcast i32 %2132 to float
  %2134 = fmul fast float %2126, %2114
  %2135 = fmul fast float %2133, %2114
  %2136 = fsub fast float %2119, %2134
  %2137 = fadd fast float %2135, %2119
  %2138 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2139 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2140 = fsub fast float %2108, %2138
  %2141 = fsub fast float %2139, %2138
  %2142 = bitcast float %2141 to i32
  %2143 = sub nsw i32 2129859010, %2142
  %2144 = bitcast i32 %2143 to float
  %2145 = fmul fast float %2144, %2140
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  br label %2147

; <label>:2147                                    ; preds = %2101, %2095
  %2148 = phi float [ %2146, %2101 ], [ %2096, %2095 ]
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = and i32 %2150, 128
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2169, label %2153

; <label>:2153                                    ; preds = %2147
  %2154 = add i32 %45, 416
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %2156, 0
  %2158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2158, %dx.types.Handle %81, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = and i32 %2162, 524288
  %2164 = icmp ne i32 %2163, 0
  %2165 = fcmp fast ogt float %2160, 0x3FE0101020000000
  %2166 = select i1 %2165, float 1.000000e+00, float 0.000000e+00
  %2167 = select i1 %2164, float %2166, float %2160
  %2168 = fmul fast float %2167, %2148
  br label %2169

; <label>:2169                                    ; preds = %2153, %2147
  %2170 = phi float [ %2168, %2153 ], [ %2148, %2147 ]
  %2171 = fcmp fast ult float %2170, 0x3F70101020000000
  br i1 %2171, label %2825, label %2172

; <label>:2172                                    ; preds = %2169
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 16
  %2176 = icmp eq i32 %2175, 0
  br i1 %2176, label %2375, label %2177

; <label>:2177                                    ; preds = %2172
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = add i32 %45, 368
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = add i32 %2182, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2184, %dx.types.Handle %80, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = extractvalue %dx.types.ResRet.f32 %2185, 3
  %2190 = and i32 %2179, 255
  %2191 = uitofp i32 %2190 to float
  %2192 = lshr i32 %2179, 8
  %2193 = and i32 %2192, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2189, %2191
  %2196 = fadd fast float %2195, %2194
  %2197 = fmul fast float %2196, 0x3F70101000000000
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 512
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2210, label %2202

; <label>:2202                                    ; preds = %2177
  %2203 = add i32 %45, 448
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = add i32 %2205, 0
  %2207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2207, %dx.types.Handle %81, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  br label %2210

; <label>:2210                                    ; preds = %2202, %2177
  %2211 = phi float [ %2209, %2202 ], [ 1.000000e+00, %2177 ]
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 33554432
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2322, label %2216

; <label>:2216                                    ; preds = %2210
  %2217 = add i32 %45, 256
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 65535
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = lshr i32 %2219, 16
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = add i32 %45, 260
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 65535
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = lshr i32 %2230, 24
  %2232 = uitofp i32 %2231 to float
  %2233 = fmul fast float %2232, 0x3F70101020000000
  %2234 = and i32 %2230, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2235, 0x3F70101020000000
  %2237 = lshr i32 %2230, 8
  %2238 = and i32 %2237, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = fmul fast float %2239, 0x3F70101020000000
  %2241 = lshr i32 %2230, 16
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = add i32 %45, 252
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = lshr i32 %2247, 24
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = and i32 %2247, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2247, 8
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = lshr i32 %2247, 16
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = bitcast float %2186 to i32
  %2263 = ashr i32 %2262, 1
  %2264 = sub nsw i32 1597463174, %2263
  %2265 = bitcast i32 %2264 to float
  %2266 = fmul fast float %2186, 5.000000e-01
  %2267 = fmul fast float %2265, %2265
  %2268 = fmul fast float %2267, %2266
  %2269 = fsub fast float 1.500000e+00, %2268
  %2270 = fmul fast float %2265, %2186
  %2271 = fmul fast float %2270, %2269
  %2272 = bitcast float %2187 to i32
  %2273 = ashr i32 %2272, 1
  %2274 = sub nsw i32 1597463174, %2273
  %2275 = bitcast i32 %2274 to float
  %2276 = fmul fast float %2187, 5.000000e-01
  %2277 = fmul fast float %2275, %2275
  %2278 = fmul fast float %2277, %2276
  %2279 = fsub fast float 1.500000e+00, %2278
  %2280 = fmul fast float %2275, %2187
  %2281 = fmul fast float %2280, %2279
  %2282 = bitcast float %2188 to i32
  %2283 = ashr i32 %2282, 1
  %2284 = sub nsw i32 1597463174, %2283
  %2285 = bitcast i32 %2284 to float
  %2286 = fmul fast float %2188, 5.000000e-01
  %2287 = fmul fast float %2285, %2285
  %2288 = fmul fast float %2287, %2286
  %2289 = fsub fast float 1.500000e+00, %2288
  %2290 = fmul fast float %2285, %2188
  %2291 = fmul fast float %2290, %2289
  %2292 = fsub fast float %2271, %2253
  %2293 = fsub fast float %2281, %2257
  %2294 = fsub fast float %2291, %2261
  %2295 = fmul fast float %2292, %2221
  %2296 = fmul fast float %2293, %2223
  %2297 = fmul fast float %2294, %2228
  %2298 = fadd fast float %2295, %2236
  %2299 = fadd fast float %2296, %2240
  %2300 = fadd fast float %2297, %2244
  %2301 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2302 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2304 = fmul fast float %2301, %2301
  %2305 = fmul fast float %2302, %2302
  %2306 = fmul fast float %2303, %2303
  %2307 = fsub fast float %2304, %2186
  %2308 = fsub fast float %2305, %2187
  %2309 = fsub fast float %2306, %2188
  %2310 = fmul fast float %2307, %2211
  %2311 = fmul fast float %2308, %2211
  %2312 = fmul fast float %2309, %2211
  %2313 = fadd fast float %2310, %2186
  %2314 = fadd fast float %2311, %2187
  %2315 = fadd fast float %2312, %2188
  %2316 = fadd fast float %2233, %2197
  %2317 = fsub fast float %2316, %2250
  %2318 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  %2319 = fsub fast float %2318, %2197
  %2320 = fmul fast float %2319, %2211
  %2321 = fadd fast float %2320, %2197
  br label %2375

; <label>:2322                                    ; preds = %2210
  %2323 = and i32 %2213, 134217728
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2359, label %2325

; <label>:2325                                    ; preds = %2322
  %2326 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2327 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2328 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2329 = fadd fast float %2326, -5.000000e-01
  %2330 = fadd fast float %2327, -5.000000e-01
  %2331 = fadd fast float %2328, -5.000000e-01
  %2332 = fmul fast float %2329, %2211
  %2333 = fmul fast float %2330, %2211
  %2334 = fmul fast float %2331, %2211
  %2335 = fadd fast float %2332, 5.000000e-01
  %2336 = fadd fast float %2333, 5.000000e-01
  %2337 = fadd fast float %2334, 5.000000e-01
  %2338 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2339 = call float @dx.op.unary.f32(i32 24, float %2187)  ; Sqrt(value)
  %2340 = call float @dx.op.unary.f32(i32 24, float %2188)  ; Sqrt(value)
  %2341 = fmul fast float %2335, 2.000000e+00
  %2342 = fsub fast float 1.000000e+00, %2341
  %2343 = fmul fast float %2342, %2338
  %2344 = fadd fast float %2343, %2341
  %2345 = fmul fast float %2344, %2338
  %2346 = fmul fast float %2336, 2.000000e+00
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2347, %2339
  %2349 = fadd fast float %2348, %2346
  %2350 = fmul fast float %2349, %2339
  %2351 = fmul fast float %2337, 2.000000e+00
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2352, %2340
  %2354 = fadd fast float %2353, %2351
  %2355 = fmul fast float %2354, %2340
  %2356 = fmul fast float %2345, %2345
  %2357 = fmul fast float %2350, %2350
  %2358 = fmul fast float %2355, %2355
  br label %2375

; <label>:2359                                    ; preds = %2322
  %2360 = fmul fast float %301, %301
  %2361 = fmul fast float %305, %305
  %2362 = fmul fast float %309, %309
  %2363 = fadd fast float %2360, -1.000000e+00
  %2364 = fadd fast float %2361, -1.000000e+00
  %2365 = fadd fast float %2362, -1.000000e+00
  %2366 = fmul fast float %2211, %2363
  %2367 = fmul fast float %2211, %2364
  %2368 = fmul fast float %2211, %2365
  %2369 = fadd fast float %2366, 1.000000e+00
  %2370 = fadd fast float %2367, 1.000000e+00
  %2371 = fadd fast float %2368, 1.000000e+00
  %2372 = fmul fast float %2369, %2186
  %2373 = fmul fast float %2370, %2187
  %2374 = fmul fast float %2371, %2188
  br label %2375

; <label>:2375                                    ; preds = %2359, %2325, %2216, %2172
  %2376 = phi float [ %2321, %2216 ], [ %2197, %2325 ], [ %2197, %2359 ], [ 0x3FA23C0BE0000000, %2172 ]
  %2377 = phi float [ %2313, %2216 ], [ %2356, %2325 ], [ %2372, %2359 ], [ 1.000000e+00, %2172 ]
  %2378 = phi float [ %2314, %2216 ], [ %2357, %2325 ], [ %2373, %2359 ], [ 1.000000e+00, %2172 ]
  %2379 = phi float [ %2315, %2216 ], [ %2358, %2325 ], [ %2374, %2359 ], [ 1.000000e+00, %2172 ]
  %2380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.i32 %2380, 1
  %2382 = and i32 %2381, 1
  %2383 = icmp ne i32 %2382, 0
  %2384 = add i32 %45, 356
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 32
  %2388 = icmp ne i32 %2387, 0
  %2389 = and i1 %2383, %2388
  %2390 = select i1 %2389, float 1.000000e+00, float %2377
  %2391 = select i1 %2389, float 0x3FD3333340000000, float %2378
  %2392 = select i1 %2389, float 0x3FD3333340000000, float %2379
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 32
  %2396 = icmp eq i32 %2395, 0
  br i1 %2396, label %2469, label %2397

; <label>:2397                                    ; preds = %2375
  %2398 = add i32 %45, 124
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = add i32 %45, 384
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = add i32 %2403, 0
  %2405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2405, %dx.types.Handle %80, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2407 = extractvalue %dx.types.ResRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.ResRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.ResRet.f32 %2406, 2
  %2410 = extractvalue %dx.types.ResRet.f32 %2406, 3
  %2411 = and i32 %2400, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = lshr i32 %2400, 8
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = lshr i32 %2400, 16
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = fmul fast float %2418, 0x3F70101000000000
  %2420 = fmul fast float %2407, %2412
  %2421 = fadd fast float %2420, %2415
  %2422 = fmul fast float %2421, 0x3F70101000000000
  %2423 = fadd fast float %2408, -5.000000e-01
  %2424 = fadd fast float %2410, -5.000000e-01
  %2425 = fmul fast float %2423, %2419
  %2426 = fmul fast float %2424, %2419
  %2427 = fadd fast float %2425, 5.000000e-01
  %2428 = fadd fast float %2426, 5.000000e-01
  %2429 = fmul fast float %2427, 2.000000e+00
  %2430 = fadd fast float %2429, -1.000000e+00
  %2431 = fmul fast float %2428, 2.000000e+00
  %2432 = fadd fast float %2431, -1.000000e+00
  %2433 = fadd fast float %2430, %2432
  %2434 = fmul fast float %2433, 5.000000e-01
  %2435 = fsub fast float %2430, %2432
  %2436 = fmul fast float %2435, 5.000000e-01
  %2437 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2438 = fsub fast float 1.000000e+00, %2437
  %2439 = call float @dx.op.unary.f32(i32 6, float %2436)  ; FAbs(value)
  %2440 = fsub fast float %2438, %2439
  %2441 = call float @dx.op.dot3.f32(i32 55, float %2434, float %2436, float %2440, float %2434, float %2436, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2442 = call float @dx.op.unary.f32(i32 25, float %2441)  ; Rsqrt(value)
  %2443 = fmul fast float %2434, %2442
  %2444 = fmul fast float %2436, %2442
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 67108864
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2465, label %2449

; <label>:2449                                    ; preds = %2397
  %2450 = add i32 %45, 312
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 65535
  %2454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2453)  ; LegacyF16ToF32(value)
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 65535
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = lshr i32 %2452, 16
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = fsub fast float %2422, %2460
  %2462 = fmul fast float %2461, %2454
  %2463 = fadd fast float %2462, %2458
  %2464 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  br label %2465

; <label>:2465                                    ; preds = %2449, %2397
  %2466 = phi float [ %2464, %2449 ], [ %2422, %2397 ]
  %2467 = call float @dx.op.dot2.f32(i32 54, float %2443, float %2444, float %1886, float %1887)  ; Dot2(ax,ay,bx,by)
  %2468 = call float @dx.op.dot2.f32(i32 54, float %2443, float %2444, float %1888, float %1889)  ; Dot2(ax,ay,bx,by)
  br label %2469

; <label>:2469                                    ; preds = %2465, %2375
  %2470 = phi float [ %2466, %2465 ], [ 0x3FD6666660000000, %2375 ]
  %2471 = phi float [ %2467, %2465 ], [ 0.000000e+00, %2375 ]
  %2472 = phi float [ %2468, %2465 ], [ 0.000000e+00, %2375 ]
  %2473 = phi float [ %2409, %2465 ], [ 1.000000e+00, %2375 ]
  %2474 = add i32 %45, 192
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = lshr i32 %2476, 22
  %2478 = shl nuw nsw i32 %2477, 5
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 64
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2517, label %2484

; <label>:2484                                    ; preds = %2469
  %2485 = add i32 %45, 400
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = add i32 %2487, 0
  %2489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 131072
  %2493 = icmp eq i32 %2492, 0
  %2494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2489, %dx.types.Handle %80, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.ResRet.f32 %2494, 1
  %2497 = extractvalue %dx.types.ResRet.f32 %2494, 2
  %2498 = fmul fast float %2495, %289
  %2499 = fmul fast float %2496, %292
  %2500 = fmul fast float %2497, %295
  br i1 %2493, label %2507, label %2501

; <label>:2501                                    ; preds = %2484
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 0
  %2504 = fmul fast float %2503, %2498
  %2505 = fmul fast float %2503, %2499
  %2506 = fmul fast float %2503, %2500
  br label %2507

; <label>:2507                                    ; preds = %2501, %2484
  %2508 = phi float [ %2504, %2501 ], [ %2498, %2484 ]
  %2509 = phi float [ %2505, %2501 ], [ %2499, %2484 ]
  %2510 = phi float [ %2506, %2501 ], [ %2500, %2484 ]
  %2511 = fmul fast float %2508, %2479
  %2512 = select i1 %185, float %2511, float %2508
  %2513 = call float @dx.op.dot3.f32(i32 55, float %2512, float %2509, float %2510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2514 = select i1 %185, float 0.000000e+00, float %2508
  %2515 = select i1 %185, float %2513, float %2509
  %2516 = select i1 %185, float 0.000000e+00, float %2510
  br label %2517

; <label>:2517                                    ; preds = %2507, %2469
  %2518 = phi float [ %2514, %2507 ], [ 0.000000e+00, %2469 ]
  %2519 = phi float [ %2515, %2507 ], [ 0.000000e+00, %2469 ]
  %2520 = phi float [ %2516, %2507 ], [ 0.000000e+00, %2469 ]
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, 1024
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2555, label %2525

; <label>:2525                                    ; preds = %2517
  %2526 = add i32 %45, 184
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = fmul fast float %2530, 0x3F70101020000000
  %2532 = lshr i32 %2528, 8
  %2533 = and i32 %2532, 255
  %2534 = uitofp i32 %2533 to float
  %2535 = fmul fast float %2534, 0x3F70101020000000
  %2536 = lshr i32 %2528, 16
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = fmul fast float %2538, 0x3F70101020000000
  %2540 = fmul fast float %2531, %2531
  %2541 = fmul fast float %2535, %2535
  %2542 = fmul fast float %2539, %2539
  %2543 = add i32 %45, 464
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = add i32 %2545, 0
  %2547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2547, %dx.types.Handle %81, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2549 = extractvalue %dx.types.ResRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.ResRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.ResRet.f32 %2548, 2
  %2552 = fmul fast float %2540, %2549
  %2553 = fmul fast float %2541, %2550
  %2554 = fmul fast float %2542, %2551
  br label %2555

; <label>:2555                                    ; preds = %2525, %2517
  %2556 = phi float [ %2552, %2525 ], [ 0.000000e+00, %2517 ]
  %2557 = phi float [ %2553, %2525 ], [ 0.000000e+00, %2517 ]
  %2558 = phi float [ %2554, %2525 ], [ 0.000000e+00, %2517 ]
  %2559 = fcmp fast ogt float %2556, 0.000000e+00
  %2560 = fcmp fast ogt float %2557, 0.000000e+00
  %2561 = fcmp fast ogt float %2558, 0.000000e+00
  %2562 = call float @dx.op.unary.f32(i32 23, float %2556)  ; Log(value)
  %2563 = call float @dx.op.unary.f32(i32 23, float %2557)  ; Log(value)
  %2564 = call float @dx.op.unary.f32(i32 23, float %2558)  ; Log(value)
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 7
  %2568 = and i32 %2567, 32752
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = fmul fast float %2562, 0xBFE62E4300000000
  %2571 = fmul fast float %2570, %2569
  %2572 = fmul fast float %2563, 0xBFE62E4300000000
  %2573 = fmul fast float %2572, %2569
  %2574 = fmul fast float %2564, 0xBFE62E4300000000
  %2575 = fmul fast float %2574, %2569
  %2576 = select i1 %2559, float %2571, float 1.270000e+02
  %2577 = select i1 %2560, float %2573, float 1.270000e+02
  %2578 = select i1 %2561, float %2575, float 1.270000e+02
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 10240
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2603, label %2583

; <label>:2583                                    ; preds = %2555
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 2048
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2603, label %2588

; <label>:2588                                    ; preds = %2583
  %2589 = add i32 %45, 480
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = add i32 %2591, 0
  %2593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2593, %dx.types.Handle %81, float %1982, float %1983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2595 = extractvalue %dx.types.ResRet.f32 %2594, 3
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = shl i32 %2597, 4
  %2599 = and i32 %2598, 32752
  %2600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2599)  ; LegacyF16ToF32(value)
  %2601 = fmul fast float %2600, %2595
  %2602 = call float @dx.op.binary.f32(i32 35, float %2601, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2603

; <label>:2603                                    ; preds = %2588, %2583, %2555
  %2604 = phi float [ %2602, %2588 ], [ 0x3F70101020000000, %2583 ], [ 0x3F70101020000000, %2555 ]
  %2605 = add i32 %45, 128
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 255
  %2609 = uitofp i32 %2608 to float
  %2610 = lshr i32 %2607, 8
  %2611 = and i32 %2610, 255
  %2612 = uitofp i32 %2611 to float
  %2613 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2391, float %2392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2614 = fmul fast float %2612, %2613
  %2615 = fadd fast float %2614, %2609
  %2616 = fmul fast float %2615, 0x3F70101020000000
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  br i1 %1874, label %2618, label %2653

; <label>:2618                                    ; preds = %2603
  %2619 = fmul fast float %2604, 2.000000e+00
  %2620 = fcmp fast olt float %2576, 1.270000e+02
  %2621 = fcmp fast olt float %2577, 1.270000e+02
  %2622 = fcmp fast olt float %2578, 1.270000e+02
  %2623 = fmul fast float %2576, 0xBFF7154760000000
  %2624 = fmul fast float %2623, %2619
  %2625 = fmul fast float %2577, 0xBFF7154760000000
  %2626 = fmul fast float %2625, %2619
  %2627 = fmul fast float %2578, 0xBFF7154760000000
  %2628 = fmul fast float %2627, %2619
  %2629 = call float @dx.op.unary.f32(i32 21, float %2624)  ; Exp(value)
  %2630 = call float @dx.op.unary.f32(i32 21, float %2626)  ; Exp(value)
  %2631 = call float @dx.op.unary.f32(i32 21, float %2628)  ; Exp(value)
  %2632 = call float @dx.op.unary.f32(i32 7, float %2629)  ; Saturate(value)
  %2633 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2634 = call float @dx.op.unary.f32(i32 7, float %2631)  ; Saturate(value)
  %2635 = fadd fast float %2632, -1.000000e+00
  %2636 = select i1 %2620, float %2635, float -1.000000e+00
  %2637 = fadd fast float %2633, -1.000000e+00
  %2638 = select i1 %2621, float %2637, float -1.000000e+00
  %2639 = fadd fast float %2634, -1.000000e+00
  %2640 = select i1 %2622, float %2639, float -1.000000e+00
  %2641 = fmul fast float %2636, %2170
  %2642 = fmul fast float %2638, %2170
  %2643 = fmul fast float %2640, %2170
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fadd fast float %2642, 1.000000e+00
  %2646 = fadd fast float %2643, 1.000000e+00
  %2647 = fmul fast float %2644, %1863
  %2648 = fmul fast float %2645, %1864
  %2649 = fmul fast float %2646, %1865
  %2650 = fmul fast float %2644, %1866
  %2651 = fmul fast float %2645, %1867
  %2652 = fmul fast float %2646, %1868
  br label %2653

; <label>:2653                                    ; preds = %2618, %2603
  %2654 = phi float [ %2647, %2618 ], [ %1863, %2603 ]
  %2655 = phi float [ %2648, %2618 ], [ %1864, %2603 ]
  %2656 = phi float [ %2649, %2618 ], [ %1865, %2603 ]
  %2657 = phi float [ %2650, %2618 ], [ %1866, %2603 ]
  %2658 = phi float [ %2651, %2618 ], [ %1867, %2603 ]
  %2659 = phi float [ %2652, %2618 ], [ %1868, %2603 ]
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 3
  %2663 = icmp eq i32 %2662, 3
  br i1 %2663, label %2742, label %2664

; <label>:2664                                    ; preds = %2653
  %2665 = and i32 %2661, 16
  %2666 = icmp ne i32 %2665, 0
  %2667 = select i1 %2666, float %2170, float 0.000000e+00
  %2668 = icmp eq i32 %2662, 0
  br i1 %2668, label %2669, label %2697

; <label>:2669                                    ; preds = %2664
  %2670 = and i32 %2661, 64
  %2671 = icmp ne i32 %2670, 0
  %2672 = select i1 %2671, float %2170, float 0.000000e+00
  %2673 = fsub fast float %2390, %2654
  %2674 = fsub fast float %2391, %2655
  %2675 = fsub fast float %2392, %2656
  %2676 = fmul fast float %2667, %2673
  %2677 = fmul fast float %2667, %2674
  %2678 = fmul fast float %2667, %2675
  %2679 = fadd fast float %2676, %2654
  %2680 = fadd fast float %2677, %2655
  %2681 = fadd fast float %2678, %2656
  %2682 = fsub fast float %2376, %1869
  %2683 = fmul fast float %2667, %2682
  %2684 = fadd fast float %2683, %1869
  %2685 = fsub fast float %2518, %2657
  %2686 = fsub fast float %2519, %2658
  %2687 = fsub fast float %2520, %2659
  %2688 = fmul fast float %2672, %2685
  %2689 = fmul fast float %2672, %2686
  %2690 = fmul fast float %2672, %2687
  %2691 = fadd fast float %2688, %2657
  %2692 = fadd fast float %2689, %2658
  %2693 = fadd fast float %2690, %2659
  %2694 = fsub fast float %2617, %1872
  %2695 = fmul fast float %2667, %2694
  %2696 = fadd fast float %2695, %1872
  br label %2742

; <label>:2697                                    ; preds = %2664
  %2698 = icmp eq i32 %2662, 1
  br i1 %2698, label %2699, label %2712

; <label>:2699                                    ; preds = %2697
  %2700 = fadd fast float %2390, -1.000000e+00
  %2701 = fadd fast float %2391, -1.000000e+00
  %2702 = fadd fast float %2392, -1.000000e+00
  %2703 = fmul fast float %2667, %2700
  %2704 = fmul fast float %2667, %2701
  %2705 = fmul fast float %2667, %2702
  %2706 = fadd fast float %2703, 1.000000e+00
  %2707 = fadd fast float %2704, 1.000000e+00
  %2708 = fadd fast float %2705, 1.000000e+00
  %2709 = fmul fast float %2706, %2654
  %2710 = fmul fast float %2707, %2655
  %2711 = fmul fast float %2708, %2656
  br label %2742

; <label>:2712                                    ; preds = %2697
  %2713 = icmp eq i32 %2662, 2
  br i1 %2713, label %2714, label %2742

; <label>:2714                                    ; preds = %2712
  %2715 = call float @dx.op.unary.f32(i32 24, float %2390)  ; Sqrt(value)
  %2716 = call float @dx.op.unary.f32(i32 24, float %2391)  ; Sqrt(value)
  %2717 = call float @dx.op.unary.f32(i32 24, float %2392)  ; Sqrt(value)
  %2718 = fadd fast float %2715, -5.000000e-01
  %2719 = fadd fast float %2716, -5.000000e-01
  %2720 = fadd fast float %2717, -5.000000e-01
  %2721 = fmul fast float %2718, %2667
  %2722 = fmul fast float %2719, %2667
  %2723 = fmul fast float %2720, %2667
  %2724 = fadd fast float %2721, 5.000000e-01
  %2725 = fadd fast float %2722, 5.000000e-01
  %2726 = fadd fast float %2723, 5.000000e-01
  %2727 = fmul fast float %2724, 2.000000e+00
  %2728 = fsub fast float 1.000000e+00, %2727
  %2729 = fmul fast float %2728, %2654
  %2730 = fadd fast float %2729, %2727
  %2731 = fmul fast float %2730, %2654
  %2732 = fmul fast float %2725, 2.000000e+00
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = fmul fast float %2733, %2655
  %2735 = fadd fast float %2734, %2732
  %2736 = fmul fast float %2735, %2655
  %2737 = fmul fast float %2726, 2.000000e+00
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = fmul fast float %2738, %2656
  %2740 = fadd fast float %2739, %2737
  %2741 = fmul fast float %2740, %2656
  br label %2742

; <label>:2742                                    ; preds = %2714, %2712, %2699, %2669, %2653
  %2743 = phi float [ %2654, %2653 ], [ %2731, %2714 ], [ %2654, %2712 ], [ %2709, %2699 ], [ %2679, %2669 ]
  %2744 = phi float [ %2655, %2653 ], [ %2736, %2714 ], [ %2655, %2712 ], [ %2710, %2699 ], [ %2680, %2669 ]
  %2745 = phi float [ %2656, %2653 ], [ %2741, %2714 ], [ %2656, %2712 ], [ %2711, %2699 ], [ %2681, %2669 ]
  %2746 = phi float [ %2657, %2653 ], [ %2657, %2714 ], [ %2657, %2712 ], [ %2657, %2699 ], [ %2691, %2669 ]
  %2747 = phi float [ %2658, %2653 ], [ %2658, %2714 ], [ %2658, %2712 ], [ %2658, %2699 ], [ %2692, %2669 ]
  %2748 = phi float [ %2659, %2653 ], [ %2659, %2714 ], [ %2659, %2712 ], [ %2659, %2699 ], [ %2693, %2669 ]
  %2749 = phi float [ %1869, %2653 ], [ %1869, %2714 ], [ %1869, %2712 ], [ %1869, %2699 ], [ %2684, %2669 ]
  %2750 = phi float [ %1872, %2653 ], [ %1872, %2714 ], [ %1872, %2712 ], [ %1872, %2699 ], [ %2696, %2669 ]
  %2751 = and i32 %2661, 12
  %2752 = icmp eq i32 %2751, 12
  br i1 %2752, label %2825, label %2753

; <label>:2753                                    ; preds = %2742
  %2754 = and i32 %2661, 2097184
  %2755 = icmp eq i32 %2754, 2097184
  %2756 = select i1 %2755, float %2170, float 0.000000e+00
  %2757 = and i32 %2661, 4194336
  %2758 = icmp eq i32 %2757, 4194336
  %2759 = select i1 %2758, float %2170, float 0.000000e+00
  %2760 = and i32 %2661, 8388640
  %2761 = icmp eq i32 %2760, 8388640
  %2762 = select i1 %2761, float %2170, float 0.000000e+00
  %2763 = icmp eq i32 %2751, 0
  br i1 %2763, label %2764, label %2777

; <label>:2764                                    ; preds = %2753
  %2765 = fsub fast float %2471, %1861
  %2766 = fsub fast float %2472, %1862
  %2767 = fmul fast float %2756, %2765
  %2768 = fmul fast float %2756, %2766
  %2769 = fadd fast float %2767, %1861
  %2770 = fadd fast float %2768, %1862
  %2771 = fsub fast float %2473, %1871
  %2772 = fmul fast float %2759, %2771
  %2773 = fadd fast float %2772, %1871
  %2774 = fsub fast float %2470, %1870
  %2775 = fmul fast float %2762, %2774
  %2776 = fadd fast float %2775, %1870
  br label %2825

; <label>:2777                                    ; preds = %2753
  %2778 = icmp eq i32 %2751, 4
  br i1 %2778, label %2779, label %2811

; <label>:2779                                    ; preds = %2777
  %2780 = fmul fast float %2756, %2471
  %2781 = fmul fast float %2756, %2472
  %2782 = fadd fast float %2780, %1861
  %2783 = fadd fast float %2781, %1862
  %2784 = call float @dx.op.binary.f32(i32 36, float %1871, float %2473)  ; FMin(a,b)
  %2785 = fsub fast float %2784, %1871
  %2786 = fmul fast float %2785, %2759
  %2787 = fadd fast float %2786, %1871
  %2788 = fadd fast float %2470, %1870
  %2789 = fmul fast float %2788, 0x3FF337FAE0000000
  %2790 = fmul fast float %1870, %1870
  %2791 = fmul fast float %2470, %2470
  %2792 = fadd fast float %2791, %2790
  %2793 = fmul fast float %2792, 0x3FE5152B00000000
  %2794 = fmul fast float %1870, 0xBFCC1F85E0000000
  %2795 = fmul fast float %2794, %2470
  %2796 = fadd fast float %2795, 0xBFE1363700000000
  %2797 = fadd fast float %2796, %2789
  %2798 = fsub fast float %2797, %2793
  %2799 = fmul fast float %2788, 0x3FBA6F0D00000000
  %2800 = fmul fast float %2792, 0x3FD0432880000000
  %2801 = fmul fast float %1870, 0xBFEF110800000000
  %2802 = fmul fast float %2801, %2470
  %2803 = fadd fast float %2802, 1.000000e+00
  %2804 = fsub fast float %2803, %2799
  %2805 = fadd fast float %2804, %2800
  %2806 = fdiv fast float %2798, %2805
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = fsub fast float %2807, %1870
  %2809 = fmul fast float %2808, %2762
  %2810 = fadd fast float %2809, %1870
  br label %2825

; <label>:2811                                    ; preds = %2777
  %2812 = icmp eq i32 %2751, 8
  br i1 %2812, label %2813, label %2825

; <label>:2813                                    ; preds = %2811
  %2814 = fmul fast float %2756, %2471
  %2815 = fmul fast float %2756, %2472
  %2816 = fadd fast float %2814, %1861
  %2817 = fadd fast float %2815, %1862
  %2818 = call float @dx.op.binary.f32(i32 36, float %1871, float %2473)  ; FMin(a,b)
  %2819 = fsub fast float %2818, %1871
  %2820 = fmul fast float %2819, %2759
  %2821 = fadd fast float %2820, %1871
  %2822 = fsub fast float %2470, %1870
  %2823 = fmul fast float %2762, %2822
  %2824 = fadd fast float %2823, %1870
  br label %2825

; <label>:2825                                    ; preds = %2813, %2811, %2779, %2764, %2742, %2169, %1873, %1860
  %2826 = phi float [ %1861, %2742 ], [ %1861, %2169 ], [ %1861, %1860 ], [ %2816, %2813 ], [ %1861, %2811 ], [ %2782, %2779 ], [ %2769, %2764 ], [ %1861, %1873 ]
  %2827 = phi float [ %1862, %2742 ], [ %1862, %2169 ], [ %1862, %1860 ], [ %2817, %2813 ], [ %1862, %2811 ], [ %2783, %2779 ], [ %2770, %2764 ], [ %1862, %1873 ]
  %2828 = phi float [ %2743, %2742 ], [ %1863, %2169 ], [ %1863, %1860 ], [ %2743, %2813 ], [ %2743, %2811 ], [ %2743, %2779 ], [ %2743, %2764 ], [ %1863, %1873 ]
  %2829 = phi float [ %2744, %2742 ], [ %1864, %2169 ], [ %1864, %1860 ], [ %2744, %2813 ], [ %2744, %2811 ], [ %2744, %2779 ], [ %2744, %2764 ], [ %1864, %1873 ]
  %2830 = phi float [ %2745, %2742 ], [ %1865, %2169 ], [ %1865, %1860 ], [ %2745, %2813 ], [ %2745, %2811 ], [ %2745, %2779 ], [ %2745, %2764 ], [ %1865, %1873 ]
  %2831 = phi float [ %2746, %2742 ], [ %1866, %2169 ], [ %1866, %1860 ], [ %2746, %2813 ], [ %2746, %2811 ], [ %2746, %2779 ], [ %2746, %2764 ], [ %1866, %1873 ]
  %2832 = phi float [ %2747, %2742 ], [ %1867, %2169 ], [ %1867, %1860 ], [ %2747, %2813 ], [ %2747, %2811 ], [ %2747, %2779 ], [ %2747, %2764 ], [ %1867, %1873 ]
  %2833 = phi float [ %2748, %2742 ], [ %1868, %2169 ], [ %1868, %1860 ], [ %2748, %2813 ], [ %2748, %2811 ], [ %2748, %2779 ], [ %2748, %2764 ], [ %1868, %1873 ]
  %2834 = phi float [ %2749, %2742 ], [ %1869, %2169 ], [ %1869, %1860 ], [ %2749, %2813 ], [ %2749, %2811 ], [ %2749, %2779 ], [ %2749, %2764 ], [ %1869, %1873 ]
  %2835 = phi float [ %1870, %2742 ], [ %1870, %2169 ], [ %1870, %1860 ], [ %2824, %2813 ], [ %1870, %2811 ], [ %2810, %2779 ], [ %2776, %2764 ], [ %1870, %1873 ]
  %2836 = phi float [ %1871, %2742 ], [ %1871, %2169 ], [ %1871, %1860 ], [ %2821, %2813 ], [ %1871, %2811 ], [ %2787, %2779 ], [ %2773, %2764 ], [ %1871, %1873 ]
  %2837 = phi float [ %2750, %2742 ], [ %1872, %2169 ], [ %1872, %1860 ], [ %2750, %2813 ], [ %2750, %2811 ], [ %2750, %2779 ], [ %2750, %2764 ], [ %1872, %1873 ]
  br i1 %376, label %3790, label %2838

; <label>:2838                                    ; preds = %2825
  %2839 = icmp ult i32 %427, 4
  %2840 = add i32 %45, 72
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %45, 76
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = or i32 %2845, %2842
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %3790, label %2848

; <label>:2848                                    ; preds = %2838
  %2849 = and i32 %2842, 262144
  %2850 = icmp ne i32 %2849, 0
  %2851 = select i1 %2850, float %47, float 1.000000e+00
  %2852 = select i1 %2850, float %48, float 0.000000e+00
  %2853 = select i1 %2850, float %49, float 0.000000e+00
  %2854 = select i1 %2850, float %50, float 1.000000e+00
  %2855 = select i1 %2850, float %51, float %72
  %2856 = select i1 %2850, float %52, float %73
  %2857 = add i32 %45, 332
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = lshr i32 %2859, 16
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = fmul fast float %2861, 0x3F50624DE0000000
  %2863 = add i32 %45, 136
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 16
  %2867 = and i32 %2866, 255
  %2868 = lshr i32 %2865, 24
  %2869 = add i32 %45, 340
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 65535
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = lshr i32 %2871, 16
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = add i32 %45, 80
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = lshr i32 %2878, 22
  %2880 = shl nuw nsw i32 %2879, 5
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = shl i32 %2878, 4
  %2883 = and i32 %2882, 32752
  %2884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2883)  ; LegacyF16ToF32(value)
  %2885 = lshr i32 %2878, 7
  %2886 = and i32 %2885, 32752
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 3
  %2890 = fmul fast float %2889, 1.000000e+03
  %2891 = fmul fast float %366, %2890
  %2892 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2893 = fadd fast float %2892, %356
  %2894 = fmul fast float %367, %2890
  %2895 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2896 = fadd fast float %2895, %358
  %2897 = fmul fast float %2862, %2890
  %2898 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2899 = fmul fast float %2898, 0x401921FB60000000
  %2900 = fadd fast float %2899, %2881
  %2901 = call float @dx.op.unary.f32(i32 13, float %2900)  ; Sin(value)
  %2902 = call float @dx.op.unary.f32(i32 12, float %2900)  ; Cos(value)
  %2903 = fsub fast float -0.000000e+00, %2901
  %2904 = fadd fast float %2855, -5.000000e-01
  %2905 = fadd fast float %2856, -5.000000e-01
  %2906 = fmul fast float %2873, %2904
  %2907 = fmul fast float %2875, %2905
  %2908 = fadd fast float %2906, 5.000000e-01
  %2909 = fadd fast float %2907, 5.000000e-01
  %2910 = fmul fast float %2884, %2908
  %2911 = fmul fast float %2887, %2909
  %2912 = fmul fast float %2902, %2910
  %2913 = call float @dx.op.tertiary.f32(i32 46, float %2903, float %2911, float %2912)  ; FMad(a,b,c)
  %2914 = fmul fast float %2901, %2910
  %2915 = call float @dx.op.tertiary.f32(i32 46, float %2902, float %2911, float %2914)  ; FMad(a,b,c)
  %2916 = fadd fast float %2893, %2913
  %2917 = fadd fast float %2896, %2915
  %2918 = icmp ugt i32 %2867, 1
  %2919 = icmp ugt i32 %2865, 33554431
  %2920 = or i1 %2919, %2918
  br i1 %2920, label %2921, label %2946

; <label>:2921                                    ; preds = %2848
  %2922 = add i32 %45, 276
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 16
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = fmul fast float %2889, %2926
  %2928 = call float @dx.op.unary.f32(i32 22, float %2927)  ; Frc(value)
  %2929 = mul nuw nsw i32 %2867, %2868
  %2930 = uitofp i32 %2929 to float
  %2931 = fmul fast float %2928, %2930
  %2932 = call float @dx.op.unary.f32(i32 27, float %2931)  ; Round_ni(value)
  %2933 = fptoui float %2932 to i32
  %2934 = urem i32 %2933, %2867
  %2935 = udiv i32 %2933, %2868
  %2936 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2937 = call float @dx.op.unary.f32(i32 22, float %2917)  ; Frc(value)
  %2938 = uitofp i32 %2934 to float
  %2939 = uitofp i32 %2935 to float
  %2940 = fadd fast float %2936, %2938
  %2941 = fadd fast float %2937, %2939
  %2942 = uitofp i32 %2867 to float
  %2943 = uitofp i32 %2868 to float
  %2944 = fdiv fast float %2940, %2942
  %2945 = fdiv fast float %2941, %2943
  br label %2946

; <label>:2946                                    ; preds = %2921, %2848
  %2947 = phi float [ %2944, %2921 ], [ %2916, %2848 ]
  %2948 = phi float [ %2945, %2921 ], [ %2917, %2848 ]
  %2949 = and i32 %2842, 16777216
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3060, label %2951

; <label>:2951                                    ; preds = %2946
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2956 = fadd fast float %2953, %143
  %2957 = fadd fast float %2954, %144
  %2958 = fadd fast float %2955, %145
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2962 = icmp eq i32 %46, 65535
  br i1 %2962, label %3057, label %2963

; <label>:2963                                    ; preds = %2951
  %2964 = lshr i32 %46, 1
  %2965 = shl i32 %2964, 2
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %46, 1
  %2969 = icmp ne i32 %2968, 0
  %2970 = lshr i32 %2967, 16
  %2971 = and i32 %2967, 65535
  %2972 = select i1 %2969, i32 %2970, i32 %2971
  %2973 = icmp eq i32 %2972, 65535
  br i1 %2973, label %3053, label %2974

; <label>:2974                                    ; preds = %2963
  %2975 = mul nuw nsw i32 %2972, 40
  %2976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.ResRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.ResRet.f32 %2976, 2
  %2980 = add nuw nsw i32 %2975, 12
  %2981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = add nuw nsw i32 %2975, 24
  %2986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = add nuw nsw i32 %2975, 36
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = fsub fast float %2956, %2977
  %2994 = fsub fast float %2957, %2978
  %2995 = fsub fast float %2958, %2979
  %2996 = fmul fast float %2992, %2993
  %2997 = fmul fast float %2992, %2994
  %2998 = fmul fast float %2992, %2995
  %2999 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %3000 = call float @dx.op.unary.f32(i32 27, float %2997)  ; Round_ni(value)
  %3001 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = fadd fast float %3000, 5.000000e-01
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = fmul fast float %3002, %2982
  %3006 = fmul fast float %3003, %2983
  %3007 = fmul fast float %3004, %2984
  %3008 = shl i32 %46, 2
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = add i32 %3010, 0
  %3012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3013 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3014 = call float @dx.op.unary.f32(i32 22, float %3006)  ; Frc(value)
  %3015 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3012, %dx.types.Handle %40, float %3013, float %3014, float %3015, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = fmul fast float %3017, 1.023000e+03
  %3021 = fmul fast float %3018, 1.023000e+03
  %3022 = fmul fast float %3019, 1.023000e+03
  %3023 = fadd fast float %3020, 5.000000e-01
  %3024 = fadd fast float %3021, 5.000000e-01
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3027 = call float @dx.op.unary.f32(i32 27, float %3024)  ; Round_ni(value)
  %3028 = call float @dx.op.unary.f32(i32 27, float %3025)  ; Round_ni(value)
  %3029 = fsub fast float %2996, %2999
  %3030 = fsub fast float %2997, %3000
  %3031 = fsub fast float %2998, %3001
  %3032 = fmul fast float %3029, 7.500000e-01
  %3033 = fmul fast float %3030, 7.500000e-01
  %3034 = fmul fast float %3031, 7.500000e-01
  %3035 = fadd fast float %2999, 1.250000e-01
  %3036 = fadd fast float %3035, %3032
  %3037 = fadd fast float %3036, %3026
  %3038 = fadd fast float %3000, 1.250000e-01
  %3039 = fadd fast float %3038, %3033
  %3040 = fadd fast float %3039, %3027
  %3041 = fadd fast float %3001, 1.250000e-01
  %3042 = fadd fast float %3041, %3034
  %3043 = fadd fast float %3042, %3028
  %3044 = fmul fast float %3037, %2987
  %3045 = fmul fast float %3040, %2988
  %3046 = fmul fast float %3043, %2989
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %3048, 0
  %3050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3050, %dx.types.Handle %38, float %3044, float %3045, float %3046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  br label %3053

; <label>:3053                                    ; preds = %2974, %2963
  %3054 = phi float [ %3052, %2974 ], [ -1.000000e+00, %2963 ]
  %3055 = fadd fast float %3054, %2961
  %3056 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  br label %3057

; <label>:3057                                    ; preds = %3053, %2951
  %3058 = phi float [ %3056, %3053 ], [ %2961, %2951 ]
  %3059 = fmul fast float %3058, %422
  br label %3060

; <label>:3060                                    ; preds = %3057, %2946
  %3061 = phi float [ %3059, %3057 ], [ %422, %2946 ]
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 256
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3112, label %3066

; <label>:3066                                    ; preds = %3060
  %3067 = add i32 %45, 436
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %3069, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3071, %dx.types.Handle %81, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = add i32 %45, 148
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = shl i32 %3076, 4
  %3078 = and i32 %3077, 32752
  %3079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3078)  ; LegacyF16ToF32(value)
  %3080 = lshr i32 %3076, 7
  %3081 = and i32 %3080, 32752
  %3082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3081)  ; LegacyF16ToF32(value)
  %3083 = fsub fast float 1.000000e+00, %3061
  %3084 = call float @dx.op.binary.f32(i32 35, float %3083, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3085 = bitcast float %3061 to i32
  %3086 = sitofp i32 %3085 to float
  %3087 = fadd fast float %3086, 0xC1CFBF8940000000
  %3088 = fmul fast float %3082, %3087
  %3089 = fadd fast float %3088, 0x41CFBF8940000000
  %3090 = fptosi float %3089 to i32
  %3091 = bitcast i32 %3090 to float
  %3092 = bitcast float %3084 to i32
  %3093 = sitofp i32 %3092 to float
  %3094 = fadd fast float %3093, 0xC1CFBF8940000000
  %3095 = fmul fast float %3094, %3082
  %3096 = fadd fast float %3095, 0x41CFBF8940000000
  %3097 = fptosi float %3096 to i32
  %3098 = bitcast i32 %3097 to float
  %3099 = fmul fast float %3091, %3079
  %3100 = fmul fast float %3098, %3079
  %3101 = fsub fast float %3084, %3099
  %3102 = fadd fast float %3100, %3084
  %3103 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3104 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3105 = fsub fast float %3073, %3103
  %3106 = fsub fast float %3104, %3103
  %3107 = bitcast float %3106 to i32
  %3108 = sub nsw i32 2129859010, %3107
  %3109 = bitcast i32 %3108 to float
  %3110 = fmul fast float %3109, %3105
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  br label %3112

; <label>:3112                                    ; preds = %3066, %3060
  %3113 = phi float [ %3111, %3066 ], [ %3061, %3060 ]
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 128
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3134, label %3118

; <label>:3118                                    ; preds = %3112
  %3119 = add i32 %45, 420
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %81, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 524288
  %3129 = icmp ne i32 %3128, 0
  %3130 = fcmp fast ogt float %3125, 0x3FE0101020000000
  %3131 = select i1 %3130, float 1.000000e+00, float 0.000000e+00
  %3132 = select i1 %3129, float %3131, float %3125
  %3133 = fmul fast float %3132, %3113
  br label %3134

; <label>:3134                                    ; preds = %3118, %3112
  %3135 = phi float [ %3133, %3118 ], [ %3113, %3112 ]
  %3136 = fcmp fast ult float %3135, 0x3F70101020000000
  br i1 %3136, label %3790, label %3137

; <label>:3137                                    ; preds = %3134
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 16
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3340, label %3142

; <label>:3142                                    ; preds = %3137
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %45, 372
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %3147, 0
  %3149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3149, %dx.types.Handle %80, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.ResRet.f32 %3150, 2
  %3154 = extractvalue %dx.types.ResRet.f32 %3150, 3
  %3155 = and i32 %3144, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3144, 8
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3154, %3156
  %3161 = fadd fast float %3160, %3159
  %3162 = fmul fast float %3161, 0x3F70101000000000
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 512
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3175, label %3167

; <label>:3167                                    ; preds = %3142
  %3168 = add i32 %45, 452
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = add i32 %3170, 0
  %3172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3172, %dx.types.Handle %81, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  br label %3175

; <label>:3175                                    ; preds = %3167, %3142
  %3176 = phi float [ %3174, %3167 ], [ 1.000000e+00, %3142 ]
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 33554432
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3287, label %3181

; <label>:3181                                    ; preds = %3175
  %3182 = add i32 %45, 272
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = lshr i32 %3184, 16
  %3188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3187)  ; LegacyF16ToF32(value)
  %3189 = add i32 %45, 276
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 24
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = and i32 %3195, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = lshr i32 %3195, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3195, 16
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = add i32 %45, 268
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3227 = bitcast float %3151 to i32
  %3228 = ashr i32 %3227, 1
  %3229 = sub nsw i32 1597463174, %3228
  %3230 = bitcast i32 %3229 to float
  %3231 = fmul fast float %3151, 5.000000e-01
  %3232 = fmul fast float %3230, %3230
  %3233 = fmul fast float %3232, %3231
  %3234 = fsub fast float 1.500000e+00, %3233
  %3235 = fmul fast float %3230, %3151
  %3236 = fmul fast float %3235, %3234
  %3237 = bitcast float %3152 to i32
  %3238 = ashr i32 %3237, 1
  %3239 = sub nsw i32 1597463174, %3238
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3152, 5.000000e-01
  %3242 = fmul fast float %3240, %3240
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float 1.500000e+00, %3243
  %3245 = fmul fast float %3240, %3152
  %3246 = fmul fast float %3245, %3244
  %3247 = bitcast float %3153 to i32
  %3248 = ashr i32 %3247, 1
  %3249 = sub nsw i32 1597463174, %3248
  %3250 = bitcast i32 %3249 to float
  %3251 = fmul fast float %3153, 5.000000e-01
  %3252 = fmul fast float %3250, %3250
  %3253 = fmul fast float %3252, %3251
  %3254 = fsub fast float 1.500000e+00, %3253
  %3255 = fmul fast float %3250, %3153
  %3256 = fmul fast float %3255, %3254
  %3257 = fsub fast float %3236, %3218
  %3258 = fsub fast float %3246, %3222
  %3259 = fsub fast float %3256, %3226
  %3260 = fmul fast float %3257, %3186
  %3261 = fmul fast float %3258, %3188
  %3262 = fmul fast float %3259, %3193
  %3263 = fadd fast float %3260, %3201
  %3264 = fadd fast float %3261, %3205
  %3265 = fadd fast float %3262, %3209
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = fmul fast float %3266, %3266
  %3270 = fmul fast float %3267, %3267
  %3271 = fmul fast float %3268, %3268
  %3272 = fsub fast float %3269, %3151
  %3273 = fsub fast float %3270, %3152
  %3274 = fsub fast float %3271, %3153
  %3275 = fmul fast float %3272, %3176
  %3276 = fmul fast float %3273, %3176
  %3277 = fmul fast float %3274, %3176
  %3278 = fadd fast float %3275, %3151
  %3279 = fadd fast float %3276, %3152
  %3280 = fadd fast float %3277, %3153
  %3281 = fadd fast float %3198, %3162
  %3282 = fsub fast float %3281, %3215
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fsub fast float %3283, %3162
  %3285 = fmul fast float %3284, %3176
  %3286 = fadd fast float %3285, %3162
  br label %3340

; <label>:3287                                    ; preds = %3175
  %3288 = and i32 %3178, 134217728
  %3289 = icmp eq i32 %3288, 0
  br i1 %3289, label %3324, label %3290

; <label>:3290                                    ; preds = %3287
  %3291 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3292 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3294 = fadd fast float %3291, -5.000000e-01
  %3295 = fadd fast float %3292, -5.000000e-01
  %3296 = fadd fast float %3293, -5.000000e-01
  %3297 = fmul fast float %3294, %3176
  %3298 = fmul fast float %3295, %3176
  %3299 = fmul fast float %3296, %3176
  %3300 = fadd fast float %3297, 5.000000e-01
  %3301 = fadd fast float %3298, 5.000000e-01
  %3302 = fadd fast float %3299, 5.000000e-01
  %3303 = call float @dx.op.unary.f32(i32 24, float %3151)  ; Sqrt(value)
  %3304 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %3153)  ; Sqrt(value)
  %3306 = fmul fast float %3300, 2.000000e+00
  %3307 = fsub fast float 1.000000e+00, %3306
  %3308 = fmul fast float %3307, %3303
  %3309 = fadd fast float %3308, %3306
  %3310 = fmul fast float %3309, %3303
  %3311 = fmul fast float %3301, 2.000000e+00
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = fmul fast float %3312, %3304
  %3314 = fadd fast float %3313, %3311
  %3315 = fmul fast float %3314, %3304
  %3316 = fmul fast float %3302, 2.000000e+00
  %3317 = fsub fast float 1.000000e+00, %3316
  %3318 = fmul fast float %3317, %3305
  %3319 = fadd fast float %3318, %3316
  %3320 = fmul fast float %3319, %3305
  %3321 = fmul fast float %3310, %3310
  %3322 = fmul fast float %3315, %3315
  %3323 = fmul fast float %3320, %3320
  br label %3340

; <label>:3324                                    ; preds = %3287
  %3325 = fmul fast float %343, %343
  %3326 = fmul fast float %347, %347
  %3327 = fmul fast float %351, %351
  %3328 = fadd fast float %3325, -1.000000e+00
  %3329 = fadd fast float %3326, -1.000000e+00
  %3330 = fadd fast float %3327, -1.000000e+00
  %3331 = fmul fast float %3176, %3328
  %3332 = fmul fast float %3176, %3329
  %3333 = fmul fast float %3176, %3330
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fadd fast float %3332, 1.000000e+00
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fmul fast float %3334, %3151
  %3338 = fmul fast float %3335, %3152
  %3339 = fmul fast float %3336, %3153
  br label %3340

; <label>:3340                                    ; preds = %3324, %3290, %3181, %3137
  %3341 = phi float [ %3286, %3181 ], [ %3162, %3290 ], [ %3162, %3324 ], [ 0x3FA23C0BE0000000, %3137 ]
  %3342 = phi float [ %3278, %3181 ], [ %3321, %3290 ], [ %3337, %3324 ], [ 1.000000e+00, %3137 ]
  %3343 = phi float [ %3279, %3181 ], [ %3322, %3290 ], [ %3338, %3324 ], [ 1.000000e+00, %3137 ]
  %3344 = phi float [ %3280, %3181 ], [ %3323, %3290 ], [ %3339, %3324 ], [ 1.000000e+00, %3137 ]
  %3345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.i32 %3345, 1
  %3347 = and i32 %3346, 1
  %3348 = icmp ne i32 %3347, 0
  %3349 = add i32 %45, 356
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 32
  %3353 = icmp ne i32 %3352, 0
  %3354 = and i1 %3348, %3353
  %3355 = select i1 %3354, float 1.000000e+00, float %3342
  %3356 = select i1 %3354, float 0x3FD3333340000000, float %3343
  %3357 = select i1 %3354, float 0x3FD3333340000000, float %3344
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 32
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %3434, label %3362

; <label>:3362                                    ; preds = %3340
  %3363 = add i32 %45, 140
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = add i32 %45, 388
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %3368, 0
  %3370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3370, %dx.types.Handle %80, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = extractvalue %dx.types.ResRet.f32 %3371, 3
  %3376 = and i32 %3365, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = lshr i32 %3365, 8
  %3379 = and i32 %3378, 255
  %3380 = uitofp i32 %3379 to float
  %3381 = lshr i32 %3365, 16
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101000000000
  %3385 = fmul fast float %3372, %3377
  %3386 = fadd fast float %3385, %3380
  %3387 = fmul fast float %3386, 0x3F70101000000000
  %3388 = fadd fast float %3373, -5.000000e-01
  %3389 = fadd fast float %3375, -5.000000e-01
  %3390 = fmul fast float %3388, %3384
  %3391 = fmul fast float %3389, %3384
  %3392 = fadd fast float %3390, 5.000000e-01
  %3393 = fadd fast float %3391, 5.000000e-01
  %3394 = fmul fast float %3392, 2.000000e+00
  %3395 = fadd fast float %3394, -1.000000e+00
  %3396 = fmul fast float %3393, 2.000000e+00
  %3397 = fadd fast float %3396, -1.000000e+00
  %3398 = fadd fast float %3395, %3397
  %3399 = fmul fast float %3398, 5.000000e-01
  %3400 = fsub fast float %3395, %3397
  %3401 = fmul fast float %3400, 5.000000e-01
  %3402 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3405 = fsub fast float %3403, %3404
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3399, float %3401, float %3405, float %3399, float %3401, float %3405)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = call float @dx.op.unary.f32(i32 25, float %3406)  ; Rsqrt(value)
  %3408 = fmul fast float %3399, %3407
  %3409 = fmul fast float %3401, %3407
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 67108864
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3430, label %3414

; <label>:3414                                    ; preds = %3362
  %3415 = add i32 %45, 328
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 65535
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 65535
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = lshr i32 %3417, 16
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = fsub fast float %3387, %3425
  %3427 = fmul fast float %3426, %3419
  %3428 = fadd fast float %3427, %3423
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  br label %3430

; <label>:3430                                    ; preds = %3414, %3362
  %3431 = phi float [ %3429, %3414 ], [ %3387, %3362 ]
  %3432 = call float @dx.op.dot2.f32(i32 54, float %3408, float %3409, float %2851, float %2852)  ; Dot2(ax,ay,bx,by)
  %3433 = call float @dx.op.dot2.f32(i32 54, float %3408, float %3409, float %2853, float %2854)  ; Dot2(ax,ay,bx,by)
  br label %3434

; <label>:3434                                    ; preds = %3430, %3340
  %3435 = phi float [ %3431, %3430 ], [ 0x3FD6666660000000, %3340 ]
  %3436 = phi float [ %3432, %3430 ], [ 0.000000e+00, %3340 ]
  %3437 = phi float [ %3433, %3430 ], [ 0.000000e+00, %3340 ]
  %3438 = phi float [ %3374, %3430 ], [ 1.000000e+00, %3340 ]
  %3439 = add i32 %45, 208
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = lshr i32 %3441, 22
  %3443 = shl nuw nsw i32 %3442, 5
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 64
  %3448 = icmp eq i32 %3447, 0
  br i1 %3448, label %3482, label %3449

; <label>:3449                                    ; preds = %3434
  %3450 = add i32 %45, 404
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = add i32 %3452, 0
  %3454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 131072
  %3458 = icmp eq i32 %3457, 0
  %3459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3454, %dx.types.Handle %80, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3463 = fmul fast float %3460, %331
  %3464 = fmul fast float %3461, %334
  %3465 = fmul fast float %3462, %337
  br i1 %3458, label %3472, label %3466

; <label>:3466                                    ; preds = %3449
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 0
  %3469 = fmul fast float %3468, %3463
  %3470 = fmul fast float %3468, %3464
  %3471 = fmul fast float %3468, %3465
  br label %3472

; <label>:3472                                    ; preds = %3466, %3449
  %3473 = phi float [ %3469, %3466 ], [ %3463, %3449 ]
  %3474 = phi float [ %3470, %3466 ], [ %3464, %3449 ]
  %3475 = phi float [ %3471, %3466 ], [ %3465, %3449 ]
  %3476 = fmul fast float %3473, %3444
  %3477 = select i1 %185, float %3476, float %3473
  %3478 = call float @dx.op.dot3.f32(i32 55, float %3477, float %3474, float %3475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3479 = select i1 %185, float 0.000000e+00, float %3473
  %3480 = select i1 %185, float %3478, float %3474
  %3481 = select i1 %185, float 0.000000e+00, float %3475
  br label %3482

; <label>:3482                                    ; preds = %3472, %3434
  %3483 = phi float [ %3479, %3472 ], [ 0.000000e+00, %3434 ]
  %3484 = phi float [ %3480, %3472 ], [ 0.000000e+00, %3434 ]
  %3485 = phi float [ %3481, %3472 ], [ 0.000000e+00, %3434 ]
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = and i32 %3487, 1024
  %3489 = icmp eq i32 %3488, 0
  br i1 %3489, label %3520, label %3490

; <label>:3490                                    ; preds = %3482
  %3491 = add i32 %45, 200
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %3493, 255
  %3495 = uitofp i32 %3494 to float
  %3496 = fmul fast float %3495, 0x3F70101020000000
  %3497 = lshr i32 %3493, 8
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = fmul fast float %3499, 0x3F70101020000000
  %3501 = lshr i32 %3493, 16
  %3502 = and i32 %3501, 255
  %3503 = uitofp i32 %3502 to float
  %3504 = fmul fast float %3503, 0x3F70101020000000
  %3505 = fmul fast float %3496, %3496
  %3506 = fmul fast float %3500, %3500
  %3507 = fmul fast float %3504, %3504
  %3508 = add i32 %45, 468
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = add i32 %3510, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3512, %dx.types.Handle %81, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = fmul fast float %3505, %3514
  %3518 = fmul fast float %3506, %3515
  %3519 = fmul fast float %3507, %3516
  br label %3520

; <label>:3520                                    ; preds = %3490, %3482
  %3521 = phi float [ %3517, %3490 ], [ 0.000000e+00, %3482 ]
  %3522 = phi float [ %3518, %3490 ], [ 0.000000e+00, %3482 ]
  %3523 = phi float [ %3519, %3490 ], [ 0.000000e+00, %3482 ]
  %3524 = fcmp fast ogt float %3521, 0.000000e+00
  %3525 = fcmp fast ogt float %3522, 0.000000e+00
  %3526 = fcmp fast ogt float %3523, 0.000000e+00
  %3527 = call float @dx.op.unary.f32(i32 23, float %3521)  ; Log(value)
  %3528 = call float @dx.op.unary.f32(i32 23, float %3522)  ; Log(value)
  %3529 = call float @dx.op.unary.f32(i32 23, float %3523)  ; Log(value)
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = lshr i32 %3531, 7
  %3533 = and i32 %3532, 32752
  %3534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3533)  ; LegacyF16ToF32(value)
  %3535 = fmul fast float %3527, 0xBFE62E4300000000
  %3536 = fmul fast float %3535, %3534
  %3537 = fmul fast float %3528, 0xBFE62E4300000000
  %3538 = fmul fast float %3537, %3534
  %3539 = fmul fast float %3529, 0xBFE62E4300000000
  %3540 = fmul fast float %3539, %3534
  %3541 = select i1 %3524, float %3536, float 1.270000e+02
  %3542 = select i1 %3525, float %3538, float 1.270000e+02
  %3543 = select i1 %3526, float %3540, float 1.270000e+02
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = and i32 %3545, 10240
  %3547 = icmp eq i32 %3546, 0
  br i1 %3547, label %3568, label %3548

; <label>:3548                                    ; preds = %3520
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 2048
  %3552 = icmp eq i32 %3551, 0
  br i1 %3552, label %3568, label %3553

; <label>:3553                                    ; preds = %3548
  %3554 = add i32 %45, 484
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = add i32 %3556, 0
  %3558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3558, %dx.types.Handle %81, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 3
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = shl i32 %3562, 4
  %3564 = and i32 %3563, 32752
  %3565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3564)  ; LegacyF16ToF32(value)
  %3566 = fmul fast float %3565, %3560
  %3567 = call float @dx.op.binary.f32(i32 35, float %3566, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3568

; <label>:3568                                    ; preds = %3553, %3548, %3520
  %3569 = phi float [ %3567, %3553 ], [ 0x3F70101020000000, %3548 ], [ 0x3F70101020000000, %3520 ]
  %3570 = add i32 %45, 144
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = and i32 %3572, 255
  %3574 = uitofp i32 %3573 to float
  %3575 = lshr i32 %3572, 8
  %3576 = and i32 %3575, 255
  %3577 = uitofp i32 %3576 to float
  %3578 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3356, float %3357, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3579 = fmul fast float %3577, %3578
  %3580 = fadd fast float %3579, %3574
  %3581 = fmul fast float %3580, 0x3F70101020000000
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  br i1 %2839, label %3583, label %3618

; <label>:3583                                    ; preds = %3568
  %3584 = fmul fast float %3569, 2.000000e+00
  %3585 = fcmp fast olt float %3541, 1.270000e+02
  %3586 = fcmp fast olt float %3542, 1.270000e+02
  %3587 = fcmp fast olt float %3543, 1.270000e+02
  %3588 = fmul fast float %3541, 0xBFF7154760000000
  %3589 = fmul fast float %3588, %3584
  %3590 = fmul fast float %3542, 0xBFF7154760000000
  %3591 = fmul fast float %3590, %3584
  %3592 = fmul fast float %3543, 0xBFF7154760000000
  %3593 = fmul fast float %3592, %3584
  %3594 = call float @dx.op.unary.f32(i32 21, float %3589)  ; Exp(value)
  %3595 = call float @dx.op.unary.f32(i32 21, float %3591)  ; Exp(value)
  %3596 = call float @dx.op.unary.f32(i32 21, float %3593)  ; Exp(value)
  %3597 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3598 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3599 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  %3600 = fadd fast float %3597, -1.000000e+00
  %3601 = select i1 %3585, float %3600, float -1.000000e+00
  %3602 = fadd fast float %3598, -1.000000e+00
  %3603 = select i1 %3586, float %3602, float -1.000000e+00
  %3604 = fadd fast float %3599, -1.000000e+00
  %3605 = select i1 %3587, float %3604, float -1.000000e+00
  %3606 = fmul fast float %3601, %3135
  %3607 = fmul fast float %3603, %3135
  %3608 = fmul fast float %3605, %3135
  %3609 = fadd fast float %3606, 1.000000e+00
  %3610 = fadd fast float %3607, 1.000000e+00
  %3611 = fadd fast float %3608, 1.000000e+00
  %3612 = fmul fast float %3609, %2828
  %3613 = fmul fast float %3610, %2829
  %3614 = fmul fast float %3611, %2830
  %3615 = fmul fast float %3609, %2831
  %3616 = fmul fast float %3610, %2832
  %3617 = fmul fast float %3611, %2833
  br label %3618

; <label>:3618                                    ; preds = %3583, %3568
  %3619 = phi float [ %3612, %3583 ], [ %2828, %3568 ]
  %3620 = phi float [ %3613, %3583 ], [ %2829, %3568 ]
  %3621 = phi float [ %3614, %3583 ], [ %2830, %3568 ]
  %3622 = phi float [ %3615, %3583 ], [ %2831, %3568 ]
  %3623 = phi float [ %3616, %3583 ], [ %2832, %3568 ]
  %3624 = phi float [ %3617, %3583 ], [ %2833, %3568 ]
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = and i32 %3626, 3
  %3628 = icmp eq i32 %3627, 3
  br i1 %3628, label %3707, label %3629

; <label>:3629                                    ; preds = %3618
  %3630 = and i32 %3626, 16
  %3631 = icmp ne i32 %3630, 0
  %3632 = select i1 %3631, float %3135, float 0.000000e+00
  %3633 = icmp eq i32 %3627, 0
  br i1 %3633, label %3634, label %3662

; <label>:3634                                    ; preds = %3629
  %3635 = and i32 %3626, 64
  %3636 = icmp ne i32 %3635, 0
  %3637 = select i1 %3636, float %3135, float 0.000000e+00
  %3638 = fsub fast float %3355, %3619
  %3639 = fsub fast float %3356, %3620
  %3640 = fsub fast float %3357, %3621
  %3641 = fmul fast float %3632, %3638
  %3642 = fmul fast float %3632, %3639
  %3643 = fmul fast float %3632, %3640
  %3644 = fadd fast float %3641, %3619
  %3645 = fadd fast float %3642, %3620
  %3646 = fadd fast float %3643, %3621
  %3647 = fsub fast float %3341, %2834
  %3648 = fmul fast float %3632, %3647
  %3649 = fadd fast float %3648, %2834
  %3650 = fsub fast float %3483, %3622
  %3651 = fsub fast float %3484, %3623
  %3652 = fsub fast float %3485, %3624
  %3653 = fmul fast float %3637, %3650
  %3654 = fmul fast float %3637, %3651
  %3655 = fmul fast float %3637, %3652
  %3656 = fadd fast float %3653, %3622
  %3657 = fadd fast float %3654, %3623
  %3658 = fadd fast float %3655, %3624
  %3659 = fsub fast float %3582, %2837
  %3660 = fmul fast float %3632, %3659
  %3661 = fadd fast float %3660, %2837
  br label %3707

; <label>:3662                                    ; preds = %3629
  %3663 = icmp eq i32 %3627, 1
  br i1 %3663, label %3664, label %3677

; <label>:3664                                    ; preds = %3662
  %3665 = fadd fast float %3355, -1.000000e+00
  %3666 = fadd fast float %3356, -1.000000e+00
  %3667 = fadd fast float %3357, -1.000000e+00
  %3668 = fmul fast float %3632, %3665
  %3669 = fmul fast float %3632, %3666
  %3670 = fmul fast float %3632, %3667
  %3671 = fadd fast float %3668, 1.000000e+00
  %3672 = fadd fast float %3669, 1.000000e+00
  %3673 = fadd fast float %3670, 1.000000e+00
  %3674 = fmul fast float %3671, %3619
  %3675 = fmul fast float %3672, %3620
  %3676 = fmul fast float %3673, %3621
  br label %3707

; <label>:3677                                    ; preds = %3662
  %3678 = icmp eq i32 %3627, 2
  br i1 %3678, label %3679, label %3707

; <label>:3679                                    ; preds = %3677
  %3680 = call float @dx.op.unary.f32(i32 24, float %3355)  ; Sqrt(value)
  %3681 = call float @dx.op.unary.f32(i32 24, float %3356)  ; Sqrt(value)
  %3682 = call float @dx.op.unary.f32(i32 24, float %3357)  ; Sqrt(value)
  %3683 = fadd fast float %3680, -5.000000e-01
  %3684 = fadd fast float %3681, -5.000000e-01
  %3685 = fadd fast float %3682, -5.000000e-01
  %3686 = fmul fast float %3683, %3632
  %3687 = fmul fast float %3684, %3632
  %3688 = fmul fast float %3685, %3632
  %3689 = fadd fast float %3686, 5.000000e-01
  %3690 = fadd fast float %3687, 5.000000e-01
  %3691 = fadd fast float %3688, 5.000000e-01
  %3692 = fmul fast float %3689, 2.000000e+00
  %3693 = fsub fast float 1.000000e+00, %3692
  %3694 = fmul fast float %3693, %3619
  %3695 = fadd fast float %3694, %3692
  %3696 = fmul fast float %3695, %3619
  %3697 = fmul fast float %3690, 2.000000e+00
  %3698 = fsub fast float 1.000000e+00, %3697
  %3699 = fmul fast float %3698, %3620
  %3700 = fadd fast float %3699, %3697
  %3701 = fmul fast float %3700, %3620
  %3702 = fmul fast float %3691, 2.000000e+00
  %3703 = fsub fast float 1.000000e+00, %3702
  %3704 = fmul fast float %3703, %3621
  %3705 = fadd fast float %3704, %3702
  %3706 = fmul fast float %3705, %3621
  br label %3707

; <label>:3707                                    ; preds = %3679, %3677, %3664, %3634, %3618
  %3708 = phi float [ %3619, %3618 ], [ %3696, %3679 ], [ %3619, %3677 ], [ %3674, %3664 ], [ %3644, %3634 ]
  %3709 = phi float [ %3620, %3618 ], [ %3701, %3679 ], [ %3620, %3677 ], [ %3675, %3664 ], [ %3645, %3634 ]
  %3710 = phi float [ %3621, %3618 ], [ %3706, %3679 ], [ %3621, %3677 ], [ %3676, %3664 ], [ %3646, %3634 ]
  %3711 = phi float [ %3622, %3618 ], [ %3622, %3679 ], [ %3622, %3677 ], [ %3622, %3664 ], [ %3656, %3634 ]
  %3712 = phi float [ %3623, %3618 ], [ %3623, %3679 ], [ %3623, %3677 ], [ %3623, %3664 ], [ %3657, %3634 ]
  %3713 = phi float [ %3624, %3618 ], [ %3624, %3679 ], [ %3624, %3677 ], [ %3624, %3664 ], [ %3658, %3634 ]
  %3714 = phi float [ %2834, %3618 ], [ %2834, %3679 ], [ %2834, %3677 ], [ %2834, %3664 ], [ %3649, %3634 ]
  %3715 = phi float [ %2837, %3618 ], [ %2837, %3679 ], [ %2837, %3677 ], [ %2837, %3664 ], [ %3661, %3634 ]
  %3716 = and i32 %3626, 12
  %3717 = icmp eq i32 %3716, 12
  br i1 %3717, label %3790, label %3718

; <label>:3718                                    ; preds = %3707
  %3719 = and i32 %3626, 2097184
  %3720 = icmp eq i32 %3719, 2097184
  %3721 = select i1 %3720, float %3135, float 0.000000e+00
  %3722 = and i32 %3626, 4194336
  %3723 = icmp eq i32 %3722, 4194336
  %3724 = select i1 %3723, float %3135, float 0.000000e+00
  %3725 = and i32 %3626, 8388640
  %3726 = icmp eq i32 %3725, 8388640
  %3727 = select i1 %3726, float %3135, float 0.000000e+00
  %3728 = icmp eq i32 %3716, 0
  br i1 %3728, label %3729, label %3742

; <label>:3729                                    ; preds = %3718
  %3730 = fsub fast float %3436, %2826
  %3731 = fsub fast float %3437, %2827
  %3732 = fmul fast float %3721, %3730
  %3733 = fmul fast float %3721, %3731
  %3734 = fadd fast float %3732, %2826
  %3735 = fadd fast float %3733, %2827
  %3736 = fsub fast float %3438, %2836
  %3737 = fmul fast float %3724, %3736
  %3738 = fadd fast float %3737, %2836
  %3739 = fsub fast float %3435, %2835
  %3740 = fmul fast float %3727, %3739
  %3741 = fadd fast float %3740, %2835
  br label %3790

; <label>:3742                                    ; preds = %3718
  %3743 = icmp eq i32 %3716, 4
  br i1 %3743, label %3744, label %3776

; <label>:3744                                    ; preds = %3742
  %3745 = fmul fast float %3721, %3436
  %3746 = fmul fast float %3721, %3437
  %3747 = fadd fast float %3745, %2826
  %3748 = fadd fast float %3746, %2827
  %3749 = call float @dx.op.binary.f32(i32 36, float %2836, float %3438)  ; FMin(a,b)
  %3750 = fsub fast float %3749, %2836
  %3751 = fmul fast float %3750, %3724
  %3752 = fadd fast float %3751, %2836
  %3753 = fadd fast float %3435, %2835
  %3754 = fmul fast float %3753, 0x3FF337FAE0000000
  %3755 = fmul fast float %2835, %2835
  %3756 = fmul fast float %3435, %3435
  %3757 = fadd fast float %3756, %3755
  %3758 = fmul fast float %3757, 0x3FE5152B00000000
  %3759 = fmul fast float %2835, 0xBFCC1F85E0000000
  %3760 = fmul fast float %3759, %3435
  %3761 = fadd fast float %3760, 0xBFE1363700000000
  %3762 = fadd fast float %3761, %3754
  %3763 = fsub fast float %3762, %3758
  %3764 = fmul fast float %3753, 0x3FBA6F0D00000000
  %3765 = fmul fast float %3757, 0x3FD0432880000000
  %3766 = fmul fast float %2835, 0xBFEF110800000000
  %3767 = fmul fast float %3766, %3435
  %3768 = fadd fast float %3767, 1.000000e+00
  %3769 = fsub fast float %3768, %3764
  %3770 = fadd fast float %3769, %3765
  %3771 = fdiv fast float %3763, %3770
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fsub fast float %3772, %2835
  %3774 = fmul fast float %3773, %3727
  %3775 = fadd fast float %3774, %2835
  br label %3790

; <label>:3776                                    ; preds = %3742
  %3777 = icmp eq i32 %3716, 8
  br i1 %3777, label %3778, label %3790

; <label>:3778                                    ; preds = %3776
  %3779 = fmul fast float %3721, %3436
  %3780 = fmul fast float %3721, %3437
  %3781 = fadd fast float %3779, %2826
  %3782 = fadd fast float %3780, %2827
  %3783 = call float @dx.op.binary.f32(i32 36, float %2836, float %3438)  ; FMin(a,b)
  %3784 = fsub fast float %3783, %2836
  %3785 = fmul fast float %3784, %3724
  %3786 = fadd fast float %3785, %2836
  %3787 = fsub fast float %3435, %2835
  %3788 = fmul fast float %3727, %3787
  %3789 = fadd fast float %3788, %2835
  br label %3790

; <label>:3790                                    ; preds = %3778, %3776, %3744, %3729, %3707, %3134, %2838, %2825
  %3791 = phi float [ %2826, %3707 ], [ %2826, %3134 ], [ %2826, %2825 ], [ %2826, %2838 ], [ %3734, %3729 ], [ %3747, %3744 ], [ %2826, %3776 ], [ %3781, %3778 ]
  %3792 = phi float [ %2827, %3707 ], [ %2827, %3134 ], [ %2827, %2825 ], [ %2827, %2838 ], [ %3735, %3729 ], [ %3748, %3744 ], [ %2827, %3776 ], [ %3782, %3778 ]
  %3793 = phi float [ %3708, %3707 ], [ %2828, %3134 ], [ %2828, %2825 ], [ %2828, %2838 ], [ %3708, %3729 ], [ %3708, %3744 ], [ %3708, %3776 ], [ %3708, %3778 ]
  %3794 = phi float [ %3709, %3707 ], [ %2829, %3134 ], [ %2829, %2825 ], [ %2829, %2838 ], [ %3709, %3729 ], [ %3709, %3744 ], [ %3709, %3776 ], [ %3709, %3778 ]
  %3795 = phi float [ %3710, %3707 ], [ %2830, %3134 ], [ %2830, %2825 ], [ %2830, %2838 ], [ %3710, %3729 ], [ %3710, %3744 ], [ %3710, %3776 ], [ %3710, %3778 ]
  %3796 = phi float [ %3711, %3707 ], [ %2831, %3134 ], [ %2831, %2825 ], [ %2831, %2838 ], [ %3711, %3729 ], [ %3711, %3744 ], [ %3711, %3776 ], [ %3711, %3778 ]
  %3797 = phi float [ %3712, %3707 ], [ %2832, %3134 ], [ %2832, %2825 ], [ %2832, %2838 ], [ %3712, %3729 ], [ %3712, %3744 ], [ %3712, %3776 ], [ %3712, %3778 ]
  %3798 = phi float [ %3713, %3707 ], [ %2833, %3134 ], [ %2833, %2825 ], [ %2833, %2838 ], [ %3713, %3729 ], [ %3713, %3744 ], [ %3713, %3776 ], [ %3713, %3778 ]
  %3799 = phi float [ %3714, %3707 ], [ %2834, %3134 ], [ %2834, %2825 ], [ %2834, %2838 ], [ %3714, %3729 ], [ %3714, %3744 ], [ %3714, %3776 ], [ %3714, %3778 ]
  %3800 = phi float [ %2835, %3707 ], [ %2835, %3134 ], [ %2835, %2825 ], [ %2835, %2838 ], [ %3741, %3729 ], [ %3775, %3744 ], [ %2835, %3776 ], [ %3789, %3778 ]
  %3801 = phi float [ %2836, %3707 ], [ %2836, %3134 ], [ %2836, %2825 ], [ %2836, %2838 ], [ %3738, %3729 ], [ %3752, %3744 ], [ %2836, %3776 ], [ %3786, %3778 ]
  %3802 = phi float [ %3715, %3707 ], [ %2837, %3134 ], [ %2837, %2825 ], [ %2837, %2838 ], [ %3715, %3729 ], [ %3715, %3744 ], [ %3715, %3776 ], [ %3715, %3778 ]
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = call float @dx.op.dot2.f32(i32 54, float %3791, float %3792, float %3791, float %3792)  ; Dot2(ax,ay,bx,by)
  %3806 = fmul fast float %3805, 0x3FE3333340000000
  %3807 = fsub fast float 1.000000e+00, %3806
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3791, float %3792, float %3807, float %3791, float %3792, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = call float @dx.op.unary.f32(i32 25, float %3808)  ; Rsqrt(value)
  %3810 = fmul fast float %3809, %3791
  %3811 = fmul fast float %3809, %3792
  %3812 = fmul fast float %3807, %3809
  %3813 = fmul fast float %3812, %93
  %3814 = fmul fast float %3812, %95
  %3815 = fmul fast float %3812, %97
  %3816 = fmul fast float %3810, %65
  %3817 = fmul fast float %3810, %66
  %3818 = fmul fast float %3810, %67
  %3819 = fadd fast float %3813, %3816
  %3820 = fadd fast float %3814, %3817
  %3821 = fadd fast float %3815, %3818
  %3822 = fmul fast float %107, %3811
  %3823 = fmul fast float %108, %3811
  %3824 = fmul fast float %109, %3811
  %3825 = fadd fast float %3819, %3822
  %3826 = fadd fast float %3820, %3823
  %3827 = fadd fast float %3821, %3824
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %3825, float %3826, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.unary.f32(i32 25, float %3828)  ; Rsqrt(value)
  %3830 = fmul fast float %3825, %3829
  %3831 = fmul fast float %3826, %3829
  %3832 = fmul fast float %3827, %3829
  %3833 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3834 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3835 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3837 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3839 = fadd fast float %3833, %143
  %3840 = fadd fast float %3834, %144
  %3841 = fadd fast float %3835, %145
  %3842 = fadd fast float %3836, %143
  %3843 = fadd fast float %3837, %144
  %3844 = fadd fast float %3838, %145
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.CBufRet.f32 %3845, 2
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 2
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3852 = fmul fast float %3846, %84
  %3853 = fmul fast float %3852, %3850
  %3854 = fmul fast float %3847, %85
  %3855 = fmul fast float %3854, %3851
  %3856 = fptoui float %3853 to i32
  %3857 = fptoui float %3855 to i32
  %3858 = fadd fast float %3846, -1.000000e+00
  %3859 = fadd fast float %3847, -1.000000e+00
  %3860 = fptoui float %3858 to i32
  %3861 = fptoui float %3859 to i32
  %3862 = call i32 @dx.op.binary.i32(i32 40, i32 %3856, i32 %3860)  ; UMin(a,b)
  %3863 = call i32 @dx.op.binary.i32(i32 40, i32 %3857, i32 %3861)  ; UMin(a,b)
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = extractvalue %dx.types.CBufRet.f32 %3864, 3
  %3867 = fmul fast float %3865, %79
  %3868 = fsub fast float %3867, %3866
  %3869 = fadd fast float %3848, -1.000000e+00
  %3870 = call float @dx.op.binary.f32(i32 36, float %3868, float %3869)  ; FMin(a,b)
  %3871 = fptoui float %3870 to i32
  %3872 = fptoui float %3846 to i32
  %3873 = fptoui float %3847 to i32
  %3874 = mul i32 %3871, %3873
  %3875 = add i32 %3874, %3863
  %3876 = mul i32 %3875, %3872
  %3877 = add i32 %3876, %3862
  %3878 = shl i32 %3877, 2
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = and i32 %3880, 1023
  %3882 = lshr i32 %3880, 10
  %3883 = icmp eq i32 %3881, 0
  br i1 %3883, label %4309, label %3884

; <label>:3884                                    ; preds = %3790
  %3885 = and i32 %3880, 1023
  br label %3886

; <label>:3886                                    ; preds = %4012, %3884
  %3887 = phi i32 [ %3962, %4012 ], [ 0, %3884 ]
  %3888 = phi float [ %4013, %4012 ], [ 0.000000e+00, %3884 ]
  %3889 = phi float [ %4014, %4012 ], [ %3804, %3884 ]
  %3890 = phi float [ %4015, %4012 ], [ %3802, %3884 ]
  %3891 = phi float [ %4016, %4012 ], [ 0.000000e+00, %3884 ]
  %3892 = phi float [ %4017, %4012 ], [ 0.000000e+00, %3884 ]
  %3893 = phi float [ %4018, %4012 ], [ %3796, %3884 ]
  %3894 = phi float [ %4019, %4012 ], [ %3797, %3884 ]
  %3895 = phi float [ %4020, %4012 ], [ %3798, %3884 ]
  %3896 = phi float [ %4021, %4012 ], [ %3830, %3884 ]
  %3897 = phi float [ %4022, %4012 ], [ %3831, %3884 ]
  %3898 = phi float [ %4023, %4012 ], [ %3832, %3884 ]
  %3899 = phi float [ %4024, %4012 ], [ %3801, %3884 ]
  %3900 = phi float [ %4025, %4012 ], [ %3800, %3884 ]
  %3901 = phi float [ %4026, %4012 ], [ 0.000000e+00, %3884 ]
  %3902 = phi float [ %4027, %4012 ], [ %3799, %3884 ]
  %3903 = phi float [ %4028, %4012 ], [ %3793, %3884 ]
  %3904 = phi float [ %4029, %4012 ], [ %3794, %3884 ]
  %3905 = phi float [ %4030, %4012 ], [ %3795, %3884 ]
  %3906 = add nuw nsw i32 %3887, %3882
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
  %3962 = add nuw nsw i32 %3887, 1
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
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3967, float %3968, float %3969, float %3970, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3997 = call float @dx.op.dot4.f32(i32 56, float %3967, float %3968, float %3969, float %3970, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3998 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
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
  br i1 %4011, label %4032, label %4012

; <label>:4012                                    ; preds = %4295, %4113, %4032, %3886
  %4013 = phi float [ %3888, %4032 ], [ %4116, %4113 ], [ %4116, %4295 ], [ %3888, %3886 ]
  %4014 = phi float [ %3889, %4032 ], [ %3889, %4113 ], [ %4270, %4295 ], [ %3889, %3886 ]
  %4015 = phi float [ %3890, %4032 ], [ %3890, %4113 ], [ %4268, %4295 ], [ %3890, %3886 ]
  %4016 = phi float [ %3891, %4032 ], [ %3891, %4113 ], [ %4240, %4295 ], [ %3891, %3886 ]
  %4017 = phi float [ %3892, %4032 ], [ %3892, %4113 ], [ %4238, %4295 ], [ %3892, %3886 ]
  %4018 = phi float [ %3893, %4032 ], [ %3893, %4113 ], [ %4305, %4295 ], [ %3893, %3886 ]
  %4019 = phi float [ %3894, %4032 ], [ %3894, %4113 ], [ %4306, %4295 ], [ %3894, %3886 ]
  %4020 = phi float [ %3895, %4032 ], [ %3895, %4113 ], [ %4307, %4295 ], [ %3895, %3886 ]
  %4021 = phi float [ %3896, %4032 ], [ %3896, %4113 ], [ %4219, %4295 ], [ %3896, %3886 ]
  %4022 = phi float [ %3897, %4032 ], [ %3897, %4113 ], [ %4220, %4295 ], [ %3897, %3886 ]
  %4023 = phi float [ %3898, %4032 ], [ %3898, %4113 ], [ %4221, %4295 ], [ %3898, %3886 ]
  %4024 = phi float [ %3899, %4032 ], [ %3899, %4113 ], [ %4248, %4295 ], [ %3899, %3886 ]
  %4025 = phi float [ %3900, %4032 ], [ %3900, %4113 ], [ %4245, %4295 ], [ %3900, %3886 ]
  %4026 = phi float [ %3901, %4032 ], [ %3901, %4113 ], [ %4242, %4295 ], [ %3901, %3886 ]
  %4027 = phi float [ %3902, %4032 ], [ %3902, %4113 ], [ %4236, %4295 ], [ %3902, %3886 ]
  %4028 = phi float [ %3903, %4032 ], [ %3903, %4113 ], [ %4231, %4295 ], [ %3903, %3886 ]
  %4029 = phi float [ %3904, %4032 ], [ %3904, %4113 ], [ %4232, %4295 ], [ %3904, %3886 ]
  %4030 = phi float [ %3905, %4032 ], [ %3905, %4113 ], [ %4233, %4295 ], [ %3905, %3886 ]
  %4031 = icmp eq i32 %3962, %3885
  br i1 %4031, label %4308, label %3886

; <label>:4032                                    ; preds = %3886
  %4033 = extractvalue %dx.types.ResRet.f32 %3932, 3
  %4034 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %4038 = extractvalue %dx.types.ResRet.i32 %3918, 3
  %4039 = extractvalue %dx.types.ResRet.i32 %3918, 2
  %4040 = add i32 %4038, 0
  %4041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4040, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4043 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4041, %dx.types.Handle %4042, float %3971, float %3978, float undef, float undef, i32 0, i32 0, i32 undef, float %3999, float %4001, float undef, float %4000, float %4002, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = fmul fast float %4044, %4037
  %4046 = fadd fast float %4045, %4036
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = fmul fast float %3971, %3927
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3978, float %4048)  ; FMad(a,b,c)
  %4050 = fadd fast float %4049, %4035
  %4051 = fmul fast float %3971, %3929
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3978, float %4051)  ; FMad(a,b,c)
  %4053 = fadd fast float %4052, %4034
  %4054 = fmul fast float %3999, %3927
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %4001, float %4054)  ; FMad(a,b,c)
  %4056 = fmul fast float %3999, %3929
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %4001, float %4056)  ; FMad(a,b,c)
  %4058 = fmul fast float %4000, %3927
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %4002, float %4058)  ; FMad(a,b,c)
  %4060 = fmul fast float %4000, %3929
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %4002, float %4060)  ; FMad(a,b,c)
  %4062 = add i32 %4039, 0
  %4063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4062, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4064 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4063, %dx.types.Handle %4042, float %4050, float %4053, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4057, float undef, float %4059, float %4061, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = and i32 %3963, 1024
  %4067 = icmp ne i32 %4066, 0
  %4068 = fcmp fast ogt float %4065, 0x3FE0101020000000
  %4069 = uitofp i1 %4068 to float
  %4070 = select i1 %4067, float %4069, float %4065
  %4071 = and i32 %3963, 8192
  %4072 = icmp ne i32 %4071, 0
  %4073 = select i1 %4072, float %4033, float 1.000000e+00
  %4074 = fmul fast float %3971, 2.000000e+00
  %4075 = fadd fast float %4074, -1.000000e+00
  %4076 = call float @dx.op.unary.f32(i32 6, float %4075)  ; FAbs(value)
  %4077 = fmul fast float %4076, %3960
  %4078 = fsub fast float %4077, %3960
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = fmul fast float %3978, 2.000000e+00
  %4081 = fadd fast float %4080, -1.000000e+00
  %4082 = call float @dx.op.unary.f32(i32 6, float %4081)  ; FAbs(value)
  %4083 = fmul fast float %4082, %3961
  %4084 = fsub fast float %4083, %3961
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = fmul fast float %3990, %3923
  %4087 = fsub fast float %4086, %3923
  %4088 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4089 = fmul fast float %4047, %4073
  %4090 = fmul fast float %4089, %4044
  %4091 = fmul fast float %4090, %4079
  %4092 = fmul fast float %4091, %4070
  %4093 = fmul fast float %4092, %4085
  %4094 = fmul fast float %4093, %4088
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4098 = fsub fast float %4007, %4097
  %4099 = fmul fast float %4098, %4096
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4094, %3924
  %4102 = fadd fast float %4094, %3924
  %4103 = fmul fast float %4102, %3933
  %4104 = fsub fast float %4103, %3933
  %4105 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4106 = and i32 %3963, 128
  %4107 = icmp ne i32 %4106, 0
  %4108 = select i1 %4107, float %4105, float %4101
  %4109 = fmul fast float %4108, %4100
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = fcmp fast ugt float %4109, %4111
  br i1 %4112, label %4113, label %4012

; <label>:4113                                    ; preds = %4032
  %4114 = select i1 %4072, float %4109, float 0.000000e+00
  %4115 = fadd fast float %4114, %3888
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  br i1 %4072, label %4012, label %4117

; <label>:4117                                    ; preds = %4113
  %4118 = and i32 %3963, 4
  %4119 = and i32 %3963, 8
  %4120 = add i32 %3919, 0
  %4121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4120, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4123 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4121, %dx.types.Handle %4122, float %4050, float %4053, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4057, float undef, float %4059, float %4061, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.ResRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.ResRet.f32 %4123, 2
  %4127 = extractvalue %dx.types.ResRet.f32 %4123, 3
  %4128 = bitcast float %3945 to i32
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = lshr i32 %4128, 8
  %4132 = and i32 %4131, 255
  %4133 = uitofp i32 %4132 to float
  %4134 = fmul fast float %4127, %4130
  %4135 = fadd fast float %4134, %4133
  %4136 = fmul fast float %4135, 0x3F70101000000000
  %4137 = add i32 %3920, 0
  %4138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4137, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4138, %dx.types.Handle %4122, float %4050, float %4053, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4057, float undef, float %4059, float %4061, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = bitcast float %3939 to i32
  %4145 = and i32 %4144, 255
  %4146 = uitofp i32 %4145 to float
  %4147 = lshr i32 %4144, 8
  %4148 = and i32 %4147, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = lshr i32 %4144, 16
  %4151 = and i32 %4150, 255
  %4152 = uitofp i32 %4151 to float
  %4153 = fmul fast float %4152, 0x3F70101000000000
  %4154 = fmul fast float %4140, %4146
  %4155 = fadd fast float %4154, %4149
  %4156 = fmul fast float %4155, 0x3F70101000000000
  %4157 = fadd fast float %4141, -5.000000e-01
  %4158 = fadd fast float %4143, -5.000000e-01
  %4159 = fmul fast float %4157, %4153
  %4160 = fmul fast float %4158, %4153
  %4161 = fadd fast float %4159, 5.000000e-01
  %4162 = fadd fast float %4160, 5.000000e-01
  %4163 = fmul fast float %4124, %3948
  %4164 = fmul fast float %4125, %3949
  %4165 = fmul fast float %4126, %3950
  %4166 = fmul fast float %4161, 2.000000e+00
  %4167 = fadd fast float %4166, -1.000000e+00
  %4168 = fmul fast float %4162, 2.000000e+00
  %4169 = fadd fast float %4168, -1.000000e+00
  %4170 = fadd fast float %4167, %4169
  %4171 = fmul fast float %4170, 5.000000e-01
  %4172 = fsub fast float %4167, %4169
  %4173 = fmul fast float %4172, 5.000000e-01
  %4174 = call float @dx.op.unary.f32(i32 6, float %4171)  ; FAbs(value)
  %4175 = fsub fast float 1.000000e+00, %4174
  %4176 = call float @dx.op.unary.f32(i32 6, float %4173)  ; FAbs(value)
  %4177 = fsub fast float %4175, %4176
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4171, float %4173, float %4177, float %4171, float %4173, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = call float @dx.op.unary.f32(i32 25, float %4178)  ; Rsqrt(value)
  %4180 = fmul fast float %4171, %4179
  %4181 = fmul fast float %4173, %4179
  %4182 = fmul fast float %4179, %4177
  %4183 = fmul fast float %4182, %3913
  %4184 = fmul fast float %4182, %3914
  %4185 = fmul fast float %4182, %3915
  %4186 = fmul fast float %4180, %3936
  %4187 = fmul fast float %4180, %3937
  %4188 = fmul fast float %4180, %3938
  %4189 = fadd fast float %4186, %4183
  %4190 = fadd fast float %4187, %4184
  %4191 = fadd fast float %4188, %4185
  %4192 = fmul fast float %4181, %3942
  %4193 = fmul fast float %4181, %3943
  %4194 = fmul fast float %4181, %3944
  %4195 = fadd fast float %4189, %4192
  %4196 = fadd fast float %4190, %4193
  %4197 = fadd fast float %4191, %4194
  %4198 = call float @dx.op.dot3.f32(i32 55, float %4195, float %4196, float %4197, float %4195, float %4196, float %4197)  ; Dot3(ax,ay,az,bx,by,bz)
  %4199 = call float @dx.op.unary.f32(i32 25, float %4198)  ; Rsqrt(value)
  %4200 = fmul fast float %4195, %4199
  %4201 = fmul fast float %4196, %4199
  %4202 = fmul fast float %4197, %4199
  %4203 = icmp ne i32 %4119, 0
  %4204 = select i1 %4203, float 1.000000e+00, float 0.000000e+00
  %4205 = fmul fast float %4109, %4204
  %4206 = and i32 %3963, 1
  %4207 = icmp eq i32 %4206, 0
  br i1 %4207, label %4208, label %4212

; <label>:4208                                    ; preds = %4117
  %4209 = fsub fast float %4200, %3896
  %4210 = fsub fast float %4201, %3897
  %4211 = fsub fast float %4202, %3898
  br label %4212

; <label>:4212                                    ; preds = %4208, %4117
  %4213 = phi float [ %4209, %4208 ], [ %4200, %4117 ]
  %4214 = phi float [ %4210, %4208 ], [ %4201, %4117 ]
  %4215 = phi float [ %4211, %4208 ], [ %4202, %4117 ]
  %4216 = fmul float %4215, %4205
  %4217 = fmul float %4214, %4205
  %4218 = fmul float %4213, %4205
  %4219 = fadd fast float %4218, %3896
  %4220 = fadd fast float %4217, %3897
  %4221 = fadd fast float %4216, %3898
  %4222 = icmp ne i32 %4118, 0
  %4223 = select i1 %4222, float 1.000000e+00, float 0.000000e+00
  %4224 = fmul fast float %4109, %4223
  %4225 = fsub fast float %4163, %3903
  %4226 = fsub fast float %4164, %3904
  %4227 = fsub fast float %4165, %3905
  %4228 = fmul fast float %4225, %4224
  %4229 = fmul fast float %4226, %4224
  %4230 = fmul fast float %4227, %4224
  %4231 = fadd fast float %4228, %3903
  %4232 = fadd fast float %4229, %3904
  %4233 = fadd fast float %4230, %3905
  %4234 = fsub fast float %4136, %3902
  %4235 = fmul fast float %4234, %4224
  %4236 = fadd fast float %4235, %3902
  %4237 = fmul fast float %4224, %3892
  %4238 = fsub fast float %3892, %4237
  %4239 = fmul fast float %4224, %3891
  %4240 = fsub fast float %3891, %4239
  %4241 = fadd fast float %4109, %3901
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = fsub fast float %4156, %3900
  %4244 = fmul fast float %4243, %4205
  %4245 = fadd fast float %4244, %3900
  %4246 = fsub fast float %4142, %3899
  %4247 = fmul fast float %4246, %4205
  %4248 = fadd fast float %4247, %3899
  %4249 = call float @dx.op.dot3.f32(i32 55, float %4163, float %4164, float %4165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.CBufRet.f32 %4250, 1
  %4253 = fmul fast float %4252, %4249
  %4254 = fadd fast float %4253, %4251
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = bitcast float %3951 to i32
  %4257 = and i32 %4256, 65535
  %4258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4257)  ; LegacyF16ToF32(value)
  %4259 = lshr i32 %4256, 16
  %4260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4259)  ; LegacyF16ToF32(value)
  %4261 = fcmp fast oge float %4258, 0.000000e+00
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 0
  %4264 = select i1 %4261, float %4258, float %4263
  %4265 = fadd fast float %4264, %4260
  %4266 = fsub fast float %4255, %3890
  %4267 = fmul fast float %4266, %4109
  %4268 = fadd fast float %4267, %3890
  %4269 = fmul fast float %4265, %4109
  %4270 = call float @dx.op.binary.f32(i32 35, float %3889, float %4269)  ; FMax(a,b)
  %4271 = and i32 %3963, 16
  %4272 = icmp eq i32 %4271, 0
  br i1 %4272, label %4295, label %4273

; <label>:4273                                    ; preds = %4212
  %4274 = bitcast float %3957 to i32
  %4275 = add i32 %3954, 0
  %4276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4275, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4276, %dx.types.Handle %4122, float %4050, float %4053, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4057, float undef, float %4059, float %4061, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = and i32 %4274, 65535
  %4282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4281)  ; LegacyF16ToF32(value)
  %4283 = fmul fast float %4278, %3948
  %4284 = fmul fast float %4279, %3949
  %4285 = fmul fast float %4280, %3950
  %4286 = and i32 %3963, 16384
  %4287 = icmp ne i32 %4286, 0
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = select i1 %4287, float %4289, float 1.000000e+00
  %4291 = fmul fast float %4290, %4282
  %4292 = fmul fast float %4283, %4291
  %4293 = fmul fast float %4284, %4291
  %4294 = fmul fast float %4285, %4291
  br label %4295

; <label>:4295                                    ; preds = %4273, %4212
  %4296 = phi float [ %4292, %4273 ], [ 0.000000e+00, %4212 ]
  %4297 = phi float [ %4293, %4273 ], [ 0.000000e+00, %4212 ]
  %4298 = phi float [ %4294, %4273 ], [ 0.000000e+00, %4212 ]
  %4299 = fsub fast float %4296, %3893
  %4300 = fsub fast float %4297, %3894
  %4301 = fsub fast float %4298, %3895
  %4302 = fmul fast float %4299, %4109
  %4303 = fmul fast float %4300, %4109
  %4304 = fmul fast float %4301, %4109
  %4305 = fadd fast float %4302, %3893
  %4306 = fadd fast float %4303, %3894
  %4307 = fadd fast float %4304, %3895
  br label %4012

; <label>:4308                                    ; preds = %4012
  br label %4309

; <label>:4309                                    ; preds = %4308, %3790
  %4310 = phi float [ 0.000000e+00, %3790 ], [ %4013, %4308 ]
  %4311 = phi float [ %3804, %3790 ], [ %4014, %4308 ]
  %4312 = phi float [ %3802, %3790 ], [ %4015, %4308 ]
  %4313 = phi float [ 0.000000e+00, %3790 ], [ %4016, %4308 ]
  %4314 = phi float [ 0.000000e+00, %3790 ], [ %4017, %4308 ]
  %4315 = phi float [ %3796, %3790 ], [ %4018, %4308 ]
  %4316 = phi float [ %3797, %3790 ], [ %4019, %4308 ]
  %4317 = phi float [ %3798, %3790 ], [ %4020, %4308 ]
  %4318 = phi float [ %3830, %3790 ], [ %4021, %4308 ]
  %4319 = phi float [ %3831, %3790 ], [ %4022, %4308 ]
  %4320 = phi float [ %3832, %3790 ], [ %4023, %4308 ]
  %4321 = phi float [ %3801, %3790 ], [ %4024, %4308 ]
  %4322 = phi float [ %3800, %3790 ], [ %4025, %4308 ]
  %4323 = phi float [ 0.000000e+00, %3790 ], [ %4026, %4308 ]
  %4324 = phi float [ %3799, %3790 ], [ %4027, %4308 ]
  %4325 = phi float [ %3793, %3790 ], [ %4028, %4308 ]
  %4326 = phi float [ %3794, %3790 ], [ %4029, %4308 ]
  %4327 = phi float [ %3795, %3790 ], [ %4030, %4308 ]
  %4328 = call float @dx.op.dot3.f32(i32 55, float %4318, float %4319, float %4320, float %4318, float %4319, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4329 = call float @dx.op.unary.f32(i32 25, float %4328)  ; Rsqrt(value)
  %4330 = fmul fast float %4329, %4318
  %4331 = fmul fast float %4329, %4319
  %4332 = fmul fast float %4329, %4320
  %4333 = fadd fast float %4323, %904
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4330, float %4331, float %4332, float %4330, float %4331, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = call float @dx.op.unary.f32(i32 25, float %4335)  ; Rsqrt(value)
  %4337 = fmul fast float %4336, %4330
  %4338 = fmul fast float %4336, %4331
  %4339 = fmul fast float %4336, %4332
  %4340 = fadd fast float %4324, 0xBFB99999A0000000
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4341, 0x3FF1C71C80000000
  %4343 = call float @dx.op.binary.f32(i32 36, float %4324, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4344 = fsub fast float 1.000000e+00, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4345, %4325
  %4347 = fmul fast float %4345, %4326
  %4348 = fmul fast float %4345, %4327
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = fmul fast float %4342, %4325
  %4353 = fmul fast float %4342, %4326
  %4354 = fmul fast float %4342, %4327
  %4355 = fadd fast float %4352, %4343
  %4356 = fadd fast float %4353, %4343
  %4357 = fadd fast float %4354, %4343
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 3
  %4364 = and i32 %4363, 8
  %4365 = icmp ne i32 %4364, 0
  %4366 = call float @dx.op.binary.f32(i32 35, float %4349, float %4325)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4350, float %4325)  ; FMax(a,b)
  %4368 = call float @dx.op.binary.f32(i32 35, float %4351, float %4325)  ; FMax(a,b)
  %4369 = call float @dx.op.dot3.f32(i32 55, float %4349, float %4350, float %4351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4370 = select i1 %185, float %4325, float %4349
  %4371 = select i1 %185, float %4369, float %4350
  %4372 = select i1 %185, float 1.000000e+00, float %4351
  %4373 = select i1 %4365, float %4366, float %4370
  %4374 = select i1 %4365, float %4367, float %4371
  %4375 = select i1 %4365, float %4368, float %4372
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4380 = fadd fast float %4377, %143
  %4381 = fadd fast float %4378, %144
  %4382 = fadd fast float %4379, %145
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.CBufRet.f32 %4383, 1
  %4386 = fsub fast float %4380, %4384
  %4387 = fsub fast float %4381, %4385
  %4388 = fmul fast float %4386, %4386
  %4389 = fmul fast float %4387, %4387
  %4390 = fadd fast float %4388, %4389
  %4391 = call float @dx.op.unary.f32(i32 24, float %4390)  ; Sqrt(value)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4383, 2
  %4393 = fcmp fast olt float %4391, %4392
  br i1 %4393, label %4394, label %4461

; <label>:4394                                    ; preds = %4309
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4402 = extractvalue %dx.types.CBufRet.f32 %4397, 1
  %4403 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4404 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4405 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4406 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4407 = fadd fast float %4404, %4380
  %4408 = fadd fast float %4405, %4381
  %4409 = fadd fast float %4406, %4382
  %4410 = fmul fast float %4407, %4396
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4398, float %4410)  ; FMad(a,b,c)
  %4412 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4400, float %4411)  ; FMad(a,b,c)
  %4413 = fmul fast float %4407, %4401
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4403, float %4414)  ; FMad(a,b,c)
  %4416 = fsub fast float %4412, %4404
  %4417 = fsub fast float %4415, %4405
  %4418 = fsub fast float %4416, %4384
  %4419 = fadd fast float %4418, %4392
  %4420 = fsub fast float %4417, %4385
  %4421 = fadd fast float %4420, %4392
  %4422 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4423 = fmul fast float %4419, %4422
  %4424 = fmul fast float %4421, %4422
  %4425 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4427 = fsub fast float 1.000000e+00, %4425
  %4428 = fsub fast float 1.000000e+00, %4426
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fcmp fast ugt float %4430, 0.000000e+00
  br i1 %4431, label %4432, label %4735

; <label>:4432                                    ; preds = %4394
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4435 = fmul fast float %4434, %4430
  %4436 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4437 = fadd fast float %4436, %4435
  %4438 = extractvalue %dx.types.CBufRet.f32 %4399, 2
  %4439 = fadd fast float %4437, %4406
  %4440 = fmul fast float %4412, %4400
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4403, float %4440)  ; FMad(a,b,c)
  %4442 = call float @dx.op.tertiary.f32(i32 46, float %4439, float %4438, float %4441)  ; FMad(a,b,c)
  %4443 = fsub fast float %4442, %4406
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4446 = fsub fast float %4443, %4445
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.ResRet.f32 %4447, 2
  %4451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = fadd fast float %4452, %4448
  %4456 = fmul fast float %4455, 0x3F847AE140000000
  %4457 = fadd fast float %4453, %4449
  %4458 = fmul fast float %4457, 0x3F847AE140000000
  %4459 = fadd fast float %4454, %4450
  %4460 = fmul fast float %4459, 0x3F847AE140000000
  br label %4735

; <label>:4461                                    ; preds = %4309
  %4462 = and i32 %161, 1
  %4463 = icmp eq i32 %4462, 0
  br i1 %4463, label %4735, label %4464

; <label>:4464                                    ; preds = %4461
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4473 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4475 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4476 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4477 = fadd fast float %4474, %4380
  %4478 = fadd fast float %4475, %4381
  %4479 = fadd fast float %4476, %4382
  %4480 = fmul fast float %4477, %4466
  %4481 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4468, float %4480)  ; FMad(a,b,c)
  %4482 = call float @dx.op.tertiary.f32(i32 46, float %4479, float %4470, float %4481)  ; FMad(a,b,c)
  %4483 = fmul fast float %4477, %4471
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4472, float %4483)  ; FMad(a,b,c)
  %4485 = call float @dx.op.tertiary.f32(i32 46, float %4479, float %4473, float %4484)  ; FMad(a,b,c)
  %4486 = fsub fast float %4482, %4474
  %4487 = fsub fast float %4485, %4475
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4491 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4492 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.i32 %4495, 0
  %4497 = extractvalue %dx.types.CBufRet.i32 %4495, 1
  %4498 = udiv i32 %4497, %4496
  %4499 = fsub fast float %4486, %4489
  %4500 = fsub fast float %4487, %4490
  %4501 = call float @dx.op.binary.f32(i32 35, float %4499, float 0.000000e+00)  ; FMax(a,b)
  %4502 = call float @dx.op.binary.f32(i32 35, float %4500, float 0.000000e+00)  ; FMax(a,b)
  %4503 = call float @dx.op.binary.f32(i32 36, float %4501, float %4491)  ; FMin(a,b)
  %4504 = call float @dx.op.binary.f32(i32 36, float %4502, float %4492)  ; FMin(a,b)
  %4505 = add i32 %4496, -1
  %4506 = add i32 %4498, -1
  %4507 = fmul fast float %4503, %4494
  %4508 = fmul fast float %4504, %4494
  %4509 = fptoui float %4507 to i32
  %4510 = fptoui float %4508 to i32
  %4511 = call i32 @dx.op.binary.i32(i32 40, i32 %4509, i32 %4505)  ; UMin(a,b)
  %4512 = call i32 @dx.op.binary.i32(i32 40, i32 %4510, i32 %4506)  ; UMin(a,b)
  %4513 = mul i32 %4512, %4496
  %4514 = add i32 %4513, %4511
  %4515 = shl i32 %4514, 2
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = icmp eq i32 %4517, -1
  br i1 %4518, label %4735, label %4519

; <label>:4519                                    ; preds = %4464
  %4520 = mul i32 %4517, 148
  %4521 = add i32 %4520, 4
  %4522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = add i32 %4520, 8
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = add i32 %4520, 36
  %4528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = add i32 %4520, 60
  %4531 = add i32 %4520, 92
  %4532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.i32 %4532, 0
  %4534 = add i32 %4520, 116
  %4535 = fsub fast float %4486, %4523
  %4536 = fsub fast float %4487, %4526
  %4537 = fmul fast float %4494, %4535
  %4538 = fmul fast float %4494, %4536
  %4539 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4540 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 2
  %4544 = call float @dx.op.unary.f32(i32 83, float %4539)  ; DerivCoarseX(value)
  %4545 = call float @dx.op.unary.f32(i32 83, float %4541)  ; DerivCoarseX(value)
  %4546 = call float @dx.op.unary.f32(i32 84, float %4539)  ; DerivCoarseY(value)
  %4547 = call float @dx.op.unary.f32(i32 84, float %4541)  ; DerivCoarseY(value)
  %4548 = fmul fast float %4544, %4543
  %4549 = fmul fast float %4545, %4543
  %4550 = fmul fast float %4546, %4543
  %4551 = fmul fast float %4547, %4543
  %4552 = call float @dx.op.dot2.f32(i32 54, float %4550, float %4551, float %4550, float %4551)  ; Dot2(ax,ay,bx,by)
  %4553 = call float @dx.op.dot2.f32(i32 54, float %4548, float %4549, float %4548, float %4549)  ; Dot2(ax,ay,bx,by)
  %4554 = call float @dx.op.binary.f32(i32 35, float %4553, float %4552)  ; FMax(a,b)
  %4555 = call float @dx.op.unary.f32(i32 23, float %4554)  ; Log(value)
  %4556 = fmul fast float %4555, 5.000000e-01
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 1
  %4559 = fadd fast float %4558, %4556
  %4560 = call float @dx.op.binary.f32(i32 35, float %4559, float 0.000000e+00)  ; FMax(a,b)
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4563 = fadd fast float %4562, %4560
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4566 = fadd fast float %4563, %4565
  %4567 = add i32 %4533, 0
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4568, i32 0)  ; GetDimensions(handle,mipLevel)
  %4570 = extractvalue %dx.types.Dimensions %4569, 0
  %4571 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4570)  ; FirstbitLo(value)
  %4572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.i32 %4572, 1
  %4574 = sub nsw i32 %4573, %4571
  %4575 = sitofp i32 %4574 to float
  %4576 = fsub fast float %4566, %4575
  %4577 = call float @dx.op.binary.f32(i32 35, float %4576, float 0.000000e+00)  ; FMax(a,b)
  %4578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4568, %dx.types.Handle %37, float %4539, float %4541, float %4529, float undef, i32 0, i32 0, i32 undef, float %4577)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = fcmp ule float %4579, 0x3FE0101020000000
  %4581 = extractvalue %dx.types.CBufRet.i32 %4572, 0
  %4582 = and i32 %4581, 128
  %4583 = icmp ne i32 %4582, 0
  %4584 = and i1 %4580, %4583
  br i1 %4584, label %4735, label %4585

; <label>:4585                                    ; preds = %4519
  %4586 = add i32 %4520, 20
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = add i32 %4520, 24
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4520, 40
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = add i32 %4520, 96
  %4596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.i32 %4596, 0
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %4600 = fmul fast float %4599, %4539
  %4601 = fmul fast float %4599, %4541
  %4602 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4603 = fadd fast float %4600, %4602
  %4604 = fadd fast float %4601, %4602
  %4605 = add i32 %4597, 0
  %4606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4605, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4607 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4606, i32 0)  ; GetDimensions(handle,mipLevel)
  %4608 = extractvalue %dx.types.Dimensions %4607, 0
  %4609 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4608)  ; FirstbitLo(value)
  %4610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.i32 %4610, 1
  %4612 = sub nsw i32 %4611, %4609
  %4613 = sitofp i32 %4612 to float
  %4614 = fsub fast float %4563, %4613
  %4615 = call float @dx.op.binary.f32(i32 35, float %4614, float 0.000000e+00)  ; FMax(a,b)
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4606, %dx.types.Handle %37, float %4603, float %4604, float %4594, float undef, i32 0, i32 0, i32 undef, float %4615)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = fmul fast float %4617, %4588
  %4619 = fadd fast float %4618, %4591
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4628 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4629 = fadd fast float %4625, %4486
  %4630 = fadd fast float %4627, %4487
  %4631 = fadd fast float %4619, %4628
  %4632 = fmul fast float %4629, %4621
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4630, float %4622, float %4632)  ; FMad(a,b,c)
  %4634 = call float @dx.op.tertiary.f32(i32 46, float %4631, float %4623, float %4633)  ; FMad(a,b,c)
  %4635 = fsub fast float %4634, %4628
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4638 = fsub fast float %4635, %4637
  %4639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.i32 %4639, 0
  %4641 = call i32 @dx.op.binary.i32(i32 40, i32 %4517, i32 %4640)  ; UMin(a,b)
  %4642 = mul i32 %4641, 36
  %4643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.i32 %4643, 0
  %4645 = add i32 %4642, 4
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = fmul fast float %4647, %4539
  %4649 = fmul fast float %4647, %4541
  %4650 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4651 = fadd fast float %4648, %4650
  %4652 = fadd fast float %4649, %4650
  %4653 = icmp eq i32 %4644, 0
  br i1 %4653, label %4722, label %4654

; <label>:4654                                    ; preds = %4585
  br label %4655

; <label>:4655                                    ; preds = %4712, %4654
  %4656 = phi float [ %4713, %4712 ], [ 0.000000e+00, %4654 ]
  %4657 = phi float [ %4714, %4712 ], [ 0.000000e+00, %4654 ]
  %4658 = phi float [ %4715, %4712 ], [ 0.000000e+00, %4654 ]
  %4659 = phi float [ %4716, %4712 ], [ 0.000000e+00, %4654 ]
  %4660 = phi float [ %4717, %4712 ], [ 0.000000e+00, %4654 ]
  %4661 = phi float [ %4718, %4712 ], [ 0.000000e+00, %4654 ]
  %4662 = phi i32 [ %4719, %4712 ], [ 0, %4654 ]
  %4663 = shl i32 %4662, 2
  %4664 = add i32 %4530, %4663
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4534, %4663
  %4668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = add i32 %4669, 0
  %4671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4670, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4672 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4671, i32 0)  ; GetDimensions(handle,mipLevel)
  %4673 = extractvalue %dx.types.Dimensions %4672, 0
  %4674 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4673)  ; FirstbitLo(value)
  %4675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.i32 %4675, 1
  %4677 = sub nsw i32 %4676, %4674
  %4678 = sitofp i32 %4677 to float
  %4679 = fsub fast float %4563, %4678
  %4680 = call float @dx.op.binary.f32(i32 35, float %4679, float 0.000000e+00)  ; FMax(a,b)
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4671, %dx.types.Handle %37, float %4651, float %4652, float %4666, float undef, i32 0, i32 0, i32 undef, float %4680)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = fcmp fast ogt float %4682, 0.000000e+00
  br i1 %4683, label %4684, label %4712

; <label>:4684                                    ; preds = %4655
  %4685 = add i32 %4645, %4663
  %4686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4685, i32 undef)  ; BufferLoad(srv,index,wot)
  %4687 = extractvalue %dx.types.ResRet.i32 %4686, 0
  %4688 = and i32 %4687, 32767
  %4689 = mul nuw nsw i32 %4688, 928
  %4690 = add nuw nsw i32 %4689, 48
  %4691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.ResRet.f32 %4691, 1
  %4694 = extractvalue %dx.types.ResRet.f32 %4691, 2
  %4695 = add nuw nsw i32 %4689, 60
  %4696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4695, i32 undef)  ; BufferLoad(srv,index,wot)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.ResRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4696, 2
  %4700 = fmul fast float %4692, %4682
  %4701 = fmul fast float %4693, %4682
  %4702 = fmul fast float %4694, %4682
  %4703 = fadd fast float %4700, %4656
  %4704 = fadd fast float %4701, %4657
  %4705 = fadd fast float %4702, %4658
  %4706 = fmul fast float %4697, %4682
  %4707 = fmul fast float %4698, %4682
  %4708 = fmul fast float %4699, %4682
  %4709 = fadd fast float %4706, %4659
  %4710 = fadd fast float %4707, %4660
  %4711 = fadd fast float %4708, %4661
  br label %4712

; <label>:4712                                    ; preds = %4684, %4655
  %4713 = phi float [ %4703, %4684 ], [ %4656, %4655 ]
  %4714 = phi float [ %4704, %4684 ], [ %4657, %4655 ]
  %4715 = phi float [ %4705, %4684 ], [ %4658, %4655 ]
  %4716 = phi float [ %4709, %4684 ], [ %4659, %4655 ]
  %4717 = phi float [ %4710, %4684 ], [ %4660, %4655 ]
  %4718 = phi float [ %4711, %4684 ], [ %4661, %4655 ]
  %4719 = add nuw i32 %4662, 1
  %4720 = icmp eq i32 %4719, %4644
  br i1 %4720, label %4721, label %4655

; <label>:4721                                    ; preds = %4712
  br label %4722

; <label>:4722                                    ; preds = %4721, %4585
  %4723 = phi float [ 0.000000e+00, %4585 ], [ %4713, %4721 ]
  %4724 = phi float [ 0.000000e+00, %4585 ], [ %4714, %4721 ]
  %4725 = phi float [ 0.000000e+00, %4585 ], [ %4715, %4721 ]
  %4726 = phi float [ 0.000000e+00, %4585 ], [ %4716, %4721 ]
  %4727 = phi float [ 0.000000e+00, %4585 ], [ %4717, %4721 ]
  %4728 = phi float [ 0.000000e+00, %4585 ], [ %4718, %4721 ]
  %4729 = fadd fast float %4726, %4723
  %4730 = fmul fast float %4729, 0x3F847AE140000000
  %4731 = fadd fast float %4727, %4724
  %4732 = fmul fast float %4731, 0x3F847AE140000000
  %4733 = fadd fast float %4728, %4725
  %4734 = fmul fast float %4733, 0x3F847AE140000000
  br label %4735

; <label>:4735                                    ; preds = %4722, %4519, %4464, %4461, %4432, %4394
  %4736 = phi float [ %4446, %4432 ], [ -1.310720e+05, %4394 ], [ %4638, %4722 ], [ -1.310720e+05, %4464 ], [ -1.310720e+05, %4519 ], [ -1.310720e+05, %4461 ]
  %4737 = phi float [ %4456, %4432 ], [ 0.000000e+00, %4394 ], [ %4730, %4722 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4461 ]
  %4738 = phi float [ %4458, %4432 ], [ 0.000000e+00, %4394 ], [ %4732, %4722 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4461 ]
  %4739 = phi float [ %4460, %4432 ], [ 0.000000e+00, %4394 ], [ %4734, %4722 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4461 ]
  %4740 = phi i1 [ true, %4432 ], [ false, %4394 ], [ true, %4722 ], [ false, %4464 ], [ false, %4519 ], [ false, %4461 ]
  %4741 = and i32 %161, 3
  %4742 = icmp eq i32 %4741, 1
  %4743 = select i1 %4742, float 1.000000e+00, float 0.000000e+00
  %4744 = fsub fast float %4736, %145
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = select i1 %4740, float %4745, float 1.000000e+00
  %4747 = fmul fast float %4746, %4743
  %4748 = icmp eq i32 %4741, 3
  %4749 = select i1 %4748, float 1.000000e+00, float %4747
  %4750 = call float @dx.op.binary.f32(i32 35, float %4310, float %4749)  ; FMax(a,b)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fcmp fast une float %4751, 0.000000e+00
  %4753 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = call float @dx.op.unary.f32(i32 25, float %4753)  ; Rsqrt(value)
  br i1 %4752, label %4762, label %4755

; <label>:4755                                    ; preds = %4735
  %4756 = fmul fast float %4754, %143
  %4757 = fmul fast float %4754, %144
  %4758 = fmul fast float %4754, %145
  %4759 = fsub fast float -0.000000e+00, %4756
  %4760 = fsub fast float -0.000000e+00, %4757
  %4761 = fsub fast float -0.000000e+00, %4758
  br label %4930

; <label>:4762                                    ; preds = %4735
  %4763 = fmul fast float %143, %4754
  %4764 = fsub fast float -0.000000e+00, %4763
  %4765 = fmul fast float %144, %4754
  %4766 = fsub fast float -0.000000e+00, %4765
  %4767 = fmul fast float %145, %4754
  %4768 = fsub fast float -0.000000e+00, %4767
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4766, float %4768, float %93, float %95, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = fmul fast float %4751, 2.500000e+00
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4751, 0x4013FFFFE0000000
  %4773 = fadd fast float %4772, 0xBFFFFFFFE0000000
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = fmul fast float %4751, 0x4004000020000000
  %4776 = fadd fast float %4775, 0xBFF8000040000000
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4779 = fmul fast float %4340, 1.000000e+01
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = fmul fast float %4780, 2.000000e+00
  %4782 = fsub fast float 3.000000e+00, %4781
  %4783 = fmul fast float %4780, %4780
  %4784 = fmul fast float %4783, %4782
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = fsub fast float 0x3FE3333340000000, %4361
  %4787 = fmul fast float %4786, 0x400AAAAAA0000000
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = fmul fast float %4785, %4788
  %4790 = fmul fast float %4373, 0x3FEA2B8620000000
  %4791 = fmul fast float %4374, 0x3FEA2B8620000000
  %4792 = fmul fast float %4375, 0x3FEA2B8620000000
  %4793 = fadd fast float %4790, 0x3FC81DFBA0000000
  %4794 = fmul fast float %4793, %4373
  %4795 = fadd fast float %4794, 0x3F910E6020000000
  %4796 = fadd fast float %4791, 0x3FC81DFBA0000000
  %4797 = fmul fast float %4796, %4374
  %4798 = fadd fast float %4797, 0x3F910E6020000000
  %4799 = fadd fast float %4792, 0x3FC81DFBA0000000
  %4800 = fmul fast float %4799, %4375
  %4801 = fadd fast float %4800, 0x3F910E6020000000
  %4802 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4805 = fsub fast float %4802, %4373
  %4806 = fsub fast float %4803, %4374
  %4807 = fsub fast float %4804, %4375
  %4808 = fmul fast float %4805, %4778
  %4809 = fmul fast float %4808, %4789
  %4810 = fmul fast float %4806, %4778
  %4811 = fmul fast float %4810, %4789
  %4812 = fmul fast float %4807, %4778
  %4813 = fmul fast float %4812, %4789
  %4814 = fadd fast float %4809, %4373
  %4815 = fadd fast float %4811, %4374
  %4816 = fadd fast float %4813, %4375
  %4817 = fmul fast float %4321, %4321
  %4818 = fmul fast float %4817, %4817
  %4819 = fadd fast float %4774, 1.000000e+00
  %4820 = fsub fast float %4819, %4789
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = call float @dx.op.dot3.f32(i32 55, float %93, float %95, float %97, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = fsub fast float 1.000000e+00, %4818
  %4825 = call float @dx.op.binary.f32(i32 36, float %4821, float %4824)  ; FMin(a,b)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4827 = call float @dx.op.binary.f32(i32 35, float %4825, float %4826)  ; FMax(a,b)
  %4828 = fadd fast float %4823, 0xBFE4CCCCC0000000
  %4829 = fmul fast float %4828, 0x4006DB6DA0000000
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = fmul fast float %4830, 2.000000e+00
  %4832 = fsub fast float 3.000000e+00, %4831
  %4833 = bitcast float %4358 to i32
  %4834 = ashr i32 %4833, 1
  %4835 = add nsw i32 %4834, 532487669
  %4836 = bitcast i32 %4835 to float
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4840, 2.000000e+00
  %4842 = bitcast float %4359 to i32
  %4843 = ashr i32 %4842, 1
  %4844 = add nsw i32 %4843, 532487669
  %4845 = bitcast i32 %4844 to float
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = bitcast float %4846 to i32
  %4848 = sub nsw i32 2129859010, %4847
  %4849 = bitcast i32 %4848 to float
  %4850 = fmul fast float %4849, 2.000000e+00
  %4851 = bitcast float %4360 to i32
  %4852 = ashr i32 %4851, 1
  %4853 = add nsw i32 %4852, 532487669
  %4854 = bitcast i32 %4853 to float
  %4855 = fsub fast float 1.000000e+00, %4854
  %4856 = bitcast float %4855 to i32
  %4857 = sub nsw i32 2129859010, %4856
  %4858 = bitcast i32 %4857 to float
  %4859 = fmul fast float %4858, 2.000000e+00
  %4860 = fsub fast float 0x4002A9FBE0000000, %4841
  %4861 = fadd fast float %4841, 0x3FD54FDF00000000
  %4862 = bitcast float %4861 to i32
  %4863 = sub nsw i32 2129859010, %4862
  %4864 = bitcast i32 %4863 to float
  %4865 = fmul fast float %4864, %4860
  %4866 = fmul fast float %4865, %4865
  %4867 = fsub fast float 0x4002A9FBE0000000, %4850
  %4868 = fadd fast float %4850, 0x3FD54FDF00000000
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = fmul fast float %4871, %4867
  %4873 = fmul fast float %4872, %4872
  %4874 = fsub fast float 0x4002A9FBE0000000, %4859
  %4875 = fadd fast float %4859, 0x3FD54FDF00000000
  %4876 = bitcast float %4875 to i32
  %4877 = sub nsw i32 2129859010, %4876
  %4878 = bitcast i32 %4877 to float
  %4879 = fmul fast float %4878, %4874
  %4880 = fmul fast float %4879, %4879
  %4881 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4866)  ; FMax(a,b)
  %4882 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4873)  ; FMax(a,b)
  %4883 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4880)  ; FMax(a,b)
  %4884 = fsub fast float 1.000000e+00, %4769
  %4885 = fadd fast float %4884, %4785
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fsub fast float 1.000000e+00, %4749
  %4888 = fmul fast float %4827, %4887
  %4889 = fmul fast float %4830, %4830
  %4890 = fmul fast float %4889, %4888
  %4891 = fmul fast float %4890, %4832
  %4892 = fmul fast float %4887, 0xBFE99999A0000000
  %4893 = fmul fast float %4892, %4778
  %4894 = fmul fast float %4893, %4789
  %4895 = fadd fast float %4894, 1.000000e+00
  %4896 = fadd fast float %4361, -1.000000e+00
  %4897 = fmul fast float %4895, %4896
  %4898 = fadd fast float %4897, 1.000000e+00
  %4899 = fsub fast float %4881, %4358
  %4900 = fsub fast float %4882, %4359
  %4901 = fsub fast float %4883, %4360
  %4902 = fmul fast float %4891, %4899
  %4903 = fmul fast float %4891, %4900
  %4904 = fmul fast float %4891, %4901
  %4905 = fadd fast float %4902, %4358
  %4906 = fadd fast float %4903, %4359
  %4907 = fadd fast float %4904, %4360
  %4908 = fsub fast float %93, %4337
  %4909 = fsub fast float %95, %4338
  %4910 = fsub fast float %97, %4339
  %4911 = fmul fast float %4891, %4908
  %4912 = fmul fast float %4891, %4909
  %4913 = fmul fast float %4891, %4910
  %4914 = fadd fast float %4911, %4337
  %4915 = fadd fast float %4912, %4338
  %4916 = fadd fast float %4913, %4339
  %4917 = fmul fast float %4891, %4886
  %4918 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = fmul fast float %4917, %4919
  %4921 = fadd fast float %4920, %4918
  %4922 = fsub fast float 1.000000e+00, %4321
  %4923 = fmul fast float %4891, %4922
  %4924 = fadd fast float %4923, %4321
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4914, float %4915, float %4916)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.unary.f32(i32 25, float %4925)  ; Rsqrt(value)
  %4927 = fmul fast float %4914, %4926
  %4928 = fmul fast float %4915, %4926
  %4929 = fmul fast float %4916, %4926
  br label %4930

; <label>:4930                                    ; preds = %4762, %4755
  %4931 = phi float [ %4761, %4755 ], [ %4768, %4762 ]
  %4932 = phi float [ %4760, %4755 ], [ %4766, %4762 ]
  %4933 = phi float [ %4759, %4755 ], [ %4764, %4762 ]
  %4934 = phi float [ %4758, %4755 ], [ %4767, %4762 ]
  %4935 = phi float [ %4757, %4755 ], [ %4765, %4762 ]
  %4936 = phi float [ %4756, %4755 ], [ %4763, %4762 ]
  %4937 = phi float [ %4373, %4755 ], [ %4814, %4762 ]
  %4938 = phi float [ %4374, %4755 ], [ %4815, %4762 ]
  %4939 = phi float [ %4375, %4755 ], [ %4816, %4762 ]
  %4940 = phi float [ %4337, %4755 ], [ %4927, %4762 ]
  %4941 = phi float [ %4338, %4755 ], [ %4928, %4762 ]
  %4942 = phi float [ %4339, %4755 ], [ %4929, %4762 ]
  %4943 = phi float [ %4358, %4755 ], [ %4905, %4762 ]
  %4944 = phi float [ %4359, %4755 ], [ %4906, %4762 ]
  %4945 = phi float [ %4360, %4755 ], [ %4907, %4762 ]
  %4946 = phi float [ %4361, %4755 ], [ %4921, %4762 ]
  %4947 = phi float [ %4321, %4755 ], [ %4924, %4762 ]
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4951 = fmul fast float %4949, %84
  %4952 = fmul fast float %4950, %85
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.CBufRet.f32 %4953, 1
  %4956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4951, float %4952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = fmul fast float %4957, %4955
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fadd fast float %4959, -1.000000e+00
  %4961 = fmul fast float %4960, %4954
  %4962 = fadd fast float %4961, 1.000000e+00
  %4963 = select i1 %185, float 0.000000e+00, float %4945
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4941, float %4942, float %4933, float %4932, float %4931)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4935, float %4934, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = fmul fast float %4966, 2.000000e+00
  %4968 = fmul fast float %4967, %4940
  %4969 = fmul fast float %4967, %4941
  %4970 = fmul fast float %4967, %4942
  %4971 = fsub fast float %4936, %4968
  %4972 = fsub fast float %4935, %4969
  %4973 = fsub fast float %4934, %4970
  %4974 = call float @dx.op.binary.f32(i32 36, float %4947, float %4962)  ; FMin(a,b)
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = ashr i32 %4976, 1
  %4978 = add nsw i32 %4977, 532487669
  %4979 = bitcast i32 %4978 to float
  %4980 = fsub fast float 1.000000e+00, %4946
  %4981 = call float @dx.op.binary.f32(i32 35, float %4980, float 0x3F847AE140000000)  ; FMax(a,b)
  %4982 = fmul fast float %4981, %4981
  %4983 = fmul fast float %4982, %4982
  %4984 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4979, float %4983, float %4984, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 0
  %4987 = fsub fast float 1.000000e+00, %4947
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = call float @dx.op.dot3.f32(i32 55, float %61, float %57, float %53, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = fmul fast float %4991, 0x3FD20DD760000000
  %4993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %4994 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = fcmp fast oeq float %4994, 0.000000e+00
  %4996 = fcmp fast oeq float %4993, 0.000000e+00
  %4997 = or i1 %4996, %4995
  br i1 %4997, label %5027, label %4998

; <label>:4998                                    ; preds = %4930
  %4999 = fsub fast float -0.000000e+00, %64
  %5000 = fsub fast float -0.000000e+00, %62
  %5001 = call float @dx.op.unary.f32(i32 24, float %4994)  ; Sqrt(value)
  %5002 = fdiv fast float %5001, %4993
  %5003 = fcmp fast ogt float %5002, 0x3FFB6F8900000000
  %5004 = select i1 %5003, float 0x3FFB6F8900000000, float %5002
  %5005 = fmul fast float %5004, 0x3FE8A23460000000
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = call float @dx.op.binary.f32(i32 35, float %5004, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5008 = fmul fast float %5006, %4993
  %5009 = fmul fast float %5007, 0x3FF279A740000000
  %5010 = fadd fast float %5009, -1.000000e+00
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4999, float %5000, float %63, float %4999, float %5000, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 25, float %5011)  ; Rsqrt(value)
  %5013 = fmul fast float %5012, %4999
  %5014 = fmul fast float %5012, %5000
  %5015 = fmul fast float %5012, %63
  %5016 = fmul fast float %5010, %5010
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = fmul fast float %5007, 0x40005F8BE0000000
  %5019 = fsub fast float 0x400C5BF8A0000000, %5018
  %5020 = fdiv fast float %5008, %5019
  %5021 = fmul fast float %5020, 0x3FEE31C3C0000000
  %5022 = fmul fast float %5021, %5017
  %5023 = fmul fast float %5007, 0x3FDACB7480000000
  %5024 = fadd fast float %5023, 0xBFD7347680000000
  %5025 = fmul fast float %5024, %5020
  %5026 = fmul fast float %5025, %5017
  br label %5027

; <label>:5027                                    ; preds = %4998, %4930
  %5028 = phi float [ %5013, %4998 ], [ 0.000000e+00, %4930 ]
  %5029 = phi float [ %5014, %4998 ], [ 0.000000e+00, %4930 ]
  %5030 = phi float [ %5015, %4998 ], [ 0.000000e+00, %4930 ]
  %5031 = phi float [ %5022, %4998 ], [ 0.000000e+00, %4930 ]
  %5032 = phi float [ %5026, %4998 ], [ 0.000000e+00, %4930 ]
  %5033 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = fmul fast float %5033, %5033
  %5035 = fmul fast float %5034, 0x3FEE471020000000
  %5036 = fadd fast float %5035, 0xBFD42F6020000000
  %5037 = fmul fast float %4993, 0x3FD20DD760000000
  %5038 = fmul fast float %5036, %5032
  %5039 = fmul fast float %5031, 0x3FDF454380000000
  %5040 = fmul fast float %5039, %5033
  %5041 = fadd fast float %5040, %5037
  %5042 = fadd fast float %5041, %5038
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %4971, float %4972, float %4973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = fmul fast float %5043, 0x3FDF454380000000
  %5045 = fmul fast float %5043, %5043
  %5046 = fmul fast float %5045, 0x3FEE471020000000
  %5047 = fadd fast float %5046, 0xBFD42F6020000000
  %5048 = call float @dx.op.dot3.f32(i32 55, float %4993, float %5031, float %5032, float 0x3FD20DD760000000, float %5044, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5050 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = fcmp fast oeq float %5050, 0.000000e+00
  %5052 = fcmp fast oeq float %5049, 0.000000e+00
  %5053 = or i1 %5052, %5051
  br i1 %5053, label %5083, label %5054

; <label>:5054                                    ; preds = %5027
  %5055 = fsub fast float -0.000000e+00, %60
  %5056 = fsub fast float -0.000000e+00, %58
  %5057 = call float @dx.op.unary.f32(i32 24, float %5050)  ; Sqrt(value)
  %5058 = fdiv fast float %5057, %5049
  %5059 = fcmp fast ogt float %5058, 0x3FFB6F8900000000
  %5060 = select i1 %5059, float 0x3FFB6F8900000000, float %5058
  %5061 = fmul fast float %5060, 0x3FE8A23460000000
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = call float @dx.op.binary.f32(i32 35, float %5060, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5064 = fmul fast float %5062, %5049
  %5065 = fmul fast float %5063, 0x3FF279A740000000
  %5066 = fadd fast float %5065, -1.000000e+00
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %59, float %5055, float %5056, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 25, float %5067)  ; Rsqrt(value)
  %5069 = fmul fast float %5068, %5055
  %5070 = fmul fast float %5068, %5056
  %5071 = fmul fast float %5068, %59
  %5072 = fmul fast float %5066, %5066
  %5073 = fsub fast float 1.000000e+00, %5072
  %5074 = fmul fast float %5063, 0x40005F8BE0000000
  %5075 = fsub fast float 0x400C5BF8A0000000, %5074
  %5076 = fdiv fast float %5064, %5075
  %5077 = fmul fast float %5076, 0x3FEE31C3C0000000
  %5078 = fmul fast float %5077, %5073
  %5079 = fmul fast float %5063, 0x3FDACB7480000000
  %5080 = fadd fast float %5079, 0xBFD7347680000000
  %5081 = fmul fast float %5080, %5076
  %5082 = fmul fast float %5081, %5073
  br label %5083

; <label>:5083                                    ; preds = %5054, %5027
  %5084 = phi float [ %5069, %5054 ], [ 0.000000e+00, %5027 ]
  %5085 = phi float [ %5070, %5054 ], [ 0.000000e+00, %5027 ]
  %5086 = phi float [ %5071, %5054 ], [ 0.000000e+00, %5027 ]
  %5087 = phi float [ %5078, %5054 ], [ 0.000000e+00, %5027 ]
  %5088 = phi float [ %5082, %5054 ], [ 0.000000e+00, %5027 ]
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = fmul fast float %5089, %5089
  %5091 = fmul fast float %5090, 0x3FEE471020000000
  %5092 = fadd fast float %5091, 0xBFD42F6020000000
  %5093 = fmul fast float %5049, 0x3FD20DD760000000
  %5094 = fmul fast float %5092, %5088
  %5095 = fmul fast float %5087, 0x3FDF454380000000
  %5096 = fmul fast float %5095, %5089
  %5097 = fadd fast float %5096, %5093
  %5098 = fadd fast float %5097, %5094
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %4971, float %4972, float %4973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = fmul fast float %5099, 0x3FDF454380000000
  %5101 = fmul fast float %5099, %5099
  %5102 = fmul fast float %5101, 0x3FEE471020000000
  %5103 = fadd fast float %5102, 0xBFD42F6020000000
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5087, float %5088, float 0x3FD20DD760000000, float %5100, float %5103)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %5106 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5107 = fcmp fast oeq float %5106, 0.000000e+00
  %5108 = fcmp fast oeq float %5105, 0.000000e+00
  %5109 = or i1 %5108, %5107
  br i1 %5109, label %5139, label %5110

; <label>:5110                                    ; preds = %5083
  %5111 = fsub fast float -0.000000e+00, %56
  %5112 = fsub fast float -0.000000e+00, %54
  %5113 = call float @dx.op.unary.f32(i32 24, float %5106)  ; Sqrt(value)
  %5114 = fdiv fast float %5113, %5105
  %5115 = fcmp fast ogt float %5114, 0x3FFB6F8900000000
  %5116 = select i1 %5115, float 0x3FFB6F8900000000, float %5114
  %5117 = fmul fast float %5116, 0x3FE8A23460000000
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5116, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5120 = fmul fast float %5118, %5105
  %5121 = fmul fast float %5119, 0x3FF279A740000000
  %5122 = fadd fast float %5121, -1.000000e+00
  %5123 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %55, float %5111, float %5112, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = call float @dx.op.unary.f32(i32 25, float %5123)  ; Rsqrt(value)
  %5125 = fmul fast float %5124, %5111
  %5126 = fmul fast float %5124, %5112
  %5127 = fmul fast float %5124, %55
  %5128 = fmul fast float %5122, %5122
  %5129 = fsub fast float 1.000000e+00, %5128
  %5130 = fmul fast float %5119, 0x40005F8BE0000000
  %5131 = fsub fast float 0x400C5BF8A0000000, %5130
  %5132 = fdiv fast float %5120, %5131
  %5133 = fmul fast float %5132, 0x3FEE31C3C0000000
  %5134 = fmul fast float %5133, %5129
  %5135 = fmul fast float %5119, 0x3FDACB7480000000
  %5136 = fadd fast float %5135, 0xBFD7347680000000
  %5137 = fmul fast float %5136, %5132
  %5138 = fmul fast float %5137, %5129
  br label %5139

; <label>:5139                                    ; preds = %5110, %5083
  %5140 = phi float [ %5125, %5110 ], [ 0.000000e+00, %5083 ]
  %5141 = phi float [ %5126, %5110 ], [ 0.000000e+00, %5083 ]
  %5142 = phi float [ %5127, %5110 ], [ 0.000000e+00, %5083 ]
  %5143 = phi float [ %5134, %5110 ], [ 0.000000e+00, %5083 ]
  %5144 = phi float [ %5138, %5110 ], [ 0.000000e+00, %5083 ]
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5142, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = fmul fast float %5145, %5145
  %5147 = fmul fast float %5146, 0x3FEE471020000000
  %5148 = fadd fast float %5147, 0xBFD42F6020000000
  %5149 = fmul fast float %5105, 0x3FD20DD760000000
  %5150 = fmul fast float %5148, %5144
  %5151 = fmul fast float %5143, 0x3FDF454380000000
  %5152 = fmul fast float %5151, %5145
  %5153 = fadd fast float %5152, %5149
  %5154 = fadd fast float %5153, %5150
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5142, float %4971, float %4972, float %4973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fmul fast float %5155, 0x3FDF454380000000
  %5157 = fmul fast float %5155, %5155
  %5158 = fmul fast float %5157, 0x3FEE471020000000
  %5159 = fadd fast float %5158, 0xBFD42F6020000000
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5143, float %5144, float 0x3FD20DD760000000, float %5156, float %5159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = call float @dx.op.binary.f32(i32 35, float %5042, float 0.000000e+00)  ; FMax(a,b)
  %5162 = call float @dx.op.binary.f32(i32 35, float %5098, float 0.000000e+00)  ; FMax(a,b)
  %5163 = call float @dx.op.binary.f32(i32 35, float %5154, float 0.000000e+00)  ; FMax(a,b)
  %5164 = call float @dx.op.binary.f32(i32 35, float %5048, float 0.000000e+00)  ; FMax(a,b)
  %5165 = call float @dx.op.binary.f32(i32 35, float %5104, float 0.000000e+00)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float %5160, float 0.000000e+00)  ; FMax(a,b)
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = call float @dx.op.binary.f32(i32 36, float %4937, float %5168)  ; FMin(a,b)
  %5170 = fmul fast float %5169, %4975
  %5171 = fsub fast float 1.000000e+00, %5170
  %5172 = bitcast float %5171 to i32
  %5173 = sub nsw i32 2129859010, %5172
  %5174 = bitcast i32 %5173 to float
  %5175 = call float @dx.op.binary.f32(i32 36, float %4938, float %5168)  ; FMin(a,b)
  %5176 = fmul fast float %5175, %4975
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = bitcast float %5177 to i32
  %5179 = sub nsw i32 2129859010, %5178
  %5180 = bitcast i32 %5179 to float
  %5181 = call float @dx.op.binary.f32(i32 36, float %4939, float %5168)  ; FMin(a,b)
  %5182 = fmul fast float %5181, %4975
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = bitcast float %5183 to i32
  %5185 = sub nsw i32 2129859010, %5184
  %5186 = bitcast i32 %5185 to float
  %5187 = fmul fast float %5161, %4974
  %5188 = fmul fast float %5187, %5174
  %5189 = fmul fast float %5162, %4974
  %5190 = fmul fast float %5189, %5180
  %5191 = fmul fast float %5163, %4974
  %5192 = fmul fast float %5191, %5186
  %5193 = call float @dx.op.binary.f32(i32 36, float %4943, float %5168)  ; FMin(a,b)
  %5194 = fmul fast float %5193, %4975
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = bitcast float %5195 to i32
  %5197 = sub nsw i32 2129859010, %5196
  %5198 = bitcast i32 %5197 to float
  %5199 = call float @dx.op.binary.f32(i32 36, float %4944, float %5168)  ; FMin(a,b)
  %5200 = fmul fast float %5199, %4975
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = bitcast float %5201 to i32
  %5203 = sub nsw i32 2129859010, %5202
  %5204 = bitcast i32 %5203 to float
  %5205 = call float @dx.op.binary.f32(i32 36, float %4963, float %5168)  ; FMin(a,b)
  %5206 = fmul fast float %5205, %4975
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = bitcast float %5207 to i32
  %5209 = sub nsw i32 2129859010, %5208
  %5210 = bitcast i32 %5209 to float
  %5211 = fmul fast float %5164, %4974
  %5212 = fmul fast float %5211, %5198
  %5213 = fmul fast float %5165, %4974
  %5214 = fmul fast float %5213, %5204
  %5215 = fmul fast float %5166, %4974
  %5216 = fmul fast float %5215, %5210
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5190, float %5192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = select i1 %185, float 0.000000e+00, float %5188
  %5219 = select i1 %185, float %5217, float %5190
  %5220 = select i1 %185, float 0.000000e+00, float %5192
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5214, float %5216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = select i1 %185, float 0.000000e+00, float %5212
  %5223 = select i1 %185, float %5221, float %5214
  %5224 = select i1 %185, float 0.000000e+00, float %5216
  %5225 = fmul fast float %4965, 9.843750e-01
  %5226 = fmul fast float %4946, 9.843750e-01
  %5227 = fadd fast float %5225, 7.812500e-03
  %5228 = fadd fast float %5226, 7.812500e-03
  %5229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5227, float %5228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 3
  %5232 = fmul fast float %5230, %4943
  %5233 = fmul fast float %5230, %4944
  %5234 = fmul fast float %5230, %4963
  %5235 = fadd fast float %5232, %5231
  %5236 = fadd fast float %5233, %5231
  %5237 = fadd fast float %5234, %5231
  %5238 = fcmp fast ogt float %4314, 0.000000e+00
  br i1 %5238, label %5239, label %5265

; <label>:5239                                    ; preds = %5139
  %5240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4314, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 0
  %5242 = extractvalue %dx.types.ResRet.f32 %5240, 1
  %5243 = extractvalue %dx.types.ResRet.f32 %5240, 2
  %5244 = fadd fast float %5241, -5.000000e-01
  %5245 = fadd fast float %5242, -5.000000e-01
  %5246 = fadd fast float %5243, -5.000000e-01
  %5247 = fsub fast float 1.000000e+00, %4943
  %5248 = fsub fast float 1.000000e+00, %4944
  %5249 = fsub fast float 1.000000e+00, %4963
  %5250 = fmul fast float %4943, 4.000000e+00
  %5251 = fmul fast float %5250, %5247
  %5252 = fmul fast float %5251, %5244
  %5253 = fmul fast float %4944, 4.000000e+00
  %5254 = fmul fast float %5253, %5248
  %5255 = fmul fast float %5254, %5245
  %5256 = fmul fast float %4963, 4.000000e+00
  %5257 = fmul fast float %5256, %5249
  %5258 = fmul fast float %5257, %5246
  %5259 = fadd fast float %5252, %5235
  %5260 = fadd fast float %5255, %5236
  %5261 = fadd fast float %5258, %5237
  %5262 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  br label %5265

; <label>:5265                                    ; preds = %5239, %5139
  %5266 = phi float [ %5262, %5239 ], [ %5235, %5139 ]
  %5267 = phi float [ %5263, %5239 ], [ %5236, %5139 ]
  %5268 = phi float [ %5264, %5239 ], [ %5237, %5139 ]
  %5269 = call float @dx.op.binary.f32(i32 35, float %5267, float %5268)  ; FMax(a,b)
  %5270 = call float @dx.op.binary.f32(i32 35, float %5266, float %5269)  ; FMax(a,b)
  %5271 = fsub fast float 1.000000e+00, %5270
  %5272 = fmul fast float %5270, %4946
  %5273 = fadd fast float %5272, %4946
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5278 = extractvalue %dx.types.CBufRet.f32 %5274, 3
  %5279 = fmul fast float %5273, %5275
  %5280 = fadd fast float %5279, %5276
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = fmul fast float %5277, %5273
  %5283 = fadd fast float %5282, %5278
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fsub fast float 1.000000e+00, %4986
  %5286 = fadd fast float %5285, %5284
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = fcmp fast olt float %5287, 1.000000e+00
  br i1 %5288, label %5289, label %6144

; <label>:5289                                    ; preds = %5265
  %5290 = fcmp fast olt float %5281, 1.000000e+00
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = fcmp fast ogt float %5292, 0.000000e+00
  %5294 = or i1 %5290, %5293
  %5295 = or i1 %5290, %5293
  %5296 = xor i1 %5295, true
  %5297 = zext i1 %5296 to i32
  br i1 %5294, label %5298, label %5541

; <label>:5298                                    ; preds = %5289
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5303 = extractvalue %dx.types.CBufRet.f32 %5299, 3
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5308 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5313 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.CBufRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5318 = extractvalue %dx.types.CBufRet.f32 %5314, 3
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5323 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.CBufRet.f32 %5324, 2
  %5328 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %4971, float %4972, float %4973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4941, float %4942, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.unary.f32(i32 6, float %5330)  ; FAbs(value)
  %5332 = fmul fast float %5331, 8.000000e+00
  %5333 = fadd fast float %5332, -6.000000e+00
  %5334 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5335 = fmul fast float %5329, 8.000000e+00
  %5336 = fmul fast float %5335, %5292
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fcmp fast ogt float %5337, 0.000000e+00
  br i1 %5338, label %5339, label %5516, !dx.controlflow.hints !85

; <label>:5339                                    ; preds = %5298
  %5340 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5341 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5342 = fsub fast float %5340, %5341
  %5343 = fmul fast float %5342, %4946
  %5344 = fadd fast float %5343, %5341
  %5345 = fmul fast float %198, 2.000000e+00
  %5346 = fmul fast float %199, 2.000000e+00
  %5347 = fadd fast float %5345, -1.000000e+00
  %5348 = fadd fast float %5346, -1.000000e+00
  %5349 = fmul fast float %5344, %5347
  %5350 = fmul fast float %5344, %5348
  %5351 = fadd fast float %5349, %84
  %5352 = fadd fast float %5350, %85
  %5353 = fmul fast float %5351, %4949
  %5354 = fmul fast float %5352, %4950
  %5355 = fadd fast float %4946, 0xBFE3333340000000
  %5356 = fmul fast float %5355, 0x4004000020000000
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, 3.000000e+00
  %5360 = fadd fast float %5359, %198
  %5361 = call float @dx.op.unary.f32(i32 27, float %5360)  ; Round_ni(value)
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5353, float %5354, float %5361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = fcmp fast une float %5363, 0xFFF0000000000000
  %5365 = fcmp fast une float %5363, 0x7FF0000000000000
  %5366 = and i1 %5364, %5365
  %5367 = fcmp fast olt float %5363, 0.000000e+00
  %5368 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5369 = fsub fast float 1.000000e+00, %5368
  %5370 = select i1 %5366, float 1.000000e+00, float 0.000000e+00
  %5371 = fmul fast float %5370, %5337
  %5372 = fcmp fast ogt float %5371, 0.000000e+00
  br i1 %5372, label %5373, label %5516, !dx.controlflow.hints !86

; <label>:5373                                    ; preds = %5339
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5378 = select i1 %5367, float 0.000000e+00, float %5375
  %5379 = select i1 %5367, float 0.000000e+00, float %5376
  %5380 = select i1 %5367, float 0.000000e+00, float %5377
  %5381 = select i1 %5367, float %5300, float %5315
  %5382 = select i1 %5367, float %5305, float %5320
  %5383 = select i1 %5367, float %5310, float %5325
  %5384 = select i1 %5367, float %5301, float %5316
  %5385 = select i1 %5367, float %5306, float %5321
  %5386 = select i1 %5367, float %5311, float %5326
  %5387 = select i1 %5367, float %5302, float %5317
  %5388 = select i1 %5367, float %5307, float %5322
  %5389 = select i1 %5367, float %5312, float %5327
  %5390 = select i1 %5367, float %5303, float %5318
  %5391 = select i1 %5367, float %5308, float %5323
  %5392 = select i1 %5367, float %5313, float %5328
  %5393 = fadd fast float %5378, %143
  %5394 = fadd fast float %5379, %144
  %5395 = fadd fast float %5380, %145
  %5396 = fmul fast float %5393, %5381
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5384, float %5396)  ; FMad(a,b,c)
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5387, float %5397)  ; FMad(a,b,c)
  %5399 = fadd fast float %5398, %5390
  %5400 = fmul fast float %5393, %5382
  %5401 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5385, float %5400)  ; FMad(a,b,c)
  %5402 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5388, float %5401)  ; FMad(a,b,c)
  %5403 = fadd fast float %5402, %5391
  %5404 = fmul fast float %5393, %5383
  %5405 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5386, float %5404)  ; FMad(a,b,c)
  %5406 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5389, float %5405)  ; FMad(a,b,c)
  %5407 = fadd fast float %5406, %5392
  %5408 = fdiv fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5408, %5399
  %5410 = fmul fast float %5408, %5403
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5411, 1
  %5414 = fmul fast float %5409, %5412
  %5415 = fmul fast float %5410, %5413
  %5416 = extractvalue %dx.types.CBufRet.f32 %5411, 2
  %5417 = extractvalue %dx.types.CBufRet.f32 %5411, 3
  %5418 = fadd fast float %5414, %5416
  %5419 = fadd fast float %5415, %5417
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5422 = fmul fast float %5421, %4971
  %5423 = fmul fast float %5421, %4972
  %5424 = fmul fast float %5421, %4973
  %5425 = fadd fast float %5422, %5393
  %5426 = fadd fast float %5423, %5394
  %5427 = fadd fast float %5424, %5395
  %5428 = fmul fast float %5425, %5381
  %5429 = call float @dx.op.tertiary.f32(i32 46, float %5426, float %5384, float %5428)  ; FMad(a,b,c)
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %5427, float %5387, float %5429)  ; FMad(a,b,c)
  %5431 = fadd fast float %5430, %5390
  %5432 = fmul fast float %5425, %5382
  %5433 = call float @dx.op.tertiary.f32(i32 46, float %5426, float %5385, float %5432)  ; FMad(a,b,c)
  %5434 = call float @dx.op.tertiary.f32(i32 46, float %5427, float %5388, float %5433)  ; FMad(a,b,c)
  %5435 = fadd fast float %5434, %5391
  %5436 = fmul fast float %5425, %5383
  %5437 = call float @dx.op.tertiary.f32(i32 46, float %5426, float %5386, float %5436)  ; FMad(a,b,c)
  %5438 = call float @dx.op.tertiary.f32(i32 46, float %5427, float %5389, float %5437)  ; FMad(a,b,c)
  %5439 = fadd fast float %5438, %5392
  %5440 = fdiv fast float 1.000000e+00, %5439
  %5441 = fmul fast float %5440, %5431
  %5442 = fmul fast float %5440, %5435
  %5443 = fmul fast float %5418, 2.000000e+00
  %5444 = fadd fast float %5443, -1.000000e+00
  %5445 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5446 = fmul fast float %5445, 5.000000e+00
  %5447 = fadd fast float %5446, -4.000000e+00
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5449 = fmul fast float %5448, %5334
  %5450 = fsub fast float %5409, %5441
  %5451 = fmul fast float %5412, %5450
  %5452 = fmul fast float %5449, %5451
  %5453 = fsub fast float %5441, %5409
  %5454 = fmul fast float %5412, %5453
  %5455 = fadd fast float %5454, %5452
  %5456 = fsub fast float %5442, %5410
  %5457 = fmul fast float %5413, %5456
  %5458 = fmul fast float %5455, %5369
  %5459 = fmul fast float %5457, %5369
  %5460 = fadd fast float %5458, %5418
  %5461 = fadd fast float %5459, %5419
  %5462 = fsub fast float %5440, %5408
  %5463 = fmul fast float %5462, %5369
  %5464 = fadd fast float %5463, %5408
  %5465 = fdiv fast float 1.000000e+00, %5464
  %5466 = fadd fast float %4946, -1.000000e+00
  %5467 = fsub fast float %5465, %5407
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 2
  %5470 = fmul fast float %5469, %5465
  %5471 = fdiv fast float 1.600000e+02, %5470
  %5472 = fmul fast float %5466, %5466
  %5473 = fmul fast float %5472, 0xBFB5B17960000000
  %5474 = fmul fast float %5473, %5467
  %5475 = fmul fast float %5474, %5471
  %5476 = call float @dx.op.unary.f32(i32 21, float %5475)  ; Exp(value)
  %5477 = fmul fast float %5476, 0x3FF04B2960000000
  %5478 = fsub fast float 0x3FF04B2960000000, %5477
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = fmul fast float %5479, 4.000000e+00
  %5481 = fadd fast float %198, -5.000000e-01
  %5482 = fadd fast float %199, -5.000000e-01
  %5483 = fmul fast float %5479, 0x3FBEB851E0000000
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fmul fast float %5484, %5481
  %5486 = fmul fast float %5484, %5482
  %5487 = fadd fast float %5460, %5485
  %5488 = fadd fast float %5461, %5486
  %5489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5487, float %5488, float undef, float undef, i32 0, i32 0, i32 undef, float %5480)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.ResRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.ResRet.f32 %5489, 2
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5495 = fmul fast float %5494, %5490
  %5496 = fmul fast float %5494, %5491
  %5497 = fmul fast float %5494, %5492
  %5498 = select i1 %185, float 0.000000e+00, float %5496
  %5499 = select i1 %185, float 0.000000e+00, float %5497
  %5500 = fmul fast float %5487, 2.000000e+00
  %5501 = fmul fast float %5488, 2.000000e+00
  %5502 = fadd fast float %5500, -1.000000e+00
  %5503 = fadd fast float %5501, -1.000000e+00
  %5504 = fmul fast float %5502, %5502
  %5505 = fsub fast float 1.000000e+00, %5504
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = fmul fast float %5507, %5334
  %5509 = fadd fast float %5508, %5506
  %5510 = fmul fast float %5503, %5503
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fmul fast float %5509, %5512
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fmul fast float %5514, %5371
  br label %5516

; <label>:5516                                    ; preds = %5373, %5339, %5298
  %5517 = phi float [ %5495, %5373 ], [ 0.000000e+00, %5339 ], [ 0.000000e+00, %5298 ]
  %5518 = phi float [ %5498, %5373 ], [ 0.000000e+00, %5339 ], [ 0.000000e+00, %5298 ]
  %5519 = phi float [ %5499, %5373 ], [ 0.000000e+00, %5339 ], [ 0.000000e+00, %5298 ]
  %5520 = phi float [ %5515, %5373 ], [ 0.000000e+00, %5339 ], [ 0.000000e+00, %5298 ]
  %5521 = fcmp fast olt float %5520, 1.000000e+00
  %5522 = or i1 %5521, %5296
  %5523 = zext i1 %5522 to i32
  %5524 = fmul fast float %5520, %5281
  %5525 = fsub fast float %5520, %5524
  %5526 = fsub fast float 1.000000e+00, %5287
  %5527 = fmul fast float %5525, %5526
  %5528 = fadd fast float %5527, %5287
  %5529 = fsub fast float %5528, %5525
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = fmul fast float %5530, %5222
  %5532 = fmul fast float %5530, %5223
  %5533 = fmul fast float %5530, %5224
  %5534 = fsub fast float -0.000000e+00, %5528
  %5535 = fmul fast float %5525, %5517
  %5536 = fmul fast float %5525, %5518
  %5537 = fmul fast float %5525, %5519
  %5538 = fadd fast float %5535, %5531
  %5539 = fadd fast float %5536, %5532
  %5540 = fadd fast float %5537, %5533
  br label %5541

; <label>:5541                                    ; preds = %5516, %5289
  %5542 = phi float [ %5287, %5289 ], [ %5534, %5516 ]
  %5543 = phi float [ %5222, %5289 ], [ %5538, %5516 ]
  %5544 = phi float [ %5223, %5289 ], [ %5539, %5516 ]
  %5545 = phi float [ %5224, %5289 ], [ %5540, %5516 ]
  %5546 = phi i32 [ %5297, %5289 ], [ %5523, %5516 ]
  %5547 = icmp eq i32 %5546, 0
  br i1 %5547, label %6144, label %5548

; <label>:5548                                    ; preds = %5541
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5552 = fmul fast float %5550, %84
  %5553 = fmul fast float %5551, %85
  %5554 = fptoui float %5552 to i32
  %5555 = fptoui float %5553 to i32
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 2
  %5559 = extractvalue %dx.types.CBufRet.f32 %5556, 3
  %5560 = fadd fast float %79, -4.000000e+00
  %5561 = call float @dx.op.binary.f32(i32 35, float %5560, float 0.000000e+00)  ; FMax(a,b)
  %5562 = fadd fast float %5561, %5557
  %5563 = fmul fast float %5562, %5558
  %5564 = call float @dx.op.unary.f32(i32 23, float %5563)  ; Log(value)
  %5565 = fmul fast float %5564, %5559
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5568 = fmul fast float %5565, %5567
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.i32 %5570, 1
  %5572 = add i32 %5571, -1
  %5573 = uitofp i32 %5571 to float
  %5574 = fmul fast float %5573, %5569
  %5575 = fptoui float %5574 to i32
  %5576 = call i32 @dx.op.binary.i32(i32 40, i32 %5575, i32 %5572)  ; UMin(a,b)
  %5577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.i32 %5577, 2
  %5579 = extractvalue %dx.types.CBufRet.i32 %5577, 3
  %5580 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5555, i32 %5578, i32 %5554)  ; UMad(a,b,c)
  %5581 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5576, i32 %5579, i32 %5580)  ; UMad(a,b,c)
  %5582 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %5583 = fptoui float %5582 to i32
  %5584 = lshr i32 %5583, 5
  %5585 = call i32 @dx.op.binary.i32(i32 40, i32 %5584, i32 8191)  ; UMin(a,b)
  %5586 = fcmp fast ogt float %4745, 0.000000e+00
  %5587 = fcmp fast ogt float %4973, 0.000000e+00
  %5588 = and i1 %5587, %5586
  br i1 %5588, label %5589, label %5618

; <label>:5589                                    ; preds = %5548
  %5590 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4972, float %4973, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5590, float -1.000000e+00)  ; FMax(a,b)
  %5592 = call float @dx.op.binary.f32(i32 36, float %5591, float 1.000000e+00)  ; FMin(a,b)
  %5593 = fmul fast float %5592, %5592
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = fmul fast float %5594, 0x3FFC6E2300000000
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = fcmp fast ogt float %5596, 0.000000e+00
  %5598 = call float @dx.op.unary.f32(i32 24, float %5596)  ; Sqrt(value)
  %5599 = fsub fast float 1.000000e+00, %5598
  %5600 = call float @dx.op.unary.f32(i32 23, float %5599)  ; Log(value)
  %5601 = fmul fast float %5600, 5.000000e+00
  %5602 = call float @dx.op.unary.f32(i32 21, float %5601)  ; Exp(value)
  %5603 = fmul fast float %5602, 0x3FEF591A60000000
  %5604 = fadd fast float %5603, 0x3F94DCB540000000
  %5605 = select i1 %5597, float %5604, float 1.000000e+00
  %5606 = fcmp fast oge float %5605, 1.000000e+00
  %5607 = fmul fast float %5590, 2.000000e+00
  %5608 = fadd fast float %5607, %4973
  %5609 = select i1 %5606, float %5608, float %4973
  %5610 = fsub fast float %5609, %4973
  %5611 = fmul fast float %5610, %4745
  %5612 = fadd fast float %5611, %4973
  %5613 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4972, float %5612, float %4971, float %4972, float %5612)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = call float @dx.op.unary.f32(i32 25, float %5613)  ; Rsqrt(value)
  %5615 = fmul fast float %5614, %4971
  %5616 = fmul fast float %5614, %4972
  %5617 = fmul fast float %5612, %5614
  br label %5618

; <label>:5618                                    ; preds = %5589, %5548
  %5619 = phi float [ %5615, %5589 ], [ %4971, %5548 ]
  %5620 = phi float [ %5616, %5589 ], [ %4972, %5548 ]
  %5621 = phi float [ %5617, %5589 ], [ %4973, %5548 ]
  %5622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.i32 %5622, 2
  %5624 = add nsw i32 %5623, -1
  %5625 = call i32 @dx.op.binary.i32(i32 37, i32 %5624, i32 0)  ; IMax(a,b)
  %5626 = shl i32 %5585, 2
  %5627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5626, i32 undef)  ; BufferLoad(srv,index,wot)
  %5628 = extractvalue %dx.types.ResRet.i32 %5627, 0
  %5629 = lshr i32 %5628, 16
  %5630 = and i32 %5628, 65535
  %5631 = lshr i32 %5628, 21
  %5632 = lshr i32 %5630, 5
  %5633 = call i32 @dx.op.binary.i32(i32 40, i32 %5632, i32 %5625)  ; UMin(a,b)
  %5634 = icmp ugt i32 %5631, %5633
  br i1 %5634, label %6016, label %5635

; <label>:5635                                    ; preds = %5618
  br label %5636

; <label>:5636                                    ; preds = %6005, %5635
  %5637 = phi float [ %6006, %6005 ], [ 0.000000e+00, %5635 ]
  %5638 = phi float [ %6007, %6005 ], [ 0.000000e+00, %5635 ]
  %5639 = phi float [ %6008, %6005 ], [ 0.000000e+00, %5635 ]
  %5640 = phi float [ %6009, %6005 ], [ 1.000000e+00, %5635 ]
  %5641 = phi i32 [ %6013, %6005 ], [ %5631, %5635 ]
  %5642 = phi float [ %6010, %6005 ], [ 0.000000e+00, %5635 ]
  %5643 = phi float [ %6011, %6005 ], [ 0.000000e+00, %5635 ]
  %5644 = phi float [ %6012, %6005 ], [ 0.000000e+00, %5635 ]
  %5645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.i32 %5645, 2
  %5647 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5581, i32 %5646, i32 %5641)  ; UMad(a,b,c)
  %5648 = shl i32 %5647, 2
  %5649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5648, i32 undef)  ; BufferLoad(srv,index,wot)
  %5650 = extractvalue %dx.types.ResRet.i32 %5649, 0
  %5651 = shl i32 %5641, 5
  %5652 = sub nsw i32 %5629, %5651
  %5653 = call i32 @dx.op.binary.i32(i32 37, i32 %5652, i32 0)  ; IMax(a,b)
  %5654 = call i32 @dx.op.binary.i32(i32 38, i32 %5653, i32 31)  ; IMin(a,b)
  %5655 = sub nsw i32 1, %5629
  %5656 = add nsw i32 %5655, %5630
  %5657 = call i32 @dx.op.binary.i32(i32 37, i32 %5656, i32 0)  ; IMax(a,b)
  %5658 = call i32 @dx.op.binary.i32(i32 38, i32 %5657, i32 32)  ; IMin(a,b)
  %5659 = and i32 %5658, 31
  %5660 = shl i32 -1, %5659
  %5661 = xor i32 %5660, -1
  %5662 = and i32 %5654, 31
  %5663 = shl i32 %5661, %5662
  %5664 = icmp eq i32 %5658, 32
  %5665 = select i1 %5664, i32 -1, i32 %5663
  %5666 = and i32 %5665, %5650
  %5667 = icmp eq i32 %5666, 0
  br i1 %5667, label %6005, label %5668

; <label>:5668                                    ; preds = %5636
  br label %5669

; <label>:5669                                    ; preds = %5779, %5668
  %5670 = phi float [ %5780, %5779 ], [ %5637, %5668 ]
  %5671 = phi float [ %5781, %5779 ], [ %5638, %5668 ]
  %5672 = phi float [ %5782, %5779 ], [ %5639, %5668 ]
  %5673 = phi float [ %5783, %5779 ], [ %5640, %5668 ]
  %5674 = phi i32 [ %5682, %5779 ], [ %5666, %5668 ]
  %5675 = phi float [ %5784, %5779 ], [ %5642, %5668 ]
  %5676 = phi float [ %5785, %5779 ], [ %5643, %5668 ]
  %5677 = phi float [ %5786, %5779 ], [ %5644, %5668 ]
  %5678 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5674)  ; FirstbitLo(value)
  %5679 = add i32 %5678, %5651
  %5680 = and i32 %5678, 31
  %5681 = shl i32 1, %5680
  %5682 = xor i32 %5681, %5674
  %5683 = mul i32 %5679, 72
  %5684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5683, i32 undef)  ; BufferLoad(srv,index,wot)
  %5685 = extractvalue %dx.types.ResRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.ResRet.f32 %5684, 1
  %5687 = extractvalue %dx.types.ResRet.f32 %5684, 2
  %5688 = add i32 %5683, 12
  %5689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5688, i32 undef)  ; BufferLoad(srv,index,wot)
  %5690 = extractvalue %dx.types.ResRet.i32 %5689, 0
  %5691 = add i32 %5683, 16
  %5692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = add i32 %5683, 28
  %5697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5696, i32 undef)  ; BufferLoad(srv,index,wot)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = add i32 %5683, 32
  %5700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5699, i32 undef)  ; BufferLoad(srv,index,wot)
  %5701 = extractvalue %dx.types.ResRet.f32 %5700, 0
  %5702 = extractvalue %dx.types.ResRet.f32 %5700, 1
  %5703 = extractvalue %dx.types.ResRet.f32 %5700, 2
  %5704 = extractvalue %dx.types.ResRet.f32 %5700, 3
  %5705 = add i32 %5683, 48
  %5706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5705, i32 undef)  ; BufferLoad(srv,index,wot)
  %5707 = extractvalue %dx.types.ResRet.f32 %5706, 0
  %5708 = extractvalue %dx.types.ResRet.f32 %5706, 1
  %5709 = add i32 %5683, 56
  %5710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5709, i32 undef)  ; BufferLoad(srv,index,wot)
  %5711 = extractvalue %dx.types.ResRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.ResRet.f32 %5710, 1
  %5713 = add i32 %5683, 64
  %5714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5713, i32 undef)  ; BufferLoad(srv,index,wot)
  %5715 = extractvalue %dx.types.ResRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.ResRet.f32 %5714, 1
  %5717 = mul i32 %5679, 60
  %5718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5717, i32 undef)  ; BufferLoad(srv,index,wot)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5722 = add i32 %5717, 12
  %5723 = add i32 %5717, 48
  %5724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.ResRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.ResRet.f32 %5724, 2
  %5728 = and i32 %5690, 32767
  %5729 = bitcast float %5685 to i32
  %5730 = icmp eq i32 %5729, -1
  %5731 = bitcast float %5686 to i32
  %5732 = and i32 %5690, 32768
  %5733 = icmp ne i32 %5732, 0
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.CBufRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.CBufRet.f32 %5734, 2
  %5738 = fsub fast float %5719, %5735
  %5739 = fsub fast float %5720, %5736
  %5740 = fsub fast float %5721, %5737
  %5741 = fsub fast float %143, %5738
  %5742 = fsub fast float %144, %5739
  %5743 = fsub fast float %145, %5740
  %5744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5722, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.ResRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.ResRet.f32 %5744, 2
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5745, float %5746, float %5747)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = add i32 %5717, 24
  %5750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5749, i32 undef)  ; BufferLoad(srv,index,wot)
  %5751 = extractvalue %dx.types.ResRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.ResRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.ResRet.f32 %5750, 2
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = add i32 %5717, 36
  %5756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5755, i32 undef)  ; BufferLoad(srv,index,wot)
  %5757 = extractvalue %dx.types.ResRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.ResRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.ResRet.f32 %5756, 2
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5757, float %5758, float %5759)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = call float @dx.op.unary.f32(i32 6, float %5748)  ; FAbs(value)
  %5762 = call float @dx.op.unary.f32(i32 6, float %5754)  ; FAbs(value)
  %5763 = call float @dx.op.unary.f32(i32 6, float %5760)  ; FAbs(value)
  %5764 = fsub fast float %5725, %5761
  %5765 = fsub fast float %5726, %5762
  %5766 = fsub fast float %5727, %5763
  %5767 = fmul fast float %5764, %5693
  %5768 = fmul fast float %5765, %5694
  %5769 = fmul fast float %5766, %5695
  %5770 = call float @dx.op.binary.f32(i32 36, float %5768, float %5769)  ; FMin(a,b)
  %5771 = call float @dx.op.binary.f32(i32 36, float %5767, float %5770)  ; FMin(a,b)
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = call float @dx.op.binary.f32(i32 36, float %5673, float %5772)  ; FMin(a,b)
  %5774 = uitofp i1 %5733 to float
  %5775 = fadd fast float %4745, 1.000000e+00
  %5776 = fsub fast float %5775, %5774
  %5777 = fmul fast float %5773, %5776
  %5778 = fcmp fast ogt float %5777, 0.000000e+00
  br i1 %5778, label %5788, label %5779

; <label>:5779                                    ; preds = %5930, %5669
  %5780 = phi float [ %5994, %5930 ], [ %5670, %5669 ]
  %5781 = phi float [ %5995, %5930 ], [ %5671, %5669 ]
  %5782 = phi float [ %5996, %5930 ], [ %5672, %5669 ]
  %5783 = phi float [ %6003, %5930 ], [ %5673, %5669 ]
  %5784 = phi float [ %6000, %5930 ], [ %5675, %5669 ]
  %5785 = phi float [ %6001, %5930 ], [ %5676, %5669 ]
  %5786 = phi float [ %6002, %5930 ], [ %5677, %5669 ]
  %5787 = icmp eq i32 %5674, %5681
  br i1 %5787, label %6004, label %5669

; <label>:5788                                    ; preds = %5669
  br i1 %5730, label %5846, label %5789

; <label>:5789                                    ; preds = %5788
  %5790 = fsub fast float -0.000000e+00, %5745
  %5791 = fsub fast float -0.000000e+00, %5746
  %5792 = fsub fast float -0.000000e+00, %5747
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = fsub fast float -0.000000e+00, %5793
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = fadd fast float %5795, %5708
  %5797 = fadd fast float %5707, %5795
  %5798 = fsub fast float -0.000000e+00, %5797
  %5799 = fcmp ogt float %5793, -0.000000e+00
  %5800 = select i1 %5799, float %5798, float %5796
  %5801 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5802 = fdiv fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5800, %5802
  %5804 = call float @dx.op.binary.f32(i32 35, float %5803, float 0.000000e+00)  ; FMax(a,b)
  %5805 = fsub fast float -0.000000e+00, %5751
  %5806 = fsub fast float -0.000000e+00, %5752
  %5807 = fsub fast float -0.000000e+00, %5753
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float %5805, float %5806, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = fsub fast float -0.000000e+00, %5808
  %5810 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5805, float %5806, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fadd fast float %5810, %5712
  %5812 = fadd fast float %5711, %5810
  %5813 = fsub fast float -0.000000e+00, %5812
  %5814 = fcmp ogt float %5808, -0.000000e+00
  %5815 = select i1 %5814, float %5813, float %5811
  %5816 = call float @dx.op.unary.f32(i32 6, float %5809)  ; FAbs(value)
  %5817 = fdiv fast float 1.000000e+00, %5816
  %5818 = fmul fast float %5815, %5817
  %5819 = call float @dx.op.binary.f32(i32 35, float %5818, float 0.000000e+00)  ; FMax(a,b)
  %5820 = fsub fast float -0.000000e+00, %5757
  %5821 = fsub fast float -0.000000e+00, %5758
  %5822 = fsub fast float -0.000000e+00, %5759
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float %5820, float %5821, float %5822)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = fsub fast float -0.000000e+00, %5823
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5820, float %5821, float %5822)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fadd fast float %5825, %5716
  %5827 = fadd fast float %5715, %5825
  %5828 = fsub fast float -0.000000e+00, %5827
  %5829 = fcmp ogt float %5823, -0.000000e+00
  %5830 = select i1 %5829, float %5828, float %5826
  %5831 = call float @dx.op.unary.f32(i32 6, float %5824)  ; FAbs(value)
  %5832 = fdiv fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5830, %5832
  %5834 = call float @dx.op.binary.f32(i32 35, float %5833, float 0.000000e+00)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 36, float %5819, float %5834)  ; FMin(a,b)
  %5836 = call float @dx.op.binary.f32(i32 36, float %5804, float %5835)  ; FMin(a,b)
  %5837 = fmul fast float %5836, %5619
  %5838 = fmul fast float %5836, %5620
  %5839 = fmul fast float %5836, %5621
  %5840 = fadd fast float %5837, %143
  %5841 = fadd fast float %5838, %144
  %5842 = fadd fast float %5839, %145
  %5843 = fsub fast float %5840, %5685
  %5844 = fsub fast float %5841, %5686
  %5845 = fsub fast float %5842, %5687
  br label %5853

; <label>:5846                                    ; preds = %5788
  %5847 = fmul fast float %5619, 8.096000e+03
  %5848 = fmul fast float %5620, 8.096000e+03
  %5849 = fmul fast float %5621, 8.096000e+03
  %5850 = fadd fast float %5847, %143
  %5851 = fadd fast float %5848, %144
  %5852 = fadd fast float %5849, %145
  br label %5853

; <label>:5853                                    ; preds = %5846, %5789
  %5854 = phi float [ %5619, %5846 ], [ %5843, %5789 ]
  %5855 = phi float [ %5620, %5846 ], [ %5844, %5789 ]
  %5856 = phi float [ %5621, %5846 ], [ %5845, %5789 ]
  %5857 = phi float [ %5850, %5846 ], [ %5840, %5789 ]
  %5858 = phi float [ %5851, %5846 ], [ %5841, %5789 ]
  %5859 = phi float [ %5852, %5846 ], [ %5842, %5789 ]
  %5860 = fcmp fast olt float %5704, 1.000000e+00
  br i1 %5860, label %5861, label %5892, !dx.controlflow.hints !87

; <label>:5861                                    ; preds = %5853
  %5862 = fmul fast float %5856, %5702
  %5863 = fmul fast float %5855, %5703
  %5864 = fsub fast float %5862, %5863
  %5865 = fmul fast float %5854, %5703
  %5866 = fmul fast float %5856, %5701
  %5867 = fsub fast float %5865, %5866
  %5868 = fmul fast float %5855, %5701
  %5869 = fmul fast float %5854, %5702
  %5870 = fsub fast float %5868, %5869
  %5871 = fmul fast float %5864, 2.000000e+00
  %5872 = fmul fast float %5867, 2.000000e+00
  %5873 = fmul fast float %5870, 2.000000e+00
  %5874 = fmul fast float %5871, %5704
  %5875 = fmul fast float %5872, %5704
  %5876 = fmul fast float %5873, %5704
  %5877 = fmul fast float %5873, %5702
  %5878 = fmul fast float %5872, %5703
  %5879 = fmul fast float %5871, %5703
  %5880 = fmul fast float %5873, %5701
  %5881 = fmul fast float %5872, %5701
  %5882 = fmul fast float %5871, %5702
  %5883 = fadd fast float %5877, %5854
  %5884 = fadd fast float %5883, %5874
  %5885 = fsub fast float %5884, %5878
  %5886 = fsub fast float %5855, %5880
  %5887 = fadd fast float %5886, %5875
  %5888 = fadd fast float %5887, %5879
  %5889 = fadd fast float %5876, %5856
  %5890 = fsub fast float %5889, %5882
  %5891 = fadd fast float %5890, %5881
  br label %5892

; <label>:5892                                    ; preds = %5861, %5853
  %5893 = phi float [ %5885, %5861 ], [ %5854, %5853 ]
  %5894 = phi float [ %5888, %5861 ], [ %5855, %5853 ]
  %5895 = phi float [ %5891, %5861 ], [ %5856, %5853 ]
  br i1 %5730, label %5927, label %5896

; <label>:5896                                    ; preds = %5892
  %5897 = fmul fast float %4946, 0x400187C840000000
  %5898 = fadd fast float %5897, 0xC00EFC2120000000
  %5899 = fmul fast float %5898, %4946
  %5900 = fadd fast float %5899, 0x3FE5D16340000000
  %5901 = fmul fast float %5900, %4946
  %5902 = fadd fast float %5901, 1.000000e+00
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fsub fast float %5857, %143
  %5905 = fsub fast float %5858, %144
  %5906 = fsub fast float %5859, %145
  %5907 = fsub fast float %5857, %5685
  %5908 = fsub fast float %5858, %5686
  %5909 = fsub fast float %5859, %5687
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5904, float %5905, float %5906, float %5904, float %5905, float %5906)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5907, float %5908, float %5909, float %5907, float %5908, float %5909)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = fadd fast float %5911, 0x3EE4F8B580000000
  %5913 = fdiv fast float %5910, %5912
  %5914 = bitcast float %5913 to i32
  %5915 = ashr i32 %5914, 1
  %5916 = add nsw i32 %5915, 532487669
  %5917 = bitcast i32 %5916 to float
  %5918 = fmul fast float %5917, %5903
  %5919 = call float @dx.op.unary.f32(i32 7, float %5918)  ; Saturate(value)
  %5920 = fmul fast float %5919, 0x4009981AE0000000
  %5921 = fsub fast float 0x40111BBD80000000, %5920
  %5922 = fmul fast float %5921, %5919
  %5923 = fadd fast float %5922, 0xC0009F6020000000
  %5924 = fmul fast float %5923, %5919
  %5925 = fadd fast float %5924, 1.000000e+00
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  br label %5930

; <label>:5927                                    ; preds = %5892
  %5928 = icmp ne i32 %5731, -1
  %5929 = zext i1 %5928 to i32
  br label %5930

; <label>:5930                                    ; preds = %5927, %5896
  %5931 = phi float [ %4946, %5927 ], [ %5926, %5896 ]
  %5932 = phi i32 [ %5929, %5927 ], [ 0, %5896 ]
  %5933 = fmul float %5931, 5.000000e+00
  %5934 = fsub float 5.000000e+00, %5933
  %5935 = icmp ne i32 %5932, 0
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 3
  %5938 = fadd fast float %5937, %5934
  %5939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5938)  ; FMax(a,b)
  %5940 = call float @dx.op.unary.f32(i32 6, float %5893)  ; FAbs(value)
  %5941 = call float @dx.op.unary.f32(i32 6, float %5894)  ; FAbs(value)
  %5942 = fadd fast float %5941, %5940
  %5943 = call float @dx.op.unary.f32(i32 6, float %5895)  ; FAbs(value)
  %5944 = fadd fast float %5942, %5943
  %5945 = fcmp fast oeq float %5944, 0.000000e+00
  %5946 = fdiv fast float 1.000000e+00, %5944
  %5947 = select i1 %5945, float 1.000000e+00, float %5946
  %5948 = fmul fast float %5947, %5893
  %5949 = fmul fast float %5947, %5894
  %5950 = call float @dx.op.unary.f32(i32 6, float %5949)  ; FAbs(value)
  %5951 = call float @dx.op.unary.f32(i32 6, float %5948)  ; FAbs(value)
  %5952 = fsub fast float 1.000000e+00, %5950
  %5953 = fsub fast float 1.000000e+00, %5951
  %5954 = fcmp fast oge float %5948, 0.000000e+00
  %5955 = fcmp fast oge float %5949, 0.000000e+00
  %5956 = select i1 %5954, float 1.000000e+00, float -1.000000e+00
  %5957 = select i1 %5955, float 1.000000e+00, float -1.000000e+00
  %5958 = fcmp fast ole float %5895, 0.000000e+00
  %5959 = fmul fast float %5956, %5952
  %5960 = fmul fast float %5957, %5953
  %5961 = select i1 %5958, float %5959, float %5948
  %5962 = select i1 %5958, float %5960, float %5949
  %5963 = fmul fast float %5961, 5.000000e-01
  %5964 = fmul fast float %5962, 5.000000e-01
  %5965 = fadd fast float %5963, 5.000000e-01
  %5966 = fadd fast float %5964, 5.000000e-01
  %5967 = uitofp i32 %5728 to float
  %5968 = call float @dx.op.binary.f32(i32 36, float %5939, float 3.000000e+00)  ; FMin(a,b)
  %5969 = fadd fast float %5968, 2.000000e+00
  %5970 = call float @dx.op.unary.f32(i32 21, float %5969)  ; Exp(value)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5972 = fmul fast float %5971, %5970
  %5973 = fmul fast float %5972, 2.000000e+00
  %5974 = fsub fast float 1.000000e+00, %5973
  %5975 = fmul fast float %5965, %5974
  %5976 = fmul fast float %5966, %5974
  %5977 = fadd fast float %5975, %5972
  %5978 = fadd fast float %5976, %5972
  %5979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5977, float %5978, float %5967, float undef, i32 0, i32 0, i32 undef, float %5939)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.ResRet.f32 %5979, 2
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5985 = fmul fast float %5984, %5698
  %5986 = call float @dx.op.binary.f32(i32 36, float %4992, float %5985)  ; FMin(a,b)
  %5987 = select i1 %5935, float %5986, float %5985
  %5988 = fmul fast float %5980, %5777
  %5989 = fmul fast float %5988, %5987
  %5990 = fmul fast float %5981, %5777
  %5991 = fmul fast float %5990, %5987
  %5992 = fmul fast float %5982, %5777
  %5993 = fmul fast float %5992, %5987
  %5994 = fadd fast float %5989, %5670
  %5995 = fadd fast float %5991, %5671
  %5996 = fadd fast float %5993, %5672
  %5997 = fmul fast float %5857, %5777
  %5998 = fmul fast float %5858, %5777
  %5999 = fmul fast float %5859, %5777
  %6000 = fadd fast float %5997, %5675
  %6001 = fadd fast float %5998, %5676
  %6002 = fadd fast float %5999, %5677
  %6003 = fsub fast float %5673, %5777
  br label %5779

; <label>:6004                                    ; preds = %5779
  br label %6005

; <label>:6005                                    ; preds = %6004, %5636
  %6006 = phi float [ %5637, %5636 ], [ %5780, %6004 ]
  %6007 = phi float [ %5638, %5636 ], [ %5781, %6004 ]
  %6008 = phi float [ %5639, %5636 ], [ %5782, %6004 ]
  %6009 = phi float [ %5640, %5636 ], [ %5783, %6004 ]
  %6010 = phi float [ %5642, %5636 ], [ %5784, %6004 ]
  %6011 = phi float [ %5643, %5636 ], [ %5785, %6004 ]
  %6012 = phi float [ %5644, %5636 ], [ %5786, %6004 ]
  %6013 = add i32 %5641, 1
  %6014 = icmp ugt i32 %6013, %5633
  br i1 %6014, label %6015, label %5636, !llvm.loop !88

; <label>:6015                                    ; preds = %6005
  br label %6016

; <label>:6016                                    ; preds = %6015, %5618
  %6017 = phi float [ 0.000000e+00, %5618 ], [ %6006, %6015 ]
  %6018 = phi float [ 0.000000e+00, %5618 ], [ %6007, %6015 ]
  %6019 = phi float [ 0.000000e+00, %5618 ], [ %6008, %6015 ]
  %6020 = phi float [ 0.000000e+00, %5618 ], [ %6010, %6015 ]
  %6021 = phi float [ 0.000000e+00, %5618 ], [ %6011, %6015 ]
  %6022 = phi float [ 0.000000e+00, %5618 ], [ %6012, %6015 ]
  %6023 = call float @dx.op.dot3.f32(i32 55, float %6017, float %6018, float %6019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = select i1 %185, float 0.000000e+00, float %6017
  %6025 = select i1 %185, float %6023, float %6018
  %6026 = select i1 %185, float 0.000000e+00, float %6019
  %6027 = fcmp fast olt float %5542, 0.000000e+00
  %6028 = call float @dx.op.unary.f32(i32 6, float %5542)  ; FAbs(value)
  %6029 = fmul fast float %6028, %5543
  %6030 = fmul fast float %6028, %5544
  %6031 = fmul fast float %6028, %5545
  %6032 = select i1 %6027, float %5543, float %6029
  %6033 = select i1 %6027, float %5544, float %6030
  %6034 = select i1 %6027, float %5545, float %6031
  %6035 = fsub fast float 1.000000e+00, %6028
  %6036 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6037 = fmul fast float %6036, %6024
  %6038 = fmul fast float %6036, %6025
  %6039 = fmul fast float %6036, %6026
  %6040 = fadd fast float %6032, %6037
  %6041 = fadd fast float %6033, %6038
  %6042 = fadd fast float %6034, %6039
  %6043 = fcmp fast une float %5292, 0.000000e+00
  br i1 %6043, label %6144, label %6044

; <label>:6044                                    ; preds = %6016
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6050, 3
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6059 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6060 = call float @dx.op.dot3.f32(i32 55, float %6056, float %6057, float %6058, float %4971, float %4972, float %4973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = call float @dx.op.dot3.f32(i32 55, float %6020, float %6021, float %6022, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = fadd fast float %4946, -1.000000e+00
  %6064 = fsub fast float %6061, %6062
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = fmul fast float %6066, %6061
  %6068 = fdiv fast float 1.600000e+02, %6067
  %6069 = fmul fast float %6063, %6063
  %6070 = fmul fast float %6069, 0xBFB5B17960000000
  %6071 = fmul fast float %6070, %6064
  %6072 = fmul fast float %6071, %6068
  %6073 = call float @dx.op.unary.f32(i32 21, float %6072)  ; Exp(value)
  %6074 = fmul fast float %6073, 0x3FF04B2960000000
  %6075 = fsub fast float 0x3FF04B2960000000, %6074
  %6076 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6077 = fmul fast float %6076, 4.000000e+00
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.CBufRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.CBufRet.f32 %6078, 2
  %6082 = fadd fast float %6079, %6020
  %6083 = fadd fast float %6080, %6021
  %6084 = fadd fast float %6081, %6022
  %6085 = fmul fast float %6082, %6046
  %6086 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6047, float %6085)  ; FMad(a,b,c)
  %6087 = call float @dx.op.tertiary.f32(i32 46, float %6084, float %6048, float %6086)  ; FMad(a,b,c)
  %6088 = fadd fast float %6087, %6049
  %6089 = fmul fast float %6082, %6051
  %6090 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6052, float %6089)  ; FMad(a,b,c)
  %6091 = call float @dx.op.tertiary.f32(i32 46, float %6084, float %6053, float %6090)  ; FMad(a,b,c)
  %6092 = fadd fast float %6091, %6054
  %6093 = fmul fast float %6082, %6056
  %6094 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6057, float %6093)  ; FMad(a,b,c)
  %6095 = call float @dx.op.tertiary.f32(i32 46, float %6084, float %6058, float %6094)  ; FMad(a,b,c)
  %6096 = fadd fast float %6095, %6059
  %6097 = fdiv fast float %6088, %6096
  %6098 = fdiv fast float %6092, %6096
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = fmul fast float %6100, %6097
  %6103 = fmul fast float %6101, %6098
  %6104 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6105 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6106 = fadd fast float %6102, %6104
  %6107 = fadd fast float %6103, %6105
  %6108 = fmul fast float %6060, 8.000000e+00
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = fmul fast float %6106, 2.000000e+00
  %6111 = fmul fast float %6107, 2.000000e+00
  %6112 = fadd fast float %6110, -1.000000e+00
  %6113 = fadd fast float %6111, -1.000000e+00
  %6114 = fmul fast float %6112, %6112
  %6115 = fsub fast float 1.000000e+00, %6114
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6117 = fmul fast float %6113, %6113
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = call float @dx.op.unary.f32(i32 7, float %6118)  ; Saturate(value)
  %6120 = fmul fast float %5292, %6116
  %6121 = fmul fast float %6120, %6119
  %6122 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6123 = fmul fast float %6122, %6109
  %6124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %6106, float %6107, float undef, float undef, i32 0, i32 0, i32 undef, float %6077)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6125 = extractvalue %dx.types.ResRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.ResRet.f32 %6124, 1
  %6127 = extractvalue %dx.types.ResRet.f32 %6124, 2
  %6128 = select i1 %185, float 0.000000e+00, float %6126
  %6129 = select i1 %185, float 0.000000e+00, float %6127
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = fmul fast float %6131, %6125
  %6133 = fmul fast float %6128, %6131
  %6134 = fmul fast float %6129, %6131
  %6135 = fsub fast float %6132, %6024
  %6136 = fsub fast float %6133, %6025
  %6137 = fsub fast float %6134, %6026
  %6138 = fmul fast float %6135, %6123
  %6139 = fmul fast float %6136, %6123
  %6140 = fmul fast float %6137, %6123
  %6141 = fadd fast float %6138, %6024
  %6142 = fadd fast float %6139, %6025
  %6143 = fadd fast float %6140, %6026
  br label %6144

; <label>:6144                                    ; preds = %6044, %6016, %5541, %5265
  %6145 = phi float [ %5543, %5541 ], [ %6040, %6016 ], [ %5222, %5265 ], [ %6141, %6044 ]
  %6146 = phi float [ %5544, %5541 ], [ %6041, %6016 ], [ %5223, %5265 ], [ %6142, %6044 ]
  %6147 = phi float [ %5545, %5541 ], [ %6042, %6016 ], [ %5224, %5265 ], [ %6143, %6044 ]
  %6148 = fmul fast float %5271, %5218
  %6149 = fmul fast float %5271, %5219
  %6150 = fmul fast float %5271, %5220
  %6151 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6152 = fcmp fast ogt float %6151, 0x3E7FF19E20000000
  %6153 = fdiv fast float 1.000000e+00, %6151
  %6154 = select i1 %6152, float %6153, float 0.000000e+00
  %6155 = fmul fast float %6154, %4937
  %6156 = fmul fast float %6154, %4938
  %6157 = fmul fast float %6154, %4939
  %6158 = fadd fast float %6155, -1.000000e+00
  %6159 = fadd fast float %6156, -1.000000e+00
  %6160 = fadd fast float %6157, -1.000000e+00
  %6161 = fmul fast float %6158, 5.000000e-01
  %6162 = fmul fast float %6159, 5.000000e-01
  %6163 = fmul fast float %6160, 5.000000e-01
  %6164 = fadd fast float %6161, 1.000000e+00
  %6165 = fadd fast float %6162, 1.000000e+00
  %6166 = fadd fast float %6163, 1.000000e+00
  %6167 = fmul fast float %6145, %5266
  %6168 = fmul fast float %6146, %5267
  %6169 = fmul fast float %6147, %5268
  %6170 = fsub fast float 1.000000e+00, %4965
  %6171 = bitcast float %6170 to i32
  %6172 = sitofp i32 %6171 to float
  %6173 = fmul fast float %6172, 5.000000e+00
  %6174 = fadd fast float %6173, 0xC1EFBF8940000000
  %6175 = fptosi float %6174 to i32
  %6176 = bitcast i32 %6175 to float
  %6177 = fmul fast float %6176, %4313
  %6178 = fmul fast float %5218, %6177
  %6179 = fmul fast float %6178, %5271
  %6180 = fmul fast float %6179, %6164
  %6181 = fmul fast float %5219, %6177
  %6182 = fmul fast float %6181, %5271
  %6183 = fmul fast float %6182, %6165
  %6184 = fmul fast float %5220, %6177
  %6185 = fmul fast float %6184, %5271
  %6186 = fmul fast float %6185, %6166
  %6187 = fmul fast float %6148, %4334
  %6188 = fmul fast float %6149, %4334
  %6189 = fmul fast float %6150, %4334
  %6190 = fadd fast float %6167, %4315
  %6191 = fadd fast float %6190, %6180
  %6192 = fmul fast float %6191, %4334
  %6193 = fadd fast float %6168, %4316
  %6194 = fadd fast float %6193, %6183
  %6195 = fmul fast float %6194, %4334
  %6196 = fadd fast float %6169, %4317
  %6197 = fadd fast float %6196, %6186
  %6198 = fmul fast float %6197, %4334
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6201 = fcmp fast oeq float %6200, 0.000000e+00
  br i1 %6201, label %6420, label %6202

; <label>:6202                                    ; preds = %6144
  %6203 = extractvalue %dx.types.CBufRet.f32 %6199, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.CBufRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6208, float %6209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = select i1 %185, float %6211, float %6207
  %6215 = select i1 %185, float %6213, float %6208
  %6216 = select i1 %185, float %6212, float %6209
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6219 = fcmp fast une float %6218, 0.000000e+00
  br i1 %6219, label %6220, label %6237

; <label>:6220                                    ; preds = %6202
  %6221 = fptoui float %84 to i32
  %6222 = fptoui float %85 to i32
  %6223 = lshr i32 %6221, 4
  %6224 = lshr i32 %6222, 4
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = fptoui float %6226 to i32
  %6228 = add i32 %6227, 15
  %6229 = lshr i32 %6228, 4
  %6230 = mul i32 %6229, %6224
  %6231 = add i32 %6230, %6223
  %6232 = shl i32 %6231, 3
  %6233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.i32 %6233, 0
  %6235 = and i32 %6234, -268435456
  %6236 = icmp eq i32 %6235, -1342177280
  br i1 %6236, label %6242, label %6237

; <label>:6237                                    ; preds = %6220, %6202
  %6238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4951, float %4952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.ResRet.f32 %6238, 2
  br label %6242

; <label>:6242                                    ; preds = %6237, %6220
  %6243 = phi float [ %6239, %6237 ], [ 0.000000e+00, %6220 ]
  %6244 = phi float [ %6240, %6237 ], [ 0.000000e+00, %6220 ]
  %6245 = phi float [ %6241, %6237 ], [ 0.000000e+00, %6220 ]
  %6246 = call float @dx.op.binary.f32(i32 36, float %6244, float %6245)  ; FMin(a,b)
  %6247 = call float @dx.op.binary.f32(i32 36, float %6243, float %6246)  ; FMin(a,b)
  %6248 = fcmp fast ogt float %6247, 0.000000e+00
  br i1 %6248, label %6249, label %6420, !dx.controlflow.hints !90

; <label>:6249                                    ; preds = %6242
  %6250 = fmul fast float %6243, %6214
  %6251 = fmul fast float %6244, %6215
  %6252 = fmul fast float %6245, %6216
  %6253 = fsub fast float %6203, %4936
  %6254 = fsub fast float %6204, %4935
  %6255 = fsub fast float %6205, %4934
  %6256 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6253, float %6254, float %6255)  ; Dot3(ax,ay,az,bx,by,bz)
  %6257 = call float @dx.op.unary.f32(i32 25, float %6256)  ; Rsqrt(value)
  %6258 = fmul fast float %6257, %6253
  %6259 = fmul fast float %6257, %6254
  %6260 = fmul fast float %6257, %6255
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6203, float %6204, float %6205, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4932, float %4931, float %6258, float %6259, float %6260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6264 = fmul fast float %6263, %6263
  %6265 = fmul fast float %6264, %4990
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = fmul fast float %6266, %6263
  %6268 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4941, float %4942, float %6258, float %6259, float %6260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6269 = fmul fast float %6268, %6268
  %6270 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6271 = fsub fast float 1.000000e+00, %4983
  %6272 = fmul fast float %4965, %4965
  %6273 = fmul fast float %6272, %6271
  %6274 = fadd fast float %6273, %4983
  %6275 = bitcast float %6274 to i32
  %6276 = ashr i32 %6275, 1
  %6277 = add nsw i32 %6276, 532487669
  %6278 = bitcast i32 %6277 to float
  %6279 = fadd fast float %6278, %4965
  %6280 = fmul fast float %4983, %6269
  %6281 = fsub fast float 1.000000e+00, %6269
  %6282 = fadd fast float %6281, %6280
  %6283 = fmul fast float %6270, %6270
  %6284 = fmul fast float %6283, %6271
  %6285 = fadd fast float %6284, %4983
  %6286 = bitcast float %6285 to i32
  %6287 = ashr i32 %6286, 1
  %6288 = add nsw i32 %6287, 532487669
  %6289 = bitcast i32 %6288 to float
  %6290 = fadd fast float %6289, %6270
  %6291 = fmul fast float %6282, %6282
  %6292 = fmul fast float %6291, %6279
  %6293 = fmul fast float %6292, %6290
  %6294 = fdiv fast float 0x3FF0A00000000000, %6293
  %6295 = fmul fast float %6294, %4983
  %6296 = call float @dx.op.unary.f32(i32 6, float %6262)  ; FAbs(value)
  %6297 = fsub fast float 1.000000e+00, %6296
  %6298 = bitcast float %6297 to i32
  %6299 = sitofp i32 %6298 to float
  %6300 = fmul fast float %6299, 5.000000e+00
  %6301 = fadd fast float %6300, 0xC1EFBF8940000000
  %6302 = fptosi float %6301 to i32
  %6303 = bitcast i32 %6302 to float
  %6304 = fsub fast float 1.000000e+00, %4943
  %6305 = fsub fast float 1.000000e+00, %4944
  %6306 = fsub fast float 1.000000e+00, %4963
  %6307 = fmul fast float %6303, %6304
  %6308 = fmul fast float %6303, %6305
  %6309 = fmul fast float %6303, %6306
  %6310 = fadd fast float %6307, %4943
  %6311 = fadd fast float %6308, %4944
  %6312 = fadd fast float %6309, %4963
  br i1 %5238, label %6313, label %6336

; <label>:6313                                    ; preds = %6249
  %6314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4314, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6315 = extractvalue %dx.types.ResRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.ResRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.ResRet.f32 %6314, 2
  %6318 = fadd fast float %6315, -5.000000e-01
  %6319 = fadd fast float %6316, -5.000000e-01
  %6320 = fadd fast float %6317, -5.000000e-01
  %6321 = fmul fast float %4943, 4.000000e+00
  %6322 = fmul fast float %6321, %6304
  %6323 = fmul fast float %6322, %6318
  %6324 = fmul fast float %4944, 4.000000e+00
  %6325 = fmul fast float %6324, %6305
  %6326 = fmul fast float %6325, %6319
  %6327 = fmul fast float %4963, 4.000000e+00
  %6328 = fmul fast float %6327, %6306
  %6329 = fmul fast float %6328, %6320
  %6330 = fadd fast float %6323, %6310
  %6331 = fadd fast float %6326, %6311
  %6332 = fadd fast float %6329, %6312
  %6333 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6334 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6335 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  br label %6336

; <label>:6336                                    ; preds = %6313, %6249
  %6337 = phi float [ %6333, %6313 ], [ %6310, %6249 ]
  %6338 = phi float [ %6334, %6313 ], [ %6311, %6249 ]
  %6339 = phi float [ %6335, %6313 ], [ %6312, %6249 ]
  %6340 = fmul fast float %6261, 9.843750e-01
  %6341 = fadd fast float %6340, 7.812500e-03
  %6342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6341, float %5228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6343 = extractvalue %dx.types.ResRet.f32 %6342, 2
  %6344 = extractvalue %dx.types.ResRet.f32 %6342, 3
  %6345 = fmul fast float %6343, %4943
  %6346 = fmul fast float %6343, %4944
  %6347 = fmul fast float %6343, %4963
  %6348 = fadd fast float %6345, %6344
  %6349 = fadd fast float %6346, %6344
  %6350 = fadd fast float %6347, %6344
  br i1 %5238, label %6351, label %6374

; <label>:6351                                    ; preds = %6336
  %6352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4314, float %6261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6353 = extractvalue %dx.types.ResRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.ResRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.ResRet.f32 %6352, 2
  %6356 = fadd fast float %6353, -5.000000e-01
  %6357 = fadd fast float %6354, -5.000000e-01
  %6358 = fadd fast float %6355, -5.000000e-01
  %6359 = fmul fast float %4943, 4.000000e+00
  %6360 = fmul fast float %6359, %6304
  %6361 = fmul fast float %6360, %6356
  %6362 = fmul fast float %4944, 4.000000e+00
  %6363 = fmul fast float %6362, %6305
  %6364 = fmul fast float %6363, %6357
  %6365 = fmul fast float %4963, 4.000000e+00
  %6366 = fmul fast float %6365, %6306
  %6367 = fmul fast float %6366, %6358
  %6368 = fadd fast float %6361, %6348
  %6369 = fadd fast float %6364, %6349
  %6370 = fadd fast float %6367, %6350
  %6371 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6372 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6373 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  br label %6374

; <label>:6374                                    ; preds = %6351, %6336
  %6375 = phi float [ %6371, %6351 ], [ %6348, %6336 ]
  %6376 = phi float [ %6372, %6351 ], [ %6349, %6336 ]
  %6377 = phi float [ %6373, %6351 ], [ %6350, %6336 ]
  %6378 = call float @dx.op.binary.f32(i32 35, float %6376, float %6377)  ; FMax(a,b)
  %6379 = call float @dx.op.binary.f32(i32 35, float %6375, float %6378)  ; FMax(a,b)
  %6380 = fsub fast float 1.000000e+00, %6379
  %6381 = fmul fast float %6337, %6295
  %6382 = fmul fast float %6338, %6295
  %6383 = fmul fast float %6339, %6295
  %6384 = fsub fast float 1.000000e+00, %6262
  %6385 = bitcast float %6384 to i32
  %6386 = sitofp i32 %6385 to float
  %6387 = fmul fast float %6386, 5.000000e+00
  %6388 = fadd fast float %6387, 0xC1EFBF8940000000
  %6389 = fptosi float %6388 to i32
  %6390 = bitcast i32 %6389 to float
  %6391 = fmul fast float %6390, %4313
  %6392 = fmul fast float %6380, %6391
  %6393 = fmul fast float %6392, %6164
  %6394 = fmul fast float %6392, %6165
  %6395 = fmul fast float %6392, %6166
  %6396 = fadd fast float %6393, %6381
  %6397 = fadd fast float %6394, %6382
  %6398 = fadd fast float %6395, %6383
  %6399 = fmul fast float %6267, %6250
  %6400 = fmul fast float %6399, %6380
  %6401 = fmul fast float %6267, %6251
  %6402 = fmul fast float %6401, %6380
  %6403 = fmul fast float %6267, %6252
  %6404 = fmul fast float %6403, %6380
  %6405 = fmul fast float %6399, %6396
  %6406 = fmul fast float %6401, %6397
  %6407 = fmul fast float %6403, %6398
  %6408 = fadd fast float %6400, %6148
  %6409 = fmul fast float %6408, %4334
  %6410 = fadd fast float %6402, %6149
  %6411 = fmul fast float %6410, %4334
  %6412 = fadd fast float %6404, %6150
  %6413 = fmul fast float %6412, %4334
  %6414 = fadd fast float %6405, %6191
  %6415 = fmul fast float %6414, %4334
  %6416 = fadd fast float %6406, %6194
  %6417 = fmul fast float %6416, %4334
  %6418 = fadd fast float %6407, %6197
  %6419 = fmul fast float %6418, %4334
  br label %6420

; <label>:6420                                    ; preds = %6374, %6242, %6144
  %6421 = phi float [ %6192, %6144 ], [ %6192, %6242 ], [ %6415, %6374 ]
  %6422 = phi float [ %6195, %6144 ], [ %6195, %6242 ], [ %6417, %6374 ]
  %6423 = phi float [ %6198, %6144 ], [ %6198, %6242 ], [ %6419, %6374 ]
  %6424 = phi float [ %6187, %6144 ], [ %6187, %6242 ], [ %6409, %6374 ]
  %6425 = phi float [ %6188, %6144 ], [ %6188, %6242 ], [ %6411, %6374 ]
  %6426 = phi float [ %6189, %6144 ], [ %6189, %6242 ], [ %6413, %6374 ]
  %6427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.i32 %6427, 0
  %6429 = icmp eq i32 %6428, 0
  br i1 %6429, label %6860, label %6430

; <label>:6430                                    ; preds = %6420
  %6431 = fptoui float %84 to i32
  %6432 = fptoui float %85 to i32
  %6433 = lshr i32 %6431, 4
  %6434 = lshr i32 %6432, 4
  %6435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.i32 %6435, 0
  %6437 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6434, i32 %6436, i32 %6433)  ; UMad(a,b,c)
  %6438 = add nsw i32 %6428, -1
  %6439 = call i32 @dx.op.binary.i32(i32 37, i32 %6438, i32 0)  ; IMax(a,b)
  %6440 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %6441 = fptoui float %6440 to i32
  %6442 = lshr i32 %6441, 5
  %6443 = call i32 @dx.op.binary.i32(i32 40, i32 %6442, i32 8191)  ; UMin(a,b)
  %6444 = shl i32 %6443, 2
  %6445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6444, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.i32 %6445, 0
  %6447 = lshr i32 %6446, 16
  %6448 = and i32 %6446, 65535
  %6449 = lshr i32 %6446, 21
  %6450 = lshr i32 %6448, 5
  %6451 = call i32 @dx.op.binary.i32(i32 40, i32 %6450, i32 %6439)  ; UMin(a,b)
  %6452 = icmp ugt i32 %6449, %6451
  br i1 %6452, label %6860, label %6453

; <label>:6453                                    ; preds = %6430
  br label %6454

; <label>:6454                                    ; preds = %6850, %6453
  %6455 = phi i32 [ %6857, %6850 ], [ %6449, %6453 ]
  %6456 = phi float [ %6851, %6850 ], [ %6421, %6453 ]
  %6457 = phi float [ %6852, %6850 ], [ %6422, %6453 ]
  %6458 = phi float [ %6853, %6850 ], [ %6423, %6453 ]
  %6459 = phi float [ %6854, %6850 ], [ %6424, %6453 ]
  %6460 = phi float [ %6855, %6850 ], [ %6425, %6453 ]
  %6461 = phi float [ %6856, %6850 ], [ %6426, %6453 ]
  %6462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.i32 %6462, 0
  %6464 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6437, i32 %6463, i32 %6455)  ; UMad(a,b,c)
  %6465 = shl i32 %6464, 2
  %6466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6465, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.i32 %6466, 0
  %6468 = shl i32 %6455, 5
  %6469 = sub nsw i32 %6447, %6468
  %6470 = call i32 @dx.op.binary.i32(i32 37, i32 %6469, i32 0)  ; IMax(a,b)
  %6471 = call i32 @dx.op.binary.i32(i32 38, i32 %6470, i32 31)  ; IMin(a,b)
  %6472 = sub nsw i32 1, %6447
  %6473 = add nsw i32 %6472, %6448
  %6474 = call i32 @dx.op.binary.i32(i32 37, i32 %6473, i32 0)  ; IMax(a,b)
  %6475 = call i32 @dx.op.binary.i32(i32 38, i32 %6474, i32 32)  ; IMin(a,b)
  %6476 = and i32 %6475, 31
  %6477 = shl i32 -1, %6476
  %6478 = xor i32 %6477, -1
  %6479 = and i32 %6471, 31
  %6480 = shl i32 %6478, %6479
  %6481 = icmp eq i32 %6475, 32
  %6482 = select i1 %6481, i32 -1, i32 %6480
  %6483 = and i32 %6482, %6467
  %6484 = icmp eq i32 %6483, 0
  br i1 %6484, label %6850, label %6485

; <label>:6485                                    ; preds = %6454
  br label %6486

; <label>:6486                                    ; preds = %6566, %6485
  %6487 = phi i32 [ %6498, %6566 ], [ %6483, %6485 ]
  %6488 = phi float [ %6567, %6566 ], [ %6456, %6485 ]
  %6489 = phi float [ %6568, %6566 ], [ %6457, %6485 ]
  %6490 = phi float [ %6569, %6566 ], [ %6458, %6485 ]
  %6491 = phi float [ %6570, %6566 ], [ %6459, %6485 ]
  %6492 = phi float [ %6571, %6566 ], [ %6460, %6485 ]
  %6493 = phi float [ %6572, %6566 ], [ %6461, %6485 ]
  %6494 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6487)  ; FirstbitLo(value)
  %6495 = add i32 %6494, %6468
  %6496 = and i32 %6494, 31
  %6497 = shl i32 1, %6496
  %6498 = xor i32 %6497, %6487
  %6499 = mul i32 %6495, 112
  %6500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6499, i32 undef)  ; BufferLoad(srv,index,wot)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.ResRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.ResRet.f32 %6500, 2
  %6504 = or i32 %6499, 12
  %6505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6504, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = add i32 %6499, 44
  %6508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6507, i32 undef)  ; BufferLoad(srv,index,wot)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = add i32 %6499, 48
  %6511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.ResRet.f32 %6511, 1
  %6514 = extractvalue %dx.types.ResRet.f32 %6511, 2
  %6515 = add i32 %6499, 80
  %6516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6515, i32 undef)  ; BufferLoad(srv,index,wot)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 1
  %6518 = extractvalue %dx.types.ResRet.f32 %6516, 2
  %6519 = call float @dx.op.dot3.f32(i32 55, float %6501, float %6502, float %6503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = select i1 %185, float %6517, float %6501
  %6521 = select i1 %185, float %6519, float %6502
  %6522 = select i1 %185, float %6518, float %6503
  %6523 = fsub fast float %6512, %143
  %6524 = fsub fast float %6513, %144
  %6525 = fsub fast float %6514, %145
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6523, float %6524, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = call float @dx.op.unary.f32(i32 24, float %6526)  ; Sqrt(value)
  %6528 = fdiv fast float 1.000000e+00, %6527
  %6529 = fmul fast float %6528, %6523
  %6530 = fmul fast float %6528, %6524
  %6531 = fmul fast float %6528, %6525
  %6532 = fadd fast float %6527, %6506
  %6533 = fdiv fast float 1.000000e+00, %6532
  %6534 = fmul float %6509, %6533
  %6535 = fmul float %6534, %6534
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = and i32 %6497, %6483
  %6538 = icmp eq i32 %6537, 0
  br i1 %6538, label %6561, label %6539, !dx.controlflow.hints !91

; <label>:6539                                    ; preds = %6486
  %6540 = lshr i32 %6431, 5
  %6541 = lshr i32 %6432, 5
  %6542 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6540, i32 %6541, i32 %6495, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6543 = extractvalue %dx.types.ResRet.i32 %6542, 0
  %6544 = and i32 %6543, 3
  %6545 = icmp eq i32 %6544, 0
  %6546 = select i1 %6545, float 1.000000e+00, float 0.000000e+00
  %6547 = icmp eq i32 %6544, 3
  br i1 %6547, label %6548, label %6561

; <label>:6548                                    ; preds = %6539
  %6549 = lshr i32 %6543, 10
  %6550 = and i32 %6549, 8160
  %6551 = and i32 %6432, 31
  %6552 = or i32 %6550, %6551
  %6553 = lshr i32 %6543, 1
  %6554 = and i32 %6553, 16352
  %6555 = and i32 %6431, 31
  %6556 = or i32 %6554, %6555
  %6557 = lshr i32 %6543, 23
  %6558 = and i32 %6557, 255
  %6559 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6556, i32 %6552, i32 %6558, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6560 = extractvalue %dx.types.ResRet.f32 %6559, 0
  br label %6561

; <label>:6561                                    ; preds = %6548, %6539, %6486
  %6562 = phi float [ %6560, %6548 ], [ %6546, %6539 ], [ 0.000000e+00, %6486 ]
  %6563 = call float @dx.op.binary.f32(i32 36, float %6562, float %6562)  ; FMin(a,b)
  %6564 = call float @dx.op.binary.f32(i32 36, float %6562, float %6563)  ; FMin(a,b)
  %6565 = fcmp fast ogt float %6564, 0.000000e+00
  br i1 %6565, label %6574, label %6566, !dx.controlflow.hints !92

; <label>:6566                                    ; preds = %6806, %6561
  %6567 = phi float [ %6488, %6561 ], [ %6846, %6806 ]
  %6568 = phi float [ %6489, %6561 ], [ %6847, %6806 ]
  %6569 = phi float [ %6490, %6561 ], [ %6848, %6806 ]
  %6570 = phi float [ %6491, %6561 ], [ %6840, %6806 ]
  %6571 = phi float [ %6492, %6561 ], [ %6841, %6806 ]
  %6572 = phi float [ %6493, %6561 ], [ %6842, %6806 ]
  %6573 = icmp eq i32 %6487, %6497
  br i1 %6573, label %6849, label %6486

; <label>:6574                                    ; preds = %6561
  %6575 = fmul fast float %6562, %6520
  %6576 = fmul fast float %6562, %6521
  %6577 = fmul fast float %6562, %6522
  %6578 = fsub fast float %6514, %4736
  %6579 = fcmp fast ogt float %6578, 0.000000e+00
  %6580 = fsub fast float %145, %4736
  %6581 = fcmp fast ogt float %6580, 0.000000e+00
  %6582 = xor i1 %6581, %6579
  %6583 = fsub fast float %4736, %6514
  %6584 = fmul fast float %6583, 2.000000e+00
  %6585 = fadd fast float %6584, %6514
  %6586 = select i1 %6582, float %6514, float %6585
  %6587 = fsub fast float %6586, %145
  %6588 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6587, float %6523, float %6524, float %6587)  ; Dot3(ax,ay,az,bx,by,bz)
  %6589 = call float @dx.op.unary.f32(i32 25, float %6588)  ; Rsqrt(value)
  %6590 = fmul fast float %6589, %6523
  %6591 = fmul fast float %6589, %6524
  %6592 = fmul fast float %6589, %6587
  %6593 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %6594 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6590, float %6591, float %6592)  ; Dot3(ax,ay,az,bx,by,bz)
  %6595 = fdiv fast float 1.000000e+00, %6594
  %6596 = fmul fast float %6595, %6593
  %6597 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6580, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6598 = fcmp fast ogt float %6597, 0.000000e+00
  %6599 = fcmp fast olt float %6597, 0.000000e+00
  %6600 = zext i1 %6598 to i32
  %6601 = zext i1 %6599 to i32
  %6602 = sub nsw i32 %6600, %6601
  %6603 = sitofp i32 %6602 to float
  %6604 = fsub fast float %6586, %4736
  %6605 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6604, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6606 = fcmp fast ogt float %6605, 0.000000e+00
  %6607 = fcmp fast olt float %6605, 0.000000e+00
  %6608 = zext i1 %6606 to i32
  %6609 = zext i1 %6607 to i32
  %6610 = sub nsw i32 %6608, %6609
  %6611 = sitofp i32 %6610 to float
  %6612 = fcmp fast une float %6603, %6611
  br i1 %6612, label %6613, label %6623

; <label>:6613                                    ; preds = %6574
  %6614 = fmul fast float %6596, %6592
  %6615 = fmul fast float %6596, %6591
  %6616 = fmul fast float %6596, %6590
  %6617 = fmul fast float %6616, %6616
  %6618 = fmul fast float %6615, %6615
  %6619 = fadd fast float %6617, %6618
  %6620 = fmul fast float %6614, %6614
  %6621 = fadd fast float %6619, %6620
  %6622 = call float @dx.op.unary.f32(i32 24, float %6621)  ; Sqrt(value)
  br label %6635

; <label>:6623                                    ; preds = %6574
  %6624 = icmp slt i32 %6602, 0
  br i1 %6624, label %6625, label %6635

; <label>:6625                                    ; preds = %6623
  %6626 = fsub fast float %143, %6512
  %6627 = fsub fast float %144, %6513
  %6628 = fsub fast float %145, %6586
  %6629 = fmul fast float %6626, %6626
  %6630 = fmul fast float %6627, %6627
  %6631 = fadd fast float %6629, %6630
  %6632 = fmul fast float %6628, %6628
  %6633 = fadd fast float %6631, %6632
  %6634 = call float @dx.op.unary.f32(i32 24, float %6633)  ; Sqrt(value)
  br label %6635

; <label>:6635                                    ; preds = %6625, %6623, %6613
  %6636 = phi float [ %6622, %6613 ], [ %6634, %6625 ], [ 0.000000e+00, %6623 ]
  %6637 = and i1 %6581, %6579
  %6638 = fsub fast float -0.000000e+00, %6636
  %6639 = select i1 %6637, float -0.000000e+00, float %6638
  %6640 = fmul fast float %4737, 0x3FF7154760000000
  %6641 = fmul fast float %6640, %6639
  %6642 = fmul fast float %4738, 0x3FF7154760000000
  %6643 = fmul fast float %6642, %6639
  %6644 = fmul fast float %4739, 0x3FF7154760000000
  %6645 = fmul fast float %6644, %6639
  %6646 = call float @dx.op.unary.f32(i32 21, float %6641)  ; Exp(value)
  %6647 = call float @dx.op.unary.f32(i32 21, float %6643)  ; Exp(value)
  %6648 = call float @dx.op.unary.f32(i32 21, float %6645)  ; Exp(value)
  %6649 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  %6650 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6651 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  %6652 = fmul fast float %6575, %6649
  %6653 = fmul fast float %6576, %6650
  %6654 = fmul fast float %6577, %6651
  %6655 = fsub fast float %6529, %4936
  %6656 = fsub fast float %6530, %4935
  %6657 = fsub fast float %6531, %4934
  %6658 = call float @dx.op.dot3.f32(i32 55, float %6655, float %6656, float %6657, float %6655, float %6656, float %6657)  ; Dot3(ax,ay,az,bx,by,bz)
  %6659 = call float @dx.op.unary.f32(i32 25, float %6658)  ; Rsqrt(value)
  %6660 = fmul fast float %6659, %6655
  %6661 = fmul fast float %6659, %6656
  %6662 = fmul fast float %6659, %6657
  %6663 = call float @dx.op.dot3.f32(i32 55, float %6529, float %6530, float %6531, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %6664 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4932, float %4931, float %6660, float %6661, float %6662)  ; Dot3(ax,ay,az,bx,by,bz)
  %6665 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6666 = fmul fast float %6665, %6536
  %6667 = fmul fast float %6665, %6665
  %6668 = fmul fast float %6667, %4990
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = fmul fast float %6666, %6669
  %6671 = bitcast float %6526 to i32
  %6672 = ashr i32 %6671, 1
  %6673 = sub nsw i32 1597463007, %6672
  %6674 = bitcast i32 %6673 to float
  %6675 = fmul fast float %6674, %6523
  %6676 = fmul fast float %6674, %6524
  %6677 = fmul fast float %6674, %6525
  %6678 = fsub fast float %6675, %4936
  %6679 = fsub fast float %6676, %4935
  %6680 = fsub fast float %6677, %4934
  %6681 = call float @dx.op.dot3.f32(i32 55, float %6678, float %6679, float %6680, float %6678, float %6679, float %6680)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = call float @dx.op.unary.f32(i32 25, float %6681)  ; Rsqrt(value)
  %6683 = fmul fast float %6678, %6682
  %6684 = fmul fast float %6679, %6682
  %6685 = fmul fast float %6680, %6682
  %6686 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4941, float %4942, float %6683, float %6684, float %6685)  ; Dot3(ax,ay,az,bx,by,bz)
  %6687 = fmul fast float %6686, %6686
  %6688 = call float @dx.op.unary.f32(i32 6, float %6663)  ; FAbs(value)
  %6689 = fsub fast float 1.000000e+00, %4983
  %6690 = fmul fast float %4965, %4965
  %6691 = fmul fast float %6690, %6689
  %6692 = fadd fast float %6691, %4983
  %6693 = bitcast float %6692 to i32
  %6694 = ashr i32 %6693, 1
  %6695 = add nsw i32 %6694, 532487669
  %6696 = bitcast i32 %6695 to float
  %6697 = fadd fast float %6696, %4965
  %6698 = fmul fast float %4983, %6687
  %6699 = fsub fast float 1.000000e+00, %6687
  %6700 = fadd fast float %6699, %6698
  %6701 = fmul fast float %6688, %6688
  %6702 = fmul fast float %6701, %6689
  %6703 = fadd fast float %6702, %4983
  %6704 = bitcast float %6703 to i32
  %6705 = ashr i32 %6704, 1
  %6706 = add nsw i32 %6705, 532487669
  %6707 = bitcast i32 %6706 to float
  %6708 = fadd fast float %6707, %6688
  %6709 = fmul fast float %6700, %6700
  %6710 = fmul fast float %6709, %6697
  %6711 = fmul fast float %6710, %6708
  %6712 = fdiv fast float 1.000000e+00, %6711
  %6713 = bitcast float %4983 to i32
  %6714 = sitofp i32 %6713 to float
  %6715 = fmul fast float %6714, 0x3FE7F73180000000
  %6716 = fadd fast float %6715, 0x41AFE27C40000000
  %6717 = fptosi float %6716 to i32
  %6718 = bitcast i32 %6717 to float
  %6719 = fmul fast float %6509, 0x3FD80E9D60000000
  %6720 = fmul fast float %6719, %6674
  %6721 = fadd fast float %6718, %6720
  %6722 = bitcast float %6721 to i32
  %6723 = sub nsw i32 2129859010, %6722
  %6724 = bitcast i32 %6723 to float
  %6725 = fmul fast float %4983, %6712
  %6726 = fmul fast float %6725, %6718
  %6727 = fmul fast float %6726, %6724
  %6728 = call float @dx.op.unary.f32(i32 6, float %6664)  ; FAbs(value)
  %6729 = fsub fast float 1.000000e+00, %6728
  %6730 = bitcast float %6729 to i32
  %6731 = sitofp i32 %6730 to float
  %6732 = fmul fast float %6731, 5.000000e+00
  %6733 = fadd fast float %6732, 0xC1EFBF8940000000
  %6734 = fptosi float %6733 to i32
  %6735 = bitcast i32 %6734 to float
  %6736 = fsub fast float 1.000000e+00, %4943
  %6737 = fsub fast float 1.000000e+00, %4944
  %6738 = fsub fast float 1.000000e+00, %4963
  %6739 = fmul fast float %6735, %6736
  %6740 = fmul fast float %6735, %6737
  %6741 = fmul fast float %6735, %6738
  %6742 = fadd fast float %6739, %4943
  %6743 = fadd fast float %6740, %4944
  %6744 = fadd fast float %6741, %4963
  br i1 %5238, label %6745, label %6768

; <label>:6745                                    ; preds = %6635
  %6746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4314, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6747 = extractvalue %dx.types.ResRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.ResRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.ResRet.f32 %6746, 2
  %6750 = fadd fast float %6747, -5.000000e-01
  %6751 = fadd fast float %6748, -5.000000e-01
  %6752 = fadd fast float %6749, -5.000000e-01
  %6753 = fmul fast float %4943, 4.000000e+00
  %6754 = fmul fast float %6753, %6736
  %6755 = fmul fast float %6754, %6750
  %6756 = fmul fast float %4944, 4.000000e+00
  %6757 = fmul fast float %6756, %6737
  %6758 = fmul fast float %6757, %6751
  %6759 = fmul fast float %4963, 4.000000e+00
  %6760 = fmul fast float %6759, %6738
  %6761 = fmul fast float %6760, %6752
  %6762 = fadd fast float %6755, %6742
  %6763 = fadd fast float %6758, %6743
  %6764 = fadd fast float %6761, %6744
  %6765 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6766 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6767 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  br label %6768

; <label>:6768                                    ; preds = %6745, %6635
  %6769 = phi float [ %6765, %6745 ], [ %6742, %6635 ]
  %6770 = phi float [ %6766, %6745 ], [ %6743, %6635 ]
  %6771 = phi float [ %6767, %6745 ], [ %6744, %6635 ]
  %6772 = fmul fast float %6663, 9.843750e-01
  %6773 = fadd fast float %6772, 7.812500e-03
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6773, float %5228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 3
  %6777 = fmul fast float %6775, %4943
  %6778 = fmul fast float %6775, %4944
  %6779 = fmul fast float %6775, %4963
  %6780 = fadd fast float %6777, %6776
  %6781 = fadd fast float %6778, %6776
  %6782 = fadd fast float %6779, %6776
  br i1 %5238, label %6783, label %6806

; <label>:6783                                    ; preds = %6768
  %6784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4314, float %6663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6785 = extractvalue %dx.types.ResRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.ResRet.f32 %6784, 1
  %6787 = extractvalue %dx.types.ResRet.f32 %6784, 2
  %6788 = fadd fast float %6785, -5.000000e-01
  %6789 = fadd fast float %6786, -5.000000e-01
  %6790 = fadd fast float %6787, -5.000000e-01
  %6791 = fmul fast float %4943, 4.000000e+00
  %6792 = fmul fast float %6791, %6736
  %6793 = fmul fast float %6792, %6788
  %6794 = fmul fast float %4944, 4.000000e+00
  %6795 = fmul fast float %6794, %6737
  %6796 = fmul fast float %6795, %6789
  %6797 = fmul fast float %4963, 4.000000e+00
  %6798 = fmul fast float %6797, %6738
  %6799 = fmul fast float %6798, %6790
  %6800 = fadd fast float %6793, %6780
  %6801 = fadd fast float %6796, %6781
  %6802 = fadd fast float %6799, %6782
  %6803 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6804 = call float @dx.op.unary.f32(i32 7, float %6801)  ; Saturate(value)
  %6805 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  br label %6806

; <label>:6806                                    ; preds = %6783, %6768
  %6807 = phi float [ %6803, %6783 ], [ %6780, %6768 ]
  %6808 = phi float [ %6804, %6783 ], [ %6781, %6768 ]
  %6809 = phi float [ %6805, %6783 ], [ %6782, %6768 ]
  %6810 = call float @dx.op.binary.f32(i32 35, float %6808, float %6809)  ; FMax(a,b)
  %6811 = call float @dx.op.binary.f32(i32 35, float %6807, float %6810)  ; FMax(a,b)
  %6812 = fsub fast float 1.000000e+00, %6811
  %6813 = fmul fast float %6769, %6727
  %6814 = fmul fast float %6770, %6727
  %6815 = fmul fast float %6771, %6727
  %6816 = fsub fast float 1.000000e+00, %6664
  %6817 = bitcast float %6816 to i32
  %6818 = sitofp i32 %6817 to float
  %6819 = fmul fast float %6818, 5.000000e+00
  %6820 = fadd fast float %6819, 0xC1EFBF8940000000
  %6821 = fptosi float %6820 to i32
  %6822 = bitcast i32 %6821 to float
  %6823 = fmul fast float %6822, %4313
  %6824 = fmul fast float %6812, %6823
  %6825 = fmul fast float %6824, %6164
  %6826 = fmul fast float %6824, %6165
  %6827 = fmul fast float %6824, %6166
  %6828 = fadd fast float %6825, %6813
  %6829 = fadd fast float %6826, %6814
  %6830 = fadd fast float %6827, %6815
  %6831 = fmul fast float %6652, %4334
  %6832 = fmul fast float %6831, %6670
  %6833 = fmul fast float %6832, %6812
  %6834 = fmul fast float %6653, %4334
  %6835 = fmul fast float %6834, %6670
  %6836 = fmul fast float %6835, %6812
  %6837 = fmul fast float %6654, %4334
  %6838 = fmul fast float %6837, %6670
  %6839 = fmul fast float %6838, %6812
  %6840 = fadd fast float %6833, %6491
  %6841 = fadd fast float %6836, %6492
  %6842 = fadd fast float %6839, %6493
  %6843 = fmul fast float %6832, %6828
  %6844 = fmul fast float %6835, %6829
  %6845 = fmul fast float %6838, %6830
  %6846 = fadd fast float %6843, %6488
  %6847 = fadd fast float %6844, %6489
  %6848 = fadd fast float %6845, %6490
  br label %6566

; <label>:6849                                    ; preds = %6566
  br label %6850

; <label>:6850                                    ; preds = %6849, %6454
  %6851 = phi float [ %6456, %6454 ], [ %6567, %6849 ]
  %6852 = phi float [ %6457, %6454 ], [ %6568, %6849 ]
  %6853 = phi float [ %6458, %6454 ], [ %6569, %6849 ]
  %6854 = phi float [ %6459, %6454 ], [ %6570, %6849 ]
  %6855 = phi float [ %6460, %6454 ], [ %6571, %6849 ]
  %6856 = phi float [ %6461, %6454 ], [ %6572, %6849 ]
  %6857 = add i32 %6455, 1
  %6858 = icmp ugt i32 %6857, %6451
  br i1 %6858, label %6859, label %6454

; <label>:6859                                    ; preds = %6850
  br label %6860

; <label>:6860                                    ; preds = %6859, %6430, %6420
  %6861 = phi float [ %6421, %6420 ], [ %6421, %6430 ], [ %6851, %6859 ]
  %6862 = phi float [ %6422, %6420 ], [ %6422, %6430 ], [ %6852, %6859 ]
  %6863 = phi float [ %6423, %6420 ], [ %6423, %6430 ], [ %6853, %6859 ]
  %6864 = phi float [ %6424, %6420 ], [ %6424, %6430 ], [ %6854, %6859 ]
  %6865 = phi float [ %6425, %6420 ], [ %6425, %6430 ], [ %6855, %6859 ]
  %6866 = phi float [ %6426, %6420 ], [ %6426, %6430 ], [ %6856, %6859 ]
  %6867 = call float @dx.op.unary.f32(i32 24, float %4937)  ; Sqrt(value)
  %6868 = call float @dx.op.unary.f32(i32 24, float %4938)  ; Sqrt(value)
  %6869 = call float @dx.op.unary.f32(i32 24, float %4939)  ; Sqrt(value)
  %6870 = fmul fast float %6867, %6864
  %6871 = fmul fast float %6868, %6865
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 0
  br i1 %185, label %6874, label %6897

; <label>:6874                                    ; preds = %6860
  %6875 = fadd fast float %6866, %4311
  %6876 = fmul fast float %6875, %4312
  %6877 = fsub fast float 1.000000e+00, %4312
  %6878 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 3
  %6881 = fmul fast float %6880, %6878
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = fmul fast float %6883, %6170
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6886 = fmul fast float %6885, %4961
  %6887 = fadd fast float %6871, %6870
  %6888 = fmul fast float %6873, %6887
  %6889 = extractvalue %dx.types.CBufRet.f32 %6879, 1
  %6890 = fadd fast float %6881, %6876
  %6891 = fsub fast float %6890, %6884
  %6892 = fadd fast float %6891, %6886
  %6893 = fsub fast float %6892, %6889
  %6894 = extractvalue %dx.types.CBufRet.f32 %6879, 2
  %6895 = fmul fast float %6893, %6894
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  br label %6913

; <label>:6897                                    ; preds = %6860
  %6898 = fmul fast float %6869, %6866
  %6899 = fmul fast float %6873, %6870
  %6900 = fmul fast float %6873, %6871
  %6901 = fmul fast float %6898, %6873
  %6902 = add i32 %45, 356
  %6903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6902, i32 undef)  ; BufferLoad(srv,index,wot)
  %6904 = extractvalue %dx.types.ResRet.i32 %6903, 0
  %6905 = and i32 %6904, 32
  %6906 = icmp eq i32 %6905, 0
  br i1 %6906, label %6913, label %6907

; <label>:6907                                    ; preds = %6897
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = fmul fast float %6909, 0x3FE99999A0000000
  %6911 = fadd fast float %6909, %6899
  %6912 = fadd fast float %6910, %6901
  br label %6913

; <label>:6913                                    ; preds = %6907, %6897, %6874
  %6914 = phi float [ %6888, %6874 ], [ %6911, %6907 ], [ %6899, %6897 ]
  %6915 = phi float [ %6896, %6874 ], [ %6900, %6907 ], [ %6900, %6897 ]
  %6916 = phi float [ 1.000000e+00, %6874 ], [ %6912, %6907 ], [ %6901, %6897 ]
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = fmul fast float %6918, %6862
  %6920 = fmul fast float %6918, %6863
  %6921 = fadd fast float %6862, %6861
  %6922 = select i1 %185, float %6921, float %6861
  %6923 = fmul float %6922, %6918
  %6924 = select i1 %185, float 0.000000e+00, float %6919
  %6925 = select i1 %185, float 0.000000e+00, float %6920
  %6926 = fmul fast float %6914, %6867
  %6927 = fmul fast float %6915, %6868
  %6928 = fmul fast float %6916, %6869
  %6929 = fadd fast float %6923, %6926
  %6930 = fadd fast float %6924, %6927
  %6931 = fadd fast float %6925, %6928
  %6932 = select i1 %185, float %6915, float %6930
  %6933 = select i1 %185, float %6916, float %6931
  %6934 = call float @dx.op.binary.f32(i32 36, float %6929, float 3.225500e+04)  ; FMin(a,b)
  %6935 = call float @dx.op.binary.f32(i32 36, float %6932, float 3.225500e+04)  ; FMin(a,b)
  %6936 = call float @dx.op.binary.f32(i32 36, float %6933, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6935)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

