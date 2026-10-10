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
; shader hash: 3553629cb9b551742831aed769fe5910
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
  %381 = add i32 %42, 492
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
  %539 = add i32 %42, 376
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
  %562 = add i32 %42, 460
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
  %760 = add i32 %42, 392
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
  %844 = add i32 %42, 408
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
  %885 = add i32 %42, 476
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
  %1193 = add i32 %42, 444
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
  %1245 = add i32 %42, 428
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
  %1271 = add i32 %42, 380
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
  %1294 = add i32 %42, 464
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
  %1492 = add i32 %42, 396
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
  %1576 = add i32 %42, 412
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
  %1617 = add i32 %42, 480
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
  %2138 = add i32 %42, 448
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
  %2190 = add i32 %42, 432
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
  %2216 = add i32 %42, 384
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
  %2239 = add i32 %42, 468
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
  %2437 = add i32 %42, 400
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
  %2521 = add i32 %42, 416
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
  %2562 = add i32 %42, 484
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
  %3083 = add i32 %42, 452
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
  %3135 = add i32 %42, 436
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
  %3161 = add i32 %42, 388
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
  %3184 = add i32 %42, 472
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
  %3382 = add i32 %42, 404
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
  %3466 = add i32 %42, 420
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
  %3507 = add i32 %42, 488
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
  %3799 = add i32 %42, 360
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.i32 %3800, 1
  %3803 = bitcast i32 %3801 to float
  %3804 = bitcast i32 %3802 to float
  %3805 = fcmp fast oge float %3803, 0.000000e+00
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = select i1 %3805, float %3803, float %3807
  %3809 = add i32 %42, 456
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = add i32 %3811, 0
  %3813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3813, %dx.types.Handle %78, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = fmul fast float %3815, %3804
  %3817 = fadd fast float %3816, %3808
  %3818 = call float @dx.op.dot2.f32(i32 54, float %3783, float %3784, float %3783, float %3784)  ; Dot2(ax,ay,bx,by)
  %3819 = fmul fast float %3818, 0x3FE3333340000000
  %3820 = fsub fast float 1.000000e+00, %3819
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3783, float %3784, float %3820, float %3783, float %3784, float %3820)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = call float @dx.op.unary.f32(i32 25, float %3821)  ; Rsqrt(value)
  %3823 = fmul fast float %3822, %3783
  %3824 = fmul fast float %3822, %3784
  %3825 = fmul fast float %3820, %3822
  %3826 = fmul fast float %3825, %90
  %3827 = fmul fast float %3825, %92
  %3828 = fmul fast float %3825, %94
  %3829 = fmul fast float %3823, %62
  %3830 = fmul fast float %3823, %63
  %3831 = fmul fast float %3823, %64
  %3832 = fadd fast float %3826, %3829
  %3833 = fadd fast float %3827, %3830
  %3834 = fadd fast float %3828, %3831
  %3835 = fmul fast float %104, %3824
  %3836 = fmul fast float %105, %3824
  %3837 = fmul fast float %106, %3824
  %3838 = fadd fast float %3832, %3835
  %3839 = fadd fast float %3833, %3836
  %3840 = fadd fast float %3834, %3837
  %3841 = call float @dx.op.dot3.f32(i32 55, float %3838, float %3839, float %3840, float %3838, float %3839, float %3840)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = call float @dx.op.unary.f32(i32 25, float %3841)  ; Rsqrt(value)
  %3843 = fmul fast float %3838, %3842
  %3844 = fmul fast float %3839, %3842
  %3845 = fmul fast float %3840, %3842
  %3846 = fadd fast float %3794, 0xBFB99999A0000000
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3848 = fmul fast float %3847, 0x3FF1C71C80000000
  %3849 = call float @dx.op.binary.f32(i32 36, float %3794, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3850 = fsub fast float 1.000000e+00, %3848
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3852 = fmul fast float %3851, %3785
  %3853 = fmul fast float %3851, %3786
  %3854 = fmul fast float %3851, %3787
  %3855 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3856 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3858 = fmul fast float %3848, %3785
  %3859 = fmul fast float %3848, %3786
  %3860 = fmul fast float %3848, %3787
  %3861 = fadd fast float %3858, %3849
  %3862 = fadd fast float %3859, %3849
  %3863 = fadd fast float %3860, %3849
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3867 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = and i32 %3869, 1
  %3871 = icmp eq i32 %3870, 0
  br i1 %3871, label %3886, label %3872

; <label>:3872                                    ; preds = %3782
  %3873 = call float @dx.op.binary.f32(i32 35, float %3856, float %3857)  ; FMax(a,b)
  %3874 = call float @dx.op.binary.f32(i32 35, float %3855, float %3873)  ; FMax(a,b)
  %3875 = fcmp fast ogt float %3874, 0.000000e+00
  %3876 = bitcast float %3874 to i32
  %3877 = sub nsw i32 2129859010, %3876
  %3878 = bitcast i32 %3877 to float
  %3879 = select i1 %3875, float %3878, float 0.000000e+00
  %3880 = fmul fast float %3855, %3791
  %3881 = fmul fast float %3856, %3792
  %3882 = fmul fast float %3857, %3793
  %3883 = fmul fast float %3880, %3879
  %3884 = fmul fast float %3881, %3879
  %3885 = fmul fast float %3882, %3879
  br label %3886

; <label>:3886                                    ; preds = %3872, %3782
  %3887 = phi float [ %3883, %3872 ], [ %3791, %3782 ]
  %3888 = phi float [ %3884, %3872 ], [ %3792, %3782 ]
  %3889 = phi float [ %3885, %3872 ], [ %3793, %3782 ]
  %3890 = fadd fast float %3855, 0xBFD51EB860000000
  %3891 = fadd fast float %3856, 0xBFD51EB860000000
  %3892 = fadd fast float %3857, 0xBFD51EB860000000
  %3893 = fmul fast float %3890, %3890
  %3894 = fmul fast float %3891, %3891
  %3895 = fmul fast float %3892, %3892
  %3896 = fmul fast float %3893, %3893
  %3897 = fmul fast float %3896, 1.000000e+02
  %3898 = fmul fast float %3894, %3894
  %3899 = fmul fast float %3898, 1.000000e+02
  %3900 = fmul fast float %3895, %3895
  %3901 = fmul fast float %3900, 1.000000e+02
  %3902 = fadd fast float %3897, 3.500000e+00
  %3903 = fadd fast float %3899, 3.500000e+00
  %3904 = fadd fast float %3901, 3.500000e+00
  %3905 = call float @dx.op.binary.f32(i32 35, float %3887, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3906 = call float @dx.op.binary.f32(i32 35, float %3888, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3907 = call float @dx.op.binary.f32(i32 35, float %3889, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3908 = fdiv fast float %3902, %3905
  %3909 = fdiv fast float %3903, %3906
  %3910 = fdiv fast float %3904, %3907
  %3911 = fmul fast float %3797, 0xBFF7154760000000
  %3912 = fmul fast float %3911, %3908
  %3913 = call float @dx.op.unary.f32(i32 21, float %3912)  ; Exp(value)
  %3914 = fmul fast float %3913, 2.500000e-01
  %3915 = fmul fast float %3797, 0xBFDEC709E0000000
  %3916 = fmul fast float %3915, %3908
  %3917 = call float @dx.op.unary.f32(i32 21, float %3916)  ; Exp(value)
  %3918 = fmul fast float %3917, 7.500000e-01
  %3919 = fmul fast float %3911, %3909
  %3920 = call float @dx.op.unary.f32(i32 21, float %3919)  ; Exp(value)
  %3921 = fmul fast float %3920, 2.500000e-01
  %3922 = fmul fast float %3915, %3909
  %3923 = call float @dx.op.unary.f32(i32 21, float %3922)  ; Exp(value)
  %3924 = fmul fast float %3923, 7.500000e-01
  %3925 = fmul fast float %3911, %3910
  %3926 = call float @dx.op.unary.f32(i32 21, float %3925)  ; Exp(value)
  %3927 = fmul fast float %3926, 2.500000e-01
  %3928 = fmul fast float %3915, %3910
  %3929 = call float @dx.op.unary.f32(i32 21, float %3928)  ; Exp(value)
  %3930 = fmul fast float %3929, 7.500000e-01
  %3931 = fadd fast float %3914, %3918
  %3932 = fadd fast float %3921, %3924
  %3933 = fadd fast float %3927, %3930
  %3934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.i32 %3934, 3
  %3936 = and i32 %3935, 8
  %3937 = icmp ne i32 %3936, 0
  %3938 = call float @dx.op.binary.f32(i32 35, float %3855, float %3785)  ; FMax(a,b)
  %3939 = call float @dx.op.binary.f32(i32 35, float %3856, float %3785)  ; FMax(a,b)
  %3940 = call float @dx.op.binary.f32(i32 35, float %3857, float %3785)  ; FMax(a,b)
  %3941 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3942 = select i1 %184, float %3785, float %3855
  %3943 = select i1 %184, float %3941, float %3856
  %3944 = select i1 %184, float 1.000000e+00, float %3857
  %3945 = select i1 %3937, float %3938, float %3942
  %3946 = select i1 %3937, float %3939, float %3943
  %3947 = select i1 %3937, float %3940, float %3944
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3952 = fadd fast float %3949, %140
  %3953 = fadd fast float %3950, %141
  %3954 = fadd fast float %3951, %142
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3958 = fsub fast float %3952, %3956
  %3959 = fsub fast float %3953, %3957
  %3960 = fmul fast float %3958, %3958
  %3961 = fmul fast float %3959, %3959
  %3962 = fadd fast float %3960, %3961
  %3963 = call float @dx.op.unary.f32(i32 24, float %3962)  ; Sqrt(value)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3955, 2
  %3965 = fcmp fast olt float %3963, %3964
  br i1 %3965, label %3966, label %4033

; <label>:3966                                    ; preds = %3886
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 0
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3974 = extractvalue %dx.types.CBufRet.f32 %3969, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3971, 1
  %3976 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3977 = extractvalue %dx.types.CBufRet.f32 %3969, 3
  %3978 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  %3979 = fadd fast float %3976, %3952
  %3980 = fadd fast float %3977, %3953
  %3981 = fadd fast float %3978, %3954
  %3982 = fmul fast float %3979, %3968
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3980, float %3970, float %3982)  ; FMad(a,b,c)
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3972, float %3983)  ; FMad(a,b,c)
  %3985 = fmul fast float %3979, %3973
  %3986 = call float @dx.op.tertiary.f32(i32 46, float %3980, float %3974, float %3985)  ; FMad(a,b,c)
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3975, float %3986)  ; FMad(a,b,c)
  %3988 = fsub fast float %3984, %3976
  %3989 = fsub fast float %3987, %3977
  %3990 = fsub fast float %3988, %3956
  %3991 = fadd fast float %3990, %3964
  %3992 = fsub fast float %3989, %3957
  %3993 = fadd fast float %3992, %3964
  %3994 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3995 = fmul fast float %3991, %3994
  %3996 = fmul fast float %3993, %3994
  %3997 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3998 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3999 = fsub fast float 1.000000e+00, %3997
  %4000 = fsub fast float 1.000000e+00, %3998
  %4001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %3999, float %4000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = fcmp fast ugt float %4002, 0.000000e+00
  br i1 %4003, label %4004, label %4307

; <label>:4004                                    ; preds = %3966
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 2
  %4007 = fmul fast float %4006, %4002
  %4008 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4009 = fadd fast float %4008, %4007
  %4010 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %4011 = fadd fast float %4009, %3978
  %4012 = fmul fast float %3984, %3972
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3975, float %4012)  ; FMad(a,b,c)
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %4011, float %4010, float %4013)  ; FMad(a,b,c)
  %4015 = fsub fast float %4014, %3978
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4018 = fsub fast float %4015, %4017
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %3999, float %4000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %3999, float %4000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = fadd fast float %4024, %4020
  %4028 = fmul fast float %4027, 0x3F847AE140000000
  %4029 = fadd fast float %4025, %4021
  %4030 = fmul fast float %4029, 0x3F847AE140000000
  %4031 = fadd fast float %4026, %4022
  %4032 = fmul fast float %4031, 0x3F847AE140000000
  br label %4307

; <label>:4033                                    ; preds = %3886
  %4034 = and i32 %158, 1
  %4035 = icmp eq i32 %4034, 0
  br i1 %4035, label %4307, label %4036

; <label>:4036                                    ; preds = %4033
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4044 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4045 = extractvalue %dx.types.CBufRet.f32 %4041, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4047 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4048 = extractvalue %dx.types.CBufRet.f32 %4041, 3
  %4049 = fadd fast float %4046, %3952
  %4050 = fadd fast float %4047, %3953
  %4051 = fadd fast float %4048, %3954
  %4052 = fmul fast float %4049, %4038
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4050, float %4040, float %4052)  ; FMad(a,b,c)
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4042, float %4053)  ; FMad(a,b,c)
  %4055 = fmul fast float %4049, %4043
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4050, float %4044, float %4055)  ; FMad(a,b,c)
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %4045, float %4056)  ; FMad(a,b,c)
  %4058 = fsub fast float %4054, %4046
  %4059 = fsub fast float %4057, %4047
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.i32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.i32 %4067, 1
  %4070 = udiv i32 %4069, %4068
  %4071 = fsub fast float %4058, %4061
  %4072 = fsub fast float %4059, %4062
  %4073 = call float @dx.op.binary.f32(i32 35, float %4071, float 0.000000e+00)  ; FMax(a,b)
  %4074 = call float @dx.op.binary.f32(i32 35, float %4072, float 0.000000e+00)  ; FMax(a,b)
  %4075 = call float @dx.op.binary.f32(i32 36, float %4073, float %4063)  ; FMin(a,b)
  %4076 = call float @dx.op.binary.f32(i32 36, float %4074, float %4064)  ; FMin(a,b)
  %4077 = add i32 %4068, -1
  %4078 = add i32 %4070, -1
  %4079 = fmul fast float %4075, %4066
  %4080 = fmul fast float %4076, %4066
  %4081 = fptoui float %4079 to i32
  %4082 = fptoui float %4080 to i32
  %4083 = call i32 @dx.op.binary.i32(i32 40, i32 %4081, i32 %4077)  ; UMin(a,b)
  %4084 = call i32 @dx.op.binary.i32(i32 40, i32 %4082, i32 %4078)  ; UMin(a,b)
  %4085 = mul i32 %4084, %4068
  %4086 = add i32 %4085, %4083
  %4087 = shl i32 %4086, 2
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = icmp eq i32 %4089, -1
  br i1 %4090, label %4307, label %4091

; <label>:4091                                    ; preds = %4036
  %4092 = mul i32 %4089, 148
  %4093 = add i32 %4092, 4
  %4094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = add i32 %4092, 8
  %4097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4096, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = add i32 %4092, 36
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = add i32 %4092, 60
  %4103 = add i32 %4092, 92
  %4104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.i32 %4104, 0
  %4106 = add i32 %4092, 116
  %4107 = fsub fast float %4058, %4095
  %4108 = fsub fast float %4059, %4098
  %4109 = fmul fast float %4066, %4107
  %4110 = fmul fast float %4066, %4108
  %4111 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4113 = fsub fast float 1.000000e+00, %4112
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4116 = call float @dx.op.unary.f32(i32 83, float %4111)  ; DerivCoarseX(value)
  %4117 = call float @dx.op.unary.f32(i32 83, float %4113)  ; DerivCoarseX(value)
  %4118 = call float @dx.op.unary.f32(i32 84, float %4111)  ; DerivCoarseY(value)
  %4119 = call float @dx.op.unary.f32(i32 84, float %4113)  ; DerivCoarseY(value)
  %4120 = fmul fast float %4116, %4115
  %4121 = fmul fast float %4117, %4115
  %4122 = fmul fast float %4118, %4115
  %4123 = fmul fast float %4119, %4115
  %4124 = call float @dx.op.dot2.f32(i32 54, float %4122, float %4123, float %4122, float %4123)  ; Dot2(ax,ay,bx,by)
  %4125 = call float @dx.op.dot2.f32(i32 54, float %4120, float %4121, float %4120, float %4121)  ; Dot2(ax,ay,bx,by)
  %4126 = call float @dx.op.binary.f32(i32 35, float %4125, float %4124)  ; FMax(a,b)
  %4127 = call float @dx.op.unary.f32(i32 23, float %4126)  ; Log(value)
  %4128 = fmul fast float %4127, 5.000000e-01
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4131 = fadd fast float %4130, %4128
  %4132 = call float @dx.op.binary.f32(i32 35, float %4131, float 0.000000e+00)  ; FMax(a,b)
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4135 = fadd fast float %4134, %4132
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4138 = fadd fast float %4135, %4137
  %4139 = add i32 %4105, 0
  %4140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4140, i32 0)  ; GetDimensions(handle,mipLevel)
  %4142 = extractvalue %dx.types.Dimensions %4141, 0
  %4143 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4142)  ; FirstbitLo(value)
  %4144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.i32 %4144, 1
  %4146 = sub nsw i32 %4145, %4143
  %4147 = sitofp i32 %4146 to float
  %4148 = fsub fast float %4138, %4147
  %4149 = call float @dx.op.binary.f32(i32 35, float %4148, float 0.000000e+00)  ; FMax(a,b)
  %4150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4140, %dx.types.Handle %34, float %4111, float %4113, float %4101, float undef, i32 0, i32 0, i32 undef, float %4149)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = fcmp ule float %4151, 0x3FE0101020000000
  %4153 = extractvalue %dx.types.CBufRet.i32 %4144, 0
  %4154 = and i32 %4153, 128
  %4155 = icmp ne i32 %4154, 0
  %4156 = and i1 %4152, %4155
  br i1 %4156, label %4307, label %4157

; <label>:4157                                    ; preds = %4091
  %4158 = add i32 %4092, 20
  %4159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = add i32 %4092, 24
  %4162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = add i32 %4092, 40
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = add i32 %4092, 96
  %4168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.i32 %4168, 0
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 2
  %4172 = fmul fast float %4171, %4111
  %4173 = fmul fast float %4171, %4113
  %4174 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4175 = fadd fast float %4172, %4174
  %4176 = fadd fast float %4173, %4174
  %4177 = add i32 %4169, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4178, i32 0)  ; GetDimensions(handle,mipLevel)
  %4180 = extractvalue %dx.types.Dimensions %4179, 0
  %4181 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4180)  ; FirstbitLo(value)
  %4182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.i32 %4182, 1
  %4184 = sub nsw i32 %4183, %4181
  %4185 = sitofp i32 %4184 to float
  %4186 = fsub fast float %4135, %4185
  %4187 = call float @dx.op.binary.f32(i32 35, float %4186, float 0.000000e+00)  ; FMax(a,b)
  %4188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4178, %dx.types.Handle %34, float %4175, float %4176, float %4166, float undef, i32 0, i32 0, i32 undef, float %4187)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = fmul fast float %4189, %4160
  %4191 = fadd fast float %4190, %4163
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4200 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4201 = fadd fast float %4197, %4058
  %4202 = fadd fast float %4199, %4059
  %4203 = fadd fast float %4191, %4200
  %4204 = fmul fast float %4201, %4193
  %4205 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4194, float %4204)  ; FMad(a,b,c)
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4203, float %4195, float %4205)  ; FMad(a,b,c)
  %4207 = fsub fast float %4206, %4200
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 2
  %4210 = fsub fast float %4207, %4209
  %4211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.i32 %4211, 0
  %4213 = call i32 @dx.op.binary.i32(i32 40, i32 %4089, i32 %4212)  ; UMin(a,b)
  %4214 = mul i32 %4213, 36
  %4215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.i32 %4215, 0
  %4217 = add i32 %4214, 4
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = fmul fast float %4219, %4111
  %4221 = fmul fast float %4219, %4113
  %4222 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4223 = fadd fast float %4220, %4222
  %4224 = fadd fast float %4221, %4222
  %4225 = icmp eq i32 %4216, 0
  br i1 %4225, label %4294, label %4226

; <label>:4226                                    ; preds = %4157
  br label %4227

; <label>:4227                                    ; preds = %4284, %4226
  %4228 = phi float [ %4285, %4284 ], [ 0.000000e+00, %4226 ]
  %4229 = phi float [ %4286, %4284 ], [ 0.000000e+00, %4226 ]
  %4230 = phi float [ %4287, %4284 ], [ 0.000000e+00, %4226 ]
  %4231 = phi float [ %4288, %4284 ], [ 0.000000e+00, %4226 ]
  %4232 = phi float [ %4289, %4284 ], [ 0.000000e+00, %4226 ]
  %4233 = phi float [ %4290, %4284 ], [ 0.000000e+00, %4226 ]
  %4234 = phi i32 [ %4291, %4284 ], [ 0, %4226 ]
  %4235 = shl i32 %4234, 2
  %4236 = add i32 %4102, %4235
  %4237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = add i32 %4106, %4235
  %4240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.i32 %4240, 0
  %4242 = add i32 %4241, 0
  %4243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4243, i32 0)  ; GetDimensions(handle,mipLevel)
  %4245 = extractvalue %dx.types.Dimensions %4244, 0
  %4246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4245)  ; FirstbitLo(value)
  %4247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.i32 %4247, 1
  %4249 = sub nsw i32 %4248, %4246
  %4250 = sitofp i32 %4249 to float
  %4251 = fsub fast float %4135, %4250
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float 0.000000e+00)  ; FMax(a,b)
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4243, %dx.types.Handle %34, float %4223, float %4224, float %4238, float undef, i32 0, i32 0, i32 undef, float %4252)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = fcmp fast ogt float %4254, 0.000000e+00
  br i1 %4255, label %4256, label %4284

; <label>:4256                                    ; preds = %4227
  %4257 = add i32 %4217, %4235
  %4258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.i32 %4258, 0
  %4260 = and i32 %4259, 32767
  %4261 = mul nuw nsw i32 %4260, 928
  %4262 = add nuw nsw i32 %4261, 48
  %4263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4263, 2
  %4267 = add nuw nsw i32 %4261, 60
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 1
  %4271 = extractvalue %dx.types.ResRet.f32 %4268, 2
  %4272 = fmul fast float %4264, %4254
  %4273 = fmul fast float %4265, %4254
  %4274 = fmul fast float %4266, %4254
  %4275 = fadd fast float %4272, %4228
  %4276 = fadd fast float %4273, %4229
  %4277 = fadd fast float %4274, %4230
  %4278 = fmul fast float %4269, %4254
  %4279 = fmul fast float %4270, %4254
  %4280 = fmul fast float %4271, %4254
  %4281 = fadd fast float %4278, %4231
  %4282 = fadd fast float %4279, %4232
  %4283 = fadd fast float %4280, %4233
  br label %4284

; <label>:4284                                    ; preds = %4256, %4227
  %4285 = phi float [ %4275, %4256 ], [ %4228, %4227 ]
  %4286 = phi float [ %4276, %4256 ], [ %4229, %4227 ]
  %4287 = phi float [ %4277, %4256 ], [ %4230, %4227 ]
  %4288 = phi float [ %4281, %4256 ], [ %4231, %4227 ]
  %4289 = phi float [ %4282, %4256 ], [ %4232, %4227 ]
  %4290 = phi float [ %4283, %4256 ], [ %4233, %4227 ]
  %4291 = add nuw i32 %4234, 1
  %4292 = icmp eq i32 %4291, %4216
  br i1 %4292, label %4293, label %4227

; <label>:4293                                    ; preds = %4284
  br label %4294

; <label>:4294                                    ; preds = %4293, %4157
  %4295 = phi float [ 0.000000e+00, %4157 ], [ %4285, %4293 ]
  %4296 = phi float [ 0.000000e+00, %4157 ], [ %4286, %4293 ]
  %4297 = phi float [ 0.000000e+00, %4157 ], [ %4287, %4293 ]
  %4298 = phi float [ 0.000000e+00, %4157 ], [ %4288, %4293 ]
  %4299 = phi float [ 0.000000e+00, %4157 ], [ %4289, %4293 ]
  %4300 = phi float [ 0.000000e+00, %4157 ], [ %4290, %4293 ]
  %4301 = fadd fast float %4298, %4295
  %4302 = fmul fast float %4301, 0x3F847AE140000000
  %4303 = fadd fast float %4299, %4296
  %4304 = fmul fast float %4303, 0x3F847AE140000000
  %4305 = fadd fast float %4300, %4297
  %4306 = fmul fast float %4305, 0x3F847AE140000000
  br label %4307

; <label>:4307                                    ; preds = %4294, %4091, %4036, %4033, %4004, %3966
  %4308 = phi float [ %4018, %4004 ], [ -1.310720e+05, %3966 ], [ %4210, %4294 ], [ -1.310720e+05, %4036 ], [ -1.310720e+05, %4091 ], [ -1.310720e+05, %4033 ]
  %4309 = phi float [ %4028, %4004 ], [ 0.000000e+00, %3966 ], [ %4302, %4294 ], [ 0.000000e+00, %4036 ], [ 0.000000e+00, %4091 ], [ 0.000000e+00, %4033 ]
  %4310 = phi float [ %4030, %4004 ], [ 0.000000e+00, %3966 ], [ %4304, %4294 ], [ 0.000000e+00, %4036 ], [ 0.000000e+00, %4091 ], [ 0.000000e+00, %4033 ]
  %4311 = phi float [ %4032, %4004 ], [ 0.000000e+00, %3966 ], [ %4306, %4294 ], [ 0.000000e+00, %4036 ], [ 0.000000e+00, %4091 ], [ 0.000000e+00, %4033 ]
  %4312 = phi i1 [ true, %4004 ], [ false, %3966 ], [ true, %4294 ], [ false, %4036 ], [ false, %4091 ], [ false, %4033 ]
  %4313 = and i32 %158, 3
  %4314 = icmp eq i32 %4313, 1
  %4315 = select i1 %4314, float 1.000000e+00, float 0.000000e+00
  %4316 = fsub fast float %4308, %142
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = select i1 %4312, float %4317, float 1.000000e+00
  %4319 = fmul fast float %4318, %4315
  %4320 = icmp eq i32 %4313, 3
  %4321 = select i1 %4320, float 1.000000e+00, float %4319
  %4322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4321)  ; FMax(a,b)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = fcmp fast une float %4323, 0.000000e+00
  %4325 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = call float @dx.op.unary.f32(i32 25, float %4325)  ; Rsqrt(value)
  br i1 %4324, label %4334, label %4327

; <label>:4327                                    ; preds = %4307
  %4328 = fmul fast float %4326, %140
  %4329 = fmul fast float %4326, %141
  %4330 = fmul fast float %4326, %142
  %4331 = fsub fast float -0.000000e+00, %4328
  %4332 = fsub fast float -0.000000e+00, %4329
  %4333 = fsub fast float -0.000000e+00, %4330
  br label %4502

; <label>:4334                                    ; preds = %4307
  %4335 = fmul fast float %140, %4326
  %4336 = fsub fast float -0.000000e+00, %4335
  %4337 = fmul fast float %141, %4326
  %4338 = fsub fast float -0.000000e+00, %4337
  %4339 = fmul fast float %142, %4326
  %4340 = fsub fast float -0.000000e+00, %4339
  %4341 = call float @dx.op.dot3.f32(i32 55, float %4336, float %4338, float %4340, float %90, float %92, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4342 = fmul fast float %4323, 2.500000e+00
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = fmul fast float %4323, 0x4013FFFFE0000000
  %4345 = fadd fast float %4344, 0xBFFFFFFFE0000000
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4323, 0x4004000020000000
  %4348 = fadd fast float %4347, 0xBFF8000040000000
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4351 = fmul fast float %3846, 1.000000e+01
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = fmul fast float %4352, 2.000000e+00
  %4354 = fsub fast float 3.000000e+00, %4353
  %4355 = fmul fast float %4352, %4352
  %4356 = fmul fast float %4355, %4354
  %4357 = fsub fast float 1.000000e+00, %4356
  %4358 = fsub fast float 0x3FE3333340000000, %3867
  %4359 = fmul fast float %4358, 0x400AAAAAA0000000
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4357, %4360
  %4362 = fmul fast float %3945, 0x3FEA2B8620000000
  %4363 = fmul fast float %3946, 0x3FEA2B8620000000
  %4364 = fmul fast float %3947, 0x3FEA2B8620000000
  %4365 = fadd fast float %4362, 0x3FC81DFBA0000000
  %4366 = fmul fast float %4365, %3945
  %4367 = fadd fast float %4366, 0x3F910E6020000000
  %4368 = fadd fast float %4363, 0x3FC81DFBA0000000
  %4369 = fmul fast float %4368, %3946
  %4370 = fadd fast float %4369, 0x3F910E6020000000
  %4371 = fadd fast float %4364, 0x3FC81DFBA0000000
  %4372 = fmul fast float %4371, %3947
  %4373 = fadd fast float %4372, 0x3F910E6020000000
  %4374 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4375 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4377 = fsub fast float %4374, %3945
  %4378 = fsub fast float %4375, %3946
  %4379 = fsub fast float %4376, %3947
  %4380 = fmul fast float %4377, %4350
  %4381 = fmul fast float %4380, %4361
  %4382 = fmul fast float %4378, %4350
  %4383 = fmul fast float %4382, %4361
  %4384 = fmul fast float %4379, %4350
  %4385 = fmul fast float %4384, %4361
  %4386 = fadd fast float %4381, %3945
  %4387 = fadd fast float %4383, %3946
  %4388 = fadd fast float %4385, %3947
  %4389 = fmul fast float %3796, %3796
  %4390 = fmul fast float %4389, %4389
  %4391 = fadd fast float %4346, 1.000000e+00
  %4392 = fsub fast float %4391, %4361
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = call float @dx.op.dot3.f32(i32 55, float %90, float %92, float %94, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fsub fast float 1.000000e+00, %4390
  %4397 = call float @dx.op.binary.f32(i32 36, float %4393, float %4396)  ; FMin(a,b)
  %4398 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4399 = call float @dx.op.binary.f32(i32 35, float %4397, float %4398)  ; FMax(a,b)
  %4400 = fadd fast float %4395, 0xBFE4CCCCC0000000
  %4401 = fmul fast float %4400, 0x4006DB6DA0000000
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = fmul fast float %4402, 2.000000e+00
  %4404 = fsub fast float 3.000000e+00, %4403
  %4405 = bitcast float %3864 to i32
  %4406 = ashr i32 %4405, 1
  %4407 = add nsw i32 %4406, 532487669
  %4408 = bitcast i32 %4407 to float
  %4409 = fsub fast float 1.000000e+00, %4408
  %4410 = bitcast float %4409 to i32
  %4411 = sub nsw i32 2129859010, %4410
  %4412 = bitcast i32 %4411 to float
  %4413 = fmul fast float %4412, 2.000000e+00
  %4414 = bitcast float %3865 to i32
  %4415 = ashr i32 %4414, 1
  %4416 = add nsw i32 %4415, 532487669
  %4417 = bitcast i32 %4416 to float
  %4418 = fsub fast float 1.000000e+00, %4417
  %4419 = bitcast float %4418 to i32
  %4420 = sub nsw i32 2129859010, %4419
  %4421 = bitcast i32 %4420 to float
  %4422 = fmul fast float %4421, 2.000000e+00
  %4423 = bitcast float %3866 to i32
  %4424 = ashr i32 %4423, 1
  %4425 = add nsw i32 %4424, 532487669
  %4426 = bitcast i32 %4425 to float
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = bitcast float %4427 to i32
  %4429 = sub nsw i32 2129859010, %4428
  %4430 = bitcast i32 %4429 to float
  %4431 = fmul fast float %4430, 2.000000e+00
  %4432 = fsub fast float 0x4002A9FBE0000000, %4413
  %4433 = fadd fast float %4413, 0x3FD54FDF00000000
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = fmul fast float %4436, %4432
  %4438 = fmul fast float %4437, %4437
  %4439 = fsub fast float 0x4002A9FBE0000000, %4422
  %4440 = fadd fast float %4422, 0x3FD54FDF00000000
  %4441 = bitcast float %4440 to i32
  %4442 = sub nsw i32 2129859010, %4441
  %4443 = bitcast i32 %4442 to float
  %4444 = fmul fast float %4443, %4439
  %4445 = fmul fast float %4444, %4444
  %4446 = fsub fast float 0x4002A9FBE0000000, %4431
  %4447 = fadd fast float %4431, 0x3FD54FDF00000000
  %4448 = bitcast float %4447 to i32
  %4449 = sub nsw i32 2129859010, %4448
  %4450 = bitcast i32 %4449 to float
  %4451 = fmul fast float %4450, %4446
  %4452 = fmul fast float %4451, %4451
  %4453 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4438)  ; FMax(a,b)
  %4454 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4445)  ; FMax(a,b)
  %4455 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4452)  ; FMax(a,b)
  %4456 = fsub fast float 1.000000e+00, %4341
  %4457 = fadd fast float %4456, %4357
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fsub fast float 1.000000e+00, %4321
  %4460 = fmul fast float %4399, %4459
  %4461 = fmul fast float %4402, %4402
  %4462 = fmul fast float %4461, %4460
  %4463 = fmul fast float %4462, %4404
  %4464 = fmul fast float %4459, 0xBFE99999A0000000
  %4465 = fmul fast float %4464, %4350
  %4466 = fmul fast float %4465, %4361
  %4467 = fadd fast float %4466, 1.000000e+00
  %4468 = fadd fast float %3867, -1.000000e+00
  %4469 = fmul fast float %4467, %4468
  %4470 = fadd fast float %4469, 1.000000e+00
  %4471 = fsub fast float %4453, %3864
  %4472 = fsub fast float %4454, %3865
  %4473 = fsub fast float %4455, %3866
  %4474 = fmul fast float %4463, %4471
  %4475 = fmul fast float %4463, %4472
  %4476 = fmul fast float %4463, %4473
  %4477 = fadd fast float %4474, %3864
  %4478 = fadd fast float %4475, %3865
  %4479 = fadd fast float %4476, %3866
  %4480 = fsub fast float %90, %3843
  %4481 = fsub fast float %92, %3844
  %4482 = fsub fast float %94, %3845
  %4483 = fmul fast float %4463, %4480
  %4484 = fmul fast float %4463, %4481
  %4485 = fmul fast float %4463, %4482
  %4486 = fadd fast float %4483, %3843
  %4487 = fadd fast float %4484, %3844
  %4488 = fadd fast float %4485, %3845
  %4489 = fmul fast float %4463, %4458
  %4490 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4491 = fsub fast float 1.000000e+00, %4490
  %4492 = fmul fast float %4489, %4491
  %4493 = fadd fast float %4492, %4490
  %4494 = fsub fast float 1.000000e+00, %3796
  %4495 = fmul fast float %4463, %4494
  %4496 = fadd fast float %4495, %3796
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4486, float %4487, float %4488, float %4486, float %4487, float %4488)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call float @dx.op.unary.f32(i32 25, float %4497)  ; Rsqrt(value)
  %4499 = fmul fast float %4486, %4498
  %4500 = fmul fast float %4487, %4498
  %4501 = fmul fast float %4488, %4498
  br label %4502

; <label>:4502                                    ; preds = %4334, %4327
  %4503 = phi float [ %4333, %4327 ], [ %4340, %4334 ]
  %4504 = phi float [ %4332, %4327 ], [ %4338, %4334 ]
  %4505 = phi float [ %4331, %4327 ], [ %4336, %4334 ]
  %4506 = phi float [ %4330, %4327 ], [ %4339, %4334 ]
  %4507 = phi float [ %4329, %4327 ], [ %4337, %4334 ]
  %4508 = phi float [ %4328, %4327 ], [ %4335, %4334 ]
  %4509 = phi float [ %3945, %4327 ], [ %4386, %4334 ]
  %4510 = phi float [ %3946, %4327 ], [ %4387, %4334 ]
  %4511 = phi float [ %3947, %4327 ], [ %4388, %4334 ]
  %4512 = phi float [ %3843, %4327 ], [ %4499, %4334 ]
  %4513 = phi float [ %3844, %4327 ], [ %4500, %4334 ]
  %4514 = phi float [ %3845, %4327 ], [ %4501, %4334 ]
  %4515 = phi float [ %3864, %4327 ], [ %4477, %4334 ]
  %4516 = phi float [ %3865, %4327 ], [ %4478, %4334 ]
  %4517 = phi float [ %3866, %4327 ], [ %4479, %4334 ]
  %4518 = phi float [ %3867, %4327 ], [ %4493, %4334 ]
  %4519 = phi float [ %3796, %4327 ], [ %4496, %4334 ]
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 2
  %4522 = extractvalue %dx.types.CBufRet.f32 %4520, 3
  %4523 = fmul fast float %4521, %81
  %4524 = fmul fast float %4522, %82
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4523, float %4524, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = fmul fast float %4529, %4527
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fadd fast float %4531, -1.000000e+00
  %4533 = fmul fast float %4532, %4526
  %4534 = fadd fast float %4533, 1.000000e+00
  %4535 = select i1 %184, float 0.000000e+00, float %4517
  %4536 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float %4505, float %4504, float %4503)  ; Dot3(ax,ay,az,bx,by,bz)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4507, float %4506, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = fmul fast float %4538, 2.000000e+00
  %4540 = fmul fast float %4539, %4512
  %4541 = fmul fast float %4539, %4513
  %4542 = fmul fast float %4539, %4514
  %4543 = fsub fast float %4508, %4540
  %4544 = fsub fast float %4507, %4541
  %4545 = fsub fast float %4506, %4542
  %4546 = call float @dx.op.binary.f32(i32 36, float %4519, float %4534)  ; FMin(a,b)
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = bitcast float %4547 to i32
  %4549 = ashr i32 %4548, 1
  %4550 = add nsw i32 %4549, 532487669
  %4551 = bitcast i32 %4550 to float
  %4552 = fsub fast float 1.000000e+00, %4518
  %4553 = call float @dx.op.binary.f32(i32 35, float %4552, float 0x3F847AE140000000)  ; FMax(a,b)
  %4554 = fmul fast float %4553, %4553
  %4555 = fmul fast float %4554, %4554
  %4556 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4551, float %4555, float %4556, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = fsub fast float 1.000000e+00, %4519
  %4560 = bitcast float %4559 to i32
  %4561 = sub nsw i32 2129859010, %4560
  %4562 = bitcast i32 %4561 to float
  %4563 = call float @dx.op.dot3.f32(i32 55, float %58, float %54, float %50, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = fmul fast float %4563, 0x3FD20DD760000000
  %4565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4566 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = fcmp fast oeq float %4566, 0.000000e+00
  %4568 = fcmp fast oeq float %4565, 0.000000e+00
  %4569 = or i1 %4568, %4567
  br i1 %4569, label %4599, label %4570

; <label>:4570                                    ; preds = %4502
  %4571 = fsub fast float -0.000000e+00, %61
  %4572 = fsub fast float -0.000000e+00, %59
  %4573 = call float @dx.op.unary.f32(i32 24, float %4566)  ; Sqrt(value)
  %4574 = fdiv fast float %4573, %4565
  %4575 = fcmp fast ogt float %4574, 0x3FFB6F8900000000
  %4576 = select i1 %4575, float 0x3FFB6F8900000000, float %4574
  %4577 = fmul fast float %4576, 0x3FE8A23460000000
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = call float @dx.op.binary.f32(i32 35, float %4576, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4580 = fmul fast float %4578, %4565
  %4581 = fmul fast float %4579, 0x3FF279A740000000
  %4582 = fadd fast float %4581, -1.000000e+00
  %4583 = call float @dx.op.dot3.f32(i32 55, float %4571, float %4572, float %60, float %4571, float %4572, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call float @dx.op.unary.f32(i32 25, float %4583)  ; Rsqrt(value)
  %4585 = fmul fast float %4584, %4571
  %4586 = fmul fast float %4584, %4572
  %4587 = fmul fast float %4584, %60
  %4588 = fmul fast float %4582, %4582
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = fmul fast float %4579, 0x40005F8BE0000000
  %4591 = fsub fast float 0x400C5BF8A0000000, %4590
  %4592 = fdiv fast float %4580, %4591
  %4593 = fmul fast float %4592, 0x3FEE31C3C0000000
  %4594 = fmul fast float %4593, %4589
  %4595 = fmul fast float %4579, 0x3FDACB7480000000
  %4596 = fadd fast float %4595, 0xBFD7347680000000
  %4597 = fmul fast float %4596, %4592
  %4598 = fmul fast float %4597, %4589
  br label %4599

; <label>:4599                                    ; preds = %4570, %4502
  %4600 = phi float [ %4585, %4570 ], [ 0.000000e+00, %4502 ]
  %4601 = phi float [ %4586, %4570 ], [ 0.000000e+00, %4502 ]
  %4602 = phi float [ %4587, %4570 ], [ 0.000000e+00, %4502 ]
  %4603 = phi float [ %4594, %4570 ], [ 0.000000e+00, %4502 ]
  %4604 = phi float [ %4598, %4570 ], [ 0.000000e+00, %4502 ]
  %4605 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = fmul fast float %4605, 0x3FDF454380000000
  %4607 = fmul fast float %4605, %4605
  %4608 = fmul fast float %4607, 0x3FEE471020000000
  %4609 = fadd fast float %4608, 0xBFD42F6020000000
  %4610 = fmul fast float %4565, 0x3FD20DD760000000
  %4611 = fmul fast float %4609, %4604
  %4612 = fadd fast float %4611, %4610
  %4613 = fmul fast float %4606, %4603
  %4614 = fadd fast float %4612, %4613
  %4615 = fsub fast float %4612, %4613
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float %4543, float %4544, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = fmul fast float %4616, 0x3FDF454380000000
  %4618 = fmul fast float %4616, %4616
  %4619 = fmul fast float %4618, 0x3FEE471020000000
  %4620 = fadd fast float %4619, 0xBFD42F6020000000
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4603, float %4604, float 0x3FD20DD760000000, float %4617, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4623 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fcmp fast oeq float %4623, 0.000000e+00
  %4625 = fcmp fast oeq float %4622, 0.000000e+00
  %4626 = or i1 %4625, %4624
  br i1 %4626, label %4656, label %4627

; <label>:4627                                    ; preds = %4599
  %4628 = fsub fast float -0.000000e+00, %57
  %4629 = fsub fast float -0.000000e+00, %55
  %4630 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %4631 = fdiv fast float %4630, %4622
  %4632 = fcmp fast ogt float %4631, 0x3FFB6F8900000000
  %4633 = select i1 %4632, float 0x3FFB6F8900000000, float %4631
  %4634 = fmul fast float %4633, 0x3FE8A23460000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4633, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4637 = fmul fast float %4635, %4622
  %4638 = fmul fast float %4636, 0x3FF279A740000000
  %4639 = fadd fast float %4638, -1.000000e+00
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %56, float %4628, float %4629, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 25, float %4640)  ; Rsqrt(value)
  %4642 = fmul fast float %4641, %4628
  %4643 = fmul fast float %4641, %4629
  %4644 = fmul fast float %4641, %56
  %4645 = fmul fast float %4639, %4639
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = fmul fast float %4636, 0x40005F8BE0000000
  %4648 = fsub fast float 0x400C5BF8A0000000, %4647
  %4649 = fdiv fast float %4637, %4648
  %4650 = fmul fast float %4649, 0x3FEE31C3C0000000
  %4651 = fmul fast float %4650, %4646
  %4652 = fmul fast float %4636, 0x3FDACB7480000000
  %4653 = fadd fast float %4652, 0xBFD7347680000000
  %4654 = fmul fast float %4653, %4649
  %4655 = fmul fast float %4654, %4646
  br label %4656

; <label>:4656                                    ; preds = %4627, %4599
  %4657 = phi float [ %4642, %4627 ], [ 0.000000e+00, %4599 ]
  %4658 = phi float [ %4643, %4627 ], [ 0.000000e+00, %4599 ]
  %4659 = phi float [ %4644, %4627 ], [ 0.000000e+00, %4599 ]
  %4660 = phi float [ %4651, %4627 ], [ 0.000000e+00, %4599 ]
  %4661 = phi float [ %4655, %4627 ], [ 0.000000e+00, %4599 ]
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = fmul fast float %4662, 0x3FDF454380000000
  %4664 = fmul fast float %4662, %4662
  %4665 = fmul fast float %4664, 0x3FEE471020000000
  %4666 = fadd fast float %4665, 0xBFD42F6020000000
  %4667 = fmul fast float %4622, 0x3FD20DD760000000
  %4668 = fmul fast float %4666, %4661
  %4669 = fadd fast float %4668, %4667
  %4670 = fmul fast float %4663, %4660
  %4671 = fadd fast float %4669, %4670
  %4672 = fsub fast float %4669, %4670
  %4673 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4543, float %4544, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = fmul fast float %4673, 0x3FDF454380000000
  %4675 = fmul fast float %4673, %4673
  %4676 = fmul fast float %4675, 0x3FEE471020000000
  %4677 = fadd fast float %4676, 0xBFD42F6020000000
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4660, float %4661, float 0x3FD20DD760000000, float %4674, float %4677)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4680 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = fcmp fast oeq float %4680, 0.000000e+00
  %4682 = fcmp fast oeq float %4679, 0.000000e+00
  %4683 = or i1 %4682, %4681
  br i1 %4683, label %4713, label %4684

; <label>:4684                                    ; preds = %4656
  %4685 = fsub fast float -0.000000e+00, %53
  %4686 = fsub fast float -0.000000e+00, %51
  %4687 = call float @dx.op.unary.f32(i32 24, float %4680)  ; Sqrt(value)
  %4688 = fdiv fast float %4687, %4679
  %4689 = fcmp fast ogt float %4688, 0x3FFB6F8900000000
  %4690 = select i1 %4689, float 0x3FFB6F8900000000, float %4688
  %4691 = fmul fast float %4690, 0x3FE8A23460000000
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = call float @dx.op.binary.f32(i32 35, float %4690, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4694 = fmul fast float %4692, %4679
  %4695 = fmul fast float %4693, 0x3FF279A740000000
  %4696 = fadd fast float %4695, -1.000000e+00
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4685, float %4686, float %52, float %4685, float %4686, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.unary.f32(i32 25, float %4697)  ; Rsqrt(value)
  %4699 = fmul fast float %4698, %4685
  %4700 = fmul fast float %4698, %4686
  %4701 = fmul fast float %4698, %52
  %4702 = fmul fast float %4696, %4696
  %4703 = fsub fast float 1.000000e+00, %4702
  %4704 = fmul fast float %4693, 0x40005F8BE0000000
  %4705 = fsub fast float 0x400C5BF8A0000000, %4704
  %4706 = fdiv fast float %4694, %4705
  %4707 = fmul fast float %4706, 0x3FEE31C3C0000000
  %4708 = fmul fast float %4707, %4703
  %4709 = fmul fast float %4693, 0x3FDACB7480000000
  %4710 = fadd fast float %4709, 0xBFD7347680000000
  %4711 = fmul fast float %4710, %4706
  %4712 = fmul fast float %4711, %4703
  br label %4713

; <label>:4713                                    ; preds = %4684, %4656
  %4714 = phi float [ %4699, %4684 ], [ 0.000000e+00, %4656 ]
  %4715 = phi float [ %4700, %4684 ], [ 0.000000e+00, %4656 ]
  %4716 = phi float [ %4701, %4684 ], [ 0.000000e+00, %4656 ]
  %4717 = phi float [ %4708, %4684 ], [ 0.000000e+00, %4656 ]
  %4718 = phi float [ %4712, %4684 ], [ 0.000000e+00, %4656 ]
  %4719 = call float @dx.op.dot3.f32(i32 55, float %4714, float %4715, float %4716, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %4720 = fmul fast float %4719, 0x3FDF454380000000
  %4721 = fmul fast float %4719, %4719
  %4722 = fmul fast float %4721, 0x3FEE471020000000
  %4723 = fadd fast float %4722, 0xBFD42F6020000000
  %4724 = fmul fast float %4679, 0x3FD20DD760000000
  %4725 = fmul fast float %4723, %4718
  %4726 = fadd fast float %4725, %4724
  %4727 = fmul fast float %4720, %4717
  %4728 = fadd fast float %4726, %4727
  %4729 = fsub fast float %4726, %4727
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4714, float %4715, float %4716, float %4543, float %4544, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = fmul fast float %4730, 0x3FDF454380000000
  %4732 = fmul fast float %4730, %4730
  %4733 = fmul fast float %4732, 0x3FEE471020000000
  %4734 = fadd fast float %4733, 0xBFD42F6020000000
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4717, float %4718, float 0x3FD20DD760000000, float %4731, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.binary.f32(i32 35, float %4614, float 0.000000e+00)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %4671, float 0.000000e+00)  ; FMax(a,b)
  %4738 = call float @dx.op.binary.f32(i32 35, float %4728, float 0.000000e+00)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4615, float 0.000000e+00)  ; FMax(a,b)
  %4740 = call float @dx.op.binary.f32(i32 35, float %4672, float 0.000000e+00)  ; FMax(a,b)
  %4741 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4742 = call float @dx.op.binary.f32(i32 35, float %4621, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 35, float %4678, float 0.000000e+00)  ; FMax(a,b)
  %4744 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = call float @dx.op.binary.f32(i32 36, float %4509, float %4746)  ; FMin(a,b)
  %4748 = fmul fast float %4747, %4547
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = bitcast float %4749 to i32
  %4751 = sub nsw i32 2129859010, %4750
  %4752 = bitcast i32 %4751 to float
  %4753 = call float @dx.op.binary.f32(i32 36, float %4510, float %4746)  ; FMin(a,b)
  %4754 = fmul fast float %4753, %4547
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = bitcast float %4755 to i32
  %4757 = sub nsw i32 2129859010, %4756
  %4758 = bitcast i32 %4757 to float
  %4759 = call float @dx.op.binary.f32(i32 36, float %4511, float %4746)  ; FMin(a,b)
  %4760 = fmul fast float %4759, %4547
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = bitcast float %4761 to i32
  %4763 = sub nsw i32 2129859010, %4762
  %4764 = bitcast i32 %4763 to float
  %4765 = fmul fast float %4736, %4546
  %4766 = fmul fast float %4765, %4752
  %4767 = fmul fast float %4737, %4546
  %4768 = fmul fast float %4767, %4758
  %4769 = fmul fast float %4738, %4546
  %4770 = fmul fast float %4769, %4764
  %4771 = call float @dx.op.binary.f32(i32 36, float %4515, float %4746)  ; FMin(a,b)
  %4772 = fmul fast float %4771, %4547
  %4773 = fsub fast float 1.000000e+00, %4772
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = call float @dx.op.binary.f32(i32 36, float %4516, float %4746)  ; FMin(a,b)
  %4778 = fmul fast float %4777, %4547
  %4779 = fsub fast float 1.000000e+00, %4778
  %4780 = bitcast float %4779 to i32
  %4781 = sub nsw i32 2129859010, %4780
  %4782 = bitcast i32 %4781 to float
  %4783 = call float @dx.op.binary.f32(i32 36, float %4535, float %4746)  ; FMin(a,b)
  %4784 = fmul fast float %4783, %4547
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = bitcast float %4785 to i32
  %4787 = sub nsw i32 2129859010, %4786
  %4788 = bitcast i32 %4787 to float
  %4789 = fmul fast float %4742, %4546
  %4790 = fmul fast float %4789, %4776
  %4791 = fmul fast float %4743, %4546
  %4792 = fmul fast float %4791, %4782
  %4793 = fmul fast float %4744, %4546
  %4794 = fmul fast float %4793, %4788
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4768, float %4770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = select i1 %184, float 0.000000e+00, float %4766
  %4797 = select i1 %184, float %4795, float %4768
  %4798 = select i1 %184, float 0.000000e+00, float %4770
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = select i1 %184, float 0.000000e+00, float %4739
  %4801 = select i1 %184, float %4799, float %4740
  %4802 = select i1 %184, float 0.000000e+00, float %4741
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4792, float %4794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = select i1 %184, float 0.000000e+00, float %4790
  %4805 = select i1 %184, float %4803, float %4792
  %4806 = select i1 %184, float 0.000000e+00, float %4794
  %4807 = fmul fast float %4537, 9.843750e-01
  %4808 = fmul fast float %4518, 9.843750e-01
  %4809 = fadd fast float %4807, 7.812500e-03
  %4810 = fadd fast float %4808, 7.812500e-03
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4809, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 2
  %4813 = extractvalue %dx.types.ResRet.f32 %4811, 3
  %4814 = fmul fast float %4812, %4515
  %4815 = fmul fast float %4812, %4516
  %4816 = fmul fast float %4812, %4535
  %4817 = fadd fast float %4814, %4813
  %4818 = fadd fast float %4815, %4813
  %4819 = fadd fast float %4816, %4813
  %4820 = call float @dx.op.binary.f32(i32 35, float %4818, float %4819)  ; FMax(a,b)
  %4821 = call float @dx.op.binary.f32(i32 35, float %4817, float %4820)  ; FMax(a,b)
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = fmul fast float %4821, %4518
  %4824 = fadd fast float %4823, %4518
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4829 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4830 = fmul fast float %4824, %4826
  %4831 = fadd fast float %4830, %4827
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = fmul fast float %4828, %4824
  %4834 = fadd fast float %4833, %4829
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = fsub fast float 1.000000e+00, %4558
  %4837 = fadd fast float %4836, %4835
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fcmp fast olt float %4838, 1.000000e+00
  br i1 %4839, label %4840, label %5695

; <label>:4840                                    ; preds = %4713
  %4841 = fcmp fast olt float %4832, 1.000000e+00
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = fcmp fast ogt float %4843, 0.000000e+00
  %4845 = or i1 %4841, %4844
  %4846 = or i1 %4841, %4844
  %4847 = xor i1 %4846, true
  %4848 = zext i1 %4847 to i32
  br i1 %4845, label %4849, label %5092

; <label>:4849                                    ; preds = %4840
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4854 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.CBufRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.CBufRet.f32 %4855, 2
  %4859 = extractvalue %dx.types.CBufRet.f32 %4855, 3
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.CBufRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4864 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4869 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4874 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4878 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4879 = extractvalue %dx.types.CBufRet.f32 %4875, 3
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4543, float %4544, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = call float @dx.op.unary.f32(i32 6, float %4881)  ; FAbs(value)
  %4883 = fmul fast float %4882, 8.000000e+00
  %4884 = fadd fast float %4883, -6.000000e+00
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4880, 8.000000e+00
  %4887 = fmul fast float %4886, %4843
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fcmp fast ogt float %4888, 0.000000e+00
  br i1 %4889, label %4890, label %5067, !dx.controlflow.hints !81

; <label>:4890                                    ; preds = %4849
  %4891 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4892 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4893 = fsub fast float %4891, %4892
  %4894 = fmul fast float %4893, %4518
  %4895 = fadd fast float %4894, %4892
  %4896 = fmul fast float %197, 2.000000e+00
  %4897 = fmul fast float %198, 2.000000e+00
  %4898 = fadd fast float %4896, -1.000000e+00
  %4899 = fadd fast float %4897, -1.000000e+00
  %4900 = fmul fast float %4895, %4898
  %4901 = fmul fast float %4895, %4899
  %4902 = fadd fast float %4900, %81
  %4903 = fadd fast float %4901, %82
  %4904 = fmul fast float %4902, %4521
  %4905 = fmul fast float %4903, %4522
  %4906 = fadd fast float %4518, 0xBFE3333340000000
  %4907 = fmul fast float %4906, 0x4004000020000000
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4909, 3.000000e+00
  %4911 = fadd fast float %4910, %197
  %4912 = call float @dx.op.unary.f32(i32 27, float %4911)  ; Round_ni(value)
  %4913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4904, float %4905, float %4912, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = fcmp fast une float %4914, 0xFFF0000000000000
  %4916 = fcmp fast une float %4914, 0x7FF0000000000000
  %4917 = and i1 %4915, %4916
  %4918 = fcmp fast olt float %4914, 0.000000e+00
  %4919 = call float @dx.op.unary.f32(i32 6, float %4914)  ; FAbs(value)
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = select i1 %4917, float 1.000000e+00, float 0.000000e+00
  %4922 = fmul fast float %4921, %4888
  %4923 = fcmp fast ogt float %4922, 0.000000e+00
  br i1 %4923, label %4924, label %5067, !dx.controlflow.hints !82

; <label>:4924                                    ; preds = %4890
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.CBufRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.CBufRet.f32 %4925, 2
  %4929 = select i1 %4918, float 0.000000e+00, float %4926
  %4930 = select i1 %4918, float 0.000000e+00, float %4927
  %4931 = select i1 %4918, float 0.000000e+00, float %4928
  %4932 = select i1 %4918, float %4851, float %4866
  %4933 = select i1 %4918, float %4856, float %4871
  %4934 = select i1 %4918, float %4861, float %4876
  %4935 = select i1 %4918, float %4852, float %4867
  %4936 = select i1 %4918, float %4857, float %4872
  %4937 = select i1 %4918, float %4862, float %4877
  %4938 = select i1 %4918, float %4853, float %4868
  %4939 = select i1 %4918, float %4858, float %4873
  %4940 = select i1 %4918, float %4863, float %4878
  %4941 = select i1 %4918, float %4854, float %4869
  %4942 = select i1 %4918, float %4859, float %4874
  %4943 = select i1 %4918, float %4864, float %4879
  %4944 = fadd fast float %4929, %140
  %4945 = fadd fast float %4930, %141
  %4946 = fadd fast float %4931, %142
  %4947 = fmul fast float %4944, %4932
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4935, float %4947)  ; FMad(a,b,c)
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4946, float %4938, float %4948)  ; FMad(a,b,c)
  %4950 = fadd fast float %4949, %4941
  %4951 = fmul fast float %4944, %4933
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4936, float %4951)  ; FMad(a,b,c)
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4946, float %4939, float %4952)  ; FMad(a,b,c)
  %4954 = fadd fast float %4953, %4942
  %4955 = fmul fast float %4944, %4934
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4937, float %4955)  ; FMad(a,b,c)
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4946, float %4940, float %4956)  ; FMad(a,b,c)
  %4958 = fadd fast float %4957, %4943
  %4959 = fdiv fast float 1.000000e+00, %4958
  %4960 = fmul fast float %4959, %4950
  %4961 = fmul fast float %4959, %4954
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = fmul fast float %4960, %4963
  %4966 = fmul fast float %4961, %4964
  %4967 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4968 = extractvalue %dx.types.CBufRet.f32 %4962, 3
  %4969 = fadd fast float %4965, %4967
  %4970 = fadd fast float %4966, %4968
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 3
  %4973 = fmul fast float %4972, %4543
  %4974 = fmul fast float %4972, %4544
  %4975 = fmul fast float %4972, %4545
  %4976 = fadd fast float %4973, %4944
  %4977 = fadd fast float %4974, %4945
  %4978 = fadd fast float %4975, %4946
  %4979 = fmul fast float %4976, %4932
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4935, float %4979)  ; FMad(a,b,c)
  %4981 = call float @dx.op.tertiary.f32(i32 46, float %4978, float %4938, float %4980)  ; FMad(a,b,c)
  %4982 = fadd fast float %4981, %4941
  %4983 = fmul fast float %4976, %4933
  %4984 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4936, float %4983)  ; FMad(a,b,c)
  %4985 = call float @dx.op.tertiary.f32(i32 46, float %4978, float %4939, float %4984)  ; FMad(a,b,c)
  %4986 = fadd fast float %4985, %4942
  %4987 = fmul fast float %4976, %4934
  %4988 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4937, float %4987)  ; FMad(a,b,c)
  %4989 = call float @dx.op.tertiary.f32(i32 46, float %4978, float %4940, float %4988)  ; FMad(a,b,c)
  %4990 = fadd fast float %4989, %4943
  %4991 = fdiv fast float 1.000000e+00, %4990
  %4992 = fmul fast float %4991, %4982
  %4993 = fmul fast float %4991, %4986
  %4994 = fmul fast float %4969, 2.000000e+00
  %4995 = fadd fast float %4994, -1.000000e+00
  %4996 = call float @dx.op.unary.f32(i32 6, float %4995)  ; FAbs(value)
  %4997 = fmul fast float %4996, 5.000000e+00
  %4998 = fadd fast float %4997, -4.000000e+00
  %4999 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5000 = fmul fast float %4999, %4885
  %5001 = fsub fast float %4960, %4992
  %5002 = fmul fast float %4963, %5001
  %5003 = fmul fast float %5000, %5002
  %5004 = fsub fast float %4992, %4960
  %5005 = fmul fast float %4963, %5004
  %5006 = fadd fast float %5005, %5003
  %5007 = fsub fast float %4993, %4961
  %5008 = fmul fast float %4964, %5007
  %5009 = fmul fast float %5006, %4920
  %5010 = fmul fast float %5008, %4920
  %5011 = fadd fast float %5009, %4969
  %5012 = fadd fast float %5010, %4970
  %5013 = fsub fast float %4991, %4959
  %5014 = fmul fast float %5013, %4920
  %5015 = fadd fast float %5014, %4959
  %5016 = fdiv fast float 1.000000e+00, %5015
  %5017 = fadd fast float %4518, -1.000000e+00
  %5018 = fsub fast float %5016, %4958
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5021 = fmul fast float %5020, %5016
  %5022 = fdiv fast float 1.600000e+02, %5021
  %5023 = fmul fast float %5017, %5017
  %5024 = fmul fast float %5023, 0xBFB5B17960000000
  %5025 = fmul fast float %5024, %5018
  %5026 = fmul fast float %5025, %5022
  %5027 = call float @dx.op.unary.f32(i32 21, float %5026)  ; Exp(value)
  %5028 = fmul fast float %5027, 0x3FF04B2960000000
  %5029 = fsub fast float 0x3FF04B2960000000, %5028
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fmul fast float %5030, 4.000000e+00
  %5032 = fadd fast float %197, -5.000000e-01
  %5033 = fadd fast float %198, -5.000000e-01
  %5034 = fmul fast float %5030, 0x3FBEB851E0000000
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fmul fast float %5035, %5032
  %5037 = fmul fast float %5035, %5033
  %5038 = fadd fast float %5011, %5036
  %5039 = fadd fast float %5012, %5037
  %5040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5038, float %5039, float undef, float undef, i32 0, i32 0, i32 undef, float %5031)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.ResRet.f32 %5040, 2
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5046 = fmul fast float %5045, %5041
  %5047 = fmul fast float %5045, %5042
  %5048 = fmul fast float %5045, %5043
  %5049 = select i1 %184, float 0.000000e+00, float %5047
  %5050 = select i1 %184, float 0.000000e+00, float %5048
  %5051 = fmul fast float %5038, 2.000000e+00
  %5052 = fmul fast float %5039, 2.000000e+00
  %5053 = fadd fast float %5051, -1.000000e+00
  %5054 = fadd fast float %5052, -1.000000e+00
  %5055 = fmul fast float %5053, %5053
  %5056 = fsub fast float 1.000000e+00, %5055
  %5057 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = fmul fast float %5058, %4885
  %5060 = fadd fast float %5059, %5057
  %5061 = fmul fast float %5054, %5054
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fmul fast float %5060, %5063
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = fmul fast float %5065, %4922
  br label %5067

; <label>:5067                                    ; preds = %4924, %4890, %4849
  %5068 = phi float [ %5046, %4924 ], [ 0.000000e+00, %4890 ], [ 0.000000e+00, %4849 ]
  %5069 = phi float [ %5049, %4924 ], [ 0.000000e+00, %4890 ], [ 0.000000e+00, %4849 ]
  %5070 = phi float [ %5050, %4924 ], [ 0.000000e+00, %4890 ], [ 0.000000e+00, %4849 ]
  %5071 = phi float [ %5066, %4924 ], [ 0.000000e+00, %4890 ], [ 0.000000e+00, %4849 ]
  %5072 = fcmp fast olt float %5071, 1.000000e+00
  %5073 = or i1 %5072, %4847
  %5074 = zext i1 %5073 to i32
  %5075 = fmul fast float %5071, %4832
  %5076 = fsub fast float %5071, %5075
  %5077 = fsub fast float 1.000000e+00, %4838
  %5078 = fmul fast float %5076, %5077
  %5079 = fadd fast float %5078, %4838
  %5080 = fsub fast float %5079, %5076
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = fmul fast float %5081, %4804
  %5083 = fmul fast float %5081, %4805
  %5084 = fmul fast float %5081, %4806
  %5085 = fsub fast float -0.000000e+00, %5079
  %5086 = fmul fast float %5076, %5068
  %5087 = fmul fast float %5076, %5069
  %5088 = fmul fast float %5076, %5070
  %5089 = fadd fast float %5086, %5082
  %5090 = fadd fast float %5087, %5083
  %5091 = fadd fast float %5088, %5084
  br label %5092

; <label>:5092                                    ; preds = %5067, %4840
  %5093 = phi float [ %4838, %4840 ], [ %5085, %5067 ]
  %5094 = phi float [ %4804, %4840 ], [ %5089, %5067 ]
  %5095 = phi float [ %4805, %4840 ], [ %5090, %5067 ]
  %5096 = phi float [ %4806, %4840 ], [ %5091, %5067 ]
  %5097 = phi i32 [ %4848, %4840 ], [ %5074, %5067 ]
  %5098 = icmp eq i32 %5097, 0
  br i1 %5098, label %5695, label %5099

; <label>:5099                                    ; preds = %5092
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5102 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5103 = fmul fast float %5101, %81
  %5104 = fmul fast float %5102, %82
  %5105 = fptoui float %5103 to i32
  %5106 = fptoui float %5104 to i32
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5110 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5111 = fadd fast float %76, -4.000000e+00
  %5112 = call float @dx.op.binary.f32(i32 35, float %5111, float 0.000000e+00)  ; FMax(a,b)
  %5113 = fadd fast float %5112, %5108
  %5114 = fmul fast float %5113, %5109
  %5115 = call float @dx.op.unary.f32(i32 23, float %5114)  ; Log(value)
  %5116 = fmul fast float %5115, %5110
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5119 = fmul fast float %5116, %5118
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 1
  %5123 = add i32 %5122, -1
  %5124 = uitofp i32 %5122 to float
  %5125 = fmul fast float %5124, %5120
  %5126 = fptoui float %5125 to i32
  %5127 = call i32 @dx.op.binary.i32(i32 40, i32 %5126, i32 %5123)  ; UMin(a,b)
  %5128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.i32 %5128, 2
  %5130 = extractvalue %dx.types.CBufRet.i32 %5128, 3
  %5131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5106, i32 %5129, i32 %5105)  ; UMad(a,b,c)
  %5132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5127, i32 %5130, i32 %5131)  ; UMad(a,b,c)
  %5133 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5134 = fptoui float %5133 to i32
  %5135 = lshr i32 %5134, 5
  %5136 = call i32 @dx.op.binary.i32(i32 40, i32 %5135, i32 8191)  ; UMin(a,b)
  %5137 = fcmp fast ogt float %4317, 0.000000e+00
  %5138 = fcmp fast ogt float %4545, 0.000000e+00
  %5139 = and i1 %5138, %5137
  br i1 %5139, label %5140, label %5169

; <label>:5140                                    ; preds = %5099
  %5141 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4544, float %4545, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5141, float -1.000000e+00)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 36, float %5142, float 1.000000e+00)  ; FMin(a,b)
  %5144 = fmul fast float %5143, %5143
  %5145 = fsub fast float 1.000000e+00, %5144
  %5146 = fmul fast float %5145, 0x3FFC6E2300000000
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = fcmp fast ogt float %5147, 0.000000e+00
  %5149 = call float @dx.op.unary.f32(i32 24, float %5147)  ; Sqrt(value)
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = call float @dx.op.unary.f32(i32 23, float %5150)  ; Log(value)
  %5152 = fmul fast float %5151, 5.000000e+00
  %5153 = call float @dx.op.unary.f32(i32 21, float %5152)  ; Exp(value)
  %5154 = fmul fast float %5153, 0x3FEF591A60000000
  %5155 = fadd fast float %5154, 0x3F94DCB540000000
  %5156 = select i1 %5148, float %5155, float 1.000000e+00
  %5157 = fcmp fast oge float %5156, 1.000000e+00
  %5158 = fmul fast float %5141, 2.000000e+00
  %5159 = fadd fast float %5158, %4545
  %5160 = select i1 %5157, float %5159, float %4545
  %5161 = fsub fast float %5160, %4545
  %5162 = fmul fast float %5161, %4317
  %5163 = fadd fast float %5162, %4545
  %5164 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4544, float %5163, float %4543, float %4544, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 25, float %5164)  ; Rsqrt(value)
  %5166 = fmul fast float %5165, %4543
  %5167 = fmul fast float %5165, %4544
  %5168 = fmul fast float %5163, %5165
  br label %5169

; <label>:5169                                    ; preds = %5140, %5099
  %5170 = phi float [ %5166, %5140 ], [ %4543, %5099 ]
  %5171 = phi float [ %5167, %5140 ], [ %4544, %5099 ]
  %5172 = phi float [ %5168, %5140 ], [ %4545, %5099 ]
  %5173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.i32 %5173, 2
  %5175 = add nsw i32 %5174, -1
  %5176 = call i32 @dx.op.binary.i32(i32 37, i32 %5175, i32 0)  ; IMax(a,b)
  %5177 = shl i32 %5136, 2
  %5178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5177, i32 undef)  ; BufferLoad(srv,index,wot)
  %5179 = extractvalue %dx.types.ResRet.i32 %5178, 0
  %5180 = lshr i32 %5179, 16
  %5181 = and i32 %5179, 65535
  %5182 = lshr i32 %5179, 21
  %5183 = lshr i32 %5181, 5
  %5184 = call i32 @dx.op.binary.i32(i32 40, i32 %5183, i32 %5176)  ; UMin(a,b)
  %5185 = icmp ugt i32 %5182, %5184
  br i1 %5185, label %5567, label %5186

; <label>:5186                                    ; preds = %5169
  br label %5187

; <label>:5187                                    ; preds = %5556, %5186
  %5188 = phi float [ %5557, %5556 ], [ 0.000000e+00, %5186 ]
  %5189 = phi float [ %5558, %5556 ], [ 0.000000e+00, %5186 ]
  %5190 = phi float [ %5559, %5556 ], [ 0.000000e+00, %5186 ]
  %5191 = phi float [ %5560, %5556 ], [ 1.000000e+00, %5186 ]
  %5192 = phi i32 [ %5564, %5556 ], [ %5182, %5186 ]
  %5193 = phi float [ %5561, %5556 ], [ 0.000000e+00, %5186 ]
  %5194 = phi float [ %5562, %5556 ], [ 0.000000e+00, %5186 ]
  %5195 = phi float [ %5563, %5556 ], [ 0.000000e+00, %5186 ]
  %5196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.i32 %5196, 2
  %5198 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5132, i32 %5197, i32 %5192)  ; UMad(a,b,c)
  %5199 = shl i32 %5198, 2
  %5200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5199, i32 undef)  ; BufferLoad(srv,index,wot)
  %5201 = extractvalue %dx.types.ResRet.i32 %5200, 0
  %5202 = shl i32 %5192, 5
  %5203 = sub nsw i32 %5180, %5202
  %5204 = call i32 @dx.op.binary.i32(i32 37, i32 %5203, i32 0)  ; IMax(a,b)
  %5205 = call i32 @dx.op.binary.i32(i32 38, i32 %5204, i32 31)  ; IMin(a,b)
  %5206 = sub nsw i32 1, %5180
  %5207 = add nsw i32 %5206, %5181
  %5208 = call i32 @dx.op.binary.i32(i32 37, i32 %5207, i32 0)  ; IMax(a,b)
  %5209 = call i32 @dx.op.binary.i32(i32 38, i32 %5208, i32 32)  ; IMin(a,b)
  %5210 = and i32 %5209, 31
  %5211 = shl i32 -1, %5210
  %5212 = xor i32 %5211, -1
  %5213 = and i32 %5205, 31
  %5214 = shl i32 %5212, %5213
  %5215 = icmp eq i32 %5209, 32
  %5216 = select i1 %5215, i32 -1, i32 %5214
  %5217 = and i32 %5216, %5201
  %5218 = icmp eq i32 %5217, 0
  br i1 %5218, label %5556, label %5219

; <label>:5219                                    ; preds = %5187
  br label %5220

; <label>:5220                                    ; preds = %5330, %5219
  %5221 = phi float [ %5331, %5330 ], [ %5188, %5219 ]
  %5222 = phi float [ %5332, %5330 ], [ %5189, %5219 ]
  %5223 = phi float [ %5333, %5330 ], [ %5190, %5219 ]
  %5224 = phi float [ %5334, %5330 ], [ %5191, %5219 ]
  %5225 = phi i32 [ %5233, %5330 ], [ %5217, %5219 ]
  %5226 = phi float [ %5335, %5330 ], [ %5193, %5219 ]
  %5227 = phi float [ %5336, %5330 ], [ %5194, %5219 ]
  %5228 = phi float [ %5337, %5330 ], [ %5195, %5219 ]
  %5229 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5225)  ; FirstbitLo(value)
  %5230 = add i32 %5229, %5202
  %5231 = and i32 %5229, 31
  %5232 = shl i32 1, %5231
  %5233 = xor i32 %5232, %5225
  %5234 = mul i32 %5230, 72
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = add i32 %5234, 12
  %5240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.i32 %5240, 0
  %5242 = add i32 %5234, 16
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.ResRet.f32 %5243, 2
  %5247 = add i32 %5234, 28
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = add i32 %5234, 32
  %5251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.ResRet.f32 %5251, 3
  %5256 = add i32 %5234, 48
  %5257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = add i32 %5234, 56
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = add i32 %5234, 64
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = mul i32 %5230, 60
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = add i32 %5268, 12
  %5274 = add i32 %5268, 48
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = and i32 %5241, 32767
  %5280 = bitcast float %5236 to i32
  %5281 = icmp eq i32 %5280, -1
  %5282 = bitcast float %5237 to i32
  %5283 = and i32 %5241, 32768
  %5284 = icmp ne i32 %5283, 0
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.CBufRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5289 = fsub fast float %5270, %5286
  %5290 = fsub fast float %5271, %5287
  %5291 = fsub fast float %5272, %5288
  %5292 = fsub fast float %140, %5289
  %5293 = fsub fast float %141, %5290
  %5294 = fsub fast float %142, %5291
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5296, float %5297, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = add i32 %5268, 24
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = add i32 %5268, 36
  %5307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.ResRet.f32 %5307, 2
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5308, float %5309, float %5310)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = call float @dx.op.unary.f32(i32 6, float %5299)  ; FAbs(value)
  %5313 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5314 = call float @dx.op.unary.f32(i32 6, float %5311)  ; FAbs(value)
  %5315 = fsub fast float %5276, %5312
  %5316 = fsub fast float %5277, %5313
  %5317 = fsub fast float %5278, %5314
  %5318 = fmul fast float %5315, %5244
  %5319 = fmul fast float %5316, %5245
  %5320 = fmul fast float %5317, %5246
  %5321 = call float @dx.op.binary.f32(i32 36, float %5319, float %5320)  ; FMin(a,b)
  %5322 = call float @dx.op.binary.f32(i32 36, float %5318, float %5321)  ; FMin(a,b)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = call float @dx.op.binary.f32(i32 36, float %5224, float %5323)  ; FMin(a,b)
  %5325 = uitofp i1 %5284 to float
  %5326 = fadd fast float %4317, 1.000000e+00
  %5327 = fsub fast float %5326, %5325
  %5328 = fmul fast float %5324, %5327
  %5329 = fcmp fast ogt float %5328, 0.000000e+00
  br i1 %5329, label %5339, label %5330

; <label>:5330                                    ; preds = %5481, %5220
  %5331 = phi float [ %5545, %5481 ], [ %5221, %5220 ]
  %5332 = phi float [ %5546, %5481 ], [ %5222, %5220 ]
  %5333 = phi float [ %5547, %5481 ], [ %5223, %5220 ]
  %5334 = phi float [ %5554, %5481 ], [ %5224, %5220 ]
  %5335 = phi float [ %5551, %5481 ], [ %5226, %5220 ]
  %5336 = phi float [ %5552, %5481 ], [ %5227, %5220 ]
  %5337 = phi float [ %5553, %5481 ], [ %5228, %5220 ]
  %5338 = icmp eq i32 %5225, %5232
  br i1 %5338, label %5555, label %5220

; <label>:5339                                    ; preds = %5220
  br i1 %5281, label %5397, label %5340

; <label>:5340                                    ; preds = %5339
  %5341 = fsub fast float -0.000000e+00, %5296
  %5342 = fsub fast float -0.000000e+00, %5297
  %5343 = fsub fast float -0.000000e+00, %5298
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = fsub fast float -0.000000e+00, %5344
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = fadd fast float %5346, %5259
  %5348 = fadd fast float %5258, %5346
  %5349 = fsub fast float -0.000000e+00, %5348
  %5350 = fcmp ogt float %5344, -0.000000e+00
  %5351 = select i1 %5350, float %5349, float %5347
  %5352 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5353 = fdiv fast float 1.000000e+00, %5352
  %5354 = fmul fast float %5351, %5353
  %5355 = call float @dx.op.binary.f32(i32 35, float %5354, float 0.000000e+00)  ; FMax(a,b)
  %5356 = fsub fast float -0.000000e+00, %5302
  %5357 = fsub fast float -0.000000e+00, %5303
  %5358 = fsub fast float -0.000000e+00, %5304
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5356, float %5357, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = fsub fast float -0.000000e+00, %5359
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5356, float %5357, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fadd fast float %5361, %5263
  %5363 = fadd fast float %5262, %5361
  %5364 = fsub fast float -0.000000e+00, %5363
  %5365 = fcmp ogt float %5359, -0.000000e+00
  %5366 = select i1 %5365, float %5364, float %5362
  %5367 = call float @dx.op.unary.f32(i32 6, float %5360)  ; FAbs(value)
  %5368 = fdiv fast float 1.000000e+00, %5367
  %5369 = fmul fast float %5366, %5368
  %5370 = call float @dx.op.binary.f32(i32 35, float %5369, float 0.000000e+00)  ; FMax(a,b)
  %5371 = fsub fast float -0.000000e+00, %5308
  %5372 = fsub fast float -0.000000e+00, %5309
  %5373 = fsub fast float -0.000000e+00, %5310
  %5374 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5371, float %5372, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = fsub fast float -0.000000e+00, %5374
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5371, float %5372, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = fadd fast float %5376, %5267
  %5378 = fadd fast float %5266, %5376
  %5379 = fsub fast float -0.000000e+00, %5378
  %5380 = fcmp ogt float %5374, -0.000000e+00
  %5381 = select i1 %5380, float %5379, float %5377
  %5382 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5383 = fdiv fast float 1.000000e+00, %5382
  %5384 = fmul fast float %5381, %5383
  %5385 = call float @dx.op.binary.f32(i32 35, float %5384, float 0.000000e+00)  ; FMax(a,b)
  %5386 = call float @dx.op.binary.f32(i32 36, float %5370, float %5385)  ; FMin(a,b)
  %5387 = call float @dx.op.binary.f32(i32 36, float %5355, float %5386)  ; FMin(a,b)
  %5388 = fmul fast float %5387, %5170
  %5389 = fmul fast float %5387, %5171
  %5390 = fmul fast float %5387, %5172
  %5391 = fadd fast float %5388, %140
  %5392 = fadd fast float %5389, %141
  %5393 = fadd fast float %5390, %142
  %5394 = fsub fast float %5391, %5236
  %5395 = fsub fast float %5392, %5237
  %5396 = fsub fast float %5393, %5238
  br label %5404

; <label>:5397                                    ; preds = %5339
  %5398 = fmul fast float %5170, 8.096000e+03
  %5399 = fmul fast float %5171, 8.096000e+03
  %5400 = fmul fast float %5172, 8.096000e+03
  %5401 = fadd fast float %5398, %140
  %5402 = fadd fast float %5399, %141
  %5403 = fadd fast float %5400, %142
  br label %5404

; <label>:5404                                    ; preds = %5397, %5340
  %5405 = phi float [ %5170, %5397 ], [ %5394, %5340 ]
  %5406 = phi float [ %5171, %5397 ], [ %5395, %5340 ]
  %5407 = phi float [ %5172, %5397 ], [ %5396, %5340 ]
  %5408 = phi float [ %5401, %5397 ], [ %5391, %5340 ]
  %5409 = phi float [ %5402, %5397 ], [ %5392, %5340 ]
  %5410 = phi float [ %5403, %5397 ], [ %5393, %5340 ]
  %5411 = fcmp fast olt float %5255, 1.000000e+00
  br i1 %5411, label %5412, label %5443, !dx.controlflow.hints !83

; <label>:5412                                    ; preds = %5404
  %5413 = fmul fast float %5407, %5253
  %5414 = fmul fast float %5406, %5254
  %5415 = fsub fast float %5413, %5414
  %5416 = fmul fast float %5405, %5254
  %5417 = fmul fast float %5407, %5252
  %5418 = fsub fast float %5416, %5417
  %5419 = fmul fast float %5406, %5252
  %5420 = fmul fast float %5405, %5253
  %5421 = fsub fast float %5419, %5420
  %5422 = fmul fast float %5415, 2.000000e+00
  %5423 = fmul fast float %5418, 2.000000e+00
  %5424 = fmul fast float %5421, 2.000000e+00
  %5425 = fmul fast float %5422, %5255
  %5426 = fmul fast float %5423, %5255
  %5427 = fmul fast float %5424, %5255
  %5428 = fmul fast float %5424, %5253
  %5429 = fmul fast float %5423, %5254
  %5430 = fmul fast float %5422, %5254
  %5431 = fmul fast float %5424, %5252
  %5432 = fmul fast float %5423, %5252
  %5433 = fmul fast float %5422, %5253
  %5434 = fadd fast float %5428, %5405
  %5435 = fadd fast float %5434, %5425
  %5436 = fsub fast float %5435, %5429
  %5437 = fsub fast float %5406, %5431
  %5438 = fadd fast float %5437, %5426
  %5439 = fadd fast float %5438, %5430
  %5440 = fadd fast float %5427, %5407
  %5441 = fsub fast float %5440, %5433
  %5442 = fadd fast float %5441, %5432
  br label %5443

; <label>:5443                                    ; preds = %5412, %5404
  %5444 = phi float [ %5436, %5412 ], [ %5405, %5404 ]
  %5445 = phi float [ %5439, %5412 ], [ %5406, %5404 ]
  %5446 = phi float [ %5442, %5412 ], [ %5407, %5404 ]
  br i1 %5281, label %5478, label %5447

; <label>:5447                                    ; preds = %5443
  %5448 = fmul fast float %4518, 0x400187C840000000
  %5449 = fadd fast float %5448, 0xC00EFC2120000000
  %5450 = fmul fast float %5449, %4518
  %5451 = fadd fast float %5450, 0x3FE5D16340000000
  %5452 = fmul fast float %5451, %4518
  %5453 = fadd fast float %5452, 1.000000e+00
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = fsub fast float %5408, %140
  %5456 = fsub fast float %5409, %141
  %5457 = fsub fast float %5410, %142
  %5458 = fsub fast float %5408, %5236
  %5459 = fsub fast float %5409, %5237
  %5460 = fsub fast float %5410, %5238
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = fadd fast float %5462, 0x3EE4F8B580000000
  %5464 = fdiv fast float %5461, %5463
  %5465 = bitcast float %5464 to i32
  %5466 = ashr i32 %5465, 1
  %5467 = add nsw i32 %5466, 532487669
  %5468 = bitcast i32 %5467 to float
  %5469 = fmul fast float %5468, %5454
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5471 = fmul fast float %5470, 0x4009981AE0000000
  %5472 = fsub fast float 0x40111BBD80000000, %5471
  %5473 = fmul fast float %5472, %5470
  %5474 = fadd fast float %5473, 0xC0009F6020000000
  %5475 = fmul fast float %5474, %5470
  %5476 = fadd fast float %5475, 1.000000e+00
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  br label %5481

; <label>:5478                                    ; preds = %5443
  %5479 = icmp ne i32 %5282, -1
  %5480 = zext i1 %5479 to i32
  br label %5481

; <label>:5481                                    ; preds = %5478, %5447
  %5482 = phi float [ %4518, %5478 ], [ %5477, %5447 ]
  %5483 = phi i32 [ %5480, %5478 ], [ 0, %5447 ]
  %5484 = fmul float %5482, 5.000000e+00
  %5485 = fsub float 5.000000e+00, %5484
  %5486 = icmp ne i32 %5483, 0
  %5487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.f32 %5487, 3
  %5489 = fadd fast float %5488, %5485
  %5490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5489)  ; FMax(a,b)
  %5491 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5492 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5493 = fadd fast float %5492, %5491
  %5494 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5495 = fadd fast float %5493, %5494
  %5496 = fcmp fast oeq float %5495, 0.000000e+00
  %5497 = fdiv fast float 1.000000e+00, %5495
  %5498 = select i1 %5496, float 1.000000e+00, float %5497
  %5499 = fmul fast float %5498, %5444
  %5500 = fmul fast float %5498, %5445
  %5501 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5502 = call float @dx.op.unary.f32(i32 6, float %5499)  ; FAbs(value)
  %5503 = fsub fast float 1.000000e+00, %5501
  %5504 = fsub fast float 1.000000e+00, %5502
  %5505 = fcmp fast oge float %5499, 0.000000e+00
  %5506 = fcmp fast oge float %5500, 0.000000e+00
  %5507 = select i1 %5505, float 1.000000e+00, float -1.000000e+00
  %5508 = select i1 %5506, float 1.000000e+00, float -1.000000e+00
  %5509 = fcmp fast ole float %5446, 0.000000e+00
  %5510 = fmul fast float %5507, %5503
  %5511 = fmul fast float %5508, %5504
  %5512 = select i1 %5509, float %5510, float %5499
  %5513 = select i1 %5509, float %5511, float %5500
  %5514 = fmul fast float %5512, 5.000000e-01
  %5515 = fmul fast float %5513, 5.000000e-01
  %5516 = fadd fast float %5514, 5.000000e-01
  %5517 = fadd fast float %5515, 5.000000e-01
  %5518 = uitofp i32 %5279 to float
  %5519 = call float @dx.op.binary.f32(i32 36, float %5490, float 3.000000e+00)  ; FMin(a,b)
  %5520 = fadd fast float %5519, 2.000000e+00
  %5521 = call float @dx.op.unary.f32(i32 21, float %5520)  ; Exp(value)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5487, 1
  %5523 = fmul fast float %5522, %5521
  %5524 = fmul fast float %5523, 2.000000e+00
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = fmul fast float %5516, %5525
  %5527 = fmul fast float %5517, %5525
  %5528 = fadd fast float %5526, %5523
  %5529 = fadd fast float %5527, %5523
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5528, float %5529, float %5518, float undef, i32 0, i32 0, i32 undef, float %5490)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 3
  %5536 = fmul fast float %5535, %5249
  %5537 = call float @dx.op.binary.f32(i32 36, float %4564, float %5536)  ; FMin(a,b)
  %5538 = select i1 %5486, float %5537, float %5536
  %5539 = fmul fast float %5531, %5328
  %5540 = fmul fast float %5539, %5538
  %5541 = fmul fast float %5532, %5328
  %5542 = fmul fast float %5541, %5538
  %5543 = fmul fast float %5533, %5328
  %5544 = fmul fast float %5543, %5538
  %5545 = fadd fast float %5540, %5221
  %5546 = fadd fast float %5542, %5222
  %5547 = fadd fast float %5544, %5223
  %5548 = fmul fast float %5408, %5328
  %5549 = fmul fast float %5409, %5328
  %5550 = fmul fast float %5410, %5328
  %5551 = fadd fast float %5548, %5226
  %5552 = fadd fast float %5549, %5227
  %5553 = fadd fast float %5550, %5228
  %5554 = fsub fast float %5224, %5328
  br label %5330

; <label>:5555                                    ; preds = %5330
  br label %5556

; <label>:5556                                    ; preds = %5555, %5187
  %5557 = phi float [ %5188, %5187 ], [ %5331, %5555 ]
  %5558 = phi float [ %5189, %5187 ], [ %5332, %5555 ]
  %5559 = phi float [ %5190, %5187 ], [ %5333, %5555 ]
  %5560 = phi float [ %5191, %5187 ], [ %5334, %5555 ]
  %5561 = phi float [ %5193, %5187 ], [ %5335, %5555 ]
  %5562 = phi float [ %5194, %5187 ], [ %5336, %5555 ]
  %5563 = phi float [ %5195, %5187 ], [ %5337, %5555 ]
  %5564 = add i32 %5192, 1
  %5565 = icmp ugt i32 %5564, %5184
  br i1 %5565, label %5566, label %5187, !llvm.loop !84

; <label>:5566                                    ; preds = %5556
  br label %5567

; <label>:5567                                    ; preds = %5566, %5169
  %5568 = phi float [ 0.000000e+00, %5169 ], [ %5557, %5566 ]
  %5569 = phi float [ 0.000000e+00, %5169 ], [ %5558, %5566 ]
  %5570 = phi float [ 0.000000e+00, %5169 ], [ %5559, %5566 ]
  %5571 = phi float [ 0.000000e+00, %5169 ], [ %5561, %5566 ]
  %5572 = phi float [ 0.000000e+00, %5169 ], [ %5562, %5566 ]
  %5573 = phi float [ 0.000000e+00, %5169 ], [ %5563, %5566 ]
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = select i1 %184, float 0.000000e+00, float %5568
  %5576 = select i1 %184, float %5574, float %5569
  %5577 = select i1 %184, float 0.000000e+00, float %5570
  %5578 = fcmp fast olt float %5093, 0.000000e+00
  %5579 = call float @dx.op.unary.f32(i32 6, float %5093)  ; FAbs(value)
  %5580 = fmul fast float %5579, %5094
  %5581 = fmul fast float %5579, %5095
  %5582 = fmul fast float %5579, %5096
  %5583 = select i1 %5578, float %5094, float %5580
  %5584 = select i1 %5578, float %5095, float %5581
  %5585 = select i1 %5578, float %5096, float %5582
  %5586 = fsub fast float 1.000000e+00, %5579
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fmul fast float %5587, %5575
  %5589 = fmul fast float %5587, %5576
  %5590 = fmul fast float %5587, %5577
  %5591 = fadd fast float %5583, %5588
  %5592 = fadd fast float %5584, %5589
  %5593 = fadd fast float %5585, %5590
  %5594 = fcmp fast une float %4843, 0.000000e+00
  br i1 %5594, label %5695, label %5595

; <label>:5595                                    ; preds = %5567
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.CBufRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.CBufRet.f32 %5596, 2
  %5600 = extractvalue %dx.types.CBufRet.f32 %5596, 3
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.CBufRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.CBufRet.f32 %5601, 2
  %5605 = extractvalue %dx.types.CBufRet.f32 %5601, 3
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = extractvalue %dx.types.CBufRet.f32 %5606, 3
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %4543, float %4544, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %5573, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = fadd fast float %4518, -1.000000e+00
  %5615 = fsub fast float %5612, %5613
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5618 = fmul fast float %5617, %5612
  %5619 = fdiv fast float 1.600000e+02, %5618
  %5620 = fmul fast float %5614, %5614
  %5621 = fmul fast float %5620, 0xBFB5B17960000000
  %5622 = fmul fast float %5621, %5615
  %5623 = fmul fast float %5622, %5619
  %5624 = call float @dx.op.unary.f32(i32 21, float %5623)  ; Exp(value)
  %5625 = fmul fast float %5624, 0x3FF04B2960000000
  %5626 = fsub fast float 0x3FF04B2960000000, %5625
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fmul fast float %5627, 4.000000e+00
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5633 = fadd fast float %5630, %5571
  %5634 = fadd fast float %5631, %5572
  %5635 = fadd fast float %5632, %5573
  %5636 = fmul fast float %5633, %5597
  %5637 = call float @dx.op.tertiary.f32(i32 46, float %5634, float %5598, float %5636)  ; FMad(a,b,c)
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %5635, float %5599, float %5637)  ; FMad(a,b,c)
  %5639 = fadd fast float %5638, %5600
  %5640 = fmul fast float %5633, %5602
  %5641 = call float @dx.op.tertiary.f32(i32 46, float %5634, float %5603, float %5640)  ; FMad(a,b,c)
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5635, float %5604, float %5641)  ; FMad(a,b,c)
  %5643 = fadd fast float %5642, %5605
  %5644 = fmul fast float %5633, %5607
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5634, float %5608, float %5644)  ; FMad(a,b,c)
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5635, float %5609, float %5645)  ; FMad(a,b,c)
  %5647 = fadd fast float %5646, %5610
  %5648 = fdiv fast float %5639, %5647
  %5649 = fdiv fast float %5643, %5647
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5653 = fmul fast float %5651, %5648
  %5654 = fmul fast float %5652, %5649
  %5655 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5657 = fadd fast float %5653, %5655
  %5658 = fadd fast float %5654, %5656
  %5659 = fmul fast float %5611, 8.000000e+00
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = fmul fast float %5657, 2.000000e+00
  %5662 = fmul fast float %5658, 2.000000e+00
  %5663 = fadd fast float %5661, -1.000000e+00
  %5664 = fadd fast float %5662, -1.000000e+00
  %5665 = fmul fast float %5663, %5663
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5664, %5664
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fmul fast float %4843, %5667
  %5672 = fmul fast float %5671, %5670
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = fmul fast float %5673, %5660
  %5675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5657, float %5658, float undef, float undef, i32 0, i32 0, i32 undef, float %5628)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = select i1 %184, float 0.000000e+00, float %5677
  %5680 = select i1 %184, float 0.000000e+00, float %5678
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 2
  %5683 = fmul fast float %5682, %5676
  %5684 = fmul fast float %5679, %5682
  %5685 = fmul fast float %5680, %5682
  %5686 = fsub fast float %5683, %5575
  %5687 = fsub fast float %5684, %5576
  %5688 = fsub fast float %5685, %5577
  %5689 = fmul fast float %5686, %5674
  %5690 = fmul fast float %5687, %5674
  %5691 = fmul fast float %5688, %5674
  %5692 = fadd fast float %5689, %5575
  %5693 = fadd fast float %5690, %5576
  %5694 = fadd fast float %5691, %5577
  br label %5695

; <label>:5695                                    ; preds = %5595, %5567, %5092, %4713
  %5696 = phi float [ %5094, %5092 ], [ %5591, %5567 ], [ %4804, %4713 ], [ %5692, %5595 ]
  %5697 = phi float [ %5095, %5092 ], [ %5592, %5567 ], [ %4805, %4713 ], [ %5693, %5595 ]
  %5698 = phi float [ %5096, %5092 ], [ %5593, %5567 ], [ %4806, %4713 ], [ %5694, %5595 ]
  %5699 = fmul fast float %5696, %4817
  %5700 = fmul fast float %5697, %4818
  %5701 = fmul fast float %5698, %4819
  %5702 = fadd fast float %5699, %3788
  %5703 = fmul fast float %5702, %959
  %5704 = fadd fast float %5700, %3789
  %5705 = fmul fast float %5704, %959
  %5706 = fadd fast float %5701, %3790
  %5707 = fmul fast float %5706, %959
  %5708 = fmul fast float %4822, %4798
  %5709 = fmul fast float %4822, %4797
  %5710 = fmul fast float %4822, %4796
  %5711 = fmul fast float %4822, %3933
  %5712 = fadd fast float %5711, -1.000000e+00
  %5713 = fmul fast float %5712, %959
  %5714 = fadd fast float %5713, 1.000000e+00
  %5715 = fmul fast float %4822, %3932
  %5716 = fadd fast float %5715, -1.000000e+00
  %5717 = fmul fast float %5716, %959
  %5718 = fadd fast float %5717, 1.000000e+00
  %5719 = fmul fast float %4822, %3931
  %5720 = fadd fast float %5719, -1.000000e+00
  %5721 = fmul fast float %5720, %959
  %5722 = fadd fast float %5721, 1.000000e+00
  %5723 = fmul fast float %5722, %4800
  %5724 = fmul fast float %5718, %4801
  %5725 = fmul fast float %5714, %4802
  %5726 = fadd fast float %5723, %5710
  %5727 = fmul fast float %5726, %959
  %5728 = fadd fast float %5724, %5709
  %5729 = fmul fast float %5728, %959
  %5730 = fadd fast float %5725, %5708
  %5731 = fmul fast float %5730, %959
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 3
  %5734 = fcmp fast oeq float %5733, 0.000000e+00
  br i1 %5734, label %5911, label %5735

; <label>:5735                                    ; preds = %5695
  %5736 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5737 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5738 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = select i1 %184, float %5744, float %5740
  %5748 = select i1 %184, float %5746, float %5741
  %5749 = select i1 %184, float %5745, float %5742
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5752 = fcmp fast une float %5751, 0.000000e+00
  br i1 %5752, label %5753, label %5770

; <label>:5753                                    ; preds = %5735
  %5754 = fptoui float %81 to i32
  %5755 = fptoui float %82 to i32
  %5756 = lshr i32 %5754, 4
  %5757 = lshr i32 %5755, 4
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = fptoui float %5759 to i32
  %5761 = add i32 %5760, 15
  %5762 = lshr i32 %5761, 4
  %5763 = mul i32 %5762, %5757
  %5764 = add i32 %5763, %5756
  %5765 = shl i32 %5764, 3
  %5766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.i32 %5766, 0
  %5768 = and i32 %5767, -268435456
  %5769 = icmp eq i32 %5768, -1342177280
  br i1 %5769, label %5775, label %5770

; <label>:5770                                    ; preds = %5753, %5735
  %5771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4523, float %4524, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5772 = extractvalue %dx.types.ResRet.f32 %5771, 0
  %5773 = extractvalue %dx.types.ResRet.f32 %5771, 1
  %5774 = extractvalue %dx.types.ResRet.f32 %5771, 2
  br label %5775

; <label>:5775                                    ; preds = %5770, %5753
  %5776 = phi float [ %5772, %5770 ], [ 0.000000e+00, %5753 ]
  %5777 = phi float [ %5773, %5770 ], [ 0.000000e+00, %5753 ]
  %5778 = phi float [ %5774, %5770 ], [ 0.000000e+00, %5753 ]
  %5779 = call float @dx.op.binary.f32(i32 36, float %5777, float %5778)  ; FMin(a,b)
  %5780 = call float @dx.op.binary.f32(i32 36, float %5776, float %5779)  ; FMin(a,b)
  %5781 = fcmp fast ogt float %5780, 0.000000e+00
  br i1 %5781, label %5782, label %5911, !dx.controlflow.hints !86

; <label>:5782                                    ; preds = %5775
  %5783 = fmul fast float %5776, %5747
  %5784 = fmul fast float %5777, %5748
  %5785 = fmul fast float %5778, %5749
  %5786 = fsub fast float %5736, %4508
  %5787 = fsub fast float %5737, %4507
  %5788 = fsub fast float %5738, %4506
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.unary.f32(i32 25, float %5789)  ; Rsqrt(value)
  %5791 = fmul fast float %5790, %5786
  %5792 = fmul fast float %5790, %5787
  %5793 = fmul fast float %5790, %5788
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4504, float %4503, float %5791, float %5792, float %5793)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5797 = fmul fast float %5796, %5796
  %5798 = fmul fast float %5797, %4562
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fmul fast float %5799, %5796
  %5801 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float %5791, float %5792, float %5793)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = fmul fast float %5801, %5801
  %5803 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5804 = fsub fast float 1.000000e+00, %4555
  %5805 = fmul fast float %4537, %4537
  %5806 = fmul fast float %5805, %5804
  %5807 = fadd fast float %5806, %4555
  %5808 = bitcast float %5807 to i32
  %5809 = ashr i32 %5808, 1
  %5810 = add nsw i32 %5809, 532487669
  %5811 = bitcast i32 %5810 to float
  %5812 = fadd fast float %5811, %4537
  %5813 = fmul fast float %4555, %5802
  %5814 = fsub fast float 1.000000e+00, %5802
  %5815 = fadd fast float %5814, %5813
  %5816 = fmul fast float %5803, %5803
  %5817 = fmul fast float %5816, %5804
  %5818 = fadd fast float %5817, %4555
  %5819 = bitcast float %5818 to i32
  %5820 = ashr i32 %5819, 1
  %5821 = add nsw i32 %5820, 532487669
  %5822 = bitcast i32 %5821 to float
  %5823 = fadd fast float %5822, %5803
  %5824 = fmul fast float %5815, %5815
  %5825 = fmul fast float %5824, %5812
  %5826 = fmul fast float %5825, %5823
  %5827 = fdiv fast float 0x3FF0A00000000000, %5826
  %5828 = fmul fast float %5827, %4555
  %5829 = call float @dx.op.unary.f32(i32 6, float %5795)  ; FAbs(value)
  %5830 = fsub fast float 1.000000e+00, %5829
  %5831 = bitcast float %5830 to i32
  %5832 = sitofp i32 %5831 to float
  %5833 = fmul fast float %5832, 5.000000e+00
  %5834 = fadd fast float %5833, 0xC1EFBF8940000000
  %5835 = fptosi float %5834 to i32
  %5836 = bitcast i32 %5835 to float
  %5837 = fsub fast float 1.000000e+00, %4515
  %5838 = fsub fast float 1.000000e+00, %4516
  %5839 = fsub fast float 1.000000e+00, %4535
  %5840 = fmul fast float %5836, %5837
  %5841 = fmul fast float %5836, %5838
  %5842 = fmul fast float %5836, %5839
  %5843 = fadd fast float %5840, %4515
  %5844 = fadd fast float %5841, %4516
  %5845 = fadd fast float %5842, %4535
  %5846 = fmul fast float %5794, 9.843750e-01
  %5847 = fadd fast float %5846, 7.812500e-03
  %5848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5847, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 3
  %5851 = fmul fast float %5849, %4515
  %5852 = fmul fast float %5849, %4516
  %5853 = fmul fast float %5849, %4535
  %5854 = fadd fast float %5851, %5850
  %5855 = fadd fast float %5852, %5850
  %5856 = fadd fast float %5853, %5850
  %5857 = call float @dx.op.binary.f32(i32 35, float %5855, float %5856)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5854, float %5857)  ; FMax(a,b)
  %5859 = fsub fast float 1.000000e+00, %5858
  %5860 = fsub fast float -0.000000e+00, %4512
  %5861 = fsub fast float -0.000000e+00, %4513
  %5862 = fsub fast float -0.000000e+00, %4514
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %5860, float %5861, float %5862)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = fmul fast float %5864, 9.843750e-01
  %5866 = fadd fast float %5865, 7.812500e-03
  %5867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5866, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 2
  %5869 = extractvalue %dx.types.ResRet.f32 %5867, 3
  %5870 = fmul fast float %5868, %4515
  %5871 = fmul fast float %5868, %4516
  %5872 = fmul fast float %5868, %4535
  %5873 = fadd fast float %5870, %5869
  %5874 = fadd fast float %5871, %5869
  %5875 = fadd fast float %5872, %5869
  %5876 = call float @dx.op.binary.f32(i32 35, float %5874, float %5875)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5873, float %5876)  ; FMax(a,b)
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fmul fast float %5878, %5864
  %5880 = fmul fast float %5879, %3931
  %5881 = fmul fast float %5879, %3932
  %5882 = fmul fast float %5879, %3933
  %5883 = fmul fast float %5859, %5800
  %5884 = fadd fast float %5880, %5883
  %5885 = fadd fast float %5881, %5883
  %5886 = fadd fast float %5882, %5883
  %5887 = fmul fast float %5884, %5783
  %5888 = fmul fast float %5885, %5784
  %5889 = fmul fast float %5886, %5785
  %5890 = fmul fast float %5800, %5783
  %5891 = fmul fast float %5890, %5828
  %5892 = fmul fast float %5891, %5843
  %5893 = fmul fast float %5800, %5784
  %5894 = fmul fast float %5893, %5828
  %5895 = fmul fast float %5894, %5844
  %5896 = fmul fast float %5800, %5785
  %5897 = fmul fast float %5896, %5828
  %5898 = fmul fast float %5897, %5845
  %5899 = fadd fast float %5887, %5726
  %5900 = fmul fast float %5899, %959
  %5901 = fadd fast float %5888, %5728
  %5902 = fmul fast float %5901, %959
  %5903 = fadd fast float %5889, %5730
  %5904 = fmul fast float %5903, %959
  %5905 = fadd fast float %5892, %5702
  %5906 = fmul fast float %5905, %959
  %5907 = fadd fast float %5895, %5704
  %5908 = fmul fast float %5907, %959
  %5909 = fadd fast float %5898, %5706
  %5910 = fmul fast float %5909, %959
  br label %5911

; <label>:5911                                    ; preds = %5782, %5775, %5695
  %5912 = phi float [ %5703, %5695 ], [ %5703, %5775 ], [ %5906, %5782 ]
  %5913 = phi float [ %5705, %5695 ], [ %5705, %5775 ], [ %5908, %5782 ]
  %5914 = phi float [ %5707, %5695 ], [ %5707, %5775 ], [ %5910, %5782 ]
  %5915 = phi float [ %5727, %5695 ], [ %5727, %5775 ], [ %5900, %5782 ]
  %5916 = phi float [ %5729, %5695 ], [ %5729, %5775 ], [ %5902, %5782 ]
  %5917 = phi float [ %5731, %5695 ], [ %5731, %5775 ], [ %5904, %5782 ]
  %5918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.i32 %5918, 0
  %5920 = icmp eq i32 %5919, 0
  br i1 %5920, label %6310, label %5921

; <label>:5921                                    ; preds = %5911
  %5922 = fptoui float %81 to i32
  %5923 = fptoui float %82 to i32
  %5924 = lshr i32 %5922, 4
  %5925 = lshr i32 %5923, 4
  %5926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.i32 %5926, 0
  %5928 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5925, i32 %5927, i32 %5924)  ; UMad(a,b,c)
  %5929 = add nsw i32 %5919, -1
  %5930 = call i32 @dx.op.binary.i32(i32 37, i32 %5929, i32 0)  ; IMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5932 = fptoui float %5931 to i32
  %5933 = lshr i32 %5932, 5
  %5934 = call i32 @dx.op.binary.i32(i32 40, i32 %5933, i32 8191)  ; UMin(a,b)
  %5935 = shl i32 %5934, 2
  %5936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5935, i32 undef)  ; BufferLoad(srv,index,wot)
  %5937 = extractvalue %dx.types.ResRet.i32 %5936, 0
  %5938 = lshr i32 %5937, 16
  %5939 = and i32 %5937, 65535
  %5940 = lshr i32 %5937, 21
  %5941 = lshr i32 %5939, 5
  %5942 = call i32 @dx.op.binary.i32(i32 40, i32 %5941, i32 %5930)  ; UMin(a,b)
  %5943 = icmp ugt i32 %5940, %5942
  br i1 %5943, label %6310, label %5944

; <label>:5944                                    ; preds = %5921
  br label %5945

; <label>:5945                                    ; preds = %6300, %5944
  %5946 = phi i32 [ %6307, %6300 ], [ %5940, %5944 ]
  %5947 = phi float [ %6301, %6300 ], [ %5912, %5944 ]
  %5948 = phi float [ %6302, %6300 ], [ %5913, %5944 ]
  %5949 = phi float [ %6303, %6300 ], [ %5914, %5944 ]
  %5950 = phi float [ %6304, %6300 ], [ %5915, %5944 ]
  %5951 = phi float [ %6305, %6300 ], [ %5916, %5944 ]
  %5952 = phi float [ %6306, %6300 ], [ %5917, %5944 ]
  %5953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.i32 %5953, 0
  %5955 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5928, i32 %5954, i32 %5946)  ; UMad(a,b,c)
  %5956 = shl i32 %5955, 2
  %5957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5956, i32 undef)  ; BufferLoad(srv,index,wot)
  %5958 = extractvalue %dx.types.ResRet.i32 %5957, 0
  %5959 = shl i32 %5946, 5
  %5960 = sub nsw i32 %5938, %5959
  %5961 = call i32 @dx.op.binary.i32(i32 37, i32 %5960, i32 0)  ; IMax(a,b)
  %5962 = call i32 @dx.op.binary.i32(i32 38, i32 %5961, i32 31)  ; IMin(a,b)
  %5963 = sub nsw i32 1, %5938
  %5964 = add nsw i32 %5963, %5939
  %5965 = call i32 @dx.op.binary.i32(i32 37, i32 %5964, i32 0)  ; IMax(a,b)
  %5966 = call i32 @dx.op.binary.i32(i32 38, i32 %5965, i32 32)  ; IMin(a,b)
  %5967 = and i32 %5966, 31
  %5968 = shl i32 -1, %5967
  %5969 = xor i32 %5968, -1
  %5970 = and i32 %5962, 31
  %5971 = shl i32 %5969, %5970
  %5972 = icmp eq i32 %5966, 32
  %5973 = select i1 %5972, i32 -1, i32 %5971
  %5974 = and i32 %5973, %5958
  %5975 = icmp eq i32 %5974, 0
  br i1 %5975, label %6300, label %5976

; <label>:5976                                    ; preds = %5945
  br label %5977

; <label>:5977                                    ; preds = %6057, %5976
  %5978 = phi i32 [ %5989, %6057 ], [ %5974, %5976 ]
  %5979 = phi float [ %6058, %6057 ], [ %5947, %5976 ]
  %5980 = phi float [ %6059, %6057 ], [ %5948, %5976 ]
  %5981 = phi float [ %6060, %6057 ], [ %5949, %5976 ]
  %5982 = phi float [ %6061, %6057 ], [ %5950, %5976 ]
  %5983 = phi float [ %6062, %6057 ], [ %5951, %5976 ]
  %5984 = phi float [ %6063, %6057 ], [ %5952, %5976 ]
  %5985 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5978)  ; FirstbitLo(value)
  %5986 = add i32 %5985, %5959
  %5987 = and i32 %5985, 31
  %5988 = shl i32 1, %5987
  %5989 = xor i32 %5988, %5978
  %5990 = mul i32 %5986, 112
  %5991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5990, i32 undef)  ; BufferLoad(srv,index,wot)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.ResRet.f32 %5991, 1
  %5994 = extractvalue %dx.types.ResRet.f32 %5991, 2
  %5995 = or i32 %5990, 12
  %5996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5995, i32 undef)  ; BufferLoad(srv,index,wot)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 0
  %5998 = add i32 %5990, 44
  %5999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5998, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = add i32 %5990, 48
  %6002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6001, i32 undef)  ; BufferLoad(srv,index,wot)
  %6003 = extractvalue %dx.types.ResRet.f32 %6002, 0
  %6004 = extractvalue %dx.types.ResRet.f32 %6002, 1
  %6005 = extractvalue %dx.types.ResRet.f32 %6002, 2
  %6006 = add i32 %5990, 80
  %6007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6010 = call float @dx.op.dot3.f32(i32 55, float %5992, float %5993, float %5994, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = select i1 %184, float %6008, float %5992
  %6012 = select i1 %184, float %6010, float %5993
  %6013 = select i1 %184, float %6009, float %5994
  %6014 = fsub fast float %6003, %140
  %6015 = fsub fast float %6004, %141
  %6016 = fsub fast float %6005, %142
  %6017 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6015, float %6016, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = call float @dx.op.unary.f32(i32 24, float %6017)  ; Sqrt(value)
  %6019 = fdiv fast float 1.000000e+00, %6018
  %6020 = fmul fast float %6019, %6014
  %6021 = fmul fast float %6019, %6015
  %6022 = fmul fast float %6019, %6016
  %6023 = fadd fast float %6018, %5997
  %6024 = fdiv fast float 1.000000e+00, %6023
  %6025 = fmul float %6000, %6024
  %6026 = fmul float %6025, %6025
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = and i32 %5988, %5974
  %6029 = icmp eq i32 %6028, 0
  br i1 %6029, label %6052, label %6030, !dx.controlflow.hints !87

; <label>:6030                                    ; preds = %5977
  %6031 = lshr i32 %5922, 5
  %6032 = lshr i32 %5923, 5
  %6033 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %6031, i32 %6032, i32 %5986, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6034 = extractvalue %dx.types.ResRet.i32 %6033, 0
  %6035 = and i32 %6034, 3
  %6036 = icmp eq i32 %6035, 0
  %6037 = select i1 %6036, float 1.000000e+00, float 0.000000e+00
  %6038 = icmp eq i32 %6035, 3
  br i1 %6038, label %6039, label %6052

; <label>:6039                                    ; preds = %6030
  %6040 = lshr i32 %6034, 10
  %6041 = and i32 %6040, 8160
  %6042 = and i32 %5923, 31
  %6043 = or i32 %6041, %6042
  %6044 = lshr i32 %6034, 1
  %6045 = and i32 %6044, 16352
  %6046 = and i32 %5922, 31
  %6047 = or i32 %6045, %6046
  %6048 = lshr i32 %6034, 23
  %6049 = and i32 %6048, 255
  %6050 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %6047, i32 %6043, i32 %6049, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  br label %6052

; <label>:6052                                    ; preds = %6039, %6030, %5977
  %6053 = phi float [ %6051, %6039 ], [ %6037, %6030 ], [ 0.000000e+00, %5977 ]
  %6054 = call float @dx.op.binary.f32(i32 36, float %6053, float %6053)  ; FMin(a,b)
  %6055 = call float @dx.op.binary.f32(i32 36, float %6053, float %6054)  ; FMin(a,b)
  %6056 = fcmp fast ogt float %6055, 0.000000e+00
  br i1 %6056, label %6065, label %6057, !dx.controlflow.hints !88

; <label>:6057                                    ; preds = %6126, %6052
  %6058 = phi float [ %5979, %6052 ], [ %6296, %6126 ]
  %6059 = phi float [ %5980, %6052 ], [ %6297, %6126 ]
  %6060 = phi float [ %5981, %6052 ], [ %6298, %6126 ]
  %6061 = phi float [ %5982, %6052 ], [ %6284, %6126 ]
  %6062 = phi float [ %5983, %6052 ], [ %6285, %6126 ]
  %6063 = phi float [ %5984, %6052 ], [ %6286, %6126 ]
  %6064 = icmp eq i32 %5978, %5988
  br i1 %6064, label %6299, label %5977

; <label>:6065                                    ; preds = %6052
  %6066 = fmul fast float %6053, %6011
  %6067 = fmul fast float %6053, %6012
  %6068 = fmul fast float %6053, %6013
  %6069 = fsub fast float %6005, %4308
  %6070 = fcmp fast ogt float %6069, 0.000000e+00
  %6071 = fsub fast float %142, %4308
  %6072 = fcmp fast ogt float %6071, 0.000000e+00
  %6073 = xor i1 %6072, %6070
  %6074 = fsub fast float %4308, %6005
  %6075 = fmul fast float %6074, 2.000000e+00
  %6076 = fadd fast float %6075, %6005
  %6077 = select i1 %6073, float %6005, float %6076
  %6078 = fsub fast float %6077, %142
  %6079 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6015, float %6078, float %6014, float %6015, float %6078)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = call float @dx.op.unary.f32(i32 25, float %6079)  ; Rsqrt(value)
  %6081 = fmul fast float %6080, %6014
  %6082 = fmul fast float %6080, %6015
  %6083 = fmul fast float %6080, %6078
  %6084 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6081, float %6082, float %6083)  ; Dot3(ax,ay,az,bx,by,bz)
  %6086 = fdiv fast float 1.000000e+00, %6085
  %6087 = fmul fast float %6086, %6084
  %6088 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6071, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6089 = fcmp fast ogt float %6088, 0.000000e+00
  %6090 = fcmp fast olt float %6088, 0.000000e+00
  %6091 = zext i1 %6089 to i32
  %6092 = zext i1 %6090 to i32
  %6093 = sub nsw i32 %6091, %6092
  %6094 = sitofp i32 %6093 to float
  %6095 = fsub fast float %6077, %4308
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6015, float %6095, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = fcmp fast ogt float %6096, 0.000000e+00
  %6098 = fcmp fast olt float %6096, 0.000000e+00
  %6099 = zext i1 %6097 to i32
  %6100 = zext i1 %6098 to i32
  %6101 = sub nsw i32 %6099, %6100
  %6102 = sitofp i32 %6101 to float
  %6103 = fcmp fast une float %6094, %6102
  br i1 %6103, label %6104, label %6114

; <label>:6104                                    ; preds = %6065
  %6105 = fmul fast float %6087, %6083
  %6106 = fmul fast float %6087, %6082
  %6107 = fmul fast float %6087, %6081
  %6108 = fmul fast float %6107, %6107
  %6109 = fmul fast float %6106, %6106
  %6110 = fadd fast float %6108, %6109
  %6111 = fmul fast float %6105, %6105
  %6112 = fadd fast float %6110, %6111
  %6113 = call float @dx.op.unary.f32(i32 24, float %6112)  ; Sqrt(value)
  br label %6126

; <label>:6114                                    ; preds = %6065
  %6115 = icmp slt i32 %6093, 0
  br i1 %6115, label %6116, label %6126

; <label>:6116                                    ; preds = %6114
  %6117 = fsub fast float %140, %6003
  %6118 = fsub fast float %141, %6004
  %6119 = fsub fast float %142, %6077
  %6120 = fmul fast float %6117, %6117
  %6121 = fmul fast float %6118, %6118
  %6122 = fadd fast float %6120, %6121
  %6123 = fmul fast float %6119, %6119
  %6124 = fadd fast float %6122, %6123
  %6125 = call float @dx.op.unary.f32(i32 24, float %6124)  ; Sqrt(value)
  br label %6126

; <label>:6126                                    ; preds = %6116, %6114, %6104
  %6127 = phi float [ %6113, %6104 ], [ %6125, %6116 ], [ 0.000000e+00, %6114 ]
  %6128 = and i1 %6072, %6070
  %6129 = fsub fast float -0.000000e+00, %6127
  %6130 = select i1 %6128, float -0.000000e+00, float %6129
  %6131 = fmul fast float %4309, 0x3FF7154760000000
  %6132 = fmul fast float %6131, %6130
  %6133 = fmul fast float %4310, 0x3FF7154760000000
  %6134 = fmul fast float %6133, %6130
  %6135 = fmul fast float %4311, 0x3FF7154760000000
  %6136 = fmul fast float %6135, %6130
  %6137 = call float @dx.op.unary.f32(i32 21, float %6132)  ; Exp(value)
  %6138 = call float @dx.op.unary.f32(i32 21, float %6134)  ; Exp(value)
  %6139 = call float @dx.op.unary.f32(i32 21, float %6136)  ; Exp(value)
  %6140 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6141 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6142 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6143 = fmul fast float %6066, %6140
  %6144 = fmul fast float %6067, %6141
  %6145 = fmul fast float %6068, %6142
  %6146 = fsub fast float %6020, %4508
  %6147 = fsub fast float %6021, %4507
  %6148 = fsub fast float %6022, %4506
  %6149 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %6146, float %6147, float %6148)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = call float @dx.op.unary.f32(i32 25, float %6149)  ; Rsqrt(value)
  %6151 = fmul fast float %6150, %6146
  %6152 = fmul fast float %6150, %6147
  %6153 = fmul fast float %6150, %6148
  %6154 = call float @dx.op.dot3.f32(i32 55, float %6020, float %6021, float %6022, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %6155 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4504, float %4503, float %6151, float %6152, float %6153)  ; Dot3(ax,ay,az,bx,by,bz)
  %6156 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6157 = fmul fast float %6156, %6027
  %6158 = fmul fast float %6156, %6156
  %6159 = fmul fast float %6158, %4562
  %6160 = call float @dx.op.unary.f32(i32 7, float %6159)  ; Saturate(value)
  %6161 = fmul fast float %6157, %6160
  %6162 = bitcast float %6017 to i32
  %6163 = ashr i32 %6162, 1
  %6164 = sub nsw i32 1597463007, %6163
  %6165 = bitcast i32 %6164 to float
  %6166 = fmul fast float %6165, %6014
  %6167 = fmul fast float %6165, %6015
  %6168 = fmul fast float %6165, %6016
  %6169 = fsub fast float %6166, %4508
  %6170 = fsub fast float %6167, %4507
  %6171 = fsub fast float %6168, %4506
  %6172 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6169, float %6170, float %6171)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = call float @dx.op.unary.f32(i32 25, float %6172)  ; Rsqrt(value)
  %6174 = fmul fast float %6169, %6173
  %6175 = fmul fast float %6170, %6173
  %6176 = fmul fast float %6171, %6173
  %6177 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float %6174, float %6175, float %6176)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = fmul fast float %6177, %6177
  %6179 = call float @dx.op.unary.f32(i32 6, float %6154)  ; FAbs(value)
  %6180 = fsub fast float 1.000000e+00, %4555
  %6181 = fmul fast float %4537, %4537
  %6182 = fmul fast float %6181, %6180
  %6183 = fadd fast float %6182, %4555
  %6184 = bitcast float %6183 to i32
  %6185 = ashr i32 %6184, 1
  %6186 = add nsw i32 %6185, 532487669
  %6187 = bitcast i32 %6186 to float
  %6188 = fadd fast float %6187, %4537
  %6189 = fmul fast float %4555, %6178
  %6190 = fsub fast float 1.000000e+00, %6178
  %6191 = fadd fast float %6190, %6189
  %6192 = fmul fast float %6179, %6179
  %6193 = fmul fast float %6192, %6180
  %6194 = fadd fast float %6193, %4555
  %6195 = bitcast float %6194 to i32
  %6196 = ashr i32 %6195, 1
  %6197 = add nsw i32 %6196, 532487669
  %6198 = bitcast i32 %6197 to float
  %6199 = fadd fast float %6198, %6179
  %6200 = fmul fast float %6191, %6191
  %6201 = fmul fast float %6200, %6188
  %6202 = fmul fast float %6201, %6199
  %6203 = fdiv fast float 1.000000e+00, %6202
  %6204 = bitcast float %4555 to i32
  %6205 = sitofp i32 %6204 to float
  %6206 = fmul fast float %6205, 0x3FE7F73180000000
  %6207 = fadd fast float %6206, 0x41AFE27C40000000
  %6208 = fptosi float %6207 to i32
  %6209 = bitcast i32 %6208 to float
  %6210 = fmul fast float %6000, 0x3FD80E9D60000000
  %6211 = fmul fast float %6210, %6165
  %6212 = fadd fast float %6209, %6211
  %6213 = bitcast float %6212 to i32
  %6214 = sub nsw i32 2129859010, %6213
  %6215 = bitcast i32 %6214 to float
  %6216 = fmul fast float %4555, %6203
  %6217 = fmul fast float %6216, %6209
  %6218 = fmul fast float %6217, %6215
  %6219 = call float @dx.op.unary.f32(i32 6, float %6155)  ; FAbs(value)
  %6220 = fsub fast float 1.000000e+00, %6219
  %6221 = bitcast float %6220 to i32
  %6222 = sitofp i32 %6221 to float
  %6223 = fmul fast float %6222, 5.000000e+00
  %6224 = fadd fast float %6223, 0xC1EFBF8940000000
  %6225 = fptosi float %6224 to i32
  %6226 = bitcast i32 %6225 to float
  %6227 = fsub fast float 1.000000e+00, %4515
  %6228 = fsub fast float 1.000000e+00, %4516
  %6229 = fsub fast float 1.000000e+00, %4535
  %6230 = fmul fast float %6226, %6227
  %6231 = fmul fast float %6226, %6228
  %6232 = fmul fast float %6226, %6229
  %6233 = fadd fast float %6230, %4515
  %6234 = fadd fast float %6231, %4516
  %6235 = fadd fast float %6232, %4535
  %6236 = fmul fast float %6154, 9.843750e-01
  %6237 = fadd fast float %6236, 7.812500e-03
  %6238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6237, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 3
  %6241 = fmul fast float %6239, %4515
  %6242 = fmul fast float %6239, %4516
  %6243 = fmul fast float %6239, %4535
  %6244 = fadd fast float %6241, %6240
  %6245 = fadd fast float %6242, %6240
  %6246 = fadd fast float %6243, %6240
  %6247 = call float @dx.op.binary.f32(i32 35, float %6245, float %6246)  ; FMax(a,b)
  %6248 = call float @dx.op.binary.f32(i32 35, float %6244, float %6247)  ; FMax(a,b)
  %6249 = fsub fast float 1.000000e+00, %6248
  %6250 = fsub fast float -0.000000e+00, %4512
  %6251 = fsub fast float -0.000000e+00, %4513
  %6252 = fsub fast float -0.000000e+00, %4514
  %6253 = call float @dx.op.dot3.f32(i32 55, float %6020, float %6021, float %6022, float %6250, float %6251, float %6252)  ; Dot3(ax,ay,az,bx,by,bz)
  %6254 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  %6255 = fmul fast float %6254, %6027
  %6256 = fmul fast float %6254, 9.843750e-01
  %6257 = fadd fast float %6256, 7.812500e-03
  %6258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6257, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 2
  %6260 = extractvalue %dx.types.ResRet.f32 %6258, 3
  %6261 = fmul fast float %6259, %4515
  %6262 = fmul fast float %6259, %4516
  %6263 = fmul fast float %6259, %4535
  %6264 = fadd fast float %6261, %6260
  %6265 = fadd fast float %6262, %6260
  %6266 = fadd fast float %6263, %6260
  %6267 = call float @dx.op.binary.f32(i32 35, float %6265, float %6266)  ; FMax(a,b)
  %6268 = call float @dx.op.binary.f32(i32 35, float %6264, float %6267)  ; FMax(a,b)
  %6269 = fsub fast float 1.000000e+00, %6268
  %6270 = fmul fast float %6255, %6269
  %6271 = fmul fast float %6270, %3931
  %6272 = fmul fast float %6270, %3932
  %6273 = fmul fast float %6270, %3933
  %6274 = fmul fast float %6249, %6161
  %6275 = fadd fast float %6271, %6274
  %6276 = fadd fast float %6272, %6274
  %6277 = fadd fast float %6273, %6274
  %6278 = fmul fast float %6143, %959
  %6279 = fmul fast float %6278, %6275
  %6280 = fmul fast float %6144, %959
  %6281 = fmul fast float %6280, %6276
  %6282 = fmul fast float %6145, %959
  %6283 = fmul fast float %6282, %6277
  %6284 = fadd fast float %6279, %5982
  %6285 = fadd fast float %6281, %5983
  %6286 = fadd fast float %6283, %5984
  %6287 = fmul fast float %6278, %6161
  %6288 = fmul fast float %6287, %6233
  %6289 = fmul fast float %6288, %6218
  %6290 = fmul fast float %6280, %6161
  %6291 = fmul fast float %6290, %6234
  %6292 = fmul fast float %6291, %6218
  %6293 = fmul fast float %6282, %6161
  %6294 = fmul fast float %6293, %6235
  %6295 = fmul fast float %6294, %6218
  %6296 = fadd fast float %6289, %5979
  %6297 = fadd fast float %6292, %5980
  %6298 = fadd fast float %6295, %5981
  br label %6057

; <label>:6299                                    ; preds = %6057
  br label %6300

; <label>:6300                                    ; preds = %6299, %5945
  %6301 = phi float [ %5947, %5945 ], [ %6058, %6299 ]
  %6302 = phi float [ %5948, %5945 ], [ %6059, %6299 ]
  %6303 = phi float [ %5949, %5945 ], [ %6060, %6299 ]
  %6304 = phi float [ %5950, %5945 ], [ %6061, %6299 ]
  %6305 = phi float [ %5951, %5945 ], [ %6062, %6299 ]
  %6306 = phi float [ %5952, %5945 ], [ %6063, %6299 ]
  %6307 = add i32 %5946, 1
  %6308 = icmp ugt i32 %6307, %5942
  br i1 %6308, label %6309, label %5945

; <label>:6309                                    ; preds = %6300
  br label %6310

; <label>:6310                                    ; preds = %6309, %5921, %5911
  %6311 = phi float [ %5912, %5911 ], [ %5912, %5921 ], [ %6301, %6309 ]
  %6312 = phi float [ %5913, %5911 ], [ %5913, %5921 ], [ %6302, %6309 ]
  %6313 = phi float [ %5914, %5911 ], [ %5914, %5921 ], [ %6303, %6309 ]
  %6314 = phi float [ %5915, %5911 ], [ %5915, %5921 ], [ %6304, %6309 ]
  %6315 = phi float [ %5916, %5911 ], [ %5916, %5921 ], [ %6305, %6309 ]
  %6316 = phi float [ %5917, %5911 ], [ %5917, %5921 ], [ %6306, %6309 ]
  %6317 = call float @dx.op.unary.f32(i32 24, float %4509)  ; Sqrt(value)
  %6318 = call float @dx.op.unary.f32(i32 24, float %4510)  ; Sqrt(value)
  %6319 = call float @dx.op.unary.f32(i32 24, float %4511)  ; Sqrt(value)
  %6320 = fmul fast float %6317, %6314
  %6321 = fmul fast float %6318, %6315
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  br i1 %184, label %6324, label %6348

; <label>:6324                                    ; preds = %6310
  %6325 = fadd fast float %3817, %6316
  %6326 = fmul fast float %6325, %3798
  %6327 = fsub fast float 1.000000e+00, %3798
  %6328 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 3
  %6331 = fmul fast float %6330, %6328
  %6332 = fsub fast float 1.000000e+00, %4537
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 0
  %6335 = fmul fast float %6334, %6332
  %6336 = extractvalue %dx.types.CBufRet.f32 %6333, 2
  %6337 = fmul fast float %6336, %4533
  %6338 = fadd fast float %6321, %6320
  %6339 = fmul fast float %6323, %6338
  %6340 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6341 = fadd fast float %6331, %6326
  %6342 = fsub fast float %6341, %6335
  %6343 = fadd fast float %6342, %6337
  %6344 = fsub fast float %6343, %6340
  %6345 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6346 = fmul fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  br label %6364

; <label>:6348                                    ; preds = %6310
  %6349 = fmul fast float %6319, %6316
  %6350 = fmul fast float %6323, %6320
  %6351 = fmul fast float %6323, %6321
  %6352 = fmul fast float %6349, %6323
  %6353 = add i32 %42, 356
  %6354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6353, i32 undef)  ; BufferLoad(srv,index,wot)
  %6355 = extractvalue %dx.types.ResRet.i32 %6354, 0
  %6356 = and i32 %6355, 32
  %6357 = icmp eq i32 %6356, 0
  br i1 %6357, label %6364, label %6358

; <label>:6358                                    ; preds = %6348
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = fmul fast float %6360, 0x3FE99999A0000000
  %6362 = fadd fast float %6360, %6350
  %6363 = fadd fast float %6361, %6352
  br label %6364

; <label>:6364                                    ; preds = %6358, %6348, %6324
  %6365 = phi float [ %6339, %6324 ], [ %6362, %6358 ], [ %6350, %6348 ]
  %6366 = phi float [ %6347, %6324 ], [ %6351, %6358 ], [ %6351, %6348 ]
  %6367 = phi float [ 1.000000e+00, %6324 ], [ %6363, %6358 ], [ %6352, %6348 ]
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6370 = fmul fast float %6369, %6312
  %6371 = fmul fast float %6369, %6313
  %6372 = fadd fast float %6312, %6311
  %6373 = select i1 %184, float %6372, float %6311
  %6374 = fmul float %6373, %6369
  %6375 = select i1 %184, float 0.000000e+00, float %6370
  %6376 = select i1 %184, float 0.000000e+00, float %6371
  %6377 = fmul fast float %6365, %6317
  %6378 = fmul fast float %6366, %6318
  %6379 = fmul fast float %6367, %6319
  %6380 = fadd fast float %6374, %6377
  %6381 = fadd fast float %6375, %6378
  %6382 = fadd fast float %6376, %6379
  %6383 = select i1 %184, float %6366, float %6381
  %6384 = select i1 %184, float %6367, float %6382
  %6385 = call float @dx.op.binary.f32(i32 36, float %6380, float 3.225500e+04)  ; FMin(a,b)
  %6386 = call float @dx.op.binary.f32(i32 36, float %6383, float 3.225500e+04)  ; FMin(a,b)
  %6387 = call float @dx.op.binary.f32(i32 36, float %6384, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6385)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6386)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6387)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

