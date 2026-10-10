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
; shader hash: 545253bdc0226691b51ad65673eb5415
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     u32     2darray      T9     t11,space2     1
;                                   texture     f32     2darray     T10     t10,space2     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t49,space1     1
;                                   texture    byte         r/o     T13     t50,space1     1
;                                   texture    byte         r/o     T14     t51,space1     1
;                                   texture    byte         r/o     T15     t52,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32     2darray     T18     t49,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     f32     2darray     T28     t35,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;                                   texture     f32          2d     T35     t48,space2     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = icmp ne i32 %40, 0
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = fmul fast float %80, %74
  %82 = fmul fast float %80, %75
  %83 = select i1 %41, float 1.000000e+00, float -1.000000e+00
  %84 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %85 = bitcast float %84 to i32
  %86 = ashr i32 %85, 1
  %87 = sub nsw i32 1597250115, %86
  %88 = bitcast i32 %87 to float
  %89 = fmul fast float %66, %83
  %90 = fmul fast float %89, %88
  %91 = fmul fast float %67, %83
  %92 = fmul fast float %91, %88
  %93 = fmul fast float %68, %83
  %94 = fmul fast float %93, %88
  %95 = fmul fast float %67, %64
  %96 = fmul fast float %68, %63
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %68, %62
  %99 = fmul fast float %66, %64
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %66, %63
  %102 = fmul fast float %67, %62
  %103 = fsub fast float %101, %102
  %104 = fmul fast float %97, %65
  %105 = fmul fast float %100, %65
  %106 = fmul fast float %103, %65
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %81, 2.000000e+00
  %111 = fmul fast float %110, %108
  %112 = fmul fast float %82, 2.000000e+00
  %113 = fmul fast float %112, %109
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %114, %117
  %121 = fmul fast float %114, %118
  %122 = fmul fast float %114, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %115, %124
  %128 = fmul fast float %115, %125
  %129 = fmul fast float %115, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %134, %120
  %136 = fadd fast float %128, %132
  %137 = fadd fast float %136, %121
  %138 = fadd fast float %129, %133
  %139 = fadd fast float %138, %122
  %140 = fmul fast float %135, %76
  %141 = fmul fast float %137, %76
  %142 = fmul fast float %139, %76
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %81
  %147 = fmul fast float %145, %82
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %149, 114688
  %151 = icmp ne i32 %150, 0
  %152 = select i1 %151, float %146, float 0.000000e+00
  %153 = select i1 %151, float %147, float 0.000000e+00
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fmul fast float %155, 2.550000e+02
  %157 = fptoui float %156 to i32
  %158 = select i1 %151, i32 %157, i32 0
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  %163 = and i32 %160, 4
  %164 = icmp ne i32 %163, 0
  %165 = and i1 %162, %164
  br i1 %165, label %166, label %175

; <label>:166                                     ; preds = %0
  %167 = fmul fast float %109, %82
  %168 = fmul fast float %108, %81
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %168, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fsub fast float 1.000000e+00, %170
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = fcmp fast olt float %171, %173
  br label %183

; <label>:175                                     ; preds = %0
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 3
  %178 = and i32 %177, 3
  %179 = icmp ne i32 %178, 0
  %180 = and i32 %177, 4
  %181 = icmp eq i32 %180, 0
  %182 = and i1 %179, %181
  br label %183

; <label>:183                                     ; preds = %175, %166
  %184 = phi i1 [ %174, %166 ], [ %182, %175 ]
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %187 = fmul fast float %186, 0x3FE3C6EF40000000
  %188 = frem fast float %81, 2.560000e+02
  %189 = frem fast float %82, 2.560000e+02
  %190 = fptoui float %188 to i32
  %191 = fptoui float %189 to i32
  %192 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = fadd fast float %193, %187
  %196 = fadd fast float %194, %187
  %197 = call float @dx.op.unary.f32(i32 22, float %195)  ; Frc(value)
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = add i32 %42, 156
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = shl i32 %201, 4
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %201, 7
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %201, 22
  %209 = shl nuw nsw i32 %208, 5
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = add i32 %42, 216
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 255
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F70101020000000
  %217 = lshr i32 %213, 8
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = lshr i32 %213, 16
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = add i32 %42, 36
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 65535
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %227, 16
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = add i32 %42, 288
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = fmul fast float %236, 0x3F50624DE0000000
  %240 = fmul fast float %238, 0x3F50624DE0000000
  %241 = add i32 %42, 172
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = shl i32 %243, 4
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %243, 7
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %243, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %42, 232
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %255, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %255, 16
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = add i32 %42, 52
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %42, 304
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %278, 0x3F50624DE0000000
  %282 = fmul fast float %280, 0x3F50624DE0000000
  %283 = add i32 %42, 188
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %42, 248
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %42, 68
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %42, 320
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = add i32 %42, 204
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = shl i32 %327, 4
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %327, 7
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %327, 22
  %335 = shl nuw nsw i32 %334, 5
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %42, 264
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %339, 8
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %339, 16
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = add i32 %42, 84
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %42, 336
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = fmul fast float %362, 0x3F50624DE0000000
  %366 = fmul fast float %364, 0x3F50624DE0000000
  %367 = add i32 %42, 348
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 32
  %371 = icmp eq i32 %370, 0
  %372 = and i32 %369, 64
  %373 = icmp eq i32 %372, 0
  %374 = and i32 %369, 128
  %375 = icmp eq i32 %374, 0
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 2
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %393, label %380

; <label>:380                                     ; preds = %183
  %381 = add i32 %42, 472
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = add i32 %383, 0
  %385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %385, %dx.types.Handle %78, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = fmul fast float %387, %71
  %391 = fmul fast float %388, %72
  %392 = fmul fast float %389, %73
  br label %393

; <label>:393                                     ; preds = %380, %183
  %394 = phi float [ %73, %183 ], [ %392, %380 ]
  %395 = phi float [ %72, %183 ], [ %391, %380 ]
  %396 = phi float [ %71, %183 ], [ %390, %380 ]
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 2
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %420, label %401

; <label>:401                                     ; preds = %393
  %402 = add i32 %42, 44
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 1
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %396, float 1.000000e+00
  %408 = add i32 %42, 60
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %395, float 1.000000e+00
  %414 = add i32 %42, 76
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %394, float 1.000000e+00
  br label %420

; <label>:420                                     ; preds = %401, %393
  %421 = phi float [ %394, %393 ], [ %419, %401 ]
  %422 = phi float [ %395, %393 ], [ %413, %401 ]
  %423 = phi float [ %396, %393 ], [ %407, %401 ]
  %424 = lshr i32 %398, 20
  %425 = and i32 %424, 3
  %426 = add nuw nsw i32 %425, 1
  %427 = add i32 %42, 24
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %42, 28
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = or i32 %432, %429
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %946, label %435

; <label>:435                                     ; preds = %420
  %436 = and i32 %429, 262144
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %44, float 1.000000e+00
  %439 = select i1 %437, float %45, float 0.000000e+00
  %440 = select i1 %437, float %46, float 0.000000e+00
  %441 = select i1 %437, float %47, float 1.000000e+00
  %442 = select i1 %437, float %48, float %69
  %443 = select i1 %437, float %49, float %70
  %444 = add i32 %42, 284
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = lshr i32 %446, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = fmul fast float %448, 0x3F50624DE0000000
  %450 = add i32 %42, 88
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 16
  %454 = and i32 %453, 255
  %455 = lshr i32 %452, 24
  %456 = add i32 %42, 292
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = add i32 %42, 32
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = lshr i32 %465, 22
  %467 = shl nuw nsw i32 %466, 5
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = shl i32 %465, 4
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %465, 7
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 3
  %477 = fmul fast float %476, 1.000000e+03
  %478 = fmul fast float %239, %477
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fadd fast float %479, %229
  %481 = fmul fast float %240, %477
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fadd fast float %482, %231
  %484 = fmul fast float %449, %477
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fmul fast float %485, 0x401921FB60000000
  %487 = fadd fast float %486, %468
  %488 = call float @dx.op.unary.f32(i32 13, float %487)  ; Sin(value)
  %489 = call float @dx.op.unary.f32(i32 12, float %487)  ; Cos(value)
  %490 = fsub fast float -0.000000e+00, %488
  %491 = fadd fast float %442, -5.000000e-01
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fmul fast float %460, %491
  %494 = fmul fast float %462, %492
  %495 = fadd fast float %493, 5.000000e-01
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fmul fast float %471, %495
  %498 = fmul fast float %474, %496
  %499 = fmul fast float %489, %497
  %500 = call float @dx.op.tertiary.f32(i32 46, float %490, float %498, float %499)  ; FMad(a,b,c)
  %501 = fmul fast float %488, %497
  %502 = call float @dx.op.tertiary.f32(i32 46, float %489, float %498, float %501)  ; FMad(a,b,c)
  %503 = fadd fast float %480, %500
  %504 = fadd fast float %483, %502
  %505 = icmp ugt i32 %454, 1
  %506 = icmp ugt i32 %452, 33554431
  %507 = or i1 %506, %505
  br i1 %507, label %508, label %533

; <label>:508                                     ; preds = %435
  %509 = add i32 %42, 228
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = lshr i32 %511, 16
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = fmul fast float %476, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = mul nuw nsw i32 %454, %455
  %517 = uitofp i32 %516 to float
  %518 = fmul fast float %515, %517
  %519 = call float @dx.op.unary.f32(i32 27, float %518)  ; Round_ni(value)
  %520 = fptoui float %519 to i32
  %521 = urem i32 %520, %454
  %522 = udiv i32 %520, %455
  %523 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = uitofp i32 %521 to float
  %526 = uitofp i32 %522 to float
  %527 = fadd fast float %523, %525
  %528 = fadd fast float %524, %526
  %529 = uitofp i32 %454 to float
  %530 = uitofp i32 %455 to float
  %531 = fdiv fast float %527, %529
  %532 = fdiv fast float %528, %530
  br label %533

; <label>:533                                     ; preds = %508, %435
  %534 = phi float [ %531, %508 ], [ %503, %435 ]
  %535 = phi float [ %532, %508 ], [ %504, %435 ]
  %536 = and i32 %429, 16
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %734, label %538

; <label>:538                                     ; preds = %533
  %539 = add i32 %42, 360
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %543, %dx.types.Handle %77, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = and i32 %452, 255
  %550 = uitofp i32 %549 to float
  %551 = lshr i32 %452, 8
  %552 = and i32 %551, 255
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %548, %550
  %555 = fadd fast float %554, %553
  %556 = fmul fast float %555, 0x3F70101000000000
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 512
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %569, label %561

; <label>:561                                     ; preds = %538
  %562 = add i32 %42, 440
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = add i32 %564, 0
  %566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %566, %dx.types.Handle %78, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  br label %569

; <label>:569                                     ; preds = %561, %538
  %570 = phi float [ %568, %561 ], [ 1.000000e+00, %538 ]
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 33554432
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %681, label %575

; <label>:575                                     ; preds = %569
  %576 = add i32 %42, 224
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %578, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = add i32 %42, 228
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 24
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = and i32 %589, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = lshr i32 %589, 8
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = lshr i32 %589, 16
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = add i32 %42, 220
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = lshr i32 %606, 24
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = and i32 %606, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = lshr i32 %606, 8
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = lshr i32 %606, 16
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = bitcast float %545 to i32
  %622 = ashr i32 %621, 1
  %623 = sub nsw i32 1597463174, %622
  %624 = bitcast i32 %623 to float
  %625 = fmul fast float %545, 5.000000e-01
  %626 = fmul fast float %624, %624
  %627 = fmul fast float %626, %625
  %628 = fsub fast float 1.500000e+00, %627
  %629 = fmul fast float %624, %545
  %630 = fmul fast float %629, %628
  %631 = bitcast float %546 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %546, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %546
  %640 = fmul fast float %639, %638
  %641 = bitcast float %547 to i32
  %642 = ashr i32 %641, 1
  %643 = sub nsw i32 1597463174, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %547, 5.000000e-01
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %646, %645
  %648 = fsub fast float 1.500000e+00, %647
  %649 = fmul fast float %644, %547
  %650 = fmul fast float %649, %648
  %651 = fsub fast float %630, %612
  %652 = fsub fast float %640, %616
  %653 = fsub fast float %650, %620
  %654 = fmul fast float %651, %580
  %655 = fmul fast float %652, %582
  %656 = fmul fast float %653, %587
  %657 = fadd fast float %654, %595
  %658 = fadd fast float %655, %599
  %659 = fadd fast float %656, %603
  %660 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = fmul fast float %660, %660
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fsub fast float %663, %545
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fmul fast float %666, %570
  %670 = fmul fast float %667, %570
  %671 = fmul fast float %668, %570
  %672 = fadd fast float %669, %545
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %592, %556
  %676 = fsub fast float %675, %609
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = fsub fast float %677, %556
  %679 = fmul fast float %678, %570
  %680 = fadd fast float %679, %556
  br label %734

; <label>:681                                     ; preds = %569
  %682 = and i32 %572, 134217728
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %718, label %684

; <label>:684                                     ; preds = %681
  %685 = call float @dx.op.unary.f32(i32 24, float %216)  ; Sqrt(value)
  %686 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %688 = fadd fast float %685, -5.000000e-01
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fmul fast float %688, %570
  %692 = fmul fast float %689, %570
  %693 = fmul fast float %690, %570
  %694 = fadd fast float %691, 5.000000e-01
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = fmul fast float %694, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %697
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %703, %697
  %705 = fmul fast float %695, 2.000000e+00
  %706 = fsub fast float 1.000000e+00, %705
  %707 = fmul fast float %706, %698
  %708 = fadd fast float %707, %705
  %709 = fmul fast float %708, %698
  %710 = fmul fast float %696, 2.000000e+00
  %711 = fsub fast float 1.000000e+00, %710
  %712 = fmul fast float %711, %699
  %713 = fadd fast float %712, %710
  %714 = fmul fast float %713, %699
  %715 = fmul fast float %704, %704
  %716 = fmul fast float %709, %709
  %717 = fmul fast float %714, %714
  br label %734

; <label>:718                                     ; preds = %681
  %719 = fmul fast float %216, %216
  %720 = fmul fast float %220, %220
  %721 = fmul fast float %224, %224
  %722 = fadd fast float %719, -1.000000e+00
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fmul fast float %570, %722
  %726 = fmul fast float %570, %723
  %727 = fmul fast float %570, %724
  %728 = fadd fast float %725, 1.000000e+00
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fmul fast float %728, %545
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  br label %734

; <label>:734                                     ; preds = %718, %684, %575, %533
  %735 = phi float [ %680, %575 ], [ %556, %684 ], [ %556, %718 ], [ 0x3FA23C0BE0000000, %533 ]
  %736 = phi float [ %672, %575 ], [ %715, %684 ], [ %731, %718 ], [ 1.000000e+00, %533 ]
  %737 = phi float [ %673, %575 ], [ %716, %684 ], [ %732, %718 ], [ 1.000000e+00, %533 ]
  %738 = phi float [ %674, %575 ], [ %717, %684 ], [ %733, %718 ], [ 1.000000e+00, %533 ]
  %739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.i32 %739, 1
  %741 = and i32 %740, 1
  %742 = icmp ne i32 %741, 0
  %743 = add i32 %42, 356
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 32
  %747 = icmp ne i32 %746, 0
  %748 = and i1 %742, %747
  %749 = select i1 %748, float 1.000000e+00, float %736
  %750 = select i1 %748, float 0x3FD3333340000000, float %737
  %751 = select i1 %748, float 0x3FD3333340000000, float %738
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 32
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %828, label %756

; <label>:756                                     ; preds = %734
  %757 = add i32 %42, 92
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = add i32 %42, 376
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %762, 0
  %764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %764, %dx.types.Handle %77, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = extractvalue %dx.types.ResRet.f32 %765, 3
  %770 = and i32 %759, 255
  %771 = uitofp i32 %770 to float
  %772 = lshr i32 %759, 8
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %759, 16
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %777, 0x3F70101000000000
  %779 = fmul fast float %766, %771
  %780 = fadd fast float %779, %774
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = fadd fast float %767, -5.000000e-01
  %783 = fadd fast float %769, -5.000000e-01
  %784 = fmul fast float %782, %778
  %785 = fmul fast float %783, %778
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fmul fast float %786, 2.000000e+00
  %789 = fadd fast float %788, -1.000000e+00
  %790 = fmul fast float %787, 2.000000e+00
  %791 = fadd fast float %790, -1.000000e+00
  %792 = fadd fast float %789, %791
  %793 = fmul fast float %792, 5.000000e-01
  %794 = fsub fast float %789, %791
  %795 = fmul fast float %794, 5.000000e-01
  %796 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %797 = fsub fast float 1.000000e+00, %796
  %798 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %799 = fsub fast float %797, %798
  %800 = call float @dx.op.dot3.f32(i32 55, float %793, float %795, float %799, float %793, float %795, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 25, float %800)  ; Rsqrt(value)
  %802 = fmul fast float %793, %801
  %803 = fmul fast float %795, %801
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 67108864
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %824, label %808

; <label>:808                                     ; preds = %756
  %809 = add i32 %42, 280
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 65535
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %811, 16
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = fsub fast float %781, %819
  %821 = fmul fast float %820, %813
  %822 = fadd fast float %821, %817
  %823 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  br label %824

; <label>:824                                     ; preds = %808, %756
  %825 = phi float [ %823, %808 ], [ %781, %756 ]
  %826 = call float @dx.op.dot2.f32(i32 54, float %802, float %803, float %438, float %439)  ; Dot2(ax,ay,bx,by)
  %827 = call float @dx.op.dot2.f32(i32 54, float %802, float %803, float %440, float %441)  ; Dot2(ax,ay,bx,by)
  br label %828

; <label>:828                                     ; preds = %824, %734
  %829 = phi float [ %825, %824 ], [ 0x3FD6666660000000, %734 ]
  %830 = phi float [ %826, %824 ], [ 0.000000e+00, %734 ]
  %831 = phi float [ %827, %824 ], [ 0.000000e+00, %734 ]
  %832 = phi float [ %768, %824 ], [ 1.000000e+00, %734 ]
  %833 = add i32 %42, 160
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 22
  %837 = shl nuw nsw i32 %836, 5
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 64
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %876, label %843

; <label>:843                                     ; preds = %828
  %844 = add i32 %42, 392
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = add i32 %846, 0
  %848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 131072
  %852 = icmp eq i32 %851, 0
  %853 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %848, %dx.types.Handle %77, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = extractvalue %dx.types.ResRet.f32 %853, 2
  %857 = fmul fast float %854, %204
  %858 = fmul fast float %855, %207
  %859 = fmul fast float %856, %210
  br i1 %852, label %866, label %860

; <label>:860                                     ; preds = %843
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = fmul fast float %862, %857
  %864 = fmul fast float %862, %858
  %865 = fmul fast float %862, %859
  br label %866

; <label>:866                                     ; preds = %860, %843
  %867 = phi float [ %863, %860 ], [ %857, %843 ]
  %868 = phi float [ %864, %860 ], [ %858, %843 ]
  %869 = phi float [ %865, %860 ], [ %859, %843 ]
  %870 = fmul fast float %867, %838
  %871 = select i1 %184, float %870, float %867
  %872 = call float @dx.op.dot3.f32(i32 55, float %871, float %868, float %869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = select i1 %184, float 0.000000e+00, float %867
  %874 = select i1 %184, float %872, float %868
  %875 = select i1 %184, float 0.000000e+00, float %869
  br label %876

; <label>:876                                     ; preds = %866, %828
  %877 = phi float [ %873, %866 ], [ 0.000000e+00, %828 ]
  %878 = phi float [ %874, %866 ], [ 0.000000e+00, %828 ]
  %879 = phi float [ %875, %866 ], [ 0.000000e+00, %828 ]
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 10240
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %928, label %884

; <label>:884                                     ; preds = %876
  %885 = add i32 %42, 456
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = add i32 %887, 0
  %889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %889, %dx.types.Handle %78, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 1
  %892 = extractvalue %dx.types.ResRet.f32 %890, 3
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 1048576
  %896 = icmp ne i32 %895, 0
  %897 = and i32 %894, 8192
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %914, label %899

; <label>:899                                     ; preds = %884
  %900 = extractvalue %dx.types.ResRet.f32 %890, 2
  %901 = select i1 %896, float %900, float %891
  %902 = extractvalue %dx.types.ResRet.f32 %890, 0
  %903 = select i1 %896, float %902, float %891
  %904 = add i32 %42, 96
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = lshr i32 %906, 16
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3F80101020000000
  %911 = fmul fast float %910, %903
  %912 = fmul fast float %910, %891
  %913 = fmul fast float %910, %901
  br label %914

; <label>:914                                     ; preds = %899, %884
  %915 = phi float [ %911, %899 ], [ 0.000000e+00, %884 ]
  %916 = phi float [ %912, %899 ], [ 0.000000e+00, %884 ]
  %917 = phi float [ %913, %899 ], [ 0.000000e+00, %884 ]
  %918 = and i32 %894, 2048
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %928, label %920

; <label>:920                                     ; preds = %914
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = shl i32 %922, 4
  %924 = and i32 %923, 32752
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = fmul fast float %925, %892
  %927 = call float @dx.op.binary.f32(i32 35, float %926, float 0x3F70101020000000)  ; FMax(a,b)
  br label %928

; <label>:928                                     ; preds = %920, %914, %876
  %929 = phi float [ %915, %920 ], [ %915, %914 ], [ 0.000000e+00, %876 ]
  %930 = phi float [ %916, %920 ], [ %916, %914 ], [ 0.000000e+00, %876 ]
  %931 = phi float [ %917, %920 ], [ %917, %914 ], [ 0.000000e+00, %876 ]
  %932 = phi float [ %927, %920 ], [ 0x3F70101020000000, %914 ], [ 0x3F70101020000000, %876 ]
  %933 = add i32 %42, 96
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = lshr i32 %935, 8
  %939 = and i32 %938, 255
  %940 = uitofp i32 %939 to float
  %941 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = fmul fast float %940, %941
  %943 = fadd fast float %942, %937
  %944 = fmul fast float %943, 0x3F70101020000000
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  br label %946

; <label>:946                                     ; preds = %928, %420
  %947 = phi float [ 0.000000e+00, %420 ], [ %830, %928 ]
  %948 = phi float [ 0.000000e+00, %420 ], [ %831, %928 ]
  %949 = phi float [ 0.000000e+00, %420 ], [ %749, %928 ]
  %950 = phi float [ 0.000000e+00, %420 ], [ %750, %928 ]
  %951 = phi float [ 0.000000e+00, %420 ], [ %751, %928 ]
  %952 = phi float [ 0.000000e+00, %420 ], [ %877, %928 ]
  %953 = phi float [ 0.000000e+00, %420 ], [ %878, %928 ]
  %954 = phi float [ 0.000000e+00, %420 ], [ %879, %928 ]
  %955 = phi float [ 0.000000e+00, %420 ], [ %929, %928 ]
  %956 = phi float [ 0.000000e+00, %420 ], [ %930, %928 ]
  %957 = phi float [ 0.000000e+00, %420 ], [ %931, %928 ]
  %958 = phi float [ 0.000000e+00, %420 ], [ %735, %928 ]
  %959 = phi float [ 0.000000e+00, %420 ], [ 1.000000e+00, %928 ]
  %960 = phi float [ 0.000000e+00, %420 ], [ %829, %928 ]
  %961 = phi float [ 0.000000e+00, %420 ], [ %832, %928 ]
  %962 = phi float [ 0.000000e+00, %420 ], [ %932, %928 ]
  %963 = phi float [ 0.000000e+00, %420 ], [ %945, %928 ]
  br i1 %371, label %1892, label %964

; <label>:964                                     ; preds = %946
  %965 = icmp ult i32 %426, 2
  %966 = add i32 %42, 40
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = add i32 %42, 44
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = or i32 %971, %968
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %1892, label %974

; <label>:974                                     ; preds = %964
  %975 = and i32 %968, 262144
  %976 = icmp ne i32 %975, 0
  %977 = select i1 %976, float %44, float 1.000000e+00
  %978 = select i1 %976, float %45, float 0.000000e+00
  %979 = select i1 %976, float %46, float 0.000000e+00
  %980 = select i1 %976, float %47, float 1.000000e+00
  %981 = select i1 %976, float %48, float %69
  %982 = select i1 %976, float %49, float %70
  %983 = add i32 %42, 300
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = lshr i32 %985, 16
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = fmul fast float %987, 0x3F50624DE0000000
  %989 = add i32 %42, 104
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = lshr i32 %991, 16
  %993 = and i32 %992, 255
  %994 = lshr i32 %991, 24
  %995 = add i32 %42, 308
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 65535
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = lshr i32 %997, 16
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = add i32 %42, 48
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = lshr i32 %1004, 22
  %1006 = shl nuw nsw i32 %1005, 5
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = shl i32 %1004, 4
  %1009 = and i32 %1008, 32752
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = lshr i32 %1004, 7
  %1012 = and i32 %1011, 32752
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1016 = fmul fast float %1015, 1.000000e+03
  %1017 = fmul fast float %281, %1016
  %1018 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1019 = fadd fast float %1018, %271
  %1020 = fmul fast float %282, %1016
  %1021 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1022 = fadd fast float %1021, %273
  %1023 = fmul fast float %988, %1016
  %1024 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1025 = fmul fast float %1024, 0x401921FB60000000
  %1026 = fadd fast float %1025, %1007
  %1027 = call float @dx.op.unary.f32(i32 13, float %1026)  ; Sin(value)
  %1028 = call float @dx.op.unary.f32(i32 12, float %1026)  ; Cos(value)
  %1029 = fsub fast float -0.000000e+00, %1027
  %1030 = fadd fast float %981, -5.000000e-01
  %1031 = fadd fast float %982, -5.000000e-01
  %1032 = fmul fast float %999, %1030
  %1033 = fmul fast float %1001, %1031
  %1034 = fadd fast float %1032, 5.000000e-01
  %1035 = fadd fast float %1033, 5.000000e-01
  %1036 = fmul fast float %1010, %1034
  %1037 = fmul fast float %1013, %1035
  %1038 = fmul fast float %1028, %1036
  %1039 = call float @dx.op.tertiary.f32(i32 46, float %1029, float %1037, float %1038)  ; FMad(a,b,c)
  %1040 = fmul fast float %1027, %1036
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1028, float %1037, float %1040)  ; FMad(a,b,c)
  %1042 = fadd fast float %1019, %1039
  %1043 = fadd fast float %1022, %1041
  %1044 = icmp ugt i32 %993, 1
  %1045 = icmp ugt i32 %991, 33554431
  %1046 = or i1 %1045, %1044
  br i1 %1046, label %1047, label %1072

; <label>:1047                                    ; preds = %974
  %1048 = add i32 %42, 244
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = lshr i32 %1050, 16
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = fmul fast float %1015, %1052
  %1054 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1055 = mul nuw nsw i32 %993, %994
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1054, %1056
  %1058 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1059 = fptoui float %1058 to i32
  %1060 = urem i32 %1059, %993
  %1061 = udiv i32 %1059, %994
  %1062 = call float @dx.op.unary.f32(i32 22, float %1042)  ; Frc(value)
  %1063 = call float @dx.op.unary.f32(i32 22, float %1043)  ; Frc(value)
  %1064 = uitofp i32 %1060 to float
  %1065 = uitofp i32 %1061 to float
  %1066 = fadd fast float %1062, %1064
  %1067 = fadd fast float %1063, %1065
  %1068 = uitofp i32 %993 to float
  %1069 = uitofp i32 %994 to float
  %1070 = fdiv fast float %1066, %1068
  %1071 = fdiv fast float %1067, %1069
  br label %1072

; <label>:1072                                    ; preds = %1047, %974
  %1073 = phi float [ %1070, %1047 ], [ %1042, %974 ]
  %1074 = phi float [ %1071, %1047 ], [ %1043, %974 ]
  %1075 = and i32 %968, 16777216
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1186, label %1077

; <label>:1077                                    ; preds = %1072
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1082 = fadd fast float %1079, %140
  %1083 = fadd fast float %1080, %141
  %1084 = fadd fast float %1081, %142
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1088 = icmp eq i32 %43, 65535
  br i1 %1088, label %1183, label %1089

; <label>:1089                                    ; preds = %1077
  %1090 = lshr i32 %43, 1
  %1091 = shl i32 %1090, 2
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %43, 1
  %1095 = icmp ne i32 %1094, 0
  %1096 = lshr i32 %1093, 16
  %1097 = and i32 %1093, 65535
  %1098 = select i1 %1095, i32 %1096, i32 %1097
  %1099 = icmp eq i32 %1098, 65535
  br i1 %1099, label %1179, label %1100

; <label>:1100                                    ; preds = %1089
  %1101 = mul nuw nsw i32 %1098, 40
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = add nuw nsw i32 %1101, 12
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = add nuw nsw i32 %1101, 24
  %1112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = add nuw nsw i32 %1101, 36
  %1117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = fsub fast float %1082, %1103
  %1120 = fsub fast float %1083, %1104
  %1121 = fsub fast float %1084, %1105
  %1122 = fmul fast float %1118, %1119
  %1123 = fmul fast float %1118, %1120
  %1124 = fmul fast float %1118, %1121
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = fadd fast float %1125, 5.000000e-01
  %1129 = fadd fast float %1126, 5.000000e-01
  %1130 = fadd fast float %1127, 5.000000e-01
  %1131 = fmul fast float %1128, %1108
  %1132 = fmul fast float %1129, %1109
  %1133 = fmul fast float %1130, %1110
  %1134 = shl i32 %43, 2
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = add i32 %1136, 0
  %1138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1139 = call float @dx.op.unary.f32(i32 22, float %1131)  ; Frc(value)
  %1140 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1141 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1138, %dx.types.Handle %37, float %1139, float %1140, float %1141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = fmul fast float %1143, 1.023000e+03
  %1147 = fmul fast float %1144, 1.023000e+03
  %1148 = fmul fast float %1145, 1.023000e+03
  %1149 = fadd fast float %1146, 5.000000e-01
  %1150 = fadd fast float %1147, 5.000000e-01
  %1151 = fadd fast float %1148, 5.000000e-01
  %1152 = call float @dx.op.unary.f32(i32 27, float %1149)  ; Round_ni(value)
  %1153 = call float @dx.op.unary.f32(i32 27, float %1150)  ; Round_ni(value)
  %1154 = call float @dx.op.unary.f32(i32 27, float %1151)  ; Round_ni(value)
  %1155 = fsub fast float %1122, %1125
  %1156 = fsub fast float %1123, %1126
  %1157 = fsub fast float %1124, %1127
  %1158 = fmul fast float %1155, 7.500000e-01
  %1159 = fmul fast float %1156, 7.500000e-01
  %1160 = fmul fast float %1157, 7.500000e-01
  %1161 = fadd fast float %1125, 1.250000e-01
  %1162 = fadd fast float %1161, %1158
  %1163 = fadd fast float %1162, %1152
  %1164 = fadd fast float %1126, 1.250000e-01
  %1165 = fadd fast float %1164, %1159
  %1166 = fadd fast float %1165, %1153
  %1167 = fadd fast float %1127, 1.250000e-01
  %1168 = fadd fast float %1167, %1160
  %1169 = fadd fast float %1168, %1154
  %1170 = fmul fast float %1163, %1113
  %1171 = fmul fast float %1166, %1114
  %1172 = fmul fast float %1169, %1115
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1176, %dx.types.Handle %35, float %1170, float %1171, float %1172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  br label %1179

; <label>:1179                                    ; preds = %1100, %1089
  %1180 = phi float [ %1178, %1100 ], [ -1.000000e+00, %1089 ]
  %1181 = fadd fast float %1180, %1087
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  br label %1183

; <label>:1183                                    ; preds = %1179, %1077
  %1184 = phi float [ %1182, %1179 ], [ %1087, %1077 ]
  %1185 = fmul fast float %1184, %423
  br label %1186

; <label>:1186                                    ; preds = %1183, %1072
  %1187 = phi float [ %1185, %1183 ], [ %423, %1072 ]
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = and i32 %1189, 256
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1238, label %1192

; <label>:1192                                    ; preds = %1186
  %1193 = add i32 %42, 428
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1197, %dx.types.Handle %78, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = add i32 %42, 116
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = shl i32 %1202, 4
  %1204 = and i32 %1203, 32752
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = lshr i32 %1202, 7
  %1207 = and i32 %1206, 32752
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = fsub fast float 1.000000e+00, %1187
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1211 = bitcast float %1187 to i32
  %1212 = sitofp i32 %1211 to float
  %1213 = fadd fast float %1212, 0xC1CFBF8940000000
  %1214 = fmul fast float %1208, %1213
  %1215 = fadd fast float %1214, 0x41CFBF8940000000
  %1216 = fptosi float %1215 to i32
  %1217 = bitcast i32 %1216 to float
  %1218 = bitcast float %1210 to i32
  %1219 = sitofp i32 %1218 to float
  %1220 = fadd fast float %1219, 0xC1CFBF8940000000
  %1221 = fmul fast float %1220, %1208
  %1222 = fadd fast float %1221, 0x41CFBF8940000000
  %1223 = fptosi float %1222 to i32
  %1224 = bitcast i32 %1223 to float
  %1225 = fmul fast float %1217, %1205
  %1226 = fmul fast float %1224, %1205
  %1227 = fsub fast float %1210, %1225
  %1228 = fadd fast float %1226, %1210
  %1229 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1231 = fsub fast float %1199, %1229
  %1232 = fsub fast float %1230, %1229
  %1233 = bitcast float %1232 to i32
  %1234 = sub nsw i32 2129859010, %1233
  %1235 = bitcast i32 %1234 to float
  %1236 = fmul fast float %1235, %1231
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  br label %1238

; <label>:1238                                    ; preds = %1192, %1186
  %1239 = phi float [ %1237, %1192 ], [ %1187, %1186 ]
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 128
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1260, label %1244

; <label>:1244                                    ; preds = %1238
  %1245 = add i32 %42, 412
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %1247, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1249, %dx.types.Handle %78, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 524288
  %1255 = icmp ne i32 %1254, 0
  %1256 = fcmp fast ogt float %1251, 0x3FE0101020000000
  %1257 = select i1 %1256, float 1.000000e+00, float 0.000000e+00
  %1258 = select i1 %1255, float %1257, float %1251
  %1259 = fmul fast float %1258, %1239
  br label %1260

; <label>:1260                                    ; preds = %1244, %1238
  %1261 = phi float [ %1259, %1244 ], [ %1239, %1238 ]
  %1262 = fcmp fast ult float %1261, 0x3F70101020000000
  br i1 %1262, label %1892, label %1263

; <label>:1263                                    ; preds = %1260
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 16
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1466, label %1268

; <label>:1268                                    ; preds = %1263
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %42, 364
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = add i32 %1273, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1275, %dx.types.Handle %77, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = and i32 %1270, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = lshr i32 %1270, 8
  %1284 = and i32 %1283, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1280, %1282
  %1287 = fadd fast float %1286, %1285
  %1288 = fmul fast float %1287, 0x3F70101000000000
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 512
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1301, label %1293

; <label>:1293                                    ; preds = %1268
  %1294 = add i32 %42, 444
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = add i32 %1296, 0
  %1298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1298, %dx.types.Handle %78, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  br label %1301

; <label>:1301                                    ; preds = %1293, %1268
  %1302 = phi float [ %1300, %1293 ], [ 1.000000e+00, %1268 ]
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 33554432
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1413, label %1307

; <label>:1307                                    ; preds = %1301
  %1308 = add i32 %42, 240
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 65535
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = lshr i32 %1310, 16
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = add i32 %42, 244
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = and i32 %1317, 65535
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = lshr i32 %1321, 24
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = and i32 %1321, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = lshr i32 %1321, 8
  %1329 = and i32 %1328, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = fmul fast float %1330, 0x3F70101020000000
  %1332 = lshr i32 %1321, 16
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = add i32 %42, 236
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = lshr i32 %1338, 24
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = and i32 %1338, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1343, 0x3F70101020000000
  %1345 = lshr i32 %1338, 8
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1347, 0x3F70101020000000
  %1349 = lshr i32 %1338, 16
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = bitcast float %1277 to i32
  %1354 = ashr i32 %1353, 1
  %1355 = sub nsw i32 1597463174, %1354
  %1356 = bitcast i32 %1355 to float
  %1357 = fmul fast float %1277, 5.000000e-01
  %1358 = fmul fast float %1356, %1356
  %1359 = fmul fast float %1358, %1357
  %1360 = fsub fast float 1.500000e+00, %1359
  %1361 = fmul fast float %1356, %1277
  %1362 = fmul fast float %1361, %1360
  %1363 = bitcast float %1278 to i32
  %1364 = ashr i32 %1363, 1
  %1365 = sub nsw i32 1597463174, %1364
  %1366 = bitcast i32 %1365 to float
  %1367 = fmul fast float %1278, 5.000000e-01
  %1368 = fmul fast float %1366, %1366
  %1369 = fmul fast float %1368, %1367
  %1370 = fsub fast float 1.500000e+00, %1369
  %1371 = fmul fast float %1366, %1278
  %1372 = fmul fast float %1371, %1370
  %1373 = bitcast float %1279 to i32
  %1374 = ashr i32 %1373, 1
  %1375 = sub nsw i32 1597463174, %1374
  %1376 = bitcast i32 %1375 to float
  %1377 = fmul fast float %1279, 5.000000e-01
  %1378 = fmul fast float %1376, %1376
  %1379 = fmul fast float %1378, %1377
  %1380 = fsub fast float 1.500000e+00, %1379
  %1381 = fmul fast float %1376, %1279
  %1382 = fmul fast float %1381, %1380
  %1383 = fsub fast float %1362, %1344
  %1384 = fsub fast float %1372, %1348
  %1385 = fsub fast float %1382, %1352
  %1386 = fmul fast float %1383, %1312
  %1387 = fmul fast float %1384, %1314
  %1388 = fmul fast float %1385, %1319
  %1389 = fadd fast float %1386, %1327
  %1390 = fadd fast float %1387, %1331
  %1391 = fadd fast float %1388, %1335
  %1392 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1393 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1394 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1395 = fmul fast float %1392, %1392
  %1396 = fmul fast float %1393, %1393
  %1397 = fmul fast float %1394, %1394
  %1398 = fsub fast float %1395, %1277
  %1399 = fsub fast float %1396, %1278
  %1400 = fsub fast float %1397, %1279
  %1401 = fmul fast float %1398, %1302
  %1402 = fmul fast float %1399, %1302
  %1403 = fmul fast float %1400, %1302
  %1404 = fadd fast float %1401, %1277
  %1405 = fadd fast float %1402, %1278
  %1406 = fadd fast float %1403, %1279
  %1407 = fadd fast float %1324, %1288
  %1408 = fsub fast float %1407, %1341
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = fsub fast float %1409, %1288
  %1411 = fmul fast float %1410, %1302
  %1412 = fadd fast float %1411, %1288
  br label %1466

; <label>:1413                                    ; preds = %1301
  %1414 = and i32 %1304, 134217728
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1450, label %1416

; <label>:1416                                    ; preds = %1413
  %1417 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %1418 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %1419 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %1420 = fadd fast float %1417, -5.000000e-01
  %1421 = fadd fast float %1418, -5.000000e-01
  %1422 = fadd fast float %1419, -5.000000e-01
  %1423 = fmul fast float %1420, %1302
  %1424 = fmul fast float %1421, %1302
  %1425 = fmul fast float %1422, %1302
  %1426 = fadd fast float %1423, 5.000000e-01
  %1427 = fadd fast float %1424, 5.000000e-01
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = call float @dx.op.unary.f32(i32 24, float %1277)  ; Sqrt(value)
  %1430 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1431 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1432 = fmul fast float %1426, 2.000000e+00
  %1433 = fsub fast float 1.000000e+00, %1432
  %1434 = fmul fast float %1433, %1429
  %1435 = fadd fast float %1434, %1432
  %1436 = fmul fast float %1435, %1429
  %1437 = fmul fast float %1427, 2.000000e+00
  %1438 = fsub fast float 1.000000e+00, %1437
  %1439 = fmul fast float %1438, %1430
  %1440 = fadd fast float %1439, %1437
  %1441 = fmul fast float %1440, %1430
  %1442 = fmul fast float %1428, 2.000000e+00
  %1443 = fsub fast float 1.000000e+00, %1442
  %1444 = fmul fast float %1443, %1431
  %1445 = fadd fast float %1444, %1442
  %1446 = fmul fast float %1445, %1431
  %1447 = fmul fast float %1436, %1436
  %1448 = fmul fast float %1441, %1441
  %1449 = fmul fast float %1446, %1446
  br label %1466

; <label>:1450                                    ; preds = %1413
  %1451 = fmul fast float %258, %258
  %1452 = fmul fast float %262, %262
  %1453 = fmul fast float %266, %266
  %1454 = fadd fast float %1451, -1.000000e+00
  %1455 = fadd fast float %1452, -1.000000e+00
  %1456 = fadd fast float %1453, -1.000000e+00
  %1457 = fmul fast float %1302, %1454
  %1458 = fmul fast float %1302, %1455
  %1459 = fmul fast float %1302, %1456
  %1460 = fadd fast float %1457, 1.000000e+00
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fmul fast float %1460, %1277
  %1464 = fmul fast float %1461, %1278
  %1465 = fmul fast float %1462, %1279
  br label %1466

; <label>:1466                                    ; preds = %1450, %1416, %1307, %1263
  %1467 = phi float [ %1412, %1307 ], [ %1288, %1416 ], [ %1288, %1450 ], [ 0x3FA23C0BE0000000, %1263 ]
  %1468 = phi float [ %1404, %1307 ], [ %1447, %1416 ], [ %1463, %1450 ], [ 1.000000e+00, %1263 ]
  %1469 = phi float [ %1405, %1307 ], [ %1448, %1416 ], [ %1464, %1450 ], [ 1.000000e+00, %1263 ]
  %1470 = phi float [ %1406, %1307 ], [ %1449, %1416 ], [ %1465, %1450 ], [ 1.000000e+00, %1263 ]
  %1471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.i32 %1471, 1
  %1473 = and i32 %1472, 1
  %1474 = icmp ne i32 %1473, 0
  %1475 = add i32 %42, 356
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 32
  %1479 = icmp ne i32 %1478, 0
  %1480 = and i1 %1474, %1479
  %1481 = select i1 %1480, float 1.000000e+00, float %1468
  %1482 = select i1 %1480, float 0x3FD3333340000000, float %1469
  %1483 = select i1 %1480, float 0x3FD3333340000000, float %1470
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 32
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1560, label %1488

; <label>:1488                                    ; preds = %1466
  %1489 = add i32 %42, 108
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = add i32 %42, 380
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = add i32 %1494, 0
  %1496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1496, %dx.types.Handle %77, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.ResRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.ResRet.f32 %1497, 2
  %1501 = extractvalue %dx.types.ResRet.f32 %1497, 3
  %1502 = and i32 %1491, 255
  %1503 = uitofp i32 %1502 to float
  %1504 = lshr i32 %1491, 8
  %1505 = and i32 %1504, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = lshr i32 %1491, 16
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101000000000
  %1511 = fmul fast float %1498, %1503
  %1512 = fadd fast float %1511, %1506
  %1513 = fmul fast float %1512, 0x3F70101000000000
  %1514 = fadd fast float %1499, -5.000000e-01
  %1515 = fadd fast float %1501, -5.000000e-01
  %1516 = fmul fast float %1514, %1510
  %1517 = fmul fast float %1515, %1510
  %1518 = fadd fast float %1516, 5.000000e-01
  %1519 = fadd fast float %1517, 5.000000e-01
  %1520 = fmul fast float %1518, 2.000000e+00
  %1521 = fadd fast float %1520, -1.000000e+00
  %1522 = fmul fast float %1519, 2.000000e+00
  %1523 = fadd fast float %1522, -1.000000e+00
  %1524 = fadd fast float %1521, %1523
  %1525 = fmul fast float %1524, 5.000000e-01
  %1526 = fsub fast float %1521, %1523
  %1527 = fmul fast float %1526, 5.000000e-01
  %1528 = call float @dx.op.unary.f32(i32 6, float %1525)  ; FAbs(value)
  %1529 = fsub fast float 1.000000e+00, %1528
  %1530 = call float @dx.op.unary.f32(i32 6, float %1527)  ; FAbs(value)
  %1531 = fsub fast float %1529, %1530
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1525, float %1527, float %1531, float %1525, float %1527, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = call float @dx.op.unary.f32(i32 25, float %1532)  ; Rsqrt(value)
  %1534 = fmul fast float %1525, %1533
  %1535 = fmul fast float %1527, %1533
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 67108864
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1556, label %1540

; <label>:1540                                    ; preds = %1488
  %1541 = add i32 %42, 296
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 65535
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 65535
  %1549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1548)  ; LegacyF16ToF32(value)
  %1550 = lshr i32 %1543, 16
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = fsub fast float %1513, %1551
  %1553 = fmul fast float %1552, %1545
  %1554 = fadd fast float %1553, %1549
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  br label %1556

; <label>:1556                                    ; preds = %1540, %1488
  %1557 = phi float [ %1555, %1540 ], [ %1513, %1488 ]
  %1558 = call float @dx.op.dot2.f32(i32 54, float %1534, float %1535, float %977, float %978)  ; Dot2(ax,ay,bx,by)
  %1559 = call float @dx.op.dot2.f32(i32 54, float %1534, float %1535, float %979, float %980)  ; Dot2(ax,ay,bx,by)
  br label %1560

; <label>:1560                                    ; preds = %1556, %1466
  %1561 = phi float [ %1557, %1556 ], [ 0x3FD6666660000000, %1466 ]
  %1562 = phi float [ %1558, %1556 ], [ 0.000000e+00, %1466 ]
  %1563 = phi float [ %1559, %1556 ], [ 0.000000e+00, %1466 ]
  %1564 = phi float [ %1500, %1556 ], [ 1.000000e+00, %1466 ]
  %1565 = add i32 %42, 176
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = lshr i32 %1567, 22
  %1569 = shl nuw nsw i32 %1568, 5
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 64
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1608, label %1575

; <label>:1575                                    ; preds = %1560
  %1576 = add i32 %42, 396
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %1578, 0
  %1580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 131072
  %1584 = icmp eq i32 %1583, 0
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1580, %dx.types.Handle %77, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = fmul fast float %1586, %246
  %1590 = fmul fast float %1587, %249
  %1591 = fmul fast float %1588, %252
  br i1 %1584, label %1598, label %1592

; <label>:1592                                    ; preds = %1575
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = fmul fast float %1594, %1589
  %1596 = fmul fast float %1594, %1590
  %1597 = fmul fast float %1594, %1591
  br label %1598

; <label>:1598                                    ; preds = %1592, %1575
  %1599 = phi float [ %1595, %1592 ], [ %1589, %1575 ]
  %1600 = phi float [ %1596, %1592 ], [ %1590, %1575 ]
  %1601 = phi float [ %1597, %1592 ], [ %1591, %1575 ]
  %1602 = fmul fast float %1599, %1570
  %1603 = select i1 %184, float %1602, float %1599
  %1604 = call float @dx.op.dot3.f32(i32 55, float %1603, float %1600, float %1601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = select i1 %184, float 0.000000e+00, float %1599
  %1606 = select i1 %184, float %1604, float %1600
  %1607 = select i1 %184, float 0.000000e+00, float %1601
  br label %1608

; <label>:1608                                    ; preds = %1598, %1560
  %1609 = phi float [ %1605, %1598 ], [ 0.000000e+00, %1560 ]
  %1610 = phi float [ %1606, %1598 ], [ 0.000000e+00, %1560 ]
  %1611 = phi float [ %1607, %1598 ], [ 0.000000e+00, %1560 ]
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 10240
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1660, label %1616

; <label>:1616                                    ; preds = %1608
  %1617 = add i32 %42, 460
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = add i32 %1619, 0
  %1621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1621, %dx.types.Handle %78, float %1073, float %1074, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 3
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 1048576
  %1628 = icmp ne i32 %1627, 0
  %1629 = and i32 %1626, 8192
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1646, label %1631

; <label>:1631                                    ; preds = %1616
  %1632 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1633 = select i1 %1628, float %1632, float %1623
  %1634 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1635 = select i1 %1628, float %1634, float %1623
  %1636 = add i32 %42, 112
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = lshr i32 %1638, 16
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F80101020000000
  %1643 = fmul fast float %1642, %1635
  %1644 = fmul fast float %1642, %1623
  %1645 = fmul fast float %1642, %1633
  br label %1646

; <label>:1646                                    ; preds = %1631, %1616
  %1647 = phi float [ %1643, %1631 ], [ 0.000000e+00, %1616 ]
  %1648 = phi float [ %1644, %1631 ], [ 0.000000e+00, %1616 ]
  %1649 = phi float [ %1645, %1631 ], [ 0.000000e+00, %1616 ]
  %1650 = and i32 %1626, 2048
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1660, label %1652

; <label>:1652                                    ; preds = %1646
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = shl i32 %1654, 4
  %1656 = and i32 %1655, 32752
  %1657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1656)  ; LegacyF16ToF32(value)
  %1658 = fmul fast float %1657, %1624
  %1659 = call float @dx.op.binary.f32(i32 35, float %1658, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1660

; <label>:1660                                    ; preds = %1652, %1646, %1608
  %1661 = phi float [ %1647, %1652 ], [ %1647, %1646 ], [ 0.000000e+00, %1608 ]
  %1662 = phi float [ %1648, %1652 ], [ %1648, %1646 ], [ 0.000000e+00, %1608 ]
  %1663 = phi float [ %1649, %1652 ], [ %1649, %1646 ], [ 0.000000e+00, %1608 ]
  %1664 = phi float [ %1659, %1652 ], [ 0x3F70101020000000, %1646 ], [ 0x3F70101020000000, %1608 ]
  %1665 = add i32 %42, 112
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = lshr i32 %1667, 8
  %1671 = and i32 %1670, 255
  %1672 = uitofp i32 %1671 to float
  %1673 = call float @dx.op.dot3.f32(i32 55, float %1481, float %1482, float %1483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1674 = fmul fast float %1672, %1673
  %1675 = fadd fast float %1674, %1669
  %1676 = fmul fast float %1675, 0x3F70101020000000
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  br i1 %965, label %1678, label %1686

; <label>:1678                                    ; preds = %1660
  %1679 = fsub fast float 1.000000e+00, %1261
  %1680 = fmul fast float %1679, %949
  %1681 = fmul fast float %1679, %950
  %1682 = fmul fast float %1679, %951
  %1683 = fmul fast float %1679, %952
  %1684 = fmul fast float %1679, %953
  %1685 = fmul fast float %1679, %954
  br label %1686

; <label>:1686                                    ; preds = %1678, %1660
  %1687 = phi float [ %1680, %1678 ], [ %949, %1660 ]
  %1688 = phi float [ %1681, %1678 ], [ %950, %1660 ]
  %1689 = phi float [ %1682, %1678 ], [ %951, %1660 ]
  %1690 = phi float [ %1683, %1678 ], [ %952, %1660 ]
  %1691 = phi float [ %1684, %1678 ], [ %953, %1660 ]
  %1692 = phi float [ %1685, %1678 ], [ %954, %1660 ]
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 3
  %1696 = icmp eq i32 %1695, 3
  br i1 %1696, label %1775, label %1697

; <label>:1697                                    ; preds = %1686
  %1698 = and i32 %1694, 16
  %1699 = icmp ne i32 %1698, 0
  %1700 = select i1 %1699, float %1261, float 0.000000e+00
  %1701 = icmp eq i32 %1695, 0
  br i1 %1701, label %1702, label %1730

; <label>:1702                                    ; preds = %1697
  %1703 = and i32 %1694, 64
  %1704 = icmp ne i32 %1703, 0
  %1705 = select i1 %1704, float %1261, float 0.000000e+00
  %1706 = fsub fast float %1481, %1687
  %1707 = fsub fast float %1482, %1688
  %1708 = fsub fast float %1483, %1689
  %1709 = fmul fast float %1700, %1706
  %1710 = fmul fast float %1700, %1707
  %1711 = fmul fast float %1700, %1708
  %1712 = fadd fast float %1709, %1687
  %1713 = fadd fast float %1710, %1688
  %1714 = fadd fast float %1711, %1689
  %1715 = fsub fast float %1467, %958
  %1716 = fmul fast float %1700, %1715
  %1717 = fadd fast float %1716, %958
  %1718 = fsub fast float %1609, %1690
  %1719 = fsub fast float %1610, %1691
  %1720 = fsub fast float %1611, %1692
  %1721 = fmul fast float %1705, %1718
  %1722 = fmul fast float %1705, %1719
  %1723 = fmul fast float %1705, %1720
  %1724 = fadd fast float %1721, %1690
  %1725 = fadd fast float %1722, %1691
  %1726 = fadd fast float %1723, %1692
  %1727 = fsub fast float %1677, %963
  %1728 = fmul fast float %1700, %1727
  %1729 = fadd fast float %1728, %963
  br label %1775

; <label>:1730                                    ; preds = %1697
  %1731 = icmp eq i32 %1695, 1
  br i1 %1731, label %1732, label %1745

; <label>:1732                                    ; preds = %1730
  %1733 = fadd fast float %1481, -1.000000e+00
  %1734 = fadd fast float %1482, -1.000000e+00
  %1735 = fadd fast float %1483, -1.000000e+00
  %1736 = fmul fast float %1700, %1733
  %1737 = fmul fast float %1700, %1734
  %1738 = fmul fast float %1700, %1735
  %1739 = fadd fast float %1736, 1.000000e+00
  %1740 = fadd fast float %1737, 1.000000e+00
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fmul fast float %1739, %1687
  %1743 = fmul fast float %1740, %1688
  %1744 = fmul fast float %1741, %1689
  br label %1775

; <label>:1745                                    ; preds = %1730
  %1746 = icmp eq i32 %1695, 2
  br i1 %1746, label %1747, label %1775

; <label>:1747                                    ; preds = %1745
  %1748 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1749 = call float @dx.op.unary.f32(i32 24, float %1482)  ; Sqrt(value)
  %1750 = call float @dx.op.unary.f32(i32 24, float %1483)  ; Sqrt(value)
  %1751 = fadd fast float %1748, -5.000000e-01
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fmul fast float %1751, %1700
  %1755 = fmul fast float %1752, %1700
  %1756 = fmul fast float %1753, %1700
  %1757 = fadd fast float %1754, 5.000000e-01
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fmul fast float %1757, 2.000000e+00
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1761, %1687
  %1763 = fadd fast float %1762, %1760
  %1764 = fmul fast float %1763, %1687
  %1765 = fmul fast float %1758, 2.000000e+00
  %1766 = fsub fast float 1.000000e+00, %1765
  %1767 = fmul fast float %1766, %1688
  %1768 = fadd fast float %1767, %1765
  %1769 = fmul fast float %1768, %1688
  %1770 = fmul fast float %1759, 2.000000e+00
  %1771 = fsub fast float 1.000000e+00, %1770
  %1772 = fmul fast float %1771, %1689
  %1773 = fadd fast float %1772, %1770
  %1774 = fmul fast float %1773, %1689
  br label %1775

; <label>:1775                                    ; preds = %1747, %1745, %1732, %1702, %1686
  %1776 = phi float [ %1687, %1686 ], [ %1764, %1747 ], [ %1687, %1745 ], [ %1742, %1732 ], [ %1712, %1702 ]
  %1777 = phi float [ %1688, %1686 ], [ %1769, %1747 ], [ %1688, %1745 ], [ %1743, %1732 ], [ %1713, %1702 ]
  %1778 = phi float [ %1689, %1686 ], [ %1774, %1747 ], [ %1689, %1745 ], [ %1744, %1732 ], [ %1714, %1702 ]
  %1779 = phi float [ %1690, %1686 ], [ %1690, %1747 ], [ %1690, %1745 ], [ %1690, %1732 ], [ %1724, %1702 ]
  %1780 = phi float [ %1691, %1686 ], [ %1691, %1747 ], [ %1691, %1745 ], [ %1691, %1732 ], [ %1725, %1702 ]
  %1781 = phi float [ %1692, %1686 ], [ %1692, %1747 ], [ %1692, %1745 ], [ %1692, %1732 ], [ %1726, %1702 ]
  %1782 = phi float [ %958, %1686 ], [ %958, %1747 ], [ %958, %1745 ], [ %958, %1732 ], [ %1717, %1702 ]
  %1783 = phi float [ %963, %1686 ], [ %963, %1747 ], [ %963, %1745 ], [ %963, %1732 ], [ %1729, %1702 ]
  %1784 = and i32 %1694, 12
  %1785 = icmp eq i32 %1784, 12
  br i1 %1785, label %1892, label %1786

; <label>:1786                                    ; preds = %1775
  %1787 = and i32 %1694, 2097184
  %1788 = icmp eq i32 %1787, 2097184
  %1789 = select i1 %1788, float %1261, float 0.000000e+00
  %1790 = and i32 %1694, 4194336
  %1791 = icmp eq i32 %1790, 4194336
  %1792 = select i1 %1791, float %1261, float 0.000000e+00
  %1793 = and i32 %1694, 8388640
  %1794 = icmp eq i32 %1793, 8388640
  %1795 = select i1 %1794, float %1261, float 0.000000e+00
  %1796 = and i32 %1694, 2048
  %1797 = icmp ne i32 %1796, 0
  %1798 = select i1 %1797, float %1261, float 0.000000e+00
  %1799 = and i32 %1694, 8192
  %1800 = icmp ne i32 %1799, 0
  %1801 = select i1 %1800, float %1261, float 0.000000e+00
  %1802 = icmp eq i32 %1784, 0
  br i1 %1802, label %1803, label %1828

; <label>:1803                                    ; preds = %1786
  %1804 = fsub fast float %1562, %947
  %1805 = fsub fast float %1563, %948
  %1806 = fmul fast float %1789, %1804
  %1807 = fmul fast float %1789, %1805
  %1808 = fadd fast float %1806, %947
  %1809 = fadd fast float %1807, %948
  %1810 = fsub fast float %1564, %961
  %1811 = fmul fast float %1792, %1810
  %1812 = fadd fast float %1811, %961
  %1813 = fsub fast float %1561, %960
  %1814 = fmul fast float %1795, %1813
  %1815 = fadd fast float %1814, %960
  %1816 = fsub fast float %1664, %962
  %1817 = fmul fast float %1798, %1816
  %1818 = fadd fast float %1817, %962
  %1819 = fsub fast float %1661, %955
  %1820 = fsub fast float %1662, %956
  %1821 = fsub fast float %1663, %957
  %1822 = fmul fast float %1801, %1819
  %1823 = fmul fast float %1801, %1820
  %1824 = fmul fast float %1801, %1821
  %1825 = fadd fast float %1822, %955
  %1826 = fadd fast float %1823, %956
  %1827 = fadd fast float %1824, %957
  br label %1892

; <label>:1828                                    ; preds = %1786
  %1829 = icmp eq i32 %1784, 4
  br i1 %1829, label %1830, label %1870

; <label>:1830                                    ; preds = %1828
  %1831 = fmul fast float %1789, %1562
  %1832 = fmul fast float %1789, %1563
  %1833 = fadd fast float %1831, %947
  %1834 = fadd fast float %1832, %948
  %1835 = call float @dx.op.binary.f32(i32 36, float %961, float %1564)  ; FMin(a,b)
  %1836 = fsub fast float %1835, %961
  %1837 = fmul fast float %1836, %1792
  %1838 = fadd fast float %1837, %961
  %1839 = fadd fast float %1561, %960
  %1840 = fmul fast float %1839, 0x3FF337FAE0000000
  %1841 = fmul fast float %960, %960
  %1842 = fmul fast float %1561, %1561
  %1843 = fadd fast float %1842, %1841
  %1844 = fmul fast float %1843, 0x3FE5152B00000000
  %1845 = fmul fast float %960, 0xBFCC1F85E0000000
  %1846 = fmul fast float %1845, %1561
  %1847 = fadd fast float %1846, 0xBFE1363700000000
  %1848 = fadd fast float %1847, %1840
  %1849 = fsub fast float %1848, %1844
  %1850 = fmul fast float %1839, 0x3FBA6F0D00000000
  %1851 = fmul fast float %1843, 0x3FD0432880000000
  %1852 = fmul fast float %960, 0xBFEF110800000000
  %1853 = fmul fast float %1852, %1561
  %1854 = fadd fast float %1853, 1.000000e+00
  %1855 = fsub fast float %1854, %1850
  %1856 = fadd fast float %1855, %1851
  %1857 = fdiv fast float %1849, %1856
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = fsub fast float %1858, %960
  %1860 = fmul fast float %1859, %1795
  %1861 = fadd fast float %1860, %960
  %1862 = fmul fast float %1798, %1664
  %1863 = fadd fast float %1862, %962
  %1864 = fmul fast float %1801, %1661
  %1865 = fmul fast float %1801, %1662
  %1866 = fmul fast float %1801, %1663
  %1867 = fadd fast float %1864, %955
  %1868 = fadd fast float %1865, %956
  %1869 = fadd fast float %1866, %957
  br label %1892

; <label>:1870                                    ; preds = %1828
  %1871 = icmp eq i32 %1784, 8
  br i1 %1871, label %1872, label %1892

; <label>:1872                                    ; preds = %1870
  %1873 = fmul fast float %1789, %1562
  %1874 = fmul fast float %1789, %1563
  %1875 = fadd fast float %1873, %947
  %1876 = fadd fast float %1874, %948
  %1877 = call float @dx.op.binary.f32(i32 36, float %961, float %1564)  ; FMin(a,b)
  %1878 = fsub fast float %1877, %961
  %1879 = fmul fast float %1878, %1792
  %1880 = fadd fast float %1879, %961
  %1881 = fsub fast float %1561, %960
  %1882 = fmul fast float %1795, %1881
  %1883 = fadd fast float %1882, %960
  %1884 = fmul fast float %1798, %1664
  %1885 = fadd fast float %1884, %962
  %1886 = fmul fast float %1801, %1661
  %1887 = fmul fast float %1801, %1662
  %1888 = fmul fast float %1801, %1663
  %1889 = fadd fast float %1886, %955
  %1890 = fadd fast float %1887, %956
  %1891 = fadd fast float %1888, %957
  br label %1892

; <label>:1892                                    ; preds = %1872, %1870, %1830, %1803, %1775, %1260, %964, %946
  %1893 = phi float [ %947, %1775 ], [ %947, %1260 ], [ %947, %946 ], [ %1875, %1872 ], [ %947, %1870 ], [ %1833, %1830 ], [ %1808, %1803 ], [ %947, %964 ]
  %1894 = phi float [ %948, %1775 ], [ %948, %1260 ], [ %948, %946 ], [ %1876, %1872 ], [ %948, %1870 ], [ %1834, %1830 ], [ %1809, %1803 ], [ %948, %964 ]
  %1895 = phi float [ %1776, %1775 ], [ %949, %1260 ], [ %949, %946 ], [ %1776, %1872 ], [ %1776, %1870 ], [ %1776, %1830 ], [ %1776, %1803 ], [ %949, %964 ]
  %1896 = phi float [ %1777, %1775 ], [ %950, %1260 ], [ %950, %946 ], [ %1777, %1872 ], [ %1777, %1870 ], [ %1777, %1830 ], [ %1777, %1803 ], [ %950, %964 ]
  %1897 = phi float [ %1778, %1775 ], [ %951, %1260 ], [ %951, %946 ], [ %1778, %1872 ], [ %1778, %1870 ], [ %1778, %1830 ], [ %1778, %1803 ], [ %951, %964 ]
  %1898 = phi float [ %1779, %1775 ], [ %952, %1260 ], [ %952, %946 ], [ %1779, %1872 ], [ %1779, %1870 ], [ %1779, %1830 ], [ %1779, %1803 ], [ %952, %964 ]
  %1899 = phi float [ %1780, %1775 ], [ %953, %1260 ], [ %953, %946 ], [ %1780, %1872 ], [ %1780, %1870 ], [ %1780, %1830 ], [ %1780, %1803 ], [ %953, %964 ]
  %1900 = phi float [ %1781, %1775 ], [ %954, %1260 ], [ %954, %946 ], [ %1781, %1872 ], [ %1781, %1870 ], [ %1781, %1830 ], [ %1781, %1803 ], [ %954, %964 ]
  %1901 = phi float [ %955, %1775 ], [ %955, %1260 ], [ %955, %946 ], [ %1889, %1872 ], [ %955, %1870 ], [ %1867, %1830 ], [ %1825, %1803 ], [ %955, %964 ]
  %1902 = phi float [ %956, %1775 ], [ %956, %1260 ], [ %956, %946 ], [ %1890, %1872 ], [ %956, %1870 ], [ %1868, %1830 ], [ %1826, %1803 ], [ %956, %964 ]
  %1903 = phi float [ %957, %1775 ], [ %957, %1260 ], [ %957, %946 ], [ %1891, %1872 ], [ %957, %1870 ], [ %1869, %1830 ], [ %1827, %1803 ], [ %957, %964 ]
  %1904 = phi float [ %1782, %1775 ], [ %958, %1260 ], [ %958, %946 ], [ %1782, %1872 ], [ %1782, %1870 ], [ %1782, %1830 ], [ %1782, %1803 ], [ %958, %964 ]
  %1905 = phi float [ %960, %1775 ], [ %960, %1260 ], [ %960, %946 ], [ %1883, %1872 ], [ %960, %1870 ], [ %1861, %1830 ], [ %1815, %1803 ], [ %960, %964 ]
  %1906 = phi float [ %961, %1775 ], [ %961, %1260 ], [ %961, %946 ], [ %1880, %1872 ], [ %961, %1870 ], [ %1838, %1830 ], [ %1812, %1803 ], [ %961, %964 ]
  %1907 = phi float [ %962, %1775 ], [ %962, %1260 ], [ %962, %946 ], [ %1885, %1872 ], [ %962, %1870 ], [ %1863, %1830 ], [ %1818, %1803 ], [ %962, %964 ]
  %1908 = phi float [ %1783, %1775 ], [ %963, %1260 ], [ %963, %946 ], [ %1783, %1872 ], [ %1783, %1870 ], [ %1783, %1830 ], [ %1783, %1803 ], [ %963, %964 ]
  br i1 %373, label %2837, label %1909

; <label>:1909                                    ; preds = %1892
  %1910 = icmp ult i32 %426, 3
  %1911 = add i32 %42, 56
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = add i32 %42, 60
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = or i32 %1916, %1913
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %2837, label %1919

; <label>:1919                                    ; preds = %1909
  %1920 = and i32 %1913, 262144
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %44, float 1.000000e+00
  %1923 = select i1 %1921, float %45, float 0.000000e+00
  %1924 = select i1 %1921, float %46, float 0.000000e+00
  %1925 = select i1 %1921, float %47, float 1.000000e+00
  %1926 = select i1 %1921, float %48, float %69
  %1927 = select i1 %1921, float %49, float %70
  %1928 = add i32 %42, 316
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = lshr i32 %1930, 16
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = fmul fast float %1932, 0x3F50624DE0000000
  %1934 = add i32 %42, 120
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = lshr i32 %1936, 16
  %1938 = and i32 %1937, 255
  %1939 = lshr i32 %1936, 24
  %1940 = add i32 %42, 324
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = and i32 %1942, 65535
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = lshr i32 %1942, 16
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = add i32 %42, 64
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = lshr i32 %1949, 22
  %1951 = shl nuw nsw i32 %1950, 5
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = shl i32 %1949, 4
  %1954 = and i32 %1953, 32752
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = lshr i32 %1949, 7
  %1957 = and i32 %1956, 32752
  %1958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1957)  ; LegacyF16ToF32(value)
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 3
  %1961 = fmul fast float %1960, 1.000000e+03
  %1962 = fmul fast float %323, %1961
  %1963 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %1964 = fadd fast float %1963, %313
  %1965 = fmul fast float %324, %1961
  %1966 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1967 = fadd fast float %1966, %315
  %1968 = fmul fast float %1933, %1961
  %1969 = call float @dx.op.unary.f32(i32 22, float %1968)  ; Frc(value)
  %1970 = fmul fast float %1969, 0x401921FB60000000
  %1971 = fadd fast float %1970, %1952
  %1972 = call float @dx.op.unary.f32(i32 13, float %1971)  ; Sin(value)
  %1973 = call float @dx.op.unary.f32(i32 12, float %1971)  ; Cos(value)
  %1974 = fsub fast float -0.000000e+00, %1972
  %1975 = fadd fast float %1926, -5.000000e-01
  %1976 = fadd fast float %1927, -5.000000e-01
  %1977 = fmul fast float %1944, %1975
  %1978 = fmul fast float %1946, %1976
  %1979 = fadd fast float %1977, 5.000000e-01
  %1980 = fadd fast float %1978, 5.000000e-01
  %1981 = fmul fast float %1955, %1979
  %1982 = fmul fast float %1958, %1980
  %1983 = fmul fast float %1973, %1981
  %1984 = call float @dx.op.tertiary.f32(i32 46, float %1974, float %1982, float %1983)  ; FMad(a,b,c)
  %1985 = fmul fast float %1972, %1981
  %1986 = call float @dx.op.tertiary.f32(i32 46, float %1973, float %1982, float %1985)  ; FMad(a,b,c)
  %1987 = fadd fast float %1964, %1984
  %1988 = fadd fast float %1967, %1986
  %1989 = icmp ugt i32 %1938, 1
  %1990 = icmp ugt i32 %1936, 33554431
  %1991 = or i1 %1990, %1989
  br i1 %1991, label %1992, label %2017

; <label>:1992                                    ; preds = %1919
  %1993 = add i32 %42, 260
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = lshr i32 %1995, 16
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = fmul fast float %1960, %1997
  %1999 = call float @dx.op.unary.f32(i32 22, float %1998)  ; Frc(value)
  %2000 = mul nuw nsw i32 %1938, %1939
  %2001 = uitofp i32 %2000 to float
  %2002 = fmul fast float %1999, %2001
  %2003 = call float @dx.op.unary.f32(i32 27, float %2002)  ; Round_ni(value)
  %2004 = fptoui float %2003 to i32
  %2005 = urem i32 %2004, %1938
  %2006 = udiv i32 %2004, %1939
  %2007 = call float @dx.op.unary.f32(i32 22, float %1987)  ; Frc(value)
  %2008 = call float @dx.op.unary.f32(i32 22, float %1988)  ; Frc(value)
  %2009 = uitofp i32 %2005 to float
  %2010 = uitofp i32 %2006 to float
  %2011 = fadd fast float %2007, %2009
  %2012 = fadd fast float %2008, %2010
  %2013 = uitofp i32 %1938 to float
  %2014 = uitofp i32 %1939 to float
  %2015 = fdiv fast float %2011, %2013
  %2016 = fdiv fast float %2012, %2014
  br label %2017

; <label>:2017                                    ; preds = %1992, %1919
  %2018 = phi float [ %2015, %1992 ], [ %1987, %1919 ]
  %2019 = phi float [ %2016, %1992 ], [ %1988, %1919 ]
  %2020 = and i32 %1913, 16777216
  %2021 = icmp eq i32 %2020, 0
  br i1 %2021, label %2131, label %2022

; <label>:2022                                    ; preds = %2017
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = fadd fast float %2024, %140
  %2028 = fadd fast float %2025, %141
  %2029 = fadd fast float %2026, %142
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2033 = icmp eq i32 %43, 65535
  br i1 %2033, label %2128, label %2034

; <label>:2034                                    ; preds = %2022
  %2035 = lshr i32 %43, 1
  %2036 = shl i32 %2035, 2
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %43, 1
  %2040 = icmp ne i32 %2039, 0
  %2041 = lshr i32 %2038, 16
  %2042 = and i32 %2038, 65535
  %2043 = select i1 %2040, i32 %2041, i32 %2042
  %2044 = icmp eq i32 %2043, 65535
  br i1 %2044, label %2124, label %2045

; <label>:2045                                    ; preds = %2034
  %2046 = mul nuw nsw i32 %2043, 40
  %2047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  %2049 = extractvalue %dx.types.ResRet.f32 %2047, 1
  %2050 = extractvalue %dx.types.ResRet.f32 %2047, 2
  %2051 = add nuw nsw i32 %2046, 12
  %2052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = add nuw nsw i32 %2046, 24
  %2057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = add nuw nsw i32 %2046, 36
  %2062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = fsub fast float %2027, %2048
  %2065 = fsub fast float %2028, %2049
  %2066 = fsub fast float %2029, %2050
  %2067 = fmul fast float %2063, %2064
  %2068 = fmul fast float %2063, %2065
  %2069 = fmul fast float %2063, %2066
  %2070 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = call float @dx.op.unary.f32(i32 27, float %2069)  ; Round_ni(value)
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fadd fast float %2072, 5.000000e-01
  %2076 = fmul fast float %2073, %2053
  %2077 = fmul fast float %2074, %2054
  %2078 = fmul fast float %2075, %2055
  %2079 = shl i32 %43, 2
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = add i32 %2081, 0
  %2083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2084 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2085 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2086 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2083, %dx.types.Handle %37, float %2084, float %2085, float %2086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.ResRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.ResRet.f32 %2087, 2
  %2091 = fmul fast float %2088, 1.023000e+03
  %2092 = fmul fast float %2089, 1.023000e+03
  %2093 = fmul fast float %2090, 1.023000e+03
  %2094 = fadd fast float %2091, 5.000000e-01
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = fadd fast float %2093, 5.000000e-01
  %2097 = call float @dx.op.unary.f32(i32 27, float %2094)  ; Round_ni(value)
  %2098 = call float @dx.op.unary.f32(i32 27, float %2095)  ; Round_ni(value)
  %2099 = call float @dx.op.unary.f32(i32 27, float %2096)  ; Round_ni(value)
  %2100 = fsub fast float %2067, %2070
  %2101 = fsub fast float %2068, %2071
  %2102 = fsub fast float %2069, %2072
  %2103 = fmul fast float %2100, 7.500000e-01
  %2104 = fmul fast float %2101, 7.500000e-01
  %2105 = fmul fast float %2102, 7.500000e-01
  %2106 = fadd fast float %2070, 1.250000e-01
  %2107 = fadd fast float %2106, %2103
  %2108 = fadd fast float %2107, %2097
  %2109 = fadd fast float %2071, 1.250000e-01
  %2110 = fadd fast float %2109, %2104
  %2111 = fadd fast float %2110, %2098
  %2112 = fadd fast float %2072, 1.250000e-01
  %2113 = fadd fast float %2112, %2105
  %2114 = fadd fast float %2113, %2099
  %2115 = fmul fast float %2108, %2058
  %2116 = fmul fast float %2111, %2059
  %2117 = fmul fast float %2114, %2060
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = add i32 %2119, 0
  %2121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2121, %dx.types.Handle %35, float %2115, float %2116, float %2117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  br label %2124

; <label>:2124                                    ; preds = %2045, %2034
  %2125 = phi float [ %2123, %2045 ], [ -1.000000e+00, %2034 ]
  %2126 = fadd fast float %2125, %2032
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  br label %2128

; <label>:2128                                    ; preds = %2124, %2022
  %2129 = phi float [ %2127, %2124 ], [ %2032, %2022 ]
  %2130 = fmul fast float %2129, %422
  br label %2131

; <label>:2131                                    ; preds = %2128, %2017
  %2132 = phi float [ %2130, %2128 ], [ %422, %2017 ]
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 256
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2183, label %2137

; <label>:2137                                    ; preds = %2131
  %2138 = add i32 %42, 432
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = add i32 %2140, 0
  %2142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2142, %dx.types.Handle %78, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  %2145 = add i32 %42, 132
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = shl i32 %2147, 4
  %2149 = and i32 %2148, 32752
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = lshr i32 %2147, 7
  %2152 = and i32 %2151, 32752
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = fsub fast float 1.000000e+00, %2132
  %2155 = call float @dx.op.binary.f32(i32 35, float %2154, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2156 = bitcast float %2132 to i32
  %2157 = sitofp i32 %2156 to float
  %2158 = fadd fast float %2157, 0xC1CFBF8940000000
  %2159 = fmul fast float %2153, %2158
  %2160 = fadd fast float %2159, 0x41CFBF8940000000
  %2161 = fptosi float %2160 to i32
  %2162 = bitcast i32 %2161 to float
  %2163 = bitcast float %2155 to i32
  %2164 = sitofp i32 %2163 to float
  %2165 = fadd fast float %2164, 0xC1CFBF8940000000
  %2166 = fmul fast float %2165, %2153
  %2167 = fadd fast float %2166, 0x41CFBF8940000000
  %2168 = fptosi float %2167 to i32
  %2169 = bitcast i32 %2168 to float
  %2170 = fmul fast float %2162, %2150
  %2171 = fmul fast float %2169, %2150
  %2172 = fsub fast float %2155, %2170
  %2173 = fadd fast float %2171, %2155
  %2174 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2175 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2176 = fsub fast float %2144, %2174
  %2177 = fsub fast float %2175, %2174
  %2178 = bitcast float %2177 to i32
  %2179 = sub nsw i32 2129859010, %2178
  %2180 = bitcast i32 %2179 to float
  %2181 = fmul fast float %2180, %2176
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  br label %2183

; <label>:2183                                    ; preds = %2137, %2131
  %2184 = phi float [ %2182, %2137 ], [ %2132, %2131 ]
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 128
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2205, label %2189

; <label>:2189                                    ; preds = %2183
  %2190 = add i32 %42, 416
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %2192, 0
  %2194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2194, %dx.types.Handle %78, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %2198, 524288
  %2200 = icmp ne i32 %2199, 0
  %2201 = fcmp fast ogt float %2196, 0x3FE0101020000000
  %2202 = select i1 %2201, float 1.000000e+00, float 0.000000e+00
  %2203 = select i1 %2200, float %2202, float %2196
  %2204 = fmul fast float %2203, %2184
  br label %2205

; <label>:2205                                    ; preds = %2189, %2183
  %2206 = phi float [ %2204, %2189 ], [ %2184, %2183 ]
  %2207 = fcmp fast ult float %2206, 0x3F70101020000000
  br i1 %2207, label %2837, label %2208

; <label>:2208                                    ; preds = %2205
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 16
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2411, label %2213

; <label>:2213                                    ; preds = %2208
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %42, 368
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %2218, 0
  %2220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2220, %dx.types.Handle %77, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.f32 %2221, 1
  %2224 = extractvalue %dx.types.ResRet.f32 %2221, 2
  %2225 = extractvalue %dx.types.ResRet.f32 %2221, 3
  %2226 = and i32 %2215, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = lshr i32 %2215, 8
  %2229 = and i32 %2228, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2225, %2227
  %2232 = fadd fast float %2231, %2230
  %2233 = fmul fast float %2232, 0x3F70101000000000
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = and i32 %2235, 512
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2246, label %2238

; <label>:2238                                    ; preds = %2213
  %2239 = add i32 %42, 448
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = add i32 %2241, 0
  %2243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2243, %dx.types.Handle %78, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  br label %2246

; <label>:2246                                    ; preds = %2238, %2213
  %2247 = phi float [ %2245, %2238 ], [ 1.000000e+00, %2213 ]
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 33554432
  %2251 = icmp eq i32 %2250, 0
  br i1 %2251, label %2358, label %2252

; <label>:2252                                    ; preds = %2246
  %2253 = add i32 %42, 256
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 65535
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = lshr i32 %2255, 16
  %2259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2258)  ; LegacyF16ToF32(value)
  %2260 = add i32 %42, 260
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = and i32 %2262, 65535
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = lshr i32 %2266, 24
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = and i32 %2266, 255
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101020000000
  %2273 = lshr i32 %2266, 8
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101020000000
  %2277 = lshr i32 %2266, 16
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = add i32 %42, 252
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = lshr i32 %2283, 24
  %2285 = uitofp i32 %2284 to float
  %2286 = fmul fast float %2285, 0x3F70101020000000
  %2287 = and i32 %2283, 255
  %2288 = uitofp i32 %2287 to float
  %2289 = fmul fast float %2288, 0x3F70101020000000
  %2290 = lshr i32 %2283, 8
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2292, 0x3F70101020000000
  %2294 = lshr i32 %2283, 16
  %2295 = and i32 %2294, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101020000000
  %2298 = bitcast float %2222 to i32
  %2299 = ashr i32 %2298, 1
  %2300 = sub nsw i32 1597463174, %2299
  %2301 = bitcast i32 %2300 to float
  %2302 = fmul fast float %2222, 5.000000e-01
  %2303 = fmul fast float %2301, %2301
  %2304 = fmul fast float %2303, %2302
  %2305 = fsub fast float 1.500000e+00, %2304
  %2306 = fmul fast float %2301, %2222
  %2307 = fmul fast float %2306, %2305
  %2308 = bitcast float %2223 to i32
  %2309 = ashr i32 %2308, 1
  %2310 = sub nsw i32 1597463174, %2309
  %2311 = bitcast i32 %2310 to float
  %2312 = fmul fast float %2223, 5.000000e-01
  %2313 = fmul fast float %2311, %2311
  %2314 = fmul fast float %2313, %2312
  %2315 = fsub fast float 1.500000e+00, %2314
  %2316 = fmul fast float %2311, %2223
  %2317 = fmul fast float %2316, %2315
  %2318 = bitcast float %2224 to i32
  %2319 = ashr i32 %2318, 1
  %2320 = sub nsw i32 1597463174, %2319
  %2321 = bitcast i32 %2320 to float
  %2322 = fmul fast float %2224, 5.000000e-01
  %2323 = fmul fast float %2321, %2321
  %2324 = fmul fast float %2323, %2322
  %2325 = fsub fast float 1.500000e+00, %2324
  %2326 = fmul fast float %2321, %2224
  %2327 = fmul fast float %2326, %2325
  %2328 = fsub fast float %2307, %2289
  %2329 = fsub fast float %2317, %2293
  %2330 = fsub fast float %2327, %2297
  %2331 = fmul fast float %2328, %2257
  %2332 = fmul fast float %2329, %2259
  %2333 = fmul fast float %2330, %2264
  %2334 = fadd fast float %2331, %2272
  %2335 = fadd fast float %2332, %2276
  %2336 = fadd fast float %2333, %2280
  %2337 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2338 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2340 = fmul fast float %2337, %2337
  %2341 = fmul fast float %2338, %2338
  %2342 = fmul fast float %2339, %2339
  %2343 = fsub fast float %2340, %2222
  %2344 = fsub fast float %2341, %2223
  %2345 = fsub fast float %2342, %2224
  %2346 = fmul fast float %2343, %2247
  %2347 = fmul fast float %2344, %2247
  %2348 = fmul fast float %2345, %2247
  %2349 = fadd fast float %2346, %2222
  %2350 = fadd fast float %2347, %2223
  %2351 = fadd fast float %2348, %2224
  %2352 = fadd fast float %2269, %2233
  %2353 = fsub fast float %2352, %2286
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = fsub fast float %2354, %2233
  %2356 = fmul fast float %2355, %2247
  %2357 = fadd fast float %2356, %2233
  br label %2411

; <label>:2358                                    ; preds = %2246
  %2359 = and i32 %2249, 134217728
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2395, label %2361

; <label>:2361                                    ; preds = %2358
  %2362 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %2363 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %2365 = fadd fast float %2362, -5.000000e-01
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fadd fast float %2364, -5.000000e-01
  %2368 = fmul fast float %2365, %2247
  %2369 = fmul fast float %2366, %2247
  %2370 = fmul fast float %2367, %2247
  %2371 = fadd fast float %2368, 5.000000e-01
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2375 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2377 = fmul fast float %2371, 2.000000e+00
  %2378 = fsub fast float 1.000000e+00, %2377
  %2379 = fmul fast float %2378, %2374
  %2380 = fadd fast float %2379, %2377
  %2381 = fmul fast float %2380, %2374
  %2382 = fmul fast float %2372, 2.000000e+00
  %2383 = fsub fast float 1.000000e+00, %2382
  %2384 = fmul fast float %2383, %2375
  %2385 = fadd fast float %2384, %2382
  %2386 = fmul fast float %2385, %2375
  %2387 = fmul fast float %2373, 2.000000e+00
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = fmul fast float %2388, %2376
  %2390 = fadd fast float %2389, %2387
  %2391 = fmul fast float %2390, %2376
  %2392 = fmul fast float %2381, %2381
  %2393 = fmul fast float %2386, %2386
  %2394 = fmul fast float %2391, %2391
  br label %2411

; <label>:2395                                    ; preds = %2358
  %2396 = fmul fast float %300, %300
  %2397 = fmul fast float %304, %304
  %2398 = fmul fast float %308, %308
  %2399 = fadd fast float %2396, -1.000000e+00
  %2400 = fadd fast float %2397, -1.000000e+00
  %2401 = fadd fast float %2398, -1.000000e+00
  %2402 = fmul fast float %2247, %2399
  %2403 = fmul fast float %2247, %2400
  %2404 = fmul fast float %2247, %2401
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fmul fast float %2405, %2222
  %2409 = fmul fast float %2406, %2223
  %2410 = fmul fast float %2407, %2224
  br label %2411

; <label>:2411                                    ; preds = %2395, %2361, %2252, %2208
  %2412 = phi float [ %2357, %2252 ], [ %2233, %2361 ], [ %2233, %2395 ], [ 0x3FA23C0BE0000000, %2208 ]
  %2413 = phi float [ %2349, %2252 ], [ %2392, %2361 ], [ %2408, %2395 ], [ 1.000000e+00, %2208 ]
  %2414 = phi float [ %2350, %2252 ], [ %2393, %2361 ], [ %2409, %2395 ], [ 1.000000e+00, %2208 ]
  %2415 = phi float [ %2351, %2252 ], [ %2394, %2361 ], [ %2410, %2395 ], [ 1.000000e+00, %2208 ]
  %2416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.i32 %2416, 1
  %2418 = and i32 %2417, 1
  %2419 = icmp ne i32 %2418, 0
  %2420 = add i32 %42, 356
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 32
  %2424 = icmp ne i32 %2423, 0
  %2425 = and i1 %2419, %2424
  %2426 = select i1 %2425, float 1.000000e+00, float %2413
  %2427 = select i1 %2425, float 0x3FD3333340000000, float %2414
  %2428 = select i1 %2425, float 0x3FD3333340000000, float %2415
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 32
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %2505, label %2433

; <label>:2433                                    ; preds = %2411
  %2434 = add i32 %42, 124
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = add i32 %42, 384
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = add i32 %2439, 0
  %2441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2441, %dx.types.Handle %77, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.ResRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.ResRet.f32 %2442, 2
  %2446 = extractvalue %dx.types.ResRet.f32 %2442, 3
  %2447 = and i32 %2436, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = lshr i32 %2436, 8
  %2450 = and i32 %2449, 255
  %2451 = uitofp i32 %2450 to float
  %2452 = lshr i32 %2436, 16
  %2453 = and i32 %2452, 255
  %2454 = uitofp i32 %2453 to float
  %2455 = fmul fast float %2454, 0x3F70101000000000
  %2456 = fmul fast float %2443, %2448
  %2457 = fadd fast float %2456, %2451
  %2458 = fmul fast float %2457, 0x3F70101000000000
  %2459 = fadd fast float %2444, -5.000000e-01
  %2460 = fadd fast float %2446, -5.000000e-01
  %2461 = fmul fast float %2459, %2455
  %2462 = fmul fast float %2460, %2455
  %2463 = fadd fast float %2461, 5.000000e-01
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fmul fast float %2463, 2.000000e+00
  %2466 = fadd fast float %2465, -1.000000e+00
  %2467 = fmul fast float %2464, 2.000000e+00
  %2468 = fadd fast float %2467, -1.000000e+00
  %2469 = fadd fast float %2466, %2468
  %2470 = fmul fast float %2469, 5.000000e-01
  %2471 = fsub fast float %2466, %2468
  %2472 = fmul fast float %2471, 5.000000e-01
  %2473 = call float @dx.op.unary.f32(i32 6, float %2470)  ; FAbs(value)
  %2474 = fsub fast float 1.000000e+00, %2473
  %2475 = call float @dx.op.unary.f32(i32 6, float %2472)  ; FAbs(value)
  %2476 = fsub fast float %2474, %2475
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2470, float %2472, float %2476, float %2470, float %2472, float %2476)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = call float @dx.op.unary.f32(i32 25, float %2477)  ; Rsqrt(value)
  %2479 = fmul fast float %2470, %2478
  %2480 = fmul fast float %2472, %2478
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 67108864
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2501, label %2485

; <label>:2485                                    ; preds = %2433
  %2486 = add i32 %42, 312
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 65535
  %2490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2489)  ; LegacyF16ToF32(value)
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = and i32 %2492, 65535
  %2494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2493)  ; LegacyF16ToF32(value)
  %2495 = lshr i32 %2488, 16
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = fsub fast float %2458, %2496
  %2498 = fmul fast float %2497, %2490
  %2499 = fadd fast float %2498, %2494
  %2500 = call float @dx.op.unary.f32(i32 7, float %2499)  ; Saturate(value)
  br label %2501

; <label>:2501                                    ; preds = %2485, %2433
  %2502 = phi float [ %2500, %2485 ], [ %2458, %2433 ]
  %2503 = call float @dx.op.dot2.f32(i32 54, float %2479, float %2480, float %1922, float %1923)  ; Dot2(ax,ay,bx,by)
  %2504 = call float @dx.op.dot2.f32(i32 54, float %2479, float %2480, float %1924, float %1925)  ; Dot2(ax,ay,bx,by)
  br label %2505

; <label>:2505                                    ; preds = %2501, %2411
  %2506 = phi float [ %2502, %2501 ], [ 0x3FD6666660000000, %2411 ]
  %2507 = phi float [ %2503, %2501 ], [ 0.000000e+00, %2411 ]
  %2508 = phi float [ %2504, %2501 ], [ 0.000000e+00, %2411 ]
  %2509 = phi float [ %2445, %2501 ], [ 1.000000e+00, %2411 ]
  %2510 = add i32 %42, 192
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = lshr i32 %2512, 22
  %2514 = shl nuw nsw i32 %2513, 5
  %2515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2514)  ; LegacyF16ToF32(value)
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 64
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2553, label %2520

; <label>:2520                                    ; preds = %2505
  %2521 = add i32 %42, 400
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %2523, 0
  %2525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 131072
  %2529 = icmp eq i32 %2528, 0
  %2530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2525, %dx.types.Handle %77, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = fmul fast float %2531, %288
  %2535 = fmul fast float %2532, %291
  %2536 = fmul fast float %2533, %294
  br i1 %2529, label %2543, label %2537

; <label>:2537                                    ; preds = %2520
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = fmul fast float %2539, %2534
  %2541 = fmul fast float %2539, %2535
  %2542 = fmul fast float %2539, %2536
  br label %2543

; <label>:2543                                    ; preds = %2537, %2520
  %2544 = phi float [ %2540, %2537 ], [ %2534, %2520 ]
  %2545 = phi float [ %2541, %2537 ], [ %2535, %2520 ]
  %2546 = phi float [ %2542, %2537 ], [ %2536, %2520 ]
  %2547 = fmul fast float %2544, %2515
  %2548 = select i1 %184, float %2547, float %2544
  %2549 = call float @dx.op.dot3.f32(i32 55, float %2548, float %2545, float %2546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2550 = select i1 %184, float 0.000000e+00, float %2544
  %2551 = select i1 %184, float %2549, float %2545
  %2552 = select i1 %184, float 0.000000e+00, float %2546
  br label %2553

; <label>:2553                                    ; preds = %2543, %2505
  %2554 = phi float [ %2550, %2543 ], [ 0.000000e+00, %2505 ]
  %2555 = phi float [ %2551, %2543 ], [ 0.000000e+00, %2505 ]
  %2556 = phi float [ %2552, %2543 ], [ 0.000000e+00, %2505 ]
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 10240
  %2560 = icmp eq i32 %2559, 0
  br i1 %2560, label %2605, label %2561

; <label>:2561                                    ; preds = %2553
  %2562 = add i32 %42, 464
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = add i32 %2564, 0
  %2566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2566, %dx.types.Handle %78, float %2018, float %2019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2568 = extractvalue %dx.types.ResRet.f32 %2567, 1
  %2569 = extractvalue %dx.types.ResRet.f32 %2567, 3
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 1048576
  %2573 = icmp ne i32 %2572, 0
  %2574 = and i32 %2571, 8192
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2591, label %2576

; <label>:2576                                    ; preds = %2561
  %2577 = extractvalue %dx.types.ResRet.f32 %2567, 2
  %2578 = select i1 %2573, float %2577, float %2568
  %2579 = extractvalue %dx.types.ResRet.f32 %2567, 0
  %2580 = select i1 %2573, float %2579, float %2568
  %2581 = add i32 %42, 128
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = lshr i32 %2583, 16
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = fmul fast float %2586, 0x3F80101020000000
  %2588 = fmul fast float %2587, %2580
  %2589 = fmul fast float %2587, %2568
  %2590 = fmul fast float %2587, %2578
  br label %2591

; <label>:2591                                    ; preds = %2576, %2561
  %2592 = phi float [ %2588, %2576 ], [ 0.000000e+00, %2561 ]
  %2593 = phi float [ %2589, %2576 ], [ 0.000000e+00, %2561 ]
  %2594 = phi float [ %2590, %2576 ], [ 0.000000e+00, %2561 ]
  %2595 = and i32 %2571, 2048
  %2596 = icmp eq i32 %2595, 0
  br i1 %2596, label %2605, label %2597

; <label>:2597                                    ; preds = %2591
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = shl i32 %2599, 4
  %2601 = and i32 %2600, 32752
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = fmul fast float %2602, %2569
  %2604 = call float @dx.op.binary.f32(i32 35, float %2603, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2605

; <label>:2605                                    ; preds = %2597, %2591, %2553
  %2606 = phi float [ %2592, %2597 ], [ %2592, %2591 ], [ 0.000000e+00, %2553 ]
  %2607 = phi float [ %2593, %2597 ], [ %2593, %2591 ], [ 0.000000e+00, %2553 ]
  %2608 = phi float [ %2594, %2597 ], [ %2594, %2591 ], [ 0.000000e+00, %2553 ]
  %2609 = phi float [ %2604, %2597 ], [ 0x3F70101020000000, %2591 ], [ 0x3F70101020000000, %2553 ]
  %2610 = add i32 %42, 128
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 255
  %2614 = uitofp i32 %2613 to float
  %2615 = lshr i32 %2612, 8
  %2616 = and i32 %2615, 255
  %2617 = uitofp i32 %2616 to float
  %2618 = call float @dx.op.dot3.f32(i32 55, float %2426, float %2427, float %2428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2619 = fmul fast float %2617, %2618
  %2620 = fadd fast float %2619, %2614
  %2621 = fmul fast float %2620, 0x3F70101020000000
  %2622 = call float @dx.op.unary.f32(i32 7, float %2621)  ; Saturate(value)
  br i1 %1910, label %2623, label %2631

; <label>:2623                                    ; preds = %2605
  %2624 = fsub fast float 1.000000e+00, %2206
  %2625 = fmul fast float %2624, %1895
  %2626 = fmul fast float %2624, %1896
  %2627 = fmul fast float %2624, %1897
  %2628 = fmul fast float %2624, %1898
  %2629 = fmul fast float %2624, %1899
  %2630 = fmul fast float %2624, %1900
  br label %2631

; <label>:2631                                    ; preds = %2623, %2605
  %2632 = phi float [ %2625, %2623 ], [ %1895, %2605 ]
  %2633 = phi float [ %2626, %2623 ], [ %1896, %2605 ]
  %2634 = phi float [ %2627, %2623 ], [ %1897, %2605 ]
  %2635 = phi float [ %2628, %2623 ], [ %1898, %2605 ]
  %2636 = phi float [ %2629, %2623 ], [ %1899, %2605 ]
  %2637 = phi float [ %2630, %2623 ], [ %1900, %2605 ]
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 3
  %2641 = icmp eq i32 %2640, 3
  br i1 %2641, label %2720, label %2642

; <label>:2642                                    ; preds = %2631
  %2643 = and i32 %2639, 16
  %2644 = icmp ne i32 %2643, 0
  %2645 = select i1 %2644, float %2206, float 0.000000e+00
  %2646 = icmp eq i32 %2640, 0
  br i1 %2646, label %2647, label %2675

; <label>:2647                                    ; preds = %2642
  %2648 = and i32 %2639, 64
  %2649 = icmp ne i32 %2648, 0
  %2650 = select i1 %2649, float %2206, float 0.000000e+00
  %2651 = fsub fast float %2426, %2632
  %2652 = fsub fast float %2427, %2633
  %2653 = fsub fast float %2428, %2634
  %2654 = fmul fast float %2645, %2651
  %2655 = fmul fast float %2645, %2652
  %2656 = fmul fast float %2645, %2653
  %2657 = fadd fast float %2654, %2632
  %2658 = fadd fast float %2655, %2633
  %2659 = fadd fast float %2656, %2634
  %2660 = fsub fast float %2412, %1904
  %2661 = fmul fast float %2645, %2660
  %2662 = fadd fast float %2661, %1904
  %2663 = fsub fast float %2554, %2635
  %2664 = fsub fast float %2555, %2636
  %2665 = fsub fast float %2556, %2637
  %2666 = fmul fast float %2650, %2663
  %2667 = fmul fast float %2650, %2664
  %2668 = fmul fast float %2650, %2665
  %2669 = fadd fast float %2666, %2635
  %2670 = fadd fast float %2667, %2636
  %2671 = fadd fast float %2668, %2637
  %2672 = fsub fast float %2622, %1908
  %2673 = fmul fast float %2645, %2672
  %2674 = fadd fast float %2673, %1908
  br label %2720

; <label>:2675                                    ; preds = %2642
  %2676 = icmp eq i32 %2640, 1
  br i1 %2676, label %2677, label %2690

; <label>:2677                                    ; preds = %2675
  %2678 = fadd fast float %2426, -1.000000e+00
  %2679 = fadd fast float %2427, -1.000000e+00
  %2680 = fadd fast float %2428, -1.000000e+00
  %2681 = fmul fast float %2645, %2678
  %2682 = fmul fast float %2645, %2679
  %2683 = fmul fast float %2645, %2680
  %2684 = fadd fast float %2681, 1.000000e+00
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fadd fast float %2683, 1.000000e+00
  %2687 = fmul fast float %2684, %2632
  %2688 = fmul fast float %2685, %2633
  %2689 = fmul fast float %2686, %2634
  br label %2720

; <label>:2690                                    ; preds = %2675
  %2691 = icmp eq i32 %2640, 2
  br i1 %2691, label %2692, label %2720

; <label>:2692                                    ; preds = %2690
  %2693 = call float @dx.op.unary.f32(i32 24, float %2426)  ; Sqrt(value)
  %2694 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2695 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2696 = fadd fast float %2693, -5.000000e-01
  %2697 = fadd fast float %2694, -5.000000e-01
  %2698 = fadd fast float %2695, -5.000000e-01
  %2699 = fmul fast float %2696, %2645
  %2700 = fmul fast float %2697, %2645
  %2701 = fmul fast float %2698, %2645
  %2702 = fadd fast float %2699, 5.000000e-01
  %2703 = fadd fast float %2700, 5.000000e-01
  %2704 = fadd fast float %2701, 5.000000e-01
  %2705 = fmul fast float %2702, 2.000000e+00
  %2706 = fsub fast float 1.000000e+00, %2705
  %2707 = fmul fast float %2706, %2632
  %2708 = fadd fast float %2707, %2705
  %2709 = fmul fast float %2708, %2632
  %2710 = fmul fast float %2703, 2.000000e+00
  %2711 = fsub fast float 1.000000e+00, %2710
  %2712 = fmul fast float %2711, %2633
  %2713 = fadd fast float %2712, %2710
  %2714 = fmul fast float %2713, %2633
  %2715 = fmul fast float %2704, 2.000000e+00
  %2716 = fsub fast float 1.000000e+00, %2715
  %2717 = fmul fast float %2716, %2634
  %2718 = fadd fast float %2717, %2715
  %2719 = fmul fast float %2718, %2634
  br label %2720

; <label>:2720                                    ; preds = %2692, %2690, %2677, %2647, %2631
  %2721 = phi float [ %2632, %2631 ], [ %2709, %2692 ], [ %2632, %2690 ], [ %2687, %2677 ], [ %2657, %2647 ]
  %2722 = phi float [ %2633, %2631 ], [ %2714, %2692 ], [ %2633, %2690 ], [ %2688, %2677 ], [ %2658, %2647 ]
  %2723 = phi float [ %2634, %2631 ], [ %2719, %2692 ], [ %2634, %2690 ], [ %2689, %2677 ], [ %2659, %2647 ]
  %2724 = phi float [ %2635, %2631 ], [ %2635, %2692 ], [ %2635, %2690 ], [ %2635, %2677 ], [ %2669, %2647 ]
  %2725 = phi float [ %2636, %2631 ], [ %2636, %2692 ], [ %2636, %2690 ], [ %2636, %2677 ], [ %2670, %2647 ]
  %2726 = phi float [ %2637, %2631 ], [ %2637, %2692 ], [ %2637, %2690 ], [ %2637, %2677 ], [ %2671, %2647 ]
  %2727 = phi float [ %1904, %2631 ], [ %1904, %2692 ], [ %1904, %2690 ], [ %1904, %2677 ], [ %2662, %2647 ]
  %2728 = phi float [ %1908, %2631 ], [ %1908, %2692 ], [ %1908, %2690 ], [ %1908, %2677 ], [ %2674, %2647 ]
  %2729 = and i32 %2639, 12
  %2730 = icmp eq i32 %2729, 12
  br i1 %2730, label %2837, label %2731

; <label>:2731                                    ; preds = %2720
  %2732 = and i32 %2639, 2097184
  %2733 = icmp eq i32 %2732, 2097184
  %2734 = select i1 %2733, float %2206, float 0.000000e+00
  %2735 = and i32 %2639, 4194336
  %2736 = icmp eq i32 %2735, 4194336
  %2737 = select i1 %2736, float %2206, float 0.000000e+00
  %2738 = and i32 %2639, 8388640
  %2739 = icmp eq i32 %2738, 8388640
  %2740 = select i1 %2739, float %2206, float 0.000000e+00
  %2741 = and i32 %2639, 2048
  %2742 = icmp ne i32 %2741, 0
  %2743 = select i1 %2742, float %2206, float 0.000000e+00
  %2744 = and i32 %2639, 8192
  %2745 = icmp ne i32 %2744, 0
  %2746 = select i1 %2745, float %2206, float 0.000000e+00
  %2747 = icmp eq i32 %2729, 0
  br i1 %2747, label %2748, label %2773

; <label>:2748                                    ; preds = %2731
  %2749 = fsub fast float %2507, %1893
  %2750 = fsub fast float %2508, %1894
  %2751 = fmul fast float %2734, %2749
  %2752 = fmul fast float %2734, %2750
  %2753 = fadd fast float %2751, %1893
  %2754 = fadd fast float %2752, %1894
  %2755 = fsub fast float %2509, %1906
  %2756 = fmul fast float %2737, %2755
  %2757 = fadd fast float %2756, %1906
  %2758 = fsub fast float %2506, %1905
  %2759 = fmul fast float %2740, %2758
  %2760 = fadd fast float %2759, %1905
  %2761 = fsub fast float %2609, %1907
  %2762 = fmul fast float %2743, %2761
  %2763 = fadd fast float %2762, %1907
  %2764 = fsub fast float %2606, %1901
  %2765 = fsub fast float %2607, %1902
  %2766 = fsub fast float %2608, %1903
  %2767 = fmul fast float %2746, %2764
  %2768 = fmul fast float %2746, %2765
  %2769 = fmul fast float %2746, %2766
  %2770 = fadd fast float %2767, %1901
  %2771 = fadd fast float %2768, %1902
  %2772 = fadd fast float %2769, %1903
  br label %2837

; <label>:2773                                    ; preds = %2731
  %2774 = icmp eq i32 %2729, 4
  br i1 %2774, label %2775, label %2815

; <label>:2775                                    ; preds = %2773
  %2776 = fmul fast float %2734, %2507
  %2777 = fmul fast float %2734, %2508
  %2778 = fadd fast float %2776, %1893
  %2779 = fadd fast float %2777, %1894
  %2780 = call float @dx.op.binary.f32(i32 36, float %1906, float %2509)  ; FMin(a,b)
  %2781 = fsub fast float %2780, %1906
  %2782 = fmul fast float %2781, %2737
  %2783 = fadd fast float %2782, %1906
  %2784 = fadd fast float %2506, %1905
  %2785 = fmul fast float %2784, 0x3FF337FAE0000000
  %2786 = fmul fast float %1905, %1905
  %2787 = fmul fast float %2506, %2506
  %2788 = fadd fast float %2787, %2786
  %2789 = fmul fast float %2788, 0x3FE5152B00000000
  %2790 = fmul fast float %1905, 0xBFCC1F85E0000000
  %2791 = fmul fast float %2790, %2506
  %2792 = fadd fast float %2791, 0xBFE1363700000000
  %2793 = fadd fast float %2792, %2785
  %2794 = fsub fast float %2793, %2789
  %2795 = fmul fast float %2784, 0x3FBA6F0D00000000
  %2796 = fmul fast float %2788, 0x3FD0432880000000
  %2797 = fmul fast float %1905, 0xBFEF110800000000
  %2798 = fmul fast float %2797, %2506
  %2799 = fadd fast float %2798, 1.000000e+00
  %2800 = fsub fast float %2799, %2795
  %2801 = fadd fast float %2800, %2796
  %2802 = fdiv fast float %2794, %2801
  %2803 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2804 = fsub fast float %2803, %1905
  %2805 = fmul fast float %2804, %2740
  %2806 = fadd fast float %2805, %1905
  %2807 = fmul fast float %2743, %2609
  %2808 = fadd fast float %2807, %1907
  %2809 = fmul fast float %2746, %2606
  %2810 = fmul fast float %2746, %2607
  %2811 = fmul fast float %2746, %2608
  %2812 = fadd fast float %2809, %1901
  %2813 = fadd fast float %2810, %1902
  %2814 = fadd fast float %2811, %1903
  br label %2837

; <label>:2815                                    ; preds = %2773
  %2816 = icmp eq i32 %2729, 8
  br i1 %2816, label %2817, label %2837

; <label>:2817                                    ; preds = %2815
  %2818 = fmul fast float %2734, %2507
  %2819 = fmul fast float %2734, %2508
  %2820 = fadd fast float %2818, %1893
  %2821 = fadd fast float %2819, %1894
  %2822 = call float @dx.op.binary.f32(i32 36, float %1906, float %2509)  ; FMin(a,b)
  %2823 = fsub fast float %2822, %1906
  %2824 = fmul fast float %2823, %2737
  %2825 = fadd fast float %2824, %1906
  %2826 = fsub fast float %2506, %1905
  %2827 = fmul fast float %2740, %2826
  %2828 = fadd fast float %2827, %1905
  %2829 = fmul fast float %2743, %2609
  %2830 = fadd fast float %2829, %1907
  %2831 = fmul fast float %2746, %2606
  %2832 = fmul fast float %2746, %2607
  %2833 = fmul fast float %2746, %2608
  %2834 = fadd fast float %2831, %1901
  %2835 = fadd fast float %2832, %1902
  %2836 = fadd fast float %2833, %1903
  br label %2837

; <label>:2837                                    ; preds = %2817, %2815, %2775, %2748, %2720, %2205, %1909, %1892
  %2838 = phi float [ %1893, %2720 ], [ %1893, %2205 ], [ %1893, %1892 ], [ %2820, %2817 ], [ %1893, %2815 ], [ %2778, %2775 ], [ %2753, %2748 ], [ %1893, %1909 ]
  %2839 = phi float [ %1894, %2720 ], [ %1894, %2205 ], [ %1894, %1892 ], [ %2821, %2817 ], [ %1894, %2815 ], [ %2779, %2775 ], [ %2754, %2748 ], [ %1894, %1909 ]
  %2840 = phi float [ %2721, %2720 ], [ %1895, %2205 ], [ %1895, %1892 ], [ %2721, %2817 ], [ %2721, %2815 ], [ %2721, %2775 ], [ %2721, %2748 ], [ %1895, %1909 ]
  %2841 = phi float [ %2722, %2720 ], [ %1896, %2205 ], [ %1896, %1892 ], [ %2722, %2817 ], [ %2722, %2815 ], [ %2722, %2775 ], [ %2722, %2748 ], [ %1896, %1909 ]
  %2842 = phi float [ %2723, %2720 ], [ %1897, %2205 ], [ %1897, %1892 ], [ %2723, %2817 ], [ %2723, %2815 ], [ %2723, %2775 ], [ %2723, %2748 ], [ %1897, %1909 ]
  %2843 = phi float [ %2724, %2720 ], [ %1898, %2205 ], [ %1898, %1892 ], [ %2724, %2817 ], [ %2724, %2815 ], [ %2724, %2775 ], [ %2724, %2748 ], [ %1898, %1909 ]
  %2844 = phi float [ %2725, %2720 ], [ %1899, %2205 ], [ %1899, %1892 ], [ %2725, %2817 ], [ %2725, %2815 ], [ %2725, %2775 ], [ %2725, %2748 ], [ %1899, %1909 ]
  %2845 = phi float [ %2726, %2720 ], [ %1900, %2205 ], [ %1900, %1892 ], [ %2726, %2817 ], [ %2726, %2815 ], [ %2726, %2775 ], [ %2726, %2748 ], [ %1900, %1909 ]
  %2846 = phi float [ %1901, %2720 ], [ %1901, %2205 ], [ %1901, %1892 ], [ %2834, %2817 ], [ %1901, %2815 ], [ %2812, %2775 ], [ %2770, %2748 ], [ %1901, %1909 ]
  %2847 = phi float [ %1902, %2720 ], [ %1902, %2205 ], [ %1902, %1892 ], [ %2835, %2817 ], [ %1902, %2815 ], [ %2813, %2775 ], [ %2771, %2748 ], [ %1902, %1909 ]
  %2848 = phi float [ %1903, %2720 ], [ %1903, %2205 ], [ %1903, %1892 ], [ %2836, %2817 ], [ %1903, %2815 ], [ %2814, %2775 ], [ %2772, %2748 ], [ %1903, %1909 ]
  %2849 = phi float [ %2727, %2720 ], [ %1904, %2205 ], [ %1904, %1892 ], [ %2727, %2817 ], [ %2727, %2815 ], [ %2727, %2775 ], [ %2727, %2748 ], [ %1904, %1909 ]
  %2850 = phi float [ %1905, %2720 ], [ %1905, %2205 ], [ %1905, %1892 ], [ %2828, %2817 ], [ %1905, %2815 ], [ %2806, %2775 ], [ %2760, %2748 ], [ %1905, %1909 ]
  %2851 = phi float [ %1906, %2720 ], [ %1906, %2205 ], [ %1906, %1892 ], [ %2825, %2817 ], [ %1906, %2815 ], [ %2783, %2775 ], [ %2757, %2748 ], [ %1906, %1909 ]
  %2852 = phi float [ %1907, %2720 ], [ %1907, %2205 ], [ %1907, %1892 ], [ %2830, %2817 ], [ %1907, %2815 ], [ %2808, %2775 ], [ %2763, %2748 ], [ %1907, %1909 ]
  %2853 = phi float [ %2728, %2720 ], [ %1908, %2205 ], [ %1908, %1892 ], [ %2728, %2817 ], [ %2728, %2815 ], [ %2728, %2775 ], [ %2728, %2748 ], [ %1908, %1909 ]
  br i1 %375, label %3782, label %2854

; <label>:2854                                    ; preds = %2837
  %2855 = icmp ult i32 %426, 4
  %2856 = add i32 %42, 72
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = add i32 %42, 76
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = or i32 %2861, %2858
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %3782, label %2864

; <label>:2864                                    ; preds = %2854
  %2865 = and i32 %2858, 262144
  %2866 = icmp ne i32 %2865, 0
  %2867 = select i1 %2866, float %44, float 1.000000e+00
  %2868 = select i1 %2866, float %45, float 0.000000e+00
  %2869 = select i1 %2866, float %46, float 0.000000e+00
  %2870 = select i1 %2866, float %47, float 1.000000e+00
  %2871 = select i1 %2866, float %48, float %69
  %2872 = select i1 %2866, float %49, float %70
  %2873 = add i32 %42, 332
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = lshr i32 %2875, 16
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = fmul fast float %2877, 0x3F50624DE0000000
  %2879 = add i32 %42, 136
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = lshr i32 %2881, 16
  %2883 = and i32 %2882, 255
  %2884 = lshr i32 %2881, 24
  %2885 = add i32 %42, 340
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 65535
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = lshr i32 %2887, 16
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = add i32 %42, 80
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = lshr i32 %2894, 22
  %2896 = shl nuw nsw i32 %2895, 5
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = shl i32 %2894, 4
  %2899 = and i32 %2898, 32752
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = lshr i32 %2894, 7
  %2902 = and i32 %2901, 32752
  %2903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2902)  ; LegacyF16ToF32(value)
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2906 = fmul fast float %2905, 1.000000e+03
  %2907 = fmul fast float %365, %2906
  %2908 = call float @dx.op.unary.f32(i32 22, float %2907)  ; Frc(value)
  %2909 = fadd fast float %2908, %355
  %2910 = fmul fast float %366, %2906
  %2911 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2912 = fadd fast float %2911, %357
  %2913 = fmul fast float %2878, %2906
  %2914 = call float @dx.op.unary.f32(i32 22, float %2913)  ; Frc(value)
  %2915 = fmul fast float %2914, 0x401921FB60000000
  %2916 = fadd fast float %2915, %2897
  %2917 = call float @dx.op.unary.f32(i32 13, float %2916)  ; Sin(value)
  %2918 = call float @dx.op.unary.f32(i32 12, float %2916)  ; Cos(value)
  %2919 = fsub fast float -0.000000e+00, %2917
  %2920 = fadd fast float %2871, -5.000000e-01
  %2921 = fadd fast float %2872, -5.000000e-01
  %2922 = fmul fast float %2889, %2920
  %2923 = fmul fast float %2891, %2921
  %2924 = fadd fast float %2922, 5.000000e-01
  %2925 = fadd fast float %2923, 5.000000e-01
  %2926 = fmul fast float %2900, %2924
  %2927 = fmul fast float %2903, %2925
  %2928 = fmul fast float %2918, %2926
  %2929 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2927, float %2928)  ; FMad(a,b,c)
  %2930 = fmul fast float %2917, %2926
  %2931 = call float @dx.op.tertiary.f32(i32 46, float %2918, float %2927, float %2930)  ; FMad(a,b,c)
  %2932 = fadd fast float %2909, %2929
  %2933 = fadd fast float %2912, %2931
  %2934 = icmp ugt i32 %2883, 1
  %2935 = icmp ugt i32 %2881, 33554431
  %2936 = or i1 %2935, %2934
  br i1 %2936, label %2937, label %2962

; <label>:2937                                    ; preds = %2864
  %2938 = add i32 %42, 276
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = lshr i32 %2940, 16
  %2942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2941)  ; LegacyF16ToF32(value)
  %2943 = fmul fast float %2905, %2942
  %2944 = call float @dx.op.unary.f32(i32 22, float %2943)  ; Frc(value)
  %2945 = mul nuw nsw i32 %2883, %2884
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2944, %2946
  %2948 = call float @dx.op.unary.f32(i32 27, float %2947)  ; Round_ni(value)
  %2949 = fptoui float %2948 to i32
  %2950 = urem i32 %2949, %2883
  %2951 = udiv i32 %2949, %2884
  %2952 = call float @dx.op.unary.f32(i32 22, float %2932)  ; Frc(value)
  %2953 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2954 = uitofp i32 %2950 to float
  %2955 = uitofp i32 %2951 to float
  %2956 = fadd fast float %2952, %2954
  %2957 = fadd fast float %2953, %2955
  %2958 = uitofp i32 %2883 to float
  %2959 = uitofp i32 %2884 to float
  %2960 = fdiv fast float %2956, %2958
  %2961 = fdiv fast float %2957, %2959
  br label %2962

; <label>:2962                                    ; preds = %2937, %2864
  %2963 = phi float [ %2960, %2937 ], [ %2932, %2864 ]
  %2964 = phi float [ %2961, %2937 ], [ %2933, %2864 ]
  %2965 = and i32 %2858, 16777216
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %3076, label %2967

; <label>:2967                                    ; preds = %2962
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2972 = fadd fast float %2969, %140
  %2973 = fadd fast float %2970, %141
  %2974 = fadd fast float %2971, %142
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 0
  %2977 = call float @dx.op.unary.f32(i32 7, float %2976)  ; Saturate(value)
  %2978 = icmp eq i32 %43, 65535
  br i1 %2978, label %3073, label %2979

; <label>:2979                                    ; preds = %2967
  %2980 = lshr i32 %43, 1
  %2981 = shl i32 %2980, 2
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %43, 1
  %2985 = icmp ne i32 %2984, 0
  %2986 = lshr i32 %2983, 16
  %2987 = and i32 %2983, 65535
  %2988 = select i1 %2985, i32 %2986, i32 %2987
  %2989 = icmp eq i32 %2988, 65535
  br i1 %2989, label %3069, label %2990

; <label>:2990                                    ; preds = %2979
  %2991 = mul nuw nsw i32 %2988, 40
  %2992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = add nuw nsw i32 %2991, 12
  %2997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.ResRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.ResRet.f32 %2997, 2
  %3001 = add nuw nsw i32 %2991, 24
  %3002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = add nuw nsw i32 %2991, 36
  %3007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.f32 %3007, 0
  %3009 = fsub fast float %2972, %2993
  %3010 = fsub fast float %2973, %2994
  %3011 = fsub fast float %2974, %2995
  %3012 = fmul fast float %3008, %3009
  %3013 = fmul fast float %3008, %3010
  %3014 = fmul fast float %3008, %3011
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fadd fast float %3017, 5.000000e-01
  %3021 = fmul fast float %3018, %2998
  %3022 = fmul fast float %3019, %2999
  %3023 = fmul fast float %3020, %3000
  %3024 = shl i32 %43, 2
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = add i32 %3026, 0
  %3028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3029 = call float @dx.op.unary.f32(i32 22, float %3021)  ; Frc(value)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3031 = call float @dx.op.unary.f32(i32 22, float %3023)  ; Frc(value)
  %3032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3028, %dx.types.Handle %37, float %3029, float %3030, float %3031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.ResRet.f32 %3032, 1
  %3035 = extractvalue %dx.types.ResRet.f32 %3032, 2
  %3036 = fmul fast float %3033, 1.023000e+03
  %3037 = fmul fast float %3034, 1.023000e+03
  %3038 = fmul fast float %3035, 1.023000e+03
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = call float @dx.op.unary.f32(i32 27, float %3039)  ; Round_ni(value)
  %3043 = call float @dx.op.unary.f32(i32 27, float %3040)  ; Round_ni(value)
  %3044 = call float @dx.op.unary.f32(i32 27, float %3041)  ; Round_ni(value)
  %3045 = fsub fast float %3012, %3015
  %3046 = fsub fast float %3013, %3016
  %3047 = fsub fast float %3014, %3017
  %3048 = fmul fast float %3045, 7.500000e-01
  %3049 = fmul fast float %3046, 7.500000e-01
  %3050 = fmul fast float %3047, 7.500000e-01
  %3051 = fadd fast float %3015, 1.250000e-01
  %3052 = fadd fast float %3051, %3048
  %3053 = fadd fast float %3052, %3042
  %3054 = fadd fast float %3016, 1.250000e-01
  %3055 = fadd fast float %3054, %3049
  %3056 = fadd fast float %3055, %3043
  %3057 = fadd fast float %3017, 1.250000e-01
  %3058 = fadd fast float %3057, %3050
  %3059 = fadd fast float %3058, %3044
  %3060 = fmul fast float %3053, %3003
  %3061 = fmul fast float %3056, %3004
  %3062 = fmul fast float %3059, %3005
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = add i32 %3064, 0
  %3066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3066, %dx.types.Handle %35, float %3060, float %3061, float %3062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3068 = extractvalue %dx.types.ResRet.f32 %3067, 0
  br label %3069

; <label>:3069                                    ; preds = %2990, %2979
  %3070 = phi float [ %3068, %2990 ], [ -1.000000e+00, %2979 ]
  %3071 = fadd fast float %3070, %2977
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  br label %3073

; <label>:3073                                    ; preds = %3069, %2967
  %3074 = phi float [ %3072, %3069 ], [ %2977, %2967 ]
  %3075 = fmul fast float %3074, %421
  br label %3076

; <label>:3076                                    ; preds = %3073, %2962
  %3077 = phi float [ %3075, %3073 ], [ %421, %2962 ]
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 256
  %3081 = icmp eq i32 %3080, 0
  br i1 %3081, label %3128, label %3082

; <label>:3082                                    ; preds = %3076
  %3083 = add i32 %42, 436
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = add i32 %3085, 0
  %3087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3087, %dx.types.Handle %78, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = add i32 %42, 148
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = shl i32 %3092, 4
  %3094 = and i32 %3093, 32752
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = lshr i32 %3092, 7
  %3097 = and i32 %3096, 32752
  %3098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3097)  ; LegacyF16ToF32(value)
  %3099 = fsub fast float 1.000000e+00, %3077
  %3100 = call float @dx.op.binary.f32(i32 35, float %3099, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3101 = bitcast float %3077 to i32
  %3102 = sitofp i32 %3101 to float
  %3103 = fadd fast float %3102, 0xC1CFBF8940000000
  %3104 = fmul fast float %3098, %3103
  %3105 = fadd fast float %3104, 0x41CFBF8940000000
  %3106 = fptosi float %3105 to i32
  %3107 = bitcast i32 %3106 to float
  %3108 = bitcast float %3100 to i32
  %3109 = sitofp i32 %3108 to float
  %3110 = fadd fast float %3109, 0xC1CFBF8940000000
  %3111 = fmul fast float %3110, %3098
  %3112 = fadd fast float %3111, 0x41CFBF8940000000
  %3113 = fptosi float %3112 to i32
  %3114 = bitcast i32 %3113 to float
  %3115 = fmul fast float %3107, %3095
  %3116 = fmul fast float %3114, %3095
  %3117 = fsub fast float %3100, %3115
  %3118 = fadd fast float %3116, %3100
  %3119 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3120 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3121 = fsub fast float %3089, %3119
  %3122 = fsub fast float %3120, %3119
  %3123 = bitcast float %3122 to i32
  %3124 = sub nsw i32 2129859010, %3123
  %3125 = bitcast i32 %3124 to float
  %3126 = fmul fast float %3125, %3121
  %3127 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  br label %3128

; <label>:3128                                    ; preds = %3082, %3076
  %3129 = phi float [ %3127, %3082 ], [ %3077, %3076 ]
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 128
  %3133 = icmp eq i32 %3132, 0
  br i1 %3133, label %3150, label %3134

; <label>:3134                                    ; preds = %3128
  %3135 = add i32 %42, 420
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = add i32 %3137, 0
  %3139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3139, %dx.types.Handle %78, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3141 = extractvalue %dx.types.ResRet.f32 %3140, 0
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 524288
  %3145 = icmp ne i32 %3144, 0
  %3146 = fcmp fast ogt float %3141, 0x3FE0101020000000
  %3147 = select i1 %3146, float 1.000000e+00, float 0.000000e+00
  %3148 = select i1 %3145, float %3147, float %3141
  %3149 = fmul fast float %3148, %3129
  br label %3150

; <label>:3150                                    ; preds = %3134, %3128
  %3151 = phi float [ %3149, %3134 ], [ %3129, %3128 ]
  %3152 = fcmp fast ult float %3151, 0x3F70101020000000
  br i1 %3152, label %3782, label %3153

; <label>:3153                                    ; preds = %3150
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 16
  %3157 = icmp eq i32 %3156, 0
  br i1 %3157, label %3356, label %3158

; <label>:3158                                    ; preds = %3153
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = add i32 %42, 372
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = add i32 %3163, 0
  %3165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3165, %dx.types.Handle %77, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.ResRet.f32 %3166, 2
  %3170 = extractvalue %dx.types.ResRet.f32 %3166, 3
  %3171 = and i32 %3160, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = lshr i32 %3160, 8
  %3174 = and i32 %3173, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3170, %3172
  %3177 = fadd fast float %3176, %3175
  %3178 = fmul fast float %3177, 0x3F70101000000000
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 512
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3191, label %3183

; <label>:3183                                    ; preds = %3158
  %3184 = add i32 %42, 452
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = add i32 %3186, 0
  %3188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3188, %dx.types.Handle %78, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  br label %3191

; <label>:3191                                    ; preds = %3183, %3158
  %3192 = phi float [ %3190, %3183 ], [ 1.000000e+00, %3158 ]
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = and i32 %3194, 33554432
  %3196 = icmp eq i32 %3195, 0
  br i1 %3196, label %3303, label %3197

; <label>:3197                                    ; preds = %3191
  %3198 = add i32 %42, 272
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 65535
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = lshr i32 %3200, 16
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = add i32 %42, 276
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %3207, 65535
  %3209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3208)  ; LegacyF16ToF32(value)
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = lshr i32 %3211, 24
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F70101020000000
  %3215 = and i32 %3211, 255
  %3216 = uitofp i32 %3215 to float
  %3217 = fmul fast float %3216, 0x3F70101020000000
  %3218 = lshr i32 %3211, 8
  %3219 = and i32 %3218, 255
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 0x3F70101020000000
  %3222 = lshr i32 %3211, 16
  %3223 = and i32 %3222, 255
  %3224 = uitofp i32 %3223 to float
  %3225 = fmul fast float %3224, 0x3F70101020000000
  %3226 = add i32 %42, 268
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = lshr i32 %3228, 24
  %3230 = uitofp i32 %3229 to float
  %3231 = fmul fast float %3230, 0x3F70101020000000
  %3232 = and i32 %3228, 255
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = lshr i32 %3228, 8
  %3236 = and i32 %3235, 255
  %3237 = uitofp i32 %3236 to float
  %3238 = fmul fast float %3237, 0x3F70101020000000
  %3239 = lshr i32 %3228, 16
  %3240 = and i32 %3239, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = fmul fast float %3241, 0x3F70101020000000
  %3243 = bitcast float %3167 to i32
  %3244 = ashr i32 %3243, 1
  %3245 = sub nsw i32 1597463174, %3244
  %3246 = bitcast i32 %3245 to float
  %3247 = fmul fast float %3167, 5.000000e-01
  %3248 = fmul fast float %3246, %3246
  %3249 = fmul fast float %3248, %3247
  %3250 = fsub fast float 1.500000e+00, %3249
  %3251 = fmul fast float %3246, %3167
  %3252 = fmul fast float %3251, %3250
  %3253 = bitcast float %3168 to i32
  %3254 = ashr i32 %3253, 1
  %3255 = sub nsw i32 1597463174, %3254
  %3256 = bitcast i32 %3255 to float
  %3257 = fmul fast float %3168, 5.000000e-01
  %3258 = fmul fast float %3256, %3256
  %3259 = fmul fast float %3258, %3257
  %3260 = fsub fast float 1.500000e+00, %3259
  %3261 = fmul fast float %3256, %3168
  %3262 = fmul fast float %3261, %3260
  %3263 = bitcast float %3169 to i32
  %3264 = ashr i32 %3263, 1
  %3265 = sub nsw i32 1597463174, %3264
  %3266 = bitcast i32 %3265 to float
  %3267 = fmul fast float %3169, 5.000000e-01
  %3268 = fmul fast float %3266, %3266
  %3269 = fmul fast float %3268, %3267
  %3270 = fsub fast float 1.500000e+00, %3269
  %3271 = fmul fast float %3266, %3169
  %3272 = fmul fast float %3271, %3270
  %3273 = fsub fast float %3252, %3234
  %3274 = fsub fast float %3262, %3238
  %3275 = fsub fast float %3272, %3242
  %3276 = fmul fast float %3273, %3202
  %3277 = fmul fast float %3274, %3204
  %3278 = fmul fast float %3275, %3209
  %3279 = fadd fast float %3276, %3217
  %3280 = fadd fast float %3277, %3221
  %3281 = fadd fast float %3278, %3225
  %3282 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3285 = fmul fast float %3282, %3282
  %3286 = fmul fast float %3283, %3283
  %3287 = fmul fast float %3284, %3284
  %3288 = fsub fast float %3285, %3167
  %3289 = fsub fast float %3286, %3168
  %3290 = fsub fast float %3287, %3169
  %3291 = fmul fast float %3288, %3192
  %3292 = fmul fast float %3289, %3192
  %3293 = fmul fast float %3290, %3192
  %3294 = fadd fast float %3291, %3167
  %3295 = fadd fast float %3292, %3168
  %3296 = fadd fast float %3293, %3169
  %3297 = fadd fast float %3214, %3178
  %3298 = fsub fast float %3297, %3231
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3300 = fsub fast float %3299, %3178
  %3301 = fmul fast float %3300, %3192
  %3302 = fadd fast float %3301, %3178
  br label %3356

; <label>:3303                                    ; preds = %3191
  %3304 = and i32 %3194, 134217728
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3340, label %3306

; <label>:3306                                    ; preds = %3303
  %3307 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fmul fast float %3310, %3192
  %3314 = fmul fast float %3311, %3192
  %3315 = fmul fast float %3312, %3192
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3320 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3169)  ; Sqrt(value)
  %3322 = fmul fast float %3316, 2.000000e+00
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3323, %3319
  %3325 = fadd fast float %3324, %3322
  %3326 = fmul fast float %3325, %3319
  %3327 = fmul fast float %3317, 2.000000e+00
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = fmul fast float %3328, %3320
  %3330 = fadd fast float %3329, %3327
  %3331 = fmul fast float %3330, %3320
  %3332 = fmul fast float %3318, 2.000000e+00
  %3333 = fsub fast float 1.000000e+00, %3332
  %3334 = fmul fast float %3333, %3321
  %3335 = fadd fast float %3334, %3332
  %3336 = fmul fast float %3335, %3321
  %3337 = fmul fast float %3326, %3326
  %3338 = fmul fast float %3331, %3331
  %3339 = fmul fast float %3336, %3336
  br label %3356

; <label>:3340                                    ; preds = %3303
  %3341 = fmul fast float %342, %342
  %3342 = fmul fast float %346, %346
  %3343 = fmul fast float %350, %350
  %3344 = fadd fast float %3341, -1.000000e+00
  %3345 = fadd fast float %3342, -1.000000e+00
  %3346 = fadd fast float %3343, -1.000000e+00
  %3347 = fmul fast float %3192, %3344
  %3348 = fmul fast float %3192, %3345
  %3349 = fmul fast float %3192, %3346
  %3350 = fadd fast float %3347, 1.000000e+00
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fmul fast float %3350, %3167
  %3354 = fmul fast float %3351, %3168
  %3355 = fmul fast float %3352, %3169
  br label %3356

; <label>:3356                                    ; preds = %3340, %3306, %3197, %3153
  %3357 = phi float [ %3302, %3197 ], [ %3178, %3306 ], [ %3178, %3340 ], [ 0x3FA23C0BE0000000, %3153 ]
  %3358 = phi float [ %3294, %3197 ], [ %3337, %3306 ], [ %3353, %3340 ], [ 1.000000e+00, %3153 ]
  %3359 = phi float [ %3295, %3197 ], [ %3338, %3306 ], [ %3354, %3340 ], [ 1.000000e+00, %3153 ]
  %3360 = phi float [ %3296, %3197 ], [ %3339, %3306 ], [ %3355, %3340 ], [ 1.000000e+00, %3153 ]
  %3361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.i32 %3361, 1
  %3363 = and i32 %3362, 1
  %3364 = icmp ne i32 %3363, 0
  %3365 = add i32 %42, 356
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 32
  %3369 = icmp ne i32 %3368, 0
  %3370 = and i1 %3364, %3369
  %3371 = select i1 %3370, float 1.000000e+00, float %3358
  %3372 = select i1 %3370, float 0x3FD3333340000000, float %3359
  %3373 = select i1 %3370, float 0x3FD3333340000000, float %3360
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 32
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3450, label %3378

; <label>:3378                                    ; preds = %3356
  %3379 = add i32 %42, 140
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = add i32 %42, 388
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = add i32 %3384, 0
  %3386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3386, %dx.types.Handle %77, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3391 = extractvalue %dx.types.ResRet.f32 %3387, 3
  %3392 = and i32 %3381, 255
  %3393 = uitofp i32 %3392 to float
  %3394 = lshr i32 %3381, 8
  %3395 = and i32 %3394, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = lshr i32 %3381, 16
  %3398 = and i32 %3397, 255
  %3399 = uitofp i32 %3398 to float
  %3400 = fmul fast float %3399, 0x3F70101000000000
  %3401 = fmul fast float %3388, %3393
  %3402 = fadd fast float %3401, %3396
  %3403 = fmul fast float %3402, 0x3F70101000000000
  %3404 = fadd fast float %3389, -5.000000e-01
  %3405 = fadd fast float %3391, -5.000000e-01
  %3406 = fmul fast float %3404, %3400
  %3407 = fmul fast float %3405, %3400
  %3408 = fadd fast float %3406, 5.000000e-01
  %3409 = fadd fast float %3407, 5.000000e-01
  %3410 = fmul fast float %3408, 2.000000e+00
  %3411 = fadd fast float %3410, -1.000000e+00
  %3412 = fmul fast float %3409, 2.000000e+00
  %3413 = fadd fast float %3412, -1.000000e+00
  %3414 = fadd fast float %3411, %3413
  %3415 = fmul fast float %3414, 5.000000e-01
  %3416 = fsub fast float %3411, %3413
  %3417 = fmul fast float %3416, 5.000000e-01
  %3418 = call float @dx.op.unary.f32(i32 6, float %3415)  ; FAbs(value)
  %3419 = fsub fast float 1.000000e+00, %3418
  %3420 = call float @dx.op.unary.f32(i32 6, float %3417)  ; FAbs(value)
  %3421 = fsub fast float %3419, %3420
  %3422 = call float @dx.op.dot3.f32(i32 55, float %3415, float %3417, float %3421, float %3415, float %3417, float %3421)  ; Dot3(ax,ay,az,bx,by,bz)
  %3423 = call float @dx.op.unary.f32(i32 25, float %3422)  ; Rsqrt(value)
  %3424 = fmul fast float %3415, %3423
  %3425 = fmul fast float %3417, %3423
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 67108864
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %3446, label %3430

; <label>:3430                                    ; preds = %3378
  %3431 = add i32 %42, 328
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 65535
  %3435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3434)  ; LegacyF16ToF32(value)
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = and i32 %3437, 65535
  %3439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3438)  ; LegacyF16ToF32(value)
  %3440 = lshr i32 %3433, 16
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = fsub fast float %3403, %3441
  %3443 = fmul fast float %3442, %3435
  %3444 = fadd fast float %3443, %3439
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  br label %3446

; <label>:3446                                    ; preds = %3430, %3378
  %3447 = phi float [ %3445, %3430 ], [ %3403, %3378 ]
  %3448 = call float @dx.op.dot2.f32(i32 54, float %3424, float %3425, float %2867, float %2868)  ; Dot2(ax,ay,bx,by)
  %3449 = call float @dx.op.dot2.f32(i32 54, float %3424, float %3425, float %2869, float %2870)  ; Dot2(ax,ay,bx,by)
  br label %3450

; <label>:3450                                    ; preds = %3446, %3356
  %3451 = phi float [ %3447, %3446 ], [ 0x3FD6666660000000, %3356 ]
  %3452 = phi float [ %3448, %3446 ], [ 0.000000e+00, %3356 ]
  %3453 = phi float [ %3449, %3446 ], [ 0.000000e+00, %3356 ]
  %3454 = phi float [ %3390, %3446 ], [ 1.000000e+00, %3356 ]
  %3455 = add i32 %42, 208
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = lshr i32 %3457, 22
  %3459 = shl nuw nsw i32 %3458, 5
  %3460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3459)  ; LegacyF16ToF32(value)
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 64
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3498, label %3465

; <label>:3465                                    ; preds = %3450
  %3466 = add i32 %42, 404
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = add i32 %3468, 0
  %3470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, 131072
  %3474 = icmp eq i32 %3473, 0
  %3475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3470, %dx.types.Handle %77, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3479 = fmul fast float %3476, %330
  %3480 = fmul fast float %3477, %333
  %3481 = fmul fast float %3478, %336
  br i1 %3474, label %3488, label %3482

; <label>:3482                                    ; preds = %3465
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = fmul fast float %3484, %3479
  %3486 = fmul fast float %3484, %3480
  %3487 = fmul fast float %3484, %3481
  br label %3488

; <label>:3488                                    ; preds = %3482, %3465
  %3489 = phi float [ %3485, %3482 ], [ %3479, %3465 ]
  %3490 = phi float [ %3486, %3482 ], [ %3480, %3465 ]
  %3491 = phi float [ %3487, %3482 ], [ %3481, %3465 ]
  %3492 = fmul fast float %3489, %3460
  %3493 = select i1 %184, float %3492, float %3489
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3493, float %3490, float %3491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = select i1 %184, float 0.000000e+00, float %3489
  %3496 = select i1 %184, float %3494, float %3490
  %3497 = select i1 %184, float 0.000000e+00, float %3491
  br label %3498

; <label>:3498                                    ; preds = %3488, %3450
  %3499 = phi float [ %3495, %3488 ], [ 0.000000e+00, %3450 ]
  %3500 = phi float [ %3496, %3488 ], [ 0.000000e+00, %3450 ]
  %3501 = phi float [ %3497, %3488 ], [ 0.000000e+00, %3450 ]
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 10240
  %3505 = icmp eq i32 %3504, 0
  br i1 %3505, label %3550, label %3506

; <label>:3506                                    ; preds = %3498
  %3507 = add i32 %42, 468
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = add i32 %3509, 0
  %3511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3511, %dx.types.Handle %78, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 3
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %3516, 1048576
  %3518 = icmp ne i32 %3517, 0
  %3519 = and i32 %3516, 8192
  %3520 = icmp eq i32 %3519, 0
  br i1 %3520, label %3536, label %3521

; <label>:3521                                    ; preds = %3506
  %3522 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3523 = select i1 %3518, float %3522, float %3513
  %3524 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3525 = select i1 %3518, float %3524, float %3513
  %3526 = add i32 %42, 144
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = lshr i32 %3528, 16
  %3530 = and i32 %3529, 255
  %3531 = uitofp i32 %3530 to float
  %3532 = fmul fast float %3531, 0x3F80101020000000
  %3533 = fmul fast float %3532, %3525
  %3534 = fmul fast float %3532, %3513
  %3535 = fmul fast float %3532, %3523
  br label %3536

; <label>:3536                                    ; preds = %3521, %3506
  %3537 = phi float [ %3533, %3521 ], [ 0.000000e+00, %3506 ]
  %3538 = phi float [ %3534, %3521 ], [ 0.000000e+00, %3506 ]
  %3539 = phi float [ %3535, %3521 ], [ 0.000000e+00, %3506 ]
  %3540 = and i32 %3516, 2048
  %3541 = icmp eq i32 %3540, 0
  br i1 %3541, label %3550, label %3542

; <label>:3542                                    ; preds = %3536
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = shl i32 %3544, 4
  %3546 = and i32 %3545, 32752
  %3547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3546)  ; LegacyF16ToF32(value)
  %3548 = fmul fast float %3547, %3514
  %3549 = call float @dx.op.binary.f32(i32 35, float %3548, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3550

; <label>:3550                                    ; preds = %3542, %3536, %3498
  %3551 = phi float [ %3537, %3542 ], [ %3537, %3536 ], [ 0.000000e+00, %3498 ]
  %3552 = phi float [ %3538, %3542 ], [ %3538, %3536 ], [ 0.000000e+00, %3498 ]
  %3553 = phi float [ %3539, %3542 ], [ %3539, %3536 ], [ 0.000000e+00, %3498 ]
  %3554 = phi float [ %3549, %3542 ], [ 0x3F70101020000000, %3536 ], [ 0x3F70101020000000, %3498 ]
  %3555 = add i32 %42, 144
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 255
  %3559 = uitofp i32 %3558 to float
  %3560 = lshr i32 %3557, 8
  %3561 = and i32 %3560, 255
  %3562 = uitofp i32 %3561 to float
  %3563 = call float @dx.op.dot3.f32(i32 55, float %3371, float %3372, float %3373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3564 = fmul fast float %3562, %3563
  %3565 = fadd fast float %3564, %3559
  %3566 = fmul fast float %3565, 0x3F70101020000000
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  br i1 %2855, label %3568, label %3576

; <label>:3568                                    ; preds = %3550
  %3569 = fsub fast float 1.000000e+00, %3151
  %3570 = fmul fast float %3569, %2840
  %3571 = fmul fast float %3569, %2841
  %3572 = fmul fast float %3569, %2842
  %3573 = fmul fast float %3569, %2843
  %3574 = fmul fast float %3569, %2844
  %3575 = fmul fast float %3569, %2845
  br label %3576

; <label>:3576                                    ; preds = %3568, %3550
  %3577 = phi float [ %3570, %3568 ], [ %2840, %3550 ]
  %3578 = phi float [ %3571, %3568 ], [ %2841, %3550 ]
  %3579 = phi float [ %3572, %3568 ], [ %2842, %3550 ]
  %3580 = phi float [ %3573, %3568 ], [ %2843, %3550 ]
  %3581 = phi float [ %3574, %3568 ], [ %2844, %3550 ]
  %3582 = phi float [ %3575, %3568 ], [ %2845, %3550 ]
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 3
  %3586 = icmp eq i32 %3585, 3
  br i1 %3586, label %3665, label %3587

; <label>:3587                                    ; preds = %3576
  %3588 = and i32 %3584, 16
  %3589 = icmp ne i32 %3588, 0
  %3590 = select i1 %3589, float %3151, float 0.000000e+00
  %3591 = icmp eq i32 %3585, 0
  br i1 %3591, label %3592, label %3620

; <label>:3592                                    ; preds = %3587
  %3593 = and i32 %3584, 64
  %3594 = icmp ne i32 %3593, 0
  %3595 = select i1 %3594, float %3151, float 0.000000e+00
  %3596 = fsub fast float %3371, %3577
  %3597 = fsub fast float %3372, %3578
  %3598 = fsub fast float %3373, %3579
  %3599 = fmul fast float %3590, %3596
  %3600 = fmul fast float %3590, %3597
  %3601 = fmul fast float %3590, %3598
  %3602 = fadd fast float %3599, %3577
  %3603 = fadd fast float %3600, %3578
  %3604 = fadd fast float %3601, %3579
  %3605 = fsub fast float %3357, %2849
  %3606 = fmul fast float %3590, %3605
  %3607 = fadd fast float %3606, %2849
  %3608 = fsub fast float %3499, %3580
  %3609 = fsub fast float %3500, %3581
  %3610 = fsub fast float %3501, %3582
  %3611 = fmul fast float %3595, %3608
  %3612 = fmul fast float %3595, %3609
  %3613 = fmul fast float %3595, %3610
  %3614 = fadd fast float %3611, %3580
  %3615 = fadd fast float %3612, %3581
  %3616 = fadd fast float %3613, %3582
  %3617 = fsub fast float %3567, %2853
  %3618 = fmul fast float %3590, %3617
  %3619 = fadd fast float %3618, %2853
  br label %3665

; <label>:3620                                    ; preds = %3587
  %3621 = icmp eq i32 %3585, 1
  br i1 %3621, label %3622, label %3635

; <label>:3622                                    ; preds = %3620
  %3623 = fadd fast float %3371, -1.000000e+00
  %3624 = fadd fast float %3372, -1.000000e+00
  %3625 = fadd fast float %3373, -1.000000e+00
  %3626 = fmul fast float %3590, %3623
  %3627 = fmul fast float %3590, %3624
  %3628 = fmul fast float %3590, %3625
  %3629 = fadd fast float %3626, 1.000000e+00
  %3630 = fadd fast float %3627, 1.000000e+00
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fmul fast float %3629, %3577
  %3633 = fmul fast float %3630, %3578
  %3634 = fmul fast float %3631, %3579
  br label %3665

; <label>:3635                                    ; preds = %3620
  %3636 = icmp eq i32 %3585, 2
  br i1 %3636, label %3637, label %3665

; <label>:3637                                    ; preds = %3635
  %3638 = call float @dx.op.unary.f32(i32 24, float %3371)  ; Sqrt(value)
  %3639 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3640 = call float @dx.op.unary.f32(i32 24, float %3373)  ; Sqrt(value)
  %3641 = fadd fast float %3638, -5.000000e-01
  %3642 = fadd fast float %3639, -5.000000e-01
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fmul fast float %3641, %3590
  %3645 = fmul fast float %3642, %3590
  %3646 = fmul fast float %3643, %3590
  %3647 = fadd fast float %3644, 5.000000e-01
  %3648 = fadd fast float %3645, 5.000000e-01
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fmul fast float %3647, 2.000000e+00
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = fmul fast float %3651, %3577
  %3653 = fadd fast float %3652, %3650
  %3654 = fmul fast float %3653, %3577
  %3655 = fmul fast float %3648, 2.000000e+00
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = fmul fast float %3656, %3578
  %3658 = fadd fast float %3657, %3655
  %3659 = fmul fast float %3658, %3578
  %3660 = fmul fast float %3649, 2.000000e+00
  %3661 = fsub fast float 1.000000e+00, %3660
  %3662 = fmul fast float %3661, %3579
  %3663 = fadd fast float %3662, %3660
  %3664 = fmul fast float %3663, %3579
  br label %3665

; <label>:3665                                    ; preds = %3637, %3635, %3622, %3592, %3576
  %3666 = phi float [ %3577, %3576 ], [ %3654, %3637 ], [ %3577, %3635 ], [ %3632, %3622 ], [ %3602, %3592 ]
  %3667 = phi float [ %3578, %3576 ], [ %3659, %3637 ], [ %3578, %3635 ], [ %3633, %3622 ], [ %3603, %3592 ]
  %3668 = phi float [ %3579, %3576 ], [ %3664, %3637 ], [ %3579, %3635 ], [ %3634, %3622 ], [ %3604, %3592 ]
  %3669 = phi float [ %3580, %3576 ], [ %3580, %3637 ], [ %3580, %3635 ], [ %3580, %3622 ], [ %3614, %3592 ]
  %3670 = phi float [ %3581, %3576 ], [ %3581, %3637 ], [ %3581, %3635 ], [ %3581, %3622 ], [ %3615, %3592 ]
  %3671 = phi float [ %3582, %3576 ], [ %3582, %3637 ], [ %3582, %3635 ], [ %3582, %3622 ], [ %3616, %3592 ]
  %3672 = phi float [ %2849, %3576 ], [ %2849, %3637 ], [ %2849, %3635 ], [ %2849, %3622 ], [ %3607, %3592 ]
  %3673 = phi float [ %2853, %3576 ], [ %2853, %3637 ], [ %2853, %3635 ], [ %2853, %3622 ], [ %3619, %3592 ]
  %3674 = and i32 %3584, 12
  %3675 = icmp eq i32 %3674, 12
  br i1 %3675, label %3782, label %3676

; <label>:3676                                    ; preds = %3665
  %3677 = and i32 %3584, 2097184
  %3678 = icmp eq i32 %3677, 2097184
  %3679 = select i1 %3678, float %3151, float 0.000000e+00
  %3680 = and i32 %3584, 4194336
  %3681 = icmp eq i32 %3680, 4194336
  %3682 = select i1 %3681, float %3151, float 0.000000e+00
  %3683 = and i32 %3584, 8388640
  %3684 = icmp eq i32 %3683, 8388640
  %3685 = select i1 %3684, float %3151, float 0.000000e+00
  %3686 = and i32 %3584, 2048
  %3687 = icmp ne i32 %3686, 0
  %3688 = select i1 %3687, float %3151, float 0.000000e+00
  %3689 = and i32 %3584, 8192
  %3690 = icmp ne i32 %3689, 0
  %3691 = select i1 %3690, float %3151, float 0.000000e+00
  %3692 = icmp eq i32 %3674, 0
  br i1 %3692, label %3693, label %3718

; <label>:3693                                    ; preds = %3676
  %3694 = fsub fast float %3452, %2838
  %3695 = fsub fast float %3453, %2839
  %3696 = fmul fast float %3679, %3694
  %3697 = fmul fast float %3679, %3695
  %3698 = fadd fast float %3696, %2838
  %3699 = fadd fast float %3697, %2839
  %3700 = fsub fast float %3454, %2851
  %3701 = fmul fast float %3682, %3700
  %3702 = fadd fast float %3701, %2851
  %3703 = fsub fast float %3451, %2850
  %3704 = fmul fast float %3685, %3703
  %3705 = fadd fast float %3704, %2850
  %3706 = fsub fast float %3554, %2852
  %3707 = fmul fast float %3688, %3706
  %3708 = fadd fast float %3707, %2852
  %3709 = fsub fast float %3551, %2846
  %3710 = fsub fast float %3552, %2847
  %3711 = fsub fast float %3553, %2848
  %3712 = fmul fast float %3691, %3709
  %3713 = fmul fast float %3691, %3710
  %3714 = fmul fast float %3691, %3711
  %3715 = fadd fast float %3712, %2846
  %3716 = fadd fast float %3713, %2847
  %3717 = fadd fast float %3714, %2848
  br label %3782

; <label>:3718                                    ; preds = %3676
  %3719 = icmp eq i32 %3674, 4
  br i1 %3719, label %3720, label %3760

; <label>:3720                                    ; preds = %3718
  %3721 = fmul fast float %3679, %3452
  %3722 = fmul fast float %3679, %3453
  %3723 = fadd fast float %3721, %2838
  %3724 = fadd fast float %3722, %2839
  %3725 = call float @dx.op.binary.f32(i32 36, float %2851, float %3454)  ; FMin(a,b)
  %3726 = fsub fast float %3725, %2851
  %3727 = fmul fast float %3726, %3682
  %3728 = fadd fast float %3727, %2851
  %3729 = fadd fast float %3451, %2850
  %3730 = fmul fast float %3729, 0x3FF337FAE0000000
  %3731 = fmul fast float %2850, %2850
  %3732 = fmul fast float %3451, %3451
  %3733 = fadd fast float %3732, %3731
  %3734 = fmul fast float %3733, 0x3FE5152B00000000
  %3735 = fmul fast float %2850, 0xBFCC1F85E0000000
  %3736 = fmul fast float %3735, %3451
  %3737 = fadd fast float %3736, 0xBFE1363700000000
  %3738 = fadd fast float %3737, %3730
  %3739 = fsub fast float %3738, %3734
  %3740 = fmul fast float %3729, 0x3FBA6F0D00000000
  %3741 = fmul fast float %3733, 0x3FD0432880000000
  %3742 = fmul fast float %2850, 0xBFEF110800000000
  %3743 = fmul fast float %3742, %3451
  %3744 = fadd fast float %3743, 1.000000e+00
  %3745 = fsub fast float %3744, %3740
  %3746 = fadd fast float %3745, %3741
  %3747 = fdiv fast float %3739, %3746
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fsub fast float %3748, %2850
  %3750 = fmul fast float %3749, %3685
  %3751 = fadd fast float %3750, %2850
  %3752 = fmul fast float %3688, %3554
  %3753 = fadd fast float %3752, %2852
  %3754 = fmul fast float %3691, %3551
  %3755 = fmul fast float %3691, %3552
  %3756 = fmul fast float %3691, %3553
  %3757 = fadd fast float %3754, %2846
  %3758 = fadd fast float %3755, %2847
  %3759 = fadd fast float %3756, %2848
  br label %3782

; <label>:3760                                    ; preds = %3718
  %3761 = icmp eq i32 %3674, 8
  br i1 %3761, label %3762, label %3782

; <label>:3762                                    ; preds = %3760
  %3763 = fmul fast float %3679, %3452
  %3764 = fmul fast float %3679, %3453
  %3765 = fadd fast float %3763, %2838
  %3766 = fadd fast float %3764, %2839
  %3767 = call float @dx.op.binary.f32(i32 36, float %2851, float %3454)  ; FMin(a,b)
  %3768 = fsub fast float %3767, %2851
  %3769 = fmul fast float %3768, %3682
  %3770 = fadd fast float %3769, %2851
  %3771 = fsub fast float %3451, %2850
  %3772 = fmul fast float %3685, %3771
  %3773 = fadd fast float %3772, %2850
  %3774 = fmul fast float %3688, %3554
  %3775 = fadd fast float %3774, %2852
  %3776 = fmul fast float %3691, %3551
  %3777 = fmul fast float %3691, %3552
  %3778 = fmul fast float %3691, %3553
  %3779 = fadd fast float %3776, %2846
  %3780 = fadd fast float %3777, %2847
  %3781 = fadd fast float %3778, %2848
  br label %3782

; <label>:3782                                    ; preds = %3762, %3760, %3720, %3693, %3665, %3150, %2854, %2837
  %3783 = phi float [ %2838, %3665 ], [ %2838, %3150 ], [ %2838, %2837 ], [ %2838, %2854 ], [ %3698, %3693 ], [ %3723, %3720 ], [ %2838, %3760 ], [ %3765, %3762 ]
  %3784 = phi float [ %2839, %3665 ], [ %2839, %3150 ], [ %2839, %2837 ], [ %2839, %2854 ], [ %3699, %3693 ], [ %3724, %3720 ], [ %2839, %3760 ], [ %3766, %3762 ]
  %3785 = phi float [ %3666, %3665 ], [ %2840, %3150 ], [ %2840, %2837 ], [ %2840, %2854 ], [ %3666, %3693 ], [ %3666, %3720 ], [ %3666, %3760 ], [ %3666, %3762 ]
  %3786 = phi float [ %3667, %3665 ], [ %2841, %3150 ], [ %2841, %2837 ], [ %2841, %2854 ], [ %3667, %3693 ], [ %3667, %3720 ], [ %3667, %3760 ], [ %3667, %3762 ]
  %3787 = phi float [ %3668, %3665 ], [ %2842, %3150 ], [ %2842, %2837 ], [ %2842, %2854 ], [ %3668, %3693 ], [ %3668, %3720 ], [ %3668, %3760 ], [ %3668, %3762 ]
  %3788 = phi float [ %3669, %3665 ], [ %2843, %3150 ], [ %2843, %2837 ], [ %2843, %2854 ], [ %3669, %3693 ], [ %3669, %3720 ], [ %3669, %3760 ], [ %3669, %3762 ]
  %3789 = phi float [ %3670, %3665 ], [ %2844, %3150 ], [ %2844, %2837 ], [ %2844, %2854 ], [ %3670, %3693 ], [ %3670, %3720 ], [ %3670, %3760 ], [ %3670, %3762 ]
  %3790 = phi float [ %3671, %3665 ], [ %2845, %3150 ], [ %2845, %2837 ], [ %2845, %2854 ], [ %3671, %3693 ], [ %3671, %3720 ], [ %3671, %3760 ], [ %3671, %3762 ]
  %3791 = phi float [ %2846, %3665 ], [ %2846, %3150 ], [ %2846, %2837 ], [ %2846, %2854 ], [ %3715, %3693 ], [ %3757, %3720 ], [ %2846, %3760 ], [ %3779, %3762 ]
  %3792 = phi float [ %2847, %3665 ], [ %2847, %3150 ], [ %2847, %2837 ], [ %2847, %2854 ], [ %3716, %3693 ], [ %3758, %3720 ], [ %2847, %3760 ], [ %3780, %3762 ]
  %3793 = phi float [ %2848, %3665 ], [ %2848, %3150 ], [ %2848, %2837 ], [ %2848, %2854 ], [ %3717, %3693 ], [ %3759, %3720 ], [ %2848, %3760 ], [ %3781, %3762 ]
  %3794 = phi float [ %3672, %3665 ], [ %2849, %3150 ], [ %2849, %2837 ], [ %2849, %2854 ], [ %3672, %3693 ], [ %3672, %3720 ], [ %3672, %3760 ], [ %3672, %3762 ]
  %3795 = phi float [ %2850, %3665 ], [ %2850, %3150 ], [ %2850, %2837 ], [ %2850, %2854 ], [ %3705, %3693 ], [ %3751, %3720 ], [ %2850, %3760 ], [ %3773, %3762 ]
  %3796 = phi float [ %2851, %3665 ], [ %2851, %3150 ], [ %2851, %2837 ], [ %2851, %2854 ], [ %3702, %3693 ], [ %3728, %3720 ], [ %2851, %3760 ], [ %3770, %3762 ]
  %3797 = phi float [ %2852, %3665 ], [ %2852, %3150 ], [ %2852, %2837 ], [ %2852, %2854 ], [ %3708, %3693 ], [ %3753, %3720 ], [ %2852, %3760 ], [ %3775, %3762 ]
  %3798 = phi float [ %3673, %3665 ], [ %2853, %3150 ], [ %2853, %2837 ], [ %2853, %2854 ], [ %3673, %3693 ], [ %3673, %3720 ], [ %3673, %3760 ], [ %3673, %3762 ]
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = call float @dx.op.dot2.f32(i32 54, float %3783, float %3784, float %3783, float %3784)  ; Dot2(ax,ay,bx,by)
  %3802 = fmul fast float %3801, 0x3FE3333340000000
  %3803 = fsub fast float 1.000000e+00, %3802
  %3804 = call float @dx.op.dot3.f32(i32 55, float %3783, float %3784, float %3803, float %3783, float %3784, float %3803)  ; Dot3(ax,ay,az,bx,by,bz)
  %3805 = call float @dx.op.unary.f32(i32 25, float %3804)  ; Rsqrt(value)
  %3806 = fmul fast float %3805, %3783
  %3807 = fmul fast float %3805, %3784
  %3808 = fmul fast float %3803, %3805
  %3809 = fmul fast float %3808, %90
  %3810 = fmul fast float %3808, %92
  %3811 = fmul fast float %3808, %94
  %3812 = fmul fast float %3806, %62
  %3813 = fmul fast float %3806, %63
  %3814 = fmul fast float %3806, %64
  %3815 = fadd fast float %3809, %3812
  %3816 = fadd fast float %3810, %3813
  %3817 = fadd fast float %3811, %3814
  %3818 = fmul fast float %104, %3807
  %3819 = fmul fast float %105, %3807
  %3820 = fmul fast float %106, %3807
  %3821 = fadd fast float %3815, %3818
  %3822 = fadd fast float %3816, %3819
  %3823 = fadd fast float %3817, %3820
  %3824 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3822, float %3823, float %3821, float %3822, float %3823)  ; Dot3(ax,ay,az,bx,by,bz)
  %3825 = call float @dx.op.unary.f32(i32 25, float %3824)  ; Rsqrt(value)
  %3826 = fmul fast float %3821, %3825
  %3827 = fmul fast float %3822, %3825
  %3828 = fmul fast float %3823, %3825
  %3829 = fadd fast float %3794, 0xBFB99999A0000000
  %3830 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3831 = fmul fast float %3830, 0x3FF1C71C80000000
  %3832 = call float @dx.op.binary.f32(i32 36, float %3794, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3833 = fsub fast float 1.000000e+00, %3831
  %3834 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3835 = fmul fast float %3834, %3785
  %3836 = fmul fast float %3834, %3786
  %3837 = fmul fast float %3834, %3787
  %3838 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3839 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3840 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3841 = fmul fast float %3831, %3785
  %3842 = fmul fast float %3831, %3786
  %3843 = fmul fast float %3831, %3787
  %3844 = fadd fast float %3841, %3832
  %3845 = fadd fast float %3842, %3832
  %3846 = fadd fast float %3843, %3832
  %3847 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3850 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.i32 %3851, 0
  %3853 = and i32 %3852, 1
  %3854 = icmp eq i32 %3853, 0
  br i1 %3854, label %3869, label %3855

; <label>:3855                                    ; preds = %3782
  %3856 = call float @dx.op.binary.f32(i32 35, float %3839, float %3840)  ; FMax(a,b)
  %3857 = call float @dx.op.binary.f32(i32 35, float %3838, float %3856)  ; FMax(a,b)
  %3858 = fcmp fast ogt float %3857, 0.000000e+00
  %3859 = bitcast float %3857 to i32
  %3860 = sub nsw i32 2129859010, %3859
  %3861 = bitcast i32 %3860 to float
  %3862 = select i1 %3858, float %3861, float 0.000000e+00
  %3863 = fmul fast float %3838, %3791
  %3864 = fmul fast float %3839, %3792
  %3865 = fmul fast float %3840, %3793
  %3866 = fmul fast float %3863, %3862
  %3867 = fmul fast float %3864, %3862
  %3868 = fmul fast float %3865, %3862
  br label %3869

; <label>:3869                                    ; preds = %3855, %3782
  %3870 = phi float [ %3866, %3855 ], [ %3791, %3782 ]
  %3871 = phi float [ %3867, %3855 ], [ %3792, %3782 ]
  %3872 = phi float [ %3868, %3855 ], [ %3793, %3782 ]
  %3873 = fadd fast float %3838, 0xBFD51EB860000000
  %3874 = fadd fast float %3839, 0xBFD51EB860000000
  %3875 = fadd fast float %3840, 0xBFD51EB860000000
  %3876 = fmul fast float %3873, %3873
  %3877 = fmul fast float %3874, %3874
  %3878 = fmul fast float %3875, %3875
  %3879 = fmul fast float %3876, %3876
  %3880 = fmul fast float %3879, 1.000000e+02
  %3881 = fmul fast float %3877, %3877
  %3882 = fmul fast float %3881, 1.000000e+02
  %3883 = fmul fast float %3878, %3878
  %3884 = fmul fast float %3883, 1.000000e+02
  %3885 = fadd fast float %3880, 3.500000e+00
  %3886 = fadd fast float %3882, 3.500000e+00
  %3887 = fadd fast float %3884, 3.500000e+00
  %3888 = call float @dx.op.binary.f32(i32 35, float %3870, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3889 = call float @dx.op.binary.f32(i32 35, float %3871, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3890 = call float @dx.op.binary.f32(i32 35, float %3872, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3891 = fdiv fast float %3885, %3888
  %3892 = fdiv fast float %3886, %3889
  %3893 = fdiv fast float %3887, %3890
  %3894 = fmul fast float %3797, 0xBFF7154760000000
  %3895 = fmul fast float %3894, %3891
  %3896 = call float @dx.op.unary.f32(i32 21, float %3895)  ; Exp(value)
  %3897 = fmul fast float %3896, 2.500000e-01
  %3898 = fmul fast float %3797, 0xBFDEC709E0000000
  %3899 = fmul fast float %3898, %3891
  %3900 = call float @dx.op.unary.f32(i32 21, float %3899)  ; Exp(value)
  %3901 = fmul fast float %3900, 7.500000e-01
  %3902 = fmul fast float %3894, %3892
  %3903 = call float @dx.op.unary.f32(i32 21, float %3902)  ; Exp(value)
  %3904 = fmul fast float %3903, 2.500000e-01
  %3905 = fmul fast float %3898, %3892
  %3906 = call float @dx.op.unary.f32(i32 21, float %3905)  ; Exp(value)
  %3907 = fmul fast float %3906, 7.500000e-01
  %3908 = fmul fast float %3894, %3893
  %3909 = call float @dx.op.unary.f32(i32 21, float %3908)  ; Exp(value)
  %3910 = fmul fast float %3909, 2.500000e-01
  %3911 = fmul fast float %3898, %3893
  %3912 = call float @dx.op.unary.f32(i32 21, float %3911)  ; Exp(value)
  %3913 = fmul fast float %3912, 7.500000e-01
  %3914 = fadd fast float %3897, %3901
  %3915 = fadd fast float %3904, %3907
  %3916 = fadd fast float %3910, %3913
  %3917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.i32 %3917, 3
  %3919 = and i32 %3918, 8
  %3920 = icmp ne i32 %3919, 0
  %3921 = call float @dx.op.binary.f32(i32 35, float %3838, float %3785)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3839, float %3785)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3840, float %3785)  ; FMax(a,b)
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3838, float %3839, float %3840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = select i1 %184, float %3785, float %3838
  %3926 = select i1 %184, float %3924, float %3839
  %3927 = select i1 %184, float 1.000000e+00, float %3840
  %3928 = select i1 %3920, float %3921, float %3925
  %3929 = select i1 %3920, float %3922, float %3926
  %3930 = select i1 %3920, float %3923, float %3927
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3935 = fadd fast float %3932, %140
  %3936 = fadd fast float %3933, %141
  %3937 = fadd fast float %3934, %142
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3941 = fsub fast float %3935, %3939
  %3942 = fsub fast float %3936, %3940
  %3943 = fmul fast float %3941, %3941
  %3944 = fmul fast float %3942, %3942
  %3945 = fadd fast float %3943, %3944
  %3946 = call float @dx.op.unary.f32(i32 24, float %3945)  ; Sqrt(value)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3948 = fcmp fast olt float %3946, %3947
  br i1 %3948, label %3949, label %4016

; <label>:3949                                    ; preds = %3869
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.CBufRet.f32 %3950, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3952, 1
  %3958 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3959 = extractvalue %dx.types.CBufRet.f32 %3950, 3
  %3960 = extractvalue %dx.types.CBufRet.f32 %3952, 3
  %3961 = extractvalue %dx.types.CBufRet.f32 %3954, 3
  %3962 = fadd fast float %3959, %3935
  %3963 = fadd fast float %3960, %3936
  %3964 = fadd fast float %3961, %3937
  %3965 = fmul fast float %3962, %3951
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3953, float %3965)  ; FMad(a,b,c)
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3955, float %3966)  ; FMad(a,b,c)
  %3968 = fmul fast float %3962, %3956
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3957, float %3968)  ; FMad(a,b,c)
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3958, float %3969)  ; FMad(a,b,c)
  %3971 = fsub fast float %3967, %3959
  %3972 = fsub fast float %3970, %3960
  %3973 = fsub fast float %3971, %3939
  %3974 = fadd fast float %3973, %3947
  %3975 = fsub fast float %3972, %3940
  %3976 = fadd fast float %3975, %3947
  %3977 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3978 = fmul fast float %3974, %3977
  %3979 = fmul fast float %3976, %3977
  %3980 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3981 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3982 = fsub fast float 1.000000e+00, %3980
  %3983 = fsub fast float 1.000000e+00, %3981
  %3984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %3982, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = fcmp fast ugt float %3985, 0.000000e+00
  br i1 %3986, label %3987, label %4290

; <label>:3987                                    ; preds = %3949
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 2
  %3990 = fmul fast float %3989, %3985
  %3991 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3992 = fadd fast float %3991, %3990
  %3993 = extractvalue %dx.types.CBufRet.f32 %3954, 2
  %3994 = fadd fast float %3992, %3961
  %3995 = fmul fast float %3967, %3955
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3958, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3993, float %3996)  ; FMad(a,b,c)
  %3998 = fsub fast float %3997, %3961
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 2
  %4001 = fsub fast float %3998, %4000
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %3982, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %3982, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = fadd fast float %4007, %4003
  %4011 = fmul fast float %4010, 0x3F847AE140000000
  %4012 = fadd fast float %4008, %4004
  %4013 = fmul fast float %4012, 0x3F847AE140000000
  %4014 = fadd fast float %4009, %4005
  %4015 = fmul fast float %4014, 0x3F847AE140000000
  br label %4290

; <label>:4016                                    ; preds = %3869
  %4017 = and i32 %158, 1
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4290, label %4019

; <label>:4019                                    ; preds = %4016
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4020, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4029 = extractvalue %dx.types.CBufRet.f32 %4020, 3
  %4030 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4031 = extractvalue %dx.types.CBufRet.f32 %4024, 3
  %4032 = fadd fast float %4029, %3935
  %4033 = fadd fast float %4030, %3936
  %4034 = fadd fast float %4031, %3937
  %4035 = fmul fast float %4032, %4021
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4023, float %4035)  ; FMad(a,b,c)
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4025, float %4036)  ; FMad(a,b,c)
  %4038 = fmul fast float %4032, %4026
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4027, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4028, float %4039)  ; FMad(a,b,c)
  %4041 = fsub fast float %4037, %4029
  %4042 = fsub fast float %4040, %4030
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4043, 2
  %4047 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.i32 %4050, 0
  %4052 = extractvalue %dx.types.CBufRet.i32 %4050, 1
  %4053 = udiv i32 %4052, %4051
  %4054 = fsub fast float %4041, %4044
  %4055 = fsub fast float %4042, %4045
  %4056 = call float @dx.op.binary.f32(i32 35, float %4054, float 0.000000e+00)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4055, float 0.000000e+00)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 36, float %4056, float %4046)  ; FMin(a,b)
  %4059 = call float @dx.op.binary.f32(i32 36, float %4057, float %4047)  ; FMin(a,b)
  %4060 = add i32 %4051, -1
  %4061 = add i32 %4053, -1
  %4062 = fmul fast float %4058, %4049
  %4063 = fmul fast float %4059, %4049
  %4064 = fptoui float %4062 to i32
  %4065 = fptoui float %4063 to i32
  %4066 = call i32 @dx.op.binary.i32(i32 40, i32 %4064, i32 %4060)  ; UMin(a,b)
  %4067 = call i32 @dx.op.binary.i32(i32 40, i32 %4065, i32 %4061)  ; UMin(a,b)
  %4068 = mul i32 %4067, %4051
  %4069 = add i32 %4068, %4066
  %4070 = shl i32 %4069, 2
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = icmp eq i32 %4072, -1
  br i1 %4073, label %4290, label %4074

; <label>:4074                                    ; preds = %4019
  %4075 = mul i32 %4072, 148
  %4076 = add i32 %4075, 4
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = add i32 %4075, 8
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4075, 36
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4075, 60
  %4086 = add i32 %4075, 92
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = add i32 %4075, 116
  %4090 = fsub fast float %4041, %4078
  %4091 = fsub fast float %4042, %4081
  %4092 = fmul fast float %4049, %4090
  %4093 = fmul fast float %4049, %4091
  %4094 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4095 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4099 = call float @dx.op.unary.f32(i32 83, float %4094)  ; DerivCoarseX(value)
  %4100 = call float @dx.op.unary.f32(i32 83, float %4096)  ; DerivCoarseX(value)
  %4101 = call float @dx.op.unary.f32(i32 84, float %4094)  ; DerivCoarseY(value)
  %4102 = call float @dx.op.unary.f32(i32 84, float %4096)  ; DerivCoarseY(value)
  %4103 = fmul fast float %4099, %4098
  %4104 = fmul fast float %4100, %4098
  %4105 = fmul fast float %4101, %4098
  %4106 = fmul fast float %4102, %4098
  %4107 = call float @dx.op.dot2.f32(i32 54, float %4105, float %4106, float %4105, float %4106)  ; Dot2(ax,ay,bx,by)
  %4108 = call float @dx.op.dot2.f32(i32 54, float %4103, float %4104, float %4103, float %4104)  ; Dot2(ax,ay,bx,by)
  %4109 = call float @dx.op.binary.f32(i32 35, float %4108, float %4107)  ; FMax(a,b)
  %4110 = call float @dx.op.unary.f32(i32 23, float %4109)  ; Log(value)
  %4111 = fmul fast float %4110, 5.000000e-01
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4114 = fadd fast float %4113, %4111
  %4115 = call float @dx.op.binary.f32(i32 35, float %4114, float 0.000000e+00)  ; FMax(a,b)
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4118 = fadd fast float %4117, %4115
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = fadd fast float %4118, %4120
  %4122 = add i32 %4088, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4123, i32 0)  ; GetDimensions(handle,mipLevel)
  %4125 = extractvalue %dx.types.Dimensions %4124, 0
  %4126 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4125)  ; FirstbitLo(value)
  %4127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.i32 %4127, 1
  %4129 = sub nsw i32 %4128, %4126
  %4130 = sitofp i32 %4129 to float
  %4131 = fsub fast float %4121, %4130
  %4132 = call float @dx.op.binary.f32(i32 35, float %4131, float 0.000000e+00)  ; FMax(a,b)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4123, %dx.types.Handle %34, float %4094, float %4096, float %4084, float undef, i32 0, i32 0, i32 undef, float %4132)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = fcmp ule float %4134, 0x3FE0101020000000
  %4136 = extractvalue %dx.types.CBufRet.i32 %4127, 0
  %4137 = and i32 %4136, 128
  %4138 = icmp ne i32 %4137, 0
  %4139 = and i1 %4135, %4138
  br i1 %4139, label %4290, label %4140

; <label>:4140                                    ; preds = %4074
  %4141 = add i32 %4075, 20
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = add i32 %4075, 24
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = add i32 %4075, 40
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = add i32 %4075, 96
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 2
  %4155 = fmul fast float %4154, %4094
  %4156 = fmul fast float %4154, %4096
  %4157 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4158 = fadd fast float %4155, %4157
  %4159 = fadd fast float %4156, %4157
  %4160 = add i32 %4152, 0
  %4161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4160, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4162 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4161, i32 0)  ; GetDimensions(handle,mipLevel)
  %4163 = extractvalue %dx.types.Dimensions %4162, 0
  %4164 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4163)  ; FirstbitLo(value)
  %4165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.i32 %4165, 1
  %4167 = sub nsw i32 %4166, %4164
  %4168 = sitofp i32 %4167 to float
  %4169 = fsub fast float %4118, %4168
  %4170 = call float @dx.op.binary.f32(i32 35, float %4169, float 0.000000e+00)  ; FMax(a,b)
  %4171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4161, %dx.types.Handle %34, float %4158, float %4159, float %4149, float undef, i32 0, i32 0, i32 undef, float %4170)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = fmul fast float %4172, %4143
  %4174 = fadd fast float %4173, %4146
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 3
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4183 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4184 = fadd fast float %4180, %4041
  %4185 = fadd fast float %4182, %4042
  %4186 = fadd fast float %4174, %4183
  %4187 = fmul fast float %4184, %4176
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4177, float %4187)  ; FMad(a,b,c)
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4178, float %4188)  ; FMad(a,b,c)
  %4190 = fsub fast float %4189, %4183
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4193 = fsub fast float %4190, %4192
  %4194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.i32 %4194, 0
  %4196 = call i32 @dx.op.binary.i32(i32 40, i32 %4072, i32 %4195)  ; UMin(a,b)
  %4197 = mul i32 %4196, 36
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = add i32 %4197, 4
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = fmul fast float %4202, %4094
  %4204 = fmul fast float %4202, %4096
  %4205 = extractvalue %dx.types.CBufRet.f32 %4201, 1
  %4206 = fadd fast float %4203, %4205
  %4207 = fadd fast float %4204, %4205
  %4208 = icmp eq i32 %4199, 0
  br i1 %4208, label %4277, label %4209

; <label>:4209                                    ; preds = %4140
  br label %4210

; <label>:4210                                    ; preds = %4267, %4209
  %4211 = phi float [ %4268, %4267 ], [ 0.000000e+00, %4209 ]
  %4212 = phi float [ %4269, %4267 ], [ 0.000000e+00, %4209 ]
  %4213 = phi float [ %4270, %4267 ], [ 0.000000e+00, %4209 ]
  %4214 = phi float [ %4271, %4267 ], [ 0.000000e+00, %4209 ]
  %4215 = phi float [ %4272, %4267 ], [ 0.000000e+00, %4209 ]
  %4216 = phi float [ %4273, %4267 ], [ 0.000000e+00, %4209 ]
  %4217 = phi i32 [ %4274, %4267 ], [ 0, %4209 ]
  %4218 = shl i32 %4217, 2
  %4219 = add i32 %4085, %4218
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4089, %4218
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = add i32 %4224, 0
  %4226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4225, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4227 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4226, i32 0)  ; GetDimensions(handle,mipLevel)
  %4228 = extractvalue %dx.types.Dimensions %4227, 0
  %4229 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4228)  ; FirstbitLo(value)
  %4230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.i32 %4230, 1
  %4232 = sub nsw i32 %4231, %4229
  %4233 = sitofp i32 %4232 to float
  %4234 = fsub fast float %4118, %4233
  %4235 = call float @dx.op.binary.f32(i32 35, float %4234, float 0.000000e+00)  ; FMax(a,b)
  %4236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4226, %dx.types.Handle %34, float %4206, float %4207, float %4221, float undef, i32 0, i32 0, i32 undef, float %4235)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = fcmp fast ogt float %4237, 0.000000e+00
  br i1 %4238, label %4239, label %4267

; <label>:4239                                    ; preds = %4210
  %4240 = add i32 %4200, %4218
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = and i32 %4242, 32767
  %4244 = mul nuw nsw i32 %4243, 928
  %4245 = add nuw nsw i32 %4244, 48
  %4246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = extractvalue %dx.types.ResRet.f32 %4246, 1
  %4249 = extractvalue %dx.types.ResRet.f32 %4246, 2
  %4250 = add nuw nsw i32 %4244, 60
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = fmul fast float %4247, %4237
  %4256 = fmul fast float %4248, %4237
  %4257 = fmul fast float %4249, %4237
  %4258 = fadd fast float %4255, %4211
  %4259 = fadd fast float %4256, %4212
  %4260 = fadd fast float %4257, %4213
  %4261 = fmul fast float %4252, %4237
  %4262 = fmul fast float %4253, %4237
  %4263 = fmul fast float %4254, %4237
  %4264 = fadd fast float %4261, %4214
  %4265 = fadd fast float %4262, %4215
  %4266 = fadd fast float %4263, %4216
  br label %4267

; <label>:4267                                    ; preds = %4239, %4210
  %4268 = phi float [ %4258, %4239 ], [ %4211, %4210 ]
  %4269 = phi float [ %4259, %4239 ], [ %4212, %4210 ]
  %4270 = phi float [ %4260, %4239 ], [ %4213, %4210 ]
  %4271 = phi float [ %4264, %4239 ], [ %4214, %4210 ]
  %4272 = phi float [ %4265, %4239 ], [ %4215, %4210 ]
  %4273 = phi float [ %4266, %4239 ], [ %4216, %4210 ]
  %4274 = add nuw i32 %4217, 1
  %4275 = icmp eq i32 %4274, %4199
  br i1 %4275, label %4276, label %4210

; <label>:4276                                    ; preds = %4267
  br label %4277

; <label>:4277                                    ; preds = %4276, %4140
  %4278 = phi float [ 0.000000e+00, %4140 ], [ %4268, %4276 ]
  %4279 = phi float [ 0.000000e+00, %4140 ], [ %4269, %4276 ]
  %4280 = phi float [ 0.000000e+00, %4140 ], [ %4270, %4276 ]
  %4281 = phi float [ 0.000000e+00, %4140 ], [ %4271, %4276 ]
  %4282 = phi float [ 0.000000e+00, %4140 ], [ %4272, %4276 ]
  %4283 = phi float [ 0.000000e+00, %4140 ], [ %4273, %4276 ]
  %4284 = fadd fast float %4281, %4278
  %4285 = fmul fast float %4284, 0x3F847AE140000000
  %4286 = fadd fast float %4282, %4279
  %4287 = fmul fast float %4286, 0x3F847AE140000000
  %4288 = fadd fast float %4283, %4280
  %4289 = fmul fast float %4288, 0x3F847AE140000000
  br label %4290

; <label>:4290                                    ; preds = %4277, %4074, %4019, %4016, %3987, %3949
  %4291 = phi float [ %4001, %3987 ], [ -1.310720e+05, %3949 ], [ %4193, %4277 ], [ -1.310720e+05, %4019 ], [ -1.310720e+05, %4074 ], [ -1.310720e+05, %4016 ]
  %4292 = phi float [ %4011, %3987 ], [ 0.000000e+00, %3949 ], [ %4285, %4277 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %4074 ], [ 0.000000e+00, %4016 ]
  %4293 = phi float [ %4013, %3987 ], [ 0.000000e+00, %3949 ], [ %4287, %4277 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %4074 ], [ 0.000000e+00, %4016 ]
  %4294 = phi float [ %4015, %3987 ], [ 0.000000e+00, %3949 ], [ %4289, %4277 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %4074 ], [ 0.000000e+00, %4016 ]
  %4295 = phi i1 [ true, %3987 ], [ false, %3949 ], [ true, %4277 ], [ false, %4019 ], [ false, %4074 ], [ false, %4016 ]
  %4296 = and i32 %158, 3
  %4297 = icmp eq i32 %4296, 1
  %4298 = select i1 %4297, float 1.000000e+00, float 0.000000e+00
  %4299 = fsub fast float %4291, %142
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = select i1 %4295, float %4300, float 1.000000e+00
  %4302 = fmul fast float %4301, %4298
  %4303 = icmp eq i32 %4296, 3
  %4304 = select i1 %4303, float 1.000000e+00, float %4302
  %4305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4304)  ; FMax(a,b)
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = fcmp fast une float %4306, 0.000000e+00
  %4308 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 25, float %4308)  ; Rsqrt(value)
  br i1 %4307, label %4317, label %4310

; <label>:4310                                    ; preds = %4290
  %4311 = fmul fast float %4309, %140
  %4312 = fmul fast float %4309, %141
  %4313 = fmul fast float %4309, %142
  %4314 = fsub fast float -0.000000e+00, %4311
  %4315 = fsub fast float -0.000000e+00, %4312
  %4316 = fsub fast float -0.000000e+00, %4313
  br label %4485

; <label>:4317                                    ; preds = %4290
  %4318 = fmul fast float %140, %4309
  %4319 = fsub fast float -0.000000e+00, %4318
  %4320 = fmul fast float %141, %4309
  %4321 = fsub fast float -0.000000e+00, %4320
  %4322 = fmul fast float %142, %4309
  %4323 = fsub fast float -0.000000e+00, %4322
  %4324 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4321, float %4323, float %90, float %92, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = fmul fast float %4306, 2.500000e+00
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %4306, 0x4013FFFFE0000000
  %4328 = fadd fast float %4327, 0xBFFFFFFFE0000000
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %4306, 0x4004000020000000
  %4331 = fadd fast float %4330, 0xBFF8000040000000
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4334 = fmul fast float %3829, 1.000000e+01
  %4335 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4336 = fmul fast float %4335, 2.000000e+00
  %4337 = fsub fast float 3.000000e+00, %4336
  %4338 = fmul fast float %4335, %4335
  %4339 = fmul fast float %4338, %4337
  %4340 = fsub fast float 1.000000e+00, %4339
  %4341 = fsub fast float 0x3FE3333340000000, %3850
  %4342 = fmul fast float %4341, 0x400AAAAAA0000000
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = fmul fast float %4340, %4343
  %4345 = fmul fast float %3928, 0x3FEA2B8620000000
  %4346 = fmul fast float %3929, 0x3FEA2B8620000000
  %4347 = fmul fast float %3930, 0x3FEA2B8620000000
  %4348 = fadd fast float %4345, 0x3FC81DFBA0000000
  %4349 = fmul fast float %4348, %3928
  %4350 = fadd fast float %4349, 0x3F910E6020000000
  %4351 = fadd fast float %4346, 0x3FC81DFBA0000000
  %4352 = fmul fast float %4351, %3929
  %4353 = fadd fast float %4352, 0x3F910E6020000000
  %4354 = fadd fast float %4347, 0x3FC81DFBA0000000
  %4355 = fmul fast float %4354, %3930
  %4356 = fadd fast float %4355, 0x3F910E6020000000
  %4357 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = fsub fast float %4357, %3928
  %4361 = fsub fast float %4358, %3929
  %4362 = fsub fast float %4359, %3930
  %4363 = fmul fast float %4360, %4333
  %4364 = fmul fast float %4363, %4344
  %4365 = fmul fast float %4361, %4333
  %4366 = fmul fast float %4365, %4344
  %4367 = fmul fast float %4362, %4333
  %4368 = fmul fast float %4367, %4344
  %4369 = fadd fast float %4364, %3928
  %4370 = fadd fast float %4366, %3929
  %4371 = fadd fast float %4368, %3930
  %4372 = fmul fast float %3796, %3796
  %4373 = fmul fast float %4372, %4372
  %4374 = fadd fast float %4329, 1.000000e+00
  %4375 = fsub fast float %4374, %4344
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = call float @dx.op.dot3.f32(i32 55, float %90, float %92, float %94, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fsub fast float 1.000000e+00, %4373
  %4380 = call float @dx.op.binary.f32(i32 36, float %4376, float %4379)  ; FMin(a,b)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4382 = call float @dx.op.binary.f32(i32 35, float %4380, float %4381)  ; FMax(a,b)
  %4383 = fadd fast float %4378, 0xBFE4CCCCC0000000
  %4384 = fmul fast float %4383, 0x4006DB6DA0000000
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4385, 2.000000e+00
  %4387 = fsub fast float 3.000000e+00, %4386
  %4388 = bitcast float %3847 to i32
  %4389 = ashr i32 %4388, 1
  %4390 = add nsw i32 %4389, 532487669
  %4391 = bitcast i32 %4390 to float
  %4392 = fsub fast float 1.000000e+00, %4391
  %4393 = bitcast float %4392 to i32
  %4394 = sub nsw i32 2129859010, %4393
  %4395 = bitcast i32 %4394 to float
  %4396 = fmul fast float %4395, 2.000000e+00
  %4397 = bitcast float %3848 to i32
  %4398 = ashr i32 %4397, 1
  %4399 = add nsw i32 %4398, 532487669
  %4400 = bitcast i32 %4399 to float
  %4401 = fsub fast float 1.000000e+00, %4400
  %4402 = bitcast float %4401 to i32
  %4403 = sub nsw i32 2129859010, %4402
  %4404 = bitcast i32 %4403 to float
  %4405 = fmul fast float %4404, 2.000000e+00
  %4406 = bitcast float %3849 to i32
  %4407 = ashr i32 %4406, 1
  %4408 = add nsw i32 %4407, 532487669
  %4409 = bitcast i32 %4408 to float
  %4410 = fsub fast float 1.000000e+00, %4409
  %4411 = bitcast float %4410 to i32
  %4412 = sub nsw i32 2129859010, %4411
  %4413 = bitcast i32 %4412 to float
  %4414 = fmul fast float %4413, 2.000000e+00
  %4415 = fsub fast float 0x4002A9FBE0000000, %4396
  %4416 = fadd fast float %4396, 0x3FD54FDF00000000
  %4417 = bitcast float %4416 to i32
  %4418 = sub nsw i32 2129859010, %4417
  %4419 = bitcast i32 %4418 to float
  %4420 = fmul fast float %4419, %4415
  %4421 = fmul fast float %4420, %4420
  %4422 = fsub fast float 0x4002A9FBE0000000, %4405
  %4423 = fadd fast float %4405, 0x3FD54FDF00000000
  %4424 = bitcast float %4423 to i32
  %4425 = sub nsw i32 2129859010, %4424
  %4426 = bitcast i32 %4425 to float
  %4427 = fmul fast float %4426, %4422
  %4428 = fmul fast float %4427, %4427
  %4429 = fsub fast float 0x4002A9FBE0000000, %4414
  %4430 = fadd fast float %4414, 0x3FD54FDF00000000
  %4431 = bitcast float %4430 to i32
  %4432 = sub nsw i32 2129859010, %4431
  %4433 = bitcast i32 %4432 to float
  %4434 = fmul fast float %4433, %4429
  %4435 = fmul fast float %4434, %4434
  %4436 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4421)  ; FMax(a,b)
  %4437 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4428)  ; FMax(a,b)
  %4438 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4435)  ; FMax(a,b)
  %4439 = fsub fast float 1.000000e+00, %4324
  %4440 = fadd fast float %4439, %4340
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fsub fast float 1.000000e+00, %4304
  %4443 = fmul fast float %4382, %4442
  %4444 = fmul fast float %4385, %4385
  %4445 = fmul fast float %4444, %4443
  %4446 = fmul fast float %4445, %4387
  %4447 = fmul fast float %4442, 0xBFE99999A0000000
  %4448 = fmul fast float %4447, %4333
  %4449 = fmul fast float %4448, %4344
  %4450 = fadd fast float %4449, 1.000000e+00
  %4451 = fadd fast float %3850, -1.000000e+00
  %4452 = fmul fast float %4450, %4451
  %4453 = fadd fast float %4452, 1.000000e+00
  %4454 = fsub fast float %4436, %3847
  %4455 = fsub fast float %4437, %3848
  %4456 = fsub fast float %4438, %3849
  %4457 = fmul fast float %4446, %4454
  %4458 = fmul fast float %4446, %4455
  %4459 = fmul fast float %4446, %4456
  %4460 = fadd fast float %4457, %3847
  %4461 = fadd fast float %4458, %3848
  %4462 = fadd fast float %4459, %3849
  %4463 = fsub fast float %90, %3826
  %4464 = fsub fast float %92, %3827
  %4465 = fsub fast float %94, %3828
  %4466 = fmul fast float %4446, %4463
  %4467 = fmul fast float %4446, %4464
  %4468 = fmul fast float %4446, %4465
  %4469 = fadd fast float %4466, %3826
  %4470 = fadd fast float %4467, %3827
  %4471 = fadd fast float %4468, %3828
  %4472 = fmul fast float %4446, %4441
  %4473 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4474 = fsub fast float 1.000000e+00, %4473
  %4475 = fmul fast float %4472, %4474
  %4476 = fadd fast float %4475, %4473
  %4477 = fsub fast float 1.000000e+00, %3796
  %4478 = fmul fast float %4446, %4477
  %4479 = fadd fast float %4478, %3796
  %4480 = call float @dx.op.dot3.f32(i32 55, float %4469, float %4470, float %4471, float %4469, float %4470, float %4471)  ; Dot3(ax,ay,az,bx,by,bz)
  %4481 = call float @dx.op.unary.f32(i32 25, float %4480)  ; Rsqrt(value)
  %4482 = fmul fast float %4469, %4481
  %4483 = fmul fast float %4470, %4481
  %4484 = fmul fast float %4471, %4481
  br label %4485

; <label>:4485                                    ; preds = %4317, %4310
  %4486 = phi float [ %4316, %4310 ], [ %4323, %4317 ]
  %4487 = phi float [ %4315, %4310 ], [ %4321, %4317 ]
  %4488 = phi float [ %4314, %4310 ], [ %4319, %4317 ]
  %4489 = phi float [ %4313, %4310 ], [ %4322, %4317 ]
  %4490 = phi float [ %4312, %4310 ], [ %4320, %4317 ]
  %4491 = phi float [ %4311, %4310 ], [ %4318, %4317 ]
  %4492 = phi float [ %3826, %4310 ], [ %4482, %4317 ]
  %4493 = phi float [ %3827, %4310 ], [ %4483, %4317 ]
  %4494 = phi float [ %3828, %4310 ], [ %4484, %4317 ]
  %4495 = phi float [ %3928, %4310 ], [ %4369, %4317 ]
  %4496 = phi float [ %3929, %4310 ], [ %4370, %4317 ]
  %4497 = phi float [ %3930, %4310 ], [ %4371, %4317 ]
  %4498 = phi float [ %3847, %4310 ], [ %4460, %4317 ]
  %4499 = phi float [ %3848, %4310 ], [ %4461, %4317 ]
  %4500 = phi float [ %3849, %4310 ], [ %4462, %4317 ]
  %4501 = phi float [ %3850, %4310 ], [ %4476, %4317 ]
  %4502 = phi float [ %3796, %4310 ], [ %4479, %4317 ]
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4505 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4506 = fmul fast float %4504, %81
  %4507 = fmul fast float %4505, %82
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4506, float %4507, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = fmul fast float %4512, %4510
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fadd fast float %4514, -1.000000e+00
  %4516 = fmul fast float %4515, %4509
  %4517 = fadd fast float %4516, 1.000000e+00
  %4518 = select i1 %184, float 0.000000e+00, float %4500
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %4488, float %4487, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4490, float %4489, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = fmul fast float %4521, 2.000000e+00
  %4523 = fmul fast float %4522, %4492
  %4524 = fmul fast float %4522, %4493
  %4525 = fmul fast float %4522, %4494
  %4526 = fsub fast float %4491, %4523
  %4527 = fsub fast float %4490, %4524
  %4528 = fsub fast float %4489, %4525
  %4529 = call float @dx.op.binary.f32(i32 36, float %4502, float %4517)  ; FMin(a,b)
  %4530 = fsub fast float 1.000000e+00, %4529
  %4531 = bitcast float %4530 to i32
  %4532 = ashr i32 %4531, 1
  %4533 = add nsw i32 %4532, 532487669
  %4534 = bitcast i32 %4533 to float
  %4535 = fsub fast float 1.000000e+00, %4501
  %4536 = call float @dx.op.binary.f32(i32 35, float %4535, float 0x3F847AE140000000)  ; FMax(a,b)
  %4537 = fmul fast float %4536, %4536
  %4538 = fmul fast float %4537, %4537
  %4539 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4534, float %4538, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = fsub fast float 1.000000e+00, %4502
  %4543 = bitcast float %4542 to i32
  %4544 = sub nsw i32 2129859010, %4543
  %4545 = bitcast i32 %4544 to float
  %4546 = call float @dx.op.dot3.f32(i32 55, float %58, float %54, float %50, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = fmul fast float %4546, 0x3FD20DD760000000
  %4548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4549 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = fcmp fast oeq float %4549, 0.000000e+00
  %4551 = fcmp fast oeq float %4548, 0.000000e+00
  %4552 = or i1 %4551, %4550
  br i1 %4552, label %4582, label %4553

; <label>:4553                                    ; preds = %4485
  %4554 = fsub fast float -0.000000e+00, %61
  %4555 = fsub fast float -0.000000e+00, %59
  %4556 = call float @dx.op.unary.f32(i32 24, float %4549)  ; Sqrt(value)
  %4557 = fdiv fast float %4556, %4548
  %4558 = fcmp fast ogt float %4557, 0x3FFB6F8900000000
  %4559 = select i1 %4558, float 0x3FFB6F8900000000, float %4557
  %4560 = fmul fast float %4559, 0x3FE8A23460000000
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = call float @dx.op.binary.f32(i32 35, float %4559, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4563 = fmul fast float %4561, %4548
  %4564 = fmul fast float %4562, 0x3FF279A740000000
  %4565 = fadd fast float %4564, -1.000000e+00
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %60, float %4554, float %4555, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.unary.f32(i32 25, float %4566)  ; Rsqrt(value)
  %4568 = fmul fast float %4567, %4554
  %4569 = fmul fast float %4567, %4555
  %4570 = fmul fast float %4567, %60
  %4571 = fmul fast float %4565, %4565
  %4572 = fsub fast float 1.000000e+00, %4571
  %4573 = fmul fast float %4562, 0x40005F8BE0000000
  %4574 = fsub fast float 0x400C5BF8A0000000, %4573
  %4575 = fdiv fast float %4563, %4574
  %4576 = fmul fast float %4575, 0x3FEE31C3C0000000
  %4577 = fmul fast float %4576, %4572
  %4578 = fmul fast float %4562, 0x3FDACB7480000000
  %4579 = fadd fast float %4578, 0xBFD7347680000000
  %4580 = fmul fast float %4579, %4575
  %4581 = fmul fast float %4580, %4572
  br label %4582

; <label>:4582                                    ; preds = %4553, %4485
  %4583 = phi float [ %4568, %4553 ], [ 0.000000e+00, %4485 ]
  %4584 = phi float [ %4569, %4553 ], [ 0.000000e+00, %4485 ]
  %4585 = phi float [ %4570, %4553 ], [ 0.000000e+00, %4485 ]
  %4586 = phi float [ %4577, %4553 ], [ 0.000000e+00, %4485 ]
  %4587 = phi float [ %4581, %4553 ], [ 0.000000e+00, %4485 ]
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = fmul fast float %4588, 0x3FDF454380000000
  %4590 = fmul fast float %4588, %4588
  %4591 = fmul fast float %4590, 0x3FEE471020000000
  %4592 = fadd fast float %4591, 0xBFD42F6020000000
  %4593 = fmul fast float %4548, 0x3FD20DD760000000
  %4594 = fmul fast float %4592, %4587
  %4595 = fadd fast float %4594, %4593
  %4596 = fmul fast float %4589, %4586
  %4597 = fadd fast float %4595, %4596
  %4598 = fsub fast float %4595, %4596
  %4599 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = fmul fast float %4599, 0x3FDF454380000000
  %4601 = fmul fast float %4599, %4599
  %4602 = fmul fast float %4601, 0x3FEE471020000000
  %4603 = fadd fast float %4602, 0xBFD42F6020000000
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4586, float %4587, float 0x3FD20DD760000000, float %4600, float %4603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4606 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = fcmp fast oeq float %4606, 0.000000e+00
  %4608 = fcmp fast oeq float %4605, 0.000000e+00
  %4609 = or i1 %4608, %4607
  br i1 %4609, label %4639, label %4610

; <label>:4610                                    ; preds = %4582
  %4611 = fsub fast float -0.000000e+00, %57
  %4612 = fsub fast float -0.000000e+00, %55
  %4613 = call float @dx.op.unary.f32(i32 24, float %4606)  ; Sqrt(value)
  %4614 = fdiv fast float %4613, %4605
  %4615 = fcmp fast ogt float %4614, 0x3FFB6F8900000000
  %4616 = select i1 %4615, float 0x3FFB6F8900000000, float %4614
  %4617 = fmul fast float %4616, 0x3FE8A23460000000
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = call float @dx.op.binary.f32(i32 35, float %4616, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4620 = fmul fast float %4618, %4605
  %4621 = fmul fast float %4619, 0x3FF279A740000000
  %4622 = fadd fast float %4621, -1.000000e+00
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %56, float %4611, float %4612, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 25, float %4623)  ; Rsqrt(value)
  %4625 = fmul fast float %4624, %4611
  %4626 = fmul fast float %4624, %4612
  %4627 = fmul fast float %4624, %56
  %4628 = fmul fast float %4622, %4622
  %4629 = fsub fast float 1.000000e+00, %4628
  %4630 = fmul fast float %4619, 0x40005F8BE0000000
  %4631 = fsub fast float 0x400C5BF8A0000000, %4630
  %4632 = fdiv fast float %4620, %4631
  %4633 = fmul fast float %4632, 0x3FEE31C3C0000000
  %4634 = fmul fast float %4633, %4629
  %4635 = fmul fast float %4619, 0x3FDACB7480000000
  %4636 = fadd fast float %4635, 0xBFD7347680000000
  %4637 = fmul fast float %4636, %4632
  %4638 = fmul fast float %4637, %4629
  br label %4639

; <label>:4639                                    ; preds = %4610, %4582
  %4640 = phi float [ %4625, %4610 ], [ 0.000000e+00, %4582 ]
  %4641 = phi float [ %4626, %4610 ], [ 0.000000e+00, %4582 ]
  %4642 = phi float [ %4627, %4610 ], [ 0.000000e+00, %4582 ]
  %4643 = phi float [ %4634, %4610 ], [ 0.000000e+00, %4582 ]
  %4644 = phi float [ %4638, %4610 ], [ 0.000000e+00, %4582 ]
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4640, float %4641, float %4642, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = fmul fast float %4645, 0x3FDF454380000000
  %4647 = fmul fast float %4645, %4645
  %4648 = fmul fast float %4647, 0x3FEE471020000000
  %4649 = fadd fast float %4648, 0xBFD42F6020000000
  %4650 = fmul fast float %4605, 0x3FD20DD760000000
  %4651 = fmul fast float %4649, %4644
  %4652 = fadd fast float %4651, %4650
  %4653 = fmul fast float %4646, %4643
  %4654 = fadd fast float %4652, %4653
  %4655 = fsub fast float %4652, %4653
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4640, float %4641, float %4642, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = fmul fast float %4656, 0x3FDF454380000000
  %4658 = fmul fast float %4656, %4656
  %4659 = fmul fast float %4658, 0x3FEE471020000000
  %4660 = fadd fast float %4659, 0xBFD42F6020000000
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4643, float %4644, float 0x3FD20DD760000000, float %4657, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4663 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = fcmp fast oeq float %4663, 0.000000e+00
  %4665 = fcmp fast oeq float %4662, 0.000000e+00
  %4666 = or i1 %4665, %4664
  br i1 %4666, label %4696, label %4667

; <label>:4667                                    ; preds = %4639
  %4668 = fsub fast float -0.000000e+00, %53
  %4669 = fsub fast float -0.000000e+00, %51
  %4670 = call float @dx.op.unary.f32(i32 24, float %4663)  ; Sqrt(value)
  %4671 = fdiv fast float %4670, %4662
  %4672 = fcmp fast ogt float %4671, 0x3FFB6F8900000000
  %4673 = select i1 %4672, float 0x3FFB6F8900000000, float %4671
  %4674 = fmul fast float %4673, 0x3FE8A23460000000
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = call float @dx.op.binary.f32(i32 35, float %4673, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4677 = fmul fast float %4675, %4662
  %4678 = fmul fast float %4676, 0x3FF279A740000000
  %4679 = fadd fast float %4678, -1.000000e+00
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %52, float %4668, float %4669, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 25, float %4680)  ; Rsqrt(value)
  %4682 = fmul fast float %4681, %4668
  %4683 = fmul fast float %4681, %4669
  %4684 = fmul fast float %4681, %52
  %4685 = fmul fast float %4679, %4679
  %4686 = fsub fast float 1.000000e+00, %4685
  %4687 = fmul fast float %4676, 0x40005F8BE0000000
  %4688 = fsub fast float 0x400C5BF8A0000000, %4687
  %4689 = fdiv fast float %4677, %4688
  %4690 = fmul fast float %4689, 0x3FEE31C3C0000000
  %4691 = fmul fast float %4690, %4686
  %4692 = fmul fast float %4676, 0x3FDACB7480000000
  %4693 = fadd fast float %4692, 0xBFD7347680000000
  %4694 = fmul fast float %4693, %4689
  %4695 = fmul fast float %4694, %4686
  br label %4696

; <label>:4696                                    ; preds = %4667, %4639
  %4697 = phi float [ %4682, %4667 ], [ 0.000000e+00, %4639 ]
  %4698 = phi float [ %4683, %4667 ], [ 0.000000e+00, %4639 ]
  %4699 = phi float [ %4684, %4667 ], [ 0.000000e+00, %4639 ]
  %4700 = phi float [ %4691, %4667 ], [ 0.000000e+00, %4639 ]
  %4701 = phi float [ %4695, %4667 ], [ 0.000000e+00, %4639 ]
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = fmul fast float %4702, 0x3FDF454380000000
  %4704 = fmul fast float %4702, %4702
  %4705 = fmul fast float %4704, 0x3FEE471020000000
  %4706 = fadd fast float %4705, 0xBFD42F6020000000
  %4707 = fmul fast float %4662, 0x3FD20DD760000000
  %4708 = fmul fast float %4706, %4701
  %4709 = fadd fast float %4708, %4707
  %4710 = fmul fast float %4703, %4700
  %4711 = fadd fast float %4709, %4710
  %4712 = fsub fast float %4709, %4710
  %4713 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = fmul fast float %4713, 0x3FDF454380000000
  %4715 = fmul fast float %4713, %4713
  %4716 = fmul fast float %4715, 0x3FEE471020000000
  %4717 = fadd fast float %4716, 0xBFD42F6020000000
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4700, float %4701, float 0x3FD20DD760000000, float %4714, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.binary.f32(i32 35, float %4597, float 0.000000e+00)  ; FMax(a,b)
  %4720 = call float @dx.op.binary.f32(i32 35, float %4654, float 0.000000e+00)  ; FMax(a,b)
  %4721 = call float @dx.op.binary.f32(i32 35, float %4711, float 0.000000e+00)  ; FMax(a,b)
  %4722 = call float @dx.op.binary.f32(i32 35, float %4598, float 0.000000e+00)  ; FMax(a,b)
  %4723 = call float @dx.op.binary.f32(i32 35, float %4655, float 0.000000e+00)  ; FMax(a,b)
  %4724 = call float @dx.op.binary.f32(i32 35, float %4712, float 0.000000e+00)  ; FMax(a,b)
  %4725 = call float @dx.op.binary.f32(i32 35, float %4604, float 0.000000e+00)  ; FMax(a,b)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4661, float 0.000000e+00)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float %4718, float 0.000000e+00)  ; FMax(a,b)
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 0
  %4730 = call float @dx.op.binary.f32(i32 36, float %4495, float %4729)  ; FMin(a,b)
  %4731 = fmul fast float %4730, %4530
  %4732 = fsub fast float 1.000000e+00, %4731
  %4733 = bitcast float %4732 to i32
  %4734 = sub nsw i32 2129859010, %4733
  %4735 = bitcast i32 %4734 to float
  %4736 = call float @dx.op.binary.f32(i32 36, float %4496, float %4729)  ; FMin(a,b)
  %4737 = fmul fast float %4736, %4530
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = bitcast float %4738 to i32
  %4740 = sub nsw i32 2129859010, %4739
  %4741 = bitcast i32 %4740 to float
  %4742 = call float @dx.op.binary.f32(i32 36, float %4497, float %4729)  ; FMin(a,b)
  %4743 = fmul fast float %4742, %4530
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = bitcast float %4744 to i32
  %4746 = sub nsw i32 2129859010, %4745
  %4747 = bitcast i32 %4746 to float
  %4748 = fmul fast float %4719, %4529
  %4749 = fmul fast float %4748, %4735
  %4750 = fmul fast float %4720, %4529
  %4751 = fmul fast float %4750, %4741
  %4752 = fmul fast float %4721, %4529
  %4753 = fmul fast float %4752, %4747
  %4754 = call float @dx.op.binary.f32(i32 36, float %4498, float %4729)  ; FMin(a,b)
  %4755 = fmul fast float %4754, %4530
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = bitcast float %4756 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = call float @dx.op.binary.f32(i32 36, float %4499, float %4729)  ; FMin(a,b)
  %4761 = fmul fast float %4760, %4530
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = bitcast float %4762 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = call float @dx.op.binary.f32(i32 36, float %4518, float %4729)  ; FMin(a,b)
  %4767 = fmul fast float %4766, %4530
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = bitcast float %4768 to i32
  %4770 = sub nsw i32 2129859010, %4769
  %4771 = bitcast i32 %4770 to float
  %4772 = fmul fast float %4725, %4529
  %4773 = fmul fast float %4772, %4759
  %4774 = fmul fast float %4726, %4529
  %4775 = fmul fast float %4774, %4765
  %4776 = fmul fast float %4727, %4529
  %4777 = fmul fast float %4776, %4771
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4751, float %4753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = select i1 %184, float 0.000000e+00, float %4749
  %4780 = select i1 %184, float %4778, float %4751
  %4781 = select i1 %184, float 0.000000e+00, float %4753
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = select i1 %184, float 0.000000e+00, float %4722
  %4784 = select i1 %184, float %4782, float %4723
  %4785 = select i1 %184, float 0.000000e+00, float %4724
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4775, float %4777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = select i1 %184, float 0.000000e+00, float %4773
  %4788 = select i1 %184, float %4786, float %4775
  %4789 = select i1 %184, float 0.000000e+00, float %4777
  %4790 = fmul fast float %4520, 9.843750e-01
  %4791 = fmul fast float %4501, 9.843750e-01
  %4792 = fadd fast float %4790, 7.812500e-03
  %4793 = fadd fast float %4791, 7.812500e-03
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4792, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 2
  %4796 = extractvalue %dx.types.ResRet.f32 %4794, 3
  %4797 = fmul fast float %4795, %4498
  %4798 = fmul fast float %4795, %4499
  %4799 = fmul fast float %4795, %4518
  %4800 = fadd fast float %4797, %4796
  %4801 = fadd fast float %4798, %4796
  %4802 = fadd fast float %4799, %4796
  %4803 = call float @dx.op.binary.f32(i32 35, float %4801, float %4802)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4800, float %4803)  ; FMax(a,b)
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4804, %4501
  %4807 = fadd fast float %4806, %4501
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.CBufRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4812 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4813 = fmul fast float %4807, %4809
  %4814 = fadd fast float %4813, %4810
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fmul fast float %4811, %4807
  %4817 = fadd fast float %4816, %4812
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fsub fast float 1.000000e+00, %4541
  %4820 = fadd fast float %4819, %4818
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = fcmp fast olt float %4821, 1.000000e+00
  br i1 %4822, label %4823, label %5678

; <label>:4823                                    ; preds = %4696
  %4824 = fcmp fast olt float %4815, 1.000000e+00
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4827 = fcmp fast ogt float %4826, 0.000000e+00
  %4828 = or i1 %4824, %4827
  %4829 = or i1 %4824, %4827
  %4830 = xor i1 %4829, true
  %4831 = zext i1 %4830 to i32
  br i1 %4828, label %4832, label %5075

; <label>:4832                                    ; preds = %4823
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.CBufRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.CBufRet.f32 %4833, 2
  %4837 = extractvalue %dx.types.CBufRet.f32 %4833, 3
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4841 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4842 = extractvalue %dx.types.CBufRet.f32 %4838, 3
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.CBufRet.f32 %4843, 1
  %4846 = extractvalue %dx.types.CBufRet.f32 %4843, 2
  %4847 = extractvalue %dx.types.CBufRet.f32 %4843, 3
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4851 = extractvalue %dx.types.CBufRet.f32 %4848, 2
  %4852 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4856 = extractvalue %dx.types.CBufRet.f32 %4853, 2
  %4857 = extractvalue %dx.types.CBufRet.f32 %4853, 3
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 0
  %4860 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4861 = extractvalue %dx.types.CBufRet.f32 %4858, 2
  %4862 = extractvalue %dx.types.CBufRet.f32 %4858, 3
  %4863 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4866 = fmul fast float %4865, 8.000000e+00
  %4867 = fadd fast float %4866, -6.000000e+00
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fmul fast float %4863, 8.000000e+00
  %4870 = fmul fast float %4869, %4826
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = fcmp fast ogt float %4871, 0.000000e+00
  br i1 %4872, label %4873, label %5050, !dx.controlflow.hints !81

; <label>:4873                                    ; preds = %4832
  %4874 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4876 = fsub fast float %4874, %4875
  %4877 = fmul fast float %4876, %4501
  %4878 = fadd fast float %4877, %4875
  %4879 = fmul fast float %197, 2.000000e+00
  %4880 = fmul fast float %198, 2.000000e+00
  %4881 = fadd fast float %4879, -1.000000e+00
  %4882 = fadd fast float %4880, -1.000000e+00
  %4883 = fmul fast float %4878, %4881
  %4884 = fmul fast float %4878, %4882
  %4885 = fadd fast float %4883, %81
  %4886 = fadd fast float %4884, %82
  %4887 = fmul fast float %4885, %4504
  %4888 = fmul fast float %4886, %4505
  %4889 = fadd fast float %4501, 0xBFE3333340000000
  %4890 = fmul fast float %4889, 0x4004000020000000
  %4891 = fsub fast float 1.000000e+00, %4890
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4892, 3.000000e+00
  %4894 = fadd fast float %4893, %197
  %4895 = call float @dx.op.unary.f32(i32 27, float %4894)  ; Round_ni(value)
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4887, float %4888, float %4895, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = fcmp fast une float %4897, 0xFFF0000000000000
  %4899 = fcmp fast une float %4897, 0x7FF0000000000000
  %4900 = and i1 %4898, %4899
  %4901 = fcmp fast olt float %4897, 0.000000e+00
  %4902 = call float @dx.op.unary.f32(i32 6, float %4897)  ; FAbs(value)
  %4903 = fsub fast float 1.000000e+00, %4902
  %4904 = select i1 %4900, float 1.000000e+00, float 0.000000e+00
  %4905 = fmul fast float %4904, %4871
  %4906 = fcmp fast ogt float %4905, 0.000000e+00
  br i1 %4906, label %4907, label %5050, !dx.controlflow.hints !82

; <label>:4907                                    ; preds = %4873
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = extractvalue %dx.types.CBufRet.f32 %4908, 1
  %4911 = extractvalue %dx.types.CBufRet.f32 %4908, 2
  %4912 = select i1 %4901, float 0.000000e+00, float %4909
  %4913 = select i1 %4901, float 0.000000e+00, float %4910
  %4914 = select i1 %4901, float 0.000000e+00, float %4911
  %4915 = select i1 %4901, float %4834, float %4849
  %4916 = select i1 %4901, float %4839, float %4854
  %4917 = select i1 %4901, float %4844, float %4859
  %4918 = select i1 %4901, float %4835, float %4850
  %4919 = select i1 %4901, float %4840, float %4855
  %4920 = select i1 %4901, float %4845, float %4860
  %4921 = select i1 %4901, float %4836, float %4851
  %4922 = select i1 %4901, float %4841, float %4856
  %4923 = select i1 %4901, float %4846, float %4861
  %4924 = select i1 %4901, float %4837, float %4852
  %4925 = select i1 %4901, float %4842, float %4857
  %4926 = select i1 %4901, float %4847, float %4862
  %4927 = fadd fast float %4912, %140
  %4928 = fadd fast float %4913, %141
  %4929 = fadd fast float %4914, %142
  %4930 = fmul fast float %4927, %4915
  %4931 = call float @dx.op.tertiary.f32(i32 46, float %4928, float %4918, float %4930)  ; FMad(a,b,c)
  %4932 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4921, float %4931)  ; FMad(a,b,c)
  %4933 = fadd fast float %4932, %4924
  %4934 = fmul fast float %4927, %4916
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4928, float %4919, float %4934)  ; FMad(a,b,c)
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4922, float %4935)  ; FMad(a,b,c)
  %4937 = fadd fast float %4936, %4925
  %4938 = fmul fast float %4927, %4917
  %4939 = call float @dx.op.tertiary.f32(i32 46, float %4928, float %4920, float %4938)  ; FMad(a,b,c)
  %4940 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4923, float %4939)  ; FMad(a,b,c)
  %4941 = fadd fast float %4940, %4926
  %4942 = fdiv fast float 1.000000e+00, %4941
  %4943 = fmul fast float %4942, %4933
  %4944 = fmul fast float %4942, %4937
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4948 = fmul fast float %4943, %4946
  %4949 = fmul fast float %4944, %4947
  %4950 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4951 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4952 = fadd fast float %4948, %4950
  %4953 = fadd fast float %4949, %4951
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 3
  %4956 = fmul fast float %4955, %4526
  %4957 = fmul fast float %4955, %4527
  %4958 = fmul fast float %4955, %4528
  %4959 = fadd fast float %4956, %4927
  %4960 = fadd fast float %4957, %4928
  %4961 = fadd fast float %4958, %4929
  %4962 = fmul fast float %4959, %4915
  %4963 = call float @dx.op.tertiary.f32(i32 46, float %4960, float %4918, float %4962)  ; FMad(a,b,c)
  %4964 = call float @dx.op.tertiary.f32(i32 46, float %4961, float %4921, float %4963)  ; FMad(a,b,c)
  %4965 = fadd fast float %4964, %4924
  %4966 = fmul fast float %4959, %4916
  %4967 = call float @dx.op.tertiary.f32(i32 46, float %4960, float %4919, float %4966)  ; FMad(a,b,c)
  %4968 = call float @dx.op.tertiary.f32(i32 46, float %4961, float %4922, float %4967)  ; FMad(a,b,c)
  %4969 = fadd fast float %4968, %4925
  %4970 = fmul fast float %4959, %4917
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4960, float %4920, float %4970)  ; FMad(a,b,c)
  %4972 = call float @dx.op.tertiary.f32(i32 46, float %4961, float %4923, float %4971)  ; FMad(a,b,c)
  %4973 = fadd fast float %4972, %4926
  %4974 = fdiv fast float 1.000000e+00, %4973
  %4975 = fmul fast float %4974, %4965
  %4976 = fmul fast float %4974, %4969
  %4977 = fmul fast float %4952, 2.000000e+00
  %4978 = fadd fast float %4977, -1.000000e+00
  %4979 = call float @dx.op.unary.f32(i32 6, float %4978)  ; FAbs(value)
  %4980 = fmul fast float %4979, 5.000000e+00
  %4981 = fadd fast float %4980, -4.000000e+00
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4982, %4868
  %4984 = fsub fast float %4943, %4975
  %4985 = fmul fast float %4946, %4984
  %4986 = fmul fast float %4983, %4985
  %4987 = fsub fast float %4975, %4943
  %4988 = fmul fast float %4946, %4987
  %4989 = fadd fast float %4988, %4986
  %4990 = fsub fast float %4976, %4944
  %4991 = fmul fast float %4947, %4990
  %4992 = fmul fast float %4989, %4903
  %4993 = fmul fast float %4991, %4903
  %4994 = fadd fast float %4992, %4952
  %4995 = fadd fast float %4993, %4953
  %4996 = fsub fast float %4974, %4942
  %4997 = fmul fast float %4996, %4903
  %4998 = fadd fast float %4997, %4942
  %4999 = fdiv fast float 1.000000e+00, %4998
  %5000 = fadd fast float %4501, -1.000000e+00
  %5001 = fsub fast float %4999, %4941
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.f32 %5002, 2
  %5004 = fmul fast float %5003, %4999
  %5005 = fdiv fast float 1.600000e+02, %5004
  %5006 = fmul fast float %5000, %5000
  %5007 = fmul fast float %5006, 0xBFB5B17960000000
  %5008 = fmul fast float %5007, %5001
  %5009 = fmul fast float %5008, %5005
  %5010 = call float @dx.op.unary.f32(i32 21, float %5009)  ; Exp(value)
  %5011 = fmul fast float %5010, 0x3FF04B2960000000
  %5012 = fsub fast float 0x3FF04B2960000000, %5011
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = fmul fast float %5013, 4.000000e+00
  %5015 = fadd fast float %197, -5.000000e-01
  %5016 = fadd fast float %198, -5.000000e-01
  %5017 = fmul fast float %5013, 0x3FBEB851E0000000
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5018, %5015
  %5020 = fmul fast float %5018, %5016
  %5021 = fadd fast float %4994, %5019
  %5022 = fadd fast float %4995, %5020
  %5023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5021, float %5022, float undef, float undef, i32 0, i32 0, i32 undef, float %5014)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5029 = fmul fast float %5028, %5024
  %5030 = fmul fast float %5028, %5025
  %5031 = fmul fast float %5028, %5026
  %5032 = select i1 %184, float 0.000000e+00, float %5030
  %5033 = select i1 %184, float 0.000000e+00, float %5031
  %5034 = fmul fast float %5021, 2.000000e+00
  %5035 = fmul fast float %5022, 2.000000e+00
  %5036 = fadd fast float %5034, -1.000000e+00
  %5037 = fadd fast float %5035, -1.000000e+00
  %5038 = fmul fast float %5036, %5036
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = fmul fast float %5041, %4868
  %5043 = fadd fast float %5042, %5040
  %5044 = fmul fast float %5037, %5037
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fmul fast float %5043, %5046
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = fmul fast float %5048, %4905
  br label %5050

; <label>:5050                                    ; preds = %4907, %4873, %4832
  %5051 = phi float [ %5029, %4907 ], [ 0.000000e+00, %4873 ], [ 0.000000e+00, %4832 ]
  %5052 = phi float [ %5032, %4907 ], [ 0.000000e+00, %4873 ], [ 0.000000e+00, %4832 ]
  %5053 = phi float [ %5033, %4907 ], [ 0.000000e+00, %4873 ], [ 0.000000e+00, %4832 ]
  %5054 = phi float [ %5049, %4907 ], [ 0.000000e+00, %4873 ], [ 0.000000e+00, %4832 ]
  %5055 = fcmp fast olt float %5054, 1.000000e+00
  %5056 = or i1 %5055, %4830
  %5057 = zext i1 %5056 to i32
  %5058 = fmul fast float %5054, %4815
  %5059 = fsub fast float %5054, %5058
  %5060 = fsub fast float 1.000000e+00, %4821
  %5061 = fmul fast float %5059, %5060
  %5062 = fadd fast float %5061, %4821
  %5063 = fsub fast float %5062, %5059
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, %4787
  %5066 = fmul fast float %5064, %4788
  %5067 = fmul fast float %5064, %4789
  %5068 = fsub fast float -0.000000e+00, %5062
  %5069 = fmul fast float %5059, %5051
  %5070 = fmul fast float %5059, %5052
  %5071 = fmul fast float %5059, %5053
  %5072 = fadd fast float %5069, %5065
  %5073 = fadd fast float %5070, %5066
  %5074 = fadd fast float %5071, %5067
  br label %5075

; <label>:5075                                    ; preds = %5050, %4823
  %5076 = phi float [ %4821, %4823 ], [ %5068, %5050 ]
  %5077 = phi float [ %4787, %4823 ], [ %5072, %5050 ]
  %5078 = phi float [ %4788, %4823 ], [ %5073, %5050 ]
  %5079 = phi float [ %4789, %4823 ], [ %5074, %5050 ]
  %5080 = phi i32 [ %4831, %4823 ], [ %5057, %5050 ]
  %5081 = icmp eq i32 %5080, 0
  br i1 %5081, label %5678, label %5082

; <label>:5082                                    ; preds = %5075
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5085 = extractvalue %dx.types.CBufRet.f32 %5083, 3
  %5086 = fmul fast float %5084, %81
  %5087 = fmul fast float %5085, %82
  %5088 = fptoui float %5086 to i32
  %5089 = fptoui float %5087 to i32
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5093 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5094 = fadd fast float %76, -4.000000e+00
  %5095 = call float @dx.op.binary.f32(i32 35, float %5094, float 0.000000e+00)  ; FMax(a,b)
  %5096 = fadd fast float %5095, %5091
  %5097 = fmul fast float %5096, %5092
  %5098 = call float @dx.op.unary.f32(i32 23, float %5097)  ; Log(value)
  %5099 = fmul fast float %5098, %5093
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5102 = fmul fast float %5099, %5101
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.i32 %5104, 1
  %5106 = add i32 %5105, -1
  %5107 = uitofp i32 %5105 to float
  %5108 = fmul fast float %5107, %5103
  %5109 = fptoui float %5108 to i32
  %5110 = call i32 @dx.op.binary.i32(i32 40, i32 %5109, i32 %5106)  ; UMin(a,b)
  %5111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.i32 %5111, 2
  %5113 = extractvalue %dx.types.CBufRet.i32 %5111, 3
  %5114 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5089, i32 %5112, i32 %5088)  ; UMad(a,b,c)
  %5115 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5110, i32 %5113, i32 %5114)  ; UMad(a,b,c)
  %5116 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5117 = fptoui float %5116 to i32
  %5118 = lshr i32 %5117, 5
  %5119 = call i32 @dx.op.binary.i32(i32 40, i32 %5118, i32 8191)  ; UMin(a,b)
  %5120 = fcmp fast ogt float %4300, 0.000000e+00
  %5121 = fcmp fast ogt float %4528, 0.000000e+00
  %5122 = and i1 %5121, %5120
  br i1 %5122, label %5123, label %5152

; <label>:5123                                    ; preds = %5082
  %5124 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4527, float %4528, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.binary.f32(i32 35, float %5124, float -1.000000e+00)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 36, float %5125, float 1.000000e+00)  ; FMin(a,b)
  %5127 = fmul fast float %5126, %5126
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = fmul fast float %5128, 0x3FFC6E2300000000
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = fcmp fast ogt float %5130, 0.000000e+00
  %5132 = call float @dx.op.unary.f32(i32 24, float %5130)  ; Sqrt(value)
  %5133 = fsub fast float 1.000000e+00, %5132
  %5134 = call float @dx.op.unary.f32(i32 23, float %5133)  ; Log(value)
  %5135 = fmul fast float %5134, 5.000000e+00
  %5136 = call float @dx.op.unary.f32(i32 21, float %5135)  ; Exp(value)
  %5137 = fmul fast float %5136, 0x3FEF591A60000000
  %5138 = fadd fast float %5137, 0x3F94DCB540000000
  %5139 = select i1 %5131, float %5138, float 1.000000e+00
  %5140 = fcmp fast oge float %5139, 1.000000e+00
  %5141 = fmul fast float %5124, 2.000000e+00
  %5142 = fadd fast float %5141, %4528
  %5143 = select i1 %5140, float %5142, float %4528
  %5144 = fsub fast float %5143, %4528
  %5145 = fmul fast float %5144, %4300
  %5146 = fadd fast float %5145, %4528
  %5147 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4527, float %5146, float %4526, float %4527, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.unary.f32(i32 25, float %5147)  ; Rsqrt(value)
  %5149 = fmul fast float %5148, %4526
  %5150 = fmul fast float %5148, %4527
  %5151 = fmul fast float %5146, %5148
  br label %5152

; <label>:5152                                    ; preds = %5123, %5082
  %5153 = phi float [ %5149, %5123 ], [ %4526, %5082 ]
  %5154 = phi float [ %5150, %5123 ], [ %4527, %5082 ]
  %5155 = phi float [ %5151, %5123 ], [ %4528, %5082 ]
  %5156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.i32 %5156, 2
  %5158 = add nsw i32 %5157, -1
  %5159 = call i32 @dx.op.binary.i32(i32 37, i32 %5158, i32 0)  ; IMax(a,b)
  %5160 = shl i32 %5119, 2
  %5161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.i32 %5161, 0
  %5163 = lshr i32 %5162, 16
  %5164 = and i32 %5162, 65535
  %5165 = lshr i32 %5162, 21
  %5166 = lshr i32 %5164, 5
  %5167 = call i32 @dx.op.binary.i32(i32 40, i32 %5166, i32 %5159)  ; UMin(a,b)
  %5168 = icmp ugt i32 %5165, %5167
  br i1 %5168, label %5550, label %5169

; <label>:5169                                    ; preds = %5152
  br label %5170

; <label>:5170                                    ; preds = %5539, %5169
  %5171 = phi float [ %5540, %5539 ], [ 0.000000e+00, %5169 ]
  %5172 = phi float [ %5541, %5539 ], [ 0.000000e+00, %5169 ]
  %5173 = phi float [ %5542, %5539 ], [ 0.000000e+00, %5169 ]
  %5174 = phi float [ %5543, %5539 ], [ 1.000000e+00, %5169 ]
  %5175 = phi i32 [ %5547, %5539 ], [ %5165, %5169 ]
  %5176 = phi float [ %5544, %5539 ], [ 0.000000e+00, %5169 ]
  %5177 = phi float [ %5545, %5539 ], [ 0.000000e+00, %5169 ]
  %5178 = phi float [ %5546, %5539 ], [ 0.000000e+00, %5169 ]
  %5179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.i32 %5179, 2
  %5181 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5115, i32 %5180, i32 %5175)  ; UMad(a,b,c)
  %5182 = shl i32 %5181, 2
  %5183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5182, i32 undef)  ; BufferLoad(srv,index,wot)
  %5184 = extractvalue %dx.types.ResRet.i32 %5183, 0
  %5185 = shl i32 %5175, 5
  %5186 = sub nsw i32 %5163, %5185
  %5187 = call i32 @dx.op.binary.i32(i32 37, i32 %5186, i32 0)  ; IMax(a,b)
  %5188 = call i32 @dx.op.binary.i32(i32 38, i32 %5187, i32 31)  ; IMin(a,b)
  %5189 = sub nsw i32 1, %5163
  %5190 = add nsw i32 %5189, %5164
  %5191 = call i32 @dx.op.binary.i32(i32 37, i32 %5190, i32 0)  ; IMax(a,b)
  %5192 = call i32 @dx.op.binary.i32(i32 38, i32 %5191, i32 32)  ; IMin(a,b)
  %5193 = and i32 %5192, 31
  %5194 = shl i32 -1, %5193
  %5195 = xor i32 %5194, -1
  %5196 = and i32 %5188, 31
  %5197 = shl i32 %5195, %5196
  %5198 = icmp eq i32 %5192, 32
  %5199 = select i1 %5198, i32 -1, i32 %5197
  %5200 = and i32 %5199, %5184
  %5201 = icmp eq i32 %5200, 0
  br i1 %5201, label %5539, label %5202

; <label>:5202                                    ; preds = %5170
  br label %5203

; <label>:5203                                    ; preds = %5313, %5202
  %5204 = phi float [ %5314, %5313 ], [ %5171, %5202 ]
  %5205 = phi float [ %5315, %5313 ], [ %5172, %5202 ]
  %5206 = phi float [ %5316, %5313 ], [ %5173, %5202 ]
  %5207 = phi float [ %5317, %5313 ], [ %5174, %5202 ]
  %5208 = phi i32 [ %5216, %5313 ], [ %5200, %5202 ]
  %5209 = phi float [ %5318, %5313 ], [ %5176, %5202 ]
  %5210 = phi float [ %5319, %5313 ], [ %5177, %5202 ]
  %5211 = phi float [ %5320, %5313 ], [ %5178, %5202 ]
  %5212 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5208)  ; FirstbitLo(value)
  %5213 = add i32 %5212, %5185
  %5214 = and i32 %5212, 31
  %5215 = shl i32 1, %5214
  %5216 = xor i32 %5215, %5208
  %5217 = mul i32 %5213, 72
  %5218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5220 = extractvalue %dx.types.ResRet.f32 %5218, 1
  %5221 = extractvalue %dx.types.ResRet.f32 %5218, 2
  %5222 = add i32 %5217, 12
  %5223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5222, i32 undef)  ; BufferLoad(srv,index,wot)
  %5224 = extractvalue %dx.types.ResRet.i32 %5223, 0
  %5225 = add i32 %5217, 16
  %5226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = add i32 %5217, 28
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = add i32 %5217, 32
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.ResRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.ResRet.f32 %5234, 2
  %5238 = extractvalue %dx.types.ResRet.f32 %5234, 3
  %5239 = add i32 %5217, 48
  %5240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 0
  %5242 = extractvalue %dx.types.ResRet.f32 %5240, 1
  %5243 = add i32 %5217, 56
  %5244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5245 = extractvalue %dx.types.ResRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.ResRet.f32 %5244, 1
  %5247 = add i32 %5217, 64
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = mul i32 %5213, 60
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = add i32 %5251, 12
  %5257 = add i32 %5251, 48
  %5258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.ResRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.ResRet.f32 %5258, 2
  %5262 = and i32 %5224, 32767
  %5263 = bitcast float %5219 to i32
  %5264 = icmp eq i32 %5263, -1
  %5265 = bitcast float %5220 to i32
  %5266 = and i32 %5224, 32768
  %5267 = icmp ne i32 %5266, 0
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5272 = fsub fast float %5253, %5269
  %5273 = fsub fast float %5254, %5270
  %5274 = fsub fast float %5255, %5271
  %5275 = fsub fast float %140, %5272
  %5276 = fsub fast float %141, %5273
  %5277 = fsub fast float %142, %5274
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = add i32 %5251, 24
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = add i32 %5251, 36
  %5290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5291, float %5292, float %5293)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = call float @dx.op.unary.f32(i32 6, float %5282)  ; FAbs(value)
  %5296 = call float @dx.op.unary.f32(i32 6, float %5288)  ; FAbs(value)
  %5297 = call float @dx.op.unary.f32(i32 6, float %5294)  ; FAbs(value)
  %5298 = fsub fast float %5259, %5295
  %5299 = fsub fast float %5260, %5296
  %5300 = fsub fast float %5261, %5297
  %5301 = fmul fast float %5298, %5227
  %5302 = fmul fast float %5299, %5228
  %5303 = fmul fast float %5300, %5229
  %5304 = call float @dx.op.binary.f32(i32 36, float %5302, float %5303)  ; FMin(a,b)
  %5305 = call float @dx.op.binary.f32(i32 36, float %5301, float %5304)  ; FMin(a,b)
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = call float @dx.op.binary.f32(i32 36, float %5207, float %5306)  ; FMin(a,b)
  %5308 = uitofp i1 %5267 to float
  %5309 = fadd fast float %4300, 1.000000e+00
  %5310 = fsub fast float %5309, %5308
  %5311 = fmul fast float %5307, %5310
  %5312 = fcmp fast ogt float %5311, 0.000000e+00
  br i1 %5312, label %5322, label %5313

; <label>:5313                                    ; preds = %5464, %5203
  %5314 = phi float [ %5528, %5464 ], [ %5204, %5203 ]
  %5315 = phi float [ %5529, %5464 ], [ %5205, %5203 ]
  %5316 = phi float [ %5530, %5464 ], [ %5206, %5203 ]
  %5317 = phi float [ %5537, %5464 ], [ %5207, %5203 ]
  %5318 = phi float [ %5534, %5464 ], [ %5209, %5203 ]
  %5319 = phi float [ %5535, %5464 ], [ %5210, %5203 ]
  %5320 = phi float [ %5536, %5464 ], [ %5211, %5203 ]
  %5321 = icmp eq i32 %5208, %5215
  br i1 %5321, label %5538, label %5203

; <label>:5322                                    ; preds = %5203
  br i1 %5264, label %5380, label %5323

; <label>:5323                                    ; preds = %5322
  %5324 = fsub fast float -0.000000e+00, %5279
  %5325 = fsub fast float -0.000000e+00, %5280
  %5326 = fsub fast float -0.000000e+00, %5281
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5153, float %5154, float %5155, float %5324, float %5325, float %5326)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fsub fast float -0.000000e+00, %5327
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5324, float %5325, float %5326)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = fadd fast float %5329, %5242
  %5331 = fadd fast float %5241, %5329
  %5332 = fsub fast float -0.000000e+00, %5331
  %5333 = fcmp ogt float %5327, -0.000000e+00
  %5334 = select i1 %5333, float %5332, float %5330
  %5335 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5336 = fdiv fast float 1.000000e+00, %5335
  %5337 = fmul fast float %5334, %5336
  %5338 = call float @dx.op.binary.f32(i32 35, float %5337, float 0.000000e+00)  ; FMax(a,b)
  %5339 = fsub fast float -0.000000e+00, %5285
  %5340 = fsub fast float -0.000000e+00, %5286
  %5341 = fsub fast float -0.000000e+00, %5287
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5153, float %5154, float %5155, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = fsub fast float -0.000000e+00, %5342
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = fadd fast float %5344, %5246
  %5346 = fadd fast float %5245, %5344
  %5347 = fsub fast float -0.000000e+00, %5346
  %5348 = fcmp ogt float %5342, -0.000000e+00
  %5349 = select i1 %5348, float %5347, float %5345
  %5350 = call float @dx.op.unary.f32(i32 6, float %5343)  ; FAbs(value)
  %5351 = fdiv fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5349, %5351
  %5353 = call float @dx.op.binary.f32(i32 35, float %5352, float 0.000000e+00)  ; FMax(a,b)
  %5354 = fsub fast float -0.000000e+00, %5291
  %5355 = fsub fast float -0.000000e+00, %5292
  %5356 = fsub fast float -0.000000e+00, %5293
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5153, float %5154, float %5155, float %5354, float %5355, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = fsub fast float -0.000000e+00, %5357
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5354, float %5355, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = fadd fast float %5359, %5250
  %5361 = fadd fast float %5249, %5359
  %5362 = fsub fast float -0.000000e+00, %5361
  %5363 = fcmp ogt float %5357, -0.000000e+00
  %5364 = select i1 %5363, float %5362, float %5360
  %5365 = call float @dx.op.unary.f32(i32 6, float %5358)  ; FAbs(value)
  %5366 = fdiv fast float 1.000000e+00, %5365
  %5367 = fmul fast float %5364, %5366
  %5368 = call float @dx.op.binary.f32(i32 35, float %5367, float 0.000000e+00)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 36, float %5353, float %5368)  ; FMin(a,b)
  %5370 = call float @dx.op.binary.f32(i32 36, float %5338, float %5369)  ; FMin(a,b)
  %5371 = fmul fast float %5370, %5153
  %5372 = fmul fast float %5370, %5154
  %5373 = fmul fast float %5370, %5155
  %5374 = fadd fast float %5371, %140
  %5375 = fadd fast float %5372, %141
  %5376 = fadd fast float %5373, %142
  %5377 = fsub fast float %5374, %5219
  %5378 = fsub fast float %5375, %5220
  %5379 = fsub fast float %5376, %5221
  br label %5387

; <label>:5380                                    ; preds = %5322
  %5381 = fmul fast float %5153, 8.096000e+03
  %5382 = fmul fast float %5154, 8.096000e+03
  %5383 = fmul fast float %5155, 8.096000e+03
  %5384 = fadd fast float %5381, %140
  %5385 = fadd fast float %5382, %141
  %5386 = fadd fast float %5383, %142
  br label %5387

; <label>:5387                                    ; preds = %5380, %5323
  %5388 = phi float [ %5153, %5380 ], [ %5377, %5323 ]
  %5389 = phi float [ %5154, %5380 ], [ %5378, %5323 ]
  %5390 = phi float [ %5155, %5380 ], [ %5379, %5323 ]
  %5391 = phi float [ %5384, %5380 ], [ %5374, %5323 ]
  %5392 = phi float [ %5385, %5380 ], [ %5375, %5323 ]
  %5393 = phi float [ %5386, %5380 ], [ %5376, %5323 ]
  %5394 = fcmp fast olt float %5238, 1.000000e+00
  br i1 %5394, label %5395, label %5426, !dx.controlflow.hints !83

; <label>:5395                                    ; preds = %5387
  %5396 = fmul fast float %5390, %5236
  %5397 = fmul fast float %5389, %5237
  %5398 = fsub fast float %5396, %5397
  %5399 = fmul fast float %5388, %5237
  %5400 = fmul fast float %5390, %5235
  %5401 = fsub fast float %5399, %5400
  %5402 = fmul fast float %5389, %5235
  %5403 = fmul fast float %5388, %5236
  %5404 = fsub fast float %5402, %5403
  %5405 = fmul fast float %5398, 2.000000e+00
  %5406 = fmul fast float %5401, 2.000000e+00
  %5407 = fmul fast float %5404, 2.000000e+00
  %5408 = fmul fast float %5405, %5238
  %5409 = fmul fast float %5406, %5238
  %5410 = fmul fast float %5407, %5238
  %5411 = fmul fast float %5407, %5236
  %5412 = fmul fast float %5406, %5237
  %5413 = fmul fast float %5405, %5237
  %5414 = fmul fast float %5407, %5235
  %5415 = fmul fast float %5406, %5235
  %5416 = fmul fast float %5405, %5236
  %5417 = fadd fast float %5411, %5388
  %5418 = fadd fast float %5417, %5408
  %5419 = fsub fast float %5418, %5412
  %5420 = fsub fast float %5389, %5414
  %5421 = fadd fast float %5420, %5409
  %5422 = fadd fast float %5421, %5413
  %5423 = fadd fast float %5410, %5390
  %5424 = fsub fast float %5423, %5416
  %5425 = fadd fast float %5424, %5415
  br label %5426

; <label>:5426                                    ; preds = %5395, %5387
  %5427 = phi float [ %5419, %5395 ], [ %5388, %5387 ]
  %5428 = phi float [ %5422, %5395 ], [ %5389, %5387 ]
  %5429 = phi float [ %5425, %5395 ], [ %5390, %5387 ]
  br i1 %5264, label %5461, label %5430

; <label>:5430                                    ; preds = %5426
  %5431 = fmul fast float %4501, 0x400187C840000000
  %5432 = fadd fast float %5431, 0xC00EFC2120000000
  %5433 = fmul fast float %5432, %4501
  %5434 = fadd fast float %5433, 0x3FE5D16340000000
  %5435 = fmul fast float %5434, %4501
  %5436 = fadd fast float %5435, 1.000000e+00
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = fsub fast float %5391, %140
  %5439 = fsub fast float %5392, %141
  %5440 = fsub fast float %5393, %142
  %5441 = fsub fast float %5391, %5219
  %5442 = fsub fast float %5392, %5220
  %5443 = fsub fast float %5393, %5221
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = fadd fast float %5445, 0x3EE4F8B580000000
  %5447 = fdiv fast float %5444, %5446
  %5448 = bitcast float %5447 to i32
  %5449 = ashr i32 %5448, 1
  %5450 = add nsw i32 %5449, 532487669
  %5451 = bitcast i32 %5450 to float
  %5452 = fmul fast float %5451, %5437
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fmul fast float %5453, 0x4009981AE0000000
  %5455 = fsub fast float 0x40111BBD80000000, %5454
  %5456 = fmul fast float %5455, %5453
  %5457 = fadd fast float %5456, 0xC0009F6020000000
  %5458 = fmul fast float %5457, %5453
  %5459 = fadd fast float %5458, 1.000000e+00
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  br label %5464

; <label>:5461                                    ; preds = %5426
  %5462 = icmp ne i32 %5265, -1
  %5463 = zext i1 %5462 to i32
  br label %5464

; <label>:5464                                    ; preds = %5461, %5430
  %5465 = phi float [ %4501, %5461 ], [ %5460, %5430 ]
  %5466 = phi i32 [ %5463, %5461 ], [ 0, %5430 ]
  %5467 = fmul float %5465, 5.000000e+00
  %5468 = fsub float 5.000000e+00, %5467
  %5469 = icmp ne i32 %5466, 0
  %5470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.f32 %5470, 3
  %5472 = fadd fast float %5471, %5468
  %5473 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5472)  ; FMax(a,b)
  %5474 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5475 = call float @dx.op.unary.f32(i32 6, float %5428)  ; FAbs(value)
  %5476 = fadd fast float %5475, %5474
  %5477 = call float @dx.op.unary.f32(i32 6, float %5429)  ; FAbs(value)
  %5478 = fadd fast float %5476, %5477
  %5479 = fcmp fast oeq float %5478, 0.000000e+00
  %5480 = fdiv fast float 1.000000e+00, %5478
  %5481 = select i1 %5479, float 1.000000e+00, float %5480
  %5482 = fmul fast float %5481, %5427
  %5483 = fmul fast float %5481, %5428
  %5484 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5485 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5486 = fsub fast float 1.000000e+00, %5484
  %5487 = fsub fast float 1.000000e+00, %5485
  %5488 = fcmp fast oge float %5482, 0.000000e+00
  %5489 = fcmp fast oge float %5483, 0.000000e+00
  %5490 = select i1 %5488, float 1.000000e+00, float -1.000000e+00
  %5491 = select i1 %5489, float 1.000000e+00, float -1.000000e+00
  %5492 = fcmp fast ole float %5429, 0.000000e+00
  %5493 = fmul fast float %5490, %5486
  %5494 = fmul fast float %5491, %5487
  %5495 = select i1 %5492, float %5493, float %5482
  %5496 = select i1 %5492, float %5494, float %5483
  %5497 = fmul fast float %5495, 5.000000e-01
  %5498 = fmul fast float %5496, 5.000000e-01
  %5499 = fadd fast float %5497, 5.000000e-01
  %5500 = fadd fast float %5498, 5.000000e-01
  %5501 = uitofp i32 %5262 to float
  %5502 = call float @dx.op.binary.f32(i32 36, float %5473, float 3.000000e+00)  ; FMin(a,b)
  %5503 = fadd fast float %5502, 2.000000e+00
  %5504 = call float @dx.op.unary.f32(i32 21, float %5503)  ; Exp(value)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5470, 1
  %5506 = fmul fast float %5505, %5504
  %5507 = fmul fast float %5506, 2.000000e+00
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = fmul fast float %5499, %5508
  %5510 = fmul fast float %5500, %5508
  %5511 = fadd fast float %5509, %5506
  %5512 = fadd fast float %5510, %5506
  %5513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5511, float %5512, float %5501, float undef, i32 0, i32 0, i32 undef, float %5473)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.ResRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.ResRet.f32 %5513, 2
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 3
  %5519 = fmul fast float %5518, %5232
  %5520 = call float @dx.op.binary.f32(i32 36, float %4547, float %5519)  ; FMin(a,b)
  %5521 = select i1 %5469, float %5520, float %5519
  %5522 = fmul fast float %5514, %5311
  %5523 = fmul fast float %5522, %5521
  %5524 = fmul fast float %5515, %5311
  %5525 = fmul fast float %5524, %5521
  %5526 = fmul fast float %5516, %5311
  %5527 = fmul fast float %5526, %5521
  %5528 = fadd fast float %5523, %5204
  %5529 = fadd fast float %5525, %5205
  %5530 = fadd fast float %5527, %5206
  %5531 = fmul fast float %5391, %5311
  %5532 = fmul fast float %5392, %5311
  %5533 = fmul fast float %5393, %5311
  %5534 = fadd fast float %5531, %5209
  %5535 = fadd fast float %5532, %5210
  %5536 = fadd fast float %5533, %5211
  %5537 = fsub fast float %5207, %5311
  br label %5313

; <label>:5538                                    ; preds = %5313
  br label %5539

; <label>:5539                                    ; preds = %5538, %5170
  %5540 = phi float [ %5171, %5170 ], [ %5314, %5538 ]
  %5541 = phi float [ %5172, %5170 ], [ %5315, %5538 ]
  %5542 = phi float [ %5173, %5170 ], [ %5316, %5538 ]
  %5543 = phi float [ %5174, %5170 ], [ %5317, %5538 ]
  %5544 = phi float [ %5176, %5170 ], [ %5318, %5538 ]
  %5545 = phi float [ %5177, %5170 ], [ %5319, %5538 ]
  %5546 = phi float [ %5178, %5170 ], [ %5320, %5538 ]
  %5547 = add i32 %5175, 1
  %5548 = icmp ugt i32 %5547, %5167
  br i1 %5548, label %5549, label %5170, !llvm.loop !84

; <label>:5549                                    ; preds = %5539
  br label %5550

; <label>:5550                                    ; preds = %5549, %5152
  %5551 = phi float [ 0.000000e+00, %5152 ], [ %5540, %5549 ]
  %5552 = phi float [ 0.000000e+00, %5152 ], [ %5541, %5549 ]
  %5553 = phi float [ 0.000000e+00, %5152 ], [ %5542, %5549 ]
  %5554 = phi float [ 0.000000e+00, %5152 ], [ %5544, %5549 ]
  %5555 = phi float [ 0.000000e+00, %5152 ], [ %5545, %5549 ]
  %5556 = phi float [ 0.000000e+00, %5152 ], [ %5546, %5549 ]
  %5557 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5552, float %5553, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5558 = select i1 %184, float 0.000000e+00, float %5551
  %5559 = select i1 %184, float %5557, float %5552
  %5560 = select i1 %184, float 0.000000e+00, float %5553
  %5561 = fcmp fast olt float %5076, 0.000000e+00
  %5562 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5563 = fmul fast float %5562, %5077
  %5564 = fmul fast float %5562, %5078
  %5565 = fmul fast float %5562, %5079
  %5566 = select i1 %5561, float %5077, float %5563
  %5567 = select i1 %5561, float %5078, float %5564
  %5568 = select i1 %5561, float %5079, float %5565
  %5569 = fsub fast float 1.000000e+00, %5562
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = fmul fast float %5570, %5558
  %5572 = fmul fast float %5570, %5559
  %5573 = fmul fast float %5570, %5560
  %5574 = fadd fast float %5566, %5571
  %5575 = fadd fast float %5567, %5572
  %5576 = fadd fast float %5568, %5573
  %5577 = fcmp fast une float %4826, 0.000000e+00
  br i1 %5577, label %5678, label %5578

; <label>:5578                                    ; preds = %5550
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.CBufRet.f32 %5579, 1
  %5582 = extractvalue %dx.types.CBufRet.f32 %5579, 2
  %5583 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = extractvalue %dx.types.CBufRet.f32 %5584, 1
  %5587 = extractvalue %dx.types.CBufRet.f32 %5584, 2
  %5588 = extractvalue %dx.types.CBufRet.f32 %5584, 3
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5592 = extractvalue %dx.types.CBufRet.f32 %5589, 2
  %5593 = extractvalue %dx.types.CBufRet.f32 %5589, 3
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5555, float %5556, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = fadd fast float %4501, -1.000000e+00
  %5598 = fsub fast float %5595, %5596
  %5599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.f32 %5599, 2
  %5601 = fmul fast float %5600, %5595
  %5602 = fdiv fast float 1.600000e+02, %5601
  %5603 = fmul fast float %5597, %5597
  %5604 = fmul fast float %5603, 0xBFB5B17960000000
  %5605 = fmul fast float %5604, %5598
  %5606 = fmul fast float %5605, %5602
  %5607 = call float @dx.op.unary.f32(i32 21, float %5606)  ; Exp(value)
  %5608 = fmul fast float %5607, 0x3FF04B2960000000
  %5609 = fsub fast float 0x3FF04B2960000000, %5608
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, 4.000000e+00
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.CBufRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.CBufRet.f32 %5612, 2
  %5616 = fadd fast float %5613, %5554
  %5617 = fadd fast float %5614, %5555
  %5618 = fadd fast float %5615, %5556
  %5619 = fmul fast float %5616, %5580
  %5620 = call float @dx.op.tertiary.f32(i32 46, float %5617, float %5581, float %5619)  ; FMad(a,b,c)
  %5621 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5582, float %5620)  ; FMad(a,b,c)
  %5622 = fadd fast float %5621, %5583
  %5623 = fmul fast float %5616, %5585
  %5624 = call float @dx.op.tertiary.f32(i32 46, float %5617, float %5586, float %5623)  ; FMad(a,b,c)
  %5625 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5587, float %5624)  ; FMad(a,b,c)
  %5626 = fadd fast float %5625, %5588
  %5627 = fmul fast float %5616, %5590
  %5628 = call float @dx.op.tertiary.f32(i32 46, float %5617, float %5591, float %5627)  ; FMad(a,b,c)
  %5629 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5592, float %5628)  ; FMad(a,b,c)
  %5630 = fadd fast float %5629, %5593
  %5631 = fdiv fast float %5622, %5630
  %5632 = fdiv fast float %5626, %5630
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = fmul fast float %5634, %5631
  %5637 = fmul fast float %5635, %5632
  %5638 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5639 = extractvalue %dx.types.CBufRet.f32 %5633, 3
  %5640 = fadd fast float %5636, %5638
  %5641 = fadd fast float %5637, %5639
  %5642 = fmul fast float %5594, 8.000000e+00
  %5643 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5644 = fmul fast float %5640, 2.000000e+00
  %5645 = fmul fast float %5641, 2.000000e+00
  %5646 = fadd fast float %5644, -1.000000e+00
  %5647 = fadd fast float %5645, -1.000000e+00
  %5648 = fmul fast float %5646, %5646
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5647, %5647
  %5652 = fsub fast float 1.000000e+00, %5651
  %5653 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5654 = fmul fast float %4826, %5650
  %5655 = fmul fast float %5654, %5653
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5643
  %5658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5640, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float %5611)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5659 = extractvalue %dx.types.ResRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.ResRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.ResRet.f32 %5658, 2
  %5662 = select i1 %184, float 0.000000e+00, float %5660
  %5663 = select i1 %184, float 0.000000e+00, float %5661
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 2
  %5666 = fmul fast float %5665, %5659
  %5667 = fmul fast float %5662, %5665
  %5668 = fmul fast float %5663, %5665
  %5669 = fsub fast float %5666, %5558
  %5670 = fsub fast float %5667, %5559
  %5671 = fsub fast float %5668, %5560
  %5672 = fmul fast float %5669, %5657
  %5673 = fmul fast float %5670, %5657
  %5674 = fmul fast float %5671, %5657
  %5675 = fadd fast float %5672, %5558
  %5676 = fadd fast float %5673, %5559
  %5677 = fadd fast float %5674, %5560
  br label %5678

; <label>:5678                                    ; preds = %5578, %5550, %5075, %4696
  %5679 = phi float [ %5077, %5075 ], [ %5574, %5550 ], [ %4787, %4696 ], [ %5675, %5578 ]
  %5680 = phi float [ %5078, %5075 ], [ %5575, %5550 ], [ %4788, %4696 ], [ %5676, %5578 ]
  %5681 = phi float [ %5079, %5075 ], [ %5576, %5550 ], [ %4789, %4696 ], [ %5677, %5578 ]
  %5682 = fmul fast float %5679, %4800
  %5683 = fmul fast float %5680, %4801
  %5684 = fmul fast float %5681, %4802
  %5685 = fadd fast float %5682, %3788
  %5686 = fmul fast float %5685, %959
  %5687 = fadd fast float %5683, %3789
  %5688 = fmul fast float %5687, %959
  %5689 = fadd fast float %5684, %3790
  %5690 = fmul fast float %5689, %959
  %5691 = fmul fast float %4805, %4781
  %5692 = fmul fast float %4805, %4780
  %5693 = fmul fast float %4805, %4779
  %5694 = fmul fast float %4805, %3916
  %5695 = fadd fast float %5694, -1.000000e+00
  %5696 = fmul fast float %5695, %959
  %5697 = fadd fast float %5696, 1.000000e+00
  %5698 = fmul fast float %4805, %3915
  %5699 = fadd fast float %5698, -1.000000e+00
  %5700 = fmul fast float %5699, %959
  %5701 = fadd fast float %5700, 1.000000e+00
  %5702 = fmul fast float %4805, %3914
  %5703 = fadd fast float %5702, -1.000000e+00
  %5704 = fmul fast float %5703, %959
  %5705 = fadd fast float %5704, 1.000000e+00
  %5706 = fmul fast float %5705, %4783
  %5707 = fmul fast float %5701, %4784
  %5708 = fmul fast float %5697, %4785
  %5709 = fadd fast float %5706, %5693
  %5710 = fmul fast float %5709, %959
  %5711 = fadd fast float %5707, %5692
  %5712 = fmul fast float %5711, %959
  %5713 = fadd fast float %5708, %5691
  %5714 = fmul fast float %5713, %959
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5717 = fcmp fast oeq float %5716, 0.000000e+00
  br i1 %5717, label %5894, label %5718

; <label>:5718                                    ; preds = %5678
  %5719 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5721 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.CBufRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = select i1 %184, float %5727, float %5723
  %5731 = select i1 %184, float %5729, float %5724
  %5732 = select i1 %184, float %5728, float %5725
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5735 = fcmp fast une float %5734, 0.000000e+00
  br i1 %5735, label %5736, label %5753

; <label>:5736                                    ; preds = %5718
  %5737 = fptoui float %81 to i32
  %5738 = fptoui float %82 to i32
  %5739 = lshr i32 %5737, 4
  %5740 = lshr i32 %5738, 4
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = fptoui float %5742 to i32
  %5744 = add i32 %5743, 15
  %5745 = lshr i32 %5744, 4
  %5746 = mul i32 %5745, %5740
  %5747 = add i32 %5746, %5739
  %5748 = shl i32 %5747, 3
  %5749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5748, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.i32 %5749, 0
  %5751 = and i32 %5750, -268435456
  %5752 = icmp eq i32 %5751, -1342177280
  br i1 %5752, label %5758, label %5753

; <label>:5753                                    ; preds = %5736, %5718
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4506, float %4507, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  br label %5758

; <label>:5758                                    ; preds = %5753, %5736
  %5759 = phi float [ %5755, %5753 ], [ 0.000000e+00, %5736 ]
  %5760 = phi float [ %5756, %5753 ], [ 0.000000e+00, %5736 ]
  %5761 = phi float [ %5757, %5753 ], [ 0.000000e+00, %5736 ]
  %5762 = call float @dx.op.binary.f32(i32 36, float %5760, float %5761)  ; FMin(a,b)
  %5763 = call float @dx.op.binary.f32(i32 36, float %5759, float %5762)  ; FMin(a,b)
  %5764 = fcmp fast ogt float %5763, 0.000000e+00
  br i1 %5764, label %5765, label %5894, !dx.controlflow.hints !86

; <label>:5765                                    ; preds = %5758
  %5766 = fmul fast float %5759, %5730
  %5767 = fmul fast float %5760, %5731
  %5768 = fmul fast float %5761, %5732
  %5769 = fsub fast float %5719, %4491
  %5770 = fsub fast float %5720, %4490
  %5771 = fsub fast float %5721, %4489
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %5771, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = call float @dx.op.unary.f32(i32 25, float %5772)  ; Rsqrt(value)
  %5774 = fmul fast float %5773, %5769
  %5775 = fmul fast float %5773, %5770
  %5776 = fmul fast float %5773, %5771
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5719, float %5720, float %5721, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = call float @dx.op.dot3.f32(i32 55, float %4488, float %4487, float %4486, float %5774, float %5775, float %5776)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5780 = fmul fast float %5779, %5779
  %5781 = fmul fast float %5780, %4545
  %5782 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5783 = fmul fast float %5782, %5779
  %5784 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %5774, float %5775, float %5776)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fmul fast float %5784, %5784
  %5786 = call float @dx.op.unary.f32(i32 6, float %5777)  ; FAbs(value)
  %5787 = fsub fast float 1.000000e+00, %4538
  %5788 = fmul fast float %4520, %4520
  %5789 = fmul fast float %5788, %5787
  %5790 = fadd fast float %5789, %4538
  %5791 = bitcast float %5790 to i32
  %5792 = ashr i32 %5791, 1
  %5793 = add nsw i32 %5792, 532487669
  %5794 = bitcast i32 %5793 to float
  %5795 = fadd fast float %5794, %4520
  %5796 = fmul fast float %4538, %5785
  %5797 = fsub fast float 1.000000e+00, %5785
  %5798 = fadd fast float %5797, %5796
  %5799 = fmul fast float %5786, %5786
  %5800 = fmul fast float %5799, %5787
  %5801 = fadd fast float %5800, %4538
  %5802 = bitcast float %5801 to i32
  %5803 = ashr i32 %5802, 1
  %5804 = add nsw i32 %5803, 532487669
  %5805 = bitcast i32 %5804 to float
  %5806 = fadd fast float %5805, %5786
  %5807 = fmul fast float %5798, %5798
  %5808 = fmul fast float %5807, %5795
  %5809 = fmul fast float %5808, %5806
  %5810 = fdiv fast float 0x3FF0A00000000000, %5809
  %5811 = fmul fast float %5810, %4538
  %5812 = call float @dx.op.unary.f32(i32 6, float %5778)  ; FAbs(value)
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = bitcast float %5813 to i32
  %5815 = sitofp i32 %5814 to float
  %5816 = fmul fast float %5815, 5.000000e+00
  %5817 = fadd fast float %5816, 0xC1EFBF8940000000
  %5818 = fptosi float %5817 to i32
  %5819 = bitcast i32 %5818 to float
  %5820 = fsub fast float 1.000000e+00, %4498
  %5821 = fsub fast float 1.000000e+00, %4499
  %5822 = fsub fast float 1.000000e+00, %4518
  %5823 = fmul fast float %5819, %5820
  %5824 = fmul fast float %5819, %5821
  %5825 = fmul fast float %5819, %5822
  %5826 = fadd fast float %5823, %4498
  %5827 = fadd fast float %5824, %4499
  %5828 = fadd fast float %5825, %4518
  %5829 = fmul fast float %5777, 9.843750e-01
  %5830 = fadd fast float %5829, 7.812500e-03
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5830, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5834 = fmul fast float %5832, %4498
  %5835 = fmul fast float %5832, %4499
  %5836 = fmul fast float %5832, %4518
  %5837 = fadd fast float %5834, %5833
  %5838 = fadd fast float %5835, %5833
  %5839 = fadd fast float %5836, %5833
  %5840 = call float @dx.op.binary.f32(i32 35, float %5838, float %5839)  ; FMax(a,b)
  %5841 = call float @dx.op.binary.f32(i32 35, float %5837, float %5840)  ; FMax(a,b)
  %5842 = fsub fast float 1.000000e+00, %5841
  %5843 = fsub fast float -0.000000e+00, %4492
  %5844 = fsub fast float -0.000000e+00, %4493
  %5845 = fsub fast float -0.000000e+00, %4494
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5719, float %5720, float %5721, float %5843, float %5844, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5848 = fmul fast float %5847, 9.843750e-01
  %5849 = fadd fast float %5848, 7.812500e-03
  %5850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5849, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5851 = extractvalue %dx.types.ResRet.f32 %5850, 2
  %5852 = extractvalue %dx.types.ResRet.f32 %5850, 3
  %5853 = fmul fast float %5851, %4498
  %5854 = fmul fast float %5851, %4499
  %5855 = fmul fast float %5851, %4518
  %5856 = fadd fast float %5853, %5852
  %5857 = fadd fast float %5854, %5852
  %5858 = fadd fast float %5855, %5852
  %5859 = call float @dx.op.binary.f32(i32 35, float %5857, float %5858)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5856, float %5859)  ; FMax(a,b)
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = fmul fast float %5861, %5847
  %5863 = fmul fast float %5862, %3914
  %5864 = fmul fast float %5862, %3915
  %5865 = fmul fast float %5862, %3916
  %5866 = fmul fast float %5842, %5783
  %5867 = fadd fast float %5863, %5866
  %5868 = fadd fast float %5864, %5866
  %5869 = fadd fast float %5865, %5866
  %5870 = fmul fast float %5867, %5766
  %5871 = fmul fast float %5868, %5767
  %5872 = fmul fast float %5869, %5768
  %5873 = fmul fast float %5783, %5766
  %5874 = fmul fast float %5873, %5811
  %5875 = fmul fast float %5874, %5826
  %5876 = fmul fast float %5783, %5767
  %5877 = fmul fast float %5876, %5811
  %5878 = fmul fast float %5877, %5827
  %5879 = fmul fast float %5783, %5768
  %5880 = fmul fast float %5879, %5811
  %5881 = fmul fast float %5880, %5828
  %5882 = fadd fast float %5870, %5709
  %5883 = fmul fast float %5882, %959
  %5884 = fadd fast float %5871, %5711
  %5885 = fmul fast float %5884, %959
  %5886 = fadd fast float %5872, %5713
  %5887 = fmul fast float %5886, %959
  %5888 = fadd fast float %5875, %5685
  %5889 = fmul fast float %5888, %959
  %5890 = fadd fast float %5878, %5687
  %5891 = fmul fast float %5890, %959
  %5892 = fadd fast float %5881, %5689
  %5893 = fmul fast float %5892, %959
  br label %5894

; <label>:5894                                    ; preds = %5765, %5758, %5678
  %5895 = phi float [ %5686, %5678 ], [ %5686, %5758 ], [ %5889, %5765 ]
  %5896 = phi float [ %5688, %5678 ], [ %5688, %5758 ], [ %5891, %5765 ]
  %5897 = phi float [ %5690, %5678 ], [ %5690, %5758 ], [ %5893, %5765 ]
  %5898 = phi float [ %5710, %5678 ], [ %5710, %5758 ], [ %5883, %5765 ]
  %5899 = phi float [ %5712, %5678 ], [ %5712, %5758 ], [ %5885, %5765 ]
  %5900 = phi float [ %5714, %5678 ], [ %5714, %5758 ], [ %5887, %5765 ]
  %5901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.i32 %5901, 0
  %5903 = icmp eq i32 %5902, 0
  br i1 %5903, label %6293, label %5904

; <label>:5904                                    ; preds = %5894
  %5905 = fptoui float %81 to i32
  %5906 = fptoui float %82 to i32
  %5907 = lshr i32 %5905, 4
  %5908 = lshr i32 %5906, 4
  %5909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.i32 %5909, 0
  %5911 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5908, i32 %5910, i32 %5907)  ; UMad(a,b,c)
  %5912 = add nsw i32 %5902, -1
  %5913 = call i32 @dx.op.binary.i32(i32 37, i32 %5912, i32 0)  ; IMax(a,b)
  %5914 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5915 = fptoui float %5914 to i32
  %5916 = lshr i32 %5915, 5
  %5917 = call i32 @dx.op.binary.i32(i32 40, i32 %5916, i32 8191)  ; UMin(a,b)
  %5918 = shl i32 %5917, 2
  %5919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5918, i32 undef)  ; BufferLoad(srv,index,wot)
  %5920 = extractvalue %dx.types.ResRet.i32 %5919, 0
  %5921 = lshr i32 %5920, 16
  %5922 = and i32 %5920, 65535
  %5923 = lshr i32 %5920, 21
  %5924 = lshr i32 %5922, 5
  %5925 = call i32 @dx.op.binary.i32(i32 40, i32 %5924, i32 %5913)  ; UMin(a,b)
  %5926 = icmp ugt i32 %5923, %5925
  br i1 %5926, label %6293, label %5927

; <label>:5927                                    ; preds = %5904
  br label %5928

; <label>:5928                                    ; preds = %6283, %5927
  %5929 = phi i32 [ %6290, %6283 ], [ %5923, %5927 ]
  %5930 = phi float [ %6284, %6283 ], [ %5895, %5927 ]
  %5931 = phi float [ %6285, %6283 ], [ %5896, %5927 ]
  %5932 = phi float [ %6286, %6283 ], [ %5897, %5927 ]
  %5933 = phi float [ %6287, %6283 ], [ %5898, %5927 ]
  %5934 = phi float [ %6288, %6283 ], [ %5899, %5927 ]
  %5935 = phi float [ %6289, %6283 ], [ %5900, %5927 ]
  %5936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.i32 %5936, 0
  %5938 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5911, i32 %5937, i32 %5929)  ; UMad(a,b,c)
  %5939 = shl i32 %5938, 2
  %5940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.i32 %5940, 0
  %5942 = shl i32 %5929, 5
  %5943 = sub nsw i32 %5921, %5942
  %5944 = call i32 @dx.op.binary.i32(i32 37, i32 %5943, i32 0)  ; IMax(a,b)
  %5945 = call i32 @dx.op.binary.i32(i32 38, i32 %5944, i32 31)  ; IMin(a,b)
  %5946 = sub nsw i32 1, %5921
  %5947 = add nsw i32 %5946, %5922
  %5948 = call i32 @dx.op.binary.i32(i32 37, i32 %5947, i32 0)  ; IMax(a,b)
  %5949 = call i32 @dx.op.binary.i32(i32 38, i32 %5948, i32 32)  ; IMin(a,b)
  %5950 = and i32 %5949, 31
  %5951 = shl i32 -1, %5950
  %5952 = xor i32 %5951, -1
  %5953 = and i32 %5945, 31
  %5954 = shl i32 %5952, %5953
  %5955 = icmp eq i32 %5949, 32
  %5956 = select i1 %5955, i32 -1, i32 %5954
  %5957 = and i32 %5956, %5941
  %5958 = icmp eq i32 %5957, 0
  br i1 %5958, label %6283, label %5959

; <label>:5959                                    ; preds = %5928
  br label %5960

; <label>:5960                                    ; preds = %6040, %5959
  %5961 = phi i32 [ %5972, %6040 ], [ %5957, %5959 ]
  %5962 = phi float [ %6041, %6040 ], [ %5930, %5959 ]
  %5963 = phi float [ %6042, %6040 ], [ %5931, %5959 ]
  %5964 = phi float [ %6043, %6040 ], [ %5932, %5959 ]
  %5965 = phi float [ %6044, %6040 ], [ %5933, %5959 ]
  %5966 = phi float [ %6045, %6040 ], [ %5934, %5959 ]
  %5967 = phi float [ %6046, %6040 ], [ %5935, %5959 ]
  %5968 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5961)  ; FirstbitLo(value)
  %5969 = add i32 %5968, %5942
  %5970 = and i32 %5968, 31
  %5971 = shl i32 1, %5970
  %5972 = xor i32 %5971, %5961
  %5973 = mul i32 %5969, 112
  %5974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5973, i32 undef)  ; BufferLoad(srv,index,wot)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = or i32 %5973, 12
  %5979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = add i32 %5973, 44
  %5982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5981, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = add i32 %5973, 48
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = add i32 %5973, 80
  %5990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %5991 = extractvalue %dx.types.ResRet.f32 %5990, 1
  %5992 = extractvalue %dx.types.ResRet.f32 %5990, 2
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5975, float %5976, float %5977, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = select i1 %184, float %5991, float %5975
  %5995 = select i1 %184, float %5993, float %5976
  %5996 = select i1 %184, float %5992, float %5977
  %5997 = fsub fast float %5986, %140
  %5998 = fsub fast float %5987, %141
  %5999 = fsub fast float %5988, %142
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %5997, float %5998, float %5999)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = call float @dx.op.unary.f32(i32 24, float %6000)  ; Sqrt(value)
  %6002 = fdiv fast float 1.000000e+00, %6001
  %6003 = fmul fast float %6002, %5997
  %6004 = fmul fast float %6002, %5998
  %6005 = fmul fast float %6002, %5999
  %6006 = fadd fast float %6001, %5980
  %6007 = fdiv fast float 1.000000e+00, %6006
  %6008 = fmul float %5983, %6007
  %6009 = fmul float %6008, %6008
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = and i32 %5971, %5957
  %6012 = icmp eq i32 %6011, 0
  br i1 %6012, label %6035, label %6013, !dx.controlflow.hints !87

; <label>:6013                                    ; preds = %5960
  %6014 = lshr i32 %5905, 5
  %6015 = lshr i32 %5906, 5
  %6016 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %6014, i32 %6015, i32 %5969, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6017 = extractvalue %dx.types.ResRet.i32 %6016, 0
  %6018 = and i32 %6017, 3
  %6019 = icmp eq i32 %6018, 0
  %6020 = select i1 %6019, float 1.000000e+00, float 0.000000e+00
  %6021 = icmp eq i32 %6018, 3
  br i1 %6021, label %6022, label %6035

; <label>:6022                                    ; preds = %6013
  %6023 = lshr i32 %6017, 10
  %6024 = and i32 %6023, 8160
  %6025 = and i32 %5906, 31
  %6026 = or i32 %6024, %6025
  %6027 = lshr i32 %6017, 1
  %6028 = and i32 %6027, 16352
  %6029 = and i32 %5905, 31
  %6030 = or i32 %6028, %6029
  %6031 = lshr i32 %6017, 23
  %6032 = and i32 %6031, 255
  %6033 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %6030, i32 %6026, i32 %6032, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6034 = extractvalue %dx.types.ResRet.f32 %6033, 0
  br label %6035

; <label>:6035                                    ; preds = %6022, %6013, %5960
  %6036 = phi float [ %6034, %6022 ], [ %6020, %6013 ], [ 0.000000e+00, %5960 ]
  %6037 = call float @dx.op.binary.f32(i32 36, float %6036, float %6036)  ; FMin(a,b)
  %6038 = call float @dx.op.binary.f32(i32 36, float %6036, float %6037)  ; FMin(a,b)
  %6039 = fcmp fast ogt float %6038, 0.000000e+00
  br i1 %6039, label %6048, label %6040, !dx.controlflow.hints !88

; <label>:6040                                    ; preds = %6109, %6035
  %6041 = phi float [ %5962, %6035 ], [ %6279, %6109 ]
  %6042 = phi float [ %5963, %6035 ], [ %6280, %6109 ]
  %6043 = phi float [ %5964, %6035 ], [ %6281, %6109 ]
  %6044 = phi float [ %5965, %6035 ], [ %6267, %6109 ]
  %6045 = phi float [ %5966, %6035 ], [ %6268, %6109 ]
  %6046 = phi float [ %5967, %6035 ], [ %6269, %6109 ]
  %6047 = icmp eq i32 %5961, %5971
  br i1 %6047, label %6282, label %5960

; <label>:6048                                    ; preds = %6035
  %6049 = fmul fast float %6036, %5994
  %6050 = fmul fast float %6036, %5995
  %6051 = fmul fast float %6036, %5996
  %6052 = fsub fast float %5988, %4291
  %6053 = fcmp fast ogt float %6052, 0.000000e+00
  %6054 = fsub fast float %142, %4291
  %6055 = fcmp fast ogt float %6054, 0.000000e+00
  %6056 = xor i1 %6055, %6053
  %6057 = fsub fast float %4291, %5988
  %6058 = fmul fast float %6057, 2.000000e+00
  %6059 = fadd fast float %6058, %5988
  %6060 = select i1 %6056, float %5988, float %6059
  %6061 = fsub fast float %6060, %142
  %6062 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %6061, float %5997, float %5998, float %6061)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = call float @dx.op.unary.f32(i32 25, float %6062)  ; Rsqrt(value)
  %6064 = fmul fast float %6063, %5997
  %6065 = fmul fast float %6063, %5998
  %6066 = fmul fast float %6063, %6061
  %6067 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4299)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = fdiv fast float 1.000000e+00, %6068
  %6070 = fmul fast float %6069, %6067
  %6071 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6054, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = fcmp fast ogt float %6071, 0.000000e+00
  %6073 = fcmp fast olt float %6071, 0.000000e+00
  %6074 = zext i1 %6072 to i32
  %6075 = zext i1 %6073 to i32
  %6076 = sub nsw i32 %6074, %6075
  %6077 = sitofp i32 %6076 to float
  %6078 = fsub fast float %6060, %4291
  %6079 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %6078, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = fcmp fast ogt float %6079, 0.000000e+00
  %6081 = fcmp fast olt float %6079, 0.000000e+00
  %6082 = zext i1 %6080 to i32
  %6083 = zext i1 %6081 to i32
  %6084 = sub nsw i32 %6082, %6083
  %6085 = sitofp i32 %6084 to float
  %6086 = fcmp fast une float %6077, %6085
  br i1 %6086, label %6087, label %6097

; <label>:6087                                    ; preds = %6048
  %6088 = fmul fast float %6070, %6066
  %6089 = fmul fast float %6070, %6065
  %6090 = fmul fast float %6070, %6064
  %6091 = fmul fast float %6090, %6090
  %6092 = fmul fast float %6089, %6089
  %6093 = fadd fast float %6091, %6092
  %6094 = fmul fast float %6088, %6088
  %6095 = fadd fast float %6093, %6094
  %6096 = call float @dx.op.unary.f32(i32 24, float %6095)  ; Sqrt(value)
  br label %6109

; <label>:6097                                    ; preds = %6048
  %6098 = icmp slt i32 %6076, 0
  br i1 %6098, label %6099, label %6109

; <label>:6099                                    ; preds = %6097
  %6100 = fsub fast float %140, %5986
  %6101 = fsub fast float %141, %5987
  %6102 = fsub fast float %142, %6060
  %6103 = fmul fast float %6100, %6100
  %6104 = fmul fast float %6101, %6101
  %6105 = fadd fast float %6103, %6104
  %6106 = fmul fast float %6102, %6102
  %6107 = fadd fast float %6105, %6106
  %6108 = call float @dx.op.unary.f32(i32 24, float %6107)  ; Sqrt(value)
  br label %6109

; <label>:6109                                    ; preds = %6099, %6097, %6087
  %6110 = phi float [ %6096, %6087 ], [ %6108, %6099 ], [ 0.000000e+00, %6097 ]
  %6111 = and i1 %6055, %6053
  %6112 = fsub fast float -0.000000e+00, %6110
  %6113 = select i1 %6111, float -0.000000e+00, float %6112
  %6114 = fmul fast float %4292, 0x3FF7154760000000
  %6115 = fmul fast float %6114, %6113
  %6116 = fmul fast float %4293, 0x3FF7154760000000
  %6117 = fmul fast float %6116, %6113
  %6118 = fmul fast float %4294, 0x3FF7154760000000
  %6119 = fmul fast float %6118, %6113
  %6120 = call float @dx.op.unary.f32(i32 21, float %6115)  ; Exp(value)
  %6121 = call float @dx.op.unary.f32(i32 21, float %6117)  ; Exp(value)
  %6122 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6123 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6124 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6126 = fmul fast float %6049, %6123
  %6127 = fmul fast float %6050, %6124
  %6128 = fmul fast float %6051, %6125
  %6129 = fsub fast float %6003, %4491
  %6130 = fsub fast float %6004, %4490
  %6131 = fsub fast float %6005, %4489
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float %6129, float %6130, float %6131)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = call float @dx.op.unary.f32(i32 25, float %6132)  ; Rsqrt(value)
  %6134 = fmul fast float %6133, %6129
  %6135 = fmul fast float %6133, %6130
  %6136 = fmul fast float %6133, %6131
  %6137 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = call float @dx.op.dot3.f32(i32 55, float %4488, float %4487, float %4486, float %6134, float %6135, float %6136)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6140 = fmul fast float %6139, %6010
  %6141 = fmul fast float %6139, %6139
  %6142 = fmul fast float %6141, %4545
  %6143 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6144 = fmul fast float %6140, %6143
  %6145 = bitcast float %6000 to i32
  %6146 = ashr i32 %6145, 1
  %6147 = sub nsw i32 1597463007, %6146
  %6148 = bitcast i32 %6147 to float
  %6149 = fmul fast float %6148, %5997
  %6150 = fmul fast float %6148, %5998
  %6151 = fmul fast float %6148, %5999
  %6152 = fsub fast float %6149, %4491
  %6153 = fsub fast float %6150, %4490
  %6154 = fsub fast float %6151, %4489
  %6155 = call float @dx.op.dot3.f32(i32 55, float %6152, float %6153, float %6154, float %6152, float %6153, float %6154)  ; Dot3(ax,ay,az,bx,by,bz)
  %6156 = call float @dx.op.unary.f32(i32 25, float %6155)  ; Rsqrt(value)
  %6157 = fmul fast float %6152, %6156
  %6158 = fmul fast float %6153, %6156
  %6159 = fmul fast float %6154, %6156
  %6160 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %6157, float %6158, float %6159)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = fmul fast float %6160, %6160
  %6162 = call float @dx.op.unary.f32(i32 6, float %6137)  ; FAbs(value)
  %6163 = fsub fast float 1.000000e+00, %4538
  %6164 = fmul fast float %4520, %4520
  %6165 = fmul fast float %6164, %6163
  %6166 = fadd fast float %6165, %4538
  %6167 = bitcast float %6166 to i32
  %6168 = ashr i32 %6167, 1
  %6169 = add nsw i32 %6168, 532487669
  %6170 = bitcast i32 %6169 to float
  %6171 = fadd fast float %6170, %4520
  %6172 = fmul fast float %4538, %6161
  %6173 = fsub fast float 1.000000e+00, %6161
  %6174 = fadd fast float %6173, %6172
  %6175 = fmul fast float %6162, %6162
  %6176 = fmul fast float %6175, %6163
  %6177 = fadd fast float %6176, %4538
  %6178 = bitcast float %6177 to i32
  %6179 = ashr i32 %6178, 1
  %6180 = add nsw i32 %6179, 532487669
  %6181 = bitcast i32 %6180 to float
  %6182 = fadd fast float %6181, %6162
  %6183 = fmul fast float %6174, %6174
  %6184 = fmul fast float %6183, %6171
  %6185 = fmul fast float %6184, %6182
  %6186 = fdiv fast float 1.000000e+00, %6185
  %6187 = bitcast float %4538 to i32
  %6188 = sitofp i32 %6187 to float
  %6189 = fmul fast float %6188, 0x3FE7F73180000000
  %6190 = fadd fast float %6189, 0x41AFE27C40000000
  %6191 = fptosi float %6190 to i32
  %6192 = bitcast i32 %6191 to float
  %6193 = fmul fast float %5983, 0x3FD80E9D60000000
  %6194 = fmul fast float %6193, %6148
  %6195 = fadd fast float %6192, %6194
  %6196 = bitcast float %6195 to i32
  %6197 = sub nsw i32 2129859010, %6196
  %6198 = bitcast i32 %6197 to float
  %6199 = fmul fast float %4538, %6186
  %6200 = fmul fast float %6199, %6192
  %6201 = fmul fast float %6200, %6198
  %6202 = call float @dx.op.unary.f32(i32 6, float %6138)  ; FAbs(value)
  %6203 = fsub fast float 1.000000e+00, %6202
  %6204 = bitcast float %6203 to i32
  %6205 = sitofp i32 %6204 to float
  %6206 = fmul fast float %6205, 5.000000e+00
  %6207 = fadd fast float %6206, 0xC1EFBF8940000000
  %6208 = fptosi float %6207 to i32
  %6209 = bitcast i32 %6208 to float
  %6210 = fsub fast float 1.000000e+00, %4498
  %6211 = fsub fast float 1.000000e+00, %4499
  %6212 = fsub fast float 1.000000e+00, %4518
  %6213 = fmul fast float %6209, %6210
  %6214 = fmul fast float %6209, %6211
  %6215 = fmul fast float %6209, %6212
  %6216 = fadd fast float %6213, %4498
  %6217 = fadd fast float %6214, %4499
  %6218 = fadd fast float %6215, %4518
  %6219 = fmul fast float %6137, 9.843750e-01
  %6220 = fadd fast float %6219, 7.812500e-03
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6220, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 2
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 3
  %6224 = fmul fast float %6222, %4498
  %6225 = fmul fast float %6222, %4499
  %6226 = fmul fast float %6222, %4518
  %6227 = fadd fast float %6224, %6223
  %6228 = fadd fast float %6225, %6223
  %6229 = fadd fast float %6226, %6223
  %6230 = call float @dx.op.binary.f32(i32 35, float %6228, float %6229)  ; FMax(a,b)
  %6231 = call float @dx.op.binary.f32(i32 35, float %6227, float %6230)  ; FMax(a,b)
  %6232 = fsub fast float 1.000000e+00, %6231
  %6233 = fsub fast float -0.000000e+00, %4492
  %6234 = fsub fast float -0.000000e+00, %4493
  %6235 = fsub fast float -0.000000e+00, %4494
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = fmul fast float %6237, %6010
  %6239 = fmul fast float %6237, 9.843750e-01
  %6240 = fadd fast float %6239, 7.812500e-03
  %6241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6240, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 3
  %6244 = fmul fast float %6242, %4498
  %6245 = fmul fast float %6242, %4499
  %6246 = fmul fast float %6242, %4518
  %6247 = fadd fast float %6244, %6243
  %6248 = fadd fast float %6245, %6243
  %6249 = fadd fast float %6246, %6243
  %6250 = call float @dx.op.binary.f32(i32 35, float %6248, float %6249)  ; FMax(a,b)
  %6251 = call float @dx.op.binary.f32(i32 35, float %6247, float %6250)  ; FMax(a,b)
  %6252 = fsub fast float 1.000000e+00, %6251
  %6253 = fmul fast float %6238, %6252
  %6254 = fmul fast float %6253, %3914
  %6255 = fmul fast float %6253, %3915
  %6256 = fmul fast float %6253, %3916
  %6257 = fmul fast float %6232, %6144
  %6258 = fadd fast float %6254, %6257
  %6259 = fadd fast float %6255, %6257
  %6260 = fadd fast float %6256, %6257
  %6261 = fmul fast float %6126, %959
  %6262 = fmul fast float %6261, %6258
  %6263 = fmul fast float %6127, %959
  %6264 = fmul fast float %6263, %6259
  %6265 = fmul fast float %6128, %959
  %6266 = fmul fast float %6265, %6260
  %6267 = fadd fast float %6262, %5965
  %6268 = fadd fast float %6264, %5966
  %6269 = fadd fast float %6266, %5967
  %6270 = fmul fast float %6261, %6144
  %6271 = fmul fast float %6270, %6216
  %6272 = fmul fast float %6271, %6201
  %6273 = fmul fast float %6263, %6144
  %6274 = fmul fast float %6273, %6217
  %6275 = fmul fast float %6274, %6201
  %6276 = fmul fast float %6265, %6144
  %6277 = fmul fast float %6276, %6218
  %6278 = fmul fast float %6277, %6201
  %6279 = fadd fast float %6272, %5962
  %6280 = fadd fast float %6275, %5963
  %6281 = fadd fast float %6278, %5964
  br label %6040

; <label>:6282                                    ; preds = %6040
  br label %6283

; <label>:6283                                    ; preds = %6282, %5928
  %6284 = phi float [ %5930, %5928 ], [ %6041, %6282 ]
  %6285 = phi float [ %5931, %5928 ], [ %6042, %6282 ]
  %6286 = phi float [ %5932, %5928 ], [ %6043, %6282 ]
  %6287 = phi float [ %5933, %5928 ], [ %6044, %6282 ]
  %6288 = phi float [ %5934, %5928 ], [ %6045, %6282 ]
  %6289 = phi float [ %5935, %5928 ], [ %6046, %6282 ]
  %6290 = add i32 %5929, 1
  %6291 = icmp ugt i32 %6290, %5925
  br i1 %6291, label %6292, label %5928

; <label>:6292                                    ; preds = %6283
  br label %6293

; <label>:6293                                    ; preds = %6292, %5904, %5894
  %6294 = phi float [ %5895, %5894 ], [ %5895, %5904 ], [ %6284, %6292 ]
  %6295 = phi float [ %5896, %5894 ], [ %5896, %5904 ], [ %6285, %6292 ]
  %6296 = phi float [ %5897, %5894 ], [ %5897, %5904 ], [ %6286, %6292 ]
  %6297 = phi float [ %5898, %5894 ], [ %5898, %5904 ], [ %6287, %6292 ]
  %6298 = phi float [ %5899, %5894 ], [ %5899, %5904 ], [ %6288, %6292 ]
  %6299 = phi float [ %5900, %5894 ], [ %5900, %5904 ], [ %6289, %6292 ]
  %6300 = call float @dx.op.unary.f32(i32 24, float %4495)  ; Sqrt(value)
  %6301 = call float @dx.op.unary.f32(i32 24, float %4496)  ; Sqrt(value)
  %6302 = call float @dx.op.unary.f32(i32 24, float %4497)  ; Sqrt(value)
  %6303 = fmul fast float %6300, %6297
  %6304 = fmul fast float %6301, %6298
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  br i1 %184, label %6307, label %6331

; <label>:6307                                    ; preds = %6293
  %6308 = fadd fast float %6299, %3800
  %6309 = fmul fast float %6308, %3798
  %6310 = fsub fast float 1.000000e+00, %3798
  %6311 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6314 = fmul fast float %6313, %6311
  %6315 = fsub fast float 1.000000e+00, %4520
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = fmul fast float %6317, %6315
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = fmul fast float %6319, %4516
  %6321 = fadd fast float %6304, %6303
  %6322 = fmul fast float %6306, %6321
  %6323 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6324 = fadd fast float %6314, %6309
  %6325 = fsub fast float %6324, %6318
  %6326 = fadd fast float %6325, %6320
  %6327 = fsub fast float %6326, %6323
  %6328 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6329 = fmul fast float %6327, %6328
  %6330 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  br label %6347

; <label>:6331                                    ; preds = %6293
  %6332 = fmul fast float %6302, %6299
  %6333 = fmul fast float %6306, %6303
  %6334 = fmul fast float %6306, %6304
  %6335 = fmul fast float %6332, %6306
  %6336 = add i32 %42, 356
  %6337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6336, i32 undef)  ; BufferLoad(srv,index,wot)
  %6338 = extractvalue %dx.types.ResRet.i32 %6337, 0
  %6339 = and i32 %6338, 32
  %6340 = icmp eq i32 %6339, 0
  br i1 %6340, label %6347, label %6341

; <label>:6341                                    ; preds = %6331
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = fmul fast float %6343, 0x3FE99999A0000000
  %6345 = fadd fast float %6343, %6333
  %6346 = fadd fast float %6344, %6335
  br label %6347

; <label>:6347                                    ; preds = %6341, %6331, %6307
  %6348 = phi float [ %6322, %6307 ], [ %6345, %6341 ], [ %6333, %6331 ]
  %6349 = phi float [ %6330, %6307 ], [ %6334, %6341 ], [ %6334, %6331 ]
  %6350 = phi float [ 1.000000e+00, %6307 ], [ %6346, %6341 ], [ %6335, %6331 ]
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = fmul fast float %6352, %6295
  %6354 = fmul fast float %6352, %6296
  %6355 = fadd fast float %6295, %6294
  %6356 = select i1 %184, float %6355, float %6294
  %6357 = fmul float %6356, %6352
  %6358 = select i1 %184, float 0.000000e+00, float %6353
  %6359 = select i1 %184, float 0.000000e+00, float %6354
  %6360 = fmul fast float %6348, %6300
  %6361 = fmul fast float %6349, %6301
  %6362 = fmul fast float %6350, %6302
  %6363 = fadd fast float %6357, %6360
  %6364 = fadd fast float %6358, %6361
  %6365 = fadd fast float %6359, %6362
  %6366 = select i1 %184, float %6349, float %6364
  %6367 = select i1 %184, float %6350, float %6365
  %6368 = call float @dx.op.binary.f32(i32 36, float %6363, float 3.225500e+04)  ; FMin(a,b)
  %6369 = call float @dx.op.binary.f32(i32 36, float %6366, float 3.225500e+04)  ; FMin(a,b)
  %6370 = call float @dx.op.binary.f32(i32 36, float %6367, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !80}
!55 = !{!56, !78, null}
!56 = !{!57, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !77}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 11}
!60 = !{i32 1, !"COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!61 = !{i32 3, i32 14}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 5, !"SH_RED", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!69 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!70 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!71 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 8, i8 0, !63}
!72 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!73 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 10, i8 0, !74}
!74 = !{i32 3, i32 5}
!75 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !58, i8 1, i32 1, i8 1, i32 11, i8 0, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!80 = !{i32 0, i64 24}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}

