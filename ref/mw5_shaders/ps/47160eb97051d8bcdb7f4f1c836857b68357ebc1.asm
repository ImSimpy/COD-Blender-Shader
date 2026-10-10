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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 716433007e250389a4f5306202f3d9eb
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t49,space1     1
;                                   texture    byte         r/o     T10     t50,space1     1
;                                   texture    byte         r/o     T11     t51,space1     1
;                                   texture    byte         r/o     T12     t52,space1     1
;                                   texture    byte         r/o     T13     t16,space1     1
;                                   texture    byte         r/o     T14     t17,space1     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = fmul fast float %60, %54
  %62 = fmul fast float %60, %55
  %63 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = bitcast float %63 to i32
  %65 = ashr i32 %64, 1
  %66 = sub nsw i32 1597250115, %65
  %67 = bitcast i32 %66 to float
  %68 = fmul fast float %67, %46
  %69 = fmul fast float %67, %47
  %70 = fmul fast float %67, %48
  %71 = fmul fast float %47, %44
  %72 = fmul fast float %48, %43
  %73 = fsub fast float %71, %72
  %74 = fmul fast float %48, %42
  %75 = fmul fast float %46, %44
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %46, %43
  %78 = fmul fast float %47, %42
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %73, %45
  %81 = fmul fast float %76, %45
  %82 = fmul fast float %79, %45
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %61, 2.000000e+00
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %62, 2.000000e+00
  %89 = fmul fast float %88, %85
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %56
  %117 = fmul fast float %113, %56
  %118 = fmul fast float %115, %56
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %120, %61
  %123 = fmul fast float %121, %62
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %125, 114688
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %127, float %122, float 0.000000e+00
  %129 = select i1 %127, float %123, float 0.000000e+00
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %128, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fmul fast float %131, 2.550000e+02
  %133 = fptoui float %132 to i32
  %134 = select i1 %127, i32 %133, i32 0
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %138 = and i32 %137, 3
  %139 = icmp ne i32 %138, 0
  %140 = and i32 %137, 4
  %141 = icmp ne i32 %140, 0
  %142 = and i1 %139, %141
  br i1 %142, label %143, label %154

; <label>:143                                     ; preds = %0
  %144 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %145 = fmul fast float %144, %62
  %146 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %147 = fmul fast float %146, %61
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %147, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fsub fast float 1.000000e+00, %149
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = fcmp fast olt float %150, %152
  br label %157

; <label>:154                                     ; preds = %0
  %155 = icmp eq i32 %140, 0
  %156 = and i1 %139, %155
  br label %157

; <label>:157                                     ; preds = %154, %143
  %158 = phi i1 [ %153, %143 ], [ %156, %154 ]
  %159 = add i32 %33, 156
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = shl i32 %161, 4
  %163 = and i32 %162, 32752
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = lshr i32 %161, 7
  %166 = and i32 %165, 32752
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = lshr i32 %161, 22
  %169 = shl nuw nsw i32 %168, 5
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = add i32 %33, 216
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = and i32 %173, 255
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, 0x3F70101020000000
  %177 = lshr i32 %173, 8
  %178 = and i32 %177, 255
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3F70101020000000
  %181 = lshr i32 %173, 16
  %182 = and i32 %181, 255
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, 0x3F70101020000000
  %185 = add i32 %33, 36
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 65535
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = lshr i32 %187, 16
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = add i32 %33, 288
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = and i32 %194, 65535
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = lshr i32 %194, 16
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = fmul fast float %196, 0x3F50624DE0000000
  %200 = fmul fast float %198, 0x3F50624DE0000000
  %201 = add i32 %33, 172
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %213 = add i32 %33, 232
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %227 = add i32 %33, 52
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %33, 304
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = add i32 %33, 188
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %255 = add i32 %33, 248
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %269 = add i32 %33, 68
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %33, 320
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %33, 204
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %297 = add i32 %33, 264
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %311 = add i32 %33, 84
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %33, 336
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %33, 348
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 32
  %331 = icmp eq i32 %330, 0
  %332 = and i32 %329, 64
  %333 = icmp eq i32 %332, 0
  %334 = and i32 %329, 128
  %335 = icmp eq i32 %334, 0
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 2
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %353, label %340

; <label>:340                                     ; preds = %157
  %341 = add i32 %33, 488
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = add i32 %343, 0
  %345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %345, %dx.types.Handle %58, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = extractvalue %dx.types.ResRet.f32 %346, 2
  %350 = fmul fast float %347, %51
  %351 = fmul fast float %348, %52
  %352 = fmul fast float %349, %53
  br label %353

; <label>:353                                     ; preds = %340, %157
  %354 = phi float [ %53, %157 ], [ %352, %340 ]
  %355 = phi float [ %52, %157 ], [ %351, %340 ]
  %356 = phi float [ %51, %157 ], [ %350, %340 ]
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 2
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %380, label %361

; <label>:361                                     ; preds = %353
  %362 = add i32 %33, 44
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 1
  %366 = icmp ne i32 %365, 0
  %367 = select i1 %366, float %356, float 1.000000e+00
  %368 = add i32 %33, 60
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 1
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %355, float 1.000000e+00
  %374 = add i32 %33, 76
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %354, float 1.000000e+00
  br label %380

; <label>:380                                     ; preds = %361, %353
  %381 = phi float [ %354, %353 ], [ %379, %361 ]
  %382 = phi float [ %355, %353 ], [ %373, %361 ]
  %383 = phi float [ %356, %353 ], [ %367, %361 ]
  %384 = lshr i32 %358, 20
  %385 = and i32 %384, 3
  %386 = add nuw nsw i32 %385, 1
  %387 = add i32 %33, 24
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %33, 28
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = or i32 %392, %389
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %964, label %395

; <label>:395                                     ; preds = %380
  %396 = and i32 %389, 262144
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %397, float %36, float 1.000000e+00
  %399 = select i1 %397, float %37, float 0.000000e+00
  %400 = select i1 %397, float %38, float 0.000000e+00
  %401 = select i1 %397, float %39, float 1.000000e+00
  %402 = select i1 %397, float %40, float %49
  %403 = select i1 %397, float %41, float %50
  %404 = add i32 %33, 284
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = lshr i32 %406, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %408, 0x3F50624DE0000000
  %410 = add i32 %33, 88
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = lshr i32 %412, 16
  %414 = and i32 %413, 255
  %415 = lshr i32 %412, 24
  %416 = add i32 %33, 292
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %33, 32
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 22
  %427 = shl nuw nsw i32 %426, 5
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = shl i32 %425, 4
  %430 = and i32 %429, 32752
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %425, 7
  %433 = and i32 %432, 32752
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %437 = fmul fast float %436, 1.000000e+03
  %438 = fmul fast float %199, %437
  %439 = call float @dx.op.unary.f32(i32 22, float %438)  ; Frc(value)
  %440 = fadd fast float %439, %189
  %441 = fmul fast float %200, %437
  %442 = call float @dx.op.unary.f32(i32 22, float %441)  ; Frc(value)
  %443 = fadd fast float %442, %191
  %444 = fmul fast float %409, %437
  %445 = call float @dx.op.unary.f32(i32 22, float %444)  ; Frc(value)
  %446 = fmul fast float %445, 0x401921FB60000000
  %447 = fadd fast float %446, %428
  %448 = call float @dx.op.unary.f32(i32 13, float %447)  ; Sin(value)
  %449 = call float @dx.op.unary.f32(i32 12, float %447)  ; Cos(value)
  %450 = fsub fast float -0.000000e+00, %448
  %451 = fadd fast float %402, -5.000000e-01
  %452 = fadd fast float %403, -5.000000e-01
  %453 = fmul fast float %420, %451
  %454 = fmul fast float %422, %452
  %455 = fadd fast float %453, 5.000000e-01
  %456 = fadd fast float %454, 5.000000e-01
  %457 = fmul fast float %431, %455
  %458 = fmul fast float %434, %456
  %459 = fmul fast float %449, %457
  %460 = call float @dx.op.tertiary.f32(i32 46, float %450, float %458, float %459)  ; FMad(a,b,c)
  %461 = fmul fast float %448, %457
  %462 = call float @dx.op.tertiary.f32(i32 46, float %449, float %458, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %440, %460
  %464 = fadd fast float %443, %462
  %465 = icmp ugt i32 %414, 1
  %466 = icmp ugt i32 %412, 33554431
  %467 = or i1 %466, %465
  br i1 %467, label %468, label %493

; <label>:468                                     ; preds = %395
  %469 = add i32 %33, 228
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = fmul fast float %436, %473
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = mul nuw nsw i32 %414, %415
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %475, %477
  %479 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %480 = fptoui float %479 to i32
  %481 = urem i32 %480, %414
  %482 = udiv i32 %480, %415
  %483 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %484 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  %485 = uitofp i32 %481 to float
  %486 = uitofp i32 %482 to float
  %487 = fadd fast float %483, %485
  %488 = fadd fast float %484, %486
  %489 = uitofp i32 %414 to float
  %490 = uitofp i32 %415 to float
  %491 = fdiv fast float %487, %489
  %492 = fdiv fast float %488, %490
  br label %493

; <label>:493                                     ; preds = %468, %395
  %494 = phi float [ %491, %468 ], [ %463, %395 ]
  %495 = phi float [ %492, %468 ], [ %464, %395 ]
  %496 = and i32 %389, 16
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %694, label %498

; <label>:498                                     ; preds = %493
  %499 = add i32 %33, 360
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = add i32 %501, 0
  %503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %503, %dx.types.Handle %57, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = and i32 %412, 255
  %510 = uitofp i32 %509 to float
  %511 = lshr i32 %412, 8
  %512 = and i32 %511, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %508, %510
  %515 = fadd fast float %514, %513
  %516 = fmul fast float %515, 0x3F70101000000000
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 512
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %529, label %521

; <label>:521                                     ; preds = %498
  %522 = add i32 %33, 440
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add i32 %524, 0
  %526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %526, %dx.types.Handle %58, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  br label %529

; <label>:529                                     ; preds = %521, %498
  %530 = phi float [ %528, %521 ], [ 1.000000e+00, %498 ]
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 33554432
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %641, label %535

; <label>:535                                     ; preds = %529
  %536 = add i32 %33, 224
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 65535
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %538, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = add i32 %33, 228
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 24
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = and i32 %549, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %549, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %549, 16
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = add i32 %33, 220
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = lshr i32 %566, 24
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = and i32 %566, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %566, 8
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = lshr i32 %566, 16
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = bitcast float %505 to i32
  %582 = ashr i32 %581, 1
  %583 = sub nsw i32 1597463174, %582
  %584 = bitcast i32 %583 to float
  %585 = fmul fast float %505, 5.000000e-01
  %586 = fmul fast float %584, %584
  %587 = fmul fast float %586, %585
  %588 = fsub fast float 1.500000e+00, %587
  %589 = fmul fast float %584, %505
  %590 = fmul fast float %589, %588
  %591 = bitcast float %506 to i32
  %592 = ashr i32 %591, 1
  %593 = sub nsw i32 1597463174, %592
  %594 = bitcast i32 %593 to float
  %595 = fmul fast float %506, 5.000000e-01
  %596 = fmul fast float %594, %594
  %597 = fmul fast float %596, %595
  %598 = fsub fast float 1.500000e+00, %597
  %599 = fmul fast float %594, %506
  %600 = fmul fast float %599, %598
  %601 = bitcast float %507 to i32
  %602 = ashr i32 %601, 1
  %603 = sub nsw i32 1597463174, %602
  %604 = bitcast i32 %603 to float
  %605 = fmul fast float %507, 5.000000e-01
  %606 = fmul fast float %604, %604
  %607 = fmul fast float %606, %605
  %608 = fsub fast float 1.500000e+00, %607
  %609 = fmul fast float %604, %507
  %610 = fmul fast float %609, %608
  %611 = fsub fast float %590, %572
  %612 = fsub fast float %600, %576
  %613 = fsub fast float %610, %580
  %614 = fmul fast float %611, %540
  %615 = fmul fast float %612, %542
  %616 = fmul fast float %613, %547
  %617 = fadd fast float %614, %555
  %618 = fadd fast float %615, %559
  %619 = fadd fast float %616, %563
  %620 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %621 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %622 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %623 = fmul fast float %620, %620
  %624 = fmul fast float %621, %621
  %625 = fmul fast float %622, %622
  %626 = fsub fast float %623, %505
  %627 = fsub fast float %624, %506
  %628 = fsub fast float %625, %507
  %629 = fmul fast float %626, %530
  %630 = fmul fast float %627, %530
  %631 = fmul fast float %628, %530
  %632 = fadd fast float %629, %505
  %633 = fadd fast float %630, %506
  %634 = fadd fast float %631, %507
  %635 = fadd fast float %552, %516
  %636 = fsub fast float %635, %569
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fsub fast float %637, %516
  %639 = fmul fast float %638, %530
  %640 = fadd fast float %639, %516
  br label %694

; <label>:641                                     ; preds = %529
  %642 = and i32 %532, 134217728
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %678, label %644

; <label>:644                                     ; preds = %641
  %645 = call float @dx.op.unary.f32(i32 24, float %176)  ; Sqrt(value)
  %646 = call float @dx.op.unary.f32(i32 24, float %180)  ; Sqrt(value)
  %647 = call float @dx.op.unary.f32(i32 24, float %184)  ; Sqrt(value)
  %648 = fadd fast float %645, -5.000000e-01
  %649 = fadd fast float %646, -5.000000e-01
  %650 = fadd fast float %647, -5.000000e-01
  %651 = fmul fast float %648, %530
  %652 = fmul fast float %649, %530
  %653 = fmul fast float %650, %530
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %658 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %660 = fmul fast float %654, 2.000000e+00
  %661 = fsub fast float 1.000000e+00, %660
  %662 = fmul fast float %661, %657
  %663 = fadd fast float %662, %660
  %664 = fmul fast float %663, %657
  %665 = fmul fast float %655, 2.000000e+00
  %666 = fsub fast float 1.000000e+00, %665
  %667 = fmul fast float %666, %658
  %668 = fadd fast float %667, %665
  %669 = fmul fast float %668, %658
  %670 = fmul fast float %656, 2.000000e+00
  %671 = fsub fast float 1.000000e+00, %670
  %672 = fmul fast float %671, %659
  %673 = fadd fast float %672, %670
  %674 = fmul fast float %673, %659
  %675 = fmul fast float %664, %664
  %676 = fmul fast float %669, %669
  %677 = fmul fast float %674, %674
  br label %694

; <label>:678                                     ; preds = %641
  %679 = fmul fast float %176, %176
  %680 = fmul fast float %180, %180
  %681 = fmul fast float %184, %184
  %682 = fadd fast float %679, -1.000000e+00
  %683 = fadd fast float %680, -1.000000e+00
  %684 = fadd fast float %681, -1.000000e+00
  %685 = fmul fast float %530, %682
  %686 = fmul fast float %530, %683
  %687 = fmul fast float %530, %684
  %688 = fadd fast float %685, 1.000000e+00
  %689 = fadd fast float %686, 1.000000e+00
  %690 = fadd fast float %687, 1.000000e+00
  %691 = fmul fast float %688, %505
  %692 = fmul fast float %689, %506
  %693 = fmul fast float %690, %507
  br label %694

; <label>:694                                     ; preds = %678, %644, %535, %493
  %695 = phi float [ %640, %535 ], [ %516, %644 ], [ %516, %678 ], [ 0x3FA23C0BE0000000, %493 ]
  %696 = phi float [ %632, %535 ], [ %675, %644 ], [ %691, %678 ], [ 1.000000e+00, %493 ]
  %697 = phi float [ %633, %535 ], [ %676, %644 ], [ %692, %678 ], [ 1.000000e+00, %493 ]
  %698 = phi float [ %634, %535 ], [ %677, %644 ], [ %693, %678 ], [ 1.000000e+00, %493 ]
  %699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.i32 %699, 1
  %701 = and i32 %700, 1
  %702 = icmp ne i32 %701, 0
  %703 = add i32 %33, 356
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 32
  %707 = icmp ne i32 %706, 0
  %708 = and i1 %702, %707
  %709 = select i1 %708, float 1.000000e+00, float %696
  %710 = select i1 %708, float 0x3FD3333340000000, float %697
  %711 = select i1 %708, float 0x3FD3333340000000, float %698
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 32
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %788, label %716

; <label>:716                                     ; preds = %694
  %717 = add i32 %33, 92
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %33, 376
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %57, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = extractvalue %dx.types.ResRet.f32 %725, 3
  %730 = and i32 %719, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %719, 8
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = lshr i32 %719, 16
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101000000000
  %739 = fmul fast float %726, %731
  %740 = fadd fast float %739, %734
  %741 = fmul fast float %740, 0x3F70101000000000
  %742 = fadd fast float %727, -5.000000e-01
  %743 = fadd fast float %729, -5.000000e-01
  %744 = fmul fast float %742, %738
  %745 = fmul fast float %743, %738
  %746 = fadd fast float %744, 5.000000e-01
  %747 = fadd fast float %745, 5.000000e-01
  %748 = fmul fast float %746, 2.000000e+00
  %749 = fadd fast float %748, -1.000000e+00
  %750 = fmul fast float %747, 2.000000e+00
  %751 = fadd fast float %750, -1.000000e+00
  %752 = fadd fast float %749, %751
  %753 = fmul fast float %752, 5.000000e-01
  %754 = fsub fast float %749, %751
  %755 = fmul fast float %754, 5.000000e-01
  %756 = call float @dx.op.unary.f32(i32 6, float %753)  ; FAbs(value)
  %757 = fsub fast float 1.000000e+00, %756
  %758 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %759 = fsub fast float %757, %758
  %760 = call float @dx.op.dot3.f32(i32 55, float %753, float %755, float %759, float %753, float %755, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.unary.f32(i32 25, float %760)  ; Rsqrt(value)
  %762 = fmul fast float %753, %761
  %763 = fmul fast float %755, %761
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 67108864
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %784, label %768

; <label>:768                                     ; preds = %716
  %769 = add i32 %33, 280
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 65535
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %771, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = fsub fast float %741, %779
  %781 = fmul fast float %780, %773
  %782 = fadd fast float %781, %777
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  br label %784

; <label>:784                                     ; preds = %768, %716
  %785 = phi float [ %783, %768 ], [ %741, %716 ]
  %786 = call float @dx.op.dot2.f32(i32 54, float %762, float %763, float %398, float %399)  ; Dot2(ax,ay,bx,by)
  %787 = call float @dx.op.dot2.f32(i32 54, float %762, float %763, float %400, float %401)  ; Dot2(ax,ay,bx,by)
  br label %788

; <label>:788                                     ; preds = %784, %694
  %789 = phi float [ %785, %784 ], [ 0x3FD6666660000000, %694 ]
  %790 = phi float [ %786, %784 ], [ 0.000000e+00, %694 ]
  %791 = phi float [ %787, %784 ], [ 0.000000e+00, %694 ]
  %792 = phi float [ %728, %784 ], [ 1.000000e+00, %694 ]
  %793 = add i32 %33, 160
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = lshr i32 %795, 22
  %797 = shl nuw nsw i32 %796, 5
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = and i32 %800, 64
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %836, label %803

; <label>:803                                     ; preds = %788
  %804 = add i32 %33, 392
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = add i32 %806, 0
  %808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 131072
  %812 = icmp eq i32 %811, 0
  %813 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %808, %dx.types.Handle %57, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = fmul fast float %814, %164
  %818 = fmul fast float %815, %167
  %819 = fmul fast float %816, %170
  br i1 %812, label %826, label %820

; <label>:820                                     ; preds = %803
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = fmul fast float %822, %817
  %824 = fmul fast float %822, %818
  %825 = fmul fast float %822, %819
  br label %826

; <label>:826                                     ; preds = %820, %803
  %827 = phi float [ %823, %820 ], [ %817, %803 ]
  %828 = phi float [ %824, %820 ], [ %818, %803 ]
  %829 = phi float [ %825, %820 ], [ %819, %803 ]
  %830 = fmul fast float %827, %798
  %831 = select i1 %158, float %830, float %827
  %832 = call float @dx.op.dot3.f32(i32 55, float %831, float %828, float %829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = select i1 %158, float 0.000000e+00, float %827
  %834 = select i1 %158, float %832, float %828
  %835 = select i1 %158, float 0.000000e+00, float %829
  br label %836

; <label>:836                                     ; preds = %826, %788
  %837 = phi float [ %833, %826 ], [ 0.000000e+00, %788 ]
  %838 = phi float [ %834, %826 ], [ 0.000000e+00, %788 ]
  %839 = phi float [ %835, %826 ], [ 0.000000e+00, %788 ]
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 1024
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %874, label %844

; <label>:844                                     ; preds = %836
  %845 = add i32 %33, 152
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = lshr i32 %847, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %847, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = fmul fast float %850, %850
  %860 = fmul fast float %854, %854
  %861 = fmul fast float %858, %858
  %862 = add i32 %33, 456
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = add i32 %864, 0
  %866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %866, %dx.types.Handle %58, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = fmul fast float %859, %868
  %872 = fmul fast float %860, %869
  %873 = fmul fast float %861, %870
  br label %874

; <label>:874                                     ; preds = %844, %836
  %875 = phi float [ %871, %844 ], [ 0.000000e+00, %836 ]
  %876 = phi float [ %872, %844 ], [ 0.000000e+00, %836 ]
  %877 = phi float [ %873, %844 ], [ 0.000000e+00, %836 ]
  %878 = fcmp fast ogt float %875, 0.000000e+00
  %879 = fcmp fast ogt float %876, 0.000000e+00
  %880 = fcmp fast ogt float %877, 0.000000e+00
  %881 = call float @dx.op.unary.f32(i32 23, float %875)  ; Log(value)
  %882 = call float @dx.op.unary.f32(i32 23, float %876)  ; Log(value)
  %883 = call float @dx.op.unary.f32(i32 23, float %877)  ; Log(value)
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = lshr i32 %885, 7
  %887 = and i32 %886, 32752
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = fmul fast float %881, 0xBFE62E4300000000
  %890 = fmul fast float %889, %888
  %891 = fmul fast float %882, 0xBFE62E4300000000
  %892 = fmul fast float %891, %888
  %893 = fmul fast float %883, 0xBFE62E4300000000
  %894 = fmul fast float %893, %888
  %895 = select i1 %878, float %890, float 1.270000e+02
  %896 = select i1 %879, float %892, float 1.270000e+02
  %897 = select i1 %880, float %894, float 1.270000e+02
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 10240
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %946, label %902

; <label>:902                                     ; preds = %874
  %903 = add i32 %33, 472
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = add i32 %905, 0
  %907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %907, %dx.types.Handle %58, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 1
  %910 = extractvalue %dx.types.ResRet.f32 %908, 3
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 1048576
  %914 = icmp ne i32 %913, 0
  %915 = and i32 %912, 8192
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %932, label %917

; <label>:917                                     ; preds = %902
  %918 = extractvalue %dx.types.ResRet.f32 %908, 2
  %919 = select i1 %914, float %918, float %909
  %920 = extractvalue %dx.types.ResRet.f32 %908, 0
  %921 = select i1 %914, float %920, float %909
  %922 = add i32 %33, 96
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  %927 = uitofp i32 %926 to float
  %928 = fmul fast float %927, 0x3F80101020000000
  %929 = fmul fast float %928, %921
  %930 = fmul fast float %928, %909
  %931 = fmul fast float %928, %919
  br label %932

; <label>:932                                     ; preds = %917, %902
  %933 = phi float [ %929, %917 ], [ 0.000000e+00, %902 ]
  %934 = phi float [ %930, %917 ], [ 0.000000e+00, %902 ]
  %935 = phi float [ %931, %917 ], [ 0.000000e+00, %902 ]
  %936 = and i32 %912, 2048
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %946, label %938

; <label>:938                                     ; preds = %932
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = shl i32 %940, 4
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = fmul fast float %943, %910
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float 0x3F70101020000000)  ; FMax(a,b)
  br label %946

; <label>:946                                     ; preds = %938, %932, %874
  %947 = phi float [ %933, %938 ], [ %933, %932 ], [ 0.000000e+00, %874 ]
  %948 = phi float [ %934, %938 ], [ %934, %932 ], [ 0.000000e+00, %874 ]
  %949 = phi float [ %935, %938 ], [ %935, %932 ], [ 0.000000e+00, %874 ]
  %950 = phi float [ %945, %938 ], [ 0x3F70101020000000, %932 ], [ 0x3F70101020000000, %874 ]
  %951 = add i32 %33, 96
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = lshr i32 %953, 8
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = call float @dx.op.dot3.f32(i32 55, float %709, float %710, float %711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = fmul fast float %958, %959
  %961 = fadd fast float %960, %955
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  br label %964

; <label>:964                                     ; preds = %946, %380
  %965 = phi float [ 0.000000e+00, %380 ], [ %790, %946 ]
  %966 = phi float [ 0.000000e+00, %380 ], [ %791, %946 ]
  %967 = phi float [ 0.000000e+00, %380 ], [ %709, %946 ]
  %968 = phi float [ 0.000000e+00, %380 ], [ %710, %946 ]
  %969 = phi float [ 0.000000e+00, %380 ], [ %711, %946 ]
  %970 = phi float [ 0.000000e+00, %380 ], [ %837, %946 ]
  %971 = phi float [ 0.000000e+00, %380 ], [ %838, %946 ]
  %972 = phi float [ 0.000000e+00, %380 ], [ %839, %946 ]
  %973 = phi float [ 0.000000e+00, %380 ], [ %947, %946 ]
  %974 = phi float [ 0.000000e+00, %380 ], [ %948, %946 ]
  %975 = phi float [ 0.000000e+00, %380 ], [ %949, %946 ]
  %976 = phi float [ 0.000000e+00, %380 ], [ %895, %946 ]
  %977 = phi float [ 0.000000e+00, %380 ], [ %896, %946 ]
  %978 = phi float [ 0.000000e+00, %380 ], [ %897, %946 ]
  %979 = phi float [ 0.000000e+00, %380 ], [ %695, %946 ]
  %980 = phi float [ 0.000000e+00, %380 ], [ 1.000000e+00, %946 ]
  %981 = phi float [ 0.000000e+00, %380 ], [ %789, %946 ]
  %982 = phi float [ 0.000000e+00, %380 ], [ %792, %946 ]
  %983 = phi float [ 0.000000e+00, %380 ], [ %950, %946 ]
  %984 = phi float [ 0.000000e+00, %380 ], [ %963, %946 ]
  br i1 %331, label %2022, label %985

; <label>:985                                     ; preds = %964
  %986 = icmp ult i32 %386, 2
  %987 = add i32 %33, 40
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %33, 44
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = or i32 %992, %989
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %2022, label %995

; <label>:995                                     ; preds = %985
  %996 = and i32 %989, 262144
  %997 = icmp ne i32 %996, 0
  %998 = select i1 %997, float %36, float 1.000000e+00
  %999 = select i1 %997, float %37, float 0.000000e+00
  %1000 = select i1 %997, float %38, float 0.000000e+00
  %1001 = select i1 %997, float %39, float 1.000000e+00
  %1002 = select i1 %997, float %40, float %49
  %1003 = select i1 %997, float %41, float %50
  %1004 = add i32 %33, 300
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = lshr i32 %1006, 16
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = fmul fast float %1008, 0x3F50624DE0000000
  %1010 = add i32 %33, 104
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 16
  %1014 = and i32 %1013, 255
  %1015 = lshr i32 %1012, 24
  %1016 = add i32 %33, 308
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = and i32 %1018, 65535
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = lshr i32 %1018, 16
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = add i32 %33, 48
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = lshr i32 %1025, 22
  %1027 = shl nuw nsw i32 %1026, 5
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = shl i32 %1025, 4
  %1030 = and i32 %1029, 32752
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1025, 7
  %1033 = and i32 %1032, 32752
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1037 = fmul fast float %1036, 1.000000e+03
  %1038 = fmul fast float %241, %1037
  %1039 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1040 = fadd fast float %1039, %231
  %1041 = fmul fast float %242, %1037
  %1042 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1043 = fadd fast float %1042, %233
  %1044 = fmul fast float %1009, %1037
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = fmul fast float %1045, 0x401921FB60000000
  %1047 = fadd fast float %1046, %1028
  %1048 = call float @dx.op.unary.f32(i32 13, float %1047)  ; Sin(value)
  %1049 = call float @dx.op.unary.f32(i32 12, float %1047)  ; Cos(value)
  %1050 = fsub fast float -0.000000e+00, %1048
  %1051 = fadd fast float %1002, -5.000000e-01
  %1052 = fadd fast float %1003, -5.000000e-01
  %1053 = fmul fast float %1020, %1051
  %1054 = fmul fast float %1022, %1052
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fadd fast float %1054, 5.000000e-01
  %1057 = fmul fast float %1031, %1055
  %1058 = fmul fast float %1034, %1056
  %1059 = fmul fast float %1049, %1057
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1058, float %1059)  ; FMad(a,b,c)
  %1061 = fmul fast float %1048, %1057
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1058, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1040, %1060
  %1064 = fadd fast float %1043, %1062
  %1065 = icmp ugt i32 %1014, 1
  %1066 = icmp ugt i32 %1012, 33554431
  %1067 = or i1 %1066, %1065
  br i1 %1067, label %1068, label %1093

; <label>:1068                                    ; preds = %995
  %1069 = add i32 %33, 244
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = lshr i32 %1071, 16
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = fmul fast float %1036, %1073
  %1075 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1076 = mul nuw nsw i32 %1014, %1015
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1075, %1077
  %1079 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1080 = fptoui float %1079 to i32
  %1081 = urem i32 %1080, %1014
  %1082 = udiv i32 %1080, %1015
  %1083 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1085 = uitofp i32 %1081 to float
  %1086 = uitofp i32 %1082 to float
  %1087 = fadd fast float %1083, %1085
  %1088 = fadd fast float %1084, %1086
  %1089 = uitofp i32 %1014 to float
  %1090 = uitofp i32 %1015 to float
  %1091 = fdiv fast float %1087, %1089
  %1092 = fdiv fast float %1088, %1090
  br label %1093

; <label>:1093                                    ; preds = %1068, %995
  %1094 = phi float [ %1091, %1068 ], [ %1063, %995 ]
  %1095 = phi float [ %1092, %1068 ], [ %1064, %995 ]
  %1096 = and i32 %989, 16777216
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1207, label %1098

; <label>:1098                                    ; preds = %1093
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1103 = fadd fast float %1100, %116
  %1104 = fadd fast float %1101, %117
  %1105 = fadd fast float %1102, %118
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = icmp eq i32 %34, 65535
  br i1 %1109, label %1204, label %1110

; <label>:1110                                    ; preds = %1098
  %1111 = lshr i32 %34, 1
  %1112 = shl i32 %1111, 2
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %34, 1
  %1116 = icmp ne i32 %1115, 0
  %1117 = lshr i32 %1114, 16
  %1118 = and i32 %1114, 65535
  %1119 = select i1 %1116, i32 %1117, i32 %1118
  %1120 = icmp eq i32 %1119, 65535
  br i1 %1120, label %1200, label %1121

; <label>:1121                                    ; preds = %1110
  %1122 = mul nuw nsw i32 %1119, 40
  %1123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = add nuw nsw i32 %1122, 12
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = add nuw nsw i32 %1122, 24
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = add nuw nsw i32 %1122, 36
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = fsub fast float %1103, %1124
  %1141 = fsub fast float %1104, %1125
  %1142 = fsub fast float %1105, %1126
  %1143 = fmul fast float %1139, %1140
  %1144 = fmul fast float %1139, %1141
  %1145 = fmul fast float %1139, %1142
  %1146 = call float @dx.op.unary.f32(i32 27, float %1143)  ; Round_ni(value)
  %1147 = call float @dx.op.unary.f32(i32 27, float %1144)  ; Round_ni(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1149 = fadd fast float %1146, 5.000000e-01
  %1150 = fadd fast float %1147, 5.000000e-01
  %1151 = fadd fast float %1148, 5.000000e-01
  %1152 = fmul fast float %1149, %1129
  %1153 = fmul fast float %1150, %1130
  %1154 = fmul fast float %1151, %1131
  %1155 = shl i32 %34, 2
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = add i32 %1157, 0
  %1159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1160 = call float @dx.op.unary.f32(i32 22, float %1152)  ; Frc(value)
  %1161 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1162 = call float @dx.op.unary.f32(i32 22, float %1154)  ; Frc(value)
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1159, %dx.types.Handle %30, float %1160, float %1161, float %1162, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = fmul fast float %1164, 1.023000e+03
  %1168 = fmul fast float %1165, 1.023000e+03
  %1169 = fmul fast float %1166, 1.023000e+03
  %1170 = fadd fast float %1167, 5.000000e-01
  %1171 = fadd fast float %1168, 5.000000e-01
  %1172 = fadd fast float %1169, 5.000000e-01
  %1173 = call float @dx.op.unary.f32(i32 27, float %1170)  ; Round_ni(value)
  %1174 = call float @dx.op.unary.f32(i32 27, float %1171)  ; Round_ni(value)
  %1175 = call float @dx.op.unary.f32(i32 27, float %1172)  ; Round_ni(value)
  %1176 = fsub fast float %1143, %1146
  %1177 = fsub fast float %1144, %1147
  %1178 = fsub fast float %1145, %1148
  %1179 = fmul fast float %1176, 7.500000e-01
  %1180 = fmul fast float %1177, 7.500000e-01
  %1181 = fmul fast float %1178, 7.500000e-01
  %1182 = fadd fast float %1146, 1.250000e-01
  %1183 = fadd fast float %1182, %1179
  %1184 = fadd fast float %1183, %1173
  %1185 = fadd fast float %1147, 1.250000e-01
  %1186 = fadd fast float %1185, %1180
  %1187 = fadd fast float %1186, %1174
  %1188 = fadd fast float %1148, 1.250000e-01
  %1189 = fadd fast float %1188, %1181
  %1190 = fadd fast float %1189, %1175
  %1191 = fmul fast float %1184, %1134
  %1192 = fmul fast float %1187, %1135
  %1193 = fmul fast float %1190, %1136
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1197, %dx.types.Handle %28, float %1191, float %1192, float %1193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  br label %1200

; <label>:1200                                    ; preds = %1121, %1110
  %1201 = phi float [ %1199, %1121 ], [ -1.000000e+00, %1110 ]
  %1202 = fadd fast float %1201, %1108
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  br label %1204

; <label>:1204                                    ; preds = %1200, %1098
  %1205 = phi float [ %1203, %1200 ], [ %1108, %1098 ]
  %1206 = fmul fast float %1205, %383
  br label %1207

; <label>:1207                                    ; preds = %1204, %1093
  %1208 = phi float [ %1206, %1204 ], [ %383, %1093 ]
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 256
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1259, label %1213

; <label>:1213                                    ; preds = %1207
  %1214 = add i32 %33, 428
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %1216, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1218, %dx.types.Handle %58, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = add i32 %33, 116
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = shl i32 %1223, 4
  %1225 = and i32 %1224, 32752
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = lshr i32 %1223, 7
  %1228 = and i32 %1227, 32752
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = fsub fast float 1.000000e+00, %1208
  %1231 = call float @dx.op.binary.f32(i32 35, float %1230, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1232 = bitcast float %1208 to i32
  %1233 = sitofp i32 %1232 to float
  %1234 = fadd fast float %1233, 0xC1CFBF8940000000
  %1235 = fmul fast float %1229, %1234
  %1236 = fadd fast float %1235, 0x41CFBF8940000000
  %1237 = fptosi float %1236 to i32
  %1238 = bitcast i32 %1237 to float
  %1239 = bitcast float %1231 to i32
  %1240 = sitofp i32 %1239 to float
  %1241 = fadd fast float %1240, 0xC1CFBF8940000000
  %1242 = fmul fast float %1241, %1229
  %1243 = fadd fast float %1242, 0x41CFBF8940000000
  %1244 = fptosi float %1243 to i32
  %1245 = bitcast i32 %1244 to float
  %1246 = fmul fast float %1238, %1226
  %1247 = fmul fast float %1245, %1226
  %1248 = fsub fast float %1231, %1246
  %1249 = fadd fast float %1247, %1231
  %1250 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1252 = fsub fast float %1220, %1250
  %1253 = fsub fast float %1251, %1250
  %1254 = bitcast float %1253 to i32
  %1255 = sub nsw i32 2129859010, %1254
  %1256 = bitcast i32 %1255 to float
  %1257 = fmul fast float %1256, %1252
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  br label %1259

; <label>:1259                                    ; preds = %1213, %1207
  %1260 = phi float [ %1258, %1213 ], [ %1208, %1207 ]
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 128
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1281, label %1265

; <label>:1265                                    ; preds = %1259
  %1266 = add i32 %33, 412
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %58, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 524288
  %1276 = icmp ne i32 %1275, 0
  %1277 = fcmp fast ogt float %1272, 0x3FE0101020000000
  %1278 = select i1 %1277, float 1.000000e+00, float 0.000000e+00
  %1279 = select i1 %1276, float %1278, float %1272
  %1280 = fmul fast float %1279, %1260
  br label %1281

; <label>:1281                                    ; preds = %1265, %1259
  %1282 = phi float [ %1280, %1265 ], [ %1260, %1259 ]
  %1283 = fcmp fast ult float %1282, 0x3F70101020000000
  br i1 %1283, label %2022, label %1284

; <label>:1284                                    ; preds = %1281
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 16
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %1487, label %1289

; <label>:1289                                    ; preds = %1284
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = add i32 %33, 364
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %1294, 0
  %1296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1296, %dx.types.Handle %57, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.ResRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.ResRet.f32 %1297, 3
  %1302 = and i32 %1291, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = lshr i32 %1291, 8
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1301, %1303
  %1308 = fadd fast float %1307, %1306
  %1309 = fmul fast float %1308, 0x3F70101000000000
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 512
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1322, label %1314

; <label>:1314                                    ; preds = %1289
  %1315 = add i32 %33, 444
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %1317, 0
  %1319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1319, %dx.types.Handle %58, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  br label %1322

; <label>:1322                                    ; preds = %1314, %1289
  %1323 = phi float [ %1321, %1314 ], [ 1.000000e+00, %1289 ]
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = and i32 %1325, 33554432
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1434, label %1328

; <label>:1328                                    ; preds = %1322
  %1329 = add i32 %33, 240
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 65535
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = lshr i32 %1331, 16
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = add i32 %33, 244
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 65535
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 24
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = and i32 %1342, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1347, 0x3F70101020000000
  %1349 = lshr i32 %1342, 8
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = lshr i32 %1342, 16
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101020000000
  %1357 = add i32 %33, 236
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = lshr i32 %1359, 24
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1361, 0x3F70101020000000
  %1363 = and i32 %1359, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = lshr i32 %1359, 8
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = lshr i32 %1359, 16
  %1371 = and i32 %1370, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = fmul fast float %1372, 0x3F70101020000000
  %1374 = bitcast float %1298 to i32
  %1375 = ashr i32 %1374, 1
  %1376 = sub nsw i32 1597463174, %1375
  %1377 = bitcast i32 %1376 to float
  %1378 = fmul fast float %1298, 5.000000e-01
  %1379 = fmul fast float %1377, %1377
  %1380 = fmul fast float %1379, %1378
  %1381 = fsub fast float 1.500000e+00, %1380
  %1382 = fmul fast float %1377, %1298
  %1383 = fmul fast float %1382, %1381
  %1384 = bitcast float %1299 to i32
  %1385 = ashr i32 %1384, 1
  %1386 = sub nsw i32 1597463174, %1385
  %1387 = bitcast i32 %1386 to float
  %1388 = fmul fast float %1299, 5.000000e-01
  %1389 = fmul fast float %1387, %1387
  %1390 = fmul fast float %1389, %1388
  %1391 = fsub fast float 1.500000e+00, %1390
  %1392 = fmul fast float %1387, %1299
  %1393 = fmul fast float %1392, %1391
  %1394 = bitcast float %1300 to i32
  %1395 = ashr i32 %1394, 1
  %1396 = sub nsw i32 1597463174, %1395
  %1397 = bitcast i32 %1396 to float
  %1398 = fmul fast float %1300, 5.000000e-01
  %1399 = fmul fast float %1397, %1397
  %1400 = fmul fast float %1399, %1398
  %1401 = fsub fast float 1.500000e+00, %1400
  %1402 = fmul fast float %1397, %1300
  %1403 = fmul fast float %1402, %1401
  %1404 = fsub fast float %1383, %1365
  %1405 = fsub fast float %1393, %1369
  %1406 = fsub fast float %1403, %1373
  %1407 = fmul fast float %1404, %1333
  %1408 = fmul fast float %1405, %1335
  %1409 = fmul fast float %1406, %1340
  %1410 = fadd fast float %1407, %1348
  %1411 = fadd fast float %1408, %1352
  %1412 = fadd fast float %1409, %1356
  %1413 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1414 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1415 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1416 = fmul fast float %1413, %1413
  %1417 = fmul fast float %1414, %1414
  %1418 = fmul fast float %1415, %1415
  %1419 = fsub fast float %1416, %1298
  %1420 = fsub fast float %1417, %1299
  %1421 = fsub fast float %1418, %1300
  %1422 = fmul fast float %1419, %1323
  %1423 = fmul fast float %1420, %1323
  %1424 = fmul fast float %1421, %1323
  %1425 = fadd fast float %1422, %1298
  %1426 = fadd fast float %1423, %1299
  %1427 = fadd fast float %1424, %1300
  %1428 = fadd fast float %1345, %1309
  %1429 = fsub fast float %1428, %1362
  %1430 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1431 = fsub fast float %1430, %1309
  %1432 = fmul fast float %1431, %1323
  %1433 = fadd fast float %1432, %1309
  br label %1487

; <label>:1434                                    ; preds = %1322
  %1435 = and i32 %1325, 134217728
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1471, label %1437

; <label>:1437                                    ; preds = %1434
  %1438 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %1439 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %1440 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %1441 = fadd fast float %1438, -5.000000e-01
  %1442 = fadd fast float %1439, -5.000000e-01
  %1443 = fadd fast float %1440, -5.000000e-01
  %1444 = fmul fast float %1441, %1323
  %1445 = fmul fast float %1442, %1323
  %1446 = fmul fast float %1443, %1323
  %1447 = fadd fast float %1444, 5.000000e-01
  %1448 = fadd fast float %1445, 5.000000e-01
  %1449 = fadd fast float %1446, 5.000000e-01
  %1450 = call float @dx.op.unary.f32(i32 24, float %1298)  ; Sqrt(value)
  %1451 = call float @dx.op.unary.f32(i32 24, float %1299)  ; Sqrt(value)
  %1452 = call float @dx.op.unary.f32(i32 24, float %1300)  ; Sqrt(value)
  %1453 = fmul fast float %1447, 2.000000e+00
  %1454 = fsub fast float 1.000000e+00, %1453
  %1455 = fmul fast float %1454, %1450
  %1456 = fadd fast float %1455, %1453
  %1457 = fmul fast float %1456, %1450
  %1458 = fmul fast float %1448, 2.000000e+00
  %1459 = fsub fast float 1.000000e+00, %1458
  %1460 = fmul fast float %1459, %1451
  %1461 = fadd fast float %1460, %1458
  %1462 = fmul fast float %1461, %1451
  %1463 = fmul fast float %1449, 2.000000e+00
  %1464 = fsub fast float 1.000000e+00, %1463
  %1465 = fmul fast float %1464, %1452
  %1466 = fadd fast float %1465, %1463
  %1467 = fmul fast float %1466, %1452
  %1468 = fmul fast float %1457, %1457
  %1469 = fmul fast float %1462, %1462
  %1470 = fmul fast float %1467, %1467
  br label %1487

; <label>:1471                                    ; preds = %1434
  %1472 = fmul fast float %218, %218
  %1473 = fmul fast float %222, %222
  %1474 = fmul fast float %226, %226
  %1475 = fadd fast float %1472, -1.000000e+00
  %1476 = fadd fast float %1473, -1.000000e+00
  %1477 = fadd fast float %1474, -1.000000e+00
  %1478 = fmul fast float %1323, %1475
  %1479 = fmul fast float %1323, %1476
  %1480 = fmul fast float %1323, %1477
  %1481 = fadd fast float %1478, 1.000000e+00
  %1482 = fadd fast float %1479, 1.000000e+00
  %1483 = fadd fast float %1480, 1.000000e+00
  %1484 = fmul fast float %1481, %1298
  %1485 = fmul fast float %1482, %1299
  %1486 = fmul fast float %1483, %1300
  br label %1487

; <label>:1487                                    ; preds = %1471, %1437, %1328, %1284
  %1488 = phi float [ %1433, %1328 ], [ %1309, %1437 ], [ %1309, %1471 ], [ 0x3FA23C0BE0000000, %1284 ]
  %1489 = phi float [ %1425, %1328 ], [ %1468, %1437 ], [ %1484, %1471 ], [ 1.000000e+00, %1284 ]
  %1490 = phi float [ %1426, %1328 ], [ %1469, %1437 ], [ %1485, %1471 ], [ 1.000000e+00, %1284 ]
  %1491 = phi float [ %1427, %1328 ], [ %1470, %1437 ], [ %1486, %1471 ], [ 1.000000e+00, %1284 ]
  %1492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.i32 %1492, 1
  %1494 = and i32 %1493, 1
  %1495 = icmp ne i32 %1494, 0
  %1496 = add i32 %33, 356
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 32
  %1500 = icmp ne i32 %1499, 0
  %1501 = and i1 %1495, %1500
  %1502 = select i1 %1501, float 1.000000e+00, float %1489
  %1503 = select i1 %1501, float 0x3FD3333340000000, float %1490
  %1504 = select i1 %1501, float 0x3FD3333340000000, float %1491
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 32
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1581, label %1509

; <label>:1509                                    ; preds = %1487
  %1510 = add i32 %33, 108
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %33, 380
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %1515, 0
  %1517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1517, %dx.types.Handle %57, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.ResRet.f32 %1518, 3
  %1523 = and i32 %1512, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = lshr i32 %1512, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = lshr i32 %1512, 16
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101000000000
  %1532 = fmul fast float %1519, %1524
  %1533 = fadd fast float %1532, %1527
  %1534 = fmul fast float %1533, 0x3F70101000000000
  %1535 = fadd fast float %1520, -5.000000e-01
  %1536 = fadd fast float %1522, -5.000000e-01
  %1537 = fmul fast float %1535, %1531
  %1538 = fmul fast float %1536, %1531
  %1539 = fadd fast float %1537, 5.000000e-01
  %1540 = fadd fast float %1538, 5.000000e-01
  %1541 = fmul fast float %1539, 2.000000e+00
  %1542 = fadd fast float %1541, -1.000000e+00
  %1543 = fmul fast float %1540, 2.000000e+00
  %1544 = fadd fast float %1543, -1.000000e+00
  %1545 = fadd fast float %1542, %1544
  %1546 = fmul fast float %1545, 5.000000e-01
  %1547 = fsub fast float %1542, %1544
  %1548 = fmul fast float %1547, 5.000000e-01
  %1549 = call float @dx.op.unary.f32(i32 6, float %1546)  ; FAbs(value)
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = call float @dx.op.unary.f32(i32 6, float %1548)  ; FAbs(value)
  %1552 = fsub fast float %1550, %1551
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1546, float %1548, float %1552, float %1546, float %1548, float %1552)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = call float @dx.op.unary.f32(i32 25, float %1553)  ; Rsqrt(value)
  %1555 = fmul fast float %1546, %1554
  %1556 = fmul fast float %1548, %1554
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 67108864
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1577, label %1561

; <label>:1561                                    ; preds = %1509
  %1562 = add i32 %33, 296
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 65535
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = lshr i32 %1564, 16
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = fsub fast float %1534, %1572
  %1574 = fmul fast float %1573, %1566
  %1575 = fadd fast float %1574, %1570
  %1576 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  br label %1577

; <label>:1577                                    ; preds = %1561, %1509
  %1578 = phi float [ %1576, %1561 ], [ %1534, %1509 ]
  %1579 = call float @dx.op.dot2.f32(i32 54, float %1555, float %1556, float %998, float %999)  ; Dot2(ax,ay,bx,by)
  %1580 = call float @dx.op.dot2.f32(i32 54, float %1555, float %1556, float %1000, float %1001)  ; Dot2(ax,ay,bx,by)
  br label %1581

; <label>:1581                                    ; preds = %1577, %1487
  %1582 = phi float [ %1578, %1577 ], [ 0x3FD6666660000000, %1487 ]
  %1583 = phi float [ %1579, %1577 ], [ 0.000000e+00, %1487 ]
  %1584 = phi float [ %1580, %1577 ], [ 0.000000e+00, %1487 ]
  %1585 = phi float [ %1521, %1577 ], [ 1.000000e+00, %1487 ]
  %1586 = add i32 %33, 176
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = lshr i32 %1588, 22
  %1590 = shl nuw nsw i32 %1589, 5
  %1591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1590)  ; LegacyF16ToF32(value)
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 64
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1629, label %1596

; <label>:1596                                    ; preds = %1581
  %1597 = add i32 %33, 396
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = add i32 %1599, 0
  %1601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 131072
  %1605 = icmp eq i32 %1604, 0
  %1606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1601, %dx.types.Handle %57, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = fmul fast float %1607, %206
  %1611 = fmul fast float %1608, %209
  %1612 = fmul fast float %1609, %212
  br i1 %1605, label %1619, label %1613

; <label>:1613                                    ; preds = %1596
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = fmul fast float %1615, %1610
  %1617 = fmul fast float %1615, %1611
  %1618 = fmul fast float %1615, %1612
  br label %1619

; <label>:1619                                    ; preds = %1613, %1596
  %1620 = phi float [ %1616, %1613 ], [ %1610, %1596 ]
  %1621 = phi float [ %1617, %1613 ], [ %1611, %1596 ]
  %1622 = phi float [ %1618, %1613 ], [ %1612, %1596 ]
  %1623 = fmul fast float %1620, %1591
  %1624 = select i1 %158, float %1623, float %1620
  %1625 = call float @dx.op.dot3.f32(i32 55, float %1624, float %1621, float %1622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1626 = select i1 %158, float 0.000000e+00, float %1620
  %1627 = select i1 %158, float %1625, float %1621
  %1628 = select i1 %158, float 0.000000e+00, float %1622
  br label %1629

; <label>:1629                                    ; preds = %1619, %1581
  %1630 = phi float [ %1626, %1619 ], [ 0.000000e+00, %1581 ]
  %1631 = phi float [ %1627, %1619 ], [ 0.000000e+00, %1581 ]
  %1632 = phi float [ %1628, %1619 ], [ 0.000000e+00, %1581 ]
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 1024
  %1636 = icmp eq i32 %1635, 0
  br i1 %1636, label %1667, label %1637

; <label>:1637                                    ; preds = %1629
  %1638 = add i32 %33, 168
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = lshr i32 %1640, 8
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = lshr i32 %1640, 16
  %1649 = and i32 %1648, 255
  %1650 = uitofp i32 %1649 to float
  %1651 = fmul fast float %1650, 0x3F70101020000000
  %1652 = fmul fast float %1643, %1643
  %1653 = fmul fast float %1647, %1647
  %1654 = fmul fast float %1651, %1651
  %1655 = add i32 %33, 460
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = add i32 %1657, 0
  %1659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1659, %dx.types.Handle %58, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1661 = extractvalue %dx.types.ResRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.ResRet.f32 %1660, 1
  %1663 = extractvalue %dx.types.ResRet.f32 %1660, 2
  %1664 = fmul fast float %1652, %1661
  %1665 = fmul fast float %1653, %1662
  %1666 = fmul fast float %1654, %1663
  br label %1667

; <label>:1667                                    ; preds = %1637, %1629
  %1668 = phi float [ %1664, %1637 ], [ 0.000000e+00, %1629 ]
  %1669 = phi float [ %1665, %1637 ], [ 0.000000e+00, %1629 ]
  %1670 = phi float [ %1666, %1637 ], [ 0.000000e+00, %1629 ]
  %1671 = fcmp fast ogt float %1668, 0.000000e+00
  %1672 = fcmp fast ogt float %1669, 0.000000e+00
  %1673 = fcmp fast ogt float %1670, 0.000000e+00
  %1674 = call float @dx.op.unary.f32(i32 23, float %1668)  ; Log(value)
  %1675 = call float @dx.op.unary.f32(i32 23, float %1669)  ; Log(value)
  %1676 = call float @dx.op.unary.f32(i32 23, float %1670)  ; Log(value)
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = lshr i32 %1678, 7
  %1680 = and i32 %1679, 32752
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = fmul fast float %1674, 0xBFE62E4300000000
  %1683 = fmul fast float %1682, %1681
  %1684 = fmul fast float %1675, 0xBFE62E4300000000
  %1685 = fmul fast float %1684, %1681
  %1686 = fmul fast float %1676, 0xBFE62E4300000000
  %1687 = fmul fast float %1686, %1681
  %1688 = select i1 %1671, float %1683, float 1.270000e+02
  %1689 = select i1 %1672, float %1685, float 1.270000e+02
  %1690 = select i1 %1673, float %1687, float 1.270000e+02
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 10240
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1739, label %1695

; <label>:1695                                    ; preds = %1667
  %1696 = add i32 %33, 476
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = add i32 %1698, 0
  %1700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1700, %dx.types.Handle %58, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1702 = extractvalue %dx.types.ResRet.f32 %1701, 1
  %1703 = extractvalue %dx.types.ResRet.f32 %1701, 3
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1705, 1048576
  %1707 = icmp ne i32 %1706, 0
  %1708 = and i32 %1705, 8192
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1725, label %1710

; <label>:1710                                    ; preds = %1695
  %1711 = extractvalue %dx.types.ResRet.f32 %1701, 2
  %1712 = select i1 %1707, float %1711, float %1702
  %1713 = extractvalue %dx.types.ResRet.f32 %1701, 0
  %1714 = select i1 %1707, float %1713, float %1702
  %1715 = add i32 %33, 112
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = lshr i32 %1717, 16
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = fmul fast float %1720, 0x3F80101020000000
  %1722 = fmul fast float %1721, %1714
  %1723 = fmul fast float %1721, %1702
  %1724 = fmul fast float %1721, %1712
  br label %1725

; <label>:1725                                    ; preds = %1710, %1695
  %1726 = phi float [ %1722, %1710 ], [ 0.000000e+00, %1695 ]
  %1727 = phi float [ %1723, %1710 ], [ 0.000000e+00, %1695 ]
  %1728 = phi float [ %1724, %1710 ], [ 0.000000e+00, %1695 ]
  %1729 = and i32 %1705, 2048
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1739, label %1731

; <label>:1731                                    ; preds = %1725
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = shl i32 %1733, 4
  %1735 = and i32 %1734, 32752
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = fmul fast float %1736, %1703
  %1738 = call float @dx.op.binary.f32(i32 35, float %1737, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1739

; <label>:1739                                    ; preds = %1731, %1725, %1667
  %1740 = phi float [ %1726, %1731 ], [ %1726, %1725 ], [ 0.000000e+00, %1667 ]
  %1741 = phi float [ %1727, %1731 ], [ %1727, %1725 ], [ 0.000000e+00, %1667 ]
  %1742 = phi float [ %1728, %1731 ], [ %1728, %1725 ], [ 0.000000e+00, %1667 ]
  %1743 = phi float [ %1738, %1731 ], [ 0x3F70101020000000, %1725 ], [ 0x3F70101020000000, %1667 ]
  %1744 = add i32 %33, 112
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = lshr i32 %1746, 8
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1502, float %1503, float %1504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = fmul fast float %1751, %1752
  %1754 = fadd fast float %1753, %1748
  %1755 = fmul fast float %1754, 0x3F70101020000000
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  br i1 %986, label %1757, label %1792

; <label>:1757                                    ; preds = %1739
  %1758 = fmul fast float %1743, 2.000000e+00
  %1759 = fcmp fast olt float %1688, 1.270000e+02
  %1760 = fcmp fast olt float %1689, 1.270000e+02
  %1761 = fcmp fast olt float %1690, 1.270000e+02
  %1762 = fmul fast float %1688, 0xBFF7154760000000
  %1763 = fmul fast float %1762, %1758
  %1764 = fmul fast float %1689, 0xBFF7154760000000
  %1765 = fmul fast float %1764, %1758
  %1766 = fmul fast float %1690, 0xBFF7154760000000
  %1767 = fmul fast float %1766, %1758
  %1768 = call float @dx.op.unary.f32(i32 21, float %1763)  ; Exp(value)
  %1769 = call float @dx.op.unary.f32(i32 21, float %1765)  ; Exp(value)
  %1770 = call float @dx.op.unary.f32(i32 21, float %1767)  ; Exp(value)
  %1771 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1772 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1773 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1774 = fadd fast float %1771, -1.000000e+00
  %1775 = select i1 %1759, float %1774, float -1.000000e+00
  %1776 = fadd fast float %1772, -1.000000e+00
  %1777 = select i1 %1760, float %1776, float -1.000000e+00
  %1778 = fadd fast float %1773, -1.000000e+00
  %1779 = select i1 %1761, float %1778, float -1.000000e+00
  %1780 = fmul fast float %1775, %1282
  %1781 = fmul fast float %1777, %1282
  %1782 = fmul fast float %1779, %1282
  %1783 = fadd fast float %1780, 1.000000e+00
  %1784 = fadd fast float %1781, 1.000000e+00
  %1785 = fadd fast float %1782, 1.000000e+00
  %1786 = fmul fast float %1783, %967
  %1787 = fmul fast float %1784, %968
  %1788 = fmul fast float %1785, %969
  %1789 = fmul fast float %1783, %970
  %1790 = fmul fast float %1784, %971
  %1791 = fmul fast float %1785, %972
  br label %1792

; <label>:1792                                    ; preds = %1757, %1739
  %1793 = phi float [ %1786, %1757 ], [ %967, %1739 ]
  %1794 = phi float [ %1787, %1757 ], [ %968, %1739 ]
  %1795 = phi float [ %1788, %1757 ], [ %969, %1739 ]
  %1796 = phi float [ %1789, %1757 ], [ %970, %1739 ]
  %1797 = phi float [ %1790, %1757 ], [ %971, %1739 ]
  %1798 = phi float [ %1791, %1757 ], [ %972, %1739 ]
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 3
  %1802 = icmp eq i32 %1801, 3
  br i1 %1802, label %1881, label %1803

; <label>:1803                                    ; preds = %1792
  %1804 = and i32 %1800, 16
  %1805 = icmp ne i32 %1804, 0
  %1806 = select i1 %1805, float %1282, float 0.000000e+00
  %1807 = icmp eq i32 %1801, 0
  br i1 %1807, label %1808, label %1836

; <label>:1808                                    ; preds = %1803
  %1809 = and i32 %1800, 64
  %1810 = icmp ne i32 %1809, 0
  %1811 = select i1 %1810, float %1282, float 0.000000e+00
  %1812 = fsub fast float %1502, %1793
  %1813 = fsub fast float %1503, %1794
  %1814 = fsub fast float %1504, %1795
  %1815 = fmul fast float %1806, %1812
  %1816 = fmul fast float %1806, %1813
  %1817 = fmul fast float %1806, %1814
  %1818 = fadd fast float %1815, %1793
  %1819 = fadd fast float %1816, %1794
  %1820 = fadd fast float %1817, %1795
  %1821 = fsub fast float %1488, %979
  %1822 = fmul fast float %1806, %1821
  %1823 = fadd fast float %1822, %979
  %1824 = fsub fast float %1630, %1796
  %1825 = fsub fast float %1631, %1797
  %1826 = fsub fast float %1632, %1798
  %1827 = fmul fast float %1811, %1824
  %1828 = fmul fast float %1811, %1825
  %1829 = fmul fast float %1811, %1826
  %1830 = fadd fast float %1827, %1796
  %1831 = fadd fast float %1828, %1797
  %1832 = fadd fast float %1829, %1798
  %1833 = fsub fast float %1756, %984
  %1834 = fmul fast float %1806, %1833
  %1835 = fadd fast float %1834, %984
  br label %1881

; <label>:1836                                    ; preds = %1803
  %1837 = icmp eq i32 %1801, 1
  br i1 %1837, label %1838, label %1851

; <label>:1838                                    ; preds = %1836
  %1839 = fadd fast float %1502, -1.000000e+00
  %1840 = fadd fast float %1503, -1.000000e+00
  %1841 = fadd fast float %1504, -1.000000e+00
  %1842 = fmul fast float %1806, %1839
  %1843 = fmul fast float %1806, %1840
  %1844 = fmul fast float %1806, %1841
  %1845 = fadd fast float %1842, 1.000000e+00
  %1846 = fadd fast float %1843, 1.000000e+00
  %1847 = fadd fast float %1844, 1.000000e+00
  %1848 = fmul fast float %1845, %1793
  %1849 = fmul fast float %1846, %1794
  %1850 = fmul fast float %1847, %1795
  br label %1881

; <label>:1851                                    ; preds = %1836
  %1852 = icmp eq i32 %1801, 2
  br i1 %1852, label %1853, label %1881

; <label>:1853                                    ; preds = %1851
  %1854 = call float @dx.op.unary.f32(i32 24, float %1502)  ; Sqrt(value)
  %1855 = call float @dx.op.unary.f32(i32 24, float %1503)  ; Sqrt(value)
  %1856 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1857 = fadd fast float %1854, -5.000000e-01
  %1858 = fadd fast float %1855, -5.000000e-01
  %1859 = fadd fast float %1856, -5.000000e-01
  %1860 = fmul fast float %1857, %1806
  %1861 = fmul fast float %1858, %1806
  %1862 = fmul fast float %1859, %1806
  %1863 = fadd fast float %1860, 5.000000e-01
  %1864 = fadd fast float %1861, 5.000000e-01
  %1865 = fadd fast float %1862, 5.000000e-01
  %1866 = fmul fast float %1863, 2.000000e+00
  %1867 = fsub fast float 1.000000e+00, %1866
  %1868 = fmul fast float %1867, %1793
  %1869 = fadd fast float %1868, %1866
  %1870 = fmul fast float %1869, %1793
  %1871 = fmul fast float %1864, 2.000000e+00
  %1872 = fsub fast float 1.000000e+00, %1871
  %1873 = fmul fast float %1872, %1794
  %1874 = fadd fast float %1873, %1871
  %1875 = fmul fast float %1874, %1794
  %1876 = fmul fast float %1865, 2.000000e+00
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = fmul fast float %1877, %1795
  %1879 = fadd fast float %1878, %1876
  %1880 = fmul fast float %1879, %1795
  br label %1881

; <label>:1881                                    ; preds = %1853, %1851, %1838, %1808, %1792
  %1882 = phi float [ %1793, %1792 ], [ %1870, %1853 ], [ %1793, %1851 ], [ %1848, %1838 ], [ %1818, %1808 ]
  %1883 = phi float [ %1794, %1792 ], [ %1875, %1853 ], [ %1794, %1851 ], [ %1849, %1838 ], [ %1819, %1808 ]
  %1884 = phi float [ %1795, %1792 ], [ %1880, %1853 ], [ %1795, %1851 ], [ %1850, %1838 ], [ %1820, %1808 ]
  %1885 = phi float [ %1796, %1792 ], [ %1796, %1853 ], [ %1796, %1851 ], [ %1796, %1838 ], [ %1830, %1808 ]
  %1886 = phi float [ %1797, %1792 ], [ %1797, %1853 ], [ %1797, %1851 ], [ %1797, %1838 ], [ %1831, %1808 ]
  %1887 = phi float [ %1798, %1792 ], [ %1798, %1853 ], [ %1798, %1851 ], [ %1798, %1838 ], [ %1832, %1808 ]
  %1888 = phi float [ %979, %1792 ], [ %979, %1853 ], [ %979, %1851 ], [ %979, %1838 ], [ %1823, %1808 ]
  %1889 = phi float [ %984, %1792 ], [ %984, %1853 ], [ %984, %1851 ], [ %984, %1838 ], [ %1835, %1808 ]
  %1890 = and i32 %1800, 12
  %1891 = icmp eq i32 %1890, 12
  br i1 %1891, label %2022, label %1892

; <label>:1892                                    ; preds = %1881
  %1893 = and i32 %1800, 2097184
  %1894 = icmp eq i32 %1893, 2097184
  %1895 = select i1 %1894, float %1282, float 0.000000e+00
  %1896 = and i32 %1800, 4194336
  %1897 = icmp eq i32 %1896, 4194336
  %1898 = select i1 %1897, float %1282, float 0.000000e+00
  %1899 = and i32 %1800, 8388640
  %1900 = icmp eq i32 %1899, 8388640
  %1901 = select i1 %1900, float %1282, float 0.000000e+00
  %1902 = and i32 %1800, 1024
  %1903 = icmp ne i32 %1902, 0
  %1904 = select i1 %1903, float %1282, float 0.000000e+00
  %1905 = and i32 %1800, 2048
  %1906 = icmp ne i32 %1905, 0
  %1907 = select i1 %1906, float %1282, float 0.000000e+00
  %1908 = and i32 %1800, 8192
  %1909 = icmp ne i32 %1908, 0
  %1910 = select i1 %1909, float %1282, float 0.000000e+00
  %1911 = icmp eq i32 %1890, 0
  br i1 %1911, label %1912, label %1946

; <label>:1912                                    ; preds = %1892
  %1913 = fsub fast float %1583, %965
  %1914 = fsub fast float %1584, %966
  %1915 = fmul fast float %1895, %1913
  %1916 = fmul fast float %1895, %1914
  %1917 = fadd fast float %1915, %965
  %1918 = fadd fast float %1916, %966
  %1919 = fsub fast float %1585, %982
  %1920 = fmul fast float %1898, %1919
  %1921 = fadd fast float %1920, %982
  %1922 = fsub fast float %1582, %981
  %1923 = fmul fast float %1901, %1922
  %1924 = fadd fast float %1923, %981
  %1925 = fsub fast float %1688, %976
  %1926 = fsub fast float %1689, %977
  %1927 = fsub fast float %1690, %978
  %1928 = fmul fast float %1904, %1925
  %1929 = fmul fast float %1904, %1926
  %1930 = fmul fast float %1904, %1927
  %1931 = fadd fast float %1928, %976
  %1932 = fadd fast float %1929, %977
  %1933 = fadd fast float %1930, %978
  %1934 = fsub fast float %1743, %983
  %1935 = fmul fast float %1907, %1934
  %1936 = fadd fast float %1935, %983
  %1937 = fsub fast float %1740, %973
  %1938 = fsub fast float %1741, %974
  %1939 = fsub fast float %1742, %975
  %1940 = fmul fast float %1910, %1937
  %1941 = fmul fast float %1910, %1938
  %1942 = fmul fast float %1910, %1939
  %1943 = fadd fast float %1940, %973
  %1944 = fadd fast float %1941, %974
  %1945 = fadd fast float %1942, %975
  br label %2022

; <label>:1946                                    ; preds = %1892
  %1947 = icmp eq i32 %1890, 4
  br i1 %1947, label %1948, label %1994

; <label>:1948                                    ; preds = %1946
  %1949 = fmul fast float %1895, %1583
  %1950 = fmul fast float %1895, %1584
  %1951 = fadd fast float %1949, %965
  %1952 = fadd fast float %1950, %966
  %1953 = call float @dx.op.binary.f32(i32 36, float %982, float %1585)  ; FMin(a,b)
  %1954 = fsub fast float %1953, %982
  %1955 = fmul fast float %1954, %1898
  %1956 = fadd fast float %1955, %982
  %1957 = fadd fast float %1582, %981
  %1958 = fmul fast float %1957, 0x3FF337FAE0000000
  %1959 = fmul fast float %981, %981
  %1960 = fmul fast float %1582, %1582
  %1961 = fadd fast float %1960, %1959
  %1962 = fmul fast float %1961, 0x3FE5152B00000000
  %1963 = fmul fast float %981, 0xBFCC1F85E0000000
  %1964 = fmul fast float %1963, %1582
  %1965 = fadd fast float %1964, 0xBFE1363700000000
  %1966 = fadd fast float %1965, %1958
  %1967 = fsub fast float %1966, %1962
  %1968 = fmul fast float %1957, 0x3FBA6F0D00000000
  %1969 = fmul fast float %1961, 0x3FD0432880000000
  %1970 = fmul fast float %981, 0xBFEF110800000000
  %1971 = fmul fast float %1970, %1582
  %1972 = fadd fast float %1971, 1.000000e+00
  %1973 = fsub fast float %1972, %1968
  %1974 = fadd fast float %1973, %1969
  %1975 = fdiv fast float %1967, %1974
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fsub fast float %1976, %981
  %1978 = fmul fast float %1977, %1901
  %1979 = fadd fast float %1978, %981
  %1980 = fmul fast float %1904, %1688
  %1981 = fmul fast float %1904, %1689
  %1982 = fmul fast float %1904, %1690
  %1983 = fadd fast float %1980, %976
  %1984 = fadd fast float %1981, %977
  %1985 = fadd fast float %1982, %978
  %1986 = fmul fast float %1907, %1743
  %1987 = fadd fast float %1986, %983
  %1988 = fmul fast float %1910, %1740
  %1989 = fmul fast float %1910, %1741
  %1990 = fmul fast float %1910, %1742
  %1991 = fadd fast float %1988, %973
  %1992 = fadd fast float %1989, %974
  %1993 = fadd fast float %1990, %975
  br label %2022

; <label>:1994                                    ; preds = %1946
  %1995 = icmp eq i32 %1890, 8
  br i1 %1995, label %1996, label %2022

; <label>:1996                                    ; preds = %1994
  %1997 = fmul fast float %1895, %1583
  %1998 = fmul fast float %1895, %1584
  %1999 = fadd fast float %1997, %965
  %2000 = fadd fast float %1998, %966
  %2001 = call float @dx.op.binary.f32(i32 36, float %982, float %1585)  ; FMin(a,b)
  %2002 = fsub fast float %2001, %982
  %2003 = fmul fast float %2002, %1898
  %2004 = fadd fast float %2003, %982
  %2005 = fsub fast float %1582, %981
  %2006 = fmul fast float %1901, %2005
  %2007 = fadd fast float %2006, %981
  %2008 = fmul fast float %1904, %1688
  %2009 = fmul fast float %1904, %1689
  %2010 = fmul fast float %1904, %1690
  %2011 = fadd fast float %2008, %976
  %2012 = fadd fast float %2009, %977
  %2013 = fadd fast float %2010, %978
  %2014 = fmul fast float %1907, %1743
  %2015 = fadd fast float %2014, %983
  %2016 = fmul fast float %1910, %1740
  %2017 = fmul fast float %1910, %1741
  %2018 = fmul fast float %1910, %1742
  %2019 = fadd fast float %2016, %973
  %2020 = fadd fast float %2017, %974
  %2021 = fadd fast float %2018, %975
  br label %2022

; <label>:2022                                    ; preds = %1996, %1994, %1948, %1912, %1881, %1281, %985, %964
  %2023 = phi float [ %965, %1881 ], [ %965, %1281 ], [ %965, %964 ], [ %1999, %1996 ], [ %965, %1994 ], [ %1951, %1948 ], [ %1917, %1912 ], [ %965, %985 ]
  %2024 = phi float [ %966, %1881 ], [ %966, %1281 ], [ %966, %964 ], [ %2000, %1996 ], [ %966, %1994 ], [ %1952, %1948 ], [ %1918, %1912 ], [ %966, %985 ]
  %2025 = phi float [ %1882, %1881 ], [ %967, %1281 ], [ %967, %964 ], [ %1882, %1996 ], [ %1882, %1994 ], [ %1882, %1948 ], [ %1882, %1912 ], [ %967, %985 ]
  %2026 = phi float [ %1883, %1881 ], [ %968, %1281 ], [ %968, %964 ], [ %1883, %1996 ], [ %1883, %1994 ], [ %1883, %1948 ], [ %1883, %1912 ], [ %968, %985 ]
  %2027 = phi float [ %1884, %1881 ], [ %969, %1281 ], [ %969, %964 ], [ %1884, %1996 ], [ %1884, %1994 ], [ %1884, %1948 ], [ %1884, %1912 ], [ %969, %985 ]
  %2028 = phi float [ %1885, %1881 ], [ %970, %1281 ], [ %970, %964 ], [ %1885, %1996 ], [ %1885, %1994 ], [ %1885, %1948 ], [ %1885, %1912 ], [ %970, %985 ]
  %2029 = phi float [ %1886, %1881 ], [ %971, %1281 ], [ %971, %964 ], [ %1886, %1996 ], [ %1886, %1994 ], [ %1886, %1948 ], [ %1886, %1912 ], [ %971, %985 ]
  %2030 = phi float [ %1887, %1881 ], [ %972, %1281 ], [ %972, %964 ], [ %1887, %1996 ], [ %1887, %1994 ], [ %1887, %1948 ], [ %1887, %1912 ], [ %972, %985 ]
  %2031 = phi float [ %973, %1881 ], [ %973, %1281 ], [ %973, %964 ], [ %2019, %1996 ], [ %973, %1994 ], [ %1991, %1948 ], [ %1943, %1912 ], [ %973, %985 ]
  %2032 = phi float [ %974, %1881 ], [ %974, %1281 ], [ %974, %964 ], [ %2020, %1996 ], [ %974, %1994 ], [ %1992, %1948 ], [ %1944, %1912 ], [ %974, %985 ]
  %2033 = phi float [ %975, %1881 ], [ %975, %1281 ], [ %975, %964 ], [ %2021, %1996 ], [ %975, %1994 ], [ %1993, %1948 ], [ %1945, %1912 ], [ %975, %985 ]
  %2034 = phi float [ %976, %1881 ], [ %976, %1281 ], [ %976, %964 ], [ %2011, %1996 ], [ %976, %1994 ], [ %1983, %1948 ], [ %1931, %1912 ], [ %976, %985 ]
  %2035 = phi float [ %977, %1881 ], [ %977, %1281 ], [ %977, %964 ], [ %2012, %1996 ], [ %977, %1994 ], [ %1984, %1948 ], [ %1932, %1912 ], [ %977, %985 ]
  %2036 = phi float [ %978, %1881 ], [ %978, %1281 ], [ %978, %964 ], [ %2013, %1996 ], [ %978, %1994 ], [ %1985, %1948 ], [ %1933, %1912 ], [ %978, %985 ]
  %2037 = phi float [ %1888, %1881 ], [ %979, %1281 ], [ %979, %964 ], [ %1888, %1996 ], [ %1888, %1994 ], [ %1888, %1948 ], [ %1888, %1912 ], [ %979, %985 ]
  %2038 = phi float [ %981, %1881 ], [ %981, %1281 ], [ %981, %964 ], [ %2007, %1996 ], [ %981, %1994 ], [ %1979, %1948 ], [ %1924, %1912 ], [ %981, %985 ]
  %2039 = phi float [ %982, %1881 ], [ %982, %1281 ], [ %982, %964 ], [ %2004, %1996 ], [ %982, %1994 ], [ %1956, %1948 ], [ %1921, %1912 ], [ %982, %985 ]
  %2040 = phi float [ %983, %1881 ], [ %983, %1281 ], [ %983, %964 ], [ %2015, %1996 ], [ %983, %1994 ], [ %1987, %1948 ], [ %1936, %1912 ], [ %983, %985 ]
  %2041 = phi float [ %1889, %1881 ], [ %984, %1281 ], [ %984, %964 ], [ %1889, %1996 ], [ %1889, %1994 ], [ %1889, %1948 ], [ %1889, %1912 ], [ %984, %985 ]
  br i1 %333, label %3079, label %2042

; <label>:2042                                    ; preds = %2022
  %2043 = icmp ult i32 %386, 3
  %2044 = add i32 %33, 56
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %33, 60
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = or i32 %2049, %2046
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %3079, label %2052

; <label>:2052                                    ; preds = %2042
  %2053 = and i32 %2046, 262144
  %2054 = icmp ne i32 %2053, 0
  %2055 = select i1 %2054, float %36, float 1.000000e+00
  %2056 = select i1 %2054, float %37, float 0.000000e+00
  %2057 = select i1 %2054, float %38, float 0.000000e+00
  %2058 = select i1 %2054, float %39, float 1.000000e+00
  %2059 = select i1 %2054, float %40, float %49
  %2060 = select i1 %2054, float %41, float %50
  %2061 = add i32 %33, 316
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = lshr i32 %2063, 16
  %2065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2064)  ; LegacyF16ToF32(value)
  %2066 = fmul fast float %2065, 0x3F50624DE0000000
  %2067 = add i32 %33, 120
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = lshr i32 %2069, 16
  %2071 = and i32 %2070, 255
  %2072 = lshr i32 %2069, 24
  %2073 = add i32 %33, 324
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 65535
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = lshr i32 %2075, 16
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = add i32 %33, 64
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = lshr i32 %2082, 22
  %2084 = shl nuw nsw i32 %2083, 5
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = shl i32 %2082, 4
  %2087 = and i32 %2086, 32752
  %2088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2087)  ; LegacyF16ToF32(value)
  %2089 = lshr i32 %2082, 7
  %2090 = and i32 %2089, 32752
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2094 = fmul fast float %2093, 1.000000e+03
  %2095 = fmul fast float %283, %2094
  %2096 = call float @dx.op.unary.f32(i32 22, float %2095)  ; Frc(value)
  %2097 = fadd fast float %2096, %273
  %2098 = fmul fast float %284, %2094
  %2099 = call float @dx.op.unary.f32(i32 22, float %2098)  ; Frc(value)
  %2100 = fadd fast float %2099, %275
  %2101 = fmul fast float %2066, %2094
  %2102 = call float @dx.op.unary.f32(i32 22, float %2101)  ; Frc(value)
  %2103 = fmul fast float %2102, 0x401921FB60000000
  %2104 = fadd fast float %2103, %2085
  %2105 = call float @dx.op.unary.f32(i32 13, float %2104)  ; Sin(value)
  %2106 = call float @dx.op.unary.f32(i32 12, float %2104)  ; Cos(value)
  %2107 = fsub fast float -0.000000e+00, %2105
  %2108 = fadd fast float %2059, -5.000000e-01
  %2109 = fadd fast float %2060, -5.000000e-01
  %2110 = fmul fast float %2077, %2108
  %2111 = fmul fast float %2079, %2109
  %2112 = fadd fast float %2110, 5.000000e-01
  %2113 = fadd fast float %2111, 5.000000e-01
  %2114 = fmul fast float %2088, %2112
  %2115 = fmul fast float %2091, %2113
  %2116 = fmul fast float %2106, %2114
  %2117 = call float @dx.op.tertiary.f32(i32 46, float %2107, float %2115, float %2116)  ; FMad(a,b,c)
  %2118 = fmul fast float %2105, %2114
  %2119 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2115, float %2118)  ; FMad(a,b,c)
  %2120 = fadd fast float %2097, %2117
  %2121 = fadd fast float %2100, %2119
  %2122 = icmp ugt i32 %2071, 1
  %2123 = icmp ugt i32 %2069, 33554431
  %2124 = or i1 %2123, %2122
  br i1 %2124, label %2125, label %2150

; <label>:2125                                    ; preds = %2052
  %2126 = add i32 %33, 260
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = lshr i32 %2128, 16
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = fmul fast float %2093, %2130
  %2132 = call float @dx.op.unary.f32(i32 22, float %2131)  ; Frc(value)
  %2133 = mul nuw nsw i32 %2071, %2072
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2132, %2134
  %2136 = call float @dx.op.unary.f32(i32 27, float %2135)  ; Round_ni(value)
  %2137 = fptoui float %2136 to i32
  %2138 = urem i32 %2137, %2071
  %2139 = udiv i32 %2137, %2072
  %2140 = call float @dx.op.unary.f32(i32 22, float %2120)  ; Frc(value)
  %2141 = call float @dx.op.unary.f32(i32 22, float %2121)  ; Frc(value)
  %2142 = uitofp i32 %2138 to float
  %2143 = uitofp i32 %2139 to float
  %2144 = fadd fast float %2140, %2142
  %2145 = fadd fast float %2141, %2143
  %2146 = uitofp i32 %2071 to float
  %2147 = uitofp i32 %2072 to float
  %2148 = fdiv fast float %2144, %2146
  %2149 = fdiv fast float %2145, %2147
  br label %2150

; <label>:2150                                    ; preds = %2125, %2052
  %2151 = phi float [ %2148, %2125 ], [ %2120, %2052 ]
  %2152 = phi float [ %2149, %2125 ], [ %2121, %2052 ]
  %2153 = and i32 %2046, 16777216
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2264, label %2155

; <label>:2155                                    ; preds = %2150
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2160 = fadd fast float %2157, %116
  %2161 = fadd fast float %2158, %117
  %2162 = fadd fast float %2159, %118
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = icmp eq i32 %34, 65535
  br i1 %2166, label %2261, label %2167

; <label>:2167                                    ; preds = %2155
  %2168 = lshr i32 %34, 1
  %2169 = shl i32 %2168, 2
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %34, 1
  %2173 = icmp ne i32 %2172, 0
  %2174 = lshr i32 %2171, 16
  %2175 = and i32 %2171, 65535
  %2176 = select i1 %2173, i32 %2174, i32 %2175
  %2177 = icmp eq i32 %2176, 65535
  br i1 %2177, label %2257, label %2178

; <label>:2178                                    ; preds = %2167
  %2179 = mul nuw nsw i32 %2176, 40
  %2180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = add nuw nsw i32 %2179, 12
  %2185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = add nuw nsw i32 %2179, 24
  %2190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = add nuw nsw i32 %2179, 36
  %2195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = fsub fast float %2160, %2181
  %2198 = fsub fast float %2161, %2182
  %2199 = fsub fast float %2162, %2183
  %2200 = fmul fast float %2196, %2197
  %2201 = fmul fast float %2196, %2198
  %2202 = fmul fast float %2196, %2199
  %2203 = call float @dx.op.unary.f32(i32 27, float %2200)  ; Round_ni(value)
  %2204 = call float @dx.op.unary.f32(i32 27, float %2201)  ; Round_ni(value)
  %2205 = call float @dx.op.unary.f32(i32 27, float %2202)  ; Round_ni(value)
  %2206 = fadd fast float %2203, 5.000000e-01
  %2207 = fadd fast float %2204, 5.000000e-01
  %2208 = fadd fast float %2205, 5.000000e-01
  %2209 = fmul fast float %2206, %2186
  %2210 = fmul fast float %2207, %2187
  %2211 = fmul fast float %2208, %2188
  %2212 = shl i32 %34, 2
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = add i32 %2214, 0
  %2216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2217 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2218 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2219 = call float @dx.op.unary.f32(i32 22, float %2211)  ; Frc(value)
  %2220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2216, %dx.types.Handle %30, float %2217, float %2218, float %2219, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2221 = extractvalue %dx.types.ResRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.ResRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.ResRet.f32 %2220, 2
  %2224 = fmul fast float %2221, 1.023000e+03
  %2225 = fmul fast float %2222, 1.023000e+03
  %2226 = fmul fast float %2223, 1.023000e+03
  %2227 = fadd fast float %2224, 5.000000e-01
  %2228 = fadd fast float %2225, 5.000000e-01
  %2229 = fadd fast float %2226, 5.000000e-01
  %2230 = call float @dx.op.unary.f32(i32 27, float %2227)  ; Round_ni(value)
  %2231 = call float @dx.op.unary.f32(i32 27, float %2228)  ; Round_ni(value)
  %2232 = call float @dx.op.unary.f32(i32 27, float %2229)  ; Round_ni(value)
  %2233 = fsub fast float %2200, %2203
  %2234 = fsub fast float %2201, %2204
  %2235 = fsub fast float %2202, %2205
  %2236 = fmul fast float %2233, 7.500000e-01
  %2237 = fmul fast float %2234, 7.500000e-01
  %2238 = fmul fast float %2235, 7.500000e-01
  %2239 = fadd fast float %2203, 1.250000e-01
  %2240 = fadd fast float %2239, %2236
  %2241 = fadd fast float %2240, %2230
  %2242 = fadd fast float %2204, 1.250000e-01
  %2243 = fadd fast float %2242, %2237
  %2244 = fadd fast float %2243, %2231
  %2245 = fadd fast float %2205, 1.250000e-01
  %2246 = fadd fast float %2245, %2238
  %2247 = fadd fast float %2246, %2232
  %2248 = fmul fast float %2241, %2191
  %2249 = fmul fast float %2244, %2192
  %2250 = fmul fast float %2247, %2193
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = add i32 %2252, 0
  %2254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2254, %dx.types.Handle %28, float %2248, float %2249, float %2250, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2256 = extractvalue %dx.types.ResRet.f32 %2255, 0
  br label %2257

; <label>:2257                                    ; preds = %2178, %2167
  %2258 = phi float [ %2256, %2178 ], [ -1.000000e+00, %2167 ]
  %2259 = fadd fast float %2258, %2165
  %2260 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  br label %2261

; <label>:2261                                    ; preds = %2257, %2155
  %2262 = phi float [ %2260, %2257 ], [ %2165, %2155 ]
  %2263 = fmul fast float %2262, %382
  br label %2264

; <label>:2264                                    ; preds = %2261, %2150
  %2265 = phi float [ %2263, %2261 ], [ %382, %2150 ]
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 256
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2316, label %2270

; <label>:2270                                    ; preds = %2264
  %2271 = add i32 %33, 432
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = add i32 %2273, 0
  %2275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2275, %dx.types.Handle %58, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  %2278 = add i32 %33, 132
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = shl i32 %2280, 4
  %2282 = and i32 %2281, 32752
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = lshr i32 %2280, 7
  %2285 = and i32 %2284, 32752
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = fsub fast float 1.000000e+00, %2265
  %2288 = call float @dx.op.binary.f32(i32 35, float %2287, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2289 = bitcast float %2265 to i32
  %2290 = sitofp i32 %2289 to float
  %2291 = fadd fast float %2290, 0xC1CFBF8940000000
  %2292 = fmul fast float %2286, %2291
  %2293 = fadd fast float %2292, 0x41CFBF8940000000
  %2294 = fptosi float %2293 to i32
  %2295 = bitcast i32 %2294 to float
  %2296 = bitcast float %2288 to i32
  %2297 = sitofp i32 %2296 to float
  %2298 = fadd fast float %2297, 0xC1CFBF8940000000
  %2299 = fmul fast float %2298, %2286
  %2300 = fadd fast float %2299, 0x41CFBF8940000000
  %2301 = fptosi float %2300 to i32
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2295, %2283
  %2304 = fmul fast float %2302, %2283
  %2305 = fsub fast float %2288, %2303
  %2306 = fadd fast float %2304, %2288
  %2307 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2309 = fsub fast float %2277, %2307
  %2310 = fsub fast float %2308, %2307
  %2311 = bitcast float %2310 to i32
  %2312 = sub nsw i32 2129859010, %2311
  %2313 = bitcast i32 %2312 to float
  %2314 = fmul fast float %2313, %2309
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  br label %2316

; <label>:2316                                    ; preds = %2270, %2264
  %2317 = phi float [ %2315, %2270 ], [ %2265, %2264 ]
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 128
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2338, label %2322

; <label>:2322                                    ; preds = %2316
  %2323 = add i32 %33, 416
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = add i32 %2325, 0
  %2327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2327, %dx.types.Handle %58, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 524288
  %2333 = icmp ne i32 %2332, 0
  %2334 = fcmp fast ogt float %2329, 0x3FE0101020000000
  %2335 = select i1 %2334, float 1.000000e+00, float 0.000000e+00
  %2336 = select i1 %2333, float %2335, float %2329
  %2337 = fmul fast float %2336, %2317
  br label %2338

; <label>:2338                                    ; preds = %2322, %2316
  %2339 = phi float [ %2337, %2322 ], [ %2317, %2316 ]
  %2340 = fcmp fast ult float %2339, 0x3F70101020000000
  br i1 %2340, label %3079, label %2341

; <label>:2341                                    ; preds = %2338
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 16
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2544, label %2346

; <label>:2346                                    ; preds = %2341
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = add i32 %33, 368
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = add i32 %2351, 0
  %2353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2354 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2353, %dx.types.Handle %57, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  %2356 = extractvalue %dx.types.ResRet.f32 %2354, 1
  %2357 = extractvalue %dx.types.ResRet.f32 %2354, 2
  %2358 = extractvalue %dx.types.ResRet.f32 %2354, 3
  %2359 = and i32 %2348, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = lshr i32 %2348, 8
  %2362 = and i32 %2361, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2358, %2360
  %2365 = fadd fast float %2364, %2363
  %2366 = fmul fast float %2365, 0x3F70101000000000
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 512
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2379, label %2371

; <label>:2371                                    ; preds = %2346
  %2372 = add i32 %33, 448
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = add i32 %2374, 0
  %2376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2376, %dx.types.Handle %58, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  br label %2379

; <label>:2379                                    ; preds = %2371, %2346
  %2380 = phi float [ %2378, %2371 ], [ 1.000000e+00, %2346 ]
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 33554432
  %2384 = icmp eq i32 %2383, 0
  br i1 %2384, label %2491, label %2385

; <label>:2385                                    ; preds = %2379
  %2386 = add i32 %33, 256
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 65535
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = lshr i32 %2388, 16
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = add i32 %33, 260
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 65535
  %2397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2396)  ; LegacyF16ToF32(value)
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = lshr i32 %2399, 24
  %2401 = uitofp i32 %2400 to float
  %2402 = fmul fast float %2401, 0x3F70101020000000
  %2403 = and i32 %2399, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2404, 0x3F70101020000000
  %2406 = lshr i32 %2399, 8
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = lshr i32 %2399, 16
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = add i32 %33, 252
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = lshr i32 %2416, 24
  %2418 = uitofp i32 %2417 to float
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = and i32 %2416, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = lshr i32 %2416, 8
  %2424 = and i32 %2423, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = fmul fast float %2425, 0x3F70101020000000
  %2427 = lshr i32 %2416, 16
  %2428 = and i32 %2427, 255
  %2429 = uitofp i32 %2428 to float
  %2430 = fmul fast float %2429, 0x3F70101020000000
  %2431 = bitcast float %2355 to i32
  %2432 = ashr i32 %2431, 1
  %2433 = sub nsw i32 1597463174, %2432
  %2434 = bitcast i32 %2433 to float
  %2435 = fmul fast float %2355, 5.000000e-01
  %2436 = fmul fast float %2434, %2434
  %2437 = fmul fast float %2436, %2435
  %2438 = fsub fast float 1.500000e+00, %2437
  %2439 = fmul fast float %2434, %2355
  %2440 = fmul fast float %2439, %2438
  %2441 = bitcast float %2356 to i32
  %2442 = ashr i32 %2441, 1
  %2443 = sub nsw i32 1597463174, %2442
  %2444 = bitcast i32 %2443 to float
  %2445 = fmul fast float %2356, 5.000000e-01
  %2446 = fmul fast float %2444, %2444
  %2447 = fmul fast float %2446, %2445
  %2448 = fsub fast float 1.500000e+00, %2447
  %2449 = fmul fast float %2444, %2356
  %2450 = fmul fast float %2449, %2448
  %2451 = bitcast float %2357 to i32
  %2452 = ashr i32 %2451, 1
  %2453 = sub nsw i32 1597463174, %2452
  %2454 = bitcast i32 %2453 to float
  %2455 = fmul fast float %2357, 5.000000e-01
  %2456 = fmul fast float %2454, %2454
  %2457 = fmul fast float %2456, %2455
  %2458 = fsub fast float 1.500000e+00, %2457
  %2459 = fmul fast float %2454, %2357
  %2460 = fmul fast float %2459, %2458
  %2461 = fsub fast float %2440, %2422
  %2462 = fsub fast float %2450, %2426
  %2463 = fsub fast float %2460, %2430
  %2464 = fmul fast float %2461, %2390
  %2465 = fmul fast float %2462, %2392
  %2466 = fmul fast float %2463, %2397
  %2467 = fadd fast float %2464, %2405
  %2468 = fadd fast float %2465, %2409
  %2469 = fadd fast float %2466, %2413
  %2470 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2471 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2472 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2473 = fmul fast float %2470, %2470
  %2474 = fmul fast float %2471, %2471
  %2475 = fmul fast float %2472, %2472
  %2476 = fsub fast float %2473, %2355
  %2477 = fsub fast float %2474, %2356
  %2478 = fsub fast float %2475, %2357
  %2479 = fmul fast float %2476, %2380
  %2480 = fmul fast float %2477, %2380
  %2481 = fmul fast float %2478, %2380
  %2482 = fadd fast float %2479, %2355
  %2483 = fadd fast float %2480, %2356
  %2484 = fadd fast float %2481, %2357
  %2485 = fadd fast float %2402, %2366
  %2486 = fsub fast float %2485, %2419
  %2487 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2488 = fsub fast float %2487, %2366
  %2489 = fmul fast float %2488, %2380
  %2490 = fadd fast float %2489, %2366
  br label %2544

; <label>:2491                                    ; preds = %2379
  %2492 = and i32 %2382, 134217728
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2528, label %2494

; <label>:2494                                    ; preds = %2491
  %2495 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %2497 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fadd fast float %2496, -5.000000e-01
  %2500 = fadd fast float %2497, -5.000000e-01
  %2501 = fmul fast float %2498, %2380
  %2502 = fmul fast float %2499, %2380
  %2503 = fmul fast float %2500, %2380
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fadd fast float %2503, 5.000000e-01
  %2507 = call float @dx.op.unary.f32(i32 24, float %2355)  ; Sqrt(value)
  %2508 = call float @dx.op.unary.f32(i32 24, float %2356)  ; Sqrt(value)
  %2509 = call float @dx.op.unary.f32(i32 24, float %2357)  ; Sqrt(value)
  %2510 = fmul fast float %2504, 2.000000e+00
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2511, %2507
  %2513 = fadd fast float %2512, %2510
  %2514 = fmul fast float %2513, %2507
  %2515 = fmul fast float %2505, 2.000000e+00
  %2516 = fsub fast float 1.000000e+00, %2515
  %2517 = fmul fast float %2516, %2508
  %2518 = fadd fast float %2517, %2515
  %2519 = fmul fast float %2518, %2508
  %2520 = fmul fast float %2506, 2.000000e+00
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = fmul fast float %2521, %2509
  %2523 = fadd fast float %2522, %2520
  %2524 = fmul fast float %2523, %2509
  %2525 = fmul fast float %2514, %2514
  %2526 = fmul fast float %2519, %2519
  %2527 = fmul fast float %2524, %2524
  br label %2544

; <label>:2528                                    ; preds = %2491
  %2529 = fmul fast float %260, %260
  %2530 = fmul fast float %264, %264
  %2531 = fmul fast float %268, %268
  %2532 = fadd fast float %2529, -1.000000e+00
  %2533 = fadd fast float %2530, -1.000000e+00
  %2534 = fadd fast float %2531, -1.000000e+00
  %2535 = fmul fast float %2380, %2532
  %2536 = fmul fast float %2380, %2533
  %2537 = fmul fast float %2380, %2534
  %2538 = fadd fast float %2535, 1.000000e+00
  %2539 = fadd fast float %2536, 1.000000e+00
  %2540 = fadd fast float %2537, 1.000000e+00
  %2541 = fmul fast float %2538, %2355
  %2542 = fmul fast float %2539, %2356
  %2543 = fmul fast float %2540, %2357
  br label %2544

; <label>:2544                                    ; preds = %2528, %2494, %2385, %2341
  %2545 = phi float [ %2490, %2385 ], [ %2366, %2494 ], [ %2366, %2528 ], [ 0x3FA23C0BE0000000, %2341 ]
  %2546 = phi float [ %2482, %2385 ], [ %2525, %2494 ], [ %2541, %2528 ], [ 1.000000e+00, %2341 ]
  %2547 = phi float [ %2483, %2385 ], [ %2526, %2494 ], [ %2542, %2528 ], [ 1.000000e+00, %2341 ]
  %2548 = phi float [ %2484, %2385 ], [ %2527, %2494 ], [ %2543, %2528 ], [ 1.000000e+00, %2341 ]
  %2549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.i32 %2549, 1
  %2551 = and i32 %2550, 1
  %2552 = icmp ne i32 %2551, 0
  %2553 = add i32 %33, 356
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 32
  %2557 = icmp ne i32 %2556, 0
  %2558 = and i1 %2552, %2557
  %2559 = select i1 %2558, float 1.000000e+00, float %2546
  %2560 = select i1 %2558, float 0x3FD3333340000000, float %2547
  %2561 = select i1 %2558, float 0x3FD3333340000000, float %2548
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 32
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2638, label %2566

; <label>:2566                                    ; preds = %2544
  %2567 = add i32 %33, 124
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = add i32 %33, 384
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %2572, 0
  %2574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2574, %dx.types.Handle %57, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.ResRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.ResRet.f32 %2575, 2
  %2579 = extractvalue %dx.types.ResRet.f32 %2575, 3
  %2580 = and i32 %2569, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = lshr i32 %2569, 8
  %2583 = and i32 %2582, 255
  %2584 = uitofp i32 %2583 to float
  %2585 = lshr i32 %2569, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101000000000
  %2589 = fmul fast float %2576, %2581
  %2590 = fadd fast float %2589, %2584
  %2591 = fmul fast float %2590, 0x3F70101000000000
  %2592 = fadd fast float %2577, -5.000000e-01
  %2593 = fadd fast float %2579, -5.000000e-01
  %2594 = fmul fast float %2592, %2588
  %2595 = fmul fast float %2593, %2588
  %2596 = fadd fast float %2594, 5.000000e-01
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fmul fast float %2596, 2.000000e+00
  %2599 = fadd fast float %2598, -1.000000e+00
  %2600 = fmul fast float %2597, 2.000000e+00
  %2601 = fadd fast float %2600, -1.000000e+00
  %2602 = fadd fast float %2599, %2601
  %2603 = fmul fast float %2602, 5.000000e-01
  %2604 = fsub fast float %2599, %2601
  %2605 = fmul fast float %2604, 5.000000e-01
  %2606 = call float @dx.op.unary.f32(i32 6, float %2603)  ; FAbs(value)
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = call float @dx.op.unary.f32(i32 6, float %2605)  ; FAbs(value)
  %2609 = fsub fast float %2607, %2608
  %2610 = call float @dx.op.dot3.f32(i32 55, float %2603, float %2605, float %2609, float %2603, float %2605, float %2609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2611 = call float @dx.op.unary.f32(i32 25, float %2610)  ; Rsqrt(value)
  %2612 = fmul fast float %2603, %2611
  %2613 = fmul fast float %2605, %2611
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 67108864
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2634, label %2618

; <label>:2618                                    ; preds = %2566
  %2619 = add i32 %33, 312
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 65535
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = lshr i32 %2621, 16
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = fsub fast float %2591, %2629
  %2631 = fmul fast float %2630, %2623
  %2632 = fadd fast float %2631, %2627
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  br label %2634

; <label>:2634                                    ; preds = %2618, %2566
  %2635 = phi float [ %2633, %2618 ], [ %2591, %2566 ]
  %2636 = call float @dx.op.dot2.f32(i32 54, float %2612, float %2613, float %2055, float %2056)  ; Dot2(ax,ay,bx,by)
  %2637 = call float @dx.op.dot2.f32(i32 54, float %2612, float %2613, float %2057, float %2058)  ; Dot2(ax,ay,bx,by)
  br label %2638

; <label>:2638                                    ; preds = %2634, %2544
  %2639 = phi float [ %2635, %2634 ], [ 0x3FD6666660000000, %2544 ]
  %2640 = phi float [ %2636, %2634 ], [ 0.000000e+00, %2544 ]
  %2641 = phi float [ %2637, %2634 ], [ 0.000000e+00, %2544 ]
  %2642 = phi float [ %2578, %2634 ], [ 1.000000e+00, %2544 ]
  %2643 = add i32 %33, 192
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 22
  %2647 = shl nuw nsw i32 %2646, 5
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 64
  %2652 = icmp eq i32 %2651, 0
  br i1 %2652, label %2686, label %2653

; <label>:2653                                    ; preds = %2638
  %2654 = add i32 %33, 400
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %2656, 0
  %2658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 131072
  %2662 = icmp eq i32 %2661, 0
  %2663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2658, %dx.types.Handle %57, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.ResRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.ResRet.f32 %2663, 2
  %2667 = fmul fast float %2664, %248
  %2668 = fmul fast float %2665, %251
  %2669 = fmul fast float %2666, %254
  br i1 %2662, label %2676, label %2670

; <label>:2670                                    ; preds = %2653
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = fmul fast float %2672, %2667
  %2674 = fmul fast float %2672, %2668
  %2675 = fmul fast float %2672, %2669
  br label %2676

; <label>:2676                                    ; preds = %2670, %2653
  %2677 = phi float [ %2673, %2670 ], [ %2667, %2653 ]
  %2678 = phi float [ %2674, %2670 ], [ %2668, %2653 ]
  %2679 = phi float [ %2675, %2670 ], [ %2669, %2653 ]
  %2680 = fmul fast float %2677, %2648
  %2681 = select i1 %158, float %2680, float %2677
  %2682 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2678, float %2679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2683 = select i1 %158, float 0.000000e+00, float %2677
  %2684 = select i1 %158, float %2682, float %2678
  %2685 = select i1 %158, float 0.000000e+00, float %2679
  br label %2686

; <label>:2686                                    ; preds = %2676, %2638
  %2687 = phi float [ %2683, %2676 ], [ 0.000000e+00, %2638 ]
  %2688 = phi float [ %2684, %2676 ], [ 0.000000e+00, %2638 ]
  %2689 = phi float [ %2685, %2676 ], [ 0.000000e+00, %2638 ]
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 1024
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2724, label %2694

; <label>:2694                                    ; preds = %2686
  %2695 = add i32 %33, 184
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = and i32 %2697, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = lshr i32 %2697, 8
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, 0x3F70101020000000
  %2705 = lshr i32 %2697, 16
  %2706 = and i32 %2705, 255
  %2707 = uitofp i32 %2706 to float
  %2708 = fmul fast float %2707, 0x3F70101020000000
  %2709 = fmul fast float %2700, %2700
  %2710 = fmul fast float %2704, %2704
  %2711 = fmul fast float %2708, %2708
  %2712 = add i32 %33, 464
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = add i32 %2714, 0
  %2716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2716, %dx.types.Handle %58, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2721 = fmul fast float %2709, %2718
  %2722 = fmul fast float %2710, %2719
  %2723 = fmul fast float %2711, %2720
  br label %2724

; <label>:2724                                    ; preds = %2694, %2686
  %2725 = phi float [ %2721, %2694 ], [ 0.000000e+00, %2686 ]
  %2726 = phi float [ %2722, %2694 ], [ 0.000000e+00, %2686 ]
  %2727 = phi float [ %2723, %2694 ], [ 0.000000e+00, %2686 ]
  %2728 = fcmp fast ogt float %2725, 0.000000e+00
  %2729 = fcmp fast ogt float %2726, 0.000000e+00
  %2730 = fcmp fast ogt float %2727, 0.000000e+00
  %2731 = call float @dx.op.unary.f32(i32 23, float %2725)  ; Log(value)
  %2732 = call float @dx.op.unary.f32(i32 23, float %2726)  ; Log(value)
  %2733 = call float @dx.op.unary.f32(i32 23, float %2727)  ; Log(value)
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = lshr i32 %2735, 7
  %2737 = and i32 %2736, 32752
  %2738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2737)  ; LegacyF16ToF32(value)
  %2739 = fmul fast float %2731, 0xBFE62E4300000000
  %2740 = fmul fast float %2739, %2738
  %2741 = fmul fast float %2732, 0xBFE62E4300000000
  %2742 = fmul fast float %2741, %2738
  %2743 = fmul fast float %2733, 0xBFE62E4300000000
  %2744 = fmul fast float %2743, %2738
  %2745 = select i1 %2728, float %2740, float 1.270000e+02
  %2746 = select i1 %2729, float %2742, float 1.270000e+02
  %2747 = select i1 %2730, float %2744, float 1.270000e+02
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = and i32 %2749, 10240
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2796, label %2752

; <label>:2752                                    ; preds = %2724
  %2753 = add i32 %33, 480
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = add i32 %2755, 0
  %2757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2757, %dx.types.Handle %58, float %2151, float %2152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 3
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 1048576
  %2764 = icmp ne i32 %2763, 0
  %2765 = and i32 %2762, 8192
  %2766 = icmp eq i32 %2765, 0
  br i1 %2766, label %2782, label %2767

; <label>:2767                                    ; preds = %2752
  %2768 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2769 = select i1 %2764, float %2768, float %2759
  %2770 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2771 = select i1 %2764, float %2770, float %2759
  %2772 = add i32 %33, 128
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = lshr i32 %2774, 16
  %2776 = and i32 %2775, 255
  %2777 = uitofp i32 %2776 to float
  %2778 = fmul fast float %2777, 0x3F80101020000000
  %2779 = fmul fast float %2778, %2771
  %2780 = fmul fast float %2778, %2759
  %2781 = fmul fast float %2778, %2769
  br label %2782

; <label>:2782                                    ; preds = %2767, %2752
  %2783 = phi float [ %2779, %2767 ], [ 0.000000e+00, %2752 ]
  %2784 = phi float [ %2780, %2767 ], [ 0.000000e+00, %2752 ]
  %2785 = phi float [ %2781, %2767 ], [ 0.000000e+00, %2752 ]
  %2786 = and i32 %2762, 2048
  %2787 = icmp eq i32 %2786, 0
  br i1 %2787, label %2796, label %2788

; <label>:2788                                    ; preds = %2782
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = shl i32 %2790, 4
  %2792 = and i32 %2791, 32752
  %2793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2792)  ; LegacyF16ToF32(value)
  %2794 = fmul fast float %2793, %2760
  %2795 = call float @dx.op.binary.f32(i32 35, float %2794, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2796

; <label>:2796                                    ; preds = %2788, %2782, %2724
  %2797 = phi float [ %2783, %2788 ], [ %2783, %2782 ], [ 0.000000e+00, %2724 ]
  %2798 = phi float [ %2784, %2788 ], [ %2784, %2782 ], [ 0.000000e+00, %2724 ]
  %2799 = phi float [ %2785, %2788 ], [ %2785, %2782 ], [ 0.000000e+00, %2724 ]
  %2800 = phi float [ %2795, %2788 ], [ 0x3F70101020000000, %2782 ], [ 0x3F70101020000000, %2724 ]
  %2801 = add i32 %33, 128
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = lshr i32 %2803, 8
  %2807 = and i32 %2806, 255
  %2808 = uitofp i32 %2807 to float
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2560, float %2561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = fmul fast float %2808, %2809
  %2811 = fadd fast float %2810, %2805
  %2812 = fmul fast float %2811, 0x3F70101020000000
  %2813 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  br i1 %2043, label %2814, label %2849

; <label>:2814                                    ; preds = %2796
  %2815 = fmul fast float %2800, 2.000000e+00
  %2816 = fcmp fast olt float %2745, 1.270000e+02
  %2817 = fcmp fast olt float %2746, 1.270000e+02
  %2818 = fcmp fast olt float %2747, 1.270000e+02
  %2819 = fmul fast float %2745, 0xBFF7154760000000
  %2820 = fmul fast float %2819, %2815
  %2821 = fmul fast float %2746, 0xBFF7154760000000
  %2822 = fmul fast float %2821, %2815
  %2823 = fmul fast float %2747, 0xBFF7154760000000
  %2824 = fmul fast float %2823, %2815
  %2825 = call float @dx.op.unary.f32(i32 21, float %2820)  ; Exp(value)
  %2826 = call float @dx.op.unary.f32(i32 21, float %2822)  ; Exp(value)
  %2827 = call float @dx.op.unary.f32(i32 21, float %2824)  ; Exp(value)
  %2828 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2829 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2830 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2831 = fadd fast float %2828, -1.000000e+00
  %2832 = select i1 %2816, float %2831, float -1.000000e+00
  %2833 = fadd fast float %2829, -1.000000e+00
  %2834 = select i1 %2817, float %2833, float -1.000000e+00
  %2835 = fadd fast float %2830, -1.000000e+00
  %2836 = select i1 %2818, float %2835, float -1.000000e+00
  %2837 = fmul fast float %2832, %2339
  %2838 = fmul fast float %2834, %2339
  %2839 = fmul fast float %2836, %2339
  %2840 = fadd fast float %2837, 1.000000e+00
  %2841 = fadd fast float %2838, 1.000000e+00
  %2842 = fadd fast float %2839, 1.000000e+00
  %2843 = fmul fast float %2840, %2025
  %2844 = fmul fast float %2841, %2026
  %2845 = fmul fast float %2842, %2027
  %2846 = fmul fast float %2840, %2028
  %2847 = fmul fast float %2841, %2029
  %2848 = fmul fast float %2842, %2030
  br label %2849

; <label>:2849                                    ; preds = %2814, %2796
  %2850 = phi float [ %2843, %2814 ], [ %2025, %2796 ]
  %2851 = phi float [ %2844, %2814 ], [ %2026, %2796 ]
  %2852 = phi float [ %2845, %2814 ], [ %2027, %2796 ]
  %2853 = phi float [ %2846, %2814 ], [ %2028, %2796 ]
  %2854 = phi float [ %2847, %2814 ], [ %2029, %2796 ]
  %2855 = phi float [ %2848, %2814 ], [ %2030, %2796 ]
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = and i32 %2857, 3
  %2859 = icmp eq i32 %2858, 3
  br i1 %2859, label %2938, label %2860

; <label>:2860                                    ; preds = %2849
  %2861 = and i32 %2857, 16
  %2862 = icmp ne i32 %2861, 0
  %2863 = select i1 %2862, float %2339, float 0.000000e+00
  %2864 = icmp eq i32 %2858, 0
  br i1 %2864, label %2865, label %2893

; <label>:2865                                    ; preds = %2860
  %2866 = and i32 %2857, 64
  %2867 = icmp ne i32 %2866, 0
  %2868 = select i1 %2867, float %2339, float 0.000000e+00
  %2869 = fsub fast float %2559, %2850
  %2870 = fsub fast float %2560, %2851
  %2871 = fsub fast float %2561, %2852
  %2872 = fmul fast float %2863, %2869
  %2873 = fmul fast float %2863, %2870
  %2874 = fmul fast float %2863, %2871
  %2875 = fadd fast float %2872, %2850
  %2876 = fadd fast float %2873, %2851
  %2877 = fadd fast float %2874, %2852
  %2878 = fsub fast float %2545, %2037
  %2879 = fmul fast float %2863, %2878
  %2880 = fadd fast float %2879, %2037
  %2881 = fsub fast float %2687, %2853
  %2882 = fsub fast float %2688, %2854
  %2883 = fsub fast float %2689, %2855
  %2884 = fmul fast float %2868, %2881
  %2885 = fmul fast float %2868, %2882
  %2886 = fmul fast float %2868, %2883
  %2887 = fadd fast float %2884, %2853
  %2888 = fadd fast float %2885, %2854
  %2889 = fadd fast float %2886, %2855
  %2890 = fsub fast float %2813, %2041
  %2891 = fmul fast float %2863, %2890
  %2892 = fadd fast float %2891, %2041
  br label %2938

; <label>:2893                                    ; preds = %2860
  %2894 = icmp eq i32 %2858, 1
  br i1 %2894, label %2895, label %2908

; <label>:2895                                    ; preds = %2893
  %2896 = fadd fast float %2559, -1.000000e+00
  %2897 = fadd fast float %2560, -1.000000e+00
  %2898 = fadd fast float %2561, -1.000000e+00
  %2899 = fmul fast float %2863, %2896
  %2900 = fmul fast float %2863, %2897
  %2901 = fmul fast float %2863, %2898
  %2902 = fadd fast float %2899, 1.000000e+00
  %2903 = fadd fast float %2900, 1.000000e+00
  %2904 = fadd fast float %2901, 1.000000e+00
  %2905 = fmul fast float %2902, %2850
  %2906 = fmul fast float %2903, %2851
  %2907 = fmul fast float %2904, %2852
  br label %2938

; <label>:2908                                    ; preds = %2893
  %2909 = icmp eq i32 %2858, 2
  br i1 %2909, label %2910, label %2938

; <label>:2910                                    ; preds = %2908
  %2911 = call float @dx.op.unary.f32(i32 24, float %2559)  ; Sqrt(value)
  %2912 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2913 = call float @dx.op.unary.f32(i32 24, float %2561)  ; Sqrt(value)
  %2914 = fadd fast float %2911, -5.000000e-01
  %2915 = fadd fast float %2912, -5.000000e-01
  %2916 = fadd fast float %2913, -5.000000e-01
  %2917 = fmul fast float %2914, %2863
  %2918 = fmul fast float %2915, %2863
  %2919 = fmul fast float %2916, %2863
  %2920 = fadd fast float %2917, 5.000000e-01
  %2921 = fadd fast float %2918, 5.000000e-01
  %2922 = fadd fast float %2919, 5.000000e-01
  %2923 = fmul fast float %2920, 2.000000e+00
  %2924 = fsub fast float 1.000000e+00, %2923
  %2925 = fmul fast float %2924, %2850
  %2926 = fadd fast float %2925, %2923
  %2927 = fmul fast float %2926, %2850
  %2928 = fmul fast float %2921, 2.000000e+00
  %2929 = fsub fast float 1.000000e+00, %2928
  %2930 = fmul fast float %2929, %2851
  %2931 = fadd fast float %2930, %2928
  %2932 = fmul fast float %2931, %2851
  %2933 = fmul fast float %2922, 2.000000e+00
  %2934 = fsub fast float 1.000000e+00, %2933
  %2935 = fmul fast float %2934, %2852
  %2936 = fadd fast float %2935, %2933
  %2937 = fmul fast float %2936, %2852
  br label %2938

; <label>:2938                                    ; preds = %2910, %2908, %2895, %2865, %2849
  %2939 = phi float [ %2850, %2849 ], [ %2927, %2910 ], [ %2850, %2908 ], [ %2905, %2895 ], [ %2875, %2865 ]
  %2940 = phi float [ %2851, %2849 ], [ %2932, %2910 ], [ %2851, %2908 ], [ %2906, %2895 ], [ %2876, %2865 ]
  %2941 = phi float [ %2852, %2849 ], [ %2937, %2910 ], [ %2852, %2908 ], [ %2907, %2895 ], [ %2877, %2865 ]
  %2942 = phi float [ %2853, %2849 ], [ %2853, %2910 ], [ %2853, %2908 ], [ %2853, %2895 ], [ %2887, %2865 ]
  %2943 = phi float [ %2854, %2849 ], [ %2854, %2910 ], [ %2854, %2908 ], [ %2854, %2895 ], [ %2888, %2865 ]
  %2944 = phi float [ %2855, %2849 ], [ %2855, %2910 ], [ %2855, %2908 ], [ %2855, %2895 ], [ %2889, %2865 ]
  %2945 = phi float [ %2037, %2849 ], [ %2037, %2910 ], [ %2037, %2908 ], [ %2037, %2895 ], [ %2880, %2865 ]
  %2946 = phi float [ %2041, %2849 ], [ %2041, %2910 ], [ %2041, %2908 ], [ %2041, %2895 ], [ %2892, %2865 ]
  %2947 = and i32 %2857, 12
  %2948 = icmp eq i32 %2947, 12
  br i1 %2948, label %3079, label %2949

; <label>:2949                                    ; preds = %2938
  %2950 = and i32 %2857, 2097184
  %2951 = icmp eq i32 %2950, 2097184
  %2952 = select i1 %2951, float %2339, float 0.000000e+00
  %2953 = and i32 %2857, 4194336
  %2954 = icmp eq i32 %2953, 4194336
  %2955 = select i1 %2954, float %2339, float 0.000000e+00
  %2956 = and i32 %2857, 8388640
  %2957 = icmp eq i32 %2956, 8388640
  %2958 = select i1 %2957, float %2339, float 0.000000e+00
  %2959 = and i32 %2857, 1024
  %2960 = icmp ne i32 %2959, 0
  %2961 = select i1 %2960, float %2339, float 0.000000e+00
  %2962 = and i32 %2857, 2048
  %2963 = icmp ne i32 %2962, 0
  %2964 = select i1 %2963, float %2339, float 0.000000e+00
  %2965 = and i32 %2857, 8192
  %2966 = icmp ne i32 %2965, 0
  %2967 = select i1 %2966, float %2339, float 0.000000e+00
  %2968 = icmp eq i32 %2947, 0
  br i1 %2968, label %2969, label %3003

; <label>:2969                                    ; preds = %2949
  %2970 = fsub fast float %2640, %2023
  %2971 = fsub fast float %2641, %2024
  %2972 = fmul fast float %2952, %2970
  %2973 = fmul fast float %2952, %2971
  %2974 = fadd fast float %2972, %2023
  %2975 = fadd fast float %2973, %2024
  %2976 = fsub fast float %2642, %2039
  %2977 = fmul fast float %2955, %2976
  %2978 = fadd fast float %2977, %2039
  %2979 = fsub fast float %2639, %2038
  %2980 = fmul fast float %2958, %2979
  %2981 = fadd fast float %2980, %2038
  %2982 = fsub fast float %2745, %2034
  %2983 = fsub fast float %2746, %2035
  %2984 = fsub fast float %2747, %2036
  %2985 = fmul fast float %2961, %2982
  %2986 = fmul fast float %2961, %2983
  %2987 = fmul fast float %2961, %2984
  %2988 = fadd fast float %2985, %2034
  %2989 = fadd fast float %2986, %2035
  %2990 = fadd fast float %2987, %2036
  %2991 = fsub fast float %2800, %2040
  %2992 = fmul fast float %2964, %2991
  %2993 = fadd fast float %2992, %2040
  %2994 = fsub fast float %2797, %2031
  %2995 = fsub fast float %2798, %2032
  %2996 = fsub fast float %2799, %2033
  %2997 = fmul fast float %2967, %2994
  %2998 = fmul fast float %2967, %2995
  %2999 = fmul fast float %2967, %2996
  %3000 = fadd fast float %2997, %2031
  %3001 = fadd fast float %2998, %2032
  %3002 = fadd fast float %2999, %2033
  br label %3079

; <label>:3003                                    ; preds = %2949
  %3004 = icmp eq i32 %2947, 4
  br i1 %3004, label %3005, label %3051

; <label>:3005                                    ; preds = %3003
  %3006 = fmul fast float %2952, %2640
  %3007 = fmul fast float %2952, %2641
  %3008 = fadd fast float %3006, %2023
  %3009 = fadd fast float %3007, %2024
  %3010 = call float @dx.op.binary.f32(i32 36, float %2039, float %2642)  ; FMin(a,b)
  %3011 = fsub fast float %3010, %2039
  %3012 = fmul fast float %3011, %2955
  %3013 = fadd fast float %3012, %2039
  %3014 = fadd fast float %2639, %2038
  %3015 = fmul fast float %3014, 0x3FF337FAE0000000
  %3016 = fmul fast float %2038, %2038
  %3017 = fmul fast float %2639, %2639
  %3018 = fadd fast float %3017, %3016
  %3019 = fmul fast float %3018, 0x3FE5152B00000000
  %3020 = fmul fast float %2038, 0xBFCC1F85E0000000
  %3021 = fmul fast float %3020, %2639
  %3022 = fadd fast float %3021, 0xBFE1363700000000
  %3023 = fadd fast float %3022, %3015
  %3024 = fsub fast float %3023, %3019
  %3025 = fmul fast float %3014, 0x3FBA6F0D00000000
  %3026 = fmul fast float %3018, 0x3FD0432880000000
  %3027 = fmul fast float %2038, 0xBFEF110800000000
  %3028 = fmul fast float %3027, %2639
  %3029 = fadd fast float %3028, 1.000000e+00
  %3030 = fsub fast float %3029, %3025
  %3031 = fadd fast float %3030, %3026
  %3032 = fdiv fast float %3024, %3031
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3034 = fsub fast float %3033, %2038
  %3035 = fmul fast float %3034, %2958
  %3036 = fadd fast float %3035, %2038
  %3037 = fmul fast float %2961, %2745
  %3038 = fmul fast float %2961, %2746
  %3039 = fmul fast float %2961, %2747
  %3040 = fadd fast float %3037, %2034
  %3041 = fadd fast float %3038, %2035
  %3042 = fadd fast float %3039, %2036
  %3043 = fmul fast float %2964, %2800
  %3044 = fadd fast float %3043, %2040
  %3045 = fmul fast float %2967, %2797
  %3046 = fmul fast float %2967, %2798
  %3047 = fmul fast float %2967, %2799
  %3048 = fadd fast float %3045, %2031
  %3049 = fadd fast float %3046, %2032
  %3050 = fadd fast float %3047, %2033
  br label %3079

; <label>:3051                                    ; preds = %3003
  %3052 = icmp eq i32 %2947, 8
  br i1 %3052, label %3053, label %3079

; <label>:3053                                    ; preds = %3051
  %3054 = fmul fast float %2952, %2640
  %3055 = fmul fast float %2952, %2641
  %3056 = fadd fast float %3054, %2023
  %3057 = fadd fast float %3055, %2024
  %3058 = call float @dx.op.binary.f32(i32 36, float %2039, float %2642)  ; FMin(a,b)
  %3059 = fsub fast float %3058, %2039
  %3060 = fmul fast float %3059, %2955
  %3061 = fadd fast float %3060, %2039
  %3062 = fsub fast float %2639, %2038
  %3063 = fmul fast float %2958, %3062
  %3064 = fadd fast float %3063, %2038
  %3065 = fmul fast float %2961, %2745
  %3066 = fmul fast float %2961, %2746
  %3067 = fmul fast float %2961, %2747
  %3068 = fadd fast float %3065, %2034
  %3069 = fadd fast float %3066, %2035
  %3070 = fadd fast float %3067, %2036
  %3071 = fmul fast float %2964, %2800
  %3072 = fadd fast float %3071, %2040
  %3073 = fmul fast float %2967, %2797
  %3074 = fmul fast float %2967, %2798
  %3075 = fmul fast float %2967, %2799
  %3076 = fadd fast float %3073, %2031
  %3077 = fadd fast float %3074, %2032
  %3078 = fadd fast float %3075, %2033
  br label %3079

; <label>:3079                                    ; preds = %3053, %3051, %3005, %2969, %2938, %2338, %2042, %2022
  %3080 = phi float [ %2023, %2938 ], [ %2023, %2338 ], [ %2023, %2022 ], [ %3056, %3053 ], [ %2023, %3051 ], [ %3008, %3005 ], [ %2974, %2969 ], [ %2023, %2042 ]
  %3081 = phi float [ %2024, %2938 ], [ %2024, %2338 ], [ %2024, %2022 ], [ %3057, %3053 ], [ %2024, %3051 ], [ %3009, %3005 ], [ %2975, %2969 ], [ %2024, %2042 ]
  %3082 = phi float [ %2939, %2938 ], [ %2025, %2338 ], [ %2025, %2022 ], [ %2939, %3053 ], [ %2939, %3051 ], [ %2939, %3005 ], [ %2939, %2969 ], [ %2025, %2042 ]
  %3083 = phi float [ %2940, %2938 ], [ %2026, %2338 ], [ %2026, %2022 ], [ %2940, %3053 ], [ %2940, %3051 ], [ %2940, %3005 ], [ %2940, %2969 ], [ %2026, %2042 ]
  %3084 = phi float [ %2941, %2938 ], [ %2027, %2338 ], [ %2027, %2022 ], [ %2941, %3053 ], [ %2941, %3051 ], [ %2941, %3005 ], [ %2941, %2969 ], [ %2027, %2042 ]
  %3085 = phi float [ %2942, %2938 ], [ %2028, %2338 ], [ %2028, %2022 ], [ %2942, %3053 ], [ %2942, %3051 ], [ %2942, %3005 ], [ %2942, %2969 ], [ %2028, %2042 ]
  %3086 = phi float [ %2943, %2938 ], [ %2029, %2338 ], [ %2029, %2022 ], [ %2943, %3053 ], [ %2943, %3051 ], [ %2943, %3005 ], [ %2943, %2969 ], [ %2029, %2042 ]
  %3087 = phi float [ %2944, %2938 ], [ %2030, %2338 ], [ %2030, %2022 ], [ %2944, %3053 ], [ %2944, %3051 ], [ %2944, %3005 ], [ %2944, %2969 ], [ %2030, %2042 ]
  %3088 = phi float [ %2031, %2938 ], [ %2031, %2338 ], [ %2031, %2022 ], [ %3076, %3053 ], [ %2031, %3051 ], [ %3048, %3005 ], [ %3000, %2969 ], [ %2031, %2042 ]
  %3089 = phi float [ %2032, %2938 ], [ %2032, %2338 ], [ %2032, %2022 ], [ %3077, %3053 ], [ %2032, %3051 ], [ %3049, %3005 ], [ %3001, %2969 ], [ %2032, %2042 ]
  %3090 = phi float [ %2033, %2938 ], [ %2033, %2338 ], [ %2033, %2022 ], [ %3078, %3053 ], [ %2033, %3051 ], [ %3050, %3005 ], [ %3002, %2969 ], [ %2033, %2042 ]
  %3091 = phi float [ %2034, %2938 ], [ %2034, %2338 ], [ %2034, %2022 ], [ %3068, %3053 ], [ %2034, %3051 ], [ %3040, %3005 ], [ %2988, %2969 ], [ %2034, %2042 ]
  %3092 = phi float [ %2035, %2938 ], [ %2035, %2338 ], [ %2035, %2022 ], [ %3069, %3053 ], [ %2035, %3051 ], [ %3041, %3005 ], [ %2989, %2969 ], [ %2035, %2042 ]
  %3093 = phi float [ %2036, %2938 ], [ %2036, %2338 ], [ %2036, %2022 ], [ %3070, %3053 ], [ %2036, %3051 ], [ %3042, %3005 ], [ %2990, %2969 ], [ %2036, %2042 ]
  %3094 = phi float [ %2945, %2938 ], [ %2037, %2338 ], [ %2037, %2022 ], [ %2945, %3053 ], [ %2945, %3051 ], [ %2945, %3005 ], [ %2945, %2969 ], [ %2037, %2042 ]
  %3095 = phi float [ %2038, %2938 ], [ %2038, %2338 ], [ %2038, %2022 ], [ %3064, %3053 ], [ %2038, %3051 ], [ %3036, %3005 ], [ %2981, %2969 ], [ %2038, %2042 ]
  %3096 = phi float [ %2039, %2938 ], [ %2039, %2338 ], [ %2039, %2022 ], [ %3061, %3053 ], [ %2039, %3051 ], [ %3013, %3005 ], [ %2978, %2969 ], [ %2039, %2042 ]
  %3097 = phi float [ %2040, %2938 ], [ %2040, %2338 ], [ %2040, %2022 ], [ %3072, %3053 ], [ %2040, %3051 ], [ %3044, %3005 ], [ %2993, %2969 ], [ %2040, %2042 ]
  %3098 = phi float [ %2946, %2938 ], [ %2041, %2338 ], [ %2041, %2022 ], [ %2946, %3053 ], [ %2946, %3051 ], [ %2946, %3005 ], [ %2946, %2969 ], [ %2041, %2042 ]
  br i1 %335, label %4136, label %3099

; <label>:3099                                    ; preds = %3079
  %3100 = icmp ult i32 %386, 4
  %3101 = add i32 %33, 72
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = add i32 %33, 76
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = or i32 %3106, %3103
  %3108 = icmp eq i32 %3107, 0
  br i1 %3108, label %4136, label %3109

; <label>:3109                                    ; preds = %3099
  %3110 = and i32 %3103, 262144
  %3111 = icmp ne i32 %3110, 0
  %3112 = select i1 %3111, float %36, float 1.000000e+00
  %3113 = select i1 %3111, float %37, float 0.000000e+00
  %3114 = select i1 %3111, float %38, float 0.000000e+00
  %3115 = select i1 %3111, float %39, float 1.000000e+00
  %3116 = select i1 %3111, float %40, float %49
  %3117 = select i1 %3111, float %41, float %50
  %3118 = add i32 %33, 332
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = lshr i32 %3120, 16
  %3122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3121)  ; LegacyF16ToF32(value)
  %3123 = fmul fast float %3122, 0x3F50624DE0000000
  %3124 = add i32 %33, 136
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = lshr i32 %3126, 16
  %3128 = and i32 %3127, 255
  %3129 = lshr i32 %3126, 24
  %3130 = add i32 %33, 340
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 65535
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = lshr i32 %3132, 16
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = add i32 %33, 80
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = lshr i32 %3139, 22
  %3141 = shl nuw nsw i32 %3140, 5
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = shl i32 %3139, 4
  %3144 = and i32 %3143, 32752
  %3145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3144)  ; LegacyF16ToF32(value)
  %3146 = lshr i32 %3139, 7
  %3147 = and i32 %3146, 32752
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 3
  %3151 = fmul fast float %3150, 1.000000e+03
  %3152 = fmul fast float %325, %3151
  %3153 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3154 = fadd fast float %3153, %315
  %3155 = fmul fast float %326, %3151
  %3156 = call float @dx.op.unary.f32(i32 22, float %3155)  ; Frc(value)
  %3157 = fadd fast float %3156, %317
  %3158 = fmul fast float %3123, %3151
  %3159 = call float @dx.op.unary.f32(i32 22, float %3158)  ; Frc(value)
  %3160 = fmul fast float %3159, 0x401921FB60000000
  %3161 = fadd fast float %3160, %3142
  %3162 = call float @dx.op.unary.f32(i32 13, float %3161)  ; Sin(value)
  %3163 = call float @dx.op.unary.f32(i32 12, float %3161)  ; Cos(value)
  %3164 = fsub fast float -0.000000e+00, %3162
  %3165 = fadd fast float %3116, -5.000000e-01
  %3166 = fadd fast float %3117, -5.000000e-01
  %3167 = fmul fast float %3134, %3165
  %3168 = fmul fast float %3136, %3166
  %3169 = fadd fast float %3167, 5.000000e-01
  %3170 = fadd fast float %3168, 5.000000e-01
  %3171 = fmul fast float %3145, %3169
  %3172 = fmul fast float %3148, %3170
  %3173 = fmul fast float %3163, %3171
  %3174 = call float @dx.op.tertiary.f32(i32 46, float %3164, float %3172, float %3173)  ; FMad(a,b,c)
  %3175 = fmul fast float %3162, %3171
  %3176 = call float @dx.op.tertiary.f32(i32 46, float %3163, float %3172, float %3175)  ; FMad(a,b,c)
  %3177 = fadd fast float %3154, %3174
  %3178 = fadd fast float %3157, %3176
  %3179 = icmp ugt i32 %3128, 1
  %3180 = icmp ugt i32 %3126, 33554431
  %3181 = or i1 %3180, %3179
  br i1 %3181, label %3182, label %3207

; <label>:3182                                    ; preds = %3109
  %3183 = add i32 %33, 276
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = lshr i32 %3185, 16
  %3187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3186)  ; LegacyF16ToF32(value)
  %3188 = fmul fast float %3150, %3187
  %3189 = call float @dx.op.unary.f32(i32 22, float %3188)  ; Frc(value)
  %3190 = mul nuw nsw i32 %3128, %3129
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3189, %3191
  %3193 = call float @dx.op.unary.f32(i32 27, float %3192)  ; Round_ni(value)
  %3194 = fptoui float %3193 to i32
  %3195 = urem i32 %3194, %3128
  %3196 = udiv i32 %3194, %3129
  %3197 = call float @dx.op.unary.f32(i32 22, float %3177)  ; Frc(value)
  %3198 = call float @dx.op.unary.f32(i32 22, float %3178)  ; Frc(value)
  %3199 = uitofp i32 %3195 to float
  %3200 = uitofp i32 %3196 to float
  %3201 = fadd fast float %3197, %3199
  %3202 = fadd fast float %3198, %3200
  %3203 = uitofp i32 %3128 to float
  %3204 = uitofp i32 %3129 to float
  %3205 = fdiv fast float %3201, %3203
  %3206 = fdiv fast float %3202, %3204
  br label %3207

; <label>:3207                                    ; preds = %3182, %3109
  %3208 = phi float [ %3205, %3182 ], [ %3177, %3109 ]
  %3209 = phi float [ %3206, %3182 ], [ %3178, %3109 ]
  %3210 = and i32 %3103, 16777216
  %3211 = icmp eq i32 %3210, 0
  br i1 %3211, label %3321, label %3212

; <label>:3212                                    ; preds = %3207
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.CBufRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.CBufRet.f32 %3213, 2
  %3217 = fadd fast float %3214, %116
  %3218 = fadd fast float %3215, %117
  %3219 = fadd fast float %3216, %118
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 0
  %3222 = call float @dx.op.unary.f32(i32 7, float %3221)  ; Saturate(value)
  %3223 = icmp eq i32 %34, 65535
  br i1 %3223, label %3318, label %3224

; <label>:3224                                    ; preds = %3212
  %3225 = lshr i32 %34, 1
  %3226 = shl i32 %3225, 2
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = and i32 %34, 1
  %3230 = icmp ne i32 %3229, 0
  %3231 = lshr i32 %3228, 16
  %3232 = and i32 %3228, 65535
  %3233 = select i1 %3230, i32 %3231, i32 %3232
  %3234 = icmp eq i32 %3233, 65535
  br i1 %3234, label %3314, label %3235

; <label>:3235                                    ; preds = %3224
  %3236 = mul nuw nsw i32 %3233, 40
  %3237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = add nuw nsw i32 %3236, 12
  %3242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.f32 %3242, 0
  %3244 = extractvalue %dx.types.ResRet.f32 %3242, 1
  %3245 = extractvalue %dx.types.ResRet.f32 %3242, 2
  %3246 = add nuw nsw i32 %3236, 24
  %3247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.ResRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.ResRet.f32 %3247, 2
  %3251 = add nuw nsw i32 %3236, 36
  %3252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = fsub fast float %3217, %3238
  %3255 = fsub fast float %3218, %3239
  %3256 = fsub fast float %3219, %3240
  %3257 = fmul fast float %3253, %3254
  %3258 = fmul fast float %3253, %3255
  %3259 = fmul fast float %3253, %3256
  %3260 = call float @dx.op.unary.f32(i32 27, float %3257)  ; Round_ni(value)
  %3261 = call float @dx.op.unary.f32(i32 27, float %3258)  ; Round_ni(value)
  %3262 = call float @dx.op.unary.f32(i32 27, float %3259)  ; Round_ni(value)
  %3263 = fadd fast float %3260, 5.000000e-01
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = fadd fast float %3262, 5.000000e-01
  %3266 = fmul fast float %3263, %3243
  %3267 = fmul fast float %3264, %3244
  %3268 = fmul fast float %3265, %3245
  %3269 = shl i32 %34, 2
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = add i32 %3271, 0
  %3273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3274 = call float @dx.op.unary.f32(i32 22, float %3266)  ; Frc(value)
  %3275 = call float @dx.op.unary.f32(i32 22, float %3267)  ; Frc(value)
  %3276 = call float @dx.op.unary.f32(i32 22, float %3268)  ; Frc(value)
  %3277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3273, %dx.types.Handle %30, float %3274, float %3275, float %3276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3278 = extractvalue %dx.types.ResRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.ResRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.ResRet.f32 %3277, 2
  %3281 = fmul fast float %3278, 1.023000e+03
  %3282 = fmul fast float %3279, 1.023000e+03
  %3283 = fmul fast float %3280, 1.023000e+03
  %3284 = fadd fast float %3281, 5.000000e-01
  %3285 = fadd fast float %3282, 5.000000e-01
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = call float @dx.op.unary.f32(i32 27, float %3284)  ; Round_ni(value)
  %3288 = call float @dx.op.unary.f32(i32 27, float %3285)  ; Round_ni(value)
  %3289 = call float @dx.op.unary.f32(i32 27, float %3286)  ; Round_ni(value)
  %3290 = fsub fast float %3257, %3260
  %3291 = fsub fast float %3258, %3261
  %3292 = fsub fast float %3259, %3262
  %3293 = fmul fast float %3290, 7.500000e-01
  %3294 = fmul fast float %3291, 7.500000e-01
  %3295 = fmul fast float %3292, 7.500000e-01
  %3296 = fadd fast float %3260, 1.250000e-01
  %3297 = fadd fast float %3296, %3293
  %3298 = fadd fast float %3297, %3287
  %3299 = fadd fast float %3261, 1.250000e-01
  %3300 = fadd fast float %3299, %3294
  %3301 = fadd fast float %3300, %3288
  %3302 = fadd fast float %3262, 1.250000e-01
  %3303 = fadd fast float %3302, %3295
  %3304 = fadd fast float %3303, %3289
  %3305 = fmul fast float %3298, %3248
  %3306 = fmul fast float %3301, %3249
  %3307 = fmul fast float %3304, %3250
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3311, %dx.types.Handle %28, float %3305, float %3306, float %3307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  br label %3314

; <label>:3314                                    ; preds = %3235, %3224
  %3315 = phi float [ %3313, %3235 ], [ -1.000000e+00, %3224 ]
  %3316 = fadd fast float %3315, %3222
  %3317 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  br label %3318

; <label>:3318                                    ; preds = %3314, %3212
  %3319 = phi float [ %3317, %3314 ], [ %3222, %3212 ]
  %3320 = fmul fast float %3319, %381
  br label %3321

; <label>:3321                                    ; preds = %3318, %3207
  %3322 = phi float [ %3320, %3318 ], [ %381, %3207 ]
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = and i32 %3324, 256
  %3326 = icmp eq i32 %3325, 0
  br i1 %3326, label %3373, label %3327

; <label>:3327                                    ; preds = %3321
  %3328 = add i32 %33, 436
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = add i32 %3330, 0
  %3332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3332, %dx.types.Handle %58, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = add i32 %33, 148
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = shl i32 %3337, 4
  %3339 = and i32 %3338, 32752
  %3340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3339)  ; LegacyF16ToF32(value)
  %3341 = lshr i32 %3337, 7
  %3342 = and i32 %3341, 32752
  %3343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3342)  ; LegacyF16ToF32(value)
  %3344 = fsub fast float 1.000000e+00, %3322
  %3345 = call float @dx.op.binary.f32(i32 35, float %3344, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3346 = bitcast float %3322 to i32
  %3347 = sitofp i32 %3346 to float
  %3348 = fadd fast float %3347, 0xC1CFBF8940000000
  %3349 = fmul fast float %3343, %3348
  %3350 = fadd fast float %3349, 0x41CFBF8940000000
  %3351 = fptosi float %3350 to i32
  %3352 = bitcast i32 %3351 to float
  %3353 = bitcast float %3345 to i32
  %3354 = sitofp i32 %3353 to float
  %3355 = fadd fast float %3354, 0xC1CFBF8940000000
  %3356 = fmul fast float %3355, %3343
  %3357 = fadd fast float %3356, 0x41CFBF8940000000
  %3358 = fptosi float %3357 to i32
  %3359 = bitcast i32 %3358 to float
  %3360 = fmul fast float %3352, %3340
  %3361 = fmul fast float %3359, %3340
  %3362 = fsub fast float %3345, %3360
  %3363 = fadd fast float %3361, %3345
  %3364 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3365 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3366 = fsub fast float %3334, %3364
  %3367 = fsub fast float %3365, %3364
  %3368 = bitcast float %3367 to i32
  %3369 = sub nsw i32 2129859010, %3368
  %3370 = bitcast i32 %3369 to float
  %3371 = fmul fast float %3370, %3366
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  br label %3373

; <label>:3373                                    ; preds = %3327, %3321
  %3374 = phi float [ %3372, %3327 ], [ %3322, %3321 ]
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 128
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3395, label %3379

; <label>:3379                                    ; preds = %3373
  %3380 = add i32 %33, 420
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %3382, 0
  %3384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3384, %dx.types.Handle %58, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 524288
  %3390 = icmp ne i32 %3389, 0
  %3391 = fcmp fast ogt float %3386, 0x3FE0101020000000
  %3392 = select i1 %3391, float 1.000000e+00, float 0.000000e+00
  %3393 = select i1 %3390, float %3392, float %3386
  %3394 = fmul fast float %3393, %3374
  br label %3395

; <label>:3395                                    ; preds = %3379, %3373
  %3396 = phi float [ %3394, %3379 ], [ %3374, %3373 ]
  %3397 = fcmp fast ult float %3396, 0x3F70101020000000
  br i1 %3397, label %4136, label %3398

; <label>:3398                                    ; preds = %3395
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 16
  %3402 = icmp eq i32 %3401, 0
  br i1 %3402, label %3601, label %3403

; <label>:3403                                    ; preds = %3398
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = add i32 %33, 372
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = add i32 %3408, 0
  %3410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3410, %dx.types.Handle %57, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = extractvalue %dx.types.ResRet.f32 %3411, 1
  %3414 = extractvalue %dx.types.ResRet.f32 %3411, 2
  %3415 = extractvalue %dx.types.ResRet.f32 %3411, 3
  %3416 = and i32 %3405, 255
  %3417 = uitofp i32 %3416 to float
  %3418 = lshr i32 %3405, 8
  %3419 = and i32 %3418, 255
  %3420 = uitofp i32 %3419 to float
  %3421 = fmul fast float %3415, %3417
  %3422 = fadd fast float %3421, %3420
  %3423 = fmul fast float %3422, 0x3F70101000000000
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 512
  %3427 = icmp eq i32 %3426, 0
  br i1 %3427, label %3436, label %3428

; <label>:3428                                    ; preds = %3403
  %3429 = add i32 %33, 452
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = add i32 %3431, 0
  %3433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3433, %dx.types.Handle %58, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  br label %3436

; <label>:3436                                    ; preds = %3428, %3403
  %3437 = phi float [ %3435, %3428 ], [ 1.000000e+00, %3403 ]
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 33554432
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3548, label %3442

; <label>:3442                                    ; preds = %3436
  %3443 = add i32 %33, 272
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 65535
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = lshr i32 %3445, 16
  %3449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3448)  ; LegacyF16ToF32(value)
  %3450 = add i32 %33, 276
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = and i32 %3452, 65535
  %3454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3453)  ; LegacyF16ToF32(value)
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = lshr i32 %3456, 24
  %3458 = uitofp i32 %3457 to float
  %3459 = fmul fast float %3458, 0x3F70101020000000
  %3460 = and i32 %3456, 255
  %3461 = uitofp i32 %3460 to float
  %3462 = fmul fast float %3461, 0x3F70101020000000
  %3463 = lshr i32 %3456, 8
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = lshr i32 %3456, 16
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = add i32 %33, 268
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = lshr i32 %3473, 24
  %3475 = uitofp i32 %3474 to float
  %3476 = fmul fast float %3475, 0x3F70101020000000
  %3477 = and i32 %3473, 255
  %3478 = uitofp i32 %3477 to float
  %3479 = fmul fast float %3478, 0x3F70101020000000
  %3480 = lshr i32 %3473, 8
  %3481 = and i32 %3480, 255
  %3482 = uitofp i32 %3481 to float
  %3483 = fmul fast float %3482, 0x3F70101020000000
  %3484 = lshr i32 %3473, 16
  %3485 = and i32 %3484, 255
  %3486 = uitofp i32 %3485 to float
  %3487 = fmul fast float %3486, 0x3F70101020000000
  %3488 = bitcast float %3412 to i32
  %3489 = ashr i32 %3488, 1
  %3490 = sub nsw i32 1597463174, %3489
  %3491 = bitcast i32 %3490 to float
  %3492 = fmul fast float %3412, 5.000000e-01
  %3493 = fmul fast float %3491, %3491
  %3494 = fmul fast float %3493, %3492
  %3495 = fsub fast float 1.500000e+00, %3494
  %3496 = fmul fast float %3491, %3412
  %3497 = fmul fast float %3496, %3495
  %3498 = bitcast float %3413 to i32
  %3499 = ashr i32 %3498, 1
  %3500 = sub nsw i32 1597463174, %3499
  %3501 = bitcast i32 %3500 to float
  %3502 = fmul fast float %3413, 5.000000e-01
  %3503 = fmul fast float %3501, %3501
  %3504 = fmul fast float %3503, %3502
  %3505 = fsub fast float 1.500000e+00, %3504
  %3506 = fmul fast float %3501, %3413
  %3507 = fmul fast float %3506, %3505
  %3508 = bitcast float %3414 to i32
  %3509 = ashr i32 %3508, 1
  %3510 = sub nsw i32 1597463174, %3509
  %3511 = bitcast i32 %3510 to float
  %3512 = fmul fast float %3414, 5.000000e-01
  %3513 = fmul fast float %3511, %3511
  %3514 = fmul fast float %3513, %3512
  %3515 = fsub fast float 1.500000e+00, %3514
  %3516 = fmul fast float %3511, %3414
  %3517 = fmul fast float %3516, %3515
  %3518 = fsub fast float %3497, %3479
  %3519 = fsub fast float %3507, %3483
  %3520 = fsub fast float %3517, %3487
  %3521 = fmul fast float %3518, %3447
  %3522 = fmul fast float %3519, %3449
  %3523 = fmul fast float %3520, %3454
  %3524 = fadd fast float %3521, %3462
  %3525 = fadd fast float %3522, %3466
  %3526 = fadd fast float %3523, %3470
  %3527 = call float @dx.op.unary.f32(i32 7, float %3524)  ; Saturate(value)
  %3528 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3529 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3530 = fmul fast float %3527, %3527
  %3531 = fmul fast float %3528, %3528
  %3532 = fmul fast float %3529, %3529
  %3533 = fsub fast float %3530, %3412
  %3534 = fsub fast float %3531, %3413
  %3535 = fsub fast float %3532, %3414
  %3536 = fmul fast float %3533, %3437
  %3537 = fmul fast float %3534, %3437
  %3538 = fmul fast float %3535, %3437
  %3539 = fadd fast float %3536, %3412
  %3540 = fadd fast float %3537, %3413
  %3541 = fadd fast float %3538, %3414
  %3542 = fadd fast float %3459, %3423
  %3543 = fsub fast float %3542, %3476
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  %3545 = fsub fast float %3544, %3423
  %3546 = fmul fast float %3545, %3437
  %3547 = fadd fast float %3546, %3423
  br label %3601

; <label>:3548                                    ; preds = %3436
  %3549 = and i32 %3439, 134217728
  %3550 = icmp eq i32 %3549, 0
  br i1 %3550, label %3585, label %3551

; <label>:3551                                    ; preds = %3548
  %3552 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %3553 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %3554 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %3555 = fadd fast float %3552, -5.000000e-01
  %3556 = fadd fast float %3553, -5.000000e-01
  %3557 = fadd fast float %3554, -5.000000e-01
  %3558 = fmul fast float %3555, %3437
  %3559 = fmul fast float %3556, %3437
  %3560 = fmul fast float %3557, %3437
  %3561 = fadd fast float %3558, 5.000000e-01
  %3562 = fadd fast float %3559, 5.000000e-01
  %3563 = fadd fast float %3560, 5.000000e-01
  %3564 = call float @dx.op.unary.f32(i32 24, float %3412)  ; Sqrt(value)
  %3565 = call float @dx.op.unary.f32(i32 24, float %3413)  ; Sqrt(value)
  %3566 = call float @dx.op.unary.f32(i32 24, float %3414)  ; Sqrt(value)
  %3567 = fmul fast float %3561, 2.000000e+00
  %3568 = fsub fast float 1.000000e+00, %3567
  %3569 = fmul fast float %3568, %3564
  %3570 = fadd fast float %3569, %3567
  %3571 = fmul fast float %3570, %3564
  %3572 = fmul fast float %3562, 2.000000e+00
  %3573 = fsub fast float 1.000000e+00, %3572
  %3574 = fmul fast float %3573, %3565
  %3575 = fadd fast float %3574, %3572
  %3576 = fmul fast float %3575, %3565
  %3577 = fmul fast float %3563, 2.000000e+00
  %3578 = fsub fast float 1.000000e+00, %3577
  %3579 = fmul fast float %3578, %3566
  %3580 = fadd fast float %3579, %3577
  %3581 = fmul fast float %3580, %3566
  %3582 = fmul fast float %3571, %3571
  %3583 = fmul fast float %3576, %3576
  %3584 = fmul fast float %3581, %3581
  br label %3601

; <label>:3585                                    ; preds = %3548
  %3586 = fmul fast float %302, %302
  %3587 = fmul fast float %306, %306
  %3588 = fmul fast float %310, %310
  %3589 = fadd fast float %3586, -1.000000e+00
  %3590 = fadd fast float %3587, -1.000000e+00
  %3591 = fadd fast float %3588, -1.000000e+00
  %3592 = fmul fast float %3437, %3589
  %3593 = fmul fast float %3437, %3590
  %3594 = fmul fast float %3437, %3591
  %3595 = fadd fast float %3592, 1.000000e+00
  %3596 = fadd fast float %3593, 1.000000e+00
  %3597 = fadd fast float %3594, 1.000000e+00
  %3598 = fmul fast float %3595, %3412
  %3599 = fmul fast float %3596, %3413
  %3600 = fmul fast float %3597, %3414
  br label %3601

; <label>:3601                                    ; preds = %3585, %3551, %3442, %3398
  %3602 = phi float [ %3547, %3442 ], [ %3423, %3551 ], [ %3423, %3585 ], [ 0x3FA23C0BE0000000, %3398 ]
  %3603 = phi float [ %3539, %3442 ], [ %3582, %3551 ], [ %3598, %3585 ], [ 1.000000e+00, %3398 ]
  %3604 = phi float [ %3540, %3442 ], [ %3583, %3551 ], [ %3599, %3585 ], [ 1.000000e+00, %3398 ]
  %3605 = phi float [ %3541, %3442 ], [ %3584, %3551 ], [ %3600, %3585 ], [ 1.000000e+00, %3398 ]
  %3606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.i32 %3606, 1
  %3608 = and i32 %3607, 1
  %3609 = icmp ne i32 %3608, 0
  %3610 = add i32 %33, 356
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 32
  %3614 = icmp ne i32 %3613, 0
  %3615 = and i1 %3609, %3614
  %3616 = select i1 %3615, float 1.000000e+00, float %3603
  %3617 = select i1 %3615, float 0x3FD3333340000000, float %3604
  %3618 = select i1 %3615, float 0x3FD3333340000000, float %3605
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = and i32 %3620, 32
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3695, label %3623

; <label>:3623                                    ; preds = %3601
  %3624 = add i32 %33, 140
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = add i32 %33, 388
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = add i32 %3629, 0
  %3631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3631, %dx.types.Handle %57, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = and i32 %3626, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = lshr i32 %3626, 8
  %3640 = and i32 %3639, 255
  %3641 = uitofp i32 %3640 to float
  %3642 = lshr i32 %3626, 16
  %3643 = and i32 %3642, 255
  %3644 = uitofp i32 %3643 to float
  %3645 = fmul fast float %3644, 0x3F70101000000000
  %3646 = fmul fast float %3633, %3638
  %3647 = fadd fast float %3646, %3641
  %3648 = fmul fast float %3647, 0x3F70101000000000
  %3649 = fadd fast float %3634, -5.000000e-01
  %3650 = fadd fast float %3636, -5.000000e-01
  %3651 = fmul fast float %3649, %3645
  %3652 = fmul fast float %3650, %3645
  %3653 = fadd fast float %3651, 5.000000e-01
  %3654 = fadd fast float %3652, 5.000000e-01
  %3655 = fmul fast float %3653, 2.000000e+00
  %3656 = fadd fast float %3655, -1.000000e+00
  %3657 = fmul fast float %3654, 2.000000e+00
  %3658 = fadd fast float %3657, -1.000000e+00
  %3659 = fadd fast float %3656, %3658
  %3660 = fmul fast float %3659, 5.000000e-01
  %3661 = fsub fast float %3656, %3658
  %3662 = fmul fast float %3661, 5.000000e-01
  %3663 = call float @dx.op.unary.f32(i32 6, float %3660)  ; FAbs(value)
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3666 = fsub fast float %3664, %3665
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3662, float %3666, float %3660, float %3662, float %3666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = call float @dx.op.unary.f32(i32 25, float %3667)  ; Rsqrt(value)
  %3669 = fmul fast float %3660, %3668
  %3670 = fmul fast float %3662, %3668
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 67108864
  %3674 = icmp eq i32 %3673, 0
  br i1 %3674, label %3691, label %3675

; <label>:3675                                    ; preds = %3623
  %3676 = add i32 %33, 328
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = and i32 %3678, 65535
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = and i32 %3682, 65535
  %3684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3683)  ; LegacyF16ToF32(value)
  %3685 = lshr i32 %3678, 16
  %3686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3685)  ; LegacyF16ToF32(value)
  %3687 = fsub fast float %3648, %3686
  %3688 = fmul fast float %3687, %3680
  %3689 = fadd fast float %3688, %3684
  %3690 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  br label %3691

; <label>:3691                                    ; preds = %3675, %3623
  %3692 = phi float [ %3690, %3675 ], [ %3648, %3623 ]
  %3693 = call float @dx.op.dot2.f32(i32 54, float %3669, float %3670, float %3112, float %3113)  ; Dot2(ax,ay,bx,by)
  %3694 = call float @dx.op.dot2.f32(i32 54, float %3669, float %3670, float %3114, float %3115)  ; Dot2(ax,ay,bx,by)
  br label %3695

; <label>:3695                                    ; preds = %3691, %3601
  %3696 = phi float [ %3692, %3691 ], [ 0x3FD6666660000000, %3601 ]
  %3697 = phi float [ %3693, %3691 ], [ 0.000000e+00, %3601 ]
  %3698 = phi float [ %3694, %3691 ], [ 0.000000e+00, %3601 ]
  %3699 = phi float [ %3635, %3691 ], [ 1.000000e+00, %3601 ]
  %3700 = add i32 %33, 208
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = lshr i32 %3702, 22
  %3704 = shl nuw nsw i32 %3703, 5
  %3705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3704)  ; LegacyF16ToF32(value)
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = and i32 %3707, 64
  %3709 = icmp eq i32 %3708, 0
  br i1 %3709, label %3743, label %3710

; <label>:3710                                    ; preds = %3695
  %3711 = add i32 %33, 404
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = add i32 %3713, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 131072
  %3719 = icmp eq i32 %3718, 0
  %3720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3715, %dx.types.Handle %57, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = fmul fast float %3721, %290
  %3725 = fmul fast float %3722, %293
  %3726 = fmul fast float %3723, %296
  br i1 %3719, label %3733, label %3727

; <label>:3727                                    ; preds = %3710
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = fmul fast float %3729, %3724
  %3731 = fmul fast float %3729, %3725
  %3732 = fmul fast float %3729, %3726
  br label %3733

; <label>:3733                                    ; preds = %3727, %3710
  %3734 = phi float [ %3730, %3727 ], [ %3724, %3710 ]
  %3735 = phi float [ %3731, %3727 ], [ %3725, %3710 ]
  %3736 = phi float [ %3732, %3727 ], [ %3726, %3710 ]
  %3737 = fmul fast float %3734, %3705
  %3738 = select i1 %158, float %3737, float %3734
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3738, float %3735, float %3736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = select i1 %158, float 0.000000e+00, float %3734
  %3741 = select i1 %158, float %3739, float %3735
  %3742 = select i1 %158, float 0.000000e+00, float %3736
  br label %3743

; <label>:3743                                    ; preds = %3733, %3695
  %3744 = phi float [ %3740, %3733 ], [ 0.000000e+00, %3695 ]
  %3745 = phi float [ %3741, %3733 ], [ 0.000000e+00, %3695 ]
  %3746 = phi float [ %3742, %3733 ], [ 0.000000e+00, %3695 ]
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = and i32 %3748, 1024
  %3750 = icmp eq i32 %3749, 0
  br i1 %3750, label %3781, label %3751

; <label>:3751                                    ; preds = %3743
  %3752 = add i32 %33, 200
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = and i32 %3754, 255
  %3756 = uitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 0x3F70101020000000
  %3758 = lshr i32 %3754, 8
  %3759 = and i32 %3758, 255
  %3760 = uitofp i32 %3759 to float
  %3761 = fmul fast float %3760, 0x3F70101020000000
  %3762 = lshr i32 %3754, 16
  %3763 = and i32 %3762, 255
  %3764 = uitofp i32 %3763 to float
  %3765 = fmul fast float %3764, 0x3F70101020000000
  %3766 = fmul fast float %3757, %3757
  %3767 = fmul fast float %3761, %3761
  %3768 = fmul fast float %3765, %3765
  %3769 = add i32 %33, 468
  %3770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.i32 %3770, 0
  %3772 = add i32 %3771, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3773, %dx.types.Handle %58, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = fmul fast float %3766, %3775
  %3779 = fmul fast float %3767, %3776
  %3780 = fmul fast float %3768, %3777
  br label %3781

; <label>:3781                                    ; preds = %3751, %3743
  %3782 = phi float [ %3778, %3751 ], [ 0.000000e+00, %3743 ]
  %3783 = phi float [ %3779, %3751 ], [ 0.000000e+00, %3743 ]
  %3784 = phi float [ %3780, %3751 ], [ 0.000000e+00, %3743 ]
  %3785 = fcmp fast ogt float %3782, 0.000000e+00
  %3786 = fcmp fast ogt float %3783, 0.000000e+00
  %3787 = fcmp fast ogt float %3784, 0.000000e+00
  %3788 = call float @dx.op.unary.f32(i32 23, float %3782)  ; Log(value)
  %3789 = call float @dx.op.unary.f32(i32 23, float %3783)  ; Log(value)
  %3790 = call float @dx.op.unary.f32(i32 23, float %3784)  ; Log(value)
  %3791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3792 = extractvalue %dx.types.ResRet.i32 %3791, 0
  %3793 = lshr i32 %3792, 7
  %3794 = and i32 %3793, 32752
  %3795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3794)  ; LegacyF16ToF32(value)
  %3796 = fmul fast float %3788, 0xBFE62E4300000000
  %3797 = fmul fast float %3796, %3795
  %3798 = fmul fast float %3789, 0xBFE62E4300000000
  %3799 = fmul fast float %3798, %3795
  %3800 = fmul fast float %3790, 0xBFE62E4300000000
  %3801 = fmul fast float %3800, %3795
  %3802 = select i1 %3785, float %3797, float 1.270000e+02
  %3803 = select i1 %3786, float %3799, float 1.270000e+02
  %3804 = select i1 %3787, float %3801, float 1.270000e+02
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = and i32 %3806, 10240
  %3808 = icmp eq i32 %3807, 0
  br i1 %3808, label %3853, label %3809

; <label>:3809                                    ; preds = %3781
  %3810 = add i32 %33, 484
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = add i32 %3812, 0
  %3814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3814, %dx.types.Handle %58, float %3208, float %3209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = and i32 %3819, 1048576
  %3821 = icmp ne i32 %3820, 0
  %3822 = and i32 %3819, 8192
  %3823 = icmp eq i32 %3822, 0
  br i1 %3823, label %3839, label %3824

; <label>:3824                                    ; preds = %3809
  %3825 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3826 = select i1 %3821, float %3825, float %3816
  %3827 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3828 = select i1 %3821, float %3827, float %3816
  %3829 = add i32 %33, 144
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = lshr i32 %3831, 16
  %3833 = and i32 %3832, 255
  %3834 = uitofp i32 %3833 to float
  %3835 = fmul fast float %3834, 0x3F80101020000000
  %3836 = fmul fast float %3835, %3828
  %3837 = fmul fast float %3835, %3816
  %3838 = fmul fast float %3835, %3826
  br label %3839

; <label>:3839                                    ; preds = %3824, %3809
  %3840 = phi float [ %3836, %3824 ], [ 0.000000e+00, %3809 ]
  %3841 = phi float [ %3837, %3824 ], [ 0.000000e+00, %3809 ]
  %3842 = phi float [ %3838, %3824 ], [ 0.000000e+00, %3809 ]
  %3843 = and i32 %3819, 2048
  %3844 = icmp eq i32 %3843, 0
  br i1 %3844, label %3853, label %3845

; <label>:3845                                    ; preds = %3839
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = shl i32 %3847, 4
  %3849 = and i32 %3848, 32752
  %3850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3849)  ; LegacyF16ToF32(value)
  %3851 = fmul fast float %3850, %3817
  %3852 = call float @dx.op.binary.f32(i32 35, float %3851, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3853

; <label>:3853                                    ; preds = %3845, %3839, %3781
  %3854 = phi float [ %3840, %3845 ], [ %3840, %3839 ], [ 0.000000e+00, %3781 ]
  %3855 = phi float [ %3841, %3845 ], [ %3841, %3839 ], [ 0.000000e+00, %3781 ]
  %3856 = phi float [ %3842, %3845 ], [ %3842, %3839 ], [ 0.000000e+00, %3781 ]
  %3857 = phi float [ %3852, %3845 ], [ 0x3F70101020000000, %3839 ], [ 0x3F70101020000000, %3781 ]
  %3858 = add i32 %33, 144
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = and i32 %3860, 255
  %3862 = uitofp i32 %3861 to float
  %3863 = lshr i32 %3860, 8
  %3864 = and i32 %3863, 255
  %3865 = uitofp i32 %3864 to float
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3617, float %3618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = fmul fast float %3865, %3866
  %3868 = fadd fast float %3867, %3862
  %3869 = fmul fast float %3868, 0x3F70101020000000
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  br i1 %3100, label %3871, label %3906

; <label>:3871                                    ; preds = %3853
  %3872 = fmul fast float %3857, 2.000000e+00
  %3873 = fcmp fast olt float %3802, 1.270000e+02
  %3874 = fcmp fast olt float %3803, 1.270000e+02
  %3875 = fcmp fast olt float %3804, 1.270000e+02
  %3876 = fmul fast float %3802, 0xBFF7154760000000
  %3877 = fmul fast float %3876, %3872
  %3878 = fmul fast float %3803, 0xBFF7154760000000
  %3879 = fmul fast float %3878, %3872
  %3880 = fmul fast float %3804, 0xBFF7154760000000
  %3881 = fmul fast float %3880, %3872
  %3882 = call float @dx.op.unary.f32(i32 21, float %3877)  ; Exp(value)
  %3883 = call float @dx.op.unary.f32(i32 21, float %3879)  ; Exp(value)
  %3884 = call float @dx.op.unary.f32(i32 21, float %3881)  ; Exp(value)
  %3885 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3886 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3887 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3888 = fadd fast float %3885, -1.000000e+00
  %3889 = select i1 %3873, float %3888, float -1.000000e+00
  %3890 = fadd fast float %3886, -1.000000e+00
  %3891 = select i1 %3874, float %3890, float -1.000000e+00
  %3892 = fadd fast float %3887, -1.000000e+00
  %3893 = select i1 %3875, float %3892, float -1.000000e+00
  %3894 = fmul fast float %3889, %3396
  %3895 = fmul fast float %3891, %3396
  %3896 = fmul fast float %3893, %3396
  %3897 = fadd fast float %3894, 1.000000e+00
  %3898 = fadd fast float %3895, 1.000000e+00
  %3899 = fadd fast float %3896, 1.000000e+00
  %3900 = fmul fast float %3897, %3082
  %3901 = fmul fast float %3898, %3083
  %3902 = fmul fast float %3899, %3084
  %3903 = fmul fast float %3897, %3085
  %3904 = fmul fast float %3898, %3086
  %3905 = fmul fast float %3899, %3087
  br label %3906

; <label>:3906                                    ; preds = %3871, %3853
  %3907 = phi float [ %3900, %3871 ], [ %3082, %3853 ]
  %3908 = phi float [ %3901, %3871 ], [ %3083, %3853 ]
  %3909 = phi float [ %3902, %3871 ], [ %3084, %3853 ]
  %3910 = phi float [ %3903, %3871 ], [ %3085, %3853 ]
  %3911 = phi float [ %3904, %3871 ], [ %3086, %3853 ]
  %3912 = phi float [ %3905, %3871 ], [ %3087, %3853 ]
  %3913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.i32 %3913, 0
  %3915 = and i32 %3914, 3
  %3916 = icmp eq i32 %3915, 3
  br i1 %3916, label %3995, label %3917

; <label>:3917                                    ; preds = %3906
  %3918 = and i32 %3914, 16
  %3919 = icmp ne i32 %3918, 0
  %3920 = select i1 %3919, float %3396, float 0.000000e+00
  %3921 = icmp eq i32 %3915, 0
  br i1 %3921, label %3922, label %3950

; <label>:3922                                    ; preds = %3917
  %3923 = and i32 %3914, 64
  %3924 = icmp ne i32 %3923, 0
  %3925 = select i1 %3924, float %3396, float 0.000000e+00
  %3926 = fsub fast float %3616, %3907
  %3927 = fsub fast float %3617, %3908
  %3928 = fsub fast float %3618, %3909
  %3929 = fmul fast float %3920, %3926
  %3930 = fmul fast float %3920, %3927
  %3931 = fmul fast float %3920, %3928
  %3932 = fadd fast float %3929, %3907
  %3933 = fadd fast float %3930, %3908
  %3934 = fadd fast float %3931, %3909
  %3935 = fsub fast float %3602, %3094
  %3936 = fmul fast float %3920, %3935
  %3937 = fadd fast float %3936, %3094
  %3938 = fsub fast float %3744, %3910
  %3939 = fsub fast float %3745, %3911
  %3940 = fsub fast float %3746, %3912
  %3941 = fmul fast float %3925, %3938
  %3942 = fmul fast float %3925, %3939
  %3943 = fmul fast float %3925, %3940
  %3944 = fadd fast float %3941, %3910
  %3945 = fadd fast float %3942, %3911
  %3946 = fadd fast float %3943, %3912
  %3947 = fsub fast float %3870, %3098
  %3948 = fmul fast float %3920, %3947
  %3949 = fadd fast float %3948, %3098
  br label %3995

; <label>:3950                                    ; preds = %3917
  %3951 = icmp eq i32 %3915, 1
  br i1 %3951, label %3952, label %3965

; <label>:3952                                    ; preds = %3950
  %3953 = fadd fast float %3616, -1.000000e+00
  %3954 = fadd fast float %3617, -1.000000e+00
  %3955 = fadd fast float %3618, -1.000000e+00
  %3956 = fmul fast float %3920, %3953
  %3957 = fmul fast float %3920, %3954
  %3958 = fmul fast float %3920, %3955
  %3959 = fadd fast float %3956, 1.000000e+00
  %3960 = fadd fast float %3957, 1.000000e+00
  %3961 = fadd fast float %3958, 1.000000e+00
  %3962 = fmul fast float %3959, %3907
  %3963 = fmul fast float %3960, %3908
  %3964 = fmul fast float %3961, %3909
  br label %3995

; <label>:3965                                    ; preds = %3950
  %3966 = icmp eq i32 %3915, 2
  br i1 %3966, label %3967, label %3995

; <label>:3967                                    ; preds = %3965
  %3968 = call float @dx.op.unary.f32(i32 24, float %3616)  ; Sqrt(value)
  %3969 = call float @dx.op.unary.f32(i32 24, float %3617)  ; Sqrt(value)
  %3970 = call float @dx.op.unary.f32(i32 24, float %3618)  ; Sqrt(value)
  %3971 = fadd fast float %3968, -5.000000e-01
  %3972 = fadd fast float %3969, -5.000000e-01
  %3973 = fadd fast float %3970, -5.000000e-01
  %3974 = fmul fast float %3971, %3920
  %3975 = fmul fast float %3972, %3920
  %3976 = fmul fast float %3973, %3920
  %3977 = fadd fast float %3974, 5.000000e-01
  %3978 = fadd fast float %3975, 5.000000e-01
  %3979 = fadd fast float %3976, 5.000000e-01
  %3980 = fmul fast float %3977, 2.000000e+00
  %3981 = fsub fast float 1.000000e+00, %3980
  %3982 = fmul fast float %3981, %3907
  %3983 = fadd fast float %3982, %3980
  %3984 = fmul fast float %3983, %3907
  %3985 = fmul fast float %3978, 2.000000e+00
  %3986 = fsub fast float 1.000000e+00, %3985
  %3987 = fmul fast float %3986, %3908
  %3988 = fadd fast float %3987, %3985
  %3989 = fmul fast float %3988, %3908
  %3990 = fmul fast float %3979, 2.000000e+00
  %3991 = fsub fast float 1.000000e+00, %3990
  %3992 = fmul fast float %3991, %3909
  %3993 = fadd fast float %3992, %3990
  %3994 = fmul fast float %3993, %3909
  br label %3995

; <label>:3995                                    ; preds = %3967, %3965, %3952, %3922, %3906
  %3996 = phi float [ %3907, %3906 ], [ %3984, %3967 ], [ %3907, %3965 ], [ %3962, %3952 ], [ %3932, %3922 ]
  %3997 = phi float [ %3908, %3906 ], [ %3989, %3967 ], [ %3908, %3965 ], [ %3963, %3952 ], [ %3933, %3922 ]
  %3998 = phi float [ %3909, %3906 ], [ %3994, %3967 ], [ %3909, %3965 ], [ %3964, %3952 ], [ %3934, %3922 ]
  %3999 = phi float [ %3910, %3906 ], [ %3910, %3967 ], [ %3910, %3965 ], [ %3910, %3952 ], [ %3944, %3922 ]
  %4000 = phi float [ %3911, %3906 ], [ %3911, %3967 ], [ %3911, %3965 ], [ %3911, %3952 ], [ %3945, %3922 ]
  %4001 = phi float [ %3912, %3906 ], [ %3912, %3967 ], [ %3912, %3965 ], [ %3912, %3952 ], [ %3946, %3922 ]
  %4002 = phi float [ %3094, %3906 ], [ %3094, %3967 ], [ %3094, %3965 ], [ %3094, %3952 ], [ %3937, %3922 ]
  %4003 = phi float [ %3098, %3906 ], [ %3098, %3967 ], [ %3098, %3965 ], [ %3098, %3952 ], [ %3949, %3922 ]
  %4004 = and i32 %3914, 12
  %4005 = icmp eq i32 %4004, 12
  br i1 %4005, label %4136, label %4006

; <label>:4006                                    ; preds = %3995
  %4007 = and i32 %3914, 2097184
  %4008 = icmp eq i32 %4007, 2097184
  %4009 = select i1 %4008, float %3396, float 0.000000e+00
  %4010 = and i32 %3914, 4194336
  %4011 = icmp eq i32 %4010, 4194336
  %4012 = select i1 %4011, float %3396, float 0.000000e+00
  %4013 = and i32 %3914, 8388640
  %4014 = icmp eq i32 %4013, 8388640
  %4015 = select i1 %4014, float %3396, float 0.000000e+00
  %4016 = and i32 %3914, 1024
  %4017 = icmp ne i32 %4016, 0
  %4018 = select i1 %4017, float %3396, float 0.000000e+00
  %4019 = and i32 %3914, 2048
  %4020 = icmp ne i32 %4019, 0
  %4021 = select i1 %4020, float %3396, float 0.000000e+00
  %4022 = and i32 %3914, 8192
  %4023 = icmp ne i32 %4022, 0
  %4024 = select i1 %4023, float %3396, float 0.000000e+00
  %4025 = icmp eq i32 %4004, 0
  br i1 %4025, label %4026, label %4060

; <label>:4026                                    ; preds = %4006
  %4027 = fsub fast float %3697, %3080
  %4028 = fsub fast float %3698, %3081
  %4029 = fmul fast float %4009, %4027
  %4030 = fmul fast float %4009, %4028
  %4031 = fadd fast float %4029, %3080
  %4032 = fadd fast float %4030, %3081
  %4033 = fsub fast float %3699, %3096
  %4034 = fmul fast float %4012, %4033
  %4035 = fadd fast float %4034, %3096
  %4036 = fsub fast float %3696, %3095
  %4037 = fmul fast float %4015, %4036
  %4038 = fadd fast float %4037, %3095
  %4039 = fsub fast float %3802, %3091
  %4040 = fsub fast float %3803, %3092
  %4041 = fsub fast float %3804, %3093
  %4042 = fmul fast float %4018, %4039
  %4043 = fmul fast float %4018, %4040
  %4044 = fmul fast float %4018, %4041
  %4045 = fadd fast float %4042, %3091
  %4046 = fadd fast float %4043, %3092
  %4047 = fadd fast float %4044, %3093
  %4048 = fsub fast float %3857, %3097
  %4049 = fmul fast float %4021, %4048
  %4050 = fadd fast float %4049, %3097
  %4051 = fsub fast float %3854, %3088
  %4052 = fsub fast float %3855, %3089
  %4053 = fsub fast float %3856, %3090
  %4054 = fmul fast float %4024, %4051
  %4055 = fmul fast float %4024, %4052
  %4056 = fmul fast float %4024, %4053
  %4057 = fadd fast float %4054, %3088
  %4058 = fadd fast float %4055, %3089
  %4059 = fadd fast float %4056, %3090
  br label %4136

; <label>:4060                                    ; preds = %4006
  %4061 = icmp eq i32 %4004, 4
  br i1 %4061, label %4062, label %4108

; <label>:4062                                    ; preds = %4060
  %4063 = fmul fast float %4009, %3697
  %4064 = fmul fast float %4009, %3698
  %4065 = fadd fast float %4063, %3080
  %4066 = fadd fast float %4064, %3081
  %4067 = call float @dx.op.binary.f32(i32 36, float %3096, float %3699)  ; FMin(a,b)
  %4068 = fsub fast float %4067, %3096
  %4069 = fmul fast float %4068, %4012
  %4070 = fadd fast float %4069, %3096
  %4071 = fadd fast float %3696, %3095
  %4072 = fmul fast float %4071, 0x3FF337FAE0000000
  %4073 = fmul fast float %3095, %3095
  %4074 = fmul fast float %3696, %3696
  %4075 = fadd fast float %4074, %4073
  %4076 = fmul fast float %4075, 0x3FE5152B00000000
  %4077 = fmul fast float %3095, 0xBFCC1F85E0000000
  %4078 = fmul fast float %4077, %3696
  %4079 = fadd fast float %4078, 0xBFE1363700000000
  %4080 = fadd fast float %4079, %4072
  %4081 = fsub fast float %4080, %4076
  %4082 = fmul fast float %4071, 0x3FBA6F0D00000000
  %4083 = fmul fast float %4075, 0x3FD0432880000000
  %4084 = fmul fast float %3095, 0xBFEF110800000000
  %4085 = fmul fast float %4084, %3696
  %4086 = fadd fast float %4085, 1.000000e+00
  %4087 = fsub fast float %4086, %4082
  %4088 = fadd fast float %4087, %4083
  %4089 = fdiv fast float %4081, %4088
  %4090 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4091 = fsub fast float %4090, %3095
  %4092 = fmul fast float %4091, %4015
  %4093 = fadd fast float %4092, %3095
  %4094 = fmul fast float %4018, %3802
  %4095 = fmul fast float %4018, %3803
  %4096 = fmul fast float %4018, %3804
  %4097 = fadd fast float %4094, %3091
  %4098 = fadd fast float %4095, %3092
  %4099 = fadd fast float %4096, %3093
  %4100 = fmul fast float %4021, %3857
  %4101 = fadd fast float %4100, %3097
  %4102 = fmul fast float %4024, %3854
  %4103 = fmul fast float %4024, %3855
  %4104 = fmul fast float %4024, %3856
  %4105 = fadd fast float %4102, %3088
  %4106 = fadd fast float %4103, %3089
  %4107 = fadd fast float %4104, %3090
  br label %4136

; <label>:4108                                    ; preds = %4060
  %4109 = icmp eq i32 %4004, 8
  br i1 %4109, label %4110, label %4136

; <label>:4110                                    ; preds = %4108
  %4111 = fmul fast float %4009, %3697
  %4112 = fmul fast float %4009, %3698
  %4113 = fadd fast float %4111, %3080
  %4114 = fadd fast float %4112, %3081
  %4115 = call float @dx.op.binary.f32(i32 36, float %3096, float %3699)  ; FMin(a,b)
  %4116 = fsub fast float %4115, %3096
  %4117 = fmul fast float %4116, %4012
  %4118 = fadd fast float %4117, %3096
  %4119 = fsub fast float %3696, %3095
  %4120 = fmul fast float %4015, %4119
  %4121 = fadd fast float %4120, %3095
  %4122 = fmul fast float %4018, %3802
  %4123 = fmul fast float %4018, %3803
  %4124 = fmul fast float %4018, %3804
  %4125 = fadd fast float %4122, %3091
  %4126 = fadd fast float %4123, %3092
  %4127 = fadd fast float %4124, %3093
  %4128 = fmul fast float %4021, %3857
  %4129 = fadd fast float %4128, %3097
  %4130 = fmul fast float %4024, %3854
  %4131 = fmul fast float %4024, %3855
  %4132 = fmul fast float %4024, %3856
  %4133 = fadd fast float %4130, %3088
  %4134 = fadd fast float %4131, %3089
  %4135 = fadd fast float %4132, %3090
  br label %4136

; <label>:4136                                    ; preds = %4110, %4108, %4062, %4026, %3995, %3395, %3099, %3079
  %4137 = phi float [ %3080, %3995 ], [ %3080, %3395 ], [ %3080, %3079 ], [ %3080, %3099 ], [ %4031, %4026 ], [ %4065, %4062 ], [ %3080, %4108 ], [ %4113, %4110 ]
  %4138 = phi float [ %3081, %3995 ], [ %3081, %3395 ], [ %3081, %3079 ], [ %3081, %3099 ], [ %4032, %4026 ], [ %4066, %4062 ], [ %3081, %4108 ], [ %4114, %4110 ]
  %4139 = phi float [ %3996, %3995 ], [ %3082, %3395 ], [ %3082, %3079 ], [ %3082, %3099 ], [ %3996, %4026 ], [ %3996, %4062 ], [ %3996, %4108 ], [ %3996, %4110 ]
  %4140 = phi float [ %3997, %3995 ], [ %3083, %3395 ], [ %3083, %3079 ], [ %3083, %3099 ], [ %3997, %4026 ], [ %3997, %4062 ], [ %3997, %4108 ], [ %3997, %4110 ]
  %4141 = phi float [ %3998, %3995 ], [ %3084, %3395 ], [ %3084, %3079 ], [ %3084, %3099 ], [ %3998, %4026 ], [ %3998, %4062 ], [ %3998, %4108 ], [ %3998, %4110 ]
  %4142 = phi float [ %3999, %3995 ], [ %3085, %3395 ], [ %3085, %3079 ], [ %3085, %3099 ], [ %3999, %4026 ], [ %3999, %4062 ], [ %3999, %4108 ], [ %3999, %4110 ]
  %4143 = phi float [ %4000, %3995 ], [ %3086, %3395 ], [ %3086, %3079 ], [ %3086, %3099 ], [ %4000, %4026 ], [ %4000, %4062 ], [ %4000, %4108 ], [ %4000, %4110 ]
  %4144 = phi float [ %4001, %3995 ], [ %3087, %3395 ], [ %3087, %3079 ], [ %3087, %3099 ], [ %4001, %4026 ], [ %4001, %4062 ], [ %4001, %4108 ], [ %4001, %4110 ]
  %4145 = phi float [ %3088, %3995 ], [ %3088, %3395 ], [ %3088, %3079 ], [ %3088, %3099 ], [ %4057, %4026 ], [ %4105, %4062 ], [ %3088, %4108 ], [ %4133, %4110 ]
  %4146 = phi float [ %3089, %3995 ], [ %3089, %3395 ], [ %3089, %3079 ], [ %3089, %3099 ], [ %4058, %4026 ], [ %4106, %4062 ], [ %3089, %4108 ], [ %4134, %4110 ]
  %4147 = phi float [ %3090, %3995 ], [ %3090, %3395 ], [ %3090, %3079 ], [ %3090, %3099 ], [ %4059, %4026 ], [ %4107, %4062 ], [ %3090, %4108 ], [ %4135, %4110 ]
  %4148 = phi float [ %3091, %3995 ], [ %3091, %3395 ], [ %3091, %3079 ], [ %3091, %3099 ], [ %4045, %4026 ], [ %4097, %4062 ], [ %3091, %4108 ], [ %4125, %4110 ]
  %4149 = phi float [ %3092, %3995 ], [ %3092, %3395 ], [ %3092, %3079 ], [ %3092, %3099 ], [ %4046, %4026 ], [ %4098, %4062 ], [ %3092, %4108 ], [ %4126, %4110 ]
  %4150 = phi float [ %3093, %3995 ], [ %3093, %3395 ], [ %3093, %3079 ], [ %3093, %3099 ], [ %4047, %4026 ], [ %4099, %4062 ], [ %3093, %4108 ], [ %4127, %4110 ]
  %4151 = phi float [ %4002, %3995 ], [ %3094, %3395 ], [ %3094, %3079 ], [ %3094, %3099 ], [ %4002, %4026 ], [ %4002, %4062 ], [ %4002, %4108 ], [ %4002, %4110 ]
  %4152 = phi float [ %3095, %3995 ], [ %3095, %3395 ], [ %3095, %3079 ], [ %3095, %3099 ], [ %4038, %4026 ], [ %4093, %4062 ], [ %3095, %4108 ], [ %4121, %4110 ]
  %4153 = phi float [ %3096, %3995 ], [ %3096, %3395 ], [ %3096, %3079 ], [ %3096, %3099 ], [ %4035, %4026 ], [ %4070, %4062 ], [ %3096, %4108 ], [ %4118, %4110 ]
  %4154 = phi float [ %3097, %3995 ], [ %3097, %3395 ], [ %3097, %3079 ], [ %3097, %3099 ], [ %4050, %4026 ], [ %4101, %4062 ], [ %3097, %4108 ], [ %4129, %4110 ]
  %4155 = phi float [ %4003, %3995 ], [ %3098, %3395 ], [ %3098, %3079 ], [ %3098, %3099 ], [ %4003, %4026 ], [ %4003, %4062 ], [ %4003, %4108 ], [ %4003, %4110 ]
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = call float @dx.op.dot2.f32(i32 54, float %4137, float %4138, float %4137, float %4138)  ; Dot2(ax,ay,bx,by)
  %4159 = fmul fast float %4158, 0x3FE3333340000000
  %4160 = fsub fast float 1.000000e+00, %4159
  %4161 = call float @dx.op.dot3.f32(i32 55, float %4137, float %4138, float %4160, float %4137, float %4138, float %4160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4162 = call float @dx.op.unary.f32(i32 25, float %4161)  ; Rsqrt(value)
  %4163 = fmul fast float %4162, %4137
  %4164 = fmul fast float %4162, %4138
  %4165 = fmul fast float %4160, %4162
  %4166 = fmul fast float %4165, %68
  %4167 = fmul fast float %4165, %69
  %4168 = fmul fast float %4165, %70
  %4169 = fmul fast float %4163, %42
  %4170 = fmul fast float %4163, %43
  %4171 = fmul fast float %4163, %44
  %4172 = fadd fast float %4166, %4169
  %4173 = fadd fast float %4167, %4170
  %4174 = fadd fast float %4168, %4171
  %4175 = fmul fast float %80, %4164
  %4176 = fmul fast float %81, %4164
  %4177 = fmul fast float %82, %4164
  %4178 = fadd fast float %4172, %4175
  %4179 = fadd fast float %4173, %4176
  %4180 = fadd fast float %4174, %4177
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4178, float %4179, float %4180, float %4178, float %4179, float %4180)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = call float @dx.op.unary.f32(i32 25, float %4181)  ; Rsqrt(value)
  %4183 = fmul fast float %4178, %4182
  %4184 = fmul fast float %4179, %4182
  %4185 = fmul fast float %4180, %4182
  %4186 = and i32 %35, 1
  %4187 = icmp eq i32 %4186, 0
  br i1 %4187, label %4188, label %4780

; <label>:4188                                    ; preds = %4136
  %4189 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %4190 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %4191 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %4192 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %4193 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %4194 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %4195 = fadd fast float %4189, %116
  %4196 = fadd fast float %4190, %117
  %4197 = fadd fast float %4191, %118
  %4198 = fadd fast float %4192, %116
  %4199 = fadd fast float %4193, %117
  %4200 = fadd fast float %4194, %118
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.CBufRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 2
  %4207 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4208 = fmul fast float %4202, %61
  %4209 = fmul fast float %4208, %4206
  %4210 = fmul fast float %4203, %62
  %4211 = fmul fast float %4210, %4207
  %4212 = fptoui float %4209 to i32
  %4213 = fptoui float %4211 to i32
  %4214 = fadd fast float %4202, -1.000000e+00
  %4215 = fadd fast float %4203, -1.000000e+00
  %4216 = fptoui float %4214 to i32
  %4217 = fptoui float %4215 to i32
  %4218 = call i32 @dx.op.binary.i32(i32 40, i32 %4212, i32 %4216)  ; UMin(a,b)
  %4219 = call i32 @dx.op.binary.i32(i32 40, i32 %4213, i32 %4217)  ; UMin(a,b)
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4222 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4223 = fmul fast float %4221, %56
  %4224 = fsub fast float %4223, %4222
  %4225 = fadd fast float %4204, -1.000000e+00
  %4226 = call float @dx.op.binary.f32(i32 36, float %4224, float %4225)  ; FMin(a,b)
  %4227 = fptoui float %4226 to i32
  %4228 = fptoui float %4202 to i32
  %4229 = fptoui float %4203 to i32
  %4230 = mul i32 %4227, %4229
  %4231 = add i32 %4230, %4219
  %4232 = mul i32 %4231, %4228
  %4233 = add i32 %4232, %4218
  %4234 = shl i32 %4233, 2
  %4235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.i32 %4235, 0
  %4237 = and i32 %4236, 1023
  %4238 = lshr i32 %4236, 10
  %4239 = icmp eq i32 %4237, 0
  br i1 %4239, label %4743, label %4240

; <label>:4240                                    ; preds = %4188
  %4241 = and i32 %4236, 1023
  br label %4242

; <label>:4242                                    ; preds = %4374, %4240
  %4243 = phi i32 [ %4324, %4374 ], [ 0, %4240 ]
  %4244 = phi float [ %4375, %4374 ], [ 0.000000e+00, %4240 ]
  %4245 = phi float [ %4376, %4374 ], [ %4157, %4240 ]
  %4246 = phi float [ %4377, %4374 ], [ %4155, %4240 ]
  %4247 = phi float [ %4378, %4374 ], [ %4148, %4240 ]
  %4248 = phi float [ %4379, %4374 ], [ %4149, %4240 ]
  %4249 = phi float [ %4380, %4374 ], [ %4150, %4240 ]
  %4250 = phi float [ %4381, %4374 ], [ 0.000000e+00, %4240 ]
  %4251 = phi float [ %4382, %4374 ], [ 0.000000e+00, %4240 ]
  %4252 = phi float [ %4383, %4374 ], [ %4145, %4240 ]
  %4253 = phi float [ %4384, %4374 ], [ %4146, %4240 ]
  %4254 = phi float [ %4385, %4374 ], [ %4147, %4240 ]
  %4255 = phi float [ %4386, %4374 ], [ %4142, %4240 ]
  %4256 = phi float [ %4387, %4374 ], [ %4143, %4240 ]
  %4257 = phi float [ %4388, %4374 ], [ %4144, %4240 ]
  %4258 = phi float [ %4389, %4374 ], [ %4183, %4240 ]
  %4259 = phi float [ %4390, %4374 ], [ %4184, %4240 ]
  %4260 = phi float [ %4391, %4374 ], [ %4185, %4240 ]
  %4261 = phi float [ %4392, %4374 ], [ %4153, %4240 ]
  %4262 = phi float [ %4393, %4374 ], [ %4152, %4240 ]
  %4263 = phi float [ %4394, %4374 ], [ 0.000000e+00, %4240 ]
  %4264 = phi float [ %4395, %4374 ], [ %4151, %4240 ]
  %4265 = phi float [ %4396, %4374 ], [ %4139, %4240 ]
  %4266 = phi float [ %4397, %4374 ], [ %4140, %4240 ]
  %4267 = phi float [ %4398, %4374 ], [ %4141, %4240 ]
  %4268 = add nuw nsw i32 %4243, %4238
  %4269 = shl i32 %4268, 2
  %4270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4269, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.i32 %4270, 0
  %4272 = shl i32 %4271, 8
  %4273 = or i32 %4272, 48
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = extractvalue %dx.types.ResRet.f32 %4274, 3
  %4279 = or i32 %4272, 64
  %4280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.i32 %4280, 0
  %4282 = extractvalue %dx.types.ResRet.i32 %4280, 1
  %4283 = or i32 %4272, 80
  %4284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 2
  %4286 = extractvalue %dx.types.ResRet.f32 %4284, 3
  %4287 = or i32 %4272, 96
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.ResRet.f32 %4288, 1
  %4291 = extractvalue %dx.types.ResRet.f32 %4288, 2
  %4292 = extractvalue %dx.types.ResRet.f32 %4288, 3
  %4293 = or i32 %4272, 112
  %4294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4296 = or i32 %4272, 128
  %4297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = extractvalue %dx.types.ResRet.f32 %4297, 3
  %4302 = or i32 %4272, 144
  %4303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4302, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.ResRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4303, 2
  %4307 = extractvalue %dx.types.ResRet.f32 %4303, 3
  %4308 = or i32 %4272, 160
  %4309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = extractvalue %dx.types.ResRet.f32 %4309, 1
  %4312 = extractvalue %dx.types.ResRet.f32 %4309, 2
  %4313 = extractvalue %dx.types.ResRet.f32 %4309, 3
  %4314 = or i32 %4272, 192
  %4315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.i32 %4315, 0
  %4317 = or i32 %4272, 208
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = or i32 %4272, 248
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = add nuw nsw i32 %4243, 1
  %4325 = bitcast float %4278 to i32
  %4326 = and i32 %4325, 512
  %4327 = icmp eq i32 %4326, 0
  %4328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.ResRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.ResRet.f32 %4328, 2
  %4332 = extractvalue %dx.types.ResRet.f32 %4328, 3
  %4333 = call float @dx.op.dot4.f32(i32 56, float %4329, float %4330, float %4331, float %4332, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4334 = or i32 %4272, 16
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.ResRet.f32 %4335, 1
  %4338 = extractvalue %dx.types.ResRet.f32 %4335, 2
  %4339 = extractvalue %dx.types.ResRet.f32 %4335, 3
  %4340 = call float @dx.op.dot4.f32(i32 56, float %4336, float %4337, float %4338, float %4339, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4341 = or i32 %4272, 32
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.ResRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.ResRet.f32 %4342, 2
  %4346 = extractvalue %dx.types.ResRet.f32 %4342, 3
  %4347 = call float @dx.op.dot4.f32(i32 56, float %4343, float %4344, float %4345, float %4346, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4348 = call float @dx.op.unary.f32(i32 27, float %4333)  ; Round_ni(value)
  %4349 = call float @dx.op.unary.f32(i32 6, float %4348)  ; FAbs(value)
  %4350 = call float @dx.op.unary.f32(i32 27, float %4340)  ; Round_ni(value)
  %4351 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4352 = call float @dx.op.unary.f32(i32 6, float %4347)  ; FAbs(value)
  %4353 = call float @dx.op.unary.f32(i32 27, float %4352)  ; Round_ni(value)
  %4354 = fadd fast float %4351, %4349
  %4355 = fadd fast float %4354, %4353
  %4356 = fcmp fast oeq float %4355, 0.000000e+00
  %4357 = call float @dx.op.dot4.f32(i32 56, float %4329, float %4330, float %4331, float %4332, float %4195, float %4196, float %4197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4358 = call float @dx.op.dot4.f32(i32 56, float %4336, float %4337, float %4338, float %4339, float %4195, float %4196, float %4197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4359 = call float @dx.op.dot4.f32(i32 56, float %4329, float %4330, float %4331, float %4332, float %4198, float %4199, float %4200, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4360 = call float @dx.op.dot4.f32(i32 56, float %4336, float %4337, float %4338, float %4339, float %4198, float %4199, float %4200, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4361 = fsub fast float %4357, %4333
  %4362 = fsub fast float %4359, %4333
  %4363 = fsub fast float %4358, %4340
  %4364 = fsub fast float %4360, %4340
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4275, float %4276, float %4277, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 2
  %4368 = fadd fast float %4367, %4365
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4371 = fcmp fast ogt float %4369, %4370
  %4372 = and i1 %4356, %4371
  %4373 = and i1 %4327, %4372
  br i1 %4373, label %4400, label %4374

; <label>:4374                                    ; preds = %4729, %4481, %4400, %4242
  %4375 = phi float [ %4244, %4400 ], [ %4484, %4481 ], [ %4484, %4729 ], [ %4244, %4242 ]
  %4376 = phi float [ %4245, %4400 ], [ %4245, %4481 ], [ %4705, %4729 ], [ %4245, %4242 ]
  %4377 = phi float [ %4246, %4400 ], [ %4246, %4481 ], [ %4703, %4729 ], [ %4246, %4242 ]
  %4378 = phi float [ %4247, %4400 ], [ %4247, %4481 ], [ %4681, %4729 ], [ %4247, %4242 ]
  %4379 = phi float [ %4248, %4400 ], [ %4248, %4481 ], [ %4682, %4729 ], [ %4248, %4242 ]
  %4380 = phi float [ %4249, %4400 ], [ %4249, %4481 ], [ %4683, %4729 ], [ %4249, %4242 ]
  %4381 = phi float [ %4250, %4400 ], [ %4250, %4481 ], [ %4608, %4729 ], [ %4250, %4242 ]
  %4382 = phi float [ %4251, %4400 ], [ %4251, %4481 ], [ %4606, %4729 ], [ %4251, %4242 ]
  %4383 = phi float [ %4252, %4400 ], [ %4252, %4481 ], [ %4651, %4729 ], [ %4252, %4242 ]
  %4384 = phi float [ %4253, %4400 ], [ %4253, %4481 ], [ %4652, %4729 ], [ %4253, %4242 ]
  %4385 = phi float [ %4254, %4400 ], [ %4254, %4481 ], [ %4653, %4729 ], [ %4254, %4242 ]
  %4386 = phi float [ %4255, %4400 ], [ %4255, %4481 ], [ %4739, %4729 ], [ %4255, %4242 ]
  %4387 = phi float [ %4256, %4400 ], [ %4256, %4481 ], [ %4740, %4729 ], [ %4256, %4242 ]
  %4388 = phi float [ %4257, %4400 ], [ %4257, %4481 ], [ %4741, %4729 ], [ %4257, %4242 ]
  %4389 = phi float [ %4258, %4400 ], [ %4258, %4481 ], [ %4587, %4729 ], [ %4258, %4242 ]
  %4390 = phi float [ %4259, %4400 ], [ %4259, %4481 ], [ %4588, %4729 ], [ %4259, %4242 ]
  %4391 = phi float [ %4260, %4400 ], [ %4260, %4481 ], [ %4589, %4729 ], [ %4260, %4242 ]
  %4392 = phi float [ %4261, %4400 ], [ %4261, %4481 ], [ %4661, %4729 ], [ %4261, %4242 ]
  %4393 = phi float [ %4262, %4400 ], [ %4262, %4481 ], [ %4658, %4729 ], [ %4262, %4242 ]
  %4394 = phi float [ %4263, %4400 ], [ %4263, %4481 ], [ %4655, %4729 ], [ %4263, %4242 ]
  %4395 = phi float [ %4264, %4400 ], [ %4264, %4481 ], [ %4604, %4729 ], [ %4264, %4242 ]
  %4396 = phi float [ %4265, %4400 ], [ %4265, %4481 ], [ %4599, %4729 ], [ %4265, %4242 ]
  %4397 = phi float [ %4266, %4400 ], [ %4266, %4481 ], [ %4600, %4729 ], [ %4266, %4242 ]
  %4398 = phi float [ %4267, %4400 ], [ %4267, %4481 ], [ %4601, %4729 ], [ %4267, %4242 ]
  %4399 = icmp eq i32 %4324, %4241
  br i1 %4399, label %4742, label %4242

; <label>:4400                                    ; preds = %4242
  %4401 = extractvalue %dx.types.ResRet.f32 %4294, 3
  %4402 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4404 = extractvalue %dx.types.ResRet.f32 %4284, 1
  %4405 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4406 = extractvalue %dx.types.ResRet.i32 %4280, 3
  %4407 = extractvalue %dx.types.ResRet.i32 %4280, 2
  %4408 = add i32 %4406, 0
  %4409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4409, %dx.types.Handle %4410, float %4333, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4361, float %4363, float undef, float %4362, float %4364, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = fmul fast float %4412, %4405
  %4414 = fadd fast float %4413, %4404
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %4333, %4289
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4290, float %4340, float %4416)  ; FMad(a,b,c)
  %4418 = fadd fast float %4417, %4403
  %4419 = fmul fast float %4333, %4291
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4340, float %4419)  ; FMad(a,b,c)
  %4421 = fadd fast float %4420, %4402
  %4422 = fmul fast float %4361, %4289
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4290, float %4363, float %4422)  ; FMad(a,b,c)
  %4424 = fmul fast float %4361, %4291
  %4425 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4363, float %4424)  ; FMad(a,b,c)
  %4426 = fmul fast float %4362, %4289
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4290, float %4364, float %4426)  ; FMad(a,b,c)
  %4428 = fmul fast float %4362, %4291
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4364, float %4428)  ; FMad(a,b,c)
  %4430 = add i32 %4407, 0
  %4431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4431, %dx.types.Handle %4410, float %4418, float %4421, float undef, float undef, i32 0, i32 0, i32 undef, float %4423, float %4425, float undef, float %4427, float %4429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = and i32 %4325, 1024
  %4435 = icmp ne i32 %4434, 0
  %4436 = fcmp fast ogt float %4433, 0x3FE0101020000000
  %4437 = uitofp i1 %4436 to float
  %4438 = select i1 %4435, float %4437, float %4433
  %4439 = and i32 %4325, 8192
  %4440 = icmp ne i32 %4439, 0
  %4441 = select i1 %4440, float %4401, float 1.000000e+00
  %4442 = fmul fast float %4333, 2.000000e+00
  %4443 = fadd fast float %4442, -1.000000e+00
  %4444 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4445 = fmul fast float %4444, %4322
  %4446 = fsub fast float %4445, %4322
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fmul fast float %4340, 2.000000e+00
  %4449 = fadd fast float %4448, -1.000000e+00
  %4450 = call float @dx.op.unary.f32(i32 6, float %4449)  ; FAbs(value)
  %4451 = fmul fast float %4450, %4323
  %4452 = fsub fast float %4451, %4323
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = fmul fast float %4352, %4285
  %4455 = fsub fast float %4454, %4285
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = fmul fast float %4415, %4441
  %4458 = fmul fast float %4457, %4412
  %4459 = fmul fast float %4458, %4447
  %4460 = fmul fast float %4459, %4438
  %4461 = fmul fast float %4460, %4453
  %4462 = fmul fast float %4461, %4456
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4466 = fsub fast float %4369, %4465
  %4467 = fmul fast float %4466, %4464
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = fmul fast float %4462, %4286
  %4470 = fadd fast float %4462, %4286
  %4471 = fmul fast float %4470, %4295
  %4472 = fsub fast float %4471, %4295
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = and i32 %4325, 128
  %4475 = icmp ne i32 %4474, 0
  %4476 = select i1 %4475, float %4473, float %4469
  %4477 = fmul fast float %4476, %4468
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = fcmp fast ugt float %4477, %4479
  br i1 %4480, label %4481, label %4374

; <label>:4481                                    ; preds = %4400
  %4482 = select i1 %4440, float %4477, float 0.000000e+00
  %4483 = fadd fast float %4482, %4244
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  br i1 %4440, label %4374, label %4485

; <label>:4485                                    ; preds = %4481
  %4486 = and i32 %4325, 4
  %4487 = and i32 %4325, 8
  %4488 = add i32 %4281, 0
  %4489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4488, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4489, %dx.types.Handle %4490, float %4418, float %4421, float undef, float undef, i32 0, i32 0, i32 undef, float %4423, float %4425, float undef, float %4427, float %4429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.ResRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.ResRet.f32 %4491, 3
  %4496 = bitcast float %4307 to i32
  %4497 = and i32 %4496, 255
  %4498 = uitofp i32 %4497 to float
  %4499 = lshr i32 %4496, 8
  %4500 = and i32 %4499, 255
  %4501 = uitofp i32 %4500 to float
  %4502 = fmul fast float %4495, %4498
  %4503 = fadd fast float %4502, %4501
  %4504 = fmul fast float %4503, 0x3F70101000000000
  %4505 = add i32 %4282, 0
  %4506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4505, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4506, %dx.types.Handle %4490, float %4418, float %4421, float undef, float undef, i32 0, i32 0, i32 undef, float %4423, float %4425, float undef, float %4427, float %4429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.ResRet.f32 %4507, 2
  %4511 = extractvalue %dx.types.ResRet.f32 %4507, 3
  %4512 = bitcast float %4301 to i32
  %4513 = and i32 %4512, 255
  %4514 = uitofp i32 %4513 to float
  %4515 = lshr i32 %4512, 8
  %4516 = and i32 %4515, 255
  %4517 = uitofp i32 %4516 to float
  %4518 = lshr i32 %4512, 16
  %4519 = and i32 %4518, 255
  %4520 = uitofp i32 %4519 to float
  %4521 = fmul fast float %4520, 0x3F70101000000000
  %4522 = fmul fast float %4508, %4514
  %4523 = fadd fast float %4522, %4517
  %4524 = fmul fast float %4523, 0x3F70101000000000
  %4525 = fadd fast float %4509, -5.000000e-01
  %4526 = fadd fast float %4511, -5.000000e-01
  %4527 = fmul fast float %4525, %4521
  %4528 = fmul fast float %4526, %4521
  %4529 = fadd fast float %4527, 5.000000e-01
  %4530 = fadd fast float %4528, 5.000000e-01
  %4531 = fmul fast float %4492, %4310
  %4532 = fmul fast float %4493, %4311
  %4533 = fmul fast float %4494, %4312
  %4534 = fmul fast float %4529, 2.000000e+00
  %4535 = fadd fast float %4534, -1.000000e+00
  %4536 = fmul fast float %4530, 2.000000e+00
  %4537 = fadd fast float %4536, -1.000000e+00
  %4538 = fadd fast float %4535, %4537
  %4539 = fmul fast float %4538, 5.000000e-01
  %4540 = fsub fast float %4535, %4537
  %4541 = fmul fast float %4540, 5.000000e-01
  %4542 = call float @dx.op.unary.f32(i32 6, float %4539)  ; FAbs(value)
  %4543 = fsub fast float 1.000000e+00, %4542
  %4544 = call float @dx.op.unary.f32(i32 6, float %4541)  ; FAbs(value)
  %4545 = fsub fast float %4543, %4544
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4541, float %4545, float %4539, float %4541, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call float @dx.op.unary.f32(i32 25, float %4546)  ; Rsqrt(value)
  %4548 = fmul fast float %4539, %4547
  %4549 = fmul fast float %4541, %4547
  %4550 = fmul fast float %4547, %4545
  %4551 = fmul fast float %4550, %4275
  %4552 = fmul fast float %4550, %4276
  %4553 = fmul fast float %4550, %4277
  %4554 = fmul fast float %4548, %4298
  %4555 = fmul fast float %4548, %4299
  %4556 = fmul fast float %4548, %4300
  %4557 = fadd fast float %4554, %4551
  %4558 = fadd fast float %4555, %4552
  %4559 = fadd fast float %4556, %4553
  %4560 = fmul fast float %4549, %4304
  %4561 = fmul fast float %4549, %4305
  %4562 = fmul fast float %4549, %4306
  %4563 = fadd fast float %4557, %4560
  %4564 = fadd fast float %4558, %4561
  %4565 = fadd fast float %4559, %4562
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %4563, float %4564, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.unary.f32(i32 25, float %4566)  ; Rsqrt(value)
  %4568 = fmul fast float %4563, %4567
  %4569 = fmul fast float %4564, %4567
  %4570 = fmul fast float %4565, %4567
  %4571 = icmp ne i32 %4487, 0
  %4572 = select i1 %4571, float 1.000000e+00, float 0.000000e+00
  %4573 = fmul fast float %4477, %4572
  %4574 = and i32 %4325, 1
  %4575 = icmp eq i32 %4574, 0
  br i1 %4575, label %4576, label %4580

; <label>:4576                                    ; preds = %4485
  %4577 = fsub fast float %4568, %4258
  %4578 = fsub fast float %4569, %4259
  %4579 = fsub fast float %4570, %4260
  br label %4580

; <label>:4580                                    ; preds = %4576, %4485
  %4581 = phi float [ %4577, %4576 ], [ %4568, %4485 ]
  %4582 = phi float [ %4578, %4576 ], [ %4569, %4485 ]
  %4583 = phi float [ %4579, %4576 ], [ %4570, %4485 ]
  %4584 = fmul float %4583, %4573
  %4585 = fmul float %4582, %4573
  %4586 = fmul float %4581, %4573
  %4587 = fadd fast float %4586, %4258
  %4588 = fadd fast float %4585, %4259
  %4589 = fadd fast float %4584, %4260
  %4590 = icmp ne i32 %4486, 0
  %4591 = select i1 %4590, float 1.000000e+00, float 0.000000e+00
  %4592 = fmul fast float %4477, %4591
  %4593 = fsub fast float %4531, %4265
  %4594 = fsub fast float %4532, %4266
  %4595 = fsub fast float %4533, %4267
  %4596 = fmul fast float %4593, %4592
  %4597 = fmul fast float %4594, %4592
  %4598 = fmul fast float %4595, %4592
  %4599 = fadd fast float %4596, %4265
  %4600 = fadd fast float %4597, %4266
  %4601 = fadd fast float %4598, %4267
  %4602 = fsub fast float %4504, %4264
  %4603 = fmul fast float %4602, %4592
  %4604 = fadd fast float %4603, %4264
  %4605 = fmul fast float %4592, %4251
  %4606 = fsub fast float %4251, %4605
  %4607 = fmul fast float %4592, %4250
  %4608 = fsub fast float %4250, %4607
  %4609 = bitcast float %4319 to i32
  %4610 = lshr i32 %4609, 16
  %4611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4610)  ; LegacyF16ToF32(value)
  %4612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.i32 %4612, 0
  %4614 = and i32 %4613, 1
  %4615 = icmp eq i32 %4614, 0
  br i1 %4615, label %4616, label %4641

; <label>:4616                                    ; preds = %4580
  %4617 = fadd fast float %4504, 0xBFB99999A0000000
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = fmul fast float %4618, 0x3FF1C71C80000000
  %4620 = fsub fast float 1.000000e+00, %4619
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4621, %4531
  %4623 = fmul fast float %4621, %4532
  %4624 = fmul fast float %4621, %4533
  %4625 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4627 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4628 = call float @dx.op.binary.f32(i32 35, float %4626, float %4627)  ; FMax(a,b)
  %4629 = call float @dx.op.binary.f32(i32 35, float %4625, float %4628)  ; FMax(a,b)
  %4630 = fcmp fast ogt float %4629, 0.000000e+00
  %4631 = bitcast float %4629 to i32
  %4632 = sub nsw i32 2129859010, %4631
  %4633 = bitcast i32 %4632 to float
  %4634 = select i1 %4630, float %4633, float 0.000000e+00
  %4635 = fmul fast float %4625, %4611
  %4636 = fmul fast float %4626, %4611
  %4637 = fmul fast float %4627, %4611
  %4638 = fmul fast float %4635, %4634
  %4639 = fmul fast float %4636, %4634
  %4640 = fmul fast float %4637, %4634
  br label %4641

; <label>:4641                                    ; preds = %4616, %4580
  %4642 = phi float [ %4611, %4580 ], [ %4638, %4616 ]
  %4643 = phi float [ %4611, %4580 ], [ %4639, %4616 ]
  %4644 = phi float [ %4611, %4580 ], [ %4640, %4616 ]
  %4645 = fsub fast float %4642, %4252
  %4646 = fsub fast float %4643, %4253
  %4647 = fsub fast float %4644, %4254
  %4648 = fmul fast float %4645, %4592
  %4649 = fmul fast float %4646, %4592
  %4650 = fmul fast float %4647, %4592
  %4651 = fadd fast float %4648, %4252
  %4652 = fadd fast float %4649, %4253
  %4653 = fadd fast float %4650, %4254
  %4654 = fadd fast float %4477, %4263
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = fsub fast float %4524, %4262
  %4657 = fmul fast float %4656, %4573
  %4658 = fadd fast float %4657, %4262
  %4659 = fsub fast float %4510, %4261
  %4660 = fmul fast float %4659, %4573
  %4661 = fadd fast float %4660, %4261
  br i1 %4575, label %4670, label %4662

; <label>:4662                                    ; preds = %4641
  %4663 = and i32 %4325, 32768
  %4664 = icmp eq i32 %4663, 0
  br i1 %4664, label %4680, label %4665

; <label>:4665                                    ; preds = %4662
  %4666 = fmul fast float %4573, 1.270000e+02
  %4667 = fadd fast float %4666, %4247
  %4668 = fadd fast float %4666, %4248
  %4669 = fadd fast float %4666, %4249
  br label %4680

; <label>:4670                                    ; preds = %4641
  %4671 = fsub fast float 1.270000e+02, %4247
  %4672 = fsub fast float 1.270000e+02, %4248
  %4673 = fsub fast float 1.270000e+02, %4249
  %4674 = fmul fast float %4573, %4671
  %4675 = fmul fast float %4573, %4672
  %4676 = fmul fast float %4573, %4673
  %4677 = fadd fast float %4674, %4247
  %4678 = fadd fast float %4675, %4248
  %4679 = fadd fast float %4676, %4249
  br label %4680

; <label>:4680                                    ; preds = %4670, %4665, %4662
  %4681 = phi float [ %4667, %4665 ], [ %4247, %4662 ], [ %4677, %4670 ]
  %4682 = phi float [ %4668, %4665 ], [ %4248, %4662 ], [ %4678, %4670 ]
  %4683 = phi float [ %4669, %4665 ], [ %4249, %4662 ], [ %4679, %4670 ]
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4688 = fmul fast float %4687, %4684
  %4689 = fadd fast float %4688, %4686
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = bitcast float %4313 to i32
  %4692 = and i32 %4691, 65535
  %4693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4692)  ; LegacyF16ToF32(value)
  %4694 = lshr i32 %4691, 16
  %4695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4694)  ; LegacyF16ToF32(value)
  %4696 = fcmp fast oge float %4693, 0.000000e+00
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = select i1 %4696, float %4693, float %4698
  %4700 = fadd fast float %4699, %4695
  %4701 = fsub fast float %4690, %4246
  %4702 = fmul fast float %4701, %4477
  %4703 = fadd fast float %4702, %4246
  %4704 = fmul fast float %4700, %4477
  %4705 = call float @dx.op.binary.f32(i32 35, float %4245, float %4704)  ; FMax(a,b)
  %4706 = and i32 %4325, 16
  %4707 = icmp eq i32 %4706, 0
  br i1 %4707, label %4729, label %4708

; <label>:4708                                    ; preds = %4680
  %4709 = add i32 %4316, 0
  %4710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4710, %dx.types.Handle %4490, float %4418, float %4421, float undef, float undef, i32 0, i32 0, i32 undef, float %4423, float %4425, float undef, float %4427, float %4429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.ResRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4711, 2
  %4715 = and i32 %4609, 65535
  %4716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4715)  ; LegacyF16ToF32(value)
  %4717 = fmul fast float %4712, %4310
  %4718 = fmul fast float %4713, %4311
  %4719 = fmul fast float %4714, %4312
  %4720 = and i32 %4325, 16384
  %4721 = icmp ne i32 %4720, 0
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = select i1 %4721, float %4723, float 1.000000e+00
  %4725 = fmul fast float %4724, %4716
  %4726 = fmul fast float %4717, %4725
  %4727 = fmul fast float %4718, %4725
  %4728 = fmul fast float %4719, %4725
  br label %4729

; <label>:4729                                    ; preds = %4708, %4680
  %4730 = phi float [ %4726, %4708 ], [ 0.000000e+00, %4680 ]
  %4731 = phi float [ %4727, %4708 ], [ 0.000000e+00, %4680 ]
  %4732 = phi float [ %4728, %4708 ], [ 0.000000e+00, %4680 ]
  %4733 = fsub fast float %4730, %4255
  %4734 = fsub fast float %4731, %4256
  %4735 = fsub fast float %4732, %4257
  %4736 = fmul fast float %4733, %4477
  %4737 = fmul fast float %4734, %4477
  %4738 = fmul fast float %4735, %4477
  %4739 = fadd fast float %4736, %4255
  %4740 = fadd fast float %4737, %4256
  %4741 = fadd fast float %4738, %4257
  br label %4374

; <label>:4742                                    ; preds = %4374
  br label %4743

; <label>:4743                                    ; preds = %4742, %4188
  %4744 = phi float [ 0.000000e+00, %4188 ], [ %4375, %4742 ]
  %4745 = phi float [ %4157, %4188 ], [ %4376, %4742 ]
  %4746 = phi float [ %4155, %4188 ], [ %4377, %4742 ]
  %4747 = phi float [ %4148, %4188 ], [ %4378, %4742 ]
  %4748 = phi float [ %4149, %4188 ], [ %4379, %4742 ]
  %4749 = phi float [ %4150, %4188 ], [ %4380, %4742 ]
  %4750 = phi float [ 0.000000e+00, %4188 ], [ %4381, %4742 ]
  %4751 = phi float [ 0.000000e+00, %4188 ], [ %4382, %4742 ]
  %4752 = phi float [ %4145, %4188 ], [ %4383, %4742 ]
  %4753 = phi float [ %4146, %4188 ], [ %4384, %4742 ]
  %4754 = phi float [ %4147, %4188 ], [ %4385, %4742 ]
  %4755 = phi float [ %4142, %4188 ], [ %4386, %4742 ]
  %4756 = phi float [ %4143, %4188 ], [ %4387, %4742 ]
  %4757 = phi float [ %4144, %4188 ], [ %4388, %4742 ]
  %4758 = phi float [ %4183, %4188 ], [ %4389, %4742 ]
  %4759 = phi float [ %4184, %4188 ], [ %4390, %4742 ]
  %4760 = phi float [ %4185, %4188 ], [ %4391, %4742 ]
  %4761 = phi float [ %4153, %4188 ], [ %4392, %4742 ]
  %4762 = phi float [ %4152, %4188 ], [ %4393, %4742 ]
  %4763 = phi float [ 0.000000e+00, %4188 ], [ %4394, %4742 ]
  %4764 = phi float [ %4151, %4188 ], [ %4395, %4742 ]
  %4765 = phi float [ %4139, %4188 ], [ %4396, %4742 ]
  %4766 = phi float [ %4140, %4188 ], [ %4397, %4742 ]
  %4767 = phi float [ %4141, %4188 ], [ %4398, %4742 ]
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4759, float %4760, float %4758, float %4759, float %4760)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = call float @dx.op.unary.f32(i32 25, float %4768)  ; Rsqrt(value)
  %4770 = fmul fast float %4769, %4758
  %4771 = fmul fast float %4769, %4759
  %4772 = fmul fast float %4769, %4760
  %4773 = fadd fast float %4763, %980
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float %4770, float %4771, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 25, float %4775)  ; Rsqrt(value)
  %4777 = fmul fast float %4776, %4770
  %4778 = fmul fast float %4776, %4771
  %4779 = fmul fast float %4776, %4772
  br label %4780

; <label>:4780                                    ; preds = %4743, %4136
  %4781 = phi float [ %4777, %4743 ], [ %4183, %4136 ]
  %4782 = phi float [ %4778, %4743 ], [ %4184, %4136 ]
  %4783 = phi float [ %4779, %4743 ], [ %4185, %4136 ]
  %4784 = phi float [ %4765, %4743 ], [ %4139, %4136 ]
  %4785 = phi float [ %4766, %4743 ], [ %4140, %4136 ]
  %4786 = phi float [ %4767, %4743 ], [ %4141, %4136 ]
  %4787 = phi float [ %4752, %4743 ], [ %4145, %4136 ]
  %4788 = phi float [ %4753, %4743 ], [ %4146, %4136 ]
  %4789 = phi float [ %4754, %4743 ], [ %4147, %4136 ]
  %4790 = phi float [ %4755, %4743 ], [ %4142, %4136 ]
  %4791 = phi float [ %4756, %4743 ], [ %4143, %4136 ]
  %4792 = phi float [ %4757, %4743 ], [ %4144, %4136 ]
  %4793 = phi float [ %4747, %4743 ], [ %4148, %4136 ]
  %4794 = phi float [ %4748, %4743 ], [ %4149, %4136 ]
  %4795 = phi float [ %4749, %4743 ], [ %4150, %4136 ]
  %4796 = phi float [ %4764, %4743 ], [ %4151, %4136 ]
  %4797 = phi float [ %4774, %4743 ], [ %980, %4136 ]
  %4798 = phi float [ %4762, %4743 ], [ %4152, %4136 ]
  %4799 = phi float [ %4761, %4743 ], [ %4153, %4136 ]
  %4800 = phi float [ %4751, %4743 ], [ 0.000000e+00, %4136 ]
  %4801 = phi float [ %4750, %4743 ], [ 0.000000e+00, %4136 ]
  %4802 = phi float [ %4744, %4743 ], [ 0.000000e+00, %4136 ]
  %4803 = phi float [ %4745, %4743 ], [ %4157, %4136 ]
  %4804 = phi float [ %4746, %4743 ], [ %4155, %4136 ]
  %4805 = fadd fast float %4796, 0xBFB99999A0000000
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fmul fast float %4806, 0x3FF1C71C80000000
  %4808 = call float @dx.op.binary.f32(i32 36, float %4796, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4809 = fsub fast float 1.000000e+00, %4807
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fmul fast float %4810, %4784
  %4812 = fmul fast float %4810, %4785
  %4813 = fmul fast float %4810, %4786
  %4814 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4816 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4817 = fmul fast float %4807, %4784
  %4818 = fmul fast float %4807, %4785
  %4819 = fmul fast float %4807, %4786
  %4820 = fadd fast float %4817, %4808
  %4821 = fadd fast float %4818, %4808
  %4822 = fadd fast float %4819, %4808
  %4823 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4828 = extractvalue %dx.types.ResRet.i32 %4827, 0
  %4829 = and i32 %4828, 1
  %4830 = icmp eq i32 %4829, 0
  br i1 %4830, label %4845, label %4831

; <label>:4831                                    ; preds = %4780
  %4832 = call float @dx.op.binary.f32(i32 35, float %4815, float %4816)  ; FMax(a,b)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4814, float %4832)  ; FMax(a,b)
  %4834 = fcmp fast ogt float %4833, 0.000000e+00
  %4835 = bitcast float %4833 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = select i1 %4834, float %4837, float 0.000000e+00
  %4839 = fmul fast float %4814, %4787
  %4840 = fmul fast float %4815, %4788
  %4841 = fmul fast float %4816, %4789
  %4842 = fmul fast float %4839, %4838
  %4843 = fmul fast float %4840, %4838
  %4844 = fmul fast float %4841, %4838
  br label %4845

; <label>:4845                                    ; preds = %4831, %4780
  %4846 = phi float [ %4842, %4831 ], [ %4787, %4780 ]
  %4847 = phi float [ %4843, %4831 ], [ %4788, %4780 ]
  %4848 = phi float [ %4844, %4831 ], [ %4789, %4780 ]
  %4849 = call float @dx.op.binary.f32(i32 36, float %4793, float 1.270000e+02)  ; FMin(a,b)
  %4850 = call float @dx.op.binary.f32(i32 36, float %4794, float 1.270000e+02)  ; FMin(a,b)
  %4851 = call float @dx.op.binary.f32(i32 36, float %4795, float 1.270000e+02)  ; FMin(a,b)
  %4852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.i32 %4852, 3
  %4854 = and i32 %4853, 8
  %4855 = icmp ne i32 %4854, 0
  %4856 = call float @dx.op.binary.f32(i32 35, float %4814, float %4784)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4815, float %4784)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float %4816, float %4784)  ; FMax(a,b)
  %4859 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %4816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4860 = select i1 %158, float %4784, float %4814
  %4861 = select i1 %158, float %4859, float %4815
  %4862 = select i1 %158, float 1.000000e+00, float %4816
  %4863 = select i1 %4855, float %4856, float %4860
  %4864 = select i1 %4855, float %4857, float %4861
  %4865 = select i1 %4855, float %4858, float %4862
  %4866 = call float @dx.op.dot3.f32(i32 55, float %4846, float %4847, float %4848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = select i1 %158, float %4866, float %4846
  %4868 = select i1 %158, float %4866, float %4847
  %4869 = select i1 %158, float %4866, float %4848
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4874 = fadd fast float %4871, %116
  %4875 = fadd fast float %4872, %117
  %4876 = fadd fast float %4873, %118
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4880 = fsub fast float %4874, %4878
  %4881 = fsub fast float %4875, %4879
  %4882 = fmul fast float %4880, %4880
  %4883 = fmul fast float %4881, %4881
  %4884 = fadd fast float %4882, %4883
  %4885 = call float @dx.op.unary.f32(i32 24, float %4884)  ; Sqrt(value)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4887 = fcmp fast olt float %4885, %4886
  br i1 %4887, label %4888, label %4955

; <label>:4888                                    ; preds = %4845
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4899 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4900 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4901 = fadd fast float %4898, %4874
  %4902 = fadd fast float %4899, %4875
  %4903 = fadd fast float %4900, %4876
  %4904 = fmul fast float %4901, %4890
  %4905 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4892, float %4904)  ; FMad(a,b,c)
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4894, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4901, %4895
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4896, float %4907)  ; FMad(a,b,c)
  %4909 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4897, float %4908)  ; FMad(a,b,c)
  %4910 = fsub fast float %4906, %4898
  %4911 = fsub fast float %4909, %4899
  %4912 = fsub fast float %4910, %4878
  %4913 = fadd fast float %4912, %4886
  %4914 = fsub fast float %4911, %4879
  %4915 = fadd fast float %4914, %4886
  %4916 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4917 = fmul fast float %4913, %4916
  %4918 = fmul fast float %4915, %4916
  %4919 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4921 = fsub fast float 1.000000e+00, %4919
  %4922 = fsub fast float 1.000000e+00, %4920
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = fcmp fast ugt float %4924, 0.000000e+00
  br i1 %4925, label %4926, label %5229

; <label>:4926                                    ; preds = %4888
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 2
  %4929 = fmul fast float %4928, %4924
  %4930 = extractvalue %dx.types.CBufRet.f32 %4927, 3
  %4931 = fadd fast float %4930, %4929
  %4932 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4933 = fadd fast float %4931, %4900
  %4934 = fmul fast float %4906, %4894
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4909, float %4897, float %4934)  ; FMad(a,b,c)
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4933, float %4932, float %4935)  ; FMad(a,b,c)
  %4937 = fsub fast float %4936, %4900
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4940 = fsub fast float %4937, %4939
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.ResRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.ResRet.f32 %4945, 2
  %4949 = fadd fast float %4946, %4942
  %4950 = fmul fast float %4949, 0x3F847AE140000000
  %4951 = fadd fast float %4947, %4943
  %4952 = fmul fast float %4951, 0x3F847AE140000000
  %4953 = fadd fast float %4948, %4944
  %4954 = fmul fast float %4953, 0x3F847AE140000000
  br label %5229

; <label>:4955                                    ; preds = %4845
  %4956 = and i32 %134, 1
  %4957 = icmp eq i32 %4956, 0
  br i1 %4957, label %5229, label %4958

; <label>:4958                                    ; preds = %4955
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4966 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4967 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4968 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %4969 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4970 = extractvalue %dx.types.CBufRet.f32 %4963, 3
  %4971 = fadd fast float %4968, %4874
  %4972 = fadd fast float %4969, %4875
  %4973 = fadd fast float %4970, %4876
  %4974 = fmul fast float %4971, %4960
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4962, float %4974)  ; FMad(a,b,c)
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4973, float %4964, float %4975)  ; FMad(a,b,c)
  %4977 = fmul fast float %4971, %4965
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4966, float %4977)  ; FMad(a,b,c)
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4973, float %4967, float %4978)  ; FMad(a,b,c)
  %4980 = fsub fast float %4976, %4968
  %4981 = fsub fast float %4979, %4969
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = extractvalue %dx.types.CBufRet.f32 %4982, 1
  %4985 = extractvalue %dx.types.CBufRet.f32 %4982, 2
  %4986 = extractvalue %dx.types.CBufRet.f32 %4982, 3
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 3
  %4989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.i32 %4989, 0
  %4991 = extractvalue %dx.types.CBufRet.i32 %4989, 1
  %4992 = udiv i32 %4991, %4990
  %4993 = fsub fast float %4980, %4983
  %4994 = fsub fast float %4981, %4984
  %4995 = call float @dx.op.binary.f32(i32 35, float %4993, float 0.000000e+00)  ; FMax(a,b)
  %4996 = call float @dx.op.binary.f32(i32 35, float %4994, float 0.000000e+00)  ; FMax(a,b)
  %4997 = call float @dx.op.binary.f32(i32 36, float %4995, float %4985)  ; FMin(a,b)
  %4998 = call float @dx.op.binary.f32(i32 36, float %4996, float %4986)  ; FMin(a,b)
  %4999 = add i32 %4990, -1
  %5000 = add i32 %4992, -1
  %5001 = fmul fast float %4997, %4988
  %5002 = fmul fast float %4998, %4988
  %5003 = fptoui float %5001 to i32
  %5004 = fptoui float %5002 to i32
  %5005 = call i32 @dx.op.binary.i32(i32 40, i32 %5003, i32 %4999)  ; UMin(a,b)
  %5006 = call i32 @dx.op.binary.i32(i32 40, i32 %5004, i32 %5000)  ; UMin(a,b)
  %5007 = mul i32 %5006, %4990
  %5008 = add i32 %5007, %5005
  %5009 = shl i32 %5008, 2
  %5010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5009, i32 undef)  ; BufferLoad(srv,index,wot)
  %5011 = extractvalue %dx.types.ResRet.i32 %5010, 0
  %5012 = icmp eq i32 %5011, -1
  br i1 %5012, label %5229, label %5013

; <label>:5013                                    ; preds = %4958
  %5014 = mul i32 %5011, 148
  %5015 = add i32 %5014, 4
  %5016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5015, i32 undef)  ; BufferLoad(srv,index,wot)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = add i32 %5014, 8
  %5019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5018, i32 undef)  ; BufferLoad(srv,index,wot)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = add i32 %5014, 36
  %5022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5021, i32 undef)  ; BufferLoad(srv,index,wot)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = add i32 %5014, 60
  %5025 = add i32 %5014, 92
  %5026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.i32 %5026, 0
  %5028 = add i32 %5014, 116
  %5029 = fsub fast float %4980, %5017
  %5030 = fsub fast float %4981, %5020
  %5031 = fmul fast float %4988, %5029
  %5032 = fmul fast float %4988, %5030
  %5033 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5034 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5038 = call float @dx.op.unary.f32(i32 83, float %5033)  ; DerivCoarseX(value)
  %5039 = call float @dx.op.unary.f32(i32 83, float %5035)  ; DerivCoarseX(value)
  %5040 = call float @dx.op.unary.f32(i32 84, float %5033)  ; DerivCoarseY(value)
  %5041 = call float @dx.op.unary.f32(i32 84, float %5035)  ; DerivCoarseY(value)
  %5042 = fmul fast float %5038, %5037
  %5043 = fmul fast float %5039, %5037
  %5044 = fmul fast float %5040, %5037
  %5045 = fmul fast float %5041, %5037
  %5046 = call float @dx.op.dot2.f32(i32 54, float %5044, float %5045, float %5044, float %5045)  ; Dot2(ax,ay,bx,by)
  %5047 = call float @dx.op.dot2.f32(i32 54, float %5042, float %5043, float %5042, float %5043)  ; Dot2(ax,ay,bx,by)
  %5048 = call float @dx.op.binary.f32(i32 35, float %5047, float %5046)  ; FMax(a,b)
  %5049 = call float @dx.op.unary.f32(i32 23, float %5048)  ; Log(value)
  %5050 = fmul fast float %5049, 5.000000e-01
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 1
  %5053 = fadd fast float %5052, %5050
  %5054 = call float @dx.op.binary.f32(i32 35, float %5053, float 0.000000e+00)  ; FMax(a,b)
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 3
  %5057 = fadd fast float %5056, %5054
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5060 = fadd fast float %5057, %5059
  %5061 = add i32 %5027, 0
  %5062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5061, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5063 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5062, i32 0)  ; GetDimensions(handle,mipLevel)
  %5064 = extractvalue %dx.types.Dimensions %5063, 0
  %5065 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5064)  ; FirstbitLo(value)
  %5066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.i32 %5066, 1
  %5068 = sub nsw i32 %5067, %5065
  %5069 = sitofp i32 %5068 to float
  %5070 = fsub fast float %5060, %5069
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0.000000e+00)  ; FMax(a,b)
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5062, %dx.types.Handle %27, float %5033, float %5035, float %5023, float undef, i32 0, i32 0, i32 undef, float %5071)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = fcmp ule float %5073, 0x3FE0101020000000
  %5075 = extractvalue %dx.types.CBufRet.i32 %5066, 0
  %5076 = and i32 %5075, 128
  %5077 = icmp ne i32 %5076, 0
  %5078 = and i1 %5074, %5077
  br i1 %5078, label %5229, label %5079

; <label>:5079                                    ; preds = %5013
  %5080 = add i32 %5014, 20
  %5081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5080, i32 undef)  ; BufferLoad(srv,index,wot)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 0
  %5083 = add i32 %5014, 24
  %5084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5083, i32 undef)  ; BufferLoad(srv,index,wot)
  %5085 = extractvalue %dx.types.ResRet.f32 %5084, 0
  %5086 = add i32 %5014, 40
  %5087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5086, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 0
  %5089 = add i32 %5014, 96
  %5090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5089, i32 undef)  ; BufferLoad(srv,index,wot)
  %5091 = extractvalue %dx.types.ResRet.i32 %5090, 0
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5094 = fmul fast float %5093, %5033
  %5095 = fmul fast float %5093, %5035
  %5096 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5097 = fadd fast float %5094, %5096
  %5098 = fadd fast float %5095, %5096
  %5099 = add i32 %5091, 0
  %5100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5099, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5101 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5100, i32 0)  ; GetDimensions(handle,mipLevel)
  %5102 = extractvalue %dx.types.Dimensions %5101, 0
  %5103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5102)  ; FirstbitLo(value)
  %5104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.i32 %5104, 1
  %5106 = sub nsw i32 %5105, %5103
  %5107 = sitofp i32 %5106 to float
  %5108 = fsub fast float %5057, %5107
  %5109 = call float @dx.op.binary.f32(i32 35, float %5108, float 0.000000e+00)  ; FMax(a,b)
  %5110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5100, %dx.types.Handle %27, float %5097, float %5098, float %5088, float undef, i32 0, i32 0, i32 undef, float %5109)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = fmul fast float %5111, %5082
  %5113 = fadd fast float %5112, %5085
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 3
  %5122 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5123 = fadd fast float %5119, %4980
  %5124 = fadd fast float %5121, %4981
  %5125 = fadd fast float %5113, %5122
  %5126 = fmul fast float %5123, %5115
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5116, float %5126)  ; FMad(a,b,c)
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5125, float %5117, float %5127)  ; FMad(a,b,c)
  %5129 = fsub fast float %5128, %5122
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5132 = fsub fast float %5129, %5131
  %5133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.i32 %5133, 0
  %5135 = call i32 @dx.op.binary.i32(i32 40, i32 %5011, i32 %5134)  ; UMin(a,b)
  %5136 = mul i32 %5135, 36
  %5137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5136, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.i32 %5137, 0
  %5139 = add i32 %5136, 4
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = fmul fast float %5141, %5033
  %5143 = fmul fast float %5141, %5035
  %5144 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5145 = fadd fast float %5142, %5144
  %5146 = fadd fast float %5143, %5144
  %5147 = icmp eq i32 %5138, 0
  br i1 %5147, label %5216, label %5148

; <label>:5148                                    ; preds = %5079
  br label %5149

; <label>:5149                                    ; preds = %5206, %5148
  %5150 = phi float [ %5207, %5206 ], [ 0.000000e+00, %5148 ]
  %5151 = phi float [ %5208, %5206 ], [ 0.000000e+00, %5148 ]
  %5152 = phi float [ %5209, %5206 ], [ 0.000000e+00, %5148 ]
  %5153 = phi float [ %5210, %5206 ], [ 0.000000e+00, %5148 ]
  %5154 = phi float [ %5211, %5206 ], [ 0.000000e+00, %5148 ]
  %5155 = phi float [ %5212, %5206 ], [ 0.000000e+00, %5148 ]
  %5156 = phi i32 [ %5213, %5206 ], [ 0, %5148 ]
  %5157 = shl i32 %5156, 2
  %5158 = add i32 %5024, %5157
  %5159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5158, i32 undef)  ; BufferLoad(srv,index,wot)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = add i32 %5028, %5157
  %5162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5161, i32 undef)  ; BufferLoad(srv,index,wot)
  %5163 = extractvalue %dx.types.ResRet.i32 %5162, 0
  %5164 = add i32 %5163, 0
  %5165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5164, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5166 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5165, i32 0)  ; GetDimensions(handle,mipLevel)
  %5167 = extractvalue %dx.types.Dimensions %5166, 0
  %5168 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5167)  ; FirstbitLo(value)
  %5169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.i32 %5169, 1
  %5171 = sub nsw i32 %5170, %5168
  %5172 = sitofp i32 %5171 to float
  %5173 = fsub fast float %5057, %5172
  %5174 = call float @dx.op.binary.f32(i32 35, float %5173, float 0.000000e+00)  ; FMax(a,b)
  %5175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5165, %dx.types.Handle %27, float %5145, float %5146, float %5160, float undef, i32 0, i32 0, i32 undef, float %5174)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 0
  %5177 = fcmp fast ogt float %5176, 0.000000e+00
  br i1 %5177, label %5178, label %5206

; <label>:5178                                    ; preds = %5149
  %5179 = add i32 %5139, %5157
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = and i32 %5181, 32767
  %5183 = mul nuw nsw i32 %5182, 928
  %5184 = add nuw nsw i32 %5183, 48
  %5185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5184, i32 undef)  ; BufferLoad(srv,index,wot)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = add nuw nsw i32 %5183, 60
  %5190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = fmul fast float %5186, %5176
  %5195 = fmul fast float %5187, %5176
  %5196 = fmul fast float %5188, %5176
  %5197 = fadd fast float %5194, %5150
  %5198 = fadd fast float %5195, %5151
  %5199 = fadd fast float %5196, %5152
  %5200 = fmul fast float %5191, %5176
  %5201 = fmul fast float %5192, %5176
  %5202 = fmul fast float %5193, %5176
  %5203 = fadd fast float %5200, %5153
  %5204 = fadd fast float %5201, %5154
  %5205 = fadd fast float %5202, %5155
  br label %5206

; <label>:5206                                    ; preds = %5178, %5149
  %5207 = phi float [ %5197, %5178 ], [ %5150, %5149 ]
  %5208 = phi float [ %5198, %5178 ], [ %5151, %5149 ]
  %5209 = phi float [ %5199, %5178 ], [ %5152, %5149 ]
  %5210 = phi float [ %5203, %5178 ], [ %5153, %5149 ]
  %5211 = phi float [ %5204, %5178 ], [ %5154, %5149 ]
  %5212 = phi float [ %5205, %5178 ], [ %5155, %5149 ]
  %5213 = add nuw i32 %5156, 1
  %5214 = icmp eq i32 %5213, %5138
  br i1 %5214, label %5215, label %5149

; <label>:5215                                    ; preds = %5206
  br label %5216

; <label>:5216                                    ; preds = %5215, %5079
  %5217 = phi float [ 0.000000e+00, %5079 ], [ %5207, %5215 ]
  %5218 = phi float [ 0.000000e+00, %5079 ], [ %5208, %5215 ]
  %5219 = phi float [ 0.000000e+00, %5079 ], [ %5209, %5215 ]
  %5220 = phi float [ 0.000000e+00, %5079 ], [ %5210, %5215 ]
  %5221 = phi float [ 0.000000e+00, %5079 ], [ %5211, %5215 ]
  %5222 = phi float [ 0.000000e+00, %5079 ], [ %5212, %5215 ]
  %5223 = fadd fast float %5220, %5217
  %5224 = fmul fast float %5223, 0x3F847AE140000000
  %5225 = fadd fast float %5221, %5218
  %5226 = fmul fast float %5225, 0x3F847AE140000000
  %5227 = fadd fast float %5222, %5219
  %5228 = fmul fast float %5227, 0x3F847AE140000000
  br label %5229

; <label>:5229                                    ; preds = %5216, %5013, %4958, %4955, %4926, %4888
  %5230 = phi float [ %4940, %4926 ], [ -1.310720e+05, %4888 ], [ %5132, %5216 ], [ -1.310720e+05, %4958 ], [ -1.310720e+05, %5013 ], [ -1.310720e+05, %4955 ]
  %5231 = phi float [ %4950, %4926 ], [ 0.000000e+00, %4888 ], [ %5224, %5216 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %5013 ], [ 0.000000e+00, %4955 ]
  %5232 = phi float [ %4952, %4926 ], [ 0.000000e+00, %4888 ], [ %5226, %5216 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %5013 ], [ 0.000000e+00, %4955 ]
  %5233 = phi float [ %4954, %4926 ], [ 0.000000e+00, %4888 ], [ %5228, %5216 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %5013 ], [ 0.000000e+00, %4955 ]
  %5234 = phi i1 [ true, %4926 ], [ false, %4888 ], [ true, %5216 ], [ false, %4958 ], [ false, %5013 ], [ false, %4955 ]
  %5235 = and i32 %134, 3
  %5236 = icmp eq i32 %5235, 1
  %5237 = select i1 %5236, float 1.000000e+00, float 0.000000e+00
  %5238 = fsub fast float %5230, %118
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = select i1 %5234, float %5239, float 1.000000e+00
  %5241 = fmul fast float %5240, %5237
  %5242 = icmp eq i32 %5235, 3
  %5243 = select i1 %5242, float 1.000000e+00, float %5241
  %5244 = call float @dx.op.binary.f32(i32 35, float %4802, float %5243)  ; FMax(a,b)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fcmp fast une float %5245, 0.000000e+00
  %5247 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = call float @dx.op.unary.f32(i32 25, float %5247)  ; Rsqrt(value)
  br i1 %5246, label %5256, label %5249

; <label>:5249                                    ; preds = %5229
  %5250 = fmul fast float %5248, %116
  %5251 = fmul fast float %5248, %117
  %5252 = fmul fast float %5248, %118
  %5253 = fsub fast float -0.000000e+00, %5250
  %5254 = fsub fast float -0.000000e+00, %5251
  %5255 = fsub fast float -0.000000e+00, %5252
  br label %5424

; <label>:5256                                    ; preds = %5229
  %5257 = fmul fast float %116, %5248
  %5258 = fsub fast float -0.000000e+00, %5257
  %5259 = fmul fast float %117, %5248
  %5260 = fsub fast float -0.000000e+00, %5259
  %5261 = fmul fast float %118, %5248
  %5262 = fsub fast float -0.000000e+00, %5261
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5260, float %5262, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = fmul fast float %5245, 2.500000e+00
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fmul fast float %5245, 0x4013FFFFE0000000
  %5267 = fadd fast float %5266, 0xBFFFFFFFE0000000
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fmul fast float %5245, 0x4004000020000000
  %5270 = fadd fast float %5269, 0xBFF8000040000000
  %5271 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5273 = fmul fast float %4805, 1.000000e+01
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %5274, 2.000000e+00
  %5276 = fsub fast float 3.000000e+00, %5275
  %5277 = fmul fast float %5274, %5274
  %5278 = fmul fast float %5277, %5276
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fsub fast float 0x3FE3333340000000, %4826
  %5281 = fmul fast float %5280, 0x400AAAAAA0000000
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fmul fast float %5279, %5282
  %5284 = fmul fast float %4863, 0x3FEA2B8620000000
  %5285 = fmul fast float %4864, 0x3FEA2B8620000000
  %5286 = fmul fast float %4865, 0x3FEA2B8620000000
  %5287 = fadd fast float %5284, 0x3FC81DFBA0000000
  %5288 = fmul fast float %5287, %4863
  %5289 = fadd fast float %5288, 0x3F910E6020000000
  %5290 = fadd fast float %5285, 0x3FC81DFBA0000000
  %5291 = fmul fast float %5290, %4864
  %5292 = fadd fast float %5291, 0x3F910E6020000000
  %5293 = fadd fast float %5286, 0x3FC81DFBA0000000
  %5294 = fmul fast float %5293, %4865
  %5295 = fadd fast float %5294, 0x3F910E6020000000
  %5296 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = fsub fast float %5296, %4863
  %5300 = fsub fast float %5297, %4864
  %5301 = fsub fast float %5298, %4865
  %5302 = fmul fast float %5299, %5272
  %5303 = fmul fast float %5302, %5283
  %5304 = fmul fast float %5300, %5272
  %5305 = fmul fast float %5304, %5283
  %5306 = fmul fast float %5301, %5272
  %5307 = fmul fast float %5306, %5283
  %5308 = fadd fast float %5303, %4863
  %5309 = fadd fast float %5305, %4864
  %5310 = fadd fast float %5307, %4865
  %5311 = fmul fast float %4799, %4799
  %5312 = fmul fast float %5311, %5311
  %5313 = fadd fast float %5268, 1.000000e+00
  %5314 = fsub fast float %5313, %5283
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fsub fast float 1.000000e+00, %5312
  %5319 = call float @dx.op.binary.f32(i32 36, float %5315, float %5318)  ; FMin(a,b)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5319, float %5320)  ; FMax(a,b)
  %5322 = fadd fast float %5317, 0xBFE4CCCCC0000000
  %5323 = fmul fast float %5322, 0x4006DB6DA0000000
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fmul fast float %5324, 2.000000e+00
  %5326 = fsub fast float 3.000000e+00, %5325
  %5327 = bitcast float %4823 to i32
  %5328 = ashr i32 %5327, 1
  %5329 = add nsw i32 %5328, 532487669
  %5330 = bitcast i32 %5329 to float
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = bitcast float %5331 to i32
  %5333 = sub nsw i32 2129859010, %5332
  %5334 = bitcast i32 %5333 to float
  %5335 = fmul fast float %5334, 2.000000e+00
  %5336 = bitcast float %4824 to i32
  %5337 = ashr i32 %5336, 1
  %5338 = add nsw i32 %5337, 532487669
  %5339 = bitcast i32 %5338 to float
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = fmul fast float %5343, 2.000000e+00
  %5345 = bitcast float %4825 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = fsub fast float 0x4002A9FBE0000000, %5335
  %5355 = fadd fast float %5335, 0x3FD54FDF00000000
  %5356 = bitcast float %5355 to i32
  %5357 = sub nsw i32 2129859010, %5356
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %5359, %5359
  %5361 = fsub fast float 0x4002A9FBE0000000, %5344
  %5362 = fadd fast float %5344, 0x3FD54FDF00000000
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5366
  %5368 = fsub fast float 0x4002A9FBE0000000, %5353
  %5369 = fadd fast float %5353, 0x3FD54FDF00000000
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5373, %5373
  %5375 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5360)  ; FMax(a,b)
  %5376 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5367)  ; FMax(a,b)
  %5377 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5374)  ; FMax(a,b)
  %5378 = fsub fast float 1.000000e+00, %5263
  %5379 = fadd fast float %5378, %5279
  %5380 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5381 = fsub fast float 1.000000e+00, %5243
  %5382 = fmul fast float %5321, %5381
  %5383 = fmul fast float %5324, %5324
  %5384 = fmul fast float %5383, %5382
  %5385 = fmul fast float %5384, %5326
  %5386 = fmul fast float %5381, 0xBFE99999A0000000
  %5387 = fmul fast float %5386, %5272
  %5388 = fmul fast float %5387, %5283
  %5389 = fadd fast float %5388, 1.000000e+00
  %5390 = fadd fast float %4826, -1.000000e+00
  %5391 = fmul fast float %5389, %5390
  %5392 = fadd fast float %5391, 1.000000e+00
  %5393 = fsub fast float %5375, %4823
  %5394 = fsub fast float %5376, %4824
  %5395 = fsub fast float %5377, %4825
  %5396 = fmul fast float %5385, %5393
  %5397 = fmul fast float %5385, %5394
  %5398 = fmul fast float %5385, %5395
  %5399 = fadd fast float %5396, %4823
  %5400 = fadd fast float %5397, %4824
  %5401 = fadd fast float %5398, %4825
  %5402 = fsub fast float %68, %4781
  %5403 = fsub fast float %69, %4782
  %5404 = fsub fast float %70, %4783
  %5405 = fmul fast float %5385, %5402
  %5406 = fmul fast float %5385, %5403
  %5407 = fmul fast float %5385, %5404
  %5408 = fadd fast float %5405, %4781
  %5409 = fadd fast float %5406, %4782
  %5410 = fadd fast float %5407, %4783
  %5411 = fmul fast float %5385, %5380
  %5412 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = fmul fast float %5411, %5413
  %5415 = fadd fast float %5414, %5412
  %5416 = fsub fast float 1.000000e+00, %4799
  %5417 = fmul fast float %5385, %5416
  %5418 = fadd fast float %5417, %4799
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = call float @dx.op.unary.f32(i32 25, float %5419)  ; Rsqrt(value)
  %5421 = fmul fast float %5408, %5420
  %5422 = fmul fast float %5409, %5420
  %5423 = fmul fast float %5410, %5420
  br label %5424

; <label>:5424                                    ; preds = %5256, %5249
  %5425 = phi float [ %5255, %5249 ], [ %5262, %5256 ]
  %5426 = phi float [ %5254, %5249 ], [ %5260, %5256 ]
  %5427 = phi float [ %5253, %5249 ], [ %5258, %5256 ]
  %5428 = phi float [ %5252, %5249 ], [ %5261, %5256 ]
  %5429 = phi float [ %5251, %5249 ], [ %5259, %5256 ]
  %5430 = phi float [ %5250, %5249 ], [ %5257, %5256 ]
  %5431 = phi float [ %4823, %5249 ], [ %5399, %5256 ]
  %5432 = phi float [ %4824, %5249 ], [ %5400, %5256 ]
  %5433 = phi float [ %4825, %5249 ], [ %5401, %5256 ]
  %5434 = phi float [ %4863, %5249 ], [ %5308, %5256 ]
  %5435 = phi float [ %4864, %5249 ], [ %5309, %5256 ]
  %5436 = phi float [ %4865, %5249 ], [ %5310, %5256 ]
  %5437 = phi float [ %4781, %5249 ], [ %5421, %5256 ]
  %5438 = phi float [ %4782, %5249 ], [ %5422, %5256 ]
  %5439 = phi float [ %4783, %5249 ], [ %5423, %5256 ]
  %5440 = phi float [ %4826, %5249 ], [ %5415, %5256 ]
  %5441 = phi float [ %4799, %5249 ], [ %5418, %5256 ]
  %5442 = select i1 %158, float 0.000000e+00, float %5433
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5427, float %5426, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5429, float %5428, float %5437, float %5438, float %5439)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = fmul fast float %5445, 2.000000e+00
  %5447 = fmul fast float %5446, %5437
  %5448 = fmul fast float %5446, %5438
  %5449 = fmul fast float %5446, %5439
  %5450 = fsub fast float %5430, %5447
  %5451 = fsub fast float %5429, %5448
  %5452 = fsub fast float %5428, %5449
  %5453 = fsub fast float 1.000000e+00, %5441
  %5454 = bitcast float %5453 to i32
  %5455 = sub nsw i32 2129859010, %5454
  %5456 = bitcast i32 %5455 to float
  %5457 = fmul fast float %4797, %4790
  %5458 = fmul fast float %4797, %4791
  %5459 = fmul fast float %4797, %4792
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 3
  %5462 = fcmp fast oeq float %5461, 0.000000e+00
  br i1 %5462, label %5831, label %5463

; <label>:5463                                    ; preds = %5424
  %5464 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5465 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5466 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.CBufRet.f32 %5471, 1
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = select i1 %158, float %5472, float %5468
  %5476 = select i1 %158, float %5474, float %5469
  %5477 = select i1 %158, float %5473, float %5470
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5480 = fcmp fast une float %5479, 0.000000e+00
  br i1 %5480, label %5481, label %5498

; <label>:5481                                    ; preds = %5463
  %5482 = fptoui float %61 to i32
  %5483 = fptoui float %62 to i32
  %5484 = lshr i32 %5482, 4
  %5485 = lshr i32 %5483, 4
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = fptoui float %5487 to i32
  %5489 = add i32 %5488, 15
  %5490 = lshr i32 %5489, 4
  %5491 = mul i32 %5490, %5485
  %5492 = add i32 %5491, %5484
  %5493 = shl i32 %5492, 3
  %5494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5493, i32 undef)  ; BufferLoad(srv,index,wot)
  %5495 = extractvalue %dx.types.ResRet.i32 %5494, 0
  %5496 = and i32 %5495, -268435456
  %5497 = icmp eq i32 %5496, -1342177280
  br i1 %5497, label %5508, label %5498

; <label>:5498                                    ; preds = %5481, %5463
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 2
  %5501 = extractvalue %dx.types.CBufRet.f32 %5499, 3
  %5502 = fmul fast float %5500, %61
  %5503 = fmul fast float %5501, %62
  %5504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5502, float %5503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.ResRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.ResRet.f32 %5504, 2
  br label %5508

; <label>:5508                                    ; preds = %5498, %5481
  %5509 = phi float [ %5505, %5498 ], [ 0.000000e+00, %5481 ]
  %5510 = phi float [ %5506, %5498 ], [ 0.000000e+00, %5481 ]
  %5511 = phi float [ %5507, %5498 ], [ 0.000000e+00, %5481 ]
  %5512 = call float @dx.op.binary.f32(i32 36, float %5510, float %5511)  ; FMin(a,b)
  %5513 = call float @dx.op.binary.f32(i32 36, float %5509, float %5512)  ; FMin(a,b)
  %5514 = fcmp fast ogt float %5513, 0.000000e+00
  br i1 %5514, label %5515, label %5831, !dx.controlflow.hints !73

; <label>:5515                                    ; preds = %5508
  %5516 = fmul fast float %5509, %5475
  %5517 = fmul fast float %5510, %5476
  %5518 = fmul fast float %5511, %5477
  %5519 = fsub fast float %5464, %5430
  %5520 = fsub fast float %5465, %5429
  %5521 = fsub fast float %5466, %5428
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5519, float %5520, float %5521, float %5519, float %5520, float %5521)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = call float @dx.op.unary.f32(i32 25, float %5522)  ; Rsqrt(value)
  %5524 = fmul fast float %5523, %5519
  %5525 = fmul fast float %5523, %5520
  %5526 = fmul fast float %5523, %5521
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %5437, float %5438, float %5439)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5426, float %5425, float %5524, float %5525, float %5526)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5530 = fmul fast float %5529, %5529
  %5531 = fmul fast float %5530, %5456
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5532, %5529
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5524, float %5525, float %5526)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fmul fast float %5534, %5534
  %5536 = call float @dx.op.unary.f32(i32 6, float %5527)  ; FAbs(value)
  %5537 = fsub fast float 1.000000e+00, %5440
  %5538 = call float @dx.op.binary.f32(i32 35, float %5537, float 0x3F847AE140000000)  ; FMax(a,b)
  %5539 = fmul fast float %5538, %5538
  %5540 = fmul fast float %5539, %5539
  %5541 = fsub fast float 1.000000e+00, %5540
  %5542 = fmul fast float %5444, %5444
  %5543 = fmul fast float %5542, %5541
  %5544 = fadd fast float %5543, %5540
  %5545 = bitcast float %5544 to i32
  %5546 = ashr i32 %5545, 1
  %5547 = add nsw i32 %5546, 532487669
  %5548 = bitcast i32 %5547 to float
  %5549 = fadd fast float %5548, %5444
  %5550 = fmul fast float %5540, %5535
  %5551 = fsub fast float 1.000000e+00, %5535
  %5552 = fadd fast float %5551, %5550
  %5553 = fmul fast float %5536, %5536
  %5554 = fmul fast float %5553, %5541
  %5555 = fadd fast float %5554, %5540
  %5556 = bitcast float %5555 to i32
  %5557 = ashr i32 %5556, 1
  %5558 = add nsw i32 %5557, 532487669
  %5559 = bitcast i32 %5558 to float
  %5560 = fadd fast float %5559, %5536
  %5561 = fmul fast float %5552, %5552
  %5562 = fmul fast float %5561, %5549
  %5563 = fmul fast float %5562, %5560
  %5564 = fdiv fast float 0x3FF0A00000000000, %5563
  %5565 = fmul fast float %5564, %5540
  %5566 = call float @dx.op.unary.f32(i32 6, float %5528)  ; FAbs(value)
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = bitcast float %5567 to i32
  %5569 = sitofp i32 %5568 to float
  %5570 = fmul fast float %5569, 5.000000e+00
  %5571 = fadd fast float %5570, 0xC1EFBF8940000000
  %5572 = fptosi float %5571 to i32
  %5573 = bitcast i32 %5572 to float
  %5574 = fsub fast float 1.000000e+00, %5431
  %5575 = fsub fast float 1.000000e+00, %5432
  %5576 = fsub fast float 1.000000e+00, %5442
  %5577 = fmul fast float %5573, %5574
  %5578 = fmul fast float %5573, %5575
  %5579 = fmul fast float %5573, %5576
  %5580 = fadd fast float %5577, %5431
  %5581 = fadd fast float %5578, %5432
  %5582 = fadd fast float %5579, %5442
  %5583 = fcmp fast ogt float %4800, 0.000000e+00
  br i1 %5583, label %5584, label %5607

; <label>:5584                                    ; preds = %5515
  %5585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4800, float %5566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 0
  %5587 = extractvalue %dx.types.ResRet.f32 %5585, 1
  %5588 = extractvalue %dx.types.ResRet.f32 %5585, 2
  %5589 = fadd fast float %5586, -5.000000e-01
  %5590 = fadd fast float %5587, -5.000000e-01
  %5591 = fadd fast float %5588, -5.000000e-01
  %5592 = fmul fast float %5431, 4.000000e+00
  %5593 = fmul fast float %5592, %5574
  %5594 = fmul fast float %5593, %5589
  %5595 = fmul fast float %5432, 4.000000e+00
  %5596 = fmul fast float %5595, %5575
  %5597 = fmul fast float %5596, %5590
  %5598 = fmul fast float %5442, 4.000000e+00
  %5599 = fmul fast float %5598, %5576
  %5600 = fmul fast float %5599, %5591
  %5601 = fadd fast float %5594, %5580
  %5602 = fadd fast float %5597, %5581
  %5603 = fadd fast float %5600, %5582
  %5604 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5606 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  br label %5607

; <label>:5607                                    ; preds = %5584, %5515
  %5608 = phi float [ %5604, %5584 ], [ %5580, %5515 ]
  %5609 = phi float [ %5605, %5584 ], [ %5581, %5515 ]
  %5610 = phi float [ %5606, %5584 ], [ %5582, %5515 ]
  %5611 = fmul fast float %5527, 9.843750e-01
  %5612 = fmul fast float %5440, 9.843750e-01
  %5613 = fadd fast float %5611, 7.812500e-03
  %5614 = fadd fast float %5612, 7.812500e-03
  %5615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5613, float %5614, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 2
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 3
  %5618 = fmul fast float %5616, %5431
  %5619 = fmul fast float %5616, %5432
  %5620 = fmul fast float %5616, %5442
  %5621 = fadd fast float %5618, %5617
  %5622 = fadd fast float %5619, %5617
  %5623 = fadd fast float %5620, %5617
  br i1 %5583, label %5624, label %5647

; <label>:5624                                    ; preds = %5607
  %5625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4800, float %5527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5626 = extractvalue %dx.types.ResRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.ResRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.ResRet.f32 %5625, 2
  %5629 = fadd fast float %5626, -5.000000e-01
  %5630 = fadd fast float %5627, -5.000000e-01
  %5631 = fadd fast float %5628, -5.000000e-01
  %5632 = fmul fast float %5431, 4.000000e+00
  %5633 = fmul fast float %5632, %5574
  %5634 = fmul fast float %5633, %5629
  %5635 = fmul fast float %5432, 4.000000e+00
  %5636 = fmul fast float %5635, %5575
  %5637 = fmul fast float %5636, %5630
  %5638 = fmul fast float %5442, 4.000000e+00
  %5639 = fmul fast float %5638, %5576
  %5640 = fmul fast float %5639, %5631
  %5641 = fadd fast float %5634, %5621
  %5642 = fadd fast float %5637, %5622
  %5643 = fadd fast float %5640, %5623
  %5644 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5645 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  br label %5647

; <label>:5647                                    ; preds = %5624, %5607
  %5648 = phi float [ %5644, %5624 ], [ %5621, %5607 ]
  %5649 = phi float [ %5645, %5624 ], [ %5622, %5607 ]
  %5650 = phi float [ %5646, %5624 ], [ %5623, %5607 ]
  %5651 = call float @dx.op.binary.f32(i32 35, float %5649, float %5650)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5648, float %5651)  ; FMax(a,b)
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = call float @dx.op.binary.f32(i32 35, float %5536, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5655 = fdiv fast float %4154, %5654
  %5656 = fcmp fast olt float %4849, 1.270000e+02
  %5657 = fcmp fast olt float %4850, 1.270000e+02
  %5658 = fcmp fast olt float %4851, 1.270000e+02
  %5659 = fmul fast float %4849, 0xBFF7154760000000
  %5660 = fmul fast float %5659, %5655
  %5661 = fmul fast float %4850, 0xBFF7154760000000
  %5662 = fmul fast float %5661, %5655
  %5663 = fmul fast float %4851, 0xBFF7154760000000
  %5664 = fmul fast float %5663, %5655
  %5665 = call float @dx.op.unary.f32(i32 21, float %5660)  ; Exp(value)
  %5666 = call float @dx.op.unary.f32(i32 21, float %5662)  ; Exp(value)
  %5667 = call float @dx.op.unary.f32(i32 21, float %5664)  ; Exp(value)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5671 = select i1 %5656, float %5668, float 0.000000e+00
  %5672 = select i1 %5657, float %5669, float 0.000000e+00
  %5673 = select i1 %5658, float %5670, float 0.000000e+00
  %5674 = fsub fast float -0.000000e+00, %5437
  %5675 = fsub fast float -0.000000e+00, %5438
  %5676 = fsub fast float -0.000000e+00, %5439
  %5677 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5678 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5679 = fmul fast float %5678, 9.843750e-01
  %5680 = fadd fast float %5679, 7.812500e-03
  %5681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5680, float %5614, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5682 = extractvalue %dx.types.ResRet.f32 %5681, 2
  %5683 = extractvalue %dx.types.ResRet.f32 %5681, 3
  %5684 = fmul fast float %5682, %5431
  %5685 = fmul fast float %5682, %5432
  %5686 = fmul fast float %5682, %5442
  %5687 = fadd fast float %5684, %5683
  %5688 = fadd fast float %5685, %5683
  %5689 = fadd fast float %5686, %5683
  br i1 %5583, label %5690, label %5713

; <label>:5690                                    ; preds = %5647
  %5691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4800, float %5678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5692 = extractvalue %dx.types.ResRet.f32 %5691, 0
  %5693 = extractvalue %dx.types.ResRet.f32 %5691, 1
  %5694 = extractvalue %dx.types.ResRet.f32 %5691, 2
  %5695 = fadd fast float %5692, -5.000000e-01
  %5696 = fadd fast float %5693, -5.000000e-01
  %5697 = fadd fast float %5694, -5.000000e-01
  %5698 = fmul fast float %5431, 4.000000e+00
  %5699 = fmul fast float %5698, %5574
  %5700 = fmul fast float %5699, %5695
  %5701 = fmul fast float %5432, 4.000000e+00
  %5702 = fmul fast float %5701, %5575
  %5703 = fmul fast float %5702, %5696
  %5704 = fmul fast float %5442, 4.000000e+00
  %5705 = fmul fast float %5704, %5576
  %5706 = fmul fast float %5705, %5697
  %5707 = fadd fast float %5700, %5687
  %5708 = fadd fast float %5703, %5688
  %5709 = fadd fast float %5706, %5689
  %5710 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  br label %5713

; <label>:5713                                    ; preds = %5690, %5647
  %5714 = phi float [ %5710, %5690 ], [ %5687, %5647 ]
  %5715 = phi float [ %5711, %5690 ], [ %5688, %5647 ]
  %5716 = phi float [ %5712, %5690 ], [ %5689, %5647 ]
  %5717 = call float @dx.op.binary.f32(i32 35, float %5715, float %5716)  ; FMax(a,b)
  %5718 = call float @dx.op.binary.f32(i32 35, float %5714, float %5717)  ; FMax(a,b)
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fmul fast float %5432, 0x4012D0A400000000
  %5722 = fadd fast float %5721, 0x3FDB6377A0000000
  %5723 = fmul fast float %5537, %5722
  %5724 = fadd fast float %5720, %5723
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = fsub fast float %5464, %5450
  %5727 = fsub fast float %5465, %5451
  %5728 = fsub fast float %5466, %5452
  %5729 = call float @dx.op.dot3.f32(i32 55, float %5726, float %5727, float %5728, float %5726, float %5727, float %5728)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = call float @dx.op.unary.f32(i32 25, float %5729)  ; Rsqrt(value)
  %5731 = fmul fast float %5730, %5726
  %5732 = fmul fast float %5730, %5727
  %5733 = fmul fast float %5730, %5728
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %5676, float %5731, float %5732, float %5733)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = fmul fast float %5734, %5734
  %5736 = call float @dx.op.unary.f32(i32 6, float %5678)  ; FAbs(value)
  %5737 = call float @dx.op.binary.f32(i32 35, float %5725, float 0x3F847AE140000000)  ; FMax(a,b)
  %5738 = fmul fast float %5737, %5737
  %5739 = fmul fast float %5738, %5738
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5542, %5740
  %5742 = fadd fast float %5741, %5739
  %5743 = bitcast float %5742 to i32
  %5744 = ashr i32 %5743, 1
  %5745 = add nsw i32 %5744, 532487669
  %5746 = bitcast i32 %5745 to float
  %5747 = fadd fast float %5746, %5444
  %5748 = fmul fast float %5739, %5735
  %5749 = fsub fast float 1.000000e+00, %5735
  %5750 = fadd fast float %5749, %5748
  %5751 = fmul fast float %5736, %5736
  %5752 = fmul fast float %5751, %5740
  %5753 = fadd fast float %5752, %5739
  %5754 = bitcast float %5753 to i32
  %5755 = ashr i32 %5754, 1
  %5756 = add nsw i32 %5755, 532487669
  %5757 = bitcast i32 %5756 to float
  %5758 = fadd fast float %5757, %5736
  %5759 = fmul fast float %5750, %5750
  %5760 = fmul fast float %5759, %5747
  %5761 = fmul fast float %5760, %5758
  %5762 = fdiv fast float 0x3FF0A00000000000, %5761
  %5763 = fmul fast float %5762, %5739
  %5764 = fmul fast float %5678, %5671
  %5765 = fmul fast float %5678, %5672
  %5766 = fmul fast float %5678, %5673
  %5767 = fmul fast float %5764, %5719
  %5768 = fmul fast float %5767, %5763
  %5769 = fmul fast float %5765, %5719
  %5770 = fmul fast float %5769, %5763
  %5771 = fmul fast float %5766, %5719
  %5772 = fmul fast float %5771, %5763
  %5773 = fmul fast float %5608, %5565
  %5774 = fmul fast float %5609, %5565
  %5775 = fmul fast float %5610, %5565
  %5776 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5777 = fcmp fast ogt float %5776, 0x3E7FF19E20000000
  %5778 = fdiv fast float 1.000000e+00, %5776
  %5779 = select i1 %5777, float %5778, float 0.000000e+00
  %5780 = fmul fast float %5779, %5434
  %5781 = fmul fast float %5779, %5435
  %5782 = fmul fast float %5779, %5436
  %5783 = fadd fast float %5780, -1.000000e+00
  %5784 = fadd fast float %5781, -1.000000e+00
  %5785 = fadd fast float %5782, -1.000000e+00
  %5786 = fmul fast float %5783, 5.000000e-01
  %5787 = fmul fast float %5784, 5.000000e-01
  %5788 = fmul fast float %5785, 5.000000e-01
  %5789 = fadd fast float %5786, 1.000000e+00
  %5790 = fadd fast float %5787, 1.000000e+00
  %5791 = fadd fast float %5788, 1.000000e+00
  %5792 = fsub fast float 1.000000e+00, %5528
  %5793 = bitcast float %5792 to i32
  %5794 = sitofp i32 %5793 to float
  %5795 = fmul fast float %5794, 5.000000e+00
  %5796 = fadd fast float %5795, 0xC1EFBF8940000000
  %5797 = fptosi float %5796 to i32
  %5798 = bitcast i32 %5797 to float
  %5799 = fmul fast float %5798, %4801
  %5800 = fmul fast float %5653, %5799
  %5801 = fmul fast float %5800, %5789
  %5802 = fmul fast float %5800, %5790
  %5803 = fmul fast float %5800, %5791
  %5804 = fadd fast float %5801, %5773
  %5805 = fadd fast float %5802, %5774
  %5806 = fadd fast float %5803, %5775
  %5807 = fmul fast float %5804, %5533
  %5808 = fmul fast float %5805, %5533
  %5809 = fmul fast float %5806, %5533
  %5810 = fadd fast float %5807, %5768
  %5811 = fadd fast float %5808, %5770
  %5812 = fadd fast float %5809, %5772
  %5813 = fmul fast float %5810, %5516
  %5814 = fmul fast float %5811, %5517
  %5815 = fmul fast float %5812, %5518
  %5816 = fmul fast float %5516, %4797
  %5817 = fmul fast float %5816, %5533
  %5818 = fmul fast float %5817, %5653
  %5819 = fmul fast float %5517, %4797
  %5820 = fmul fast float %5819, %5533
  %5821 = fmul fast float %5820, %5653
  %5822 = fmul fast float %5518, %4797
  %5823 = fmul fast float %5822, %5533
  %5824 = fmul fast float %5823, %5653
  %5825 = fadd fast float %5813, %4790
  %5826 = fmul fast float %5825, %4797
  %5827 = fadd fast float %5814, %4791
  %5828 = fmul fast float %5827, %4797
  %5829 = fadd fast float %5815, %4792
  %5830 = fmul fast float %5829, %4797
  br label %5831

; <label>:5831                                    ; preds = %5713, %5508, %5424
  %5832 = phi float [ %5457, %5424 ], [ %5457, %5508 ], [ %5826, %5713 ]
  %5833 = phi float [ %5458, %5424 ], [ %5458, %5508 ], [ %5828, %5713 ]
  %5834 = phi float [ %5459, %5424 ], [ %5459, %5508 ], [ %5830, %5713 ]
  %5835 = phi float [ 0.000000e+00, %5424 ], [ 0.000000e+00, %5508 ], [ %5818, %5713 ]
  %5836 = phi float [ 0.000000e+00, %5424 ], [ 0.000000e+00, %5508 ], [ %5821, %5713 ]
  %5837 = phi float [ 0.000000e+00, %5424 ], [ 0.000000e+00, %5508 ], [ %5824, %5713 ]
  %5838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.i32 %5838, 0
  %5840 = icmp eq i32 %5839, 0
  br i1 %5840, label %6441, label %5841

; <label>:5841                                    ; preds = %5831
  %5842 = fptoui float %61 to i32
  %5843 = fptoui float %62 to i32
  %5844 = lshr i32 %5842, 4
  %5845 = lshr i32 %5843, 4
  %5846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.i32 %5846, 0
  %5848 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5845, i32 %5847, i32 %5844)  ; UMad(a,b,c)
  %5849 = add nsw i32 %5839, -1
  %5850 = call i32 @dx.op.binary.i32(i32 37, i32 %5849, i32 0)  ; IMax(a,b)
  %5851 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %5852 = fptoui float %5851 to i32
  %5853 = lshr i32 %5852, 5
  %5854 = call i32 @dx.op.binary.i32(i32 40, i32 %5853, i32 8191)  ; UMin(a,b)
  %5855 = shl i32 %5854, 2
  %5856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5855, i32 undef)  ; BufferLoad(srv,index,wot)
  %5857 = extractvalue %dx.types.ResRet.i32 %5856, 0
  %5858 = lshr i32 %5857, 16
  %5859 = and i32 %5857, 65535
  %5860 = lshr i32 %5857, 21
  %5861 = lshr i32 %5859, 5
  %5862 = call i32 @dx.op.binary.i32(i32 40, i32 %5861, i32 %5850)  ; UMin(a,b)
  %5863 = icmp ugt i32 %5860, %5862
  br i1 %5863, label %6441, label %5864

; <label>:5864                                    ; preds = %5841
  br label %5865

; <label>:5865                                    ; preds = %6431, %5864
  %5866 = phi i32 [ %6438, %6431 ], [ %5860, %5864 ]
  %5867 = phi float [ %6432, %6431 ], [ %5832, %5864 ]
  %5868 = phi float [ %6433, %6431 ], [ %5833, %5864 ]
  %5869 = phi float [ %6434, %6431 ], [ %5834, %5864 ]
  %5870 = phi float [ %6435, %6431 ], [ %5835, %5864 ]
  %5871 = phi float [ %6436, %6431 ], [ %5836, %5864 ]
  %5872 = phi float [ %6437, %6431 ], [ %5837, %5864 ]
  %5873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.i32 %5873, 0
  %5875 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5848, i32 %5874, i32 %5866)  ; UMad(a,b,c)
  %5876 = shl i32 %5875, 2
  %5877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5876, i32 undef)  ; BufferLoad(srv,index,wot)
  %5878 = extractvalue %dx.types.ResRet.i32 %5877, 0
  %5879 = shl i32 %5866, 5
  %5880 = sub nsw i32 %5858, %5879
  %5881 = call i32 @dx.op.binary.i32(i32 37, i32 %5880, i32 0)  ; IMax(a,b)
  %5882 = call i32 @dx.op.binary.i32(i32 38, i32 %5881, i32 31)  ; IMin(a,b)
  %5883 = sub nsw i32 1, %5858
  %5884 = add nsw i32 %5883, %5859
  %5885 = call i32 @dx.op.binary.i32(i32 37, i32 %5884, i32 0)  ; IMax(a,b)
  %5886 = call i32 @dx.op.binary.i32(i32 38, i32 %5885, i32 32)  ; IMin(a,b)
  %5887 = and i32 %5886, 31
  %5888 = shl i32 -1, %5887
  %5889 = xor i32 %5888, -1
  %5890 = and i32 %5882, 31
  %5891 = shl i32 %5889, %5890
  %5892 = icmp eq i32 %5886, 32
  %5893 = select i1 %5892, i32 -1, i32 %5891
  %5894 = and i32 %5893, %5878
  %5895 = icmp eq i32 %5894, 0
  br i1 %5895, label %6431, label %5896

; <label>:5896                                    ; preds = %5865
  br label %5897

; <label>:5897                                    ; preds = %5981, %5896
  %5898 = phi i32 [ %5909, %5981 ], [ %5894, %5896 ]
  %5899 = phi float [ %5982, %5981 ], [ %5867, %5896 ]
  %5900 = phi float [ %5983, %5981 ], [ %5868, %5896 ]
  %5901 = phi float [ %5984, %5981 ], [ %5869, %5896 ]
  %5902 = phi float [ %5985, %5981 ], [ %5870, %5896 ]
  %5903 = phi float [ %5986, %5981 ], [ %5871, %5896 ]
  %5904 = phi float [ %5987, %5981 ], [ %5872, %5896 ]
  %5905 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5898)  ; FirstbitLo(value)
  %5906 = add i32 %5905, %5879
  %5907 = and i32 %5905, 31
  %5908 = shl i32 1, %5907
  %5909 = xor i32 %5908, %5898
  %5910 = mul i32 %5906, 112
  %5911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5910, i32 undef)  ; BufferLoad(srv,index,wot)
  %5912 = extractvalue %dx.types.ResRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.ResRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.ResRet.f32 %5911, 2
  %5915 = or i32 %5910, 12
  %5916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = add i32 %5910, 28
  %5919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5918, i32 undef)  ; BufferLoad(srv,index,wot)
  %5920 = extractvalue %dx.types.ResRet.i32 %5919, 0
  %5921 = add i32 %5910, 44
  %5922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5921, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.f32 %5922, 0
  %5924 = add i32 %5910, 48
  %5925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = add i32 %5910, 80
  %5930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5929, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 1
  %5932 = extractvalue %dx.types.ResRet.f32 %5930, 2
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = select i1 %158, float %5931, float %5912
  %5935 = select i1 %158, float %5933, float %5913
  %5936 = select i1 %158, float %5932, float %5914
  %5937 = icmp slt i32 %5920, 0
  %5938 = fsub fast float %5926, %116
  %5939 = fsub fast float %5927, %117
  %5940 = fsub fast float %5928, %118
  %5941 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5938, float %5939, float %5940)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = call float @dx.op.unary.f32(i32 24, float %5941)  ; Sqrt(value)
  %5943 = fdiv fast float 1.000000e+00, %5942
  %5944 = fmul fast float %5943, %5938
  %5945 = fmul fast float %5943, %5939
  %5946 = fmul fast float %5943, %5940
  %5947 = fadd fast float %5942, %5917
  %5948 = fdiv fast float 1.000000e+00, %5947
  %5949 = fmul float %5923, %5948
  %5950 = fmul float %5949, %5949
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = and i32 %5908, %5894
  %5953 = icmp eq i32 %5952, 0
  br i1 %5953, label %5976, label %5954, !dx.controlflow.hints !74

; <label>:5954                                    ; preds = %5897
  %5955 = lshr i32 %5842, 5
  %5956 = lshr i32 %5843, 5
  %5957 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5955, i32 %5956, i32 %5906, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5958 = extractvalue %dx.types.ResRet.i32 %5957, 0
  %5959 = and i32 %5958, 3
  %5960 = icmp eq i32 %5959, 0
  %5961 = select i1 %5960, float 1.000000e+00, float 0.000000e+00
  %5962 = icmp eq i32 %5959, 3
  br i1 %5962, label %5963, label %5976

; <label>:5963                                    ; preds = %5954
  %5964 = lshr i32 %5958, 10
  %5965 = and i32 %5964, 8160
  %5966 = and i32 %5843, 31
  %5967 = or i32 %5965, %5966
  %5968 = lshr i32 %5958, 1
  %5969 = and i32 %5968, 16352
  %5970 = and i32 %5842, 31
  %5971 = or i32 %5969, %5970
  %5972 = lshr i32 %5958, 23
  %5973 = and i32 %5972, 255
  %5974 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5971, i32 %5967, i32 %5973, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  br label %5976

; <label>:5976                                    ; preds = %5963, %5954, %5897
  %5977 = phi float [ %5975, %5963 ], [ %5961, %5954 ], [ 0.000000e+00, %5897 ]
  %5978 = call float @dx.op.binary.f32(i32 36, float %5977, float %5977)  ; FMin(a,b)
  %5979 = call float @dx.op.binary.f32(i32 36, float %5977, float %5978)  ; FMin(a,b)
  %5980 = fcmp fast ogt float %5979, 0.000000e+00
  br i1 %5980, label %5989, label %5981, !dx.controlflow.hints !75

; <label>:5981                                    ; preds = %6368, %5976
  %5982 = phi float [ %5899, %5976 ], [ %6427, %6368 ]
  %5983 = phi float [ %5900, %5976 ], [ %6428, %6368 ]
  %5984 = phi float [ %5901, %5976 ], [ %6429, %6368 ]
  %5985 = phi float [ %5902, %5976 ], [ %6421, %6368 ]
  %5986 = phi float [ %5903, %5976 ], [ %6422, %6368 ]
  %5987 = phi float [ %5904, %5976 ], [ %6423, %6368 ]
  %5988 = icmp eq i32 %5898, %5908
  br i1 %5988, label %6430, label %5897

; <label>:5989                                    ; preds = %5976
  %5990 = fmul fast float %5977, %5934
  %5991 = fmul fast float %5977, %5935
  %5992 = fmul fast float %5977, %5936
  %5993 = fsub fast float %5928, %5230
  %5994 = fcmp fast ogt float %5993, 0.000000e+00
  %5995 = fsub fast float %118, %5230
  %5996 = fcmp fast ogt float %5995, 0.000000e+00
  %5997 = xor i1 %5996, %5994
  %5998 = fsub fast float %5230, %5928
  %5999 = fmul fast float %5998, 2.000000e+00
  %6000 = fadd fast float %5999, %5928
  %6001 = select i1 %5997, float %5928, float %6000
  %6002 = fsub fast float %6001, %118
  %6003 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %6002, float %5938, float %5939, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = call float @dx.op.unary.f32(i32 25, float %6003)  ; Rsqrt(value)
  %6005 = fmul fast float %6004, %5938
  %6006 = fmul fast float %6004, %5939
  %6007 = fmul fast float %6004, %6002
  %6008 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6005, float %6006, float %6007)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = fdiv fast float 1.000000e+00, %6009
  %6011 = fmul fast float %6010, %6008
  %6012 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5995, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = fcmp fast ogt float %6012, 0.000000e+00
  %6014 = fcmp fast olt float %6012, 0.000000e+00
  %6015 = zext i1 %6013 to i32
  %6016 = zext i1 %6014 to i32
  %6017 = sub nsw i32 %6015, %6016
  %6018 = sitofp i32 %6017 to float
  %6019 = fsub fast float %6001, %5230
  %6020 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %6019, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = fcmp fast ogt float %6020, 0.000000e+00
  %6022 = fcmp fast olt float %6020, 0.000000e+00
  %6023 = zext i1 %6021 to i32
  %6024 = zext i1 %6022 to i32
  %6025 = sub nsw i32 %6023, %6024
  %6026 = sitofp i32 %6025 to float
  %6027 = fcmp fast une float %6018, %6026
  br i1 %6027, label %6028, label %6038

; <label>:6028                                    ; preds = %5989
  %6029 = fmul fast float %6011, %6007
  %6030 = fmul fast float %6011, %6006
  %6031 = fmul fast float %6011, %6005
  %6032 = fmul fast float %6031, %6031
  %6033 = fmul fast float %6030, %6030
  %6034 = fadd fast float %6032, %6033
  %6035 = fmul fast float %6029, %6029
  %6036 = fadd fast float %6034, %6035
  %6037 = call float @dx.op.unary.f32(i32 24, float %6036)  ; Sqrt(value)
  br label %6050

; <label>:6038                                    ; preds = %5989
  %6039 = icmp slt i32 %6017, 0
  br i1 %6039, label %6040, label %6050

; <label>:6040                                    ; preds = %6038
  %6041 = fsub fast float %116, %5926
  %6042 = fsub fast float %117, %5927
  %6043 = fsub fast float %118, %6001
  %6044 = fmul fast float %6041, %6041
  %6045 = fmul fast float %6042, %6042
  %6046 = fadd fast float %6044, %6045
  %6047 = fmul fast float %6043, %6043
  %6048 = fadd fast float %6046, %6047
  %6049 = call float @dx.op.unary.f32(i32 24, float %6048)  ; Sqrt(value)
  br label %6050

; <label>:6050                                    ; preds = %6040, %6038, %6028
  %6051 = phi float [ %6037, %6028 ], [ %6049, %6040 ], [ 0.000000e+00, %6038 ]
  %6052 = and i1 %5996, %5994
  %6053 = fsub fast float -0.000000e+00, %6051
  %6054 = select i1 %6052, float -0.000000e+00, float %6053
  %6055 = fmul fast float %5231, 0x3FF7154760000000
  %6056 = fmul fast float %6055, %6054
  %6057 = fmul fast float %5232, 0x3FF7154760000000
  %6058 = fmul fast float %6057, %6054
  %6059 = fmul fast float %5233, 0x3FF7154760000000
  %6060 = fmul fast float %6059, %6054
  %6061 = call float @dx.op.unary.f32(i32 21, float %6056)  ; Exp(value)
  %6062 = call float @dx.op.unary.f32(i32 21, float %6058)  ; Exp(value)
  %6063 = call float @dx.op.unary.f32(i32 21, float %6060)  ; Exp(value)
  %6064 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6065 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = fmul fast float %5990, %6064
  %6068 = fmul fast float %5991, %6065
  %6069 = fmul fast float %5992, %6066
  %6070 = fsub fast float %5944, %5430
  %6071 = fsub fast float %5945, %5429
  %6072 = fsub fast float %5946, %5428
  %6073 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %6070, float %6071, float %6072)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = call float @dx.op.unary.f32(i32 25, float %6073)  ; Rsqrt(value)
  %6075 = fmul fast float %6074, %6070
  %6076 = fmul fast float %6074, %6071
  %6077 = fmul fast float %6074, %6072
  %6078 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5945, float %5946, float %5437, float %5438, float %5439)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5426, float %5425, float %6075, float %6076, float %6077)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6081 = fmul fast float %6080, %5951
  %6082 = fmul fast float %6080, %6080
  %6083 = fmul fast float %6082, %5456
  %6084 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6085 = fmul fast float %6081, %6084
  %6086 = bitcast float %5941 to i32
  %6087 = ashr i32 %6086, 1
  %6088 = sub nsw i32 1597463007, %6087
  %6089 = bitcast i32 %6088 to float
  %6090 = fmul fast float %6089, %5938
  %6091 = fmul fast float %6089, %5939
  %6092 = fmul fast float %6089, %5940
  %6093 = fsub fast float %6090, %5430
  %6094 = fsub fast float %6091, %5429
  %6095 = fsub fast float %6092, %5428
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6093, float %6094, float %6095, float %6093, float %6094, float %6095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call float @dx.op.unary.f32(i32 25, float %6096)  ; Rsqrt(value)
  %6098 = fmul fast float %6093, %6097
  %6099 = fmul fast float %6094, %6097
  %6100 = fmul fast float %6095, %6097
  %6101 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %6098, float %6099, float %6100)  ; Dot3(ax,ay,az,bx,by,bz)
  %6102 = fmul fast float %6101, %6101
  %6103 = call float @dx.op.unary.f32(i32 6, float %6078)  ; FAbs(value)
  %6104 = fsub fast float 1.000000e+00, %5440
  %6105 = call float @dx.op.binary.f32(i32 35, float %6104, float 0x3F847AE140000000)  ; FMax(a,b)
  %6106 = fmul fast float %6105, %6105
  %6107 = fmul fast float %6106, %6106
  %6108 = fsub fast float 1.000000e+00, %6107
  %6109 = fmul fast float %5444, %5444
  %6110 = fmul fast float %6109, %6108
  %6111 = fadd fast float %6110, %6107
  %6112 = bitcast float %6111 to i32
  %6113 = ashr i32 %6112, 1
  %6114 = add nsw i32 %6113, 532487669
  %6115 = bitcast i32 %6114 to float
  %6116 = fadd fast float %6115, %5444
  %6117 = fmul fast float %6107, %6102
  %6118 = fsub fast float 1.000000e+00, %6102
  %6119 = fadd fast float %6118, %6117
  %6120 = fmul fast float %6103, %6103
  %6121 = fmul fast float %6120, %6108
  %6122 = fadd fast float %6121, %6107
  %6123 = bitcast float %6122 to i32
  %6124 = ashr i32 %6123, 1
  %6125 = add nsw i32 %6124, 532487669
  %6126 = bitcast i32 %6125 to float
  %6127 = fadd fast float %6126, %6103
  %6128 = fmul fast float %6119, %6119
  %6129 = fmul fast float %6128, %6116
  %6130 = fmul fast float %6129, %6127
  %6131 = fdiv fast float 1.000000e+00, %6130
  %6132 = bitcast float %6107 to i32
  %6133 = sitofp i32 %6132 to float
  %6134 = fmul fast float %6133, 0x3FE7F73180000000
  %6135 = fadd fast float %6134, 0x41AFE27C40000000
  %6136 = fptosi float %6135 to i32
  %6137 = bitcast i32 %6136 to float
  %6138 = fmul fast float %5923, 0x3FD80E9D60000000
  %6139 = fmul fast float %6138, %6089
  %6140 = fadd fast float %6137, %6139
  %6141 = bitcast float %6140 to i32
  %6142 = sub nsw i32 2129859010, %6141
  %6143 = bitcast i32 %6142 to float
  %6144 = fmul fast float %6107, %6131
  %6145 = fmul fast float %6144, %6137
  %6146 = fmul fast float %6145, %6143
  %6147 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = bitcast float %6148 to i32
  %6150 = sitofp i32 %6149 to float
  %6151 = fmul fast float %6150, 5.000000e+00
  %6152 = fadd fast float %6151, 0xC1EFBF8940000000
  %6153 = fptosi float %6152 to i32
  %6154 = bitcast i32 %6153 to float
  %6155 = fsub fast float 1.000000e+00, %5431
  %6156 = fsub fast float 1.000000e+00, %5432
  %6157 = fsub fast float 1.000000e+00, %5442
  %6158 = fmul fast float %6154, %6155
  %6159 = fmul fast float %6154, %6156
  %6160 = fmul fast float %6154, %6157
  %6161 = fadd fast float %6158, %5431
  %6162 = fadd fast float %6159, %5432
  %6163 = fadd fast float %6160, %5442
  %6164 = fcmp fast ogt float %4800, 0.000000e+00
  br i1 %6164, label %6165, label %6188

; <label>:6165                                    ; preds = %6050
  %6166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4800, float %6147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6167 = extractvalue %dx.types.ResRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.ResRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.ResRet.f32 %6166, 2
  %6170 = fadd fast float %6167, -5.000000e-01
  %6171 = fadd fast float %6168, -5.000000e-01
  %6172 = fadd fast float %6169, -5.000000e-01
  %6173 = fmul fast float %5431, 4.000000e+00
  %6174 = fmul fast float %6173, %6155
  %6175 = fmul fast float %6174, %6170
  %6176 = fmul fast float %5432, 4.000000e+00
  %6177 = fmul fast float %6176, %6156
  %6178 = fmul fast float %6177, %6171
  %6179 = fmul fast float %5442, 4.000000e+00
  %6180 = fmul fast float %6179, %6157
  %6181 = fmul fast float %6180, %6172
  %6182 = fadd fast float %6175, %6161
  %6183 = fadd fast float %6178, %6162
  %6184 = fadd fast float %6181, %6163
  %6185 = call float @dx.op.unary.f32(i32 7, float %6182)  ; Saturate(value)
  %6186 = call float @dx.op.unary.f32(i32 7, float %6183)  ; Saturate(value)
  %6187 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  br label %6188

; <label>:6188                                    ; preds = %6165, %6050
  %6189 = phi float [ %6185, %6165 ], [ %6161, %6050 ]
  %6190 = phi float [ %6186, %6165 ], [ %6162, %6050 ]
  %6191 = phi float [ %6187, %6165 ], [ %6163, %6050 ]
  %6192 = fmul fast float %6078, 9.843750e-01
  %6193 = fmul fast float %5440, 9.843750e-01
  %6194 = fadd fast float %6192, 7.812500e-03
  %6195 = fadd fast float %6193, 7.812500e-03
  %6196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6194, float %6195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6197 = extractvalue %dx.types.ResRet.f32 %6196, 2
  %6198 = extractvalue %dx.types.ResRet.f32 %6196, 3
  %6199 = fmul fast float %6197, %5431
  %6200 = fmul fast float %6197, %5432
  %6201 = fmul fast float %6197, %5442
  %6202 = fadd fast float %6199, %6198
  %6203 = fadd fast float %6200, %6198
  %6204 = fadd fast float %6201, %6198
  br i1 %6164, label %6205, label %6228

; <label>:6205                                    ; preds = %6188
  %6206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4800, float %6078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = fadd fast float %6207, -5.000000e-01
  %6211 = fadd fast float %6208, -5.000000e-01
  %6212 = fadd fast float %6209, -5.000000e-01
  %6213 = fmul fast float %5431, 4.000000e+00
  %6214 = fmul fast float %6213, %6155
  %6215 = fmul fast float %6214, %6210
  %6216 = fmul fast float %5432, 4.000000e+00
  %6217 = fmul fast float %6216, %6156
  %6218 = fmul fast float %6217, %6211
  %6219 = fmul fast float %5442, 4.000000e+00
  %6220 = fmul fast float %6219, %6157
  %6221 = fmul fast float %6220, %6212
  %6222 = fadd fast float %6215, %6202
  %6223 = fadd fast float %6218, %6203
  %6224 = fadd fast float %6221, %6204
  %6225 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6226 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6227 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  br label %6228

; <label>:6228                                    ; preds = %6205, %6188
  %6229 = phi float [ %6225, %6205 ], [ %6202, %6188 ]
  %6230 = phi float [ %6226, %6205 ], [ %6203, %6188 ]
  %6231 = phi float [ %6227, %6205 ], [ %6204, %6188 ]
  %6232 = call float @dx.op.binary.f32(i32 35, float %6230, float %6231)  ; FMax(a,b)
  %6233 = call float @dx.op.binary.f32(i32 35, float %6229, float %6232)  ; FMax(a,b)
  %6234 = fsub fast float 1.000000e+00, %6233
  %6235 = call float @dx.op.binary.f32(i32 35, float %6103, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6236 = fdiv fast float %4154, %6235
  %6237 = fcmp fast olt float %4849, 1.270000e+02
  %6238 = fcmp fast olt float %4850, 1.270000e+02
  %6239 = fcmp fast olt float %4851, 1.270000e+02
  %6240 = fmul fast float %4849, 0xBFF7154760000000
  %6241 = fmul fast float %6240, %6236
  %6242 = fmul fast float %4850, 0xBFF7154760000000
  %6243 = fmul fast float %6242, %6236
  %6244 = fmul fast float %4851, 0xBFF7154760000000
  %6245 = fmul fast float %6244, %6236
  %6246 = call float @dx.op.unary.f32(i32 21, float %6241)  ; Exp(value)
  %6247 = call float @dx.op.unary.f32(i32 21, float %6243)  ; Exp(value)
  %6248 = call float @dx.op.unary.f32(i32 21, float %6245)  ; Exp(value)
  %6249 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6250 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6251 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6252 = select i1 %6237, float %6249, float 0.000000e+00
  %6253 = select i1 %6238, float %6250, float 0.000000e+00
  %6254 = select i1 %6239, float %6251, float 0.000000e+00
  %6255 = fsub fast float -0.000000e+00, %5437
  %6256 = fsub fast float -0.000000e+00, %5438
  %6257 = fsub fast float -0.000000e+00, %5439
  %6258 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5945, float %5946, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6259 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6260 = fmul fast float %6259, %5951
  %6261 = fmul fast float %6259, 9.843750e-01
  %6262 = fadd fast float %6261, 7.812500e-03
  %6263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6262, float %6195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 2
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 3
  %6266 = fmul fast float %6264, %5431
  %6267 = fmul fast float %6264, %5432
  %6268 = fmul fast float %6264, %5442
  %6269 = fadd fast float %6266, %6265
  %6270 = fadd fast float %6267, %6265
  %6271 = fadd fast float %6268, %6265
  br i1 %6164, label %6272, label %6295

; <label>:6272                                    ; preds = %6228
  %6273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4800, float %6259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = fadd fast float %6274, -5.000000e-01
  %6278 = fadd fast float %6275, -5.000000e-01
  %6279 = fadd fast float %6276, -5.000000e-01
  %6280 = fmul fast float %5431, 4.000000e+00
  %6281 = fmul fast float %6280, %6155
  %6282 = fmul fast float %6281, %6277
  %6283 = fmul fast float %5432, 4.000000e+00
  %6284 = fmul fast float %6283, %6156
  %6285 = fmul fast float %6284, %6278
  %6286 = fmul fast float %5442, 4.000000e+00
  %6287 = fmul fast float %6286, %6157
  %6288 = fmul fast float %6287, %6279
  %6289 = fadd fast float %6282, %6269
  %6290 = fadd fast float %6285, %6270
  %6291 = fadd fast float %6288, %6271
  %6292 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6293 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6294 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  br label %6295

; <label>:6295                                    ; preds = %6272, %6228
  %6296 = phi float [ %6292, %6272 ], [ %6269, %6228 ]
  %6297 = phi float [ %6293, %6272 ], [ %6270, %6228 ]
  %6298 = phi float [ %6294, %6272 ], [ %6271, %6228 ]
  %6299 = call float @dx.op.binary.f32(i32 35, float %6297, float %6298)  ; FMax(a,b)
  %6300 = call float @dx.op.binary.f32(i32 35, float %6296, float %6299)  ; FMax(a,b)
  %6301 = fsub fast float 1.000000e+00, %6300
  %6302 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = fmul fast float %5432, 0x4012D0A400000000
  %6304 = fadd fast float %6303, 0x3FDB6377A0000000
  %6305 = fmul fast float %6104, %6304
  %6306 = fadd fast float %6302, %6305
  %6307 = call float @dx.op.unary.f32(i32 7, float %6306)  ; Saturate(value)
  %6308 = fsub fast float %6090, %5450
  %6309 = fsub fast float %6091, %5451
  %6310 = fsub fast float %6092, %5452
  %6311 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6308, float %6309, float %6310)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = call float @dx.op.unary.f32(i32 25, float %6311)  ; Rsqrt(value)
  %6313 = fmul fast float %6308, %6312
  %6314 = fmul fast float %6309, %6312
  %6315 = fmul fast float %6310, %6312
  %6316 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %6313, float %6314, float %6315)  ; Dot3(ax,ay,az,bx,by,bz)
  %6317 = fmul fast float %6316, %6316
  %6318 = call float @dx.op.unary.f32(i32 6, float %6259)  ; FAbs(value)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6307, float 0x3F847AE140000000)  ; FMax(a,b)
  %6320 = fmul fast float %6319, %6319
  %6321 = fmul fast float %6320, %6320
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = fmul fast float %6109, %6322
  %6324 = fadd fast float %6323, %6321
  %6325 = bitcast float %6324 to i32
  %6326 = ashr i32 %6325, 1
  %6327 = add nsw i32 %6326, 532487669
  %6328 = bitcast i32 %6327 to float
  %6329 = fadd fast float %6328, %5444
  %6330 = fmul fast float %6321, %6317
  %6331 = fsub fast float 1.000000e+00, %6317
  %6332 = fadd fast float %6331, %6330
  %6333 = fmul fast float %6318, %6318
  %6334 = fmul fast float %6333, %6322
  %6335 = fadd fast float %6334, %6321
  %6336 = bitcast float %6335 to i32
  %6337 = ashr i32 %6336, 1
  %6338 = add nsw i32 %6337, 532487669
  %6339 = bitcast i32 %6338 to float
  %6340 = fadd fast float %6339, %6318
  %6341 = fmul fast float %6332, %6332
  %6342 = fmul fast float %6341, %6329
  %6343 = fmul fast float %6342, %6340
  %6344 = fdiv fast float 1.000000e+00, %6343
  %6345 = bitcast float %6321 to i32
  %6346 = sitofp i32 %6345 to float
  %6347 = fmul fast float %6346, 0x3FE7F73180000000
  %6348 = fadd fast float %6347, 0x41AFE27C40000000
  %6349 = fptosi float %6348 to i32
  %6350 = bitcast i32 %6349 to float
  %6351 = fadd fast float %6350, %6139
  %6352 = bitcast float %6351 to i32
  %6353 = sub nsw i32 2129859010, %6352
  %6354 = bitcast i32 %6353 to float
  %6355 = fmul fast float %6321, %6344
  %6356 = fmul fast float %6355, %6350
  %6357 = fmul fast float %6356, %6354
  br i1 %5937, label %6358, label %6368

; <label>:6358                                    ; preds = %6295
  %6359 = fmul fast float %6260, %6252
  %6360 = fmul fast float %6260, %6253
  %6361 = fmul fast float %6260, %6254
  %6362 = fmul fast float %6359, %6301
  %6363 = fmul fast float %6362, %6357
  %6364 = fmul fast float %6360, %6301
  %6365 = fmul fast float %6364, %6357
  %6366 = fmul fast float %6361, %6301
  %6367 = fmul fast float %6366, %6357
  br label %6368

; <label>:6368                                    ; preds = %6358, %6295
  %6369 = phi float [ %6363, %6358 ], [ 0.000000e+00, %6295 ]
  %6370 = phi float [ %6365, %6358 ], [ 0.000000e+00, %6295 ]
  %6371 = phi float [ %6367, %6358 ], [ 0.000000e+00, %6295 ]
  %6372 = fmul fast float %6189, %6146
  %6373 = fmul fast float %6190, %6146
  %6374 = fmul fast float %6191, %6146
  %6375 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6376 = fcmp fast ogt float %6375, 0x3E7FF19E20000000
  %6377 = fdiv fast float 1.000000e+00, %6375
  %6378 = select i1 %6376, float %6377, float 0.000000e+00
  %6379 = fmul fast float %6378, %5434
  %6380 = fmul fast float %6378, %5435
  %6381 = fmul fast float %6378, %5436
  %6382 = fadd fast float %6379, -1.000000e+00
  %6383 = fadd fast float %6380, -1.000000e+00
  %6384 = fadd fast float %6381, -1.000000e+00
  %6385 = fmul fast float %6382, 5.000000e-01
  %6386 = fmul fast float %6383, 5.000000e-01
  %6387 = fmul fast float %6384, 5.000000e-01
  %6388 = fadd fast float %6385, 1.000000e+00
  %6389 = fadd fast float %6386, 1.000000e+00
  %6390 = fadd fast float %6387, 1.000000e+00
  %6391 = fsub fast float 1.000000e+00, %6079
  %6392 = bitcast float %6391 to i32
  %6393 = sitofp i32 %6392 to float
  %6394 = fmul fast float %6393, 5.000000e+00
  %6395 = fadd fast float %6394, 0xC1EFBF8940000000
  %6396 = fptosi float %6395 to i32
  %6397 = bitcast i32 %6396 to float
  %6398 = fmul fast float %6397, %4801
  %6399 = fmul fast float %6234, %6398
  %6400 = fmul fast float %6399, %6388
  %6401 = fmul fast float %6399, %6389
  %6402 = fmul fast float %6399, %6390
  %6403 = fadd fast float %6400, %6372
  %6404 = fadd fast float %6401, %6373
  %6405 = fadd fast float %6402, %6374
  %6406 = fmul fast float %6403, %6085
  %6407 = fmul fast float %6404, %6085
  %6408 = fmul fast float %6405, %6085
  %6409 = fadd fast float %6406, %6369
  %6410 = fadd fast float %6407, %6370
  %6411 = fadd fast float %6408, %6371
  %6412 = fmul fast float %6067, %4797
  %6413 = fmul fast float %6412, %6085
  %6414 = fmul fast float %6413, %6234
  %6415 = fmul fast float %6068, %4797
  %6416 = fmul fast float %6415, %6085
  %6417 = fmul fast float %6416, %6234
  %6418 = fmul fast float %6069, %4797
  %6419 = fmul fast float %6418, %6085
  %6420 = fmul fast float %6419, %6234
  %6421 = fadd fast float %6414, %5902
  %6422 = fadd fast float %6417, %5903
  %6423 = fadd fast float %6420, %5904
  %6424 = fmul fast float %6412, %6409
  %6425 = fmul fast float %6415, %6410
  %6426 = fmul fast float %6418, %6411
  %6427 = fadd fast float %6424, %5899
  %6428 = fadd fast float %6425, %5900
  %6429 = fadd fast float %6426, %5901
  br label %5981

; <label>:6430                                    ; preds = %5981
  br label %6431

; <label>:6431                                    ; preds = %6430, %5865
  %6432 = phi float [ %5867, %5865 ], [ %5982, %6430 ]
  %6433 = phi float [ %5868, %5865 ], [ %5983, %6430 ]
  %6434 = phi float [ %5869, %5865 ], [ %5984, %6430 ]
  %6435 = phi float [ %5870, %5865 ], [ %5985, %6430 ]
  %6436 = phi float [ %5871, %5865 ], [ %5986, %6430 ]
  %6437 = phi float [ %5872, %5865 ], [ %5987, %6430 ]
  %6438 = add i32 %5866, 1
  %6439 = icmp ugt i32 %6438, %5862
  br i1 %6439, label %6440, label %5865

; <label>:6440                                    ; preds = %6431
  br label %6441

; <label>:6441                                    ; preds = %6440, %5841, %5831
  %6442 = phi float [ %5832, %5831 ], [ %5832, %5841 ], [ %6432, %6440 ]
  %6443 = phi float [ %5833, %5831 ], [ %5833, %5841 ], [ %6433, %6440 ]
  %6444 = phi float [ %5834, %5831 ], [ %5834, %5841 ], [ %6434, %6440 ]
  %6445 = phi float [ %5835, %5831 ], [ %5835, %5841 ], [ %6435, %6440 ]
  %6446 = phi float [ %5836, %5831 ], [ %5836, %5841 ], [ %6436, %6440 ]
  %6447 = phi float [ %5837, %5831 ], [ %5837, %5841 ], [ %6437, %6440 ]
  %6448 = call float @dx.op.unary.f32(i32 24, float %5434)  ; Sqrt(value)
  %6449 = call float @dx.op.unary.f32(i32 24, float %5435)  ; Sqrt(value)
  %6450 = call float @dx.op.unary.f32(i32 24, float %5436)  ; Sqrt(value)
  %6451 = fmul fast float %6448, %6445
  %6452 = fmul fast float %6449, %6446
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  br i1 %158, label %6455, label %6476

; <label>:6455                                    ; preds = %6441
  %6456 = fadd fast float %6447, %4803
  %6457 = fmul fast float %6456, %4804
  %6458 = fsub fast float 1.000000e+00, %4804
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 3
  %6462 = fmul fast float %6461, %6459
  %6463 = fadd fast float %6462, %6457
  %6464 = fsub fast float 1.000000e+00, %5444
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = fmul fast float %6466, %6464
  %6468 = fsub fast float %6463, %6467
  %6469 = fadd fast float %6452, %6451
  %6470 = fmul fast float %6454, %6469
  %6471 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6472 = fsub fast float %6468, %6471
  %6473 = extractvalue %dx.types.CBufRet.f32 %6460, 2
  %6474 = fmul fast float %6472, %6473
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  br label %6492

; <label>:6476                                    ; preds = %6441
  %6477 = fmul fast float %6450, %6447
  %6478 = fmul fast float %6454, %6451
  %6479 = fmul fast float %6454, %6452
  %6480 = fmul fast float %6477, %6454
  %6481 = add i32 %33, 356
  %6482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6481, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.i32 %6482, 0
  %6484 = and i32 %6483, 32
  %6485 = icmp eq i32 %6484, 0
  br i1 %6485, label %6492, label %6486

; <label>:6486                                    ; preds = %6476
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = fmul fast float %6488, 0x3FE99999A0000000
  %6490 = fadd fast float %6488, %6478
  %6491 = fadd fast float %6489, %6480
  br label %6492

; <label>:6492                                    ; preds = %6486, %6476, %6455
  %6493 = phi float [ %6470, %6455 ], [ %6490, %6486 ], [ %6478, %6476 ]
  %6494 = phi float [ %6475, %6455 ], [ %6479, %6486 ], [ %6479, %6476 ]
  %6495 = phi float [ 1.000000e+00, %6455 ], [ %6491, %6486 ], [ %6480, %6476 ]
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = fmul fast float %6497, %6443
  %6499 = fmul fast float %6497, %6444
  %6500 = fadd fast float %6443, %6442
  %6501 = select i1 %158, float %6500, float %6442
  %6502 = fmul float %6501, %6497
  %6503 = select i1 %158, float 0.000000e+00, float %6498
  %6504 = select i1 %158, float 0.000000e+00, float %6499
  %6505 = fmul fast float %6493, %6448
  %6506 = fmul fast float %6494, %6449
  %6507 = fmul fast float %6495, %6450
  %6508 = fadd fast float %6502, %6505
  %6509 = fadd fast float %6503, %6506
  %6510 = fadd fast float %6504, %6507
  %6511 = select i1 %158, float %6494, float %6509
  %6512 = select i1 %158, float %6495, float %6510
  %6513 = call float @dx.op.binary.f32(i32 36, float %6508, float 3.225500e+04)  ; FMin(a,b)
  %6514 = call float @dx.op.binary.f32(i32 36, float %6511, float 3.225500e+04)  ; FMin(a,b)
  %6515 = call float @dx.op.binary.f32(i32 36, float %6512, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6514)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6515)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{!42, !43, !44, !45, !46}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !72}
!49 = !{!50, !70, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, !55}
!55 = !{i32 3, i32 14}
!56 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 2, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 3, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 4, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!61 = !{i32 3, i32 15}
!62 = !{i32 5, !"SH_RED", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!63 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!64 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 7, i8 0, null}
!65 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 8, i8 0, !57}
!66 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 9, i8 0, !61}
!67 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 10, i8 0, !68}
!68 = !{i32 3, i32 13}
!69 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

