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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c3e399002acf67523298e75858723b4a
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
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
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = fmul fast float %78, %72
  %80 = fmul fast float %78, %73
  %81 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %82 = bitcast float %81 to i32
  %83 = ashr i32 %82, 1
  %84 = sub nsw i32 1597250115, %83
  %85 = bitcast i32 %84 to float
  %86 = fmul fast float %85, %64
  %87 = fmul fast float %85, %65
  %88 = fmul fast float %85, %66
  %89 = fmul fast float %65, %62
  %90 = fmul fast float %66, %61
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %66, %60
  %93 = fmul fast float %64, %62
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %64, %61
  %96 = fmul fast float %65, %60
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %91, %63
  %99 = fmul fast float %94, %63
  %100 = fmul fast float %97, %63
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %79, 2.000000e+00
  %105 = fmul fast float %104, %102
  %106 = fmul fast float %80, 2.000000e+00
  %107 = fmul fast float %106, %103
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %108, %111
  %115 = fmul fast float %108, %112
  %116 = fmul fast float %108, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %109, %118
  %122 = fmul fast float %109, %119
  %123 = fmul fast float %109, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %122, %126
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %123, %127
  %133 = fadd fast float %132, %116
  %134 = fmul fast float %129, %74
  %135 = fmul fast float %131, %74
  %136 = fmul fast float %133, %74
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %79
  %141 = fmul fast float %139, %80
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %169

; <label>:160                                     ; preds = %0
  %161 = fmul fast float %103, %80
  %162 = fmul fast float %102, %79
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %162, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = fsub fast float 1.000000e+00, %164
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = fcmp fast olt float %165, %167
  br label %177

; <label>:169                                     ; preds = %0
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %172 = and i32 %171, 3
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 4
  %175 = icmp eq i32 %174, 0
  %176 = and i1 %173, %175
  br label %177

; <label>:177                                     ; preds = %169, %160
  %178 = phi i1 [ %168, %160 ], [ %176, %169 ]
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = fmul fast float %180, 0x3FE3C6EF40000000
  %182 = frem fast float %79, 2.560000e+02
  %183 = frem fast float %80, 2.560000e+02
  %184 = fptoui float %182 to i32
  %185 = fptoui float %183 to i32
  %186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %184, i32 %185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = fadd fast float %187, %181
  %190 = fadd fast float %188, %181
  %191 = call float @dx.op.unary.f32(i32 22, float %189)  ; Frc(value)
  %192 = call float @dx.op.unary.f32(i32 22, float %190)  ; Frc(value)
  %193 = add i32 %40, 156
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %195, 7
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 22
  %203 = shl nuw nsw i32 %202, 5
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %40, 216
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %207, 8
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %207, 16
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = add i32 %40, 36
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %40, 288
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %230, 0x3F50624DE0000000
  %234 = fmul fast float %232, 0x3F50624DE0000000
  %235 = add i32 %40, 172
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %40, 232
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %40, 52
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %40, 304
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %40, 188
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %40, 248
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %40, 68
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %40, 320
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %40, 204
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %40, 264
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %40, 84
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %40, 336
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %40, 348
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 32
  %365 = icmp eq i32 %364, 0
  %366 = and i32 %363, 64
  %367 = icmp eq i32 %366, 0
  %368 = and i32 %363, 128
  %369 = icmp eq i32 %368, 0
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %387, label %374

; <label>:374                                     ; preds = %177
  %375 = add i32 %40, 472
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = add i32 %377, 0
  %379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %379, %dx.types.Handle %76, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = fmul fast float %381, %69
  %385 = fmul fast float %382, %70
  %386 = fmul fast float %383, %71
  br label %387

; <label>:387                                     ; preds = %374, %177
  %388 = phi float [ %71, %177 ], [ %386, %374 ]
  %389 = phi float [ %70, %177 ], [ %385, %374 ]
  %390 = phi float [ %69, %177 ], [ %384, %374 ]
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 2
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %414, label %395

; <label>:395                                     ; preds = %387
  %396 = add i32 %40, 44
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 1
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %390, float 1.000000e+00
  %402 = add i32 %40, 60
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 1
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %389, float 1.000000e+00
  %408 = add i32 %40, 76
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %388, float 1.000000e+00
  br label %414

; <label>:414                                     ; preds = %395, %387
  %415 = phi float [ %388, %387 ], [ %413, %395 ]
  %416 = phi float [ %389, %387 ], [ %407, %395 ]
  %417 = phi float [ %390, %387 ], [ %401, %395 ]
  %418 = lshr i32 %392, 20
  %419 = and i32 %418, 3
  %420 = add nuw nsw i32 %419, 1
  %421 = add i32 %40, 24
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %40, 28
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = or i32 %426, %423
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %940, label %429

; <label>:429                                     ; preds = %414
  %430 = and i32 %423, 262144
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %42, float 1.000000e+00
  %433 = select i1 %431, float %43, float 0.000000e+00
  %434 = select i1 %431, float %44, float 0.000000e+00
  %435 = select i1 %431, float %45, float 1.000000e+00
  %436 = select i1 %431, float %46, float %67
  %437 = select i1 %431, float %47, float %68
  %438 = add i32 %40, 284
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = lshr i32 %440, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = fmul fast float %442, 0x3F50624DE0000000
  %444 = add i32 %40, 88
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = lshr i32 %446, 16
  %448 = and i32 %447, 255
  %449 = lshr i32 %446, 24
  %450 = add i32 %40, 292
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %452, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = add i32 %40, 32
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = lshr i32 %459, 22
  %461 = shl nuw nsw i32 %460, 5
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = shl i32 %459, 4
  %464 = and i32 %463, 32752
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %459, 7
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 3
  %471 = fmul fast float %470, 1.000000e+03
  %472 = fmul fast float %233, %471
  %473 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %474 = fadd fast float %473, %223
  %475 = fmul fast float %234, %471
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fadd fast float %476, %225
  %478 = fmul fast float %443, %471
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fmul fast float %479, 0x401921FB60000000
  %481 = fadd fast float %480, %462
  %482 = call float @dx.op.unary.f32(i32 13, float %481)  ; Sin(value)
  %483 = call float @dx.op.unary.f32(i32 12, float %481)  ; Cos(value)
  %484 = fsub fast float -0.000000e+00, %482
  %485 = fadd fast float %436, -5.000000e-01
  %486 = fadd fast float %437, -5.000000e-01
  %487 = fmul fast float %454, %485
  %488 = fmul fast float %456, %486
  %489 = fadd fast float %487, 5.000000e-01
  %490 = fadd fast float %488, 5.000000e-01
  %491 = fmul fast float %465, %489
  %492 = fmul fast float %468, %490
  %493 = fmul fast float %483, %491
  %494 = call float @dx.op.tertiary.f32(i32 46, float %484, float %492, float %493)  ; FMad(a,b,c)
  %495 = fmul fast float %482, %491
  %496 = call float @dx.op.tertiary.f32(i32 46, float %483, float %492, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %474, %494
  %498 = fadd fast float %477, %496
  %499 = icmp ugt i32 %448, 1
  %500 = icmp ugt i32 %446, 33554431
  %501 = or i1 %500, %499
  br i1 %501, label %502, label %527

; <label>:502                                     ; preds = %429
  %503 = add i32 %40, 228
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 16
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = fmul fast float %470, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = mul nuw nsw i32 %448, %449
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %509, %511
  %513 = call float @dx.op.unary.f32(i32 27, float %512)  ; Round_ni(value)
  %514 = fptoui float %513 to i32
  %515 = urem i32 %514, %448
  %516 = udiv i32 %514, %449
  %517 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %518 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %519 = uitofp i32 %515 to float
  %520 = uitofp i32 %516 to float
  %521 = fadd fast float %517, %519
  %522 = fadd fast float %518, %520
  %523 = uitofp i32 %448 to float
  %524 = uitofp i32 %449 to float
  %525 = fdiv fast float %521, %523
  %526 = fdiv fast float %522, %524
  br label %527

; <label>:527                                     ; preds = %502, %429
  %528 = phi float [ %525, %502 ], [ %497, %429 ]
  %529 = phi float [ %526, %502 ], [ %498, %429 ]
  %530 = and i32 %423, 16
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %728, label %532

; <label>:532                                     ; preds = %527
  %533 = add i32 %40, 360
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = add i32 %535, 0
  %537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %537, %dx.types.Handle %75, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = and i32 %446, 255
  %544 = uitofp i32 %543 to float
  %545 = lshr i32 %446, 8
  %546 = and i32 %545, 255
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %542, %544
  %549 = fadd fast float %548, %547
  %550 = fmul fast float %549, 0x3F70101000000000
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 512
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %563, label %555

; <label>:555                                     ; preds = %532
  %556 = add i32 %40, 440
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = add i32 %558, 0
  %560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %560, %dx.types.Handle %76, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  br label %563

; <label>:563                                     ; preds = %555, %532
  %564 = phi float [ %562, %555 ], [ 1.000000e+00, %532 ]
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 33554432
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %675, label %569

; <label>:569                                     ; preds = %563
  %570 = add i32 %40, 224
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = add i32 %40, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = lshr i32 %583, 24
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = and i32 %583, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %583, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %583, 16
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = add i32 %40, 220
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = lshr i32 %600, 24
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = and i32 %600, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %600, 8
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %600, 16
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = bitcast float %539 to i32
  %616 = ashr i32 %615, 1
  %617 = sub nsw i32 1597463174, %616
  %618 = bitcast i32 %617 to float
  %619 = fmul fast float %539, 5.000000e-01
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %620, %619
  %622 = fsub fast float 1.500000e+00, %621
  %623 = fmul fast float %618, %539
  %624 = fmul fast float %623, %622
  %625 = bitcast float %540 to i32
  %626 = ashr i32 %625, 1
  %627 = sub nsw i32 1597463174, %626
  %628 = bitcast i32 %627 to float
  %629 = fmul fast float %540, 5.000000e-01
  %630 = fmul fast float %628, %628
  %631 = fmul fast float %630, %629
  %632 = fsub fast float 1.500000e+00, %631
  %633 = fmul fast float %628, %540
  %634 = fmul fast float %633, %632
  %635 = bitcast float %541 to i32
  %636 = ashr i32 %635, 1
  %637 = sub nsw i32 1597463174, %636
  %638 = bitcast i32 %637 to float
  %639 = fmul fast float %541, 5.000000e-01
  %640 = fmul fast float %638, %638
  %641 = fmul fast float %640, %639
  %642 = fsub fast float 1.500000e+00, %641
  %643 = fmul fast float %638, %541
  %644 = fmul fast float %643, %642
  %645 = fsub fast float %624, %606
  %646 = fsub fast float %634, %610
  %647 = fsub fast float %644, %614
  %648 = fmul fast float %645, %574
  %649 = fmul fast float %646, %576
  %650 = fmul fast float %647, %581
  %651 = fadd fast float %648, %589
  %652 = fadd fast float %649, %593
  %653 = fadd fast float %650, %597
  %654 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %655 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %656 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %657 = fmul fast float %654, %654
  %658 = fmul fast float %655, %655
  %659 = fmul fast float %656, %656
  %660 = fsub fast float %657, %539
  %661 = fsub fast float %658, %540
  %662 = fsub fast float %659, %541
  %663 = fmul fast float %660, %564
  %664 = fmul fast float %661, %564
  %665 = fmul fast float %662, %564
  %666 = fadd fast float %663, %539
  %667 = fadd fast float %664, %540
  %668 = fadd fast float %665, %541
  %669 = fadd fast float %586, %550
  %670 = fsub fast float %669, %603
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = fsub fast float %671, %550
  %673 = fmul fast float %672, %564
  %674 = fadd fast float %673, %550
  br label %728

; <label>:675                                     ; preds = %563
  %676 = and i32 %566, 134217728
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %712, label %678

; <label>:678                                     ; preds = %675
  %679 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %680 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %681 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %682 = fadd fast float %679, -5.000000e-01
  %683 = fadd fast float %680, -5.000000e-01
  %684 = fadd fast float %681, -5.000000e-01
  %685 = fmul fast float %682, %564
  %686 = fmul fast float %683, %564
  %687 = fmul fast float %684, %564
  %688 = fadd fast float %685, 5.000000e-01
  %689 = fadd fast float %686, 5.000000e-01
  %690 = fadd fast float %687, 5.000000e-01
  %691 = call float @dx.op.unary.f32(i32 24, float %539)  ; Sqrt(value)
  %692 = call float @dx.op.unary.f32(i32 24, float %540)  ; Sqrt(value)
  %693 = call float @dx.op.unary.f32(i32 24, float %541)  ; Sqrt(value)
  %694 = fmul fast float %688, 2.000000e+00
  %695 = fsub fast float 1.000000e+00, %694
  %696 = fmul fast float %695, %691
  %697 = fadd fast float %696, %694
  %698 = fmul fast float %697, %691
  %699 = fmul fast float %689, 2.000000e+00
  %700 = fsub fast float 1.000000e+00, %699
  %701 = fmul fast float %700, %692
  %702 = fadd fast float %701, %699
  %703 = fmul fast float %702, %692
  %704 = fmul fast float %690, 2.000000e+00
  %705 = fsub fast float 1.000000e+00, %704
  %706 = fmul fast float %705, %693
  %707 = fadd fast float %706, %704
  %708 = fmul fast float %707, %693
  %709 = fmul fast float %698, %698
  %710 = fmul fast float %703, %703
  %711 = fmul fast float %708, %708
  br label %728

; <label>:712                                     ; preds = %675
  %713 = fmul fast float %210, %210
  %714 = fmul fast float %214, %214
  %715 = fmul fast float %218, %218
  %716 = fadd fast float %713, -1.000000e+00
  %717 = fadd fast float %714, -1.000000e+00
  %718 = fadd fast float %715, -1.000000e+00
  %719 = fmul fast float %564, %716
  %720 = fmul fast float %564, %717
  %721 = fmul fast float %564, %718
  %722 = fadd fast float %719, 1.000000e+00
  %723 = fadd fast float %720, 1.000000e+00
  %724 = fadd fast float %721, 1.000000e+00
  %725 = fmul fast float %722, %539
  %726 = fmul fast float %723, %540
  %727 = fmul fast float %724, %541
  br label %728

; <label>:728                                     ; preds = %712, %678, %569, %527
  %729 = phi float [ %674, %569 ], [ %550, %678 ], [ %550, %712 ], [ 0x3FA23C0BE0000000, %527 ]
  %730 = phi float [ %666, %569 ], [ %709, %678 ], [ %725, %712 ], [ 1.000000e+00, %527 ]
  %731 = phi float [ %667, %569 ], [ %710, %678 ], [ %726, %712 ], [ 1.000000e+00, %527 ]
  %732 = phi float [ %668, %569 ], [ %711, %678 ], [ %727, %712 ], [ 1.000000e+00, %527 ]
  %733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.i32 %733, 1
  %735 = and i32 %734, 1
  %736 = icmp ne i32 %735, 0
  %737 = add i32 %40, 356
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 32
  %741 = icmp ne i32 %740, 0
  %742 = and i1 %736, %741
  %743 = select i1 %742, float 1.000000e+00, float %730
  %744 = select i1 %742, float 0x3FD3333340000000, float %731
  %745 = select i1 %742, float 0x3FD3333340000000, float %732
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 32
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %822, label %750

; <label>:750                                     ; preds = %728
  %751 = add i32 %40, 92
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %40, 376
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %756, 0
  %758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %758, %dx.types.Handle %75, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = extractvalue %dx.types.ResRet.f32 %759, 3
  %764 = and i32 %753, 255
  %765 = uitofp i32 %764 to float
  %766 = lshr i32 %753, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = lshr i32 %753, 16
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101000000000
  %773 = fmul fast float %760, %765
  %774 = fadd fast float %773, %768
  %775 = fmul fast float %774, 0x3F70101000000000
  %776 = fadd fast float %761, -5.000000e-01
  %777 = fadd fast float %763, -5.000000e-01
  %778 = fmul fast float %776, %772
  %779 = fmul fast float %777, %772
  %780 = fadd fast float %778, 5.000000e-01
  %781 = fadd fast float %779, 5.000000e-01
  %782 = fmul fast float %780, 2.000000e+00
  %783 = fadd fast float %782, -1.000000e+00
  %784 = fmul fast float %781, 2.000000e+00
  %785 = fadd fast float %784, -1.000000e+00
  %786 = fadd fast float %783, %785
  %787 = fmul fast float %786, 5.000000e-01
  %788 = fsub fast float %783, %785
  %789 = fmul fast float %788, 5.000000e-01
  %790 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %791 = fsub fast float 1.000000e+00, %790
  %792 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %793 = fsub fast float %791, %792
  %794 = call float @dx.op.dot3.f32(i32 55, float %787, float %789, float %793, float %787, float %789, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.unary.f32(i32 25, float %794)  ; Rsqrt(value)
  %796 = fmul fast float %787, %795
  %797 = fmul fast float %789, %795
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 67108864
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %818, label %802

; <label>:802                                     ; preds = %750
  %803 = add i32 %40, 280
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = lshr i32 %805, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fsub fast float %775, %813
  %815 = fmul fast float %814, %807
  %816 = fadd fast float %815, %811
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  br label %818

; <label>:818                                     ; preds = %802, %750
  %819 = phi float [ %817, %802 ], [ %775, %750 ]
  %820 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %432, float %433)  ; Dot2(ax,ay,bx,by)
  %821 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %434, float %435)  ; Dot2(ax,ay,bx,by)
  br label %822

; <label>:822                                     ; preds = %818, %728
  %823 = phi float [ %819, %818 ], [ 0x3FD6666660000000, %728 ]
  %824 = phi float [ %820, %818 ], [ 0.000000e+00, %728 ]
  %825 = phi float [ %821, %818 ], [ 0.000000e+00, %728 ]
  %826 = phi float [ %762, %818 ], [ 1.000000e+00, %728 ]
  %827 = add i32 %40, 160
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 22
  %831 = shl nuw nsw i32 %830, 5
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 64
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %870, label %837

; <label>:837                                     ; preds = %822
  %838 = add i32 %40, 392
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = add i32 %840, 0
  %842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %841, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 131072
  %846 = icmp eq i32 %845, 0
  %847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %842, %dx.types.Handle %75, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = extractvalue %dx.types.ResRet.f32 %847, 2
  %851 = fmul fast float %848, %198
  %852 = fmul fast float %849, %201
  %853 = fmul fast float %850, %204
  br i1 %846, label %860, label %854

; <label>:854                                     ; preds = %837
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = fmul fast float %856, %851
  %858 = fmul fast float %856, %852
  %859 = fmul fast float %856, %853
  br label %860

; <label>:860                                     ; preds = %854, %837
  %861 = phi float [ %857, %854 ], [ %851, %837 ]
  %862 = phi float [ %858, %854 ], [ %852, %837 ]
  %863 = phi float [ %859, %854 ], [ %853, %837 ]
  %864 = fmul fast float %861, %832
  %865 = select i1 %178, float %864, float %861
  %866 = call float @dx.op.dot3.f32(i32 55, float %865, float %862, float %863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = select i1 %178, float 0.000000e+00, float %861
  %868 = select i1 %178, float %866, float %862
  %869 = select i1 %178, float 0.000000e+00, float %863
  br label %870

; <label>:870                                     ; preds = %860, %822
  %871 = phi float [ %867, %860 ], [ 0.000000e+00, %822 ]
  %872 = phi float [ %868, %860 ], [ 0.000000e+00, %822 ]
  %873 = phi float [ %869, %860 ], [ 0.000000e+00, %822 ]
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 10240
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %922, label %878

; <label>:878                                     ; preds = %870
  %879 = add i32 %40, 456
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = add i32 %881, 0
  %883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %883, %dx.types.Handle %76, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 1
  %886 = extractvalue %dx.types.ResRet.f32 %884, 3
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 1048576
  %890 = icmp ne i32 %889, 0
  %891 = and i32 %888, 8192
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %908, label %893

; <label>:893                                     ; preds = %878
  %894 = extractvalue %dx.types.ResRet.f32 %884, 2
  %895 = select i1 %890, float %894, float %885
  %896 = extractvalue %dx.types.ResRet.f32 %884, 0
  %897 = select i1 %890, float %896, float %885
  %898 = add i32 %40, 96
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 16
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = fmul fast float %903, 0x3F80101020000000
  %905 = fmul fast float %904, %897
  %906 = fmul fast float %904, %885
  %907 = fmul fast float %904, %895
  br label %908

; <label>:908                                     ; preds = %893, %878
  %909 = phi float [ %905, %893 ], [ 0.000000e+00, %878 ]
  %910 = phi float [ %906, %893 ], [ 0.000000e+00, %878 ]
  %911 = phi float [ %907, %893 ], [ 0.000000e+00, %878 ]
  %912 = and i32 %888, 2048
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %922, label %914

; <label>:914                                     ; preds = %908
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = shl i32 %916, 4
  %918 = and i32 %917, 32752
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = fmul fast float %919, %886
  %921 = call float @dx.op.binary.f32(i32 35, float %920, float 0x3F70101020000000)  ; FMax(a,b)
  br label %922

; <label>:922                                     ; preds = %914, %908, %870
  %923 = phi float [ %909, %914 ], [ %909, %908 ], [ 0.000000e+00, %870 ]
  %924 = phi float [ %910, %914 ], [ %910, %908 ], [ 0.000000e+00, %870 ]
  %925 = phi float [ %911, %914 ], [ %911, %908 ], [ 0.000000e+00, %870 ]
  %926 = phi float [ %921, %914 ], [ 0x3F70101020000000, %908 ], [ 0x3F70101020000000, %870 ]
  %927 = add i32 %40, 96
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %929, 8
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = fmul fast float %934, %935
  %937 = fadd fast float %936, %931
  %938 = fmul fast float %937, 0x3F70101020000000
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  br label %940

; <label>:940                                     ; preds = %922, %414
  %941 = phi float [ 0.000000e+00, %414 ], [ %824, %922 ]
  %942 = phi float [ 0.000000e+00, %414 ], [ %825, %922 ]
  %943 = phi float [ 0.000000e+00, %414 ], [ %743, %922 ]
  %944 = phi float [ 0.000000e+00, %414 ], [ %744, %922 ]
  %945 = phi float [ 0.000000e+00, %414 ], [ %745, %922 ]
  %946 = phi float [ 0.000000e+00, %414 ], [ %871, %922 ]
  %947 = phi float [ 0.000000e+00, %414 ], [ %872, %922 ]
  %948 = phi float [ 0.000000e+00, %414 ], [ %873, %922 ]
  %949 = phi float [ 0.000000e+00, %414 ], [ %923, %922 ]
  %950 = phi float [ 0.000000e+00, %414 ], [ %924, %922 ]
  %951 = phi float [ 0.000000e+00, %414 ], [ %925, %922 ]
  %952 = phi float [ 0.000000e+00, %414 ], [ %729, %922 ]
  %953 = phi float [ 0.000000e+00, %414 ], [ 1.000000e+00, %922 ]
  %954 = phi float [ 0.000000e+00, %414 ], [ %823, %922 ]
  %955 = phi float [ 0.000000e+00, %414 ], [ %826, %922 ]
  %956 = phi float [ 0.000000e+00, %414 ], [ %926, %922 ]
  %957 = phi float [ 0.000000e+00, %414 ], [ %939, %922 ]
  br i1 %365, label %1886, label %958

; <label>:958                                     ; preds = %940
  %959 = icmp ult i32 %420, 2
  %960 = add i32 %40, 40
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = add i32 %40, 44
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = or i32 %965, %962
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1886, label %968

; <label>:968                                     ; preds = %958
  %969 = and i32 %962, 262144
  %970 = icmp ne i32 %969, 0
  %971 = select i1 %970, float %42, float 1.000000e+00
  %972 = select i1 %970, float %43, float 0.000000e+00
  %973 = select i1 %970, float %44, float 0.000000e+00
  %974 = select i1 %970, float %45, float 1.000000e+00
  %975 = select i1 %970, float %46, float %67
  %976 = select i1 %970, float %47, float %68
  %977 = add i32 %40, 300
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 16
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = fmul fast float %981, 0x3F50624DE0000000
  %983 = add i32 %40, 104
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = lshr i32 %985, 16
  %987 = and i32 %986, 255
  %988 = lshr i32 %985, 24
  %989 = add i32 %40, 308
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 65535
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = lshr i32 %991, 16
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = add i32 %40, 48
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = lshr i32 %998, 22
  %1000 = shl nuw nsw i32 %999, 5
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = shl i32 %998, 4
  %1003 = and i32 %1002, 32752
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = lshr i32 %998, 7
  %1006 = and i32 %1005, 32752
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1010 = fmul fast float %1009, 1.000000e+03
  %1011 = fmul fast float %275, %1010
  %1012 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1013 = fadd fast float %1012, %265
  %1014 = fmul fast float %276, %1010
  %1015 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1016 = fadd fast float %1015, %267
  %1017 = fmul fast float %982, %1010
  %1018 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1019 = fmul fast float %1018, 0x401921FB60000000
  %1020 = fadd fast float %1019, %1001
  %1021 = call float @dx.op.unary.f32(i32 13, float %1020)  ; Sin(value)
  %1022 = call float @dx.op.unary.f32(i32 12, float %1020)  ; Cos(value)
  %1023 = fsub fast float -0.000000e+00, %1021
  %1024 = fadd fast float %975, -5.000000e-01
  %1025 = fadd fast float %976, -5.000000e-01
  %1026 = fmul fast float %993, %1024
  %1027 = fmul fast float %995, %1025
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = fadd fast float %1027, 5.000000e-01
  %1030 = fmul fast float %1004, %1028
  %1031 = fmul fast float %1007, %1029
  %1032 = fmul fast float %1022, %1030
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %1031, float %1032)  ; FMad(a,b,c)
  %1034 = fmul fast float %1021, %1030
  %1035 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %1031, float %1034)  ; FMad(a,b,c)
  %1036 = fadd fast float %1013, %1033
  %1037 = fadd fast float %1016, %1035
  %1038 = icmp ugt i32 %987, 1
  %1039 = icmp ugt i32 %985, 33554431
  %1040 = or i1 %1039, %1038
  br i1 %1040, label %1041, label %1066

; <label>:1041                                    ; preds = %968
  %1042 = add i32 %40, 244
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = lshr i32 %1044, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fmul fast float %1009, %1046
  %1048 = call float @dx.op.unary.f32(i32 22, float %1047)  ; Frc(value)
  %1049 = mul nuw nsw i32 %987, %988
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1048, %1050
  %1052 = call float @dx.op.unary.f32(i32 27, float %1051)  ; Round_ni(value)
  %1053 = fptoui float %1052 to i32
  %1054 = urem i32 %1053, %987
  %1055 = udiv i32 %1053, %988
  %1056 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1057 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1058 = uitofp i32 %1054 to float
  %1059 = uitofp i32 %1055 to float
  %1060 = fadd fast float %1056, %1058
  %1061 = fadd fast float %1057, %1059
  %1062 = uitofp i32 %987 to float
  %1063 = uitofp i32 %988 to float
  %1064 = fdiv fast float %1060, %1062
  %1065 = fdiv fast float %1061, %1063
  br label %1066

; <label>:1066                                    ; preds = %1041, %968
  %1067 = phi float [ %1064, %1041 ], [ %1036, %968 ]
  %1068 = phi float [ %1065, %1041 ], [ %1037, %968 ]
  %1069 = and i32 %962, 16777216
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1180, label %1071

; <label>:1071                                    ; preds = %1066
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1076 = fadd fast float %1073, %134
  %1077 = fadd fast float %1074, %135
  %1078 = fadd fast float %1075, %136
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = icmp eq i32 %41, 65535
  br i1 %1082, label %1177, label %1083

; <label>:1083                                    ; preds = %1071
  %1084 = lshr i32 %41, 1
  %1085 = shl i32 %1084, 2
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %41, 1
  %1089 = icmp ne i32 %1088, 0
  %1090 = lshr i32 %1087, 16
  %1091 = and i32 %1087, 65535
  %1092 = select i1 %1089, i32 %1090, i32 %1091
  %1093 = icmp eq i32 %1092, 65535
  br i1 %1093, label %1173, label %1094

; <label>:1094                                    ; preds = %1083
  %1095 = mul nuw nsw i32 %1092, 40
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = add nuw nsw i32 %1095, 12
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = add nuw nsw i32 %1095, 24
  %1106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = add nuw nsw i32 %1095, 36
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = fsub fast float %1076, %1097
  %1114 = fsub fast float %1077, %1098
  %1115 = fsub fast float %1078, %1099
  %1116 = fmul fast float %1112, %1113
  %1117 = fmul fast float %1112, %1114
  %1118 = fmul fast float %1112, %1115
  %1119 = call float @dx.op.unary.f32(i32 27, float %1116)  ; Round_ni(value)
  %1120 = call float @dx.op.unary.f32(i32 27, float %1117)  ; Round_ni(value)
  %1121 = call float @dx.op.unary.f32(i32 27, float %1118)  ; Round_ni(value)
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = fmul fast float %1122, %1102
  %1126 = fmul fast float %1123, %1103
  %1127 = fmul fast float %1124, %1104
  %1128 = shl i32 %41, 2
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = add i32 %1130, 0
  %1132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1133 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1134 = call float @dx.op.unary.f32(i32 22, float %1126)  ; Frc(value)
  %1135 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1132, %dx.types.Handle %37, float %1133, float %1134, float %1135, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = fmul fast float %1137, 1.023000e+03
  %1141 = fmul fast float %1138, 1.023000e+03
  %1142 = fmul fast float %1139, 1.023000e+03
  %1143 = fadd fast float %1140, 5.000000e-01
  %1144 = fadd fast float %1141, 5.000000e-01
  %1145 = fadd fast float %1142, 5.000000e-01
  %1146 = call float @dx.op.unary.f32(i32 27, float %1143)  ; Round_ni(value)
  %1147 = call float @dx.op.unary.f32(i32 27, float %1144)  ; Round_ni(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1149 = fsub fast float %1116, %1119
  %1150 = fsub fast float %1117, %1120
  %1151 = fsub fast float %1118, %1121
  %1152 = fmul fast float %1149, 7.500000e-01
  %1153 = fmul fast float %1150, 7.500000e-01
  %1154 = fmul fast float %1151, 7.500000e-01
  %1155 = fadd fast float %1119, 1.250000e-01
  %1156 = fadd fast float %1155, %1152
  %1157 = fadd fast float %1156, %1146
  %1158 = fadd fast float %1120, 1.250000e-01
  %1159 = fadd fast float %1158, %1153
  %1160 = fadd fast float %1159, %1147
  %1161 = fadd fast float %1121, 1.250000e-01
  %1162 = fadd fast float %1161, %1154
  %1163 = fadd fast float %1162, %1148
  %1164 = fmul fast float %1157, %1107
  %1165 = fmul fast float %1160, %1108
  %1166 = fmul fast float %1163, %1109
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1170, %dx.types.Handle %35, float %1164, float %1165, float %1166, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  br label %1173

; <label>:1173                                    ; preds = %1094, %1083
  %1174 = phi float [ %1172, %1094 ], [ -1.000000e+00, %1083 ]
  %1175 = fadd fast float %1174, %1081
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  br label %1177

; <label>:1177                                    ; preds = %1173, %1071
  %1178 = phi float [ %1176, %1173 ], [ %1081, %1071 ]
  %1179 = fmul fast float %1178, %417
  br label %1180

; <label>:1180                                    ; preds = %1177, %1066
  %1181 = phi float [ %1179, %1177 ], [ %417, %1066 ]
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 256
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1232, label %1186

; <label>:1186                                    ; preds = %1180
  %1187 = add i32 %40, 428
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %76, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = add i32 %40, 116
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = shl i32 %1196, 4
  %1198 = and i32 %1197, 32752
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = lshr i32 %1196, 7
  %1201 = and i32 %1200, 32752
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = fsub fast float 1.000000e+00, %1181
  %1204 = call float @dx.op.binary.f32(i32 35, float %1203, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1205 = bitcast float %1181 to i32
  %1206 = sitofp i32 %1205 to float
  %1207 = fadd fast float %1206, 0xC1CFBF8940000000
  %1208 = fmul fast float %1202, %1207
  %1209 = fadd fast float %1208, 0x41CFBF8940000000
  %1210 = fptosi float %1209 to i32
  %1211 = bitcast i32 %1210 to float
  %1212 = bitcast float %1204 to i32
  %1213 = sitofp i32 %1212 to float
  %1214 = fadd fast float %1213, 0xC1CFBF8940000000
  %1215 = fmul fast float %1214, %1202
  %1216 = fadd fast float %1215, 0x41CFBF8940000000
  %1217 = fptosi float %1216 to i32
  %1218 = bitcast i32 %1217 to float
  %1219 = fmul fast float %1211, %1199
  %1220 = fmul fast float %1218, %1199
  %1221 = fsub fast float %1204, %1219
  %1222 = fadd fast float %1220, %1204
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1225 = fsub fast float %1193, %1223
  %1226 = fsub fast float %1224, %1223
  %1227 = bitcast float %1226 to i32
  %1228 = sub nsw i32 2129859010, %1227
  %1229 = bitcast i32 %1228 to float
  %1230 = fmul fast float %1229, %1225
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  br label %1232

; <label>:1232                                    ; preds = %1186, %1180
  %1233 = phi float [ %1231, %1186 ], [ %1181, %1180 ]
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 128
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1254, label %1238

; <label>:1238                                    ; preds = %1232
  %1239 = add i32 %40, 412
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = add i32 %1241, 0
  %1243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1243, %dx.types.Handle %76, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = and i32 %1247, 524288
  %1249 = icmp ne i32 %1248, 0
  %1250 = fcmp fast ogt float %1245, 0x3FE0101020000000
  %1251 = select i1 %1250, float 1.000000e+00, float 0.000000e+00
  %1252 = select i1 %1249, float %1251, float %1245
  %1253 = fmul fast float %1252, %1233
  br label %1254

; <label>:1254                                    ; preds = %1238, %1232
  %1255 = phi float [ %1253, %1238 ], [ %1233, %1232 ]
  %1256 = fcmp fast ult float %1255, 0x3F70101020000000
  br i1 %1256, label %1886, label %1257

; <label>:1257                                    ; preds = %1254
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 16
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1460, label %1262

; <label>:1262                                    ; preds = %1257
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %40, 364
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %1267, 0
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1269, %dx.types.Handle %75, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1270, 3
  %1275 = and i32 %1264, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = lshr i32 %1264, 8
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1274, %1276
  %1281 = fadd fast float %1280, %1279
  %1282 = fmul fast float %1281, 0x3F70101000000000
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 512
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1295, label %1287

; <label>:1287                                    ; preds = %1262
  %1288 = add i32 %40, 444
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %76, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  br label %1295

; <label>:1295                                    ; preds = %1287, %1262
  %1296 = phi float [ %1294, %1287 ], [ 1.000000e+00, %1262 ]
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 33554432
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1407, label %1301

; <label>:1301                                    ; preds = %1295
  %1302 = add i32 %40, 240
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 65535
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = lshr i32 %1304, 16
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = add i32 %40, 244
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 65535
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 24
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = and i32 %1315, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = lshr i32 %1315, 8
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = lshr i32 %1315, 16
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = add i32 %40, 236
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = lshr i32 %1332, 24
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = and i32 %1332, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F70101020000000
  %1339 = lshr i32 %1332, 8
  %1340 = and i32 %1339, 255
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F70101020000000
  %1343 = lshr i32 %1332, 16
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = bitcast float %1271 to i32
  %1348 = ashr i32 %1347, 1
  %1349 = sub nsw i32 1597463174, %1348
  %1350 = bitcast i32 %1349 to float
  %1351 = fmul fast float %1271, 5.000000e-01
  %1352 = fmul fast float %1350, %1350
  %1353 = fmul fast float %1352, %1351
  %1354 = fsub fast float 1.500000e+00, %1353
  %1355 = fmul fast float %1350, %1271
  %1356 = fmul fast float %1355, %1354
  %1357 = bitcast float %1272 to i32
  %1358 = ashr i32 %1357, 1
  %1359 = sub nsw i32 1597463174, %1358
  %1360 = bitcast i32 %1359 to float
  %1361 = fmul fast float %1272, 5.000000e-01
  %1362 = fmul fast float %1360, %1360
  %1363 = fmul fast float %1362, %1361
  %1364 = fsub fast float 1.500000e+00, %1363
  %1365 = fmul fast float %1360, %1272
  %1366 = fmul fast float %1365, %1364
  %1367 = bitcast float %1273 to i32
  %1368 = ashr i32 %1367, 1
  %1369 = sub nsw i32 1597463174, %1368
  %1370 = bitcast i32 %1369 to float
  %1371 = fmul fast float %1273, 5.000000e-01
  %1372 = fmul fast float %1370, %1370
  %1373 = fmul fast float %1372, %1371
  %1374 = fsub fast float 1.500000e+00, %1373
  %1375 = fmul fast float %1370, %1273
  %1376 = fmul fast float %1375, %1374
  %1377 = fsub fast float %1356, %1338
  %1378 = fsub fast float %1366, %1342
  %1379 = fsub fast float %1376, %1346
  %1380 = fmul fast float %1377, %1306
  %1381 = fmul fast float %1378, %1308
  %1382 = fmul fast float %1379, %1313
  %1383 = fadd fast float %1380, %1321
  %1384 = fadd fast float %1381, %1325
  %1385 = fadd fast float %1382, %1329
  %1386 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1387 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1388 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1387, %1387
  %1391 = fmul fast float %1388, %1388
  %1392 = fsub fast float %1389, %1271
  %1393 = fsub fast float %1390, %1272
  %1394 = fsub fast float %1391, %1273
  %1395 = fmul fast float %1392, %1296
  %1396 = fmul fast float %1393, %1296
  %1397 = fmul fast float %1394, %1296
  %1398 = fadd fast float %1395, %1271
  %1399 = fadd fast float %1396, %1272
  %1400 = fadd fast float %1397, %1273
  %1401 = fadd fast float %1318, %1282
  %1402 = fsub fast float %1401, %1335
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = fsub fast float %1403, %1282
  %1405 = fmul fast float %1404, %1296
  %1406 = fadd fast float %1405, %1282
  br label %1460

; <label>:1407                                    ; preds = %1295
  %1408 = and i32 %1298, 134217728
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1444, label %1410

; <label>:1410                                    ; preds = %1407
  %1411 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1412 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1413 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1414 = fadd fast float %1411, -5.000000e-01
  %1415 = fadd fast float %1412, -5.000000e-01
  %1416 = fadd fast float %1413, -5.000000e-01
  %1417 = fmul fast float %1414, %1296
  %1418 = fmul fast float %1415, %1296
  %1419 = fmul fast float %1416, %1296
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fadd fast float %1419, 5.000000e-01
  %1423 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1424 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1425 = call float @dx.op.unary.f32(i32 24, float %1273)  ; Sqrt(value)
  %1426 = fmul fast float %1420, 2.000000e+00
  %1427 = fsub fast float 1.000000e+00, %1426
  %1428 = fmul fast float %1427, %1423
  %1429 = fadd fast float %1428, %1426
  %1430 = fmul fast float %1429, %1423
  %1431 = fmul fast float %1421, 2.000000e+00
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1432, %1424
  %1434 = fadd fast float %1433, %1431
  %1435 = fmul fast float %1434, %1424
  %1436 = fmul fast float %1422, 2.000000e+00
  %1437 = fsub fast float 1.000000e+00, %1436
  %1438 = fmul fast float %1437, %1425
  %1439 = fadd fast float %1438, %1436
  %1440 = fmul fast float %1439, %1425
  %1441 = fmul fast float %1430, %1430
  %1442 = fmul fast float %1435, %1435
  %1443 = fmul fast float %1440, %1440
  br label %1460

; <label>:1444                                    ; preds = %1407
  %1445 = fmul fast float %252, %252
  %1446 = fmul fast float %256, %256
  %1447 = fmul fast float %260, %260
  %1448 = fadd fast float %1445, -1.000000e+00
  %1449 = fadd fast float %1446, -1.000000e+00
  %1450 = fadd fast float %1447, -1.000000e+00
  %1451 = fmul fast float %1296, %1448
  %1452 = fmul fast float %1296, %1449
  %1453 = fmul fast float %1296, %1450
  %1454 = fadd fast float %1451, 1.000000e+00
  %1455 = fadd fast float %1452, 1.000000e+00
  %1456 = fadd fast float %1453, 1.000000e+00
  %1457 = fmul fast float %1454, %1271
  %1458 = fmul fast float %1455, %1272
  %1459 = fmul fast float %1456, %1273
  br label %1460

; <label>:1460                                    ; preds = %1444, %1410, %1301, %1257
  %1461 = phi float [ %1406, %1301 ], [ %1282, %1410 ], [ %1282, %1444 ], [ 0x3FA23C0BE0000000, %1257 ]
  %1462 = phi float [ %1398, %1301 ], [ %1441, %1410 ], [ %1457, %1444 ], [ 1.000000e+00, %1257 ]
  %1463 = phi float [ %1399, %1301 ], [ %1442, %1410 ], [ %1458, %1444 ], [ 1.000000e+00, %1257 ]
  %1464 = phi float [ %1400, %1301 ], [ %1443, %1410 ], [ %1459, %1444 ], [ 1.000000e+00, %1257 ]
  %1465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.i32 %1465, 1
  %1467 = and i32 %1466, 1
  %1468 = icmp ne i32 %1467, 0
  %1469 = add i32 %40, 356
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 32
  %1473 = icmp ne i32 %1472, 0
  %1474 = and i1 %1468, %1473
  %1475 = select i1 %1474, float 1.000000e+00, float %1462
  %1476 = select i1 %1474, float 0x3FD3333340000000, float %1463
  %1477 = select i1 %1474, float 0x3FD3333340000000, float %1464
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 32
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1554, label %1482

; <label>:1482                                    ; preds = %1460
  %1483 = add i32 %40, 108
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %40, 380
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = add i32 %1488, 0
  %1490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1490, %dx.types.Handle %75, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = extractvalue %dx.types.ResRet.f32 %1491, 3
  %1496 = and i32 %1485, 255
  %1497 = uitofp i32 %1496 to float
  %1498 = lshr i32 %1485, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = lshr i32 %1485, 16
  %1502 = and i32 %1501, 255
  %1503 = uitofp i32 %1502 to float
  %1504 = fmul fast float %1503, 0x3F70101000000000
  %1505 = fmul fast float %1492, %1497
  %1506 = fadd fast float %1505, %1500
  %1507 = fmul fast float %1506, 0x3F70101000000000
  %1508 = fadd fast float %1493, -5.000000e-01
  %1509 = fadd fast float %1495, -5.000000e-01
  %1510 = fmul fast float %1508, %1504
  %1511 = fmul fast float %1509, %1504
  %1512 = fadd fast float %1510, 5.000000e-01
  %1513 = fadd fast float %1511, 5.000000e-01
  %1514 = fmul fast float %1512, 2.000000e+00
  %1515 = fadd fast float %1514, -1.000000e+00
  %1516 = fmul fast float %1513, 2.000000e+00
  %1517 = fadd fast float %1516, -1.000000e+00
  %1518 = fadd fast float %1515, %1517
  %1519 = fmul fast float %1518, 5.000000e-01
  %1520 = fsub fast float %1515, %1517
  %1521 = fmul fast float %1520, 5.000000e-01
  %1522 = call float @dx.op.unary.f32(i32 6, float %1519)  ; FAbs(value)
  %1523 = fsub fast float 1.000000e+00, %1522
  %1524 = call float @dx.op.unary.f32(i32 6, float %1521)  ; FAbs(value)
  %1525 = fsub fast float %1523, %1524
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1519, float %1521, float %1525, float %1519, float %1521, float %1525)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = call float @dx.op.unary.f32(i32 25, float %1526)  ; Rsqrt(value)
  %1528 = fmul fast float %1519, %1527
  %1529 = fmul fast float %1521, %1527
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 67108864
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1550, label %1534

; <label>:1534                                    ; preds = %1482
  %1535 = add i32 %40, 296
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 65535
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 65535
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = lshr i32 %1537, 16
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = fsub fast float %1507, %1545
  %1547 = fmul fast float %1546, %1539
  %1548 = fadd fast float %1547, %1543
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  br label %1550

; <label>:1550                                    ; preds = %1534, %1482
  %1551 = phi float [ %1549, %1534 ], [ %1507, %1482 ]
  %1552 = call float @dx.op.dot2.f32(i32 54, float %1528, float %1529, float %971, float %972)  ; Dot2(ax,ay,bx,by)
  %1553 = call float @dx.op.dot2.f32(i32 54, float %1528, float %1529, float %973, float %974)  ; Dot2(ax,ay,bx,by)
  br label %1554

; <label>:1554                                    ; preds = %1550, %1460
  %1555 = phi float [ %1551, %1550 ], [ 0x3FD6666660000000, %1460 ]
  %1556 = phi float [ %1552, %1550 ], [ 0.000000e+00, %1460 ]
  %1557 = phi float [ %1553, %1550 ], [ 0.000000e+00, %1460 ]
  %1558 = phi float [ %1494, %1550 ], [ 1.000000e+00, %1460 ]
  %1559 = add i32 %40, 176
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = lshr i32 %1561, 22
  %1563 = shl nuw nsw i32 %1562, 5
  %1564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1563)  ; LegacyF16ToF32(value)
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 64
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1602, label %1569

; <label>:1569                                    ; preds = %1554
  %1570 = add i32 %40, 396
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = add i32 %1572, 0
  %1574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 131072
  %1578 = icmp eq i32 %1577, 0
  %1579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1574, %dx.types.Handle %75, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = fmul fast float %1580, %240
  %1584 = fmul fast float %1581, %243
  %1585 = fmul fast float %1582, %246
  br i1 %1578, label %1592, label %1586

; <label>:1586                                    ; preds = %1569
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = fmul fast float %1588, %1583
  %1590 = fmul fast float %1588, %1584
  %1591 = fmul fast float %1588, %1585
  br label %1592

; <label>:1592                                    ; preds = %1586, %1569
  %1593 = phi float [ %1589, %1586 ], [ %1583, %1569 ]
  %1594 = phi float [ %1590, %1586 ], [ %1584, %1569 ]
  %1595 = phi float [ %1591, %1586 ], [ %1585, %1569 ]
  %1596 = fmul fast float %1593, %1564
  %1597 = select i1 %178, float %1596, float %1593
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1594, float %1595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = select i1 %178, float 0.000000e+00, float %1593
  %1600 = select i1 %178, float %1598, float %1594
  %1601 = select i1 %178, float 0.000000e+00, float %1595
  br label %1602

; <label>:1602                                    ; preds = %1592, %1554
  %1603 = phi float [ %1599, %1592 ], [ 0.000000e+00, %1554 ]
  %1604 = phi float [ %1600, %1592 ], [ 0.000000e+00, %1554 ]
  %1605 = phi float [ %1601, %1592 ], [ 0.000000e+00, %1554 ]
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 10240
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1654, label %1610

; <label>:1610                                    ; preds = %1602
  %1611 = add i32 %40, 460
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = add i32 %1613, 0
  %1615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1615, %dx.types.Handle %76, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 1
  %1618 = extractvalue %dx.types.ResRet.f32 %1616, 3
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 1048576
  %1622 = icmp ne i32 %1621, 0
  %1623 = and i32 %1620, 8192
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1640, label %1625

; <label>:1625                                    ; preds = %1610
  %1626 = extractvalue %dx.types.ResRet.f32 %1616, 2
  %1627 = select i1 %1622, float %1626, float %1617
  %1628 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1629 = select i1 %1622, float %1628, float %1617
  %1630 = add i32 %40, 112
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = lshr i32 %1632, 16
  %1634 = and i32 %1633, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F80101020000000
  %1637 = fmul fast float %1636, %1629
  %1638 = fmul fast float %1636, %1617
  %1639 = fmul fast float %1636, %1627
  br label %1640

; <label>:1640                                    ; preds = %1625, %1610
  %1641 = phi float [ %1637, %1625 ], [ 0.000000e+00, %1610 ]
  %1642 = phi float [ %1638, %1625 ], [ 0.000000e+00, %1610 ]
  %1643 = phi float [ %1639, %1625 ], [ 0.000000e+00, %1610 ]
  %1644 = and i32 %1620, 2048
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1654, label %1646

; <label>:1646                                    ; preds = %1640
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = shl i32 %1648, 4
  %1650 = and i32 %1649, 32752
  %1651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1650)  ; LegacyF16ToF32(value)
  %1652 = fmul fast float %1651, %1618
  %1653 = call float @dx.op.binary.f32(i32 35, float %1652, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1654

; <label>:1654                                    ; preds = %1646, %1640, %1602
  %1655 = phi float [ %1641, %1646 ], [ %1641, %1640 ], [ 0.000000e+00, %1602 ]
  %1656 = phi float [ %1642, %1646 ], [ %1642, %1640 ], [ 0.000000e+00, %1602 ]
  %1657 = phi float [ %1643, %1646 ], [ %1643, %1640 ], [ 0.000000e+00, %1602 ]
  %1658 = phi float [ %1653, %1646 ], [ 0x3F70101020000000, %1640 ], [ 0x3F70101020000000, %1602 ]
  %1659 = add i32 %40, 112
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 255
  %1663 = uitofp i32 %1662 to float
  %1664 = lshr i32 %1661, 8
  %1665 = and i32 %1664, 255
  %1666 = uitofp i32 %1665 to float
  %1667 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1476, float %1477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1668 = fmul fast float %1666, %1667
  %1669 = fadd fast float %1668, %1663
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  br i1 %959, label %1672, label %1680

; <label>:1672                                    ; preds = %1654
  %1673 = fsub fast float 1.000000e+00, %1255
  %1674 = fmul fast float %1673, %943
  %1675 = fmul fast float %1673, %944
  %1676 = fmul fast float %1673, %945
  %1677 = fmul fast float %1673, %946
  %1678 = fmul fast float %1673, %947
  %1679 = fmul fast float %1673, %948
  br label %1680

; <label>:1680                                    ; preds = %1672, %1654
  %1681 = phi float [ %1674, %1672 ], [ %943, %1654 ]
  %1682 = phi float [ %1675, %1672 ], [ %944, %1654 ]
  %1683 = phi float [ %1676, %1672 ], [ %945, %1654 ]
  %1684 = phi float [ %1677, %1672 ], [ %946, %1654 ]
  %1685 = phi float [ %1678, %1672 ], [ %947, %1654 ]
  %1686 = phi float [ %1679, %1672 ], [ %948, %1654 ]
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 3
  %1690 = icmp eq i32 %1689, 3
  br i1 %1690, label %1769, label %1691

; <label>:1691                                    ; preds = %1680
  %1692 = and i32 %1688, 16
  %1693 = icmp ne i32 %1692, 0
  %1694 = select i1 %1693, float %1255, float 0.000000e+00
  %1695 = icmp eq i32 %1689, 0
  br i1 %1695, label %1696, label %1724

; <label>:1696                                    ; preds = %1691
  %1697 = and i32 %1688, 64
  %1698 = icmp ne i32 %1697, 0
  %1699 = select i1 %1698, float %1255, float 0.000000e+00
  %1700 = fsub fast float %1475, %1681
  %1701 = fsub fast float %1476, %1682
  %1702 = fsub fast float %1477, %1683
  %1703 = fmul fast float %1694, %1700
  %1704 = fmul fast float %1694, %1701
  %1705 = fmul fast float %1694, %1702
  %1706 = fadd fast float %1703, %1681
  %1707 = fadd fast float %1704, %1682
  %1708 = fadd fast float %1705, %1683
  %1709 = fsub fast float %1461, %952
  %1710 = fmul fast float %1694, %1709
  %1711 = fadd fast float %1710, %952
  %1712 = fsub fast float %1603, %1684
  %1713 = fsub fast float %1604, %1685
  %1714 = fsub fast float %1605, %1686
  %1715 = fmul fast float %1699, %1712
  %1716 = fmul fast float %1699, %1713
  %1717 = fmul fast float %1699, %1714
  %1718 = fadd fast float %1715, %1684
  %1719 = fadd fast float %1716, %1685
  %1720 = fadd fast float %1717, %1686
  %1721 = fsub fast float %1671, %957
  %1722 = fmul fast float %1694, %1721
  %1723 = fadd fast float %1722, %957
  br label %1769

; <label>:1724                                    ; preds = %1691
  %1725 = icmp eq i32 %1689, 1
  br i1 %1725, label %1726, label %1739

; <label>:1726                                    ; preds = %1724
  %1727 = fadd fast float %1475, -1.000000e+00
  %1728 = fadd fast float %1476, -1.000000e+00
  %1729 = fadd fast float %1477, -1.000000e+00
  %1730 = fmul fast float %1694, %1727
  %1731 = fmul fast float %1694, %1728
  %1732 = fmul fast float %1694, %1729
  %1733 = fadd fast float %1730, 1.000000e+00
  %1734 = fadd fast float %1731, 1.000000e+00
  %1735 = fadd fast float %1732, 1.000000e+00
  %1736 = fmul fast float %1733, %1681
  %1737 = fmul fast float %1734, %1682
  %1738 = fmul fast float %1735, %1683
  br label %1769

; <label>:1739                                    ; preds = %1724
  %1740 = icmp eq i32 %1689, 2
  br i1 %1740, label %1741, label %1769

; <label>:1741                                    ; preds = %1739
  %1742 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1743 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1744 = call float @dx.op.unary.f32(i32 24, float %1477)  ; Sqrt(value)
  %1745 = fadd fast float %1742, -5.000000e-01
  %1746 = fadd fast float %1743, -5.000000e-01
  %1747 = fadd fast float %1744, -5.000000e-01
  %1748 = fmul fast float %1745, %1694
  %1749 = fmul fast float %1746, %1694
  %1750 = fmul fast float %1747, %1694
  %1751 = fadd fast float %1748, 5.000000e-01
  %1752 = fadd fast float %1749, 5.000000e-01
  %1753 = fadd fast float %1750, 5.000000e-01
  %1754 = fmul fast float %1751, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1755, %1681
  %1757 = fadd fast float %1756, %1754
  %1758 = fmul fast float %1757, %1681
  %1759 = fmul fast float %1752, 2.000000e+00
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = fmul fast float %1760, %1682
  %1762 = fadd fast float %1761, %1759
  %1763 = fmul fast float %1762, %1682
  %1764 = fmul fast float %1753, 2.000000e+00
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = fmul fast float %1765, %1683
  %1767 = fadd fast float %1766, %1764
  %1768 = fmul fast float %1767, %1683
  br label %1769

; <label>:1769                                    ; preds = %1741, %1739, %1726, %1696, %1680
  %1770 = phi float [ %1681, %1680 ], [ %1758, %1741 ], [ %1681, %1739 ], [ %1736, %1726 ], [ %1706, %1696 ]
  %1771 = phi float [ %1682, %1680 ], [ %1763, %1741 ], [ %1682, %1739 ], [ %1737, %1726 ], [ %1707, %1696 ]
  %1772 = phi float [ %1683, %1680 ], [ %1768, %1741 ], [ %1683, %1739 ], [ %1738, %1726 ], [ %1708, %1696 ]
  %1773 = phi float [ %1684, %1680 ], [ %1684, %1741 ], [ %1684, %1739 ], [ %1684, %1726 ], [ %1718, %1696 ]
  %1774 = phi float [ %1685, %1680 ], [ %1685, %1741 ], [ %1685, %1739 ], [ %1685, %1726 ], [ %1719, %1696 ]
  %1775 = phi float [ %1686, %1680 ], [ %1686, %1741 ], [ %1686, %1739 ], [ %1686, %1726 ], [ %1720, %1696 ]
  %1776 = phi float [ %952, %1680 ], [ %952, %1741 ], [ %952, %1739 ], [ %952, %1726 ], [ %1711, %1696 ]
  %1777 = phi float [ %957, %1680 ], [ %957, %1741 ], [ %957, %1739 ], [ %957, %1726 ], [ %1723, %1696 ]
  %1778 = and i32 %1688, 12
  %1779 = icmp eq i32 %1778, 12
  br i1 %1779, label %1886, label %1780

; <label>:1780                                    ; preds = %1769
  %1781 = and i32 %1688, 2097184
  %1782 = icmp eq i32 %1781, 2097184
  %1783 = select i1 %1782, float %1255, float 0.000000e+00
  %1784 = and i32 %1688, 4194336
  %1785 = icmp eq i32 %1784, 4194336
  %1786 = select i1 %1785, float %1255, float 0.000000e+00
  %1787 = and i32 %1688, 8388640
  %1788 = icmp eq i32 %1787, 8388640
  %1789 = select i1 %1788, float %1255, float 0.000000e+00
  %1790 = and i32 %1688, 2048
  %1791 = icmp ne i32 %1790, 0
  %1792 = select i1 %1791, float %1255, float 0.000000e+00
  %1793 = and i32 %1688, 8192
  %1794 = icmp ne i32 %1793, 0
  %1795 = select i1 %1794, float %1255, float 0.000000e+00
  %1796 = icmp eq i32 %1778, 0
  br i1 %1796, label %1797, label %1822

; <label>:1797                                    ; preds = %1780
  %1798 = fsub fast float %1556, %941
  %1799 = fsub fast float %1557, %942
  %1800 = fmul fast float %1783, %1798
  %1801 = fmul fast float %1783, %1799
  %1802 = fadd fast float %1800, %941
  %1803 = fadd fast float %1801, %942
  %1804 = fsub fast float %1558, %955
  %1805 = fmul fast float %1786, %1804
  %1806 = fadd fast float %1805, %955
  %1807 = fsub fast float %1555, %954
  %1808 = fmul fast float %1789, %1807
  %1809 = fadd fast float %1808, %954
  %1810 = fsub fast float %1658, %956
  %1811 = fmul fast float %1792, %1810
  %1812 = fadd fast float %1811, %956
  %1813 = fsub fast float %1655, %949
  %1814 = fsub fast float %1656, %950
  %1815 = fsub fast float %1657, %951
  %1816 = fmul fast float %1795, %1813
  %1817 = fmul fast float %1795, %1814
  %1818 = fmul fast float %1795, %1815
  %1819 = fadd fast float %1816, %949
  %1820 = fadd fast float %1817, %950
  %1821 = fadd fast float %1818, %951
  br label %1886

; <label>:1822                                    ; preds = %1780
  %1823 = icmp eq i32 %1778, 4
  br i1 %1823, label %1824, label %1864

; <label>:1824                                    ; preds = %1822
  %1825 = fmul fast float %1783, %1556
  %1826 = fmul fast float %1783, %1557
  %1827 = fadd fast float %1825, %941
  %1828 = fadd fast float %1826, %942
  %1829 = call float @dx.op.binary.f32(i32 36, float %955, float %1558)  ; FMin(a,b)
  %1830 = fsub fast float %1829, %955
  %1831 = fmul fast float %1830, %1786
  %1832 = fadd fast float %1831, %955
  %1833 = fadd fast float %1555, %954
  %1834 = fmul fast float %1833, 0x3FF337FAE0000000
  %1835 = fmul fast float %954, %954
  %1836 = fmul fast float %1555, %1555
  %1837 = fadd fast float %1836, %1835
  %1838 = fmul fast float %1837, 0x3FE5152B00000000
  %1839 = fmul fast float %954, 0xBFCC1F85E0000000
  %1840 = fmul fast float %1839, %1555
  %1841 = fadd fast float %1840, 0xBFE1363700000000
  %1842 = fadd fast float %1841, %1834
  %1843 = fsub fast float %1842, %1838
  %1844 = fmul fast float %1833, 0x3FBA6F0D00000000
  %1845 = fmul fast float %1837, 0x3FD0432880000000
  %1846 = fmul fast float %954, 0xBFEF110800000000
  %1847 = fmul fast float %1846, %1555
  %1848 = fadd fast float %1847, 1.000000e+00
  %1849 = fsub fast float %1848, %1844
  %1850 = fadd fast float %1849, %1845
  %1851 = fdiv fast float %1843, %1850
  %1852 = call float @dx.op.unary.f32(i32 7, float %1851)  ; Saturate(value)
  %1853 = fsub fast float %1852, %954
  %1854 = fmul fast float %1853, %1789
  %1855 = fadd fast float %1854, %954
  %1856 = fmul fast float %1792, %1658
  %1857 = fadd fast float %1856, %956
  %1858 = fmul fast float %1795, %1655
  %1859 = fmul fast float %1795, %1656
  %1860 = fmul fast float %1795, %1657
  %1861 = fadd fast float %1858, %949
  %1862 = fadd fast float %1859, %950
  %1863 = fadd fast float %1860, %951
  br label %1886

; <label>:1864                                    ; preds = %1822
  %1865 = icmp eq i32 %1778, 8
  br i1 %1865, label %1866, label %1886

; <label>:1866                                    ; preds = %1864
  %1867 = fmul fast float %1783, %1556
  %1868 = fmul fast float %1783, %1557
  %1869 = fadd fast float %1867, %941
  %1870 = fadd fast float %1868, %942
  %1871 = call float @dx.op.binary.f32(i32 36, float %955, float %1558)  ; FMin(a,b)
  %1872 = fsub fast float %1871, %955
  %1873 = fmul fast float %1872, %1786
  %1874 = fadd fast float %1873, %955
  %1875 = fsub fast float %1555, %954
  %1876 = fmul fast float %1789, %1875
  %1877 = fadd fast float %1876, %954
  %1878 = fmul fast float %1792, %1658
  %1879 = fadd fast float %1878, %956
  %1880 = fmul fast float %1795, %1655
  %1881 = fmul fast float %1795, %1656
  %1882 = fmul fast float %1795, %1657
  %1883 = fadd fast float %1880, %949
  %1884 = fadd fast float %1881, %950
  %1885 = fadd fast float %1882, %951
  br label %1886

; <label>:1886                                    ; preds = %1866, %1864, %1824, %1797, %1769, %1254, %958, %940
  %1887 = phi float [ %941, %1769 ], [ %941, %1254 ], [ %941, %940 ], [ %1869, %1866 ], [ %941, %1864 ], [ %1827, %1824 ], [ %1802, %1797 ], [ %941, %958 ]
  %1888 = phi float [ %942, %1769 ], [ %942, %1254 ], [ %942, %940 ], [ %1870, %1866 ], [ %942, %1864 ], [ %1828, %1824 ], [ %1803, %1797 ], [ %942, %958 ]
  %1889 = phi float [ %1770, %1769 ], [ %943, %1254 ], [ %943, %940 ], [ %1770, %1866 ], [ %1770, %1864 ], [ %1770, %1824 ], [ %1770, %1797 ], [ %943, %958 ]
  %1890 = phi float [ %1771, %1769 ], [ %944, %1254 ], [ %944, %940 ], [ %1771, %1866 ], [ %1771, %1864 ], [ %1771, %1824 ], [ %1771, %1797 ], [ %944, %958 ]
  %1891 = phi float [ %1772, %1769 ], [ %945, %1254 ], [ %945, %940 ], [ %1772, %1866 ], [ %1772, %1864 ], [ %1772, %1824 ], [ %1772, %1797 ], [ %945, %958 ]
  %1892 = phi float [ %1773, %1769 ], [ %946, %1254 ], [ %946, %940 ], [ %1773, %1866 ], [ %1773, %1864 ], [ %1773, %1824 ], [ %1773, %1797 ], [ %946, %958 ]
  %1893 = phi float [ %1774, %1769 ], [ %947, %1254 ], [ %947, %940 ], [ %1774, %1866 ], [ %1774, %1864 ], [ %1774, %1824 ], [ %1774, %1797 ], [ %947, %958 ]
  %1894 = phi float [ %1775, %1769 ], [ %948, %1254 ], [ %948, %940 ], [ %1775, %1866 ], [ %1775, %1864 ], [ %1775, %1824 ], [ %1775, %1797 ], [ %948, %958 ]
  %1895 = phi float [ %949, %1769 ], [ %949, %1254 ], [ %949, %940 ], [ %1883, %1866 ], [ %949, %1864 ], [ %1861, %1824 ], [ %1819, %1797 ], [ %949, %958 ]
  %1896 = phi float [ %950, %1769 ], [ %950, %1254 ], [ %950, %940 ], [ %1884, %1866 ], [ %950, %1864 ], [ %1862, %1824 ], [ %1820, %1797 ], [ %950, %958 ]
  %1897 = phi float [ %951, %1769 ], [ %951, %1254 ], [ %951, %940 ], [ %1885, %1866 ], [ %951, %1864 ], [ %1863, %1824 ], [ %1821, %1797 ], [ %951, %958 ]
  %1898 = phi float [ %1776, %1769 ], [ %952, %1254 ], [ %952, %940 ], [ %1776, %1866 ], [ %1776, %1864 ], [ %1776, %1824 ], [ %1776, %1797 ], [ %952, %958 ]
  %1899 = phi float [ %954, %1769 ], [ %954, %1254 ], [ %954, %940 ], [ %1877, %1866 ], [ %954, %1864 ], [ %1855, %1824 ], [ %1809, %1797 ], [ %954, %958 ]
  %1900 = phi float [ %955, %1769 ], [ %955, %1254 ], [ %955, %940 ], [ %1874, %1866 ], [ %955, %1864 ], [ %1832, %1824 ], [ %1806, %1797 ], [ %955, %958 ]
  %1901 = phi float [ %956, %1769 ], [ %956, %1254 ], [ %956, %940 ], [ %1879, %1866 ], [ %956, %1864 ], [ %1857, %1824 ], [ %1812, %1797 ], [ %956, %958 ]
  %1902 = phi float [ %1777, %1769 ], [ %957, %1254 ], [ %957, %940 ], [ %1777, %1866 ], [ %1777, %1864 ], [ %1777, %1824 ], [ %1777, %1797 ], [ %957, %958 ]
  br i1 %367, label %2831, label %1903

; <label>:1903                                    ; preds = %1886
  %1904 = icmp ult i32 %420, 3
  %1905 = add i32 %40, 56
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = add i32 %40, 60
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = or i32 %1910, %1907
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %2831, label %1913

; <label>:1913                                    ; preds = %1903
  %1914 = and i32 %1907, 262144
  %1915 = icmp ne i32 %1914, 0
  %1916 = select i1 %1915, float %42, float 1.000000e+00
  %1917 = select i1 %1915, float %43, float 0.000000e+00
  %1918 = select i1 %1915, float %44, float 0.000000e+00
  %1919 = select i1 %1915, float %45, float 1.000000e+00
  %1920 = select i1 %1915, float %46, float %67
  %1921 = select i1 %1915, float %47, float %68
  %1922 = add i32 %40, 316
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = lshr i32 %1924, 16
  %1926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1925)  ; LegacyF16ToF32(value)
  %1927 = fmul fast float %1926, 0x3F50624DE0000000
  %1928 = add i32 %40, 120
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = lshr i32 %1930, 16
  %1932 = and i32 %1931, 255
  %1933 = lshr i32 %1930, 24
  %1934 = add i32 %40, 324
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = and i32 %1936, 65535
  %1938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1937)  ; LegacyF16ToF32(value)
  %1939 = lshr i32 %1936, 16
  %1940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1939)  ; LegacyF16ToF32(value)
  %1941 = add i32 %40, 64
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = lshr i32 %1943, 22
  %1945 = shl nuw nsw i32 %1944, 5
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = shl i32 %1943, 4
  %1948 = and i32 %1947, 32752
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = lshr i32 %1943, 7
  %1951 = and i32 %1950, 32752
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 3
  %1955 = fmul fast float %1954, 1.000000e+03
  %1956 = fmul fast float %317, %1955
  %1957 = call float @dx.op.unary.f32(i32 22, float %1956)  ; Frc(value)
  %1958 = fadd fast float %1957, %307
  %1959 = fmul fast float %318, %1955
  %1960 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1961 = fadd fast float %1960, %309
  %1962 = fmul fast float %1927, %1955
  %1963 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %1964 = fmul fast float %1963, 0x401921FB60000000
  %1965 = fadd fast float %1964, %1946
  %1966 = call float @dx.op.unary.f32(i32 13, float %1965)  ; Sin(value)
  %1967 = call float @dx.op.unary.f32(i32 12, float %1965)  ; Cos(value)
  %1968 = fsub fast float -0.000000e+00, %1966
  %1969 = fadd fast float %1920, -5.000000e-01
  %1970 = fadd fast float %1921, -5.000000e-01
  %1971 = fmul fast float %1938, %1969
  %1972 = fmul fast float %1940, %1970
  %1973 = fadd fast float %1971, 5.000000e-01
  %1974 = fadd fast float %1972, 5.000000e-01
  %1975 = fmul fast float %1949, %1973
  %1976 = fmul fast float %1952, %1974
  %1977 = fmul fast float %1967, %1975
  %1978 = call float @dx.op.tertiary.f32(i32 46, float %1968, float %1976, float %1977)  ; FMad(a,b,c)
  %1979 = fmul fast float %1966, %1975
  %1980 = call float @dx.op.tertiary.f32(i32 46, float %1967, float %1976, float %1979)  ; FMad(a,b,c)
  %1981 = fadd fast float %1958, %1978
  %1982 = fadd fast float %1961, %1980
  %1983 = icmp ugt i32 %1932, 1
  %1984 = icmp ugt i32 %1930, 33554431
  %1985 = or i1 %1984, %1983
  br i1 %1985, label %1986, label %2011

; <label>:1986                                    ; preds = %1913
  %1987 = add i32 %40, 260
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = lshr i32 %1989, 16
  %1991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1990)  ; LegacyF16ToF32(value)
  %1992 = fmul fast float %1954, %1991
  %1993 = call float @dx.op.unary.f32(i32 22, float %1992)  ; Frc(value)
  %1994 = mul nuw nsw i32 %1932, %1933
  %1995 = uitofp i32 %1994 to float
  %1996 = fmul fast float %1993, %1995
  %1997 = call float @dx.op.unary.f32(i32 27, float %1996)  ; Round_ni(value)
  %1998 = fptoui float %1997 to i32
  %1999 = urem i32 %1998, %1932
  %2000 = udiv i32 %1998, %1933
  %2001 = call float @dx.op.unary.f32(i32 22, float %1981)  ; Frc(value)
  %2002 = call float @dx.op.unary.f32(i32 22, float %1982)  ; Frc(value)
  %2003 = uitofp i32 %1999 to float
  %2004 = uitofp i32 %2000 to float
  %2005 = fadd fast float %2001, %2003
  %2006 = fadd fast float %2002, %2004
  %2007 = uitofp i32 %1932 to float
  %2008 = uitofp i32 %1933 to float
  %2009 = fdiv fast float %2005, %2007
  %2010 = fdiv fast float %2006, %2008
  br label %2011

; <label>:2011                                    ; preds = %1986, %1913
  %2012 = phi float [ %2009, %1986 ], [ %1981, %1913 ]
  %2013 = phi float [ %2010, %1986 ], [ %1982, %1913 ]
  %2014 = and i32 %1907, 16777216
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2125, label %2016

; <label>:2016                                    ; preds = %2011
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.CBufRet.f32 %2017, 2
  %2021 = fadd fast float %2018, %134
  %2022 = fadd fast float %2019, %135
  %2023 = fadd fast float %2020, %136
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = icmp eq i32 %41, 65535
  br i1 %2027, label %2122, label %2028

; <label>:2028                                    ; preds = %2016
  %2029 = lshr i32 %41, 1
  %2030 = shl i32 %2029, 2
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %41, 1
  %2034 = icmp ne i32 %2033, 0
  %2035 = lshr i32 %2032, 16
  %2036 = and i32 %2032, 65535
  %2037 = select i1 %2034, i32 %2035, i32 %2036
  %2038 = icmp eq i32 %2037, 65535
  br i1 %2038, label %2118, label %2039

; <label>:2039                                    ; preds = %2028
  %2040 = mul nuw nsw i32 %2037, 40
  %2041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.ResRet.f32 %2041, 1
  %2044 = extractvalue %dx.types.ResRet.f32 %2041, 2
  %2045 = add nuw nsw i32 %2040, 12
  %2046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.f32 %2046, 2
  %2050 = add nuw nsw i32 %2040, 24
  %2051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 1
  %2054 = extractvalue %dx.types.ResRet.f32 %2051, 2
  %2055 = add nuw nsw i32 %2040, 36
  %2056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = fsub fast float %2021, %2042
  %2059 = fsub fast float %2022, %2043
  %2060 = fsub fast float %2023, %2044
  %2061 = fmul fast float %2057, %2058
  %2062 = fmul fast float %2057, %2059
  %2063 = fmul fast float %2057, %2060
  %2064 = call float @dx.op.unary.f32(i32 27, float %2061)  ; Round_ni(value)
  %2065 = call float @dx.op.unary.f32(i32 27, float %2062)  ; Round_ni(value)
  %2066 = call float @dx.op.unary.f32(i32 27, float %2063)  ; Round_ni(value)
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = fadd fast float %2065, 5.000000e-01
  %2069 = fadd fast float %2066, 5.000000e-01
  %2070 = fmul fast float %2067, %2047
  %2071 = fmul fast float %2068, %2048
  %2072 = fmul fast float %2069, %2049
  %2073 = shl i32 %41, 2
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = add i32 %2075, 0
  %2077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2078 = call float @dx.op.unary.f32(i32 22, float %2070)  ; Frc(value)
  %2079 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2080 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  %2081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2077, %dx.types.Handle %37, float %2078, float %2079, float %2080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.ResRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.ResRet.f32 %2081, 2
  %2085 = fmul fast float %2082, 1.023000e+03
  %2086 = fmul fast float %2083, 1.023000e+03
  %2087 = fmul fast float %2084, 1.023000e+03
  %2088 = fadd fast float %2085, 5.000000e-01
  %2089 = fadd fast float %2086, 5.000000e-01
  %2090 = fadd fast float %2087, 5.000000e-01
  %2091 = call float @dx.op.unary.f32(i32 27, float %2088)  ; Round_ni(value)
  %2092 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2093 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2094 = fsub fast float %2061, %2064
  %2095 = fsub fast float %2062, %2065
  %2096 = fsub fast float %2063, %2066
  %2097 = fmul fast float %2094, 7.500000e-01
  %2098 = fmul fast float %2095, 7.500000e-01
  %2099 = fmul fast float %2096, 7.500000e-01
  %2100 = fadd fast float %2064, 1.250000e-01
  %2101 = fadd fast float %2100, %2097
  %2102 = fadd fast float %2101, %2091
  %2103 = fadd fast float %2065, 1.250000e-01
  %2104 = fadd fast float %2103, %2098
  %2105 = fadd fast float %2104, %2092
  %2106 = fadd fast float %2066, 1.250000e-01
  %2107 = fadd fast float %2106, %2099
  %2108 = fadd fast float %2107, %2093
  %2109 = fmul fast float %2102, %2052
  %2110 = fmul fast float %2105, %2053
  %2111 = fmul fast float %2108, %2054
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = add i32 %2113, 0
  %2115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2115, %dx.types.Handle %35, float %2109, float %2110, float %2111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  br label %2118

; <label>:2118                                    ; preds = %2039, %2028
  %2119 = phi float [ %2117, %2039 ], [ -1.000000e+00, %2028 ]
  %2120 = fadd fast float %2119, %2026
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  br label %2122

; <label>:2122                                    ; preds = %2118, %2016
  %2123 = phi float [ %2121, %2118 ], [ %2026, %2016 ]
  %2124 = fmul fast float %2123, %416
  br label %2125

; <label>:2125                                    ; preds = %2122, %2011
  %2126 = phi float [ %2124, %2122 ], [ %416, %2011 ]
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = and i32 %2128, 256
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %2177, label %2131

; <label>:2131                                    ; preds = %2125
  %2132 = add i32 %40, 432
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = add i32 %2134, 0
  %2136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2136, %dx.types.Handle %76, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = add i32 %40, 132
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = shl i32 %2141, 4
  %2143 = and i32 %2142, 32752
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = lshr i32 %2141, 7
  %2146 = and i32 %2145, 32752
  %2147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2146)  ; LegacyF16ToF32(value)
  %2148 = fsub fast float 1.000000e+00, %2126
  %2149 = call float @dx.op.binary.f32(i32 35, float %2148, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2150 = bitcast float %2126 to i32
  %2151 = sitofp i32 %2150 to float
  %2152 = fadd fast float %2151, 0xC1CFBF8940000000
  %2153 = fmul fast float %2147, %2152
  %2154 = fadd fast float %2153, 0x41CFBF8940000000
  %2155 = fptosi float %2154 to i32
  %2156 = bitcast i32 %2155 to float
  %2157 = bitcast float %2149 to i32
  %2158 = sitofp i32 %2157 to float
  %2159 = fadd fast float %2158, 0xC1CFBF8940000000
  %2160 = fmul fast float %2159, %2147
  %2161 = fadd fast float %2160, 0x41CFBF8940000000
  %2162 = fptosi float %2161 to i32
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2156, %2144
  %2165 = fmul fast float %2163, %2144
  %2166 = fsub fast float %2149, %2164
  %2167 = fadd fast float %2165, %2149
  %2168 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2170 = fsub fast float %2138, %2168
  %2171 = fsub fast float %2169, %2168
  %2172 = bitcast float %2171 to i32
  %2173 = sub nsw i32 2129859010, %2172
  %2174 = bitcast i32 %2173 to float
  %2175 = fmul fast float %2174, %2170
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  br label %2177

; <label>:2177                                    ; preds = %2131, %2125
  %2178 = phi float [ %2176, %2131 ], [ %2126, %2125 ]
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 128
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2199, label %2183

; <label>:2183                                    ; preds = %2177
  %2184 = add i32 %40, 416
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = add i32 %2186, 0
  %2188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2188, %dx.types.Handle %76, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2190 = extractvalue %dx.types.ResRet.f32 %2189, 0
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = and i32 %2192, 524288
  %2194 = icmp ne i32 %2193, 0
  %2195 = fcmp fast ogt float %2190, 0x3FE0101020000000
  %2196 = select i1 %2195, float 1.000000e+00, float 0.000000e+00
  %2197 = select i1 %2194, float %2196, float %2190
  %2198 = fmul fast float %2197, %2178
  br label %2199

; <label>:2199                                    ; preds = %2183, %2177
  %2200 = phi float [ %2198, %2183 ], [ %2178, %2177 ]
  %2201 = fcmp fast ult float %2200, 0x3F70101020000000
  br i1 %2201, label %2831, label %2202

; <label>:2202                                    ; preds = %2199
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 16
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2405, label %2207

; <label>:2207                                    ; preds = %2202
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = add i32 %40, 368
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2214, %dx.types.Handle %75, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  %2217 = extractvalue %dx.types.ResRet.f32 %2215, 1
  %2218 = extractvalue %dx.types.ResRet.f32 %2215, 2
  %2219 = extractvalue %dx.types.ResRet.f32 %2215, 3
  %2220 = and i32 %2209, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = lshr i32 %2209, 8
  %2223 = and i32 %2222, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = fmul fast float %2219, %2221
  %2226 = fadd fast float %2225, %2224
  %2227 = fmul fast float %2226, 0x3F70101000000000
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 512
  %2231 = icmp eq i32 %2230, 0
  br i1 %2231, label %2240, label %2232

; <label>:2232                                    ; preds = %2207
  %2233 = add i32 %40, 448
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = add i32 %2235, 0
  %2237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2237, %dx.types.Handle %76, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  br label %2240

; <label>:2240                                    ; preds = %2232, %2207
  %2241 = phi float [ %2239, %2232 ], [ 1.000000e+00, %2207 ]
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 33554432
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2352, label %2246

; <label>:2246                                    ; preds = %2240
  %2247 = add i32 %40, 256
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 65535
  %2251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2250)  ; LegacyF16ToF32(value)
  %2252 = lshr i32 %2249, 16
  %2253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2252)  ; LegacyF16ToF32(value)
  %2254 = add i32 %40, 260
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = lshr i32 %2260, 24
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = and i32 %2260, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = lshr i32 %2260, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2260, 16
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = add i32 %40, 252
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = lshr i32 %2277, 24
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = and i32 %2277, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = lshr i32 %2277, 8
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = lshr i32 %2277, 16
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101020000000
  %2292 = bitcast float %2216 to i32
  %2293 = ashr i32 %2292, 1
  %2294 = sub nsw i32 1597463174, %2293
  %2295 = bitcast i32 %2294 to float
  %2296 = fmul fast float %2216, 5.000000e-01
  %2297 = fmul fast float %2295, %2295
  %2298 = fmul fast float %2297, %2296
  %2299 = fsub fast float 1.500000e+00, %2298
  %2300 = fmul fast float %2295, %2216
  %2301 = fmul fast float %2300, %2299
  %2302 = bitcast float %2217 to i32
  %2303 = ashr i32 %2302, 1
  %2304 = sub nsw i32 1597463174, %2303
  %2305 = bitcast i32 %2304 to float
  %2306 = fmul fast float %2217, 5.000000e-01
  %2307 = fmul fast float %2305, %2305
  %2308 = fmul fast float %2307, %2306
  %2309 = fsub fast float 1.500000e+00, %2308
  %2310 = fmul fast float %2305, %2217
  %2311 = fmul fast float %2310, %2309
  %2312 = bitcast float %2218 to i32
  %2313 = ashr i32 %2312, 1
  %2314 = sub nsw i32 1597463174, %2313
  %2315 = bitcast i32 %2314 to float
  %2316 = fmul fast float %2218, 5.000000e-01
  %2317 = fmul fast float %2315, %2315
  %2318 = fmul fast float %2317, %2316
  %2319 = fsub fast float 1.500000e+00, %2318
  %2320 = fmul fast float %2315, %2218
  %2321 = fmul fast float %2320, %2319
  %2322 = fsub fast float %2301, %2283
  %2323 = fsub fast float %2311, %2287
  %2324 = fsub fast float %2321, %2291
  %2325 = fmul fast float %2322, %2251
  %2326 = fmul fast float %2323, %2253
  %2327 = fmul fast float %2324, %2258
  %2328 = fadd fast float %2325, %2266
  %2329 = fadd fast float %2326, %2270
  %2330 = fadd fast float %2327, %2274
  %2331 = call float @dx.op.unary.f32(i32 7, float %2328)  ; Saturate(value)
  %2332 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2333 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2334 = fmul fast float %2331, %2331
  %2335 = fmul fast float %2332, %2332
  %2336 = fmul fast float %2333, %2333
  %2337 = fsub fast float %2334, %2216
  %2338 = fsub fast float %2335, %2217
  %2339 = fsub fast float %2336, %2218
  %2340 = fmul fast float %2337, %2241
  %2341 = fmul fast float %2338, %2241
  %2342 = fmul fast float %2339, %2241
  %2343 = fadd fast float %2340, %2216
  %2344 = fadd fast float %2341, %2217
  %2345 = fadd fast float %2342, %2218
  %2346 = fadd fast float %2263, %2227
  %2347 = fsub fast float %2346, %2280
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2349 = fsub fast float %2348, %2227
  %2350 = fmul fast float %2349, %2241
  %2351 = fadd fast float %2350, %2227
  br label %2405

; <label>:2352                                    ; preds = %2240
  %2353 = and i32 %2243, 134217728
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2389, label %2355

; <label>:2355                                    ; preds = %2352
  %2356 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2357 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2358 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2359 = fadd fast float %2356, -5.000000e-01
  %2360 = fadd fast float %2357, -5.000000e-01
  %2361 = fadd fast float %2358, -5.000000e-01
  %2362 = fmul fast float %2359, %2241
  %2363 = fmul fast float %2360, %2241
  %2364 = fmul fast float %2361, %2241
  %2365 = fadd fast float %2362, 5.000000e-01
  %2366 = fadd fast float %2363, 5.000000e-01
  %2367 = fadd fast float %2364, 5.000000e-01
  %2368 = call float @dx.op.unary.f32(i32 24, float %2216)  ; Sqrt(value)
  %2369 = call float @dx.op.unary.f32(i32 24, float %2217)  ; Sqrt(value)
  %2370 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2371 = fmul fast float %2365, 2.000000e+00
  %2372 = fsub fast float 1.000000e+00, %2371
  %2373 = fmul fast float %2372, %2368
  %2374 = fadd fast float %2373, %2371
  %2375 = fmul fast float %2374, %2368
  %2376 = fmul fast float %2366, 2.000000e+00
  %2377 = fsub fast float 1.000000e+00, %2376
  %2378 = fmul fast float %2377, %2369
  %2379 = fadd fast float %2378, %2376
  %2380 = fmul fast float %2379, %2369
  %2381 = fmul fast float %2367, 2.000000e+00
  %2382 = fsub fast float 1.000000e+00, %2381
  %2383 = fmul fast float %2382, %2370
  %2384 = fadd fast float %2383, %2381
  %2385 = fmul fast float %2384, %2370
  %2386 = fmul fast float %2375, %2375
  %2387 = fmul fast float %2380, %2380
  %2388 = fmul fast float %2385, %2385
  br label %2405

; <label>:2389                                    ; preds = %2352
  %2390 = fmul fast float %294, %294
  %2391 = fmul fast float %298, %298
  %2392 = fmul fast float %302, %302
  %2393 = fadd fast float %2390, -1.000000e+00
  %2394 = fadd fast float %2391, -1.000000e+00
  %2395 = fadd fast float %2392, -1.000000e+00
  %2396 = fmul fast float %2241, %2393
  %2397 = fmul fast float %2241, %2394
  %2398 = fmul fast float %2241, %2395
  %2399 = fadd fast float %2396, 1.000000e+00
  %2400 = fadd fast float %2397, 1.000000e+00
  %2401 = fadd fast float %2398, 1.000000e+00
  %2402 = fmul fast float %2399, %2216
  %2403 = fmul fast float %2400, %2217
  %2404 = fmul fast float %2401, %2218
  br label %2405

; <label>:2405                                    ; preds = %2389, %2355, %2246, %2202
  %2406 = phi float [ %2351, %2246 ], [ %2227, %2355 ], [ %2227, %2389 ], [ 0x3FA23C0BE0000000, %2202 ]
  %2407 = phi float [ %2343, %2246 ], [ %2386, %2355 ], [ %2402, %2389 ], [ 1.000000e+00, %2202 ]
  %2408 = phi float [ %2344, %2246 ], [ %2387, %2355 ], [ %2403, %2389 ], [ 1.000000e+00, %2202 ]
  %2409 = phi float [ %2345, %2246 ], [ %2388, %2355 ], [ %2404, %2389 ], [ 1.000000e+00, %2202 ]
  %2410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.i32 %2410, 1
  %2412 = and i32 %2411, 1
  %2413 = icmp ne i32 %2412, 0
  %2414 = add i32 %40, 356
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 32
  %2418 = icmp ne i32 %2417, 0
  %2419 = and i1 %2413, %2418
  %2420 = select i1 %2419, float 1.000000e+00, float %2407
  %2421 = select i1 %2419, float 0x3FD3333340000000, float %2408
  %2422 = select i1 %2419, float 0x3FD3333340000000, float %2409
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 32
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2499, label %2427

; <label>:2427                                    ; preds = %2405
  %2428 = add i32 %40, 124
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = add i32 %40, 384
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = add i32 %2433, 0
  %2435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2435, %dx.types.Handle %75, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2437 = extractvalue %dx.types.ResRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.ResRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.ResRet.f32 %2436, 2
  %2440 = extractvalue %dx.types.ResRet.f32 %2436, 3
  %2441 = and i32 %2430, 255
  %2442 = uitofp i32 %2441 to float
  %2443 = lshr i32 %2430, 8
  %2444 = and i32 %2443, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = lshr i32 %2430, 16
  %2447 = and i32 %2446, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, 0x3F70101000000000
  %2450 = fmul fast float %2437, %2442
  %2451 = fadd fast float %2450, %2445
  %2452 = fmul fast float %2451, 0x3F70101000000000
  %2453 = fadd fast float %2438, -5.000000e-01
  %2454 = fadd fast float %2440, -5.000000e-01
  %2455 = fmul fast float %2453, %2449
  %2456 = fmul fast float %2454, %2449
  %2457 = fadd fast float %2455, 5.000000e-01
  %2458 = fadd fast float %2456, 5.000000e-01
  %2459 = fmul fast float %2457, 2.000000e+00
  %2460 = fadd fast float %2459, -1.000000e+00
  %2461 = fmul fast float %2458, 2.000000e+00
  %2462 = fadd fast float %2461, -1.000000e+00
  %2463 = fadd fast float %2460, %2462
  %2464 = fmul fast float %2463, 5.000000e-01
  %2465 = fsub fast float %2460, %2462
  %2466 = fmul fast float %2465, 5.000000e-01
  %2467 = call float @dx.op.unary.f32(i32 6, float %2464)  ; FAbs(value)
  %2468 = fsub fast float 1.000000e+00, %2467
  %2469 = call float @dx.op.unary.f32(i32 6, float %2466)  ; FAbs(value)
  %2470 = fsub fast float %2468, %2469
  %2471 = call float @dx.op.dot3.f32(i32 55, float %2464, float %2466, float %2470, float %2464, float %2466, float %2470)  ; Dot3(ax,ay,az,bx,by,bz)
  %2472 = call float @dx.op.unary.f32(i32 25, float %2471)  ; Rsqrt(value)
  %2473 = fmul fast float %2464, %2472
  %2474 = fmul fast float %2466, %2472
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %2476, 67108864
  %2478 = icmp eq i32 %2477, 0
  br i1 %2478, label %2495, label %2479

; <label>:2479                                    ; preds = %2427
  %2480 = add i32 %40, 312
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 65535
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 65535
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = lshr i32 %2482, 16
  %2490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2489)  ; LegacyF16ToF32(value)
  %2491 = fsub fast float %2452, %2490
  %2492 = fmul fast float %2491, %2484
  %2493 = fadd fast float %2492, %2488
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  br label %2495

; <label>:2495                                    ; preds = %2479, %2427
  %2496 = phi float [ %2494, %2479 ], [ %2452, %2427 ]
  %2497 = call float @dx.op.dot2.f32(i32 54, float %2473, float %2474, float %1916, float %1917)  ; Dot2(ax,ay,bx,by)
  %2498 = call float @dx.op.dot2.f32(i32 54, float %2473, float %2474, float %1918, float %1919)  ; Dot2(ax,ay,bx,by)
  br label %2499

; <label>:2499                                    ; preds = %2495, %2405
  %2500 = phi float [ %2496, %2495 ], [ 0x3FD6666660000000, %2405 ]
  %2501 = phi float [ %2497, %2495 ], [ 0.000000e+00, %2405 ]
  %2502 = phi float [ %2498, %2495 ], [ 0.000000e+00, %2405 ]
  %2503 = phi float [ %2439, %2495 ], [ 1.000000e+00, %2405 ]
  %2504 = add i32 %40, 192
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = lshr i32 %2506, 22
  %2508 = shl nuw nsw i32 %2507, 5
  %2509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2508)  ; LegacyF16ToF32(value)
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 64
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2547, label %2514

; <label>:2514                                    ; preds = %2499
  %2515 = add i32 %40, 400
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %2517, 0
  %2519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %2521, 131072
  %2523 = icmp eq i32 %2522, 0
  %2524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2519, %dx.types.Handle %75, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2528 = fmul fast float %2525, %282
  %2529 = fmul fast float %2526, %285
  %2530 = fmul fast float %2527, %288
  br i1 %2523, label %2537, label %2531

; <label>:2531                                    ; preds = %2514
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = fmul fast float %2533, %2528
  %2535 = fmul fast float %2533, %2529
  %2536 = fmul fast float %2533, %2530
  br label %2537

; <label>:2537                                    ; preds = %2531, %2514
  %2538 = phi float [ %2534, %2531 ], [ %2528, %2514 ]
  %2539 = phi float [ %2535, %2531 ], [ %2529, %2514 ]
  %2540 = phi float [ %2536, %2531 ], [ %2530, %2514 ]
  %2541 = fmul fast float %2538, %2509
  %2542 = select i1 %178, float %2541, float %2538
  %2543 = call float @dx.op.dot3.f32(i32 55, float %2542, float %2539, float %2540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2544 = select i1 %178, float 0.000000e+00, float %2538
  %2545 = select i1 %178, float %2543, float %2539
  %2546 = select i1 %178, float 0.000000e+00, float %2540
  br label %2547

; <label>:2547                                    ; preds = %2537, %2499
  %2548 = phi float [ %2544, %2537 ], [ 0.000000e+00, %2499 ]
  %2549 = phi float [ %2545, %2537 ], [ 0.000000e+00, %2499 ]
  %2550 = phi float [ %2546, %2537 ], [ 0.000000e+00, %2499 ]
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = and i32 %2552, 10240
  %2554 = icmp eq i32 %2553, 0
  br i1 %2554, label %2599, label %2555

; <label>:2555                                    ; preds = %2547
  %2556 = add i32 %40, 464
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = add i32 %2558, 0
  %2560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2560, %dx.types.Handle %76, float %2012, float %2013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 3
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 1048576
  %2567 = icmp ne i32 %2566, 0
  %2568 = and i32 %2565, 8192
  %2569 = icmp eq i32 %2568, 0
  br i1 %2569, label %2585, label %2570

; <label>:2570                                    ; preds = %2555
  %2571 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2572 = select i1 %2567, float %2571, float %2562
  %2573 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2574 = select i1 %2567, float %2573, float %2562
  %2575 = add i32 %40, 128
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = lshr i32 %2577, 16
  %2579 = and i32 %2578, 255
  %2580 = uitofp i32 %2579 to float
  %2581 = fmul fast float %2580, 0x3F80101020000000
  %2582 = fmul fast float %2581, %2574
  %2583 = fmul fast float %2581, %2562
  %2584 = fmul fast float %2581, %2572
  br label %2585

; <label>:2585                                    ; preds = %2570, %2555
  %2586 = phi float [ %2582, %2570 ], [ 0.000000e+00, %2555 ]
  %2587 = phi float [ %2583, %2570 ], [ 0.000000e+00, %2555 ]
  %2588 = phi float [ %2584, %2570 ], [ 0.000000e+00, %2555 ]
  %2589 = and i32 %2565, 2048
  %2590 = icmp eq i32 %2589, 0
  br i1 %2590, label %2599, label %2591

; <label>:2591                                    ; preds = %2585
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = shl i32 %2593, 4
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = fmul fast float %2596, %2563
  %2598 = call float @dx.op.binary.f32(i32 35, float %2597, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2599

; <label>:2599                                    ; preds = %2591, %2585, %2547
  %2600 = phi float [ %2586, %2591 ], [ %2586, %2585 ], [ 0.000000e+00, %2547 ]
  %2601 = phi float [ %2587, %2591 ], [ %2587, %2585 ], [ 0.000000e+00, %2547 ]
  %2602 = phi float [ %2588, %2591 ], [ %2588, %2585 ], [ 0.000000e+00, %2547 ]
  %2603 = phi float [ %2598, %2591 ], [ 0x3F70101020000000, %2585 ], [ 0x3F70101020000000, %2547 ]
  %2604 = add i32 %40, 128
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 255
  %2608 = uitofp i32 %2607 to float
  %2609 = lshr i32 %2606, 8
  %2610 = and i32 %2609, 255
  %2611 = uitofp i32 %2610 to float
  %2612 = call float @dx.op.dot3.f32(i32 55, float %2420, float %2421, float %2422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = fmul fast float %2611, %2612
  %2614 = fadd fast float %2613, %2608
  %2615 = fmul fast float %2614, 0x3F70101020000000
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  br i1 %1904, label %2617, label %2625

; <label>:2617                                    ; preds = %2599
  %2618 = fsub fast float 1.000000e+00, %2200
  %2619 = fmul fast float %2618, %1889
  %2620 = fmul fast float %2618, %1890
  %2621 = fmul fast float %2618, %1891
  %2622 = fmul fast float %2618, %1892
  %2623 = fmul fast float %2618, %1893
  %2624 = fmul fast float %2618, %1894
  br label %2625

; <label>:2625                                    ; preds = %2617, %2599
  %2626 = phi float [ %2619, %2617 ], [ %1889, %2599 ]
  %2627 = phi float [ %2620, %2617 ], [ %1890, %2599 ]
  %2628 = phi float [ %2621, %2617 ], [ %1891, %2599 ]
  %2629 = phi float [ %2622, %2617 ], [ %1892, %2599 ]
  %2630 = phi float [ %2623, %2617 ], [ %1893, %2599 ]
  %2631 = phi float [ %2624, %2617 ], [ %1894, %2599 ]
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 3
  %2635 = icmp eq i32 %2634, 3
  br i1 %2635, label %2714, label %2636

; <label>:2636                                    ; preds = %2625
  %2637 = and i32 %2633, 16
  %2638 = icmp ne i32 %2637, 0
  %2639 = select i1 %2638, float %2200, float 0.000000e+00
  %2640 = icmp eq i32 %2634, 0
  br i1 %2640, label %2641, label %2669

; <label>:2641                                    ; preds = %2636
  %2642 = and i32 %2633, 64
  %2643 = icmp ne i32 %2642, 0
  %2644 = select i1 %2643, float %2200, float 0.000000e+00
  %2645 = fsub fast float %2420, %2626
  %2646 = fsub fast float %2421, %2627
  %2647 = fsub fast float %2422, %2628
  %2648 = fmul fast float %2639, %2645
  %2649 = fmul fast float %2639, %2646
  %2650 = fmul fast float %2639, %2647
  %2651 = fadd fast float %2648, %2626
  %2652 = fadd fast float %2649, %2627
  %2653 = fadd fast float %2650, %2628
  %2654 = fsub fast float %2406, %1898
  %2655 = fmul fast float %2639, %2654
  %2656 = fadd fast float %2655, %1898
  %2657 = fsub fast float %2548, %2629
  %2658 = fsub fast float %2549, %2630
  %2659 = fsub fast float %2550, %2631
  %2660 = fmul fast float %2644, %2657
  %2661 = fmul fast float %2644, %2658
  %2662 = fmul fast float %2644, %2659
  %2663 = fadd fast float %2660, %2629
  %2664 = fadd fast float %2661, %2630
  %2665 = fadd fast float %2662, %2631
  %2666 = fsub fast float %2616, %1902
  %2667 = fmul fast float %2639, %2666
  %2668 = fadd fast float %2667, %1902
  br label %2714

; <label>:2669                                    ; preds = %2636
  %2670 = icmp eq i32 %2634, 1
  br i1 %2670, label %2671, label %2684

; <label>:2671                                    ; preds = %2669
  %2672 = fadd fast float %2420, -1.000000e+00
  %2673 = fadd fast float %2421, -1.000000e+00
  %2674 = fadd fast float %2422, -1.000000e+00
  %2675 = fmul fast float %2639, %2672
  %2676 = fmul fast float %2639, %2673
  %2677 = fmul fast float %2639, %2674
  %2678 = fadd fast float %2675, 1.000000e+00
  %2679 = fadd fast float %2676, 1.000000e+00
  %2680 = fadd fast float %2677, 1.000000e+00
  %2681 = fmul fast float %2678, %2626
  %2682 = fmul fast float %2679, %2627
  %2683 = fmul fast float %2680, %2628
  br label %2714

; <label>:2684                                    ; preds = %2669
  %2685 = icmp eq i32 %2634, 2
  br i1 %2685, label %2686, label %2714

; <label>:2686                                    ; preds = %2684
  %2687 = call float @dx.op.unary.f32(i32 24, float %2420)  ; Sqrt(value)
  %2688 = call float @dx.op.unary.f32(i32 24, float %2421)  ; Sqrt(value)
  %2689 = call float @dx.op.unary.f32(i32 24, float %2422)  ; Sqrt(value)
  %2690 = fadd fast float %2687, -5.000000e-01
  %2691 = fadd fast float %2688, -5.000000e-01
  %2692 = fadd fast float %2689, -5.000000e-01
  %2693 = fmul fast float %2690, %2639
  %2694 = fmul fast float %2691, %2639
  %2695 = fmul fast float %2692, %2639
  %2696 = fadd fast float %2693, 5.000000e-01
  %2697 = fadd fast float %2694, 5.000000e-01
  %2698 = fadd fast float %2695, 5.000000e-01
  %2699 = fmul fast float %2696, 2.000000e+00
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = fmul fast float %2700, %2626
  %2702 = fadd fast float %2701, %2699
  %2703 = fmul fast float %2702, %2626
  %2704 = fmul fast float %2697, 2.000000e+00
  %2705 = fsub fast float 1.000000e+00, %2704
  %2706 = fmul fast float %2705, %2627
  %2707 = fadd fast float %2706, %2704
  %2708 = fmul fast float %2707, %2627
  %2709 = fmul fast float %2698, 2.000000e+00
  %2710 = fsub fast float 1.000000e+00, %2709
  %2711 = fmul fast float %2710, %2628
  %2712 = fadd fast float %2711, %2709
  %2713 = fmul fast float %2712, %2628
  br label %2714

; <label>:2714                                    ; preds = %2686, %2684, %2671, %2641, %2625
  %2715 = phi float [ %2626, %2625 ], [ %2703, %2686 ], [ %2626, %2684 ], [ %2681, %2671 ], [ %2651, %2641 ]
  %2716 = phi float [ %2627, %2625 ], [ %2708, %2686 ], [ %2627, %2684 ], [ %2682, %2671 ], [ %2652, %2641 ]
  %2717 = phi float [ %2628, %2625 ], [ %2713, %2686 ], [ %2628, %2684 ], [ %2683, %2671 ], [ %2653, %2641 ]
  %2718 = phi float [ %2629, %2625 ], [ %2629, %2686 ], [ %2629, %2684 ], [ %2629, %2671 ], [ %2663, %2641 ]
  %2719 = phi float [ %2630, %2625 ], [ %2630, %2686 ], [ %2630, %2684 ], [ %2630, %2671 ], [ %2664, %2641 ]
  %2720 = phi float [ %2631, %2625 ], [ %2631, %2686 ], [ %2631, %2684 ], [ %2631, %2671 ], [ %2665, %2641 ]
  %2721 = phi float [ %1898, %2625 ], [ %1898, %2686 ], [ %1898, %2684 ], [ %1898, %2671 ], [ %2656, %2641 ]
  %2722 = phi float [ %1902, %2625 ], [ %1902, %2686 ], [ %1902, %2684 ], [ %1902, %2671 ], [ %2668, %2641 ]
  %2723 = and i32 %2633, 12
  %2724 = icmp eq i32 %2723, 12
  br i1 %2724, label %2831, label %2725

; <label>:2725                                    ; preds = %2714
  %2726 = and i32 %2633, 2097184
  %2727 = icmp eq i32 %2726, 2097184
  %2728 = select i1 %2727, float %2200, float 0.000000e+00
  %2729 = and i32 %2633, 4194336
  %2730 = icmp eq i32 %2729, 4194336
  %2731 = select i1 %2730, float %2200, float 0.000000e+00
  %2732 = and i32 %2633, 8388640
  %2733 = icmp eq i32 %2732, 8388640
  %2734 = select i1 %2733, float %2200, float 0.000000e+00
  %2735 = and i32 %2633, 2048
  %2736 = icmp ne i32 %2735, 0
  %2737 = select i1 %2736, float %2200, float 0.000000e+00
  %2738 = and i32 %2633, 8192
  %2739 = icmp ne i32 %2738, 0
  %2740 = select i1 %2739, float %2200, float 0.000000e+00
  %2741 = icmp eq i32 %2723, 0
  br i1 %2741, label %2742, label %2767

; <label>:2742                                    ; preds = %2725
  %2743 = fsub fast float %2501, %1887
  %2744 = fsub fast float %2502, %1888
  %2745 = fmul fast float %2728, %2743
  %2746 = fmul fast float %2728, %2744
  %2747 = fadd fast float %2745, %1887
  %2748 = fadd fast float %2746, %1888
  %2749 = fsub fast float %2503, %1900
  %2750 = fmul fast float %2731, %2749
  %2751 = fadd fast float %2750, %1900
  %2752 = fsub fast float %2500, %1899
  %2753 = fmul fast float %2734, %2752
  %2754 = fadd fast float %2753, %1899
  %2755 = fsub fast float %2603, %1901
  %2756 = fmul fast float %2737, %2755
  %2757 = fadd fast float %2756, %1901
  %2758 = fsub fast float %2600, %1895
  %2759 = fsub fast float %2601, %1896
  %2760 = fsub fast float %2602, %1897
  %2761 = fmul fast float %2740, %2758
  %2762 = fmul fast float %2740, %2759
  %2763 = fmul fast float %2740, %2760
  %2764 = fadd fast float %2761, %1895
  %2765 = fadd fast float %2762, %1896
  %2766 = fadd fast float %2763, %1897
  br label %2831

; <label>:2767                                    ; preds = %2725
  %2768 = icmp eq i32 %2723, 4
  br i1 %2768, label %2769, label %2809

; <label>:2769                                    ; preds = %2767
  %2770 = fmul fast float %2728, %2501
  %2771 = fmul fast float %2728, %2502
  %2772 = fadd fast float %2770, %1887
  %2773 = fadd fast float %2771, %1888
  %2774 = call float @dx.op.binary.f32(i32 36, float %1900, float %2503)  ; FMin(a,b)
  %2775 = fsub fast float %2774, %1900
  %2776 = fmul fast float %2775, %2731
  %2777 = fadd fast float %2776, %1900
  %2778 = fadd fast float %2500, %1899
  %2779 = fmul fast float %2778, 0x3FF337FAE0000000
  %2780 = fmul fast float %1899, %1899
  %2781 = fmul fast float %2500, %2500
  %2782 = fadd fast float %2781, %2780
  %2783 = fmul fast float %2782, 0x3FE5152B00000000
  %2784 = fmul fast float %1899, 0xBFCC1F85E0000000
  %2785 = fmul fast float %2784, %2500
  %2786 = fadd fast float %2785, 0xBFE1363700000000
  %2787 = fadd fast float %2786, %2779
  %2788 = fsub fast float %2787, %2783
  %2789 = fmul fast float %2778, 0x3FBA6F0D00000000
  %2790 = fmul fast float %2782, 0x3FD0432880000000
  %2791 = fmul fast float %1899, 0xBFEF110800000000
  %2792 = fmul fast float %2791, %2500
  %2793 = fadd fast float %2792, 1.000000e+00
  %2794 = fsub fast float %2793, %2789
  %2795 = fadd fast float %2794, %2790
  %2796 = fdiv fast float %2788, %2795
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fsub fast float %2797, %1899
  %2799 = fmul fast float %2798, %2734
  %2800 = fadd fast float %2799, %1899
  %2801 = fmul fast float %2737, %2603
  %2802 = fadd fast float %2801, %1901
  %2803 = fmul fast float %2740, %2600
  %2804 = fmul fast float %2740, %2601
  %2805 = fmul fast float %2740, %2602
  %2806 = fadd fast float %2803, %1895
  %2807 = fadd fast float %2804, %1896
  %2808 = fadd fast float %2805, %1897
  br label %2831

; <label>:2809                                    ; preds = %2767
  %2810 = icmp eq i32 %2723, 8
  br i1 %2810, label %2811, label %2831

; <label>:2811                                    ; preds = %2809
  %2812 = fmul fast float %2728, %2501
  %2813 = fmul fast float %2728, %2502
  %2814 = fadd fast float %2812, %1887
  %2815 = fadd fast float %2813, %1888
  %2816 = call float @dx.op.binary.f32(i32 36, float %1900, float %2503)  ; FMin(a,b)
  %2817 = fsub fast float %2816, %1900
  %2818 = fmul fast float %2817, %2731
  %2819 = fadd fast float %2818, %1900
  %2820 = fsub fast float %2500, %1899
  %2821 = fmul fast float %2734, %2820
  %2822 = fadd fast float %2821, %1899
  %2823 = fmul fast float %2737, %2603
  %2824 = fadd fast float %2823, %1901
  %2825 = fmul fast float %2740, %2600
  %2826 = fmul fast float %2740, %2601
  %2827 = fmul fast float %2740, %2602
  %2828 = fadd fast float %2825, %1895
  %2829 = fadd fast float %2826, %1896
  %2830 = fadd fast float %2827, %1897
  br label %2831

; <label>:2831                                    ; preds = %2811, %2809, %2769, %2742, %2714, %2199, %1903, %1886
  %2832 = phi float [ %1887, %2714 ], [ %1887, %2199 ], [ %1887, %1886 ], [ %2814, %2811 ], [ %1887, %2809 ], [ %2772, %2769 ], [ %2747, %2742 ], [ %1887, %1903 ]
  %2833 = phi float [ %1888, %2714 ], [ %1888, %2199 ], [ %1888, %1886 ], [ %2815, %2811 ], [ %1888, %2809 ], [ %2773, %2769 ], [ %2748, %2742 ], [ %1888, %1903 ]
  %2834 = phi float [ %2715, %2714 ], [ %1889, %2199 ], [ %1889, %1886 ], [ %2715, %2811 ], [ %2715, %2809 ], [ %2715, %2769 ], [ %2715, %2742 ], [ %1889, %1903 ]
  %2835 = phi float [ %2716, %2714 ], [ %1890, %2199 ], [ %1890, %1886 ], [ %2716, %2811 ], [ %2716, %2809 ], [ %2716, %2769 ], [ %2716, %2742 ], [ %1890, %1903 ]
  %2836 = phi float [ %2717, %2714 ], [ %1891, %2199 ], [ %1891, %1886 ], [ %2717, %2811 ], [ %2717, %2809 ], [ %2717, %2769 ], [ %2717, %2742 ], [ %1891, %1903 ]
  %2837 = phi float [ %2718, %2714 ], [ %1892, %2199 ], [ %1892, %1886 ], [ %2718, %2811 ], [ %2718, %2809 ], [ %2718, %2769 ], [ %2718, %2742 ], [ %1892, %1903 ]
  %2838 = phi float [ %2719, %2714 ], [ %1893, %2199 ], [ %1893, %1886 ], [ %2719, %2811 ], [ %2719, %2809 ], [ %2719, %2769 ], [ %2719, %2742 ], [ %1893, %1903 ]
  %2839 = phi float [ %2720, %2714 ], [ %1894, %2199 ], [ %1894, %1886 ], [ %2720, %2811 ], [ %2720, %2809 ], [ %2720, %2769 ], [ %2720, %2742 ], [ %1894, %1903 ]
  %2840 = phi float [ %1895, %2714 ], [ %1895, %2199 ], [ %1895, %1886 ], [ %2828, %2811 ], [ %1895, %2809 ], [ %2806, %2769 ], [ %2764, %2742 ], [ %1895, %1903 ]
  %2841 = phi float [ %1896, %2714 ], [ %1896, %2199 ], [ %1896, %1886 ], [ %2829, %2811 ], [ %1896, %2809 ], [ %2807, %2769 ], [ %2765, %2742 ], [ %1896, %1903 ]
  %2842 = phi float [ %1897, %2714 ], [ %1897, %2199 ], [ %1897, %1886 ], [ %2830, %2811 ], [ %1897, %2809 ], [ %2808, %2769 ], [ %2766, %2742 ], [ %1897, %1903 ]
  %2843 = phi float [ %2721, %2714 ], [ %1898, %2199 ], [ %1898, %1886 ], [ %2721, %2811 ], [ %2721, %2809 ], [ %2721, %2769 ], [ %2721, %2742 ], [ %1898, %1903 ]
  %2844 = phi float [ %1899, %2714 ], [ %1899, %2199 ], [ %1899, %1886 ], [ %2822, %2811 ], [ %1899, %2809 ], [ %2800, %2769 ], [ %2754, %2742 ], [ %1899, %1903 ]
  %2845 = phi float [ %1900, %2714 ], [ %1900, %2199 ], [ %1900, %1886 ], [ %2819, %2811 ], [ %1900, %2809 ], [ %2777, %2769 ], [ %2751, %2742 ], [ %1900, %1903 ]
  %2846 = phi float [ %1901, %2714 ], [ %1901, %2199 ], [ %1901, %1886 ], [ %2824, %2811 ], [ %1901, %2809 ], [ %2802, %2769 ], [ %2757, %2742 ], [ %1901, %1903 ]
  %2847 = phi float [ %2722, %2714 ], [ %1902, %2199 ], [ %1902, %1886 ], [ %2722, %2811 ], [ %2722, %2809 ], [ %2722, %2769 ], [ %2722, %2742 ], [ %1902, %1903 ]
  br i1 %369, label %3776, label %2848

; <label>:2848                                    ; preds = %2831
  %2849 = icmp ult i32 %420, 4
  %2850 = add i32 %40, 72
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = add i32 %40, 76
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = or i32 %2855, %2852
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %3776, label %2858

; <label>:2858                                    ; preds = %2848
  %2859 = and i32 %2852, 262144
  %2860 = icmp ne i32 %2859, 0
  %2861 = select i1 %2860, float %42, float 1.000000e+00
  %2862 = select i1 %2860, float %43, float 0.000000e+00
  %2863 = select i1 %2860, float %44, float 0.000000e+00
  %2864 = select i1 %2860, float %45, float 1.000000e+00
  %2865 = select i1 %2860, float %46, float %67
  %2866 = select i1 %2860, float %47, float %68
  %2867 = add i32 %40, 332
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = lshr i32 %2869, 16
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = fmul fast float %2871, 0x3F50624DE0000000
  %2873 = add i32 %40, 136
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = lshr i32 %2875, 16
  %2877 = and i32 %2876, 255
  %2878 = lshr i32 %2875, 24
  %2879 = add i32 %40, 340
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = lshr i32 %2881, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = add i32 %40, 80
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = lshr i32 %2888, 22
  %2890 = shl nuw nsw i32 %2889, 5
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = shl i32 %2888, 4
  %2893 = and i32 %2892, 32752
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = lshr i32 %2888, 7
  %2896 = and i32 %2895, 32752
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 3
  %2900 = fmul fast float %2899, 1.000000e+03
  %2901 = fmul fast float %359, %2900
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = fadd fast float %2902, %349
  %2904 = fmul fast float %360, %2900
  %2905 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2906 = fadd fast float %2905, %351
  %2907 = fmul fast float %2872, %2900
  %2908 = call float @dx.op.unary.f32(i32 22, float %2907)  ; Frc(value)
  %2909 = fmul fast float %2908, 0x401921FB60000000
  %2910 = fadd fast float %2909, %2891
  %2911 = call float @dx.op.unary.f32(i32 13, float %2910)  ; Sin(value)
  %2912 = call float @dx.op.unary.f32(i32 12, float %2910)  ; Cos(value)
  %2913 = fsub fast float -0.000000e+00, %2911
  %2914 = fadd fast float %2865, -5.000000e-01
  %2915 = fadd fast float %2866, -5.000000e-01
  %2916 = fmul fast float %2883, %2914
  %2917 = fmul fast float %2885, %2915
  %2918 = fadd fast float %2916, 5.000000e-01
  %2919 = fadd fast float %2917, 5.000000e-01
  %2920 = fmul fast float %2894, %2918
  %2921 = fmul fast float %2897, %2919
  %2922 = fmul fast float %2912, %2920
  %2923 = call float @dx.op.tertiary.f32(i32 46, float %2913, float %2921, float %2922)  ; FMad(a,b,c)
  %2924 = fmul fast float %2911, %2920
  %2925 = call float @dx.op.tertiary.f32(i32 46, float %2912, float %2921, float %2924)  ; FMad(a,b,c)
  %2926 = fadd fast float %2903, %2923
  %2927 = fadd fast float %2906, %2925
  %2928 = icmp ugt i32 %2877, 1
  %2929 = icmp ugt i32 %2875, 33554431
  %2930 = or i1 %2929, %2928
  br i1 %2930, label %2931, label %2956

; <label>:2931                                    ; preds = %2858
  %2932 = add i32 %40, 276
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = lshr i32 %2934, 16
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = fmul fast float %2899, %2936
  %2938 = call float @dx.op.unary.f32(i32 22, float %2937)  ; Frc(value)
  %2939 = mul nuw nsw i32 %2877, %2878
  %2940 = uitofp i32 %2939 to float
  %2941 = fmul fast float %2938, %2940
  %2942 = call float @dx.op.unary.f32(i32 27, float %2941)  ; Round_ni(value)
  %2943 = fptoui float %2942 to i32
  %2944 = urem i32 %2943, %2877
  %2945 = udiv i32 %2943, %2878
  %2946 = call float @dx.op.unary.f32(i32 22, float %2926)  ; Frc(value)
  %2947 = call float @dx.op.unary.f32(i32 22, float %2927)  ; Frc(value)
  %2948 = uitofp i32 %2944 to float
  %2949 = uitofp i32 %2945 to float
  %2950 = fadd fast float %2946, %2948
  %2951 = fadd fast float %2947, %2949
  %2952 = uitofp i32 %2877 to float
  %2953 = uitofp i32 %2878 to float
  %2954 = fdiv fast float %2950, %2952
  %2955 = fdiv fast float %2951, %2953
  br label %2956

; <label>:2956                                    ; preds = %2931, %2858
  %2957 = phi float [ %2954, %2931 ], [ %2926, %2858 ]
  %2958 = phi float [ %2955, %2931 ], [ %2927, %2858 ]
  %2959 = and i32 %2852, 16777216
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3070, label %2961

; <label>:2961                                    ; preds = %2956
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2966 = fadd fast float %2963, %134
  %2967 = fadd fast float %2964, %135
  %2968 = fadd fast float %2965, %136
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 0
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = icmp eq i32 %41, 65535
  br i1 %2972, label %3067, label %2973

; <label>:2973                                    ; preds = %2961
  %2974 = lshr i32 %41, 1
  %2975 = shl i32 %2974, 2
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %41, 1
  %2979 = icmp ne i32 %2978, 0
  %2980 = lshr i32 %2977, 16
  %2981 = and i32 %2977, 65535
  %2982 = select i1 %2979, i32 %2980, i32 %2981
  %2983 = icmp eq i32 %2982, 65535
  br i1 %2983, label %3063, label %2984

; <label>:2984                                    ; preds = %2973
  %2985 = mul nuw nsw i32 %2982, 40
  %2986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = add nuw nsw i32 %2985, 12
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = add nuw nsw i32 %2985, 24
  %2996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = extractvalue %dx.types.ResRet.f32 %2996, 1
  %2999 = extractvalue %dx.types.ResRet.f32 %2996, 2
  %3000 = add nuw nsw i32 %2985, 36
  %3001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = fsub fast float %2966, %2987
  %3004 = fsub fast float %2967, %2988
  %3005 = fsub fast float %2968, %2989
  %3006 = fmul fast float %3002, %3003
  %3007 = fmul fast float %3002, %3004
  %3008 = fmul fast float %3002, %3005
  %3009 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3010 = call float @dx.op.unary.f32(i32 27, float %3007)  ; Round_ni(value)
  %3011 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fadd fast float %3010, 5.000000e-01
  %3014 = fadd fast float %3011, 5.000000e-01
  %3015 = fmul fast float %3012, %2992
  %3016 = fmul fast float %3013, %2993
  %3017 = fmul fast float %3014, %2994
  %3018 = shl i32 %41, 2
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call float @dx.op.unary.f32(i32 22, float %3015)  ; Frc(value)
  %3024 = call float @dx.op.unary.f32(i32 22, float %3016)  ; Frc(value)
  %3025 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3022, %dx.types.Handle %37, float %3023, float %3024, float %3025, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.ResRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3026, 2
  %3030 = fmul fast float %3027, 1.023000e+03
  %3031 = fmul fast float %3028, 1.023000e+03
  %3032 = fmul fast float %3029, 1.023000e+03
  %3033 = fadd fast float %3030, 5.000000e-01
  %3034 = fadd fast float %3031, 5.000000e-01
  %3035 = fadd fast float %3032, 5.000000e-01
  %3036 = call float @dx.op.unary.f32(i32 27, float %3033)  ; Round_ni(value)
  %3037 = call float @dx.op.unary.f32(i32 27, float %3034)  ; Round_ni(value)
  %3038 = call float @dx.op.unary.f32(i32 27, float %3035)  ; Round_ni(value)
  %3039 = fsub fast float %3006, %3009
  %3040 = fsub fast float %3007, %3010
  %3041 = fsub fast float %3008, %3011
  %3042 = fmul fast float %3039, 7.500000e-01
  %3043 = fmul fast float %3040, 7.500000e-01
  %3044 = fmul fast float %3041, 7.500000e-01
  %3045 = fadd fast float %3009, 1.250000e-01
  %3046 = fadd fast float %3045, %3042
  %3047 = fadd fast float %3046, %3036
  %3048 = fadd fast float %3010, 1.250000e-01
  %3049 = fadd fast float %3048, %3043
  %3050 = fadd fast float %3049, %3037
  %3051 = fadd fast float %3011, 1.250000e-01
  %3052 = fadd fast float %3051, %3044
  %3053 = fadd fast float %3052, %3038
  %3054 = fmul fast float %3047, %2997
  %3055 = fmul fast float %3050, %2998
  %3056 = fmul fast float %3053, %2999
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3060, %dx.types.Handle %35, float %3054, float %3055, float %3056, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  br label %3063

; <label>:3063                                    ; preds = %2984, %2973
  %3064 = phi float [ %3062, %2984 ], [ -1.000000e+00, %2973 ]
  %3065 = fadd fast float %3064, %2971
  %3066 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  br label %3067

; <label>:3067                                    ; preds = %3063, %2961
  %3068 = phi float [ %3066, %3063 ], [ %2971, %2961 ]
  %3069 = fmul fast float %3068, %415
  br label %3070

; <label>:3070                                    ; preds = %3067, %2956
  %3071 = phi float [ %3069, %3067 ], [ %415, %2956 ]
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 256
  %3075 = icmp eq i32 %3074, 0
  br i1 %3075, label %3122, label %3076

; <label>:3076                                    ; preds = %3070
  %3077 = add i32 %40, 436
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = add i32 %3079, 0
  %3081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3081, %dx.types.Handle %76, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3083 = extractvalue %dx.types.ResRet.f32 %3082, 0
  %3084 = add i32 %40, 148
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = shl i32 %3086, 4
  %3088 = and i32 %3087, 32752
  %3089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3088)  ; LegacyF16ToF32(value)
  %3090 = lshr i32 %3086, 7
  %3091 = and i32 %3090, 32752
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = fsub fast float 1.000000e+00, %3071
  %3094 = call float @dx.op.binary.f32(i32 35, float %3093, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3095 = bitcast float %3071 to i32
  %3096 = sitofp i32 %3095 to float
  %3097 = fadd fast float %3096, 0xC1CFBF8940000000
  %3098 = fmul fast float %3092, %3097
  %3099 = fadd fast float %3098, 0x41CFBF8940000000
  %3100 = fptosi float %3099 to i32
  %3101 = bitcast i32 %3100 to float
  %3102 = bitcast float %3094 to i32
  %3103 = sitofp i32 %3102 to float
  %3104 = fadd fast float %3103, 0xC1CFBF8940000000
  %3105 = fmul fast float %3104, %3092
  %3106 = fadd fast float %3105, 0x41CFBF8940000000
  %3107 = fptosi float %3106 to i32
  %3108 = bitcast i32 %3107 to float
  %3109 = fmul fast float %3101, %3089
  %3110 = fmul fast float %3108, %3089
  %3111 = fsub fast float %3094, %3109
  %3112 = fadd fast float %3110, %3094
  %3113 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3114 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3115 = fsub fast float %3083, %3113
  %3116 = fsub fast float %3114, %3113
  %3117 = bitcast float %3116 to i32
  %3118 = sub nsw i32 2129859010, %3117
  %3119 = bitcast i32 %3118 to float
  %3120 = fmul fast float %3119, %3115
  %3121 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  br label %3122

; <label>:3122                                    ; preds = %3076, %3070
  %3123 = phi float [ %3121, %3076 ], [ %3071, %3070 ]
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 128
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3144, label %3128

; <label>:3128                                    ; preds = %3122
  %3129 = add i32 %40, 420
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = add i32 %3131, 0
  %3133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3133, %dx.types.Handle %76, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 524288
  %3139 = icmp ne i32 %3138, 0
  %3140 = fcmp fast ogt float %3135, 0x3FE0101020000000
  %3141 = select i1 %3140, float 1.000000e+00, float 0.000000e+00
  %3142 = select i1 %3139, float %3141, float %3135
  %3143 = fmul fast float %3142, %3123
  br label %3144

; <label>:3144                                    ; preds = %3128, %3122
  %3145 = phi float [ %3143, %3128 ], [ %3123, %3122 ]
  %3146 = fcmp fast ult float %3145, 0x3F70101020000000
  br i1 %3146, label %3776, label %3147

; <label>:3147                                    ; preds = %3144
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 16
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3350, label %3152

; <label>:3152                                    ; preds = %3147
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = add i32 %40, 372
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %3157, 0
  %3159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3159, %dx.types.Handle %75, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  %3164 = extractvalue %dx.types.ResRet.f32 %3160, 3
  %3165 = and i32 %3154, 255
  %3166 = uitofp i32 %3165 to float
  %3167 = lshr i32 %3154, 8
  %3168 = and i32 %3167, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = fmul fast float %3164, %3166
  %3171 = fadd fast float %3170, %3169
  %3172 = fmul fast float %3171, 0x3F70101000000000
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = and i32 %3174, 512
  %3176 = icmp eq i32 %3175, 0
  br i1 %3176, label %3185, label %3177

; <label>:3177                                    ; preds = %3152
  %3178 = add i32 %40, 452
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = add i32 %3180, 0
  %3182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3182, %dx.types.Handle %76, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3184 = extractvalue %dx.types.ResRet.f32 %3183, 0
  br label %3185

; <label>:3185                                    ; preds = %3177, %3152
  %3186 = phi float [ %3184, %3177 ], [ 1.000000e+00, %3152 ]
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 33554432
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3297, label %3191

; <label>:3191                                    ; preds = %3185
  %3192 = add i32 %40, 272
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = and i32 %3194, 65535
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = lshr i32 %3194, 16
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = add i32 %40, 276
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = lshr i32 %3205, 24
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = and i32 %3205, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = lshr i32 %3205, 8
  %3213 = and i32 %3212, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = lshr i32 %3205, 16
  %3217 = and i32 %3216, 255
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = add i32 %40, 268
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = lshr i32 %3222, 24
  %3224 = uitofp i32 %3223 to float
  %3225 = fmul fast float %3224, 0x3F70101020000000
  %3226 = and i32 %3222, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = lshr i32 %3222, 8
  %3230 = and i32 %3229, 255
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = lshr i32 %3222, 16
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = fmul fast float %3235, 0x3F70101020000000
  %3237 = bitcast float %3161 to i32
  %3238 = ashr i32 %3237, 1
  %3239 = sub nsw i32 1597463174, %3238
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3161, 5.000000e-01
  %3242 = fmul fast float %3240, %3240
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float 1.500000e+00, %3243
  %3245 = fmul fast float %3240, %3161
  %3246 = fmul fast float %3245, %3244
  %3247 = bitcast float %3162 to i32
  %3248 = ashr i32 %3247, 1
  %3249 = sub nsw i32 1597463174, %3248
  %3250 = bitcast i32 %3249 to float
  %3251 = fmul fast float %3162, 5.000000e-01
  %3252 = fmul fast float %3250, %3250
  %3253 = fmul fast float %3252, %3251
  %3254 = fsub fast float 1.500000e+00, %3253
  %3255 = fmul fast float %3250, %3162
  %3256 = fmul fast float %3255, %3254
  %3257 = bitcast float %3163 to i32
  %3258 = ashr i32 %3257, 1
  %3259 = sub nsw i32 1597463174, %3258
  %3260 = bitcast i32 %3259 to float
  %3261 = fmul fast float %3163, 5.000000e-01
  %3262 = fmul fast float %3260, %3260
  %3263 = fmul fast float %3262, %3261
  %3264 = fsub fast float 1.500000e+00, %3263
  %3265 = fmul fast float %3260, %3163
  %3266 = fmul fast float %3265, %3264
  %3267 = fsub fast float %3246, %3228
  %3268 = fsub fast float %3256, %3232
  %3269 = fsub fast float %3266, %3236
  %3270 = fmul fast float %3267, %3196
  %3271 = fmul fast float %3268, %3198
  %3272 = fmul fast float %3269, %3203
  %3273 = fadd fast float %3270, %3211
  %3274 = fadd fast float %3271, %3215
  %3275 = fadd fast float %3272, %3219
  %3276 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3277 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3278 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3279 = fmul fast float %3276, %3276
  %3280 = fmul fast float %3277, %3277
  %3281 = fmul fast float %3278, %3278
  %3282 = fsub fast float %3279, %3161
  %3283 = fsub fast float %3280, %3162
  %3284 = fsub fast float %3281, %3163
  %3285 = fmul fast float %3282, %3186
  %3286 = fmul fast float %3283, %3186
  %3287 = fmul fast float %3284, %3186
  %3288 = fadd fast float %3285, %3161
  %3289 = fadd fast float %3286, %3162
  %3290 = fadd fast float %3287, %3163
  %3291 = fadd fast float %3208, %3172
  %3292 = fsub fast float %3291, %3225
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3294 = fsub fast float %3293, %3172
  %3295 = fmul fast float %3294, %3186
  %3296 = fadd fast float %3295, %3172
  br label %3350

; <label>:3297                                    ; preds = %3185
  %3298 = and i32 %3188, 134217728
  %3299 = icmp eq i32 %3298, 0
  br i1 %3299, label %3334, label %3300

; <label>:3300                                    ; preds = %3297
  %3301 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %3302 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %3303 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3304 = fadd fast float %3301, -5.000000e-01
  %3305 = fadd fast float %3302, -5.000000e-01
  %3306 = fadd fast float %3303, -5.000000e-01
  %3307 = fmul fast float %3304, %3186
  %3308 = fmul fast float %3305, %3186
  %3309 = fmul fast float %3306, %3186
  %3310 = fadd fast float %3307, 5.000000e-01
  %3311 = fadd fast float %3308, 5.000000e-01
  %3312 = fadd fast float %3309, 5.000000e-01
  %3313 = call float @dx.op.unary.f32(i32 24, float %3161)  ; Sqrt(value)
  %3314 = call float @dx.op.unary.f32(i32 24, float %3162)  ; Sqrt(value)
  %3315 = call float @dx.op.unary.f32(i32 24, float %3163)  ; Sqrt(value)
  %3316 = fmul fast float %3310, 2.000000e+00
  %3317 = fsub fast float 1.000000e+00, %3316
  %3318 = fmul fast float %3317, %3313
  %3319 = fadd fast float %3318, %3316
  %3320 = fmul fast float %3319, %3313
  %3321 = fmul fast float %3311, 2.000000e+00
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = fmul fast float %3322, %3314
  %3324 = fadd fast float %3323, %3321
  %3325 = fmul fast float %3324, %3314
  %3326 = fmul fast float %3312, 2.000000e+00
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3327, %3315
  %3329 = fadd fast float %3328, %3326
  %3330 = fmul fast float %3329, %3315
  %3331 = fmul fast float %3320, %3320
  %3332 = fmul fast float %3325, %3325
  %3333 = fmul fast float %3330, %3330
  br label %3350

; <label>:3334                                    ; preds = %3297
  %3335 = fmul fast float %336, %336
  %3336 = fmul fast float %340, %340
  %3337 = fmul fast float %344, %344
  %3338 = fadd fast float %3335, -1.000000e+00
  %3339 = fadd fast float %3336, -1.000000e+00
  %3340 = fadd fast float %3337, -1.000000e+00
  %3341 = fmul fast float %3186, %3338
  %3342 = fmul fast float %3186, %3339
  %3343 = fmul fast float %3186, %3340
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fmul fast float %3344, %3161
  %3348 = fmul fast float %3345, %3162
  %3349 = fmul fast float %3346, %3163
  br label %3350

; <label>:3350                                    ; preds = %3334, %3300, %3191, %3147
  %3351 = phi float [ %3296, %3191 ], [ %3172, %3300 ], [ %3172, %3334 ], [ 0x3FA23C0BE0000000, %3147 ]
  %3352 = phi float [ %3288, %3191 ], [ %3331, %3300 ], [ %3347, %3334 ], [ 1.000000e+00, %3147 ]
  %3353 = phi float [ %3289, %3191 ], [ %3332, %3300 ], [ %3348, %3334 ], [ 1.000000e+00, %3147 ]
  %3354 = phi float [ %3290, %3191 ], [ %3333, %3300 ], [ %3349, %3334 ], [ 1.000000e+00, %3147 ]
  %3355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.i32 %3355, 1
  %3357 = and i32 %3356, 1
  %3358 = icmp ne i32 %3357, 0
  %3359 = add i32 %40, 356
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = and i32 %3361, 32
  %3363 = icmp ne i32 %3362, 0
  %3364 = and i1 %3358, %3363
  %3365 = select i1 %3364, float 1.000000e+00, float %3352
  %3366 = select i1 %3364, float 0x3FD3333340000000, float %3353
  %3367 = select i1 %3364, float 0x3FD3333340000000, float %3354
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = and i32 %3369, 32
  %3371 = icmp eq i32 %3370, 0
  br i1 %3371, label %3444, label %3372

; <label>:3372                                    ; preds = %3350
  %3373 = add i32 %40, 140
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = add i32 %40, 388
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = add i32 %3378, 0
  %3380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3380, %dx.types.Handle %75, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3381, 2
  %3385 = extractvalue %dx.types.ResRet.f32 %3381, 3
  %3386 = and i32 %3375, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = lshr i32 %3375, 8
  %3389 = and i32 %3388, 255
  %3390 = uitofp i32 %3389 to float
  %3391 = lshr i32 %3375, 16
  %3392 = and i32 %3391, 255
  %3393 = uitofp i32 %3392 to float
  %3394 = fmul fast float %3393, 0x3F70101000000000
  %3395 = fmul fast float %3382, %3387
  %3396 = fadd fast float %3395, %3390
  %3397 = fmul fast float %3396, 0x3F70101000000000
  %3398 = fadd fast float %3383, -5.000000e-01
  %3399 = fadd fast float %3385, -5.000000e-01
  %3400 = fmul fast float %3398, %3394
  %3401 = fmul fast float %3399, %3394
  %3402 = fadd fast float %3400, 5.000000e-01
  %3403 = fadd fast float %3401, 5.000000e-01
  %3404 = fmul fast float %3402, 2.000000e+00
  %3405 = fadd fast float %3404, -1.000000e+00
  %3406 = fmul fast float %3403, 2.000000e+00
  %3407 = fadd fast float %3406, -1.000000e+00
  %3408 = fadd fast float %3405, %3407
  %3409 = fmul fast float %3408, 5.000000e-01
  %3410 = fsub fast float %3405, %3407
  %3411 = fmul fast float %3410, 5.000000e-01
  %3412 = call float @dx.op.unary.f32(i32 6, float %3409)  ; FAbs(value)
  %3413 = fsub fast float 1.000000e+00, %3412
  %3414 = call float @dx.op.unary.f32(i32 6, float %3411)  ; FAbs(value)
  %3415 = fsub fast float %3413, %3414
  %3416 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3411, float %3415, float %3409, float %3411, float %3415)  ; Dot3(ax,ay,az,bx,by,bz)
  %3417 = call float @dx.op.unary.f32(i32 25, float %3416)  ; Rsqrt(value)
  %3418 = fmul fast float %3409, %3417
  %3419 = fmul fast float %3411, %3417
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 67108864
  %3423 = icmp eq i32 %3422, 0
  br i1 %3423, label %3440, label %3424

; <label>:3424                                    ; preds = %3372
  %3425 = add i32 %40, 328
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 65535
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 65535
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = lshr i32 %3427, 16
  %3435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3434)  ; LegacyF16ToF32(value)
  %3436 = fsub fast float %3397, %3435
  %3437 = fmul fast float %3436, %3429
  %3438 = fadd fast float %3437, %3433
  %3439 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  br label %3440

; <label>:3440                                    ; preds = %3424, %3372
  %3441 = phi float [ %3439, %3424 ], [ %3397, %3372 ]
  %3442 = call float @dx.op.dot2.f32(i32 54, float %3418, float %3419, float %2861, float %2862)  ; Dot2(ax,ay,bx,by)
  %3443 = call float @dx.op.dot2.f32(i32 54, float %3418, float %3419, float %2863, float %2864)  ; Dot2(ax,ay,bx,by)
  br label %3444

; <label>:3444                                    ; preds = %3440, %3350
  %3445 = phi float [ %3441, %3440 ], [ 0x3FD6666660000000, %3350 ]
  %3446 = phi float [ %3442, %3440 ], [ 0.000000e+00, %3350 ]
  %3447 = phi float [ %3443, %3440 ], [ 0.000000e+00, %3350 ]
  %3448 = phi float [ %3384, %3440 ], [ 1.000000e+00, %3350 ]
  %3449 = add i32 %40, 208
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = lshr i32 %3451, 22
  %3453 = shl nuw nsw i32 %3452, 5
  %3454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3453)  ; LegacyF16ToF32(value)
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 64
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3492, label %3459

; <label>:3459                                    ; preds = %3444
  %3460 = add i32 %40, 404
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = add i32 %3462, 0
  %3464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 131072
  %3468 = icmp eq i32 %3467, 0
  %3469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3464, %dx.types.Handle %75, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = fmul fast float %3470, %324
  %3474 = fmul fast float %3471, %327
  %3475 = fmul fast float %3472, %330
  br i1 %3468, label %3482, label %3476

; <label>:3476                                    ; preds = %3459
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = fmul fast float %3478, %3473
  %3480 = fmul fast float %3478, %3474
  %3481 = fmul fast float %3478, %3475
  br label %3482

; <label>:3482                                    ; preds = %3476, %3459
  %3483 = phi float [ %3479, %3476 ], [ %3473, %3459 ]
  %3484 = phi float [ %3480, %3476 ], [ %3474, %3459 ]
  %3485 = phi float [ %3481, %3476 ], [ %3475, %3459 ]
  %3486 = fmul fast float %3483, %3454
  %3487 = select i1 %178, float %3486, float %3483
  %3488 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3484, float %3485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3489 = select i1 %178, float 0.000000e+00, float %3483
  %3490 = select i1 %178, float %3488, float %3484
  %3491 = select i1 %178, float 0.000000e+00, float %3485
  br label %3492

; <label>:3492                                    ; preds = %3482, %3444
  %3493 = phi float [ %3489, %3482 ], [ 0.000000e+00, %3444 ]
  %3494 = phi float [ %3490, %3482 ], [ 0.000000e+00, %3444 ]
  %3495 = phi float [ %3491, %3482 ], [ 0.000000e+00, %3444 ]
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3497, 10240
  %3499 = icmp eq i32 %3498, 0
  br i1 %3499, label %3544, label %3500

; <label>:3500                                    ; preds = %3492
  %3501 = add i32 %40, 468
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = add i32 %3503, 0
  %3505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3505, %dx.types.Handle %76, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 3
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = and i32 %3510, 1048576
  %3512 = icmp ne i32 %3511, 0
  %3513 = and i32 %3510, 8192
  %3514 = icmp eq i32 %3513, 0
  br i1 %3514, label %3530, label %3515

; <label>:3515                                    ; preds = %3500
  %3516 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3517 = select i1 %3512, float %3516, float %3507
  %3518 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3519 = select i1 %3512, float %3518, float %3507
  %3520 = add i32 %40, 144
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = lshr i32 %3522, 16
  %3524 = and i32 %3523, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, 0x3F80101020000000
  %3527 = fmul fast float %3526, %3519
  %3528 = fmul fast float %3526, %3507
  %3529 = fmul fast float %3526, %3517
  br label %3530

; <label>:3530                                    ; preds = %3515, %3500
  %3531 = phi float [ %3527, %3515 ], [ 0.000000e+00, %3500 ]
  %3532 = phi float [ %3528, %3515 ], [ 0.000000e+00, %3500 ]
  %3533 = phi float [ %3529, %3515 ], [ 0.000000e+00, %3500 ]
  %3534 = and i32 %3510, 2048
  %3535 = icmp eq i32 %3534, 0
  br i1 %3535, label %3544, label %3536

; <label>:3536                                    ; preds = %3530
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = shl i32 %3538, 4
  %3540 = and i32 %3539, 32752
  %3541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3540)  ; LegacyF16ToF32(value)
  %3542 = fmul fast float %3541, %3508
  %3543 = call float @dx.op.binary.f32(i32 35, float %3542, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3544

; <label>:3544                                    ; preds = %3536, %3530, %3492
  %3545 = phi float [ %3531, %3536 ], [ %3531, %3530 ], [ 0.000000e+00, %3492 ]
  %3546 = phi float [ %3532, %3536 ], [ %3532, %3530 ], [ 0.000000e+00, %3492 ]
  %3547 = phi float [ %3533, %3536 ], [ %3533, %3530 ], [ 0.000000e+00, %3492 ]
  %3548 = phi float [ %3543, %3536 ], [ 0x3F70101020000000, %3530 ], [ 0x3F70101020000000, %3492 ]
  %3549 = add i32 %40, 144
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 255
  %3553 = uitofp i32 %3552 to float
  %3554 = lshr i32 %3551, 8
  %3555 = and i32 %3554, 255
  %3556 = uitofp i32 %3555 to float
  %3557 = call float @dx.op.dot3.f32(i32 55, float %3365, float %3366, float %3367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3558 = fmul fast float %3556, %3557
  %3559 = fadd fast float %3558, %3553
  %3560 = fmul fast float %3559, 0x3F70101020000000
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  br i1 %2849, label %3562, label %3570

; <label>:3562                                    ; preds = %3544
  %3563 = fsub fast float 1.000000e+00, %3145
  %3564 = fmul fast float %3563, %2834
  %3565 = fmul fast float %3563, %2835
  %3566 = fmul fast float %3563, %2836
  %3567 = fmul fast float %3563, %2837
  %3568 = fmul fast float %3563, %2838
  %3569 = fmul fast float %3563, %2839
  br label %3570

; <label>:3570                                    ; preds = %3562, %3544
  %3571 = phi float [ %3564, %3562 ], [ %2834, %3544 ]
  %3572 = phi float [ %3565, %3562 ], [ %2835, %3544 ]
  %3573 = phi float [ %3566, %3562 ], [ %2836, %3544 ]
  %3574 = phi float [ %3567, %3562 ], [ %2837, %3544 ]
  %3575 = phi float [ %3568, %3562 ], [ %2838, %3544 ]
  %3576 = phi float [ %3569, %3562 ], [ %2839, %3544 ]
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, 3
  %3580 = icmp eq i32 %3579, 3
  br i1 %3580, label %3659, label %3581

; <label>:3581                                    ; preds = %3570
  %3582 = and i32 %3578, 16
  %3583 = icmp ne i32 %3582, 0
  %3584 = select i1 %3583, float %3145, float 0.000000e+00
  %3585 = icmp eq i32 %3579, 0
  br i1 %3585, label %3586, label %3614

; <label>:3586                                    ; preds = %3581
  %3587 = and i32 %3578, 64
  %3588 = icmp ne i32 %3587, 0
  %3589 = select i1 %3588, float %3145, float 0.000000e+00
  %3590 = fsub fast float %3365, %3571
  %3591 = fsub fast float %3366, %3572
  %3592 = fsub fast float %3367, %3573
  %3593 = fmul fast float %3584, %3590
  %3594 = fmul fast float %3584, %3591
  %3595 = fmul fast float %3584, %3592
  %3596 = fadd fast float %3593, %3571
  %3597 = fadd fast float %3594, %3572
  %3598 = fadd fast float %3595, %3573
  %3599 = fsub fast float %3351, %2843
  %3600 = fmul fast float %3584, %3599
  %3601 = fadd fast float %3600, %2843
  %3602 = fsub fast float %3493, %3574
  %3603 = fsub fast float %3494, %3575
  %3604 = fsub fast float %3495, %3576
  %3605 = fmul fast float %3589, %3602
  %3606 = fmul fast float %3589, %3603
  %3607 = fmul fast float %3589, %3604
  %3608 = fadd fast float %3605, %3574
  %3609 = fadd fast float %3606, %3575
  %3610 = fadd fast float %3607, %3576
  %3611 = fsub fast float %3561, %2847
  %3612 = fmul fast float %3584, %3611
  %3613 = fadd fast float %3612, %2847
  br label %3659

; <label>:3614                                    ; preds = %3581
  %3615 = icmp eq i32 %3579, 1
  br i1 %3615, label %3616, label %3629

; <label>:3616                                    ; preds = %3614
  %3617 = fadd fast float %3365, -1.000000e+00
  %3618 = fadd fast float %3366, -1.000000e+00
  %3619 = fadd fast float %3367, -1.000000e+00
  %3620 = fmul fast float %3584, %3617
  %3621 = fmul fast float %3584, %3618
  %3622 = fmul fast float %3584, %3619
  %3623 = fadd fast float %3620, 1.000000e+00
  %3624 = fadd fast float %3621, 1.000000e+00
  %3625 = fadd fast float %3622, 1.000000e+00
  %3626 = fmul fast float %3623, %3571
  %3627 = fmul fast float %3624, %3572
  %3628 = fmul fast float %3625, %3573
  br label %3659

; <label>:3629                                    ; preds = %3614
  %3630 = icmp eq i32 %3579, 2
  br i1 %3630, label %3631, label %3659

; <label>:3631                                    ; preds = %3629
  %3632 = call float @dx.op.unary.f32(i32 24, float %3365)  ; Sqrt(value)
  %3633 = call float @dx.op.unary.f32(i32 24, float %3366)  ; Sqrt(value)
  %3634 = call float @dx.op.unary.f32(i32 24, float %3367)  ; Sqrt(value)
  %3635 = fadd fast float %3632, -5.000000e-01
  %3636 = fadd fast float %3633, -5.000000e-01
  %3637 = fadd fast float %3634, -5.000000e-01
  %3638 = fmul fast float %3635, %3584
  %3639 = fmul fast float %3636, %3584
  %3640 = fmul fast float %3637, %3584
  %3641 = fadd fast float %3638, 5.000000e-01
  %3642 = fadd fast float %3639, 5.000000e-01
  %3643 = fadd fast float %3640, 5.000000e-01
  %3644 = fmul fast float %3641, 2.000000e+00
  %3645 = fsub fast float 1.000000e+00, %3644
  %3646 = fmul fast float %3645, %3571
  %3647 = fadd fast float %3646, %3644
  %3648 = fmul fast float %3647, %3571
  %3649 = fmul fast float %3642, 2.000000e+00
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = fmul fast float %3650, %3572
  %3652 = fadd fast float %3651, %3649
  %3653 = fmul fast float %3652, %3572
  %3654 = fmul fast float %3643, 2.000000e+00
  %3655 = fsub fast float 1.000000e+00, %3654
  %3656 = fmul fast float %3655, %3573
  %3657 = fadd fast float %3656, %3654
  %3658 = fmul fast float %3657, %3573
  br label %3659

; <label>:3659                                    ; preds = %3631, %3629, %3616, %3586, %3570
  %3660 = phi float [ %3571, %3570 ], [ %3648, %3631 ], [ %3571, %3629 ], [ %3626, %3616 ], [ %3596, %3586 ]
  %3661 = phi float [ %3572, %3570 ], [ %3653, %3631 ], [ %3572, %3629 ], [ %3627, %3616 ], [ %3597, %3586 ]
  %3662 = phi float [ %3573, %3570 ], [ %3658, %3631 ], [ %3573, %3629 ], [ %3628, %3616 ], [ %3598, %3586 ]
  %3663 = phi float [ %3574, %3570 ], [ %3574, %3631 ], [ %3574, %3629 ], [ %3574, %3616 ], [ %3608, %3586 ]
  %3664 = phi float [ %3575, %3570 ], [ %3575, %3631 ], [ %3575, %3629 ], [ %3575, %3616 ], [ %3609, %3586 ]
  %3665 = phi float [ %3576, %3570 ], [ %3576, %3631 ], [ %3576, %3629 ], [ %3576, %3616 ], [ %3610, %3586 ]
  %3666 = phi float [ %2843, %3570 ], [ %2843, %3631 ], [ %2843, %3629 ], [ %2843, %3616 ], [ %3601, %3586 ]
  %3667 = phi float [ %2847, %3570 ], [ %2847, %3631 ], [ %2847, %3629 ], [ %2847, %3616 ], [ %3613, %3586 ]
  %3668 = and i32 %3578, 12
  %3669 = icmp eq i32 %3668, 12
  br i1 %3669, label %3776, label %3670

; <label>:3670                                    ; preds = %3659
  %3671 = and i32 %3578, 2097184
  %3672 = icmp eq i32 %3671, 2097184
  %3673 = select i1 %3672, float %3145, float 0.000000e+00
  %3674 = and i32 %3578, 4194336
  %3675 = icmp eq i32 %3674, 4194336
  %3676 = select i1 %3675, float %3145, float 0.000000e+00
  %3677 = and i32 %3578, 8388640
  %3678 = icmp eq i32 %3677, 8388640
  %3679 = select i1 %3678, float %3145, float 0.000000e+00
  %3680 = and i32 %3578, 2048
  %3681 = icmp ne i32 %3680, 0
  %3682 = select i1 %3681, float %3145, float 0.000000e+00
  %3683 = and i32 %3578, 8192
  %3684 = icmp ne i32 %3683, 0
  %3685 = select i1 %3684, float %3145, float 0.000000e+00
  %3686 = icmp eq i32 %3668, 0
  br i1 %3686, label %3687, label %3712

; <label>:3687                                    ; preds = %3670
  %3688 = fsub fast float %3446, %2832
  %3689 = fsub fast float %3447, %2833
  %3690 = fmul fast float %3673, %3688
  %3691 = fmul fast float %3673, %3689
  %3692 = fadd fast float %3690, %2832
  %3693 = fadd fast float %3691, %2833
  %3694 = fsub fast float %3448, %2845
  %3695 = fmul fast float %3676, %3694
  %3696 = fadd fast float %3695, %2845
  %3697 = fsub fast float %3445, %2844
  %3698 = fmul fast float %3679, %3697
  %3699 = fadd fast float %3698, %2844
  %3700 = fsub fast float %3548, %2846
  %3701 = fmul fast float %3682, %3700
  %3702 = fadd fast float %3701, %2846
  %3703 = fsub fast float %3545, %2840
  %3704 = fsub fast float %3546, %2841
  %3705 = fsub fast float %3547, %2842
  %3706 = fmul fast float %3685, %3703
  %3707 = fmul fast float %3685, %3704
  %3708 = fmul fast float %3685, %3705
  %3709 = fadd fast float %3706, %2840
  %3710 = fadd fast float %3707, %2841
  %3711 = fadd fast float %3708, %2842
  br label %3776

; <label>:3712                                    ; preds = %3670
  %3713 = icmp eq i32 %3668, 4
  br i1 %3713, label %3714, label %3754

; <label>:3714                                    ; preds = %3712
  %3715 = fmul fast float %3673, %3446
  %3716 = fmul fast float %3673, %3447
  %3717 = fadd fast float %3715, %2832
  %3718 = fadd fast float %3716, %2833
  %3719 = call float @dx.op.binary.f32(i32 36, float %2845, float %3448)  ; FMin(a,b)
  %3720 = fsub fast float %3719, %2845
  %3721 = fmul fast float %3720, %3676
  %3722 = fadd fast float %3721, %2845
  %3723 = fadd fast float %3445, %2844
  %3724 = fmul fast float %3723, 0x3FF337FAE0000000
  %3725 = fmul fast float %2844, %2844
  %3726 = fmul fast float %3445, %3445
  %3727 = fadd fast float %3726, %3725
  %3728 = fmul fast float %3727, 0x3FE5152B00000000
  %3729 = fmul fast float %2844, 0xBFCC1F85E0000000
  %3730 = fmul fast float %3729, %3445
  %3731 = fadd fast float %3730, 0xBFE1363700000000
  %3732 = fadd fast float %3731, %3724
  %3733 = fsub fast float %3732, %3728
  %3734 = fmul fast float %3723, 0x3FBA6F0D00000000
  %3735 = fmul fast float %3727, 0x3FD0432880000000
  %3736 = fmul fast float %2844, 0xBFEF110800000000
  %3737 = fmul fast float %3736, %3445
  %3738 = fadd fast float %3737, 1.000000e+00
  %3739 = fsub fast float %3738, %3734
  %3740 = fadd fast float %3739, %3735
  %3741 = fdiv fast float %3733, %3740
  %3742 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3743 = fsub fast float %3742, %2844
  %3744 = fmul fast float %3743, %3679
  %3745 = fadd fast float %3744, %2844
  %3746 = fmul fast float %3682, %3548
  %3747 = fadd fast float %3746, %2846
  %3748 = fmul fast float %3685, %3545
  %3749 = fmul fast float %3685, %3546
  %3750 = fmul fast float %3685, %3547
  %3751 = fadd fast float %3748, %2840
  %3752 = fadd fast float %3749, %2841
  %3753 = fadd fast float %3750, %2842
  br label %3776

; <label>:3754                                    ; preds = %3712
  %3755 = icmp eq i32 %3668, 8
  br i1 %3755, label %3756, label %3776

; <label>:3756                                    ; preds = %3754
  %3757 = fmul fast float %3673, %3446
  %3758 = fmul fast float %3673, %3447
  %3759 = fadd fast float %3757, %2832
  %3760 = fadd fast float %3758, %2833
  %3761 = call float @dx.op.binary.f32(i32 36, float %2845, float %3448)  ; FMin(a,b)
  %3762 = fsub fast float %3761, %2845
  %3763 = fmul fast float %3762, %3676
  %3764 = fadd fast float %3763, %2845
  %3765 = fsub fast float %3445, %2844
  %3766 = fmul fast float %3679, %3765
  %3767 = fadd fast float %3766, %2844
  %3768 = fmul fast float %3682, %3548
  %3769 = fadd fast float %3768, %2846
  %3770 = fmul fast float %3685, %3545
  %3771 = fmul fast float %3685, %3546
  %3772 = fmul fast float %3685, %3547
  %3773 = fadd fast float %3770, %2840
  %3774 = fadd fast float %3771, %2841
  %3775 = fadd fast float %3772, %2842
  br label %3776

; <label>:3776                                    ; preds = %3756, %3754, %3714, %3687, %3659, %3144, %2848, %2831
  %3777 = phi float [ %2832, %3659 ], [ %2832, %3144 ], [ %2832, %2831 ], [ %2832, %2848 ], [ %3692, %3687 ], [ %3717, %3714 ], [ %2832, %3754 ], [ %3759, %3756 ]
  %3778 = phi float [ %2833, %3659 ], [ %2833, %3144 ], [ %2833, %2831 ], [ %2833, %2848 ], [ %3693, %3687 ], [ %3718, %3714 ], [ %2833, %3754 ], [ %3760, %3756 ]
  %3779 = phi float [ %3660, %3659 ], [ %2834, %3144 ], [ %2834, %2831 ], [ %2834, %2848 ], [ %3660, %3687 ], [ %3660, %3714 ], [ %3660, %3754 ], [ %3660, %3756 ]
  %3780 = phi float [ %3661, %3659 ], [ %2835, %3144 ], [ %2835, %2831 ], [ %2835, %2848 ], [ %3661, %3687 ], [ %3661, %3714 ], [ %3661, %3754 ], [ %3661, %3756 ]
  %3781 = phi float [ %3662, %3659 ], [ %2836, %3144 ], [ %2836, %2831 ], [ %2836, %2848 ], [ %3662, %3687 ], [ %3662, %3714 ], [ %3662, %3754 ], [ %3662, %3756 ]
  %3782 = phi float [ %3663, %3659 ], [ %2837, %3144 ], [ %2837, %2831 ], [ %2837, %2848 ], [ %3663, %3687 ], [ %3663, %3714 ], [ %3663, %3754 ], [ %3663, %3756 ]
  %3783 = phi float [ %3664, %3659 ], [ %2838, %3144 ], [ %2838, %2831 ], [ %2838, %2848 ], [ %3664, %3687 ], [ %3664, %3714 ], [ %3664, %3754 ], [ %3664, %3756 ]
  %3784 = phi float [ %3665, %3659 ], [ %2839, %3144 ], [ %2839, %2831 ], [ %2839, %2848 ], [ %3665, %3687 ], [ %3665, %3714 ], [ %3665, %3754 ], [ %3665, %3756 ]
  %3785 = phi float [ %2840, %3659 ], [ %2840, %3144 ], [ %2840, %2831 ], [ %2840, %2848 ], [ %3709, %3687 ], [ %3751, %3714 ], [ %2840, %3754 ], [ %3773, %3756 ]
  %3786 = phi float [ %2841, %3659 ], [ %2841, %3144 ], [ %2841, %2831 ], [ %2841, %2848 ], [ %3710, %3687 ], [ %3752, %3714 ], [ %2841, %3754 ], [ %3774, %3756 ]
  %3787 = phi float [ %2842, %3659 ], [ %2842, %3144 ], [ %2842, %2831 ], [ %2842, %2848 ], [ %3711, %3687 ], [ %3753, %3714 ], [ %2842, %3754 ], [ %3775, %3756 ]
  %3788 = phi float [ %3666, %3659 ], [ %2843, %3144 ], [ %2843, %2831 ], [ %2843, %2848 ], [ %3666, %3687 ], [ %3666, %3714 ], [ %3666, %3754 ], [ %3666, %3756 ]
  %3789 = phi float [ %2844, %3659 ], [ %2844, %3144 ], [ %2844, %2831 ], [ %2844, %2848 ], [ %3699, %3687 ], [ %3745, %3714 ], [ %2844, %3754 ], [ %3767, %3756 ]
  %3790 = phi float [ %2845, %3659 ], [ %2845, %3144 ], [ %2845, %2831 ], [ %2845, %2848 ], [ %3696, %3687 ], [ %3722, %3714 ], [ %2845, %3754 ], [ %3764, %3756 ]
  %3791 = phi float [ %2846, %3659 ], [ %2846, %3144 ], [ %2846, %2831 ], [ %2846, %2848 ], [ %3702, %3687 ], [ %3747, %3714 ], [ %2846, %3754 ], [ %3769, %3756 ]
  %3792 = phi float [ %3667, %3659 ], [ %2847, %3144 ], [ %2847, %2831 ], [ %2847, %2848 ], [ %3667, %3687 ], [ %3667, %3714 ], [ %3667, %3754 ], [ %3667, %3756 ]
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3795 = call float @dx.op.dot2.f32(i32 54, float %3777, float %3778, float %3777, float %3778)  ; Dot2(ax,ay,bx,by)
  %3796 = fmul fast float %3795, 0x3FE3333340000000
  %3797 = fsub fast float 1.000000e+00, %3796
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3777, float %3778, float %3797, float %3777, float %3778, float %3797)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = call float @dx.op.unary.f32(i32 25, float %3798)  ; Rsqrt(value)
  %3800 = fmul fast float %3799, %3777
  %3801 = fmul fast float %3799, %3778
  %3802 = fmul fast float %3797, %3799
  %3803 = fmul fast float %3802, %86
  %3804 = fmul fast float %3802, %87
  %3805 = fmul fast float %3802, %88
  %3806 = fmul fast float %3800, %60
  %3807 = fmul fast float %3800, %61
  %3808 = fmul fast float %3800, %62
  %3809 = fadd fast float %3803, %3806
  %3810 = fadd fast float %3804, %3807
  %3811 = fadd fast float %3805, %3808
  %3812 = fmul fast float %98, %3801
  %3813 = fmul fast float %99, %3801
  %3814 = fmul fast float %100, %3801
  %3815 = fadd fast float %3809, %3812
  %3816 = fadd fast float %3810, %3813
  %3817 = fadd fast float %3811, %3814
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %3815, float %3816, float %3817)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = call float @dx.op.unary.f32(i32 25, float %3818)  ; Rsqrt(value)
  %3820 = fmul fast float %3815, %3819
  %3821 = fmul fast float %3816, %3819
  %3822 = fmul fast float %3817, %3819
  %3823 = fadd fast float %3788, 0xBFB99999A0000000
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = fmul fast float %3824, 0x3FF1C71C80000000
  %3826 = call float @dx.op.binary.f32(i32 36, float %3788, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3827 = fsub fast float 1.000000e+00, %3825
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = fmul fast float %3828, %3779
  %3830 = fmul fast float %3828, %3780
  %3831 = fmul fast float %3828, %3781
  %3832 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3833 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = fmul fast float %3825, %3779
  %3836 = fmul fast float %3825, %3780
  %3837 = fmul fast float %3825, %3781
  %3838 = fadd fast float %3835, %3826
  %3839 = fadd fast float %3836, %3826
  %3840 = fadd fast float %3837, %3826
  %3841 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3842 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3843 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3844 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.i32 %3845, 0
  %3847 = and i32 %3846, 1
  %3848 = icmp eq i32 %3847, 0
  br i1 %3848, label %3863, label %3849

; <label>:3849                                    ; preds = %3776
  %3850 = call float @dx.op.binary.f32(i32 35, float %3833, float %3834)  ; FMax(a,b)
  %3851 = call float @dx.op.binary.f32(i32 35, float %3832, float %3850)  ; FMax(a,b)
  %3852 = fcmp fast ogt float %3851, 0.000000e+00
  %3853 = bitcast float %3851 to i32
  %3854 = sub nsw i32 2129859010, %3853
  %3855 = bitcast i32 %3854 to float
  %3856 = select i1 %3852, float %3855, float 0.000000e+00
  %3857 = fmul fast float %3832, %3785
  %3858 = fmul fast float %3833, %3786
  %3859 = fmul fast float %3834, %3787
  %3860 = fmul fast float %3857, %3856
  %3861 = fmul fast float %3858, %3856
  %3862 = fmul fast float %3859, %3856
  br label %3863

; <label>:3863                                    ; preds = %3849, %3776
  %3864 = phi float [ %3860, %3849 ], [ %3785, %3776 ]
  %3865 = phi float [ %3861, %3849 ], [ %3786, %3776 ]
  %3866 = phi float [ %3862, %3849 ], [ %3787, %3776 ]
  %3867 = fadd fast float %3832, 0xBFD51EB860000000
  %3868 = fadd fast float %3833, 0xBFD51EB860000000
  %3869 = fadd fast float %3834, 0xBFD51EB860000000
  %3870 = fmul fast float %3867, %3867
  %3871 = fmul fast float %3868, %3868
  %3872 = fmul fast float %3869, %3869
  %3873 = fmul fast float %3870, %3870
  %3874 = fmul fast float %3873, 1.000000e+02
  %3875 = fmul fast float %3871, %3871
  %3876 = fmul fast float %3875, 1.000000e+02
  %3877 = fmul fast float %3872, %3872
  %3878 = fmul fast float %3877, 1.000000e+02
  %3879 = fadd fast float %3874, 3.500000e+00
  %3880 = fadd fast float %3876, 3.500000e+00
  %3881 = fadd fast float %3878, 3.500000e+00
  %3882 = call float @dx.op.binary.f32(i32 35, float %3864, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3883 = call float @dx.op.binary.f32(i32 35, float %3865, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3884 = call float @dx.op.binary.f32(i32 35, float %3866, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3885 = fdiv fast float %3879, %3882
  %3886 = fdiv fast float %3880, %3883
  %3887 = fdiv fast float %3881, %3884
  %3888 = fmul fast float %3791, 0xBFF7154760000000
  %3889 = fmul fast float %3888, %3885
  %3890 = call float @dx.op.unary.f32(i32 21, float %3889)  ; Exp(value)
  %3891 = fmul fast float %3890, 2.500000e-01
  %3892 = fmul fast float %3791, 0xBFDEC709E0000000
  %3893 = fmul fast float %3892, %3885
  %3894 = call float @dx.op.unary.f32(i32 21, float %3893)  ; Exp(value)
  %3895 = fmul fast float %3894, 7.500000e-01
  %3896 = fmul fast float %3888, %3886
  %3897 = call float @dx.op.unary.f32(i32 21, float %3896)  ; Exp(value)
  %3898 = fmul fast float %3897, 2.500000e-01
  %3899 = fmul fast float %3892, %3886
  %3900 = call float @dx.op.unary.f32(i32 21, float %3899)  ; Exp(value)
  %3901 = fmul fast float %3900, 7.500000e-01
  %3902 = fmul fast float %3888, %3887
  %3903 = call float @dx.op.unary.f32(i32 21, float %3902)  ; Exp(value)
  %3904 = fmul fast float %3903, 2.500000e-01
  %3905 = fmul fast float %3892, %3887
  %3906 = call float @dx.op.unary.f32(i32 21, float %3905)  ; Exp(value)
  %3907 = fmul fast float %3906, 7.500000e-01
  %3908 = fadd fast float %3891, %3895
  %3909 = fadd fast float %3898, %3901
  %3910 = fadd fast float %3904, %3907
  %3911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.i32 %3911, 3
  %3913 = and i32 %3912, 8
  %3914 = icmp ne i32 %3913, 0
  %3915 = call float @dx.op.binary.f32(i32 35, float %3832, float %3779)  ; FMax(a,b)
  %3916 = call float @dx.op.binary.f32(i32 35, float %3833, float %3779)  ; FMax(a,b)
  %3917 = call float @dx.op.binary.f32(i32 35, float %3834, float %3779)  ; FMax(a,b)
  %3918 = call float @dx.op.dot3.f32(i32 55, float %3832, float %3833, float %3834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3919 = select i1 %178, float %3779, float %3832
  %3920 = select i1 %178, float %3918, float %3833
  %3921 = select i1 %178, float 1.000000e+00, float %3834
  %3922 = select i1 %3914, float %3915, float %3919
  %3923 = select i1 %3914, float %3916, float %3920
  %3924 = select i1 %3914, float %3917, float %3921
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.CBufRet.f32 %3925, 2
  %3929 = fadd fast float %3926, %134
  %3930 = fadd fast float %3927, %135
  %3931 = fadd fast float %3928, %136
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.CBufRet.f32 %3932, 1
  %3935 = fsub fast float %3929, %3933
  %3936 = fsub fast float %3930, %3934
  %3937 = fmul fast float %3935, %3935
  %3938 = fmul fast float %3936, %3936
  %3939 = fadd fast float %3937, %3938
  %3940 = call float @dx.op.unary.f32(i32 24, float %3939)  ; Sqrt(value)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3932, 2
  %3942 = fcmp fast olt float %3940, %3941
  br i1 %3942, label %3943, label %4010

; <label>:3943                                    ; preds = %3863
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %3954 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3955 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3956 = fadd fast float %3953, %3929
  %3957 = fadd fast float %3954, %3930
  %3958 = fadd fast float %3955, %3931
  %3959 = fmul fast float %3956, %3945
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3947, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3949, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3956, %3950
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3951, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3952, float %3963)  ; FMad(a,b,c)
  %3965 = fsub fast float %3961, %3953
  %3966 = fsub fast float %3964, %3954
  %3967 = fsub fast float %3965, %3933
  %3968 = fadd fast float %3967, %3941
  %3969 = fsub fast float %3966, %3934
  %3970 = fadd fast float %3969, %3941
  %3971 = extractvalue %dx.types.CBufRet.f32 %3932, 3
  %3972 = fmul fast float %3968, %3971
  %3973 = fmul fast float %3970, %3971
  %3974 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3975 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3976 = fsub fast float 1.000000e+00, %3974
  %3977 = fsub fast float 1.000000e+00, %3975
  %3978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = fcmp fast ugt float %3979, 0.000000e+00
  br i1 %3980, label %3981, label %4284

; <label>:3981                                    ; preds = %3943
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %3984 = fmul fast float %3983, %3979
  %3985 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3986 = fadd fast float %3985, %3984
  %3987 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3988 = fadd fast float %3986, %3955
  %3989 = fmul fast float %3961, %3949
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3952, float %3989)  ; FMad(a,b,c)
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3988, float %3987, float %3990)  ; FMad(a,b,c)
  %3992 = fsub fast float %3991, %3955
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %3995 = fsub fast float %3992, %3994
  %3996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.f32 %4000, 1
  %4003 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4004 = fadd fast float %4001, %3997
  %4005 = fmul fast float %4004, 0x3F847AE140000000
  %4006 = fadd fast float %4002, %3998
  %4007 = fmul fast float %4006, 0x3F847AE140000000
  %4008 = fadd fast float %4003, %3999
  %4009 = fmul fast float %4008, 0x3F847AE140000000
  br label %4284

; <label>:4010                                    ; preds = %3863
  %4011 = and i32 %152, 1
  %4012 = icmp eq i32 %4011, 0
  br i1 %4012, label %4284, label %4013

; <label>:4013                                    ; preds = %4010
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4021 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4023 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4024 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4025 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4026 = fadd fast float %4023, %3929
  %4027 = fadd fast float %4024, %3930
  %4028 = fadd fast float %4025, %3931
  %4029 = fmul fast float %4026, %4015
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %4027, float %4017, float %4029)  ; FMad(a,b,c)
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %4028, float %4019, float %4030)  ; FMad(a,b,c)
  %4032 = fmul fast float %4026, %4020
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %4027, float %4021, float %4032)  ; FMad(a,b,c)
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %4028, float %4022, float %4033)  ; FMad(a,b,c)
  %4035 = fsub fast float %4031, %4023
  %4036 = fsub fast float %4034, %4024
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.i32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.i32 %4044, 1
  %4047 = udiv i32 %4046, %4045
  %4048 = fsub fast float %4035, %4038
  %4049 = fsub fast float %4036, %4039
  %4050 = call float @dx.op.binary.f32(i32 35, float %4048, float 0.000000e+00)  ; FMax(a,b)
  %4051 = call float @dx.op.binary.f32(i32 35, float %4049, float 0.000000e+00)  ; FMax(a,b)
  %4052 = call float @dx.op.binary.f32(i32 36, float %4050, float %4040)  ; FMin(a,b)
  %4053 = call float @dx.op.binary.f32(i32 36, float %4051, float %4041)  ; FMin(a,b)
  %4054 = add i32 %4045, -1
  %4055 = add i32 %4047, -1
  %4056 = fmul fast float %4052, %4043
  %4057 = fmul fast float %4053, %4043
  %4058 = fptoui float %4056 to i32
  %4059 = fptoui float %4057 to i32
  %4060 = call i32 @dx.op.binary.i32(i32 40, i32 %4058, i32 %4054)  ; UMin(a,b)
  %4061 = call i32 @dx.op.binary.i32(i32 40, i32 %4059, i32 %4055)  ; UMin(a,b)
  %4062 = mul i32 %4061, %4045
  %4063 = add i32 %4062, %4060
  %4064 = shl i32 %4063, 2
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = icmp eq i32 %4066, -1
  br i1 %4067, label %4284, label %4068

; <label>:4068                                    ; preds = %4013
  %4069 = mul i32 %4066, 148
  %4070 = add i32 %4069, 4
  %4071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = add i32 %4069, 8
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = add i32 %4069, 36
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = add i32 %4069, 60
  %4080 = add i32 %4069, 92
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = add i32 %4069, 116
  %4084 = fsub fast float %4035, %4072
  %4085 = fsub fast float %4036, %4075
  %4086 = fmul fast float %4043, %4084
  %4087 = fmul fast float %4043, %4085
  %4088 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4089 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4090 = fsub fast float 1.000000e+00, %4089
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4093 = call float @dx.op.unary.f32(i32 83, float %4088)  ; DerivCoarseX(value)
  %4094 = call float @dx.op.unary.f32(i32 83, float %4090)  ; DerivCoarseX(value)
  %4095 = call float @dx.op.unary.f32(i32 84, float %4088)  ; DerivCoarseY(value)
  %4096 = call float @dx.op.unary.f32(i32 84, float %4090)  ; DerivCoarseY(value)
  %4097 = fmul fast float %4093, %4092
  %4098 = fmul fast float %4094, %4092
  %4099 = fmul fast float %4095, %4092
  %4100 = fmul fast float %4096, %4092
  %4101 = call float @dx.op.dot2.f32(i32 54, float %4099, float %4100, float %4099, float %4100)  ; Dot2(ax,ay,bx,by)
  %4102 = call float @dx.op.dot2.f32(i32 54, float %4097, float %4098, float %4097, float %4098)  ; Dot2(ax,ay,bx,by)
  %4103 = call float @dx.op.binary.f32(i32 35, float %4102, float %4101)  ; FMax(a,b)
  %4104 = call float @dx.op.unary.f32(i32 23, float %4103)  ; Log(value)
  %4105 = fmul fast float %4104, 5.000000e-01
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4108 = fadd fast float %4107, %4105
  %4109 = call float @dx.op.binary.f32(i32 35, float %4108, float 0.000000e+00)  ; FMax(a,b)
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4112 = fadd fast float %4111, %4109
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4115 = fadd fast float %4112, %4114
  %4116 = add i32 %4082, 0
  %4117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4118 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4117, i32 0)  ; GetDimensions(handle,mipLevel)
  %4119 = extractvalue %dx.types.Dimensions %4118, 0
  %4120 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4119)  ; FirstbitLo(value)
  %4121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.i32 %4121, 1
  %4123 = sub nsw i32 %4122, %4120
  %4124 = sitofp i32 %4123 to float
  %4125 = fsub fast float %4115, %4124
  %4126 = call float @dx.op.binary.f32(i32 35, float %4125, float 0.000000e+00)  ; FMax(a,b)
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4117, %dx.types.Handle %34, float %4088, float %4090, float %4078, float undef, i32 0, i32 0, i32 undef, float %4126)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fcmp ule float %4128, 0x3FE0101020000000
  %4130 = extractvalue %dx.types.CBufRet.i32 %4121, 0
  %4131 = and i32 %4130, 128
  %4132 = icmp ne i32 %4131, 0
  %4133 = and i1 %4129, %4132
  br i1 %4133, label %4284, label %4134

; <label>:4134                                    ; preds = %4068
  %4135 = add i32 %4069, 20
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = add i32 %4069, 24
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = add i32 %4069, 40
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = add i32 %4069, 96
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 2
  %4149 = fmul fast float %4148, %4088
  %4150 = fmul fast float %4148, %4090
  %4151 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4152 = fadd fast float %4149, %4151
  %4153 = fadd fast float %4150, %4151
  %4154 = add i32 %4146, 0
  %4155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4154, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4155, i32 0)  ; GetDimensions(handle,mipLevel)
  %4157 = extractvalue %dx.types.Dimensions %4156, 0
  %4158 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4157)  ; FirstbitLo(value)
  %4159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.i32 %4159, 1
  %4161 = sub nsw i32 %4160, %4158
  %4162 = sitofp i32 %4161 to float
  %4163 = fsub fast float %4112, %4162
  %4164 = call float @dx.op.binary.f32(i32 35, float %4163, float 0.000000e+00)  ; FMax(a,b)
  %4165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4155, %dx.types.Handle %34, float %4152, float %4153, float %4143, float undef, i32 0, i32 0, i32 undef, float %4164)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = fmul fast float %4166, %4137
  %4168 = fadd fast float %4167, %4140
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4169, 2
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4177 = extractvalue %dx.types.CBufRet.f32 %4169, 3
  %4178 = fadd fast float %4174, %4035
  %4179 = fadd fast float %4176, %4036
  %4180 = fadd fast float %4168, %4177
  %4181 = fmul fast float %4178, %4170
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4179, float %4171, float %4181)  ; FMad(a,b,c)
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4172, float %4182)  ; FMad(a,b,c)
  %4184 = fsub fast float %4183, %4177
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4187 = fsub fast float %4184, %4186
  %4188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.i32 %4188, 0
  %4190 = call i32 @dx.op.binary.i32(i32 40, i32 %4066, i32 %4189)  ; UMin(a,b)
  %4191 = mul i32 %4190, 36
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = add i32 %4191, 4
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = fmul fast float %4196, %4088
  %4198 = fmul fast float %4196, %4090
  %4199 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4200 = fadd fast float %4197, %4199
  %4201 = fadd fast float %4198, %4199
  %4202 = icmp eq i32 %4193, 0
  br i1 %4202, label %4271, label %4203

; <label>:4203                                    ; preds = %4134
  br label %4204

; <label>:4204                                    ; preds = %4261, %4203
  %4205 = phi float [ %4262, %4261 ], [ 0.000000e+00, %4203 ]
  %4206 = phi float [ %4263, %4261 ], [ 0.000000e+00, %4203 ]
  %4207 = phi float [ %4264, %4261 ], [ 0.000000e+00, %4203 ]
  %4208 = phi float [ %4265, %4261 ], [ 0.000000e+00, %4203 ]
  %4209 = phi float [ %4266, %4261 ], [ 0.000000e+00, %4203 ]
  %4210 = phi float [ %4267, %4261 ], [ 0.000000e+00, %4203 ]
  %4211 = phi i32 [ %4268, %4261 ], [ 0, %4203 ]
  %4212 = shl i32 %4211, 2
  %4213 = add i32 %4079, %4212
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = add i32 %4083, %4212
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = add i32 %4218, 0
  %4220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4219, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4220, i32 0)  ; GetDimensions(handle,mipLevel)
  %4222 = extractvalue %dx.types.Dimensions %4221, 0
  %4223 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4222)  ; FirstbitLo(value)
  %4224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.i32 %4224, 1
  %4226 = sub nsw i32 %4225, %4223
  %4227 = sitofp i32 %4226 to float
  %4228 = fsub fast float %4112, %4227
  %4229 = call float @dx.op.binary.f32(i32 35, float %4228, float 0.000000e+00)  ; FMax(a,b)
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4220, %dx.types.Handle %34, float %4200, float %4201, float %4215, float undef, i32 0, i32 0, i32 undef, float %4229)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = fcmp fast ogt float %4231, 0.000000e+00
  br i1 %4232, label %4233, label %4261

; <label>:4233                                    ; preds = %4204
  %4234 = add i32 %4194, %4212
  %4235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.i32 %4235, 0
  %4237 = and i32 %4236, 32767
  %4238 = mul nuw nsw i32 %4237, 928
  %4239 = add nuw nsw i32 %4238, 48
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = add nuw nsw i32 %4238, 60
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = fmul fast float %4241, %4231
  %4250 = fmul fast float %4242, %4231
  %4251 = fmul fast float %4243, %4231
  %4252 = fadd fast float %4249, %4205
  %4253 = fadd fast float %4250, %4206
  %4254 = fadd fast float %4251, %4207
  %4255 = fmul fast float %4246, %4231
  %4256 = fmul fast float %4247, %4231
  %4257 = fmul fast float %4248, %4231
  %4258 = fadd fast float %4255, %4208
  %4259 = fadd fast float %4256, %4209
  %4260 = fadd fast float %4257, %4210
  br label %4261

; <label>:4261                                    ; preds = %4233, %4204
  %4262 = phi float [ %4252, %4233 ], [ %4205, %4204 ]
  %4263 = phi float [ %4253, %4233 ], [ %4206, %4204 ]
  %4264 = phi float [ %4254, %4233 ], [ %4207, %4204 ]
  %4265 = phi float [ %4258, %4233 ], [ %4208, %4204 ]
  %4266 = phi float [ %4259, %4233 ], [ %4209, %4204 ]
  %4267 = phi float [ %4260, %4233 ], [ %4210, %4204 ]
  %4268 = add nuw i32 %4211, 1
  %4269 = icmp eq i32 %4268, %4193
  br i1 %4269, label %4270, label %4204

; <label>:4270                                    ; preds = %4261
  br label %4271

; <label>:4271                                    ; preds = %4270, %4134
  %4272 = phi float [ 0.000000e+00, %4134 ], [ %4262, %4270 ]
  %4273 = phi float [ 0.000000e+00, %4134 ], [ %4263, %4270 ]
  %4274 = phi float [ 0.000000e+00, %4134 ], [ %4264, %4270 ]
  %4275 = phi float [ 0.000000e+00, %4134 ], [ %4265, %4270 ]
  %4276 = phi float [ 0.000000e+00, %4134 ], [ %4266, %4270 ]
  %4277 = phi float [ 0.000000e+00, %4134 ], [ %4267, %4270 ]
  %4278 = fadd fast float %4275, %4272
  %4279 = fmul fast float %4278, 0x3F847AE140000000
  %4280 = fadd fast float %4276, %4273
  %4281 = fmul fast float %4280, 0x3F847AE140000000
  %4282 = fadd fast float %4277, %4274
  %4283 = fmul fast float %4282, 0x3F847AE140000000
  br label %4284

; <label>:4284                                    ; preds = %4271, %4068, %4013, %4010, %3981, %3943
  %4285 = phi float [ %3995, %3981 ], [ -1.310720e+05, %3943 ], [ %4187, %4271 ], [ -1.310720e+05, %4013 ], [ -1.310720e+05, %4068 ], [ -1.310720e+05, %4010 ]
  %4286 = phi float [ %4005, %3981 ], [ 0.000000e+00, %3943 ], [ %4279, %4271 ], [ 0.000000e+00, %4013 ], [ 0.000000e+00, %4068 ], [ 0.000000e+00, %4010 ]
  %4287 = phi float [ %4007, %3981 ], [ 0.000000e+00, %3943 ], [ %4281, %4271 ], [ 0.000000e+00, %4013 ], [ 0.000000e+00, %4068 ], [ 0.000000e+00, %4010 ]
  %4288 = phi float [ %4009, %3981 ], [ 0.000000e+00, %3943 ], [ %4283, %4271 ], [ 0.000000e+00, %4013 ], [ 0.000000e+00, %4068 ], [ 0.000000e+00, %4010 ]
  %4289 = phi i1 [ true, %3981 ], [ false, %3943 ], [ true, %4271 ], [ false, %4013 ], [ false, %4068 ], [ false, %4010 ]
  %4290 = and i32 %152, 3
  %4291 = icmp eq i32 %4290, 1
  %4292 = select i1 %4291, float 1.000000e+00, float 0.000000e+00
  %4293 = fsub fast float %4285, %136
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = select i1 %4289, float %4294, float 1.000000e+00
  %4296 = fmul fast float %4295, %4292
  %4297 = icmp eq i32 %4290, 3
  %4298 = select i1 %4297, float 1.000000e+00, float %4296
  %4299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4298)  ; FMax(a,b)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = fcmp fast une float %4300, 0.000000e+00
  %4302 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4303 = call float @dx.op.unary.f32(i32 25, float %4302)  ; Rsqrt(value)
  br i1 %4301, label %4311, label %4304

; <label>:4304                                    ; preds = %4284
  %4305 = fmul fast float %4303, %134
  %4306 = fmul fast float %4303, %135
  %4307 = fmul fast float %4303, %136
  %4308 = fsub fast float -0.000000e+00, %4305
  %4309 = fsub fast float -0.000000e+00, %4306
  %4310 = fsub fast float -0.000000e+00, %4307
  br label %4479

; <label>:4311                                    ; preds = %4284
  %4312 = fmul fast float %134, %4303
  %4313 = fsub fast float -0.000000e+00, %4312
  %4314 = fmul fast float %135, %4303
  %4315 = fsub fast float -0.000000e+00, %4314
  %4316 = fmul fast float %136, %4303
  %4317 = fsub fast float -0.000000e+00, %4316
  %4318 = call float @dx.op.dot3.f32(i32 55, float %4313, float %4315, float %4317, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4319 = fmul fast float %4300, 2.500000e+00
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fmul fast float %4300, 0x4013FFFFE0000000
  %4322 = fadd fast float %4321, 0xBFFFFFFFE0000000
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = fmul fast float %4300, 0x4004000020000000
  %4325 = fadd fast float %4324, 0xBFF8000040000000
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4328 = fmul fast float %3823, 1.000000e+01
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %4329, 2.000000e+00
  %4331 = fsub fast float 3.000000e+00, %4330
  %4332 = fmul fast float %4329, %4329
  %4333 = fmul fast float %4332, %4331
  %4334 = fsub fast float 1.000000e+00, %4333
  %4335 = fsub fast float 0x3FE3333340000000, %3844
  %4336 = fmul fast float %4335, 0x400AAAAAA0000000
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = fmul fast float %4334, %4337
  %4339 = fmul fast float %3922, 0x3FEA2B8620000000
  %4340 = fmul fast float %3923, 0x3FEA2B8620000000
  %4341 = fmul fast float %3924, 0x3FEA2B8620000000
  %4342 = fadd fast float %4339, 0x3FC81DFBA0000000
  %4343 = fmul fast float %4342, %3922
  %4344 = fadd fast float %4343, 0x3F910E6020000000
  %4345 = fadd fast float %4340, 0x3FC81DFBA0000000
  %4346 = fmul fast float %4345, %3923
  %4347 = fadd fast float %4346, 0x3F910E6020000000
  %4348 = fadd fast float %4341, 0x3FC81DFBA0000000
  %4349 = fmul fast float %4348, %3924
  %4350 = fadd fast float %4349, 0x3F910E6020000000
  %4351 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = fsub fast float %4351, %3922
  %4355 = fsub fast float %4352, %3923
  %4356 = fsub fast float %4353, %3924
  %4357 = fmul fast float %4354, %4327
  %4358 = fmul fast float %4357, %4338
  %4359 = fmul fast float %4355, %4327
  %4360 = fmul fast float %4359, %4338
  %4361 = fmul fast float %4356, %4327
  %4362 = fmul fast float %4361, %4338
  %4363 = fadd fast float %4358, %3922
  %4364 = fadd fast float %4360, %3923
  %4365 = fadd fast float %4362, %3924
  %4366 = fmul fast float %3790, %3790
  %4367 = fmul fast float %4366, %4366
  %4368 = fadd fast float %4323, 1.000000e+00
  %4369 = fsub fast float %4368, %4338
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fsub fast float 1.000000e+00, %4367
  %4374 = call float @dx.op.binary.f32(i32 36, float %4370, float %4373)  ; FMin(a,b)
  %4375 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4376 = call float @dx.op.binary.f32(i32 35, float %4374, float %4375)  ; FMax(a,b)
  %4377 = fadd fast float %4372, 0xBFE4CCCCC0000000
  %4378 = fmul fast float %4377, 0x4006DB6DA0000000
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = fmul fast float %4379, 2.000000e+00
  %4381 = fsub fast float 3.000000e+00, %4380
  %4382 = bitcast float %3841 to i32
  %4383 = ashr i32 %4382, 1
  %4384 = add nsw i32 %4383, 532487669
  %4385 = bitcast i32 %4384 to float
  %4386 = fsub fast float 1.000000e+00, %4385
  %4387 = bitcast float %4386 to i32
  %4388 = sub nsw i32 2129859010, %4387
  %4389 = bitcast i32 %4388 to float
  %4390 = fmul fast float %4389, 2.000000e+00
  %4391 = bitcast float %3842 to i32
  %4392 = ashr i32 %4391, 1
  %4393 = add nsw i32 %4392, 532487669
  %4394 = bitcast i32 %4393 to float
  %4395 = fsub fast float 1.000000e+00, %4394
  %4396 = bitcast float %4395 to i32
  %4397 = sub nsw i32 2129859010, %4396
  %4398 = bitcast i32 %4397 to float
  %4399 = fmul fast float %4398, 2.000000e+00
  %4400 = bitcast float %3843 to i32
  %4401 = ashr i32 %4400, 1
  %4402 = add nsw i32 %4401, 532487669
  %4403 = bitcast i32 %4402 to float
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = bitcast float %4404 to i32
  %4406 = sub nsw i32 2129859010, %4405
  %4407 = bitcast i32 %4406 to float
  %4408 = fmul fast float %4407, 2.000000e+00
  %4409 = fsub fast float 0x4002A9FBE0000000, %4390
  %4410 = fadd fast float %4390, 0x3FD54FDF00000000
  %4411 = bitcast float %4410 to i32
  %4412 = sub nsw i32 2129859010, %4411
  %4413 = bitcast i32 %4412 to float
  %4414 = fmul fast float %4413, %4409
  %4415 = fmul fast float %4414, %4414
  %4416 = fsub fast float 0x4002A9FBE0000000, %4399
  %4417 = fadd fast float %4399, 0x3FD54FDF00000000
  %4418 = bitcast float %4417 to i32
  %4419 = sub nsw i32 2129859010, %4418
  %4420 = bitcast i32 %4419 to float
  %4421 = fmul fast float %4420, %4416
  %4422 = fmul fast float %4421, %4421
  %4423 = fsub fast float 0x4002A9FBE0000000, %4408
  %4424 = fadd fast float %4408, 0x3FD54FDF00000000
  %4425 = bitcast float %4424 to i32
  %4426 = sub nsw i32 2129859010, %4425
  %4427 = bitcast i32 %4426 to float
  %4428 = fmul fast float %4427, %4423
  %4429 = fmul fast float %4428, %4428
  %4430 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4415)  ; FMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4422)  ; FMax(a,b)
  %4432 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4429)  ; FMax(a,b)
  %4433 = fsub fast float 1.000000e+00, %4318
  %4434 = fadd fast float %4433, %4334
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fsub fast float 1.000000e+00, %4298
  %4437 = fmul fast float %4376, %4436
  %4438 = fmul fast float %4379, %4379
  %4439 = fmul fast float %4438, %4437
  %4440 = fmul fast float %4439, %4381
  %4441 = fmul fast float %4436, 0xBFE99999A0000000
  %4442 = fmul fast float %4441, %4327
  %4443 = fmul fast float %4442, %4338
  %4444 = fadd fast float %4443, 1.000000e+00
  %4445 = fadd fast float %3844, -1.000000e+00
  %4446 = fmul fast float %4444, %4445
  %4447 = fadd fast float %4446, 1.000000e+00
  %4448 = fsub fast float %4430, %3841
  %4449 = fsub fast float %4431, %3842
  %4450 = fsub fast float %4432, %3843
  %4451 = fmul fast float %4440, %4448
  %4452 = fmul fast float %4440, %4449
  %4453 = fmul fast float %4440, %4450
  %4454 = fadd fast float %4451, %3841
  %4455 = fadd fast float %4452, %3842
  %4456 = fadd fast float %4453, %3843
  %4457 = fsub fast float %86, %3820
  %4458 = fsub fast float %87, %3821
  %4459 = fsub fast float %88, %3822
  %4460 = fmul fast float %4440, %4457
  %4461 = fmul fast float %4440, %4458
  %4462 = fmul fast float %4440, %4459
  %4463 = fadd fast float %4460, %3820
  %4464 = fadd fast float %4461, %3821
  %4465 = fadd fast float %4462, %3822
  %4466 = fmul fast float %4440, %4435
  %4467 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4468 = fsub fast float 1.000000e+00, %4467
  %4469 = fmul fast float %4466, %4468
  %4470 = fadd fast float %4469, %4467
  %4471 = fsub fast float 1.000000e+00, %3790
  %4472 = fmul fast float %4440, %4471
  %4473 = fadd fast float %4472, %3790
  %4474 = call float @dx.op.dot3.f32(i32 55, float %4463, float %4464, float %4465, float %4463, float %4464, float %4465)  ; Dot3(ax,ay,az,bx,by,bz)
  %4475 = call float @dx.op.unary.f32(i32 25, float %4474)  ; Rsqrt(value)
  %4476 = fmul fast float %4463, %4475
  %4477 = fmul fast float %4464, %4475
  %4478 = fmul fast float %4465, %4475
  br label %4479

; <label>:4479                                    ; preds = %4311, %4304
  %4480 = phi float [ %4310, %4304 ], [ %4317, %4311 ]
  %4481 = phi float [ %4309, %4304 ], [ %4315, %4311 ]
  %4482 = phi float [ %4308, %4304 ], [ %4313, %4311 ]
  %4483 = phi float [ %4307, %4304 ], [ %4316, %4311 ]
  %4484 = phi float [ %4306, %4304 ], [ %4314, %4311 ]
  %4485 = phi float [ %4305, %4304 ], [ %4312, %4311 ]
  %4486 = phi float [ %3841, %4304 ], [ %4454, %4311 ]
  %4487 = phi float [ %3842, %4304 ], [ %4455, %4311 ]
  %4488 = phi float [ %3843, %4304 ], [ %4456, %4311 ]
  %4489 = phi float [ %3820, %4304 ], [ %4476, %4311 ]
  %4490 = phi float [ %3821, %4304 ], [ %4477, %4311 ]
  %4491 = phi float [ %3822, %4304 ], [ %4478, %4311 ]
  %4492 = phi float [ %3922, %4304 ], [ %4363, %4311 ]
  %4493 = phi float [ %3923, %4304 ], [ %4364, %4311 ]
  %4494 = phi float [ %3924, %4304 ], [ %4365, %4311 ]
  %4495 = phi float [ %3844, %4304 ], [ %4470, %4311 ]
  %4496 = phi float [ %3790, %4304 ], [ %4473, %4311 ]
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4500 = fmul fast float %4498, %79
  %4501 = fmul fast float %4499, %80
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4500, float %4501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = fmul fast float %4506, %4504
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fadd fast float %4508, -1.000000e+00
  %4510 = fmul fast float %4509, %4503
  %4511 = fadd fast float %4510, 1.000000e+00
  %4512 = select i1 %178, float 0.000000e+00, float %4488
  %4513 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %4482, float %4481, float %4480)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = call float @dx.op.dot3.f32(i32 55, float %4485, float %4484, float %4483, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4516 = fmul fast float %4515, 2.000000e+00
  %4517 = fmul fast float %4516, %4489
  %4518 = fmul fast float %4516, %4490
  %4519 = fmul fast float %4516, %4491
  %4520 = fsub fast float %4485, %4517
  %4521 = fsub fast float %4484, %4518
  %4522 = fsub fast float %4483, %4519
  %4523 = call float @dx.op.binary.f32(i32 36, float %4496, float %4511)  ; FMin(a,b)
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = bitcast float %4524 to i32
  %4526 = ashr i32 %4525, 1
  %4527 = add nsw i32 %4526, 532487669
  %4528 = bitcast i32 %4527 to float
  %4529 = fsub fast float 1.000000e+00, %4495
  %4530 = call float @dx.op.binary.f32(i32 35, float %4529, float 0x3F847AE140000000)  ; FMax(a,b)
  %4531 = fmul fast float %4530, %4530
  %4532 = fmul fast float %4531, %4531
  %4533 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4528, float %4532, float %4533, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = fsub fast float 1.000000e+00, %4496
  %4537 = bitcast float %4536 to i32
  %4538 = sub nsw i32 2129859010, %4537
  %4539 = bitcast i32 %4538 to float
  %4540 = call float @dx.op.dot3.f32(i32 55, float %56, float %52, float %48, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = fmul fast float %4540, 0x3FD20DD760000000
  %4542 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %4543 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = fcmp fast oeq float %4543, 0.000000e+00
  %4545 = fcmp fast oeq float %4542, 0.000000e+00
  %4546 = or i1 %4545, %4544
  br i1 %4546, label %4576, label %4547

; <label>:4547                                    ; preds = %4479
  %4548 = fsub fast float -0.000000e+00, %59
  %4549 = fsub fast float -0.000000e+00, %57
  %4550 = call float @dx.op.unary.f32(i32 24, float %4543)  ; Sqrt(value)
  %4551 = fdiv fast float %4550, %4542
  %4552 = fcmp fast ogt float %4551, 0x3FFB6F8900000000
  %4553 = select i1 %4552, float 0x3FFB6F8900000000, float %4551
  %4554 = fmul fast float %4553, 0x3FE8A23460000000
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = call float @dx.op.binary.f32(i32 35, float %4553, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4557 = fmul fast float %4555, %4542
  %4558 = fmul fast float %4556, 0x3FF279A740000000
  %4559 = fadd fast float %4558, -1.000000e+00
  %4560 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4549, float %58, float %4548, float %4549, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = call float @dx.op.unary.f32(i32 25, float %4560)  ; Rsqrt(value)
  %4562 = fmul fast float %4561, %4548
  %4563 = fmul fast float %4561, %4549
  %4564 = fmul fast float %4561, %58
  %4565 = fmul fast float %4559, %4559
  %4566 = fsub fast float 1.000000e+00, %4565
  %4567 = fmul fast float %4556, 0x40005F8BE0000000
  %4568 = fsub fast float 0x400C5BF8A0000000, %4567
  %4569 = fdiv fast float %4557, %4568
  %4570 = fmul fast float %4569, 0x3FEE31C3C0000000
  %4571 = fmul fast float %4570, %4566
  %4572 = fmul fast float %4556, 0x3FDACB7480000000
  %4573 = fadd fast float %4572, 0xBFD7347680000000
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4574, %4566
  br label %4576

; <label>:4576                                    ; preds = %4547, %4479
  %4577 = phi float [ %4562, %4547 ], [ 0.000000e+00, %4479 ]
  %4578 = phi float [ %4563, %4547 ], [ 0.000000e+00, %4479 ]
  %4579 = phi float [ %4564, %4547 ], [ 0.000000e+00, %4479 ]
  %4580 = phi float [ %4571, %4547 ], [ 0.000000e+00, %4479 ]
  %4581 = phi float [ %4575, %4547 ], [ 0.000000e+00, %4479 ]
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = fmul fast float %4582, 0x3FDF454380000000
  %4584 = fmul fast float %4582, %4582
  %4585 = fmul fast float %4584, 0x3FEE471020000000
  %4586 = fadd fast float %4585, 0xBFD42F6020000000
  %4587 = fmul fast float %4542, 0x3FD20DD760000000
  %4588 = fmul fast float %4586, %4581
  %4589 = fadd fast float %4588, %4587
  %4590 = fmul fast float %4583, %4580
  %4591 = fadd fast float %4589, %4590
  %4592 = fsub fast float %4589, %4590
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %4520, float %4521, float %4522)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = fmul fast float %4593, 0x3FDF454380000000
  %4595 = fmul fast float %4593, %4593
  %4596 = fmul fast float %4595, 0x3FEE471020000000
  %4597 = fadd fast float %4596, 0xBFD42F6020000000
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4580, float %4581, float 0x3FD20DD760000000, float %4594, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4600 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = fcmp fast oeq float %4600, 0.000000e+00
  %4602 = fcmp fast oeq float %4599, 0.000000e+00
  %4603 = or i1 %4602, %4601
  br i1 %4603, label %4633, label %4604

; <label>:4604                                    ; preds = %4576
  %4605 = fsub fast float -0.000000e+00, %55
  %4606 = fsub fast float -0.000000e+00, %53
  %4607 = call float @dx.op.unary.f32(i32 24, float %4600)  ; Sqrt(value)
  %4608 = fdiv fast float %4607, %4599
  %4609 = fcmp fast ogt float %4608, 0x3FFB6F8900000000
  %4610 = select i1 %4609, float 0x3FFB6F8900000000, float %4608
  %4611 = fmul fast float %4610, 0x3FE8A23460000000
  %4612 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4610, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4614 = fmul fast float %4612, %4599
  %4615 = fmul fast float %4613, 0x3FF279A740000000
  %4616 = fadd fast float %4615, -1.000000e+00
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4606, float %54, float %4605, float %4606, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.unary.f32(i32 25, float %4617)  ; Rsqrt(value)
  %4619 = fmul fast float %4618, %4605
  %4620 = fmul fast float %4618, %4606
  %4621 = fmul fast float %4618, %54
  %4622 = fmul fast float %4616, %4616
  %4623 = fsub fast float 1.000000e+00, %4622
  %4624 = fmul fast float %4613, 0x40005F8BE0000000
  %4625 = fsub fast float 0x400C5BF8A0000000, %4624
  %4626 = fdiv fast float %4614, %4625
  %4627 = fmul fast float %4626, 0x3FEE31C3C0000000
  %4628 = fmul fast float %4627, %4623
  %4629 = fmul fast float %4613, 0x3FDACB7480000000
  %4630 = fadd fast float %4629, 0xBFD7347680000000
  %4631 = fmul fast float %4630, %4626
  %4632 = fmul fast float %4631, %4623
  br label %4633

; <label>:4633                                    ; preds = %4604, %4576
  %4634 = phi float [ %4619, %4604 ], [ 0.000000e+00, %4576 ]
  %4635 = phi float [ %4620, %4604 ], [ 0.000000e+00, %4576 ]
  %4636 = phi float [ %4621, %4604 ], [ 0.000000e+00, %4576 ]
  %4637 = phi float [ %4628, %4604 ], [ 0.000000e+00, %4576 ]
  %4638 = phi float [ %4632, %4604 ], [ 0.000000e+00, %4576 ]
  %4639 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = fmul fast float %4639, 0x3FDF454380000000
  %4641 = fmul fast float %4639, %4639
  %4642 = fmul fast float %4641, 0x3FEE471020000000
  %4643 = fadd fast float %4642, 0xBFD42F6020000000
  %4644 = fmul fast float %4599, 0x3FD20DD760000000
  %4645 = fmul fast float %4643, %4638
  %4646 = fadd fast float %4645, %4644
  %4647 = fmul fast float %4640, %4637
  %4648 = fadd fast float %4646, %4647
  %4649 = fsub fast float %4646, %4647
  %4650 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4520, float %4521, float %4522)  ; Dot3(ax,ay,az,bx,by,bz)
  %4651 = fmul fast float %4650, 0x3FDF454380000000
  %4652 = fmul fast float %4650, %4650
  %4653 = fmul fast float %4652, 0x3FEE471020000000
  %4654 = fadd fast float %4653, 0xBFD42F6020000000
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4637, float %4638, float 0x3FD20DD760000000, float %4651, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4657 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = fcmp fast oeq float %4657, 0.000000e+00
  %4659 = fcmp fast oeq float %4656, 0.000000e+00
  %4660 = or i1 %4659, %4658
  br i1 %4660, label %4690, label %4661

; <label>:4661                                    ; preds = %4633
  %4662 = fsub fast float -0.000000e+00, %51
  %4663 = fsub fast float -0.000000e+00, %49
  %4664 = call float @dx.op.unary.f32(i32 24, float %4657)  ; Sqrt(value)
  %4665 = fdiv fast float %4664, %4656
  %4666 = fcmp fast ogt float %4665, 0x3FFB6F8900000000
  %4667 = select i1 %4666, float 0x3FFB6F8900000000, float %4665
  %4668 = fmul fast float %4667, 0x3FE8A23460000000
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = call float @dx.op.binary.f32(i32 35, float %4667, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4671 = fmul fast float %4669, %4656
  %4672 = fmul fast float %4670, 0x3FF279A740000000
  %4673 = fadd fast float %4672, -1.000000e+00
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4663, float %50, float %4662, float %4663, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4675, %4662
  %4677 = fmul fast float %4675, %4663
  %4678 = fmul fast float %4675, %50
  %4679 = fmul fast float %4673, %4673
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = fmul fast float %4670, 0x40005F8BE0000000
  %4682 = fsub fast float 0x400C5BF8A0000000, %4681
  %4683 = fdiv fast float %4671, %4682
  %4684 = fmul fast float %4683, 0x3FEE31C3C0000000
  %4685 = fmul fast float %4684, %4680
  %4686 = fmul fast float %4670, 0x3FDACB7480000000
  %4687 = fadd fast float %4686, 0xBFD7347680000000
  %4688 = fmul fast float %4687, %4683
  %4689 = fmul fast float %4688, %4680
  br label %4690

; <label>:4690                                    ; preds = %4661, %4633
  %4691 = phi float [ %4676, %4661 ], [ 0.000000e+00, %4633 ]
  %4692 = phi float [ %4677, %4661 ], [ 0.000000e+00, %4633 ]
  %4693 = phi float [ %4678, %4661 ], [ 0.000000e+00, %4633 ]
  %4694 = phi float [ %4685, %4661 ], [ 0.000000e+00, %4633 ]
  %4695 = phi float [ %4689, %4661 ], [ 0.000000e+00, %4633 ]
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = fmul fast float %4696, 0x3FDF454380000000
  %4698 = fmul fast float %4696, %4696
  %4699 = fmul fast float %4698, 0x3FEE471020000000
  %4700 = fadd fast float %4699, 0xBFD42F6020000000
  %4701 = fmul fast float %4656, 0x3FD20DD760000000
  %4702 = fmul fast float %4700, %4695
  %4703 = fadd fast float %4702, %4701
  %4704 = fmul fast float %4697, %4694
  %4705 = fadd fast float %4703, %4704
  %4706 = fsub fast float %4703, %4704
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4520, float %4521, float %4522)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = fmul fast float %4707, 0x3FDF454380000000
  %4709 = fmul fast float %4707, %4707
  %4710 = fmul fast float %4709, 0x3FEE471020000000
  %4711 = fadd fast float %4710, 0xBFD42F6020000000
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4694, float %4695, float 0x3FD20DD760000000, float %4708, float %4711)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = call float @dx.op.binary.f32(i32 35, float %4591, float 0.000000e+00)  ; FMax(a,b)
  %4714 = call float @dx.op.binary.f32(i32 35, float %4648, float 0.000000e+00)  ; FMax(a,b)
  %4715 = call float @dx.op.binary.f32(i32 35, float %4705, float 0.000000e+00)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 35, float %4592, float 0.000000e+00)  ; FMax(a,b)
  %4717 = call float @dx.op.binary.f32(i32 35, float %4649, float 0.000000e+00)  ; FMax(a,b)
  %4718 = call float @dx.op.binary.f32(i32 35, float %4706, float 0.000000e+00)  ; FMax(a,b)
  %4719 = call float @dx.op.binary.f32(i32 35, float %4598, float 0.000000e+00)  ; FMax(a,b)
  %4720 = call float @dx.op.binary.f32(i32 35, float %4655, float 0.000000e+00)  ; FMax(a,b)
  %4721 = call float @dx.op.binary.f32(i32 35, float %4712, float 0.000000e+00)  ; FMax(a,b)
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = call float @dx.op.binary.f32(i32 36, float %4492, float %4723)  ; FMin(a,b)
  %4725 = fmul fast float %4724, %4524
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = bitcast float %4726 to i32
  %4728 = sub nsw i32 2129859010, %4727
  %4729 = bitcast i32 %4728 to float
  %4730 = call float @dx.op.binary.f32(i32 36, float %4493, float %4723)  ; FMin(a,b)
  %4731 = fmul fast float %4730, %4524
  %4732 = fsub fast float 1.000000e+00, %4731
  %4733 = bitcast float %4732 to i32
  %4734 = sub nsw i32 2129859010, %4733
  %4735 = bitcast i32 %4734 to float
  %4736 = call float @dx.op.binary.f32(i32 36, float %4494, float %4723)  ; FMin(a,b)
  %4737 = fmul fast float %4736, %4524
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = bitcast float %4738 to i32
  %4740 = sub nsw i32 2129859010, %4739
  %4741 = bitcast i32 %4740 to float
  %4742 = fmul fast float %4713, %4523
  %4743 = fmul fast float %4742, %4729
  %4744 = fmul fast float %4714, %4523
  %4745 = fmul fast float %4744, %4735
  %4746 = fmul fast float %4715, %4523
  %4747 = fmul fast float %4746, %4741
  %4748 = call float @dx.op.binary.f32(i32 36, float %4486, float %4723)  ; FMin(a,b)
  %4749 = fmul fast float %4748, %4524
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = bitcast float %4750 to i32
  %4752 = sub nsw i32 2129859010, %4751
  %4753 = bitcast i32 %4752 to float
  %4754 = call float @dx.op.binary.f32(i32 36, float %4487, float %4723)  ; FMin(a,b)
  %4755 = fmul fast float %4754, %4524
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = bitcast float %4756 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = call float @dx.op.binary.f32(i32 36, float %4512, float %4723)  ; FMin(a,b)
  %4761 = fmul fast float %4760, %4524
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = bitcast float %4762 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = fmul fast float %4719, %4523
  %4767 = fmul fast float %4766, %4753
  %4768 = fmul fast float %4720, %4523
  %4769 = fmul fast float %4768, %4759
  %4770 = fmul fast float %4721, %4523
  %4771 = fmul fast float %4770, %4765
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4745, float %4747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = select i1 %178, float 0.000000e+00, float %4743
  %4774 = select i1 %178, float %4772, float %4745
  %4775 = select i1 %178, float 0.000000e+00, float %4747
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4716, float %4717, float %4718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = select i1 %178, float 0.000000e+00, float %4716
  %4778 = select i1 %178, float %4776, float %4717
  %4779 = select i1 %178, float 0.000000e+00, float %4718
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4769, float %4771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = select i1 %178, float 0.000000e+00, float %4767
  %4782 = select i1 %178, float %4780, float %4769
  %4783 = select i1 %178, float 0.000000e+00, float %4771
  %4784 = fmul fast float %4514, 9.843750e-01
  %4785 = fmul fast float %4495, 9.843750e-01
  %4786 = fadd fast float %4784, 7.812500e-03
  %4787 = fadd fast float %4785, 7.812500e-03
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4786, float %4787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 3
  %4791 = fmul fast float %4789, %4486
  %4792 = fmul fast float %4789, %4487
  %4793 = fmul fast float %4789, %4512
  %4794 = fadd fast float %4791, %4790
  %4795 = fadd fast float %4792, %4790
  %4796 = fadd fast float %4793, %4790
  %4797 = call float @dx.op.binary.f32(i32 35, float %4795, float %4796)  ; FMax(a,b)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4794, float %4797)  ; FMax(a,b)
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = fmul fast float %4798, %4495
  %4801 = fadd fast float %4800, %4495
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4807 = fmul fast float %4801, %4803
  %4808 = fadd fast float %4807, %4804
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = fmul fast float %4805, %4801
  %4811 = fadd fast float %4810, %4806
  %4812 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4813 = fsub fast float 1.000000e+00, %4535
  %4814 = fadd fast float %4813, %4812
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fcmp fast olt float %4815, 1.000000e+00
  br i1 %4816, label %4817, label %5672

; <label>:4817                                    ; preds = %4690
  %4818 = fcmp fast olt float %4809, 1.000000e+00
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = fcmp fast ogt float %4820, 0.000000e+00
  %4822 = or i1 %4818, %4821
  %4823 = or i1 %4818, %4821
  %4824 = xor i1 %4823, true
  %4825 = zext i1 %4824 to i32
  br i1 %4822, label %4826, label %5069

; <label>:4826                                    ; preds = %4817
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4831 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4835 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4836 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4841 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4846 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4854, float %4855, float %4520, float %4521, float %4522)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 6, float %4858)  ; FAbs(value)
  %4860 = fmul fast float %4859, 8.000000e+00
  %4861 = fadd fast float %4860, -6.000000e+00
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4857, 8.000000e+00
  %4864 = fmul fast float %4863, %4820
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = fcmp fast ogt float %4865, 0.000000e+00
  br i1 %4866, label %4867, label %5044, !dx.controlflow.hints !79

; <label>:4867                                    ; preds = %4826
  %4868 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4870 = fsub fast float %4868, %4869
  %4871 = fmul fast float %4870, %4495
  %4872 = fadd fast float %4871, %4869
  %4873 = fmul fast float %191, 2.000000e+00
  %4874 = fmul fast float %192, 2.000000e+00
  %4875 = fadd fast float %4873, -1.000000e+00
  %4876 = fadd fast float %4874, -1.000000e+00
  %4877 = fmul fast float %4872, %4875
  %4878 = fmul fast float %4872, %4876
  %4879 = fadd fast float %4877, %79
  %4880 = fadd fast float %4878, %80
  %4881 = fmul fast float %4879, %4498
  %4882 = fmul fast float %4880, %4499
  %4883 = fadd fast float %4495, 0xBFE3333340000000
  %4884 = fmul fast float %4883, 0x4004000020000000
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4886, 3.000000e+00
  %4888 = fadd fast float %4887, %191
  %4889 = call float @dx.op.unary.f32(i32 27, float %4888)  ; Round_ni(value)
  %4890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4881, float %4882, float %4889, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4891 = extractvalue %dx.types.ResRet.f32 %4890, 0
  %4892 = fcmp fast une float %4891, 0xFFF0000000000000
  %4893 = fcmp fast une float %4891, 0x7FF0000000000000
  %4894 = and i1 %4892, %4893
  %4895 = fcmp fast olt float %4891, 0.000000e+00
  %4896 = call float @dx.op.unary.f32(i32 6, float %4891)  ; FAbs(value)
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = select i1 %4894, float 1.000000e+00, float 0.000000e+00
  %4899 = fmul fast float %4898, %4865
  %4900 = fcmp fast ogt float %4899, 0.000000e+00
  br i1 %4900, label %4901, label %5044, !dx.controlflow.hints !80

; <label>:4901                                    ; preds = %4867
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.CBufRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.CBufRet.f32 %4902, 2
  %4906 = select i1 %4895, float 0.000000e+00, float %4903
  %4907 = select i1 %4895, float 0.000000e+00, float %4904
  %4908 = select i1 %4895, float 0.000000e+00, float %4905
  %4909 = select i1 %4895, float %4828, float %4843
  %4910 = select i1 %4895, float %4833, float %4848
  %4911 = select i1 %4895, float %4838, float %4853
  %4912 = select i1 %4895, float %4829, float %4844
  %4913 = select i1 %4895, float %4834, float %4849
  %4914 = select i1 %4895, float %4839, float %4854
  %4915 = select i1 %4895, float %4830, float %4845
  %4916 = select i1 %4895, float %4835, float %4850
  %4917 = select i1 %4895, float %4840, float %4855
  %4918 = select i1 %4895, float %4831, float %4846
  %4919 = select i1 %4895, float %4836, float %4851
  %4920 = select i1 %4895, float %4841, float %4856
  %4921 = fadd fast float %4906, %134
  %4922 = fadd fast float %4907, %135
  %4923 = fadd fast float %4908, %136
  %4924 = fmul fast float %4921, %4909
  %4925 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4912, float %4924)  ; FMad(a,b,c)
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4923, float %4915, float %4925)  ; FMad(a,b,c)
  %4927 = fadd fast float %4926, %4918
  %4928 = fmul fast float %4921, %4910
  %4929 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4913, float %4928)  ; FMad(a,b,c)
  %4930 = call float @dx.op.tertiary.f32(i32 46, float %4923, float %4916, float %4929)  ; FMad(a,b,c)
  %4931 = fadd fast float %4930, %4919
  %4932 = fmul fast float %4921, %4911
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4914, float %4932)  ; FMad(a,b,c)
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4923, float %4917, float %4933)  ; FMad(a,b,c)
  %4935 = fadd fast float %4934, %4920
  %4936 = fdiv fast float 1.000000e+00, %4935
  %4937 = fmul fast float %4936, %4927
  %4938 = fmul fast float %4936, %4931
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4942 = fmul fast float %4937, %4940
  %4943 = fmul fast float %4938, %4941
  %4944 = extractvalue %dx.types.CBufRet.f32 %4939, 2
  %4945 = extractvalue %dx.types.CBufRet.f32 %4939, 3
  %4946 = fadd fast float %4942, %4944
  %4947 = fadd fast float %4943, %4945
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4950 = fmul fast float %4949, %4520
  %4951 = fmul fast float %4949, %4521
  %4952 = fmul fast float %4949, %4522
  %4953 = fadd fast float %4950, %4921
  %4954 = fadd fast float %4951, %4922
  %4955 = fadd fast float %4952, %4923
  %4956 = fmul fast float %4953, %4909
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4954, float %4912, float %4956)  ; FMad(a,b,c)
  %4958 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4915, float %4957)  ; FMad(a,b,c)
  %4959 = fadd fast float %4958, %4918
  %4960 = fmul fast float %4953, %4910
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4954, float %4913, float %4960)  ; FMad(a,b,c)
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4916, float %4961)  ; FMad(a,b,c)
  %4963 = fadd fast float %4962, %4919
  %4964 = fmul fast float %4953, %4911
  %4965 = call float @dx.op.tertiary.f32(i32 46, float %4954, float %4914, float %4964)  ; FMad(a,b,c)
  %4966 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4917, float %4965)  ; FMad(a,b,c)
  %4967 = fadd fast float %4966, %4920
  %4968 = fdiv fast float 1.000000e+00, %4967
  %4969 = fmul fast float %4968, %4959
  %4970 = fmul fast float %4968, %4963
  %4971 = fmul fast float %4946, 2.000000e+00
  %4972 = fadd fast float %4971, -1.000000e+00
  %4973 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %4974 = fmul fast float %4973, 5.000000e+00
  %4975 = fadd fast float %4974, -4.000000e+00
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4976, %4862
  %4978 = fsub fast float %4937, %4969
  %4979 = fmul fast float %4940, %4978
  %4980 = fmul fast float %4977, %4979
  %4981 = fsub fast float %4969, %4937
  %4982 = fmul fast float %4940, %4981
  %4983 = fadd fast float %4982, %4980
  %4984 = fsub fast float %4970, %4938
  %4985 = fmul fast float %4941, %4984
  %4986 = fmul fast float %4983, %4897
  %4987 = fmul fast float %4985, %4897
  %4988 = fadd fast float %4986, %4946
  %4989 = fadd fast float %4987, %4947
  %4990 = fsub fast float %4968, %4936
  %4991 = fmul fast float %4990, %4897
  %4992 = fadd fast float %4991, %4936
  %4993 = fdiv fast float 1.000000e+00, %4992
  %4994 = fadd fast float %4495, -1.000000e+00
  %4995 = fsub fast float %4993, %4935
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 2
  %4998 = fmul fast float %4997, %4993
  %4999 = fdiv fast float 1.600000e+02, %4998
  %5000 = fmul fast float %4994, %4994
  %5001 = fmul fast float %5000, 0xBFB5B17960000000
  %5002 = fmul fast float %5001, %4995
  %5003 = fmul fast float %5002, %4999
  %5004 = call float @dx.op.unary.f32(i32 21, float %5003)  ; Exp(value)
  %5005 = fmul fast float %5004, 0x3FF04B2960000000
  %5006 = fsub fast float 0x3FF04B2960000000, %5005
  %5007 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5008 = fmul fast float %5007, 4.000000e+00
  %5009 = fadd fast float %191, -5.000000e-01
  %5010 = fadd fast float %192, -5.000000e-01
  %5011 = fmul fast float %5007, 0x3FBEB851E0000000
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fmul fast float %5012, %5009
  %5014 = fmul fast float %5012, %5010
  %5015 = fadd fast float %4988, %5013
  %5016 = fadd fast float %4989, %5014
  %5017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5015, float %5016, float undef, float undef, i32 0, i32 0, i32 undef, float %5008)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.ResRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.ResRet.f32 %5017, 2
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5023 = fmul fast float %5022, %5018
  %5024 = fmul fast float %5022, %5019
  %5025 = fmul fast float %5022, %5020
  %5026 = select i1 %178, float 0.000000e+00, float %5024
  %5027 = select i1 %178, float 0.000000e+00, float %5025
  %5028 = fmul fast float %5015, 2.000000e+00
  %5029 = fmul fast float %5016, 2.000000e+00
  %5030 = fadd fast float %5028, -1.000000e+00
  %5031 = fadd fast float %5029, -1.000000e+00
  %5032 = fmul fast float %5030, %5030
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = fmul fast float %5035, %4862
  %5037 = fadd fast float %5036, %5034
  %5038 = fmul fast float %5031, %5031
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fmul fast float %5037, %5040
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = fmul fast float %5042, %4899
  br label %5044

; <label>:5044                                    ; preds = %4901, %4867, %4826
  %5045 = phi float [ %5023, %4901 ], [ 0.000000e+00, %4867 ], [ 0.000000e+00, %4826 ]
  %5046 = phi float [ %5026, %4901 ], [ 0.000000e+00, %4867 ], [ 0.000000e+00, %4826 ]
  %5047 = phi float [ %5027, %4901 ], [ 0.000000e+00, %4867 ], [ 0.000000e+00, %4826 ]
  %5048 = phi float [ %5043, %4901 ], [ 0.000000e+00, %4867 ], [ 0.000000e+00, %4826 ]
  %5049 = fcmp fast olt float %5048, 1.000000e+00
  %5050 = or i1 %5049, %4824
  %5051 = zext i1 %5050 to i32
  %5052 = fmul fast float %5048, %4809
  %5053 = fsub fast float %5048, %5052
  %5054 = fsub fast float 1.000000e+00, %4815
  %5055 = fmul fast float %5053, %5054
  %5056 = fadd fast float %5055, %4815
  %5057 = fsub fast float %5056, %5053
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fmul fast float %5058, %4781
  %5060 = fmul fast float %5058, %4782
  %5061 = fmul fast float %5058, %4783
  %5062 = fsub fast float -0.000000e+00, %5056
  %5063 = fmul fast float %5053, %5045
  %5064 = fmul fast float %5053, %5046
  %5065 = fmul fast float %5053, %5047
  %5066 = fadd fast float %5063, %5059
  %5067 = fadd fast float %5064, %5060
  %5068 = fadd fast float %5065, %5061
  br label %5069

; <label>:5069                                    ; preds = %5044, %4817
  %5070 = phi float [ %4815, %4817 ], [ %5062, %5044 ]
  %5071 = phi float [ %4781, %4817 ], [ %5066, %5044 ]
  %5072 = phi float [ %4782, %4817 ], [ %5067, %5044 ]
  %5073 = phi float [ %4783, %4817 ], [ %5068, %5044 ]
  %5074 = phi i32 [ %4825, %4817 ], [ %5051, %5044 ]
  %5075 = icmp eq i32 %5074, 0
  br i1 %5075, label %5672, label %5076

; <label>:5076                                    ; preds = %5069
  %5077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.f32 %5077, 2
  %5079 = extractvalue %dx.types.CBufRet.f32 %5077, 3
  %5080 = fmul fast float %5078, %79
  %5081 = fmul fast float %5079, %80
  %5082 = fptoui float %5080 to i32
  %5083 = fptoui float %5081 to i32
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5087 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5088 = fadd fast float %74, -4.000000e+00
  %5089 = call float @dx.op.binary.f32(i32 35, float %5088, float 0.000000e+00)  ; FMax(a,b)
  %5090 = fadd fast float %5089, %5085
  %5091 = fmul fast float %5090, %5086
  %5092 = call float @dx.op.unary.f32(i32 23, float %5091)  ; Log(value)
  %5093 = fmul fast float %5092, %5087
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5096 = fmul fast float %5093, %5095
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.i32 %5098, 1
  %5100 = add i32 %5099, -1
  %5101 = uitofp i32 %5099 to float
  %5102 = fmul fast float %5101, %5097
  %5103 = fptoui float %5102 to i32
  %5104 = call i32 @dx.op.binary.i32(i32 40, i32 %5103, i32 %5100)  ; UMin(a,b)
  %5105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.i32 %5105, 2
  %5107 = extractvalue %dx.types.CBufRet.i32 %5105, 3
  %5108 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5083, i32 %5106, i32 %5082)  ; UMad(a,b,c)
  %5109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5104, i32 %5107, i32 %5108)  ; UMad(a,b,c)
  %5110 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %5111 = fptoui float %5110 to i32
  %5112 = lshr i32 %5111, 5
  %5113 = call i32 @dx.op.binary.i32(i32 40, i32 %5112, i32 8191)  ; UMin(a,b)
  %5114 = fcmp fast ogt float %4294, 0.000000e+00
  %5115 = fcmp fast ogt float %4522, 0.000000e+00
  %5116 = and i1 %5115, %5114
  br i1 %5116, label %5117, label %5146

; <label>:5117                                    ; preds = %5076
  %5118 = call float @dx.op.dot3.f32(i32 55, float %4520, float %4521, float %4522, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5118, float -1.000000e+00)  ; FMax(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5119, float 1.000000e+00)  ; FMin(a,b)
  %5121 = fmul fast float %5120, %5120
  %5122 = fsub fast float 1.000000e+00, %5121
  %5123 = fmul fast float %5122, 0x3FFC6E2300000000
  %5124 = fsub fast float 1.000000e+00, %5123
  %5125 = fcmp fast ogt float %5124, 0.000000e+00
  %5126 = call float @dx.op.unary.f32(i32 24, float %5124)  ; Sqrt(value)
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = call float @dx.op.unary.f32(i32 23, float %5127)  ; Log(value)
  %5129 = fmul fast float %5128, 5.000000e+00
  %5130 = call float @dx.op.unary.f32(i32 21, float %5129)  ; Exp(value)
  %5131 = fmul fast float %5130, 0x3FEF591A60000000
  %5132 = fadd fast float %5131, 0x3F94DCB540000000
  %5133 = select i1 %5125, float %5132, float 1.000000e+00
  %5134 = fcmp fast oge float %5133, 1.000000e+00
  %5135 = fmul fast float %5118, 2.000000e+00
  %5136 = fadd fast float %5135, %4522
  %5137 = select i1 %5134, float %5136, float %4522
  %5138 = fsub fast float %5137, %4522
  %5139 = fmul fast float %5138, %4294
  %5140 = fadd fast float %5139, %4522
  %5141 = call float @dx.op.dot3.f32(i32 55, float %4520, float %4521, float %5140, float %4520, float %4521, float %5140)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call float @dx.op.unary.f32(i32 25, float %5141)  ; Rsqrt(value)
  %5143 = fmul fast float %5142, %4520
  %5144 = fmul fast float %5142, %4521
  %5145 = fmul fast float %5140, %5142
  br label %5146

; <label>:5146                                    ; preds = %5117, %5076
  %5147 = phi float [ %5143, %5117 ], [ %4520, %5076 ]
  %5148 = phi float [ %5144, %5117 ], [ %4521, %5076 ]
  %5149 = phi float [ %5145, %5117 ], [ %4522, %5076 ]
  %5150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.i32 %5150, 2
  %5152 = add nsw i32 %5151, -1
  %5153 = call i32 @dx.op.binary.i32(i32 37, i32 %5152, i32 0)  ; IMax(a,b)
  %5154 = shl i32 %5113, 2
  %5155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.i32 %5155, 0
  %5157 = lshr i32 %5156, 16
  %5158 = and i32 %5156, 65535
  %5159 = lshr i32 %5156, 21
  %5160 = lshr i32 %5158, 5
  %5161 = call i32 @dx.op.binary.i32(i32 40, i32 %5160, i32 %5153)  ; UMin(a,b)
  %5162 = icmp ugt i32 %5159, %5161
  br i1 %5162, label %5544, label %5163

; <label>:5163                                    ; preds = %5146
  br label %5164

; <label>:5164                                    ; preds = %5533, %5163
  %5165 = phi float [ %5534, %5533 ], [ 0.000000e+00, %5163 ]
  %5166 = phi float [ %5535, %5533 ], [ 0.000000e+00, %5163 ]
  %5167 = phi float [ %5536, %5533 ], [ 0.000000e+00, %5163 ]
  %5168 = phi float [ %5537, %5533 ], [ 1.000000e+00, %5163 ]
  %5169 = phi i32 [ %5541, %5533 ], [ %5159, %5163 ]
  %5170 = phi float [ %5538, %5533 ], [ 0.000000e+00, %5163 ]
  %5171 = phi float [ %5539, %5533 ], [ 0.000000e+00, %5163 ]
  %5172 = phi float [ %5540, %5533 ], [ 0.000000e+00, %5163 ]
  %5173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.i32 %5173, 2
  %5175 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5109, i32 %5174, i32 %5169)  ; UMad(a,b,c)
  %5176 = shl i32 %5175, 2
  %5177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.i32 %5177, 0
  %5179 = shl i32 %5169, 5
  %5180 = sub nsw i32 %5157, %5179
  %5181 = call i32 @dx.op.binary.i32(i32 37, i32 %5180, i32 0)  ; IMax(a,b)
  %5182 = call i32 @dx.op.binary.i32(i32 38, i32 %5181, i32 31)  ; IMin(a,b)
  %5183 = sub nsw i32 1, %5157
  %5184 = add nsw i32 %5183, %5158
  %5185 = call i32 @dx.op.binary.i32(i32 37, i32 %5184, i32 0)  ; IMax(a,b)
  %5186 = call i32 @dx.op.binary.i32(i32 38, i32 %5185, i32 32)  ; IMin(a,b)
  %5187 = and i32 %5186, 31
  %5188 = shl i32 -1, %5187
  %5189 = xor i32 %5188, -1
  %5190 = and i32 %5182, 31
  %5191 = shl i32 %5189, %5190
  %5192 = icmp eq i32 %5186, 32
  %5193 = select i1 %5192, i32 -1, i32 %5191
  %5194 = and i32 %5193, %5178
  %5195 = icmp eq i32 %5194, 0
  br i1 %5195, label %5533, label %5196

; <label>:5196                                    ; preds = %5164
  br label %5197

; <label>:5197                                    ; preds = %5307, %5196
  %5198 = phi float [ %5308, %5307 ], [ %5165, %5196 ]
  %5199 = phi float [ %5309, %5307 ], [ %5166, %5196 ]
  %5200 = phi float [ %5310, %5307 ], [ %5167, %5196 ]
  %5201 = phi float [ %5311, %5307 ], [ %5168, %5196 ]
  %5202 = phi i32 [ %5210, %5307 ], [ %5194, %5196 ]
  %5203 = phi float [ %5312, %5307 ], [ %5170, %5196 ]
  %5204 = phi float [ %5313, %5307 ], [ %5171, %5196 ]
  %5205 = phi float [ %5314, %5307 ], [ %5172, %5196 ]
  %5206 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5202)  ; FirstbitLo(value)
  %5207 = add i32 %5206, %5179
  %5208 = and i32 %5206, 31
  %5209 = shl i32 1, %5208
  %5210 = xor i32 %5209, %5202
  %5211 = mul i32 %5207, 72
  %5212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = add i32 %5211, 12
  %5217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.i32 %5217, 0
  %5219 = add i32 %5211, 16
  %5220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5219, i32 undef)  ; BufferLoad(srv,index,wot)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = add i32 %5211, 28
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = add i32 %5211, 32
  %5228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5227, i32 undef)  ; BufferLoad(srv,index,wot)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.ResRet.f32 %5228, 1
  %5231 = extractvalue %dx.types.ResRet.f32 %5228, 2
  %5232 = extractvalue %dx.types.ResRet.f32 %5228, 3
  %5233 = add i32 %5211, 48
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.ResRet.f32 %5234, 1
  %5237 = add i32 %5211, 56
  %5238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5237, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.ResRet.f32 %5238, 1
  %5241 = add i32 %5211, 64
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = mul i32 %5207, 60
  %5246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.ResRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.ResRet.f32 %5246, 2
  %5250 = add i32 %5245, 12
  %5251 = add i32 %5245, 48
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = and i32 %5218, 32767
  %5257 = bitcast float %5213 to i32
  %5258 = icmp eq i32 %5257, -1
  %5259 = bitcast float %5214 to i32
  %5260 = and i32 %5218, 32768
  %5261 = icmp ne i32 %5260, 0
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5266 = fsub fast float %5247, %5263
  %5267 = fsub fast float %5248, %5264
  %5268 = fsub fast float %5249, %5265
  %5269 = fsub fast float %134, %5266
  %5270 = fsub fast float %135, %5267
  %5271 = fsub fast float %136, %5268
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5273, float %5274, float %5275)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = add i32 %5245, 24
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = add i32 %5245, 36
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = call float @dx.op.unary.f32(i32 6, float %5276)  ; FAbs(value)
  %5290 = call float @dx.op.unary.f32(i32 6, float %5282)  ; FAbs(value)
  %5291 = call float @dx.op.unary.f32(i32 6, float %5288)  ; FAbs(value)
  %5292 = fsub fast float %5253, %5289
  %5293 = fsub fast float %5254, %5290
  %5294 = fsub fast float %5255, %5291
  %5295 = fmul fast float %5292, %5221
  %5296 = fmul fast float %5293, %5222
  %5297 = fmul fast float %5294, %5223
  %5298 = call float @dx.op.binary.f32(i32 36, float %5296, float %5297)  ; FMin(a,b)
  %5299 = call float @dx.op.binary.f32(i32 36, float %5295, float %5298)  ; FMin(a,b)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = call float @dx.op.binary.f32(i32 36, float %5201, float %5300)  ; FMin(a,b)
  %5302 = uitofp i1 %5261 to float
  %5303 = fadd fast float %4294, 1.000000e+00
  %5304 = fsub fast float %5303, %5302
  %5305 = fmul fast float %5301, %5304
  %5306 = fcmp fast ogt float %5305, 0.000000e+00
  br i1 %5306, label %5316, label %5307

; <label>:5307                                    ; preds = %5458, %5197
  %5308 = phi float [ %5522, %5458 ], [ %5198, %5197 ]
  %5309 = phi float [ %5523, %5458 ], [ %5199, %5197 ]
  %5310 = phi float [ %5524, %5458 ], [ %5200, %5197 ]
  %5311 = phi float [ %5531, %5458 ], [ %5201, %5197 ]
  %5312 = phi float [ %5528, %5458 ], [ %5203, %5197 ]
  %5313 = phi float [ %5529, %5458 ], [ %5204, %5197 ]
  %5314 = phi float [ %5530, %5458 ], [ %5205, %5197 ]
  %5315 = icmp eq i32 %5202, %5209
  br i1 %5315, label %5532, label %5197

; <label>:5316                                    ; preds = %5197
  br i1 %5258, label %5374, label %5317

; <label>:5317                                    ; preds = %5316
  %5318 = fsub fast float -0.000000e+00, %5273
  %5319 = fsub fast float -0.000000e+00, %5274
  %5320 = fsub fast float -0.000000e+00, %5275
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5148, float %5149, float %5318, float %5319, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = fsub fast float -0.000000e+00, %5321
  %5323 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5318, float %5319, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = fadd fast float %5323, %5236
  %5325 = fadd fast float %5235, %5323
  %5326 = fsub fast float -0.000000e+00, %5325
  %5327 = fcmp ogt float %5321, -0.000000e+00
  %5328 = select i1 %5327, float %5326, float %5324
  %5329 = call float @dx.op.unary.f32(i32 6, float %5322)  ; FAbs(value)
  %5330 = fdiv fast float 1.000000e+00, %5329
  %5331 = fmul fast float %5328, %5330
  %5332 = call float @dx.op.binary.f32(i32 35, float %5331, float 0.000000e+00)  ; FMax(a,b)
  %5333 = fsub fast float -0.000000e+00, %5279
  %5334 = fsub fast float -0.000000e+00, %5280
  %5335 = fsub fast float -0.000000e+00, %5281
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5148, float %5149, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fsub fast float -0.000000e+00, %5336
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = fadd fast float %5338, %5240
  %5340 = fadd fast float %5239, %5338
  %5341 = fsub fast float -0.000000e+00, %5340
  %5342 = fcmp ogt float %5336, -0.000000e+00
  %5343 = select i1 %5342, float %5341, float %5339
  %5344 = call float @dx.op.unary.f32(i32 6, float %5337)  ; FAbs(value)
  %5345 = fdiv fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5343, %5345
  %5347 = call float @dx.op.binary.f32(i32 35, float %5346, float 0.000000e+00)  ; FMax(a,b)
  %5348 = fsub fast float -0.000000e+00, %5285
  %5349 = fsub fast float -0.000000e+00, %5286
  %5350 = fsub fast float -0.000000e+00, %5287
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5148, float %5149, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = fsub fast float -0.000000e+00, %5351
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = fadd fast float %5353, %5244
  %5355 = fadd fast float %5243, %5353
  %5356 = fsub fast float -0.000000e+00, %5355
  %5357 = fcmp ogt float %5351, -0.000000e+00
  %5358 = select i1 %5357, float %5356, float %5354
  %5359 = call float @dx.op.unary.f32(i32 6, float %5352)  ; FAbs(value)
  %5360 = fdiv fast float 1.000000e+00, %5359
  %5361 = fmul fast float %5358, %5360
  %5362 = call float @dx.op.binary.f32(i32 35, float %5361, float 0.000000e+00)  ; FMax(a,b)
  %5363 = call float @dx.op.binary.f32(i32 36, float %5347, float %5362)  ; FMin(a,b)
  %5364 = call float @dx.op.binary.f32(i32 36, float %5332, float %5363)  ; FMin(a,b)
  %5365 = fmul fast float %5364, %5147
  %5366 = fmul fast float %5364, %5148
  %5367 = fmul fast float %5364, %5149
  %5368 = fadd fast float %5365, %134
  %5369 = fadd fast float %5366, %135
  %5370 = fadd fast float %5367, %136
  %5371 = fsub fast float %5368, %5213
  %5372 = fsub fast float %5369, %5214
  %5373 = fsub fast float %5370, %5215
  br label %5381

; <label>:5374                                    ; preds = %5316
  %5375 = fmul fast float %5147, 8.096000e+03
  %5376 = fmul fast float %5148, 8.096000e+03
  %5377 = fmul fast float %5149, 8.096000e+03
  %5378 = fadd fast float %5375, %134
  %5379 = fadd fast float %5376, %135
  %5380 = fadd fast float %5377, %136
  br label %5381

; <label>:5381                                    ; preds = %5374, %5317
  %5382 = phi float [ %5147, %5374 ], [ %5371, %5317 ]
  %5383 = phi float [ %5148, %5374 ], [ %5372, %5317 ]
  %5384 = phi float [ %5149, %5374 ], [ %5373, %5317 ]
  %5385 = phi float [ %5378, %5374 ], [ %5368, %5317 ]
  %5386 = phi float [ %5379, %5374 ], [ %5369, %5317 ]
  %5387 = phi float [ %5380, %5374 ], [ %5370, %5317 ]
  %5388 = fcmp fast olt float %5232, 1.000000e+00
  br i1 %5388, label %5389, label %5420, !dx.controlflow.hints !81

; <label>:5389                                    ; preds = %5381
  %5390 = fmul fast float %5384, %5230
  %5391 = fmul fast float %5383, %5231
  %5392 = fsub fast float %5390, %5391
  %5393 = fmul fast float %5382, %5231
  %5394 = fmul fast float %5384, %5229
  %5395 = fsub fast float %5393, %5394
  %5396 = fmul fast float %5383, %5229
  %5397 = fmul fast float %5382, %5230
  %5398 = fsub fast float %5396, %5397
  %5399 = fmul fast float %5392, 2.000000e+00
  %5400 = fmul fast float %5395, 2.000000e+00
  %5401 = fmul fast float %5398, 2.000000e+00
  %5402 = fmul fast float %5399, %5232
  %5403 = fmul fast float %5400, %5232
  %5404 = fmul fast float %5401, %5232
  %5405 = fmul fast float %5401, %5230
  %5406 = fmul fast float %5400, %5231
  %5407 = fmul fast float %5399, %5231
  %5408 = fmul fast float %5401, %5229
  %5409 = fmul fast float %5400, %5229
  %5410 = fmul fast float %5399, %5230
  %5411 = fadd fast float %5405, %5382
  %5412 = fadd fast float %5411, %5402
  %5413 = fsub fast float %5412, %5406
  %5414 = fsub fast float %5383, %5408
  %5415 = fadd fast float %5414, %5403
  %5416 = fadd fast float %5415, %5407
  %5417 = fadd fast float %5404, %5384
  %5418 = fsub fast float %5417, %5410
  %5419 = fadd fast float %5418, %5409
  br label %5420

; <label>:5420                                    ; preds = %5389, %5381
  %5421 = phi float [ %5413, %5389 ], [ %5382, %5381 ]
  %5422 = phi float [ %5416, %5389 ], [ %5383, %5381 ]
  %5423 = phi float [ %5419, %5389 ], [ %5384, %5381 ]
  br i1 %5258, label %5455, label %5424

; <label>:5424                                    ; preds = %5420
  %5425 = fmul fast float %4495, 0x400187C840000000
  %5426 = fadd fast float %5425, 0xC00EFC2120000000
  %5427 = fmul fast float %5426, %4495
  %5428 = fadd fast float %5427, 0x3FE5D16340000000
  %5429 = fmul fast float %5428, %4495
  %5430 = fadd fast float %5429, 1.000000e+00
  %5431 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5432 = fsub fast float %5385, %134
  %5433 = fsub fast float %5386, %135
  %5434 = fsub fast float %5387, %136
  %5435 = fsub fast float %5385, %5213
  %5436 = fsub fast float %5386, %5214
  %5437 = fsub fast float %5387, %5215
  %5438 = call float @dx.op.dot3.f32(i32 55, float %5432, float %5433, float %5434, float %5432, float %5433, float %5434)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = fadd fast float %5439, 0x3EE4F8B580000000
  %5441 = fdiv fast float %5438, %5440
  %5442 = bitcast float %5441 to i32
  %5443 = ashr i32 %5442, 1
  %5444 = add nsw i32 %5443, 532487669
  %5445 = bitcast i32 %5444 to float
  %5446 = fmul fast float %5445, %5431
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = fmul fast float %5447, 0x4009981AE0000000
  %5449 = fsub fast float 0x40111BBD80000000, %5448
  %5450 = fmul fast float %5449, %5447
  %5451 = fadd fast float %5450, 0xC0009F6020000000
  %5452 = fmul fast float %5451, %5447
  %5453 = fadd fast float %5452, 1.000000e+00
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  br label %5458

; <label>:5455                                    ; preds = %5420
  %5456 = icmp ne i32 %5259, -1
  %5457 = zext i1 %5456 to i32
  br label %5458

; <label>:5458                                    ; preds = %5455, %5424
  %5459 = phi float [ %4495, %5455 ], [ %5454, %5424 ]
  %5460 = phi i32 [ %5457, %5455 ], [ 0, %5424 ]
  %5461 = fmul float %5459, 5.000000e+00
  %5462 = fsub float 5.000000e+00, %5461
  %5463 = icmp ne i32 %5460, 0
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 3
  %5466 = fadd fast float %5465, %5462
  %5467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5466)  ; FMax(a,b)
  %5468 = call float @dx.op.unary.f32(i32 6, float %5421)  ; FAbs(value)
  %5469 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5470 = fadd fast float %5469, %5468
  %5471 = call float @dx.op.unary.f32(i32 6, float %5423)  ; FAbs(value)
  %5472 = fadd fast float %5470, %5471
  %5473 = fcmp fast oeq float %5472, 0.000000e+00
  %5474 = fdiv fast float 1.000000e+00, %5472
  %5475 = select i1 %5473, float 1.000000e+00, float %5474
  %5476 = fmul fast float %5475, %5421
  %5477 = fmul fast float %5475, %5422
  %5478 = call float @dx.op.unary.f32(i32 6, float %5477)  ; FAbs(value)
  %5479 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5480 = fsub fast float 1.000000e+00, %5478
  %5481 = fsub fast float 1.000000e+00, %5479
  %5482 = fcmp fast oge float %5476, 0.000000e+00
  %5483 = fcmp fast oge float %5477, 0.000000e+00
  %5484 = select i1 %5482, float 1.000000e+00, float -1.000000e+00
  %5485 = select i1 %5483, float 1.000000e+00, float -1.000000e+00
  %5486 = fcmp fast ole float %5423, 0.000000e+00
  %5487 = fmul fast float %5484, %5480
  %5488 = fmul fast float %5485, %5481
  %5489 = select i1 %5486, float %5487, float %5476
  %5490 = select i1 %5486, float %5488, float %5477
  %5491 = fmul fast float %5489, 5.000000e-01
  %5492 = fmul fast float %5490, 5.000000e-01
  %5493 = fadd fast float %5491, 5.000000e-01
  %5494 = fadd fast float %5492, 5.000000e-01
  %5495 = uitofp i32 %5256 to float
  %5496 = call float @dx.op.binary.f32(i32 36, float %5467, float 3.000000e+00)  ; FMin(a,b)
  %5497 = fadd fast float %5496, 2.000000e+00
  %5498 = call float @dx.op.unary.f32(i32 21, float %5497)  ; Exp(value)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5500 = fmul fast float %5499, %5498
  %5501 = fmul fast float %5500, 2.000000e+00
  %5502 = fsub fast float 1.000000e+00, %5501
  %5503 = fmul fast float %5493, %5502
  %5504 = fmul fast float %5494, %5502
  %5505 = fadd fast float %5503, %5500
  %5506 = fadd fast float %5504, %5500
  %5507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5505, float %5506, float %5495, float undef, i32 0, i32 0, i32 undef, float %5467)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.ResRet.f32 %5507, 1
  %5510 = extractvalue %dx.types.ResRet.f32 %5507, 2
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5513 = fmul fast float %5512, %5226
  %5514 = call float @dx.op.binary.f32(i32 36, float %4541, float %5513)  ; FMin(a,b)
  %5515 = select i1 %5463, float %5514, float %5513
  %5516 = fmul fast float %5508, %5305
  %5517 = fmul fast float %5516, %5515
  %5518 = fmul fast float %5509, %5305
  %5519 = fmul fast float %5518, %5515
  %5520 = fmul fast float %5510, %5305
  %5521 = fmul fast float %5520, %5515
  %5522 = fadd fast float %5517, %5198
  %5523 = fadd fast float %5519, %5199
  %5524 = fadd fast float %5521, %5200
  %5525 = fmul fast float %5385, %5305
  %5526 = fmul fast float %5386, %5305
  %5527 = fmul fast float %5387, %5305
  %5528 = fadd fast float %5525, %5203
  %5529 = fadd fast float %5526, %5204
  %5530 = fadd fast float %5527, %5205
  %5531 = fsub fast float %5201, %5305
  br label %5307

; <label>:5532                                    ; preds = %5307
  br label %5533

; <label>:5533                                    ; preds = %5532, %5164
  %5534 = phi float [ %5165, %5164 ], [ %5308, %5532 ]
  %5535 = phi float [ %5166, %5164 ], [ %5309, %5532 ]
  %5536 = phi float [ %5167, %5164 ], [ %5310, %5532 ]
  %5537 = phi float [ %5168, %5164 ], [ %5311, %5532 ]
  %5538 = phi float [ %5170, %5164 ], [ %5312, %5532 ]
  %5539 = phi float [ %5171, %5164 ], [ %5313, %5532 ]
  %5540 = phi float [ %5172, %5164 ], [ %5314, %5532 ]
  %5541 = add i32 %5169, 1
  %5542 = icmp ugt i32 %5541, %5161
  br i1 %5542, label %5543, label %5164, !llvm.loop !82

; <label>:5543                                    ; preds = %5533
  br label %5544

; <label>:5544                                    ; preds = %5543, %5146
  %5545 = phi float [ 0.000000e+00, %5146 ], [ %5534, %5543 ]
  %5546 = phi float [ 0.000000e+00, %5146 ], [ %5535, %5543 ]
  %5547 = phi float [ 0.000000e+00, %5146 ], [ %5536, %5543 ]
  %5548 = phi float [ 0.000000e+00, %5146 ], [ %5538, %5543 ]
  %5549 = phi float [ 0.000000e+00, %5146 ], [ %5539, %5543 ]
  %5550 = phi float [ 0.000000e+00, %5146 ], [ %5540, %5543 ]
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = select i1 %178, float 0.000000e+00, float %5545
  %5553 = select i1 %178, float %5551, float %5546
  %5554 = select i1 %178, float 0.000000e+00, float %5547
  %5555 = fcmp fast olt float %5070, 0.000000e+00
  %5556 = call float @dx.op.unary.f32(i32 6, float %5070)  ; FAbs(value)
  %5557 = fmul fast float %5556, %5071
  %5558 = fmul fast float %5556, %5072
  %5559 = fmul fast float %5556, %5073
  %5560 = select i1 %5555, float %5071, float %5557
  %5561 = select i1 %5555, float %5072, float %5558
  %5562 = select i1 %5555, float %5073, float %5559
  %5563 = fsub fast float 1.000000e+00, %5556
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fmul fast float %5564, %5552
  %5566 = fmul fast float %5564, %5553
  %5567 = fmul fast float %5564, %5554
  %5568 = fadd fast float %5560, %5565
  %5569 = fadd fast float %5561, %5566
  %5570 = fadd fast float %5562, %5567
  %5571 = fcmp fast une float %4820, 0.000000e+00
  br i1 %5571, label %5672, label %5572

; <label>:5572                                    ; preds = %5544
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.CBufRet.f32 %5573, 2
  %5577 = extractvalue %dx.types.CBufRet.f32 %5573, 3
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.CBufRet.f32 %5578, 2
  %5582 = extractvalue %dx.types.CBufRet.f32 %5578, 3
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5587 = extractvalue %dx.types.CBufRet.f32 %5583, 3
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %4520, float %4521, float %4522)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fadd fast float %4495, -1.000000e+00
  %5592 = fsub fast float %5589, %5590
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5595 = fmul fast float %5594, %5589
  %5596 = fdiv fast float 1.600000e+02, %5595
  %5597 = fmul fast float %5591, %5591
  %5598 = fmul fast float %5597, 0xBFB5B17960000000
  %5599 = fmul fast float %5598, %5592
  %5600 = fmul fast float %5599, %5596
  %5601 = call float @dx.op.unary.f32(i32 21, float %5600)  ; Exp(value)
  %5602 = fmul fast float %5601, 0x3FF04B2960000000
  %5603 = fsub fast float 0x3FF04B2960000000, %5602
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fmul fast float %5604, 4.000000e+00
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = fadd fast float %5607, %5548
  %5611 = fadd fast float %5608, %5549
  %5612 = fadd fast float %5609, %5550
  %5613 = fmul fast float %5610, %5574
  %5614 = call float @dx.op.tertiary.f32(i32 46, float %5611, float %5575, float %5613)  ; FMad(a,b,c)
  %5615 = call float @dx.op.tertiary.f32(i32 46, float %5612, float %5576, float %5614)  ; FMad(a,b,c)
  %5616 = fadd fast float %5615, %5577
  %5617 = fmul fast float %5610, %5579
  %5618 = call float @dx.op.tertiary.f32(i32 46, float %5611, float %5580, float %5617)  ; FMad(a,b,c)
  %5619 = call float @dx.op.tertiary.f32(i32 46, float %5612, float %5581, float %5618)  ; FMad(a,b,c)
  %5620 = fadd fast float %5619, %5582
  %5621 = fmul fast float %5610, %5584
  %5622 = call float @dx.op.tertiary.f32(i32 46, float %5611, float %5585, float %5621)  ; FMad(a,b,c)
  %5623 = call float @dx.op.tertiary.f32(i32 46, float %5612, float %5586, float %5622)  ; FMad(a,b,c)
  %5624 = fadd fast float %5623, %5587
  %5625 = fdiv fast float %5616, %5624
  %5626 = fdiv fast float %5620, %5624
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = fmul fast float %5628, %5625
  %5631 = fmul fast float %5629, %5626
  %5632 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5633 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5634 = fadd fast float %5630, %5632
  %5635 = fadd fast float %5631, %5633
  %5636 = fmul fast float %5588, 8.000000e+00
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = fmul fast float %5634, 2.000000e+00
  %5639 = fmul fast float %5635, 2.000000e+00
  %5640 = fadd fast float %5638, -1.000000e+00
  %5641 = fadd fast float %5639, -1.000000e+00
  %5642 = fmul fast float %5640, %5640
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fmul fast float %5641, %5641
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fmul fast float %4820, %5644
  %5649 = fmul fast float %5648, %5647
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5650, %5637
  %5652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5634, float %5635, float undef, float undef, i32 0, i32 0, i32 undef, float %5605)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5653 = extractvalue %dx.types.ResRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.ResRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.ResRet.f32 %5652, 2
  %5656 = select i1 %178, float 0.000000e+00, float %5654
  %5657 = select i1 %178, float 0.000000e+00, float %5655
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5660 = fmul fast float %5659, %5653
  %5661 = fmul fast float %5656, %5659
  %5662 = fmul fast float %5657, %5659
  %5663 = fsub fast float %5660, %5552
  %5664 = fsub fast float %5661, %5553
  %5665 = fsub fast float %5662, %5554
  %5666 = fmul fast float %5663, %5651
  %5667 = fmul fast float %5664, %5651
  %5668 = fmul fast float %5665, %5651
  %5669 = fadd fast float %5666, %5552
  %5670 = fadd fast float %5667, %5553
  %5671 = fadd fast float %5668, %5554
  br label %5672

; <label>:5672                                    ; preds = %5572, %5544, %5069, %4690
  %5673 = phi float [ %5071, %5069 ], [ %5568, %5544 ], [ %4781, %4690 ], [ %5669, %5572 ]
  %5674 = phi float [ %5072, %5069 ], [ %5569, %5544 ], [ %4782, %4690 ], [ %5670, %5572 ]
  %5675 = phi float [ %5073, %5069 ], [ %5570, %5544 ], [ %4783, %4690 ], [ %5671, %5572 ]
  %5676 = fmul fast float %5673, %4794
  %5677 = fmul fast float %5674, %4795
  %5678 = fmul fast float %5675, %4796
  %5679 = fadd fast float %5676, %3782
  %5680 = fmul fast float %5679, %953
  %5681 = fadd fast float %5677, %3783
  %5682 = fmul fast float %5681, %953
  %5683 = fadd fast float %5678, %3784
  %5684 = fmul fast float %5683, %953
  %5685 = fmul fast float %4799, %4775
  %5686 = fmul fast float %4799, %4774
  %5687 = fmul fast float %4799, %4773
  %5688 = fmul fast float %4799, %3910
  %5689 = fadd fast float %5688, -1.000000e+00
  %5690 = fmul fast float %5689, %953
  %5691 = fadd fast float %5690, 1.000000e+00
  %5692 = fmul fast float %4799, %3909
  %5693 = fadd fast float %5692, -1.000000e+00
  %5694 = fmul fast float %5693, %953
  %5695 = fadd fast float %5694, 1.000000e+00
  %5696 = fmul fast float %4799, %3908
  %5697 = fadd fast float %5696, -1.000000e+00
  %5698 = fmul fast float %5697, %953
  %5699 = fadd fast float %5698, 1.000000e+00
  %5700 = fmul fast float %5699, %4777
  %5701 = fmul fast float %5695, %4778
  %5702 = fmul fast float %5691, %4779
  %5703 = fadd fast float %5700, %5687
  %5704 = fmul fast float %5703, %953
  %5705 = fadd fast float %5701, %5686
  %5706 = fmul fast float %5705, %953
  %5707 = fadd fast float %5702, %5685
  %5708 = fmul fast float %5707, %953
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 3
  %5711 = fcmp fast oeq float %5710, 0.000000e+00
  br i1 %5711, label %5888, label %5712

; <label>:5712                                    ; preds = %5672
  %5713 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5715 = extractvalue %dx.types.CBufRet.f32 %5709, 2
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.CBufRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.CBufRet.f32 %5716, 2
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = extractvalue %dx.types.CBufRet.f32 %5720, 1
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = select i1 %178, float %5721, float %5717
  %5725 = select i1 %178, float %5723, float %5718
  %5726 = select i1 %178, float %5722, float %5719
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 1
  %5729 = fcmp fast une float %5728, 0.000000e+00
  br i1 %5729, label %5730, label %5747

; <label>:5730                                    ; preds = %5712
  %5731 = fptoui float %79 to i32
  %5732 = fptoui float %80 to i32
  %5733 = lshr i32 %5731, 4
  %5734 = lshr i32 %5732, 4
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 0
  %5737 = fptoui float %5736 to i32
  %5738 = add i32 %5737, 15
  %5739 = lshr i32 %5738, 4
  %5740 = mul i32 %5739, %5734
  %5741 = add i32 %5740, %5733
  %5742 = shl i32 %5741, 3
  %5743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5742, i32 undef)  ; BufferLoad(srv,index,wot)
  %5744 = extractvalue %dx.types.ResRet.i32 %5743, 0
  %5745 = and i32 %5744, -268435456
  %5746 = icmp eq i32 %5745, -1342177280
  br i1 %5746, label %5752, label %5747

; <label>:5747                                    ; preds = %5730, %5712
  %5748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4500, float %4501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.ResRet.f32 %5748, 2
  br label %5752

; <label>:5752                                    ; preds = %5747, %5730
  %5753 = phi float [ %5749, %5747 ], [ 0.000000e+00, %5730 ]
  %5754 = phi float [ %5750, %5747 ], [ 0.000000e+00, %5730 ]
  %5755 = phi float [ %5751, %5747 ], [ 0.000000e+00, %5730 ]
  %5756 = call float @dx.op.binary.f32(i32 36, float %5754, float %5755)  ; FMin(a,b)
  %5757 = call float @dx.op.binary.f32(i32 36, float %5753, float %5756)  ; FMin(a,b)
  %5758 = fcmp fast ogt float %5757, 0.000000e+00
  br i1 %5758, label %5759, label %5888, !dx.controlflow.hints !84

; <label>:5759                                    ; preds = %5752
  %5760 = fmul fast float %5753, %5724
  %5761 = fmul fast float %5754, %5725
  %5762 = fmul fast float %5755, %5726
  %5763 = fsub fast float %5713, %4485
  %5764 = fsub fast float %5714, %4484
  %5765 = fsub fast float %5715, %4483
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = call float @dx.op.unary.f32(i32 25, float %5766)  ; Rsqrt(value)
  %5768 = fmul fast float %5767, %5763
  %5769 = fmul fast float %5767, %5764
  %5770 = fmul fast float %5767, %5765
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = call float @dx.op.dot3.f32(i32 55, float %4482, float %4481, float %4480, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5774 = fmul fast float %5773, %5773
  %5775 = fmul fast float %5774, %4539
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fmul fast float %5776, %5773
  %5778 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = fmul fast float %5778, %5778
  %5780 = call float @dx.op.unary.f32(i32 6, float %5771)  ; FAbs(value)
  %5781 = fsub fast float 1.000000e+00, %4532
  %5782 = fmul fast float %4514, %4514
  %5783 = fmul fast float %5782, %5781
  %5784 = fadd fast float %5783, %4532
  %5785 = bitcast float %5784 to i32
  %5786 = ashr i32 %5785, 1
  %5787 = add nsw i32 %5786, 532487669
  %5788 = bitcast i32 %5787 to float
  %5789 = fadd fast float %5788, %4514
  %5790 = fmul fast float %4532, %5779
  %5791 = fsub fast float 1.000000e+00, %5779
  %5792 = fadd fast float %5791, %5790
  %5793 = fmul fast float %5780, %5780
  %5794 = fmul fast float %5793, %5781
  %5795 = fadd fast float %5794, %4532
  %5796 = bitcast float %5795 to i32
  %5797 = ashr i32 %5796, 1
  %5798 = add nsw i32 %5797, 532487669
  %5799 = bitcast i32 %5798 to float
  %5800 = fadd fast float %5799, %5780
  %5801 = fmul fast float %5792, %5792
  %5802 = fmul fast float %5801, %5789
  %5803 = fmul fast float %5802, %5800
  %5804 = fdiv fast float 0x3FF0A00000000000, %5803
  %5805 = fmul fast float %5804, %4532
  %5806 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = bitcast float %5807 to i32
  %5809 = sitofp i32 %5808 to float
  %5810 = fmul fast float %5809, 5.000000e+00
  %5811 = fadd fast float %5810, 0xC1EFBF8940000000
  %5812 = fptosi float %5811 to i32
  %5813 = bitcast i32 %5812 to float
  %5814 = fsub fast float 1.000000e+00, %4486
  %5815 = fsub fast float 1.000000e+00, %4487
  %5816 = fsub fast float 1.000000e+00, %4512
  %5817 = fmul fast float %5813, %5814
  %5818 = fmul fast float %5813, %5815
  %5819 = fmul fast float %5813, %5816
  %5820 = fadd fast float %5817, %4486
  %5821 = fadd fast float %5818, %4487
  %5822 = fadd fast float %5819, %4512
  %5823 = fmul fast float %5771, 9.843750e-01
  %5824 = fadd fast float %5823, 7.812500e-03
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5824, float %4787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 3
  %5828 = fmul fast float %5826, %4486
  %5829 = fmul fast float %5826, %4487
  %5830 = fmul fast float %5826, %4512
  %5831 = fadd fast float %5828, %5827
  %5832 = fadd fast float %5829, %5827
  %5833 = fadd fast float %5830, %5827
  %5834 = call float @dx.op.binary.f32(i32 35, float %5832, float %5833)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5831, float %5834)  ; FMax(a,b)
  %5836 = fsub fast float 1.000000e+00, %5835
  %5837 = fsub fast float -0.000000e+00, %4489
  %5838 = fsub fast float -0.000000e+00, %4490
  %5839 = fsub fast float -0.000000e+00, %4491
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5837, float %5838, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5842 = fmul fast float %5841, 9.843750e-01
  %5843 = fadd fast float %5842, 7.812500e-03
  %5844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5843, float %4787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5845 = extractvalue %dx.types.ResRet.f32 %5844, 2
  %5846 = extractvalue %dx.types.ResRet.f32 %5844, 3
  %5847 = fmul fast float %5845, %4486
  %5848 = fmul fast float %5845, %4487
  %5849 = fmul fast float %5845, %4512
  %5850 = fadd fast float %5847, %5846
  %5851 = fadd fast float %5848, %5846
  %5852 = fadd fast float %5849, %5846
  %5853 = call float @dx.op.binary.f32(i32 35, float %5851, float %5852)  ; FMax(a,b)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5850, float %5853)  ; FMax(a,b)
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = fmul fast float %5855, %5841
  %5857 = fmul fast float %5856, %3908
  %5858 = fmul fast float %5856, %3909
  %5859 = fmul fast float %5856, %3910
  %5860 = fmul fast float %5836, %5777
  %5861 = fadd fast float %5857, %5860
  %5862 = fadd fast float %5858, %5860
  %5863 = fadd fast float %5859, %5860
  %5864 = fmul fast float %5861, %5760
  %5865 = fmul fast float %5862, %5761
  %5866 = fmul fast float %5863, %5762
  %5867 = fmul fast float %5777, %5760
  %5868 = fmul fast float %5867, %5805
  %5869 = fmul fast float %5868, %5820
  %5870 = fmul fast float %5777, %5761
  %5871 = fmul fast float %5870, %5805
  %5872 = fmul fast float %5871, %5821
  %5873 = fmul fast float %5777, %5762
  %5874 = fmul fast float %5873, %5805
  %5875 = fmul fast float %5874, %5822
  %5876 = fadd fast float %5864, %5703
  %5877 = fmul fast float %5876, %953
  %5878 = fadd fast float %5865, %5705
  %5879 = fmul fast float %5878, %953
  %5880 = fadd fast float %5866, %5707
  %5881 = fmul fast float %5880, %953
  %5882 = fadd fast float %5869, %5679
  %5883 = fmul fast float %5882, %953
  %5884 = fadd fast float %5872, %5681
  %5885 = fmul fast float %5884, %953
  %5886 = fadd fast float %5875, %5683
  %5887 = fmul fast float %5886, %953
  br label %5888

; <label>:5888                                    ; preds = %5759, %5752, %5672
  %5889 = phi float [ %5680, %5672 ], [ %5680, %5752 ], [ %5883, %5759 ]
  %5890 = phi float [ %5682, %5672 ], [ %5682, %5752 ], [ %5885, %5759 ]
  %5891 = phi float [ %5684, %5672 ], [ %5684, %5752 ], [ %5887, %5759 ]
  %5892 = phi float [ %5704, %5672 ], [ %5704, %5752 ], [ %5877, %5759 ]
  %5893 = phi float [ %5706, %5672 ], [ %5706, %5752 ], [ %5879, %5759 ]
  %5894 = phi float [ %5708, %5672 ], [ %5708, %5752 ], [ %5881, %5759 ]
  %5895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.i32 %5895, 0
  %5897 = icmp eq i32 %5896, 0
  br i1 %5897, label %6287, label %5898

; <label>:5898                                    ; preds = %5888
  %5899 = fptoui float %79 to i32
  %5900 = fptoui float %80 to i32
  %5901 = lshr i32 %5899, 4
  %5902 = lshr i32 %5900, 4
  %5903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.i32 %5903, 0
  %5905 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5902, i32 %5904, i32 %5901)  ; UMad(a,b,c)
  %5906 = add nsw i32 %5896, -1
  %5907 = call i32 @dx.op.binary.i32(i32 37, i32 %5906, i32 0)  ; IMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %5909 = fptoui float %5908 to i32
  %5910 = lshr i32 %5909, 5
  %5911 = call i32 @dx.op.binary.i32(i32 40, i32 %5910, i32 8191)  ; UMin(a,b)
  %5912 = shl i32 %5911, 2
  %5913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5912, i32 undef)  ; BufferLoad(srv,index,wot)
  %5914 = extractvalue %dx.types.ResRet.i32 %5913, 0
  %5915 = lshr i32 %5914, 16
  %5916 = and i32 %5914, 65535
  %5917 = lshr i32 %5914, 21
  %5918 = lshr i32 %5916, 5
  %5919 = call i32 @dx.op.binary.i32(i32 40, i32 %5918, i32 %5907)  ; UMin(a,b)
  %5920 = icmp ugt i32 %5917, %5919
  br i1 %5920, label %6287, label %5921

; <label>:5921                                    ; preds = %5898
  br label %5922

; <label>:5922                                    ; preds = %6277, %5921
  %5923 = phi i32 [ %6284, %6277 ], [ %5917, %5921 ]
  %5924 = phi float [ %6278, %6277 ], [ %5889, %5921 ]
  %5925 = phi float [ %6279, %6277 ], [ %5890, %5921 ]
  %5926 = phi float [ %6280, %6277 ], [ %5891, %5921 ]
  %5927 = phi float [ %6281, %6277 ], [ %5892, %5921 ]
  %5928 = phi float [ %6282, %6277 ], [ %5893, %5921 ]
  %5929 = phi float [ %6283, %6277 ], [ %5894, %5921 ]
  %5930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.i32 %5930, 0
  %5932 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5905, i32 %5931, i32 %5923)  ; UMad(a,b,c)
  %5933 = shl i32 %5932, 2
  %5934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.i32 %5934, 0
  %5936 = shl i32 %5923, 5
  %5937 = sub nsw i32 %5915, %5936
  %5938 = call i32 @dx.op.binary.i32(i32 37, i32 %5937, i32 0)  ; IMax(a,b)
  %5939 = call i32 @dx.op.binary.i32(i32 38, i32 %5938, i32 31)  ; IMin(a,b)
  %5940 = sub nsw i32 1, %5915
  %5941 = add nsw i32 %5940, %5916
  %5942 = call i32 @dx.op.binary.i32(i32 37, i32 %5941, i32 0)  ; IMax(a,b)
  %5943 = call i32 @dx.op.binary.i32(i32 38, i32 %5942, i32 32)  ; IMin(a,b)
  %5944 = and i32 %5943, 31
  %5945 = shl i32 -1, %5944
  %5946 = xor i32 %5945, -1
  %5947 = and i32 %5939, 31
  %5948 = shl i32 %5946, %5947
  %5949 = icmp eq i32 %5943, 32
  %5950 = select i1 %5949, i32 -1, i32 %5948
  %5951 = and i32 %5950, %5935
  %5952 = icmp eq i32 %5951, 0
  br i1 %5952, label %6277, label %5953

; <label>:5953                                    ; preds = %5922
  br label %5954

; <label>:5954                                    ; preds = %6034, %5953
  %5955 = phi i32 [ %5966, %6034 ], [ %5951, %5953 ]
  %5956 = phi float [ %6035, %6034 ], [ %5924, %5953 ]
  %5957 = phi float [ %6036, %6034 ], [ %5925, %5953 ]
  %5958 = phi float [ %6037, %6034 ], [ %5926, %5953 ]
  %5959 = phi float [ %6038, %6034 ], [ %5927, %5953 ]
  %5960 = phi float [ %6039, %6034 ], [ %5928, %5953 ]
  %5961 = phi float [ %6040, %6034 ], [ %5929, %5953 ]
  %5962 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5955)  ; FirstbitLo(value)
  %5963 = add i32 %5962, %5936
  %5964 = and i32 %5962, 31
  %5965 = shl i32 1, %5964
  %5966 = xor i32 %5965, %5955
  %5967 = mul i32 %5963, 112
  %5968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.ResRet.f32 %5968, 2
  %5972 = or i32 %5967, 12
  %5973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5972, i32 undef)  ; BufferLoad(srv,index,wot)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = add i32 %5967, 44
  %5976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  %5978 = add i32 %5967, 48
  %5979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.ResRet.f32 %5979, 2
  %5983 = add i32 %5967, 80
  %5984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5983, i32 undef)  ; BufferLoad(srv,index,wot)
  %5985 = extractvalue %dx.types.ResRet.f32 %5984, 1
  %5986 = extractvalue %dx.types.ResRet.f32 %5984, 2
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5969, float %5970, float %5971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = select i1 %178, float %5985, float %5969
  %5989 = select i1 %178, float %5987, float %5970
  %5990 = select i1 %178, float %5986, float %5971
  %5991 = fsub fast float %5980, %134
  %5992 = fsub fast float %5981, %135
  %5993 = fsub fast float %5982, %136
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5991, float %5992, float %5993, float %5991, float %5992, float %5993)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = call float @dx.op.unary.f32(i32 24, float %5994)  ; Sqrt(value)
  %5996 = fdiv fast float 1.000000e+00, %5995
  %5997 = fmul fast float %5996, %5991
  %5998 = fmul fast float %5996, %5992
  %5999 = fmul fast float %5996, %5993
  %6000 = fadd fast float %5995, %5974
  %6001 = fdiv fast float 1.000000e+00, %6000
  %6002 = fmul float %5977, %6001
  %6003 = fmul float %6002, %6002
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = and i32 %5965, %5951
  %6006 = icmp eq i32 %6005, 0
  br i1 %6006, label %6029, label %6007, !dx.controlflow.hints !85

; <label>:6007                                    ; preds = %5954
  %6008 = lshr i32 %5899, 5
  %6009 = lshr i32 %5900, 5
  %6010 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %6008, i32 %6009, i32 %5963, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6011 = extractvalue %dx.types.ResRet.i32 %6010, 0
  %6012 = and i32 %6011, 3
  %6013 = icmp eq i32 %6012, 0
  %6014 = select i1 %6013, float 1.000000e+00, float 0.000000e+00
  %6015 = icmp eq i32 %6012, 3
  br i1 %6015, label %6016, label %6029

; <label>:6016                                    ; preds = %6007
  %6017 = lshr i32 %6011, 10
  %6018 = and i32 %6017, 8160
  %6019 = and i32 %5900, 31
  %6020 = or i32 %6018, %6019
  %6021 = lshr i32 %6011, 1
  %6022 = and i32 %6021, 16352
  %6023 = and i32 %5899, 31
  %6024 = or i32 %6022, %6023
  %6025 = lshr i32 %6011, 23
  %6026 = and i32 %6025, 255
  %6027 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %6024, i32 %6020, i32 %6026, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6028 = extractvalue %dx.types.ResRet.f32 %6027, 0
  br label %6029

; <label>:6029                                    ; preds = %6016, %6007, %5954
  %6030 = phi float [ %6028, %6016 ], [ %6014, %6007 ], [ 0.000000e+00, %5954 ]
  %6031 = call float @dx.op.binary.f32(i32 36, float %6030, float %6030)  ; FMin(a,b)
  %6032 = call float @dx.op.binary.f32(i32 36, float %6030, float %6031)  ; FMin(a,b)
  %6033 = fcmp fast ogt float %6032, 0.000000e+00
  br i1 %6033, label %6042, label %6034, !dx.controlflow.hints !86

; <label>:6034                                    ; preds = %6103, %6029
  %6035 = phi float [ %5956, %6029 ], [ %6273, %6103 ]
  %6036 = phi float [ %5957, %6029 ], [ %6274, %6103 ]
  %6037 = phi float [ %5958, %6029 ], [ %6275, %6103 ]
  %6038 = phi float [ %5959, %6029 ], [ %6261, %6103 ]
  %6039 = phi float [ %5960, %6029 ], [ %6262, %6103 ]
  %6040 = phi float [ %5961, %6029 ], [ %6263, %6103 ]
  %6041 = icmp eq i32 %5955, %5965
  br i1 %6041, label %6276, label %5954

; <label>:6042                                    ; preds = %6029
  %6043 = fmul fast float %6030, %5988
  %6044 = fmul fast float %6030, %5989
  %6045 = fmul fast float %6030, %5990
  %6046 = fsub fast float %5982, %4285
  %6047 = fcmp fast ogt float %6046, 0.000000e+00
  %6048 = fsub fast float %136, %4285
  %6049 = fcmp fast ogt float %6048, 0.000000e+00
  %6050 = xor i1 %6049, %6047
  %6051 = fsub fast float %4285, %5982
  %6052 = fmul fast float %6051, 2.000000e+00
  %6053 = fadd fast float %6052, %5982
  %6054 = select i1 %6050, float %5982, float %6053
  %6055 = fsub fast float %6054, %136
  %6056 = call float @dx.op.dot3.f32(i32 55, float %5991, float %5992, float %6055, float %5991, float %5992, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = call float @dx.op.unary.f32(i32 25, float %6056)  ; Rsqrt(value)
  %6058 = fmul fast float %6057, %5991
  %6059 = fmul fast float %6057, %5992
  %6060 = fmul fast float %6057, %6055
  %6061 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4293)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = fdiv fast float 1.000000e+00, %6062
  %6064 = fmul fast float %6063, %6061
  %6065 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6048, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = fcmp fast ogt float %6065, 0.000000e+00
  %6067 = fcmp fast olt float %6065, 0.000000e+00
  %6068 = zext i1 %6066 to i32
  %6069 = zext i1 %6067 to i32
  %6070 = sub nsw i32 %6068, %6069
  %6071 = sitofp i32 %6070 to float
  %6072 = fsub fast float %6054, %4285
  %6073 = call float @dx.op.dot3.f32(i32 55, float %5991, float %5992, float %6072, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = fcmp fast ogt float %6073, 0.000000e+00
  %6075 = fcmp fast olt float %6073, 0.000000e+00
  %6076 = zext i1 %6074 to i32
  %6077 = zext i1 %6075 to i32
  %6078 = sub nsw i32 %6076, %6077
  %6079 = sitofp i32 %6078 to float
  %6080 = fcmp fast une float %6071, %6079
  br i1 %6080, label %6081, label %6091

; <label>:6081                                    ; preds = %6042
  %6082 = fmul fast float %6064, %6060
  %6083 = fmul fast float %6064, %6059
  %6084 = fmul fast float %6064, %6058
  %6085 = fmul fast float %6084, %6084
  %6086 = fmul fast float %6083, %6083
  %6087 = fadd fast float %6085, %6086
  %6088 = fmul fast float %6082, %6082
  %6089 = fadd fast float %6087, %6088
  %6090 = call float @dx.op.unary.f32(i32 24, float %6089)  ; Sqrt(value)
  br label %6103

; <label>:6091                                    ; preds = %6042
  %6092 = icmp slt i32 %6070, 0
  br i1 %6092, label %6093, label %6103

; <label>:6093                                    ; preds = %6091
  %6094 = fsub fast float %134, %5980
  %6095 = fsub fast float %135, %5981
  %6096 = fsub fast float %136, %6054
  %6097 = fmul fast float %6094, %6094
  %6098 = fmul fast float %6095, %6095
  %6099 = fadd fast float %6097, %6098
  %6100 = fmul fast float %6096, %6096
  %6101 = fadd fast float %6099, %6100
  %6102 = call float @dx.op.unary.f32(i32 24, float %6101)  ; Sqrt(value)
  br label %6103

; <label>:6103                                    ; preds = %6093, %6091, %6081
  %6104 = phi float [ %6090, %6081 ], [ %6102, %6093 ], [ 0.000000e+00, %6091 ]
  %6105 = and i1 %6049, %6047
  %6106 = fsub fast float -0.000000e+00, %6104
  %6107 = select i1 %6105, float -0.000000e+00, float %6106
  %6108 = fmul fast float %4286, 0x3FF7154760000000
  %6109 = fmul fast float %6108, %6107
  %6110 = fmul fast float %4287, 0x3FF7154760000000
  %6111 = fmul fast float %6110, %6107
  %6112 = fmul fast float %4288, 0x3FF7154760000000
  %6113 = fmul fast float %6112, %6107
  %6114 = call float @dx.op.unary.f32(i32 21, float %6109)  ; Exp(value)
  %6115 = call float @dx.op.unary.f32(i32 21, float %6111)  ; Exp(value)
  %6116 = call float @dx.op.unary.f32(i32 21, float %6113)  ; Exp(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = fmul fast float %6043, %6117
  %6121 = fmul fast float %6044, %6118
  %6122 = fmul fast float %6045, %6119
  %6123 = fsub fast float %5997, %4485
  %6124 = fsub fast float %5998, %4484
  %6125 = fsub fast float %5999, %4483
  %6126 = call float @dx.op.dot3.f32(i32 55, float %6123, float %6124, float %6125, float %6123, float %6124, float %6125)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = call float @dx.op.unary.f32(i32 25, float %6126)  ; Rsqrt(value)
  %6128 = fmul fast float %6127, %6123
  %6129 = fmul fast float %6127, %6124
  %6130 = fmul fast float %6127, %6125
  %6131 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = call float @dx.op.dot3.f32(i32 55, float %4482, float %4481, float %4480, float %6128, float %6129, float %6130)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6134 = fmul fast float %6133, %6004
  %6135 = fmul fast float %6133, %6133
  %6136 = fmul fast float %6135, %4539
  %6137 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6138 = fmul fast float %6134, %6137
  %6139 = bitcast float %5994 to i32
  %6140 = ashr i32 %6139, 1
  %6141 = sub nsw i32 1597463007, %6140
  %6142 = bitcast i32 %6141 to float
  %6143 = fmul fast float %6142, %5991
  %6144 = fmul fast float %6142, %5992
  %6145 = fmul fast float %6142, %5993
  %6146 = fsub fast float %6143, %4485
  %6147 = fsub fast float %6144, %4484
  %6148 = fsub fast float %6145, %4483
  %6149 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %6146, float %6147, float %6148)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = call float @dx.op.unary.f32(i32 25, float %6149)  ; Rsqrt(value)
  %6151 = fmul fast float %6146, %6150
  %6152 = fmul fast float %6147, %6150
  %6153 = fmul fast float %6148, %6150
  %6154 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %6151, float %6152, float %6153)  ; Dot3(ax,ay,az,bx,by,bz)
  %6155 = fmul fast float %6154, %6154
  %6156 = call float @dx.op.unary.f32(i32 6, float %6131)  ; FAbs(value)
  %6157 = fsub fast float 1.000000e+00, %4532
  %6158 = fmul fast float %4514, %4514
  %6159 = fmul fast float %6158, %6157
  %6160 = fadd fast float %6159, %4532
  %6161 = bitcast float %6160 to i32
  %6162 = ashr i32 %6161, 1
  %6163 = add nsw i32 %6162, 532487669
  %6164 = bitcast i32 %6163 to float
  %6165 = fadd fast float %6164, %4514
  %6166 = fmul fast float %4532, %6155
  %6167 = fsub fast float 1.000000e+00, %6155
  %6168 = fadd fast float %6167, %6166
  %6169 = fmul fast float %6156, %6156
  %6170 = fmul fast float %6169, %6157
  %6171 = fadd fast float %6170, %4532
  %6172 = bitcast float %6171 to i32
  %6173 = ashr i32 %6172, 1
  %6174 = add nsw i32 %6173, 532487669
  %6175 = bitcast i32 %6174 to float
  %6176 = fadd fast float %6175, %6156
  %6177 = fmul fast float %6168, %6168
  %6178 = fmul fast float %6177, %6165
  %6179 = fmul fast float %6178, %6176
  %6180 = fdiv fast float 1.000000e+00, %6179
  %6181 = bitcast float %4532 to i32
  %6182 = sitofp i32 %6181 to float
  %6183 = fmul fast float %6182, 0x3FE7F73180000000
  %6184 = fadd fast float %6183, 0x41AFE27C40000000
  %6185 = fptosi float %6184 to i32
  %6186 = bitcast i32 %6185 to float
  %6187 = fmul fast float %5977, 0x3FD80E9D60000000
  %6188 = fmul fast float %6187, %6142
  %6189 = fadd fast float %6186, %6188
  %6190 = bitcast float %6189 to i32
  %6191 = sub nsw i32 2129859010, %6190
  %6192 = bitcast i32 %6191 to float
  %6193 = fmul fast float %4532, %6180
  %6194 = fmul fast float %6193, %6186
  %6195 = fmul fast float %6194, %6192
  %6196 = call float @dx.op.unary.f32(i32 6, float %6132)  ; FAbs(value)
  %6197 = fsub fast float 1.000000e+00, %6196
  %6198 = bitcast float %6197 to i32
  %6199 = sitofp i32 %6198 to float
  %6200 = fmul fast float %6199, 5.000000e+00
  %6201 = fadd fast float %6200, 0xC1EFBF8940000000
  %6202 = fptosi float %6201 to i32
  %6203 = bitcast i32 %6202 to float
  %6204 = fsub fast float 1.000000e+00, %4486
  %6205 = fsub fast float 1.000000e+00, %4487
  %6206 = fsub fast float 1.000000e+00, %4512
  %6207 = fmul fast float %6203, %6204
  %6208 = fmul fast float %6203, %6205
  %6209 = fmul fast float %6203, %6206
  %6210 = fadd fast float %6207, %4486
  %6211 = fadd fast float %6208, %4487
  %6212 = fadd fast float %6209, %4512
  %6213 = fmul fast float %6131, 9.843750e-01
  %6214 = fadd fast float %6213, 7.812500e-03
  %6215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6214, float %4787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 3
  %6218 = fmul fast float %6216, %4486
  %6219 = fmul fast float %6216, %4487
  %6220 = fmul fast float %6216, %4512
  %6221 = fadd fast float %6218, %6217
  %6222 = fadd fast float %6219, %6217
  %6223 = fadd fast float %6220, %6217
  %6224 = call float @dx.op.binary.f32(i32 35, float %6222, float %6223)  ; FMax(a,b)
  %6225 = call float @dx.op.binary.f32(i32 35, float %6221, float %6224)  ; FMax(a,b)
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = fsub fast float -0.000000e+00, %4489
  %6228 = fsub fast float -0.000000e+00, %4490
  %6229 = fsub fast float -0.000000e+00, %4491
  %6230 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6227, float %6228, float %6229)  ; Dot3(ax,ay,az,bx,by,bz)
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6232 = fmul fast float %6231, %6004
  %6233 = fmul fast float %6231, 9.843750e-01
  %6234 = fadd fast float %6233, 7.812500e-03
  %6235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6234, float %4787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 3
  %6238 = fmul fast float %6236, %4486
  %6239 = fmul fast float %6236, %4487
  %6240 = fmul fast float %6236, %4512
  %6241 = fadd fast float %6238, %6237
  %6242 = fadd fast float %6239, %6237
  %6243 = fadd fast float %6240, %6237
  %6244 = call float @dx.op.binary.f32(i32 35, float %6242, float %6243)  ; FMax(a,b)
  %6245 = call float @dx.op.binary.f32(i32 35, float %6241, float %6244)  ; FMax(a,b)
  %6246 = fsub fast float 1.000000e+00, %6245
  %6247 = fmul fast float %6232, %6246
  %6248 = fmul fast float %6247, %3908
  %6249 = fmul fast float %6247, %3909
  %6250 = fmul fast float %6247, %3910
  %6251 = fmul fast float %6226, %6138
  %6252 = fadd fast float %6248, %6251
  %6253 = fadd fast float %6249, %6251
  %6254 = fadd fast float %6250, %6251
  %6255 = fmul fast float %6120, %953
  %6256 = fmul fast float %6255, %6252
  %6257 = fmul fast float %6121, %953
  %6258 = fmul fast float %6257, %6253
  %6259 = fmul fast float %6122, %953
  %6260 = fmul fast float %6259, %6254
  %6261 = fadd fast float %6256, %5959
  %6262 = fadd fast float %6258, %5960
  %6263 = fadd fast float %6260, %5961
  %6264 = fmul fast float %6255, %6138
  %6265 = fmul fast float %6264, %6210
  %6266 = fmul fast float %6265, %6195
  %6267 = fmul fast float %6257, %6138
  %6268 = fmul fast float %6267, %6211
  %6269 = fmul fast float %6268, %6195
  %6270 = fmul fast float %6259, %6138
  %6271 = fmul fast float %6270, %6212
  %6272 = fmul fast float %6271, %6195
  %6273 = fadd fast float %6266, %5956
  %6274 = fadd fast float %6269, %5957
  %6275 = fadd fast float %6272, %5958
  br label %6034

; <label>:6276                                    ; preds = %6034
  br label %6277

; <label>:6277                                    ; preds = %6276, %5922
  %6278 = phi float [ %5924, %5922 ], [ %6035, %6276 ]
  %6279 = phi float [ %5925, %5922 ], [ %6036, %6276 ]
  %6280 = phi float [ %5926, %5922 ], [ %6037, %6276 ]
  %6281 = phi float [ %5927, %5922 ], [ %6038, %6276 ]
  %6282 = phi float [ %5928, %5922 ], [ %6039, %6276 ]
  %6283 = phi float [ %5929, %5922 ], [ %6040, %6276 ]
  %6284 = add i32 %5923, 1
  %6285 = icmp ugt i32 %6284, %5919
  br i1 %6285, label %6286, label %5922

; <label>:6286                                    ; preds = %6277
  br label %6287

; <label>:6287                                    ; preds = %6286, %5898, %5888
  %6288 = phi float [ %5889, %5888 ], [ %5889, %5898 ], [ %6278, %6286 ]
  %6289 = phi float [ %5890, %5888 ], [ %5890, %5898 ], [ %6279, %6286 ]
  %6290 = phi float [ %5891, %5888 ], [ %5891, %5898 ], [ %6280, %6286 ]
  %6291 = phi float [ %5892, %5888 ], [ %5892, %5898 ], [ %6281, %6286 ]
  %6292 = phi float [ %5893, %5888 ], [ %5893, %5898 ], [ %6282, %6286 ]
  %6293 = phi float [ %5894, %5888 ], [ %5894, %5898 ], [ %6283, %6286 ]
  %6294 = call float @dx.op.unary.f32(i32 24, float %4492)  ; Sqrt(value)
  %6295 = call float @dx.op.unary.f32(i32 24, float %4493)  ; Sqrt(value)
  %6296 = call float @dx.op.unary.f32(i32 24, float %4494)  ; Sqrt(value)
  %6297 = fmul fast float %6294, %6291
  %6298 = fmul fast float %6295, %6292
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  br i1 %178, label %6301, label %6325

; <label>:6301                                    ; preds = %6287
  %6302 = fadd fast float %6293, %3794
  %6303 = fmul fast float %6302, %3792
  %6304 = fsub fast float 1.000000e+00, %3792
  %6305 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6306, 3
  %6308 = fmul fast float %6307, %6305
  %6309 = fsub fast float 1.000000e+00, %4514
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = fmul fast float %6311, %6309
  %6313 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6314 = fmul fast float %6313, %4510
  %6315 = fadd fast float %6298, %6297
  %6316 = fmul fast float %6300, %6315
  %6317 = extractvalue %dx.types.CBufRet.f32 %6306, 1
  %6318 = fadd fast float %6308, %6303
  %6319 = fsub fast float %6318, %6312
  %6320 = fadd fast float %6319, %6314
  %6321 = fsub fast float %6320, %6317
  %6322 = extractvalue %dx.types.CBufRet.f32 %6306, 2
  %6323 = fmul fast float %6321, %6322
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  br label %6341

; <label>:6325                                    ; preds = %6287
  %6326 = fmul fast float %6296, %6293
  %6327 = fmul fast float %6300, %6297
  %6328 = fmul fast float %6300, %6298
  %6329 = fmul fast float %6326, %6300
  %6330 = add i32 %40, 356
  %6331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6330, i32 undef)  ; BufferLoad(srv,index,wot)
  %6332 = extractvalue %dx.types.ResRet.i32 %6331, 0
  %6333 = and i32 %6332, 32
  %6334 = icmp eq i32 %6333, 0
  br i1 %6334, label %6341, label %6335

; <label>:6335                                    ; preds = %6325
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = fmul fast float %6337, 0x3FE99999A0000000
  %6339 = fadd fast float %6337, %6327
  %6340 = fadd fast float %6338, %6329
  br label %6341

; <label>:6341                                    ; preds = %6335, %6325, %6301
  %6342 = phi float [ %6316, %6301 ], [ %6339, %6335 ], [ %6327, %6325 ]
  %6343 = phi float [ %6324, %6301 ], [ %6328, %6335 ], [ %6328, %6325 ]
  %6344 = phi float [ 1.000000e+00, %6301 ], [ %6340, %6335 ], [ %6329, %6325 ]
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = fmul fast float %6346, %6289
  %6348 = fmul fast float %6346, %6290
  %6349 = fadd fast float %6289, %6288
  %6350 = select i1 %178, float %6349, float %6288
  %6351 = fmul float %6350, %6346
  %6352 = select i1 %178, float 0.000000e+00, float %6347
  %6353 = select i1 %178, float 0.000000e+00, float %6348
  %6354 = fmul fast float %6342, %6294
  %6355 = fmul fast float %6343, %6295
  %6356 = fmul fast float %6344, %6296
  %6357 = fadd fast float %6351, %6354
  %6358 = fadd fast float %6352, %6355
  %6359 = fadd fast float %6353, %6356
  %6360 = select i1 %178, float %6343, float %6358
  %6361 = select i1 %178, float %6344, float %6359
  %6362 = call float @dx.op.binary.f32(i32 36, float %6357, float 3.225500e+04)  ; FMin(a,b)
  %6363 = call float @dx.op.binary.f32(i32 36, float %6360, float 3.225500e+04)  ; FMin(a,b)
  %6364 = call float @dx.op.binary.f32(i32 36, float %6361, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6362)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6363)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6364)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!53 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !78}
!55 = !{!56, !76, null}
!56 = !{!57, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75}
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
!75 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!78 = !{i32 0, i64 24}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}

