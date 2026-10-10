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
; shader hash: 00e3d925da0d0668173c4d506dea2a67
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fmul fast float %67, %61
  %69 = fmul fast float %67, %62
  %70 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = bitcast float %70 to i32
  %72 = ashr i32 %71, 1
  %73 = sub nsw i32 1597250115, %72
  %74 = bitcast i32 %73 to float
  %75 = fmul fast float %74, %53
  %76 = fmul fast float %74, %54
  %77 = fmul fast float %74, %55
  %78 = fmul fast float %54, %51
  %79 = fmul fast float %55, %50
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %55, %49
  %82 = fmul fast float %53, %51
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %53, %50
  %85 = fmul fast float %54, %49
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %80, %52
  %88 = fmul fast float %83, %52
  %89 = fmul fast float %86, %52
  %90 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = bitcast float %90 to i32
  %92 = ashr i32 %91, 1
  %93 = sub nsw i32 1597250115, %92
  %94 = bitcast i32 %93 to float
  %95 = fmul fast float %94, %42
  %96 = fmul fast float %94, %43
  %97 = fmul fast float %94, %44
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %68, 2.000000e+00
  %102 = fmul fast float %101, %99
  %103 = fmul fast float %69, 2.000000e+00
  %104 = fmul fast float %103, %100
  %105 = fsub fast float 1.000000e+00, %102
  %106 = fsub fast float 1.000000e+00, %104
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %105, %108
  %112 = fmul fast float %105, %109
  %113 = fmul fast float %105, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %106, %115
  %119 = fmul fast float %106, %116
  %120 = fmul fast float %106, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fadd fast float %118, %122
  %126 = fadd fast float %125, %111
  %127 = fadd fast float %119, %123
  %128 = fadd fast float %127, %112
  %129 = fadd fast float %120, %124
  %130 = fadd fast float %129, %113
  %131 = fmul fast float %126, %63
  %132 = fmul fast float %128, %63
  %133 = fmul fast float %130, %63
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %68
  %138 = fmul fast float %136, %69
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 114688
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, float %137, float 0.000000e+00
  %144 = select i1 %142, float %138, float 0.000000e+00
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, 2.550000e+02
  %148 = fptoui float %147 to i32
  %149 = select i1 %142, i32 %148, i32 0
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 3
  %153 = and i32 %152, 3
  %154 = icmp ne i32 %153, 0
  %155 = and i32 %152, 4
  %156 = icmp ne i32 %155, 0
  %157 = and i1 %154, %156
  br i1 %157, label %158, label %169

; <label>:158                                     ; preds = %0
  %159 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %160 = fmul fast float %159, %69
  %161 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %162 = fmul fast float %161, %68
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %162, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = fsub fast float 1.000000e+00, %164
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = fcmp fast olt float %165, %167
  br label %172

; <label>:169                                     ; preds = %0
  %170 = icmp eq i32 %155, 0
  %171 = and i1 %154, %170
  br label %172

; <label>:172                                     ; preds = %169, %158
  %173 = phi i1 [ %168, %158 ], [ %171, %169 ]
  %174 = add i32 %33, 156
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = shl i32 %176, 4
  %178 = and i32 %177, 32752
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %176, 7
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %176, 22
  %184 = shl nuw nsw i32 %183, 5
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = add i32 %33, 216
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F70101020000000
  %192 = lshr i32 %188, 8
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = lshr i32 %188, 16
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F70101020000000
  %200 = add i32 %33, 36
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 65535
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %202, 16
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = add i32 %33, 288
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = and i32 %209, 65535
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %209, 16
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = fmul fast float %211, 0x3F50624DE0000000
  %215 = fmul fast float %213, 0x3F50624DE0000000
  %216 = add i32 %33, 172
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = shl i32 %218, 4
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %218, 7
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %218, 22
  %226 = shl nuw nsw i32 %225, 5
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add i32 %33, 232
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %230, 8
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %230, 16
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = add i32 %33, 52
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = add i32 %33, 304
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = fmul fast float %253, 0x3F50624DE0000000
  %257 = fmul fast float %255, 0x3F50624DE0000000
  %258 = add i32 %33, 188
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = shl i32 %260, 4
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %260, 7
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %260, 22
  %268 = shl nuw nsw i32 %267, 5
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = add i32 %33, 248
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %272, 8
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %272, 16
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = add i32 %33, 68
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %33, 320
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %295, 0x3F50624DE0000000
  %299 = fmul fast float %297, 0x3F50624DE0000000
  %300 = add i32 %33, 204
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = shl i32 %302, 4
  %304 = and i32 %303, 32752
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %302, 7
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %302, 22
  %310 = shl nuw nsw i32 %309, 5
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %33, 264
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = lshr i32 %314, 8
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %314, 16
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = add i32 %33, 84
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %33, 336
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = fmul fast float %337, 0x3F50624DE0000000
  %341 = fmul fast float %339, 0x3F50624DE0000000
  %342 = add i32 %33, 348
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 32
  %346 = icmp eq i32 %345, 0
  %347 = and i32 %344, 64
  %348 = icmp eq i32 %347, 0
  %349 = and i32 %344, 128
  %350 = icmp eq i32 %349, 0
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %368, label %355

; <label>:355                                     ; preds = %172
  %356 = add i32 %33, 492
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = fmul fast float %362, %58
  %366 = fmul fast float %363, %59
  %367 = fmul fast float %364, %60
  br label %368

; <label>:368                                     ; preds = %355, %172
  %369 = phi float [ %60, %172 ], [ %367, %355 ]
  %370 = phi float [ %59, %172 ], [ %366, %355 ]
  %371 = phi float [ %58, %172 ], [ %365, %355 ]
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %395, label %376

; <label>:376                                     ; preds = %368
  %377 = add i32 %33, 44
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %371, float 1.000000e+00
  %383 = add i32 %33, 60
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 1
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, float %370, float 1.000000e+00
  %389 = add i32 %33, 76
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 1
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, float %369, float 1.000000e+00
  br label %395

; <label>:395                                     ; preds = %376, %368
  %396 = phi float [ %369, %368 ], [ %394, %376 ]
  %397 = phi float [ %370, %368 ], [ %388, %376 ]
  %398 = phi float [ %371, %368 ], [ %382, %376 ]
  %399 = lshr i32 %373, 20
  %400 = and i32 %399, 3
  %401 = add nuw nsw i32 %400, 1
  %402 = add i32 %33, 24
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %33, 28
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = or i32 %407, %404
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %868, label %410

; <label>:410                                     ; preds = %395
  %411 = and i32 %404, 262144
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %36, float 1.000000e+00
  %414 = select i1 %412, float %37, float 0.000000e+00
  %415 = select i1 %412, float %38, float 0.000000e+00
  %416 = select i1 %412, float %39, float 1.000000e+00
  %417 = select i1 %412, float %40, float %56
  %418 = select i1 %412, float %41, float %57
  %419 = add i32 %33, 284
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = fmul fast float %423, 0x3F50624DE0000000
  %425 = add i32 %33, 88
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = lshr i32 %427, 24
  %431 = add i32 %33, 292
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %33, 32
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = lshr i32 %440, 22
  %442 = shl nuw nsw i32 %441, 5
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = shl i32 %440, 4
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %440, 7
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %452 = fmul fast float %451, 1.000000e+03
  %453 = fmul fast float %214, %452
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fadd fast float %454, %204
  %456 = fmul fast float %215, %452
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fadd fast float %457, %206
  %459 = fmul fast float %424, %452
  %460 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %461 = fmul fast float %460, 0x401921FB60000000
  %462 = fadd fast float %461, %443
  %463 = call float @dx.op.unary.f32(i32 13, float %462)  ; Sin(value)
  %464 = call float @dx.op.unary.f32(i32 12, float %462)  ; Cos(value)
  %465 = fsub fast float -0.000000e+00, %463
  %466 = fadd fast float %417, -5.000000e-01
  %467 = fadd fast float %418, -5.000000e-01
  %468 = fmul fast float %435, %466
  %469 = fmul fast float %437, %467
  %470 = fadd fast float %468, 5.000000e-01
  %471 = fadd fast float %469, 5.000000e-01
  %472 = fmul fast float %446, %470
  %473 = fmul fast float %449, %471
  %474 = fmul fast float %464, %472
  %475 = call float @dx.op.tertiary.f32(i32 46, float %465, float %473, float %474)  ; FMad(a,b,c)
  %476 = fmul fast float %463, %472
  %477 = call float @dx.op.tertiary.f32(i32 46, float %464, float %473, float %476)  ; FMad(a,b,c)
  %478 = fadd fast float %455, %475
  %479 = fadd fast float %458, %477
  %480 = icmp ugt i32 %429, 1
  %481 = icmp ugt i32 %427, 33554431
  %482 = or i1 %481, %480
  br i1 %482, label %483, label %508

; <label>:483                                     ; preds = %410
  %484 = add i32 %33, 228
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = fmul fast float %451, %488
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = mul nuw nsw i32 %429, %430
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %490, %492
  %494 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %495 = fptoui float %494 to i32
  %496 = urem i32 %495, %429
  %497 = udiv i32 %495, %430
  %498 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %499 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %500 = uitofp i32 %496 to float
  %501 = uitofp i32 %497 to float
  %502 = fadd fast float %498, %500
  %503 = fadd fast float %499, %501
  %504 = uitofp i32 %429 to float
  %505 = uitofp i32 %430 to float
  %506 = fdiv fast float %502, %504
  %507 = fdiv fast float %503, %505
  br label %508

; <label>:508                                     ; preds = %483, %410
  %509 = phi float [ %506, %483 ], [ %478, %410 ]
  %510 = phi float [ %507, %483 ], [ %479, %410 ]
  %511 = and i32 %404, 16
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %709, label %513

; <label>:513                                     ; preds = %508
  %514 = add i32 %33, 376
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %518, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = and i32 %427, 255
  %525 = uitofp i32 %524 to float
  %526 = lshr i32 %427, 8
  %527 = and i32 %526, 255
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %523, %525
  %530 = fadd fast float %529, %528
  %531 = fmul fast float %530, 0x3F70101000000000
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 512
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %544, label %536

; <label>:536                                     ; preds = %513
  %537 = add i32 %33, 460
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %539, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %65, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  br label %544

; <label>:544                                     ; preds = %536, %513
  %545 = phi float [ %543, %536 ], [ 1.000000e+00, %513 ]
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 33554432
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %656, label %550

; <label>:550                                     ; preds = %544
  %551 = add i32 %33, 224
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %33, 228
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 24
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = and i32 %564, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = lshr i32 %564, 8
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %564, 16
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = add i32 %33, 220
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = lshr i32 %581, 24
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = and i32 %581, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = lshr i32 %581, 8
  %589 = and i32 %588, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = lshr i32 %581, 16
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = bitcast float %520 to i32
  %597 = ashr i32 %596, 1
  %598 = sub nsw i32 1597463174, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %520, 5.000000e-01
  %601 = fmul fast float %599, %599
  %602 = fmul fast float %601, %600
  %603 = fsub fast float 1.500000e+00, %602
  %604 = fmul fast float %599, %520
  %605 = fmul fast float %604, %603
  %606 = bitcast float %521 to i32
  %607 = ashr i32 %606, 1
  %608 = sub nsw i32 1597463174, %607
  %609 = bitcast i32 %608 to float
  %610 = fmul fast float %521, 5.000000e-01
  %611 = fmul fast float %609, %609
  %612 = fmul fast float %611, %610
  %613 = fsub fast float 1.500000e+00, %612
  %614 = fmul fast float %609, %521
  %615 = fmul fast float %614, %613
  %616 = bitcast float %522 to i32
  %617 = ashr i32 %616, 1
  %618 = sub nsw i32 1597463174, %617
  %619 = bitcast i32 %618 to float
  %620 = fmul fast float %522, 5.000000e-01
  %621 = fmul fast float %619, %619
  %622 = fmul fast float %621, %620
  %623 = fsub fast float 1.500000e+00, %622
  %624 = fmul fast float %619, %522
  %625 = fmul fast float %624, %623
  %626 = fsub fast float %605, %587
  %627 = fsub fast float %615, %591
  %628 = fsub fast float %625, %595
  %629 = fmul fast float %626, %555
  %630 = fmul fast float %627, %557
  %631 = fmul fast float %628, %562
  %632 = fadd fast float %629, %570
  %633 = fadd fast float %630, %574
  %634 = fadd fast float %631, %578
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = fmul fast float %635, %635
  %639 = fmul fast float %636, %636
  %640 = fmul fast float %637, %637
  %641 = fsub fast float %638, %520
  %642 = fsub fast float %639, %521
  %643 = fsub fast float %640, %522
  %644 = fmul fast float %641, %545
  %645 = fmul fast float %642, %545
  %646 = fmul fast float %643, %545
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %645, %521
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %567, %531
  %651 = fsub fast float %650, %584
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = fsub fast float %652, %531
  %654 = fmul fast float %653, %545
  %655 = fadd fast float %654, %531
  br label %709

; <label>:656                                     ; preds = %544
  %657 = and i32 %547, 134217728
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %693, label %659

; <label>:659                                     ; preds = %656
  %660 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %662 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fadd fast float %661, -5.000000e-01
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fmul fast float %663, %545
  %667 = fmul fast float %664, %545
  %668 = fmul fast float %665, %545
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = fadd fast float %668, 5.000000e-01
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = fmul fast float %669, 2.000000e+00
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %672
  %678 = fadd fast float %677, %675
  %679 = fmul fast float %678, %672
  %680 = fmul fast float %670, 2.000000e+00
  %681 = fsub fast float 1.000000e+00, %680
  %682 = fmul fast float %681, %673
  %683 = fadd fast float %682, %680
  %684 = fmul fast float %683, %673
  %685 = fmul fast float %671, 2.000000e+00
  %686 = fsub fast float 1.000000e+00, %685
  %687 = fmul fast float %686, %674
  %688 = fadd fast float %687, %685
  %689 = fmul fast float %688, %674
  %690 = fmul fast float %679, %679
  %691 = fmul fast float %684, %684
  %692 = fmul fast float %689, %689
  br label %709

; <label>:693                                     ; preds = %656
  %694 = fmul fast float %191, %191
  %695 = fmul fast float %195, %195
  %696 = fmul fast float %199, %199
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fadd fast float %695, -1.000000e+00
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fmul fast float %545, %697
  %701 = fmul fast float %545, %698
  %702 = fmul fast float %545, %699
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fmul fast float %703, %520
  %707 = fmul fast float %704, %521
  %708 = fmul fast float %705, %522
  br label %709

; <label>:709                                     ; preds = %693, %659, %550, %508
  %710 = phi float [ %655, %550 ], [ %531, %659 ], [ %531, %693 ], [ 0x3FA23C0BE0000000, %508 ]
  %711 = phi float [ %647, %550 ], [ %690, %659 ], [ %706, %693 ], [ 1.000000e+00, %508 ]
  %712 = phi float [ %648, %550 ], [ %691, %659 ], [ %707, %693 ], [ 1.000000e+00, %508 ]
  %713 = phi float [ %649, %550 ], [ %692, %659 ], [ %708, %693 ], [ 1.000000e+00, %508 ]
  %714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.i32 %714, 1
  %716 = and i32 %715, 1
  %717 = icmp ne i32 %716, 0
  %718 = add i32 %33, 356
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 32
  %722 = icmp ne i32 %721, 0
  %723 = and i1 %717, %722
  %724 = select i1 %723, float 1.000000e+00, float %711
  %725 = select i1 %723, float 0x3FD3333340000000, float %712
  %726 = select i1 %723, float 0x3FD3333340000000, float %713
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 32
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %803, label %731

; <label>:731                                     ; preds = %709
  %732 = add i32 %33, 92
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %33, 392
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = and i32 %734, 255
  %746 = uitofp i32 %745 to float
  %747 = lshr i32 %734, 8
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %734, 16
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101000000000
  %754 = fmul fast float %741, %746
  %755 = fadd fast float %754, %749
  %756 = fmul fast float %755, 0x3F70101000000000
  %757 = fadd fast float %742, -5.000000e-01
  %758 = fadd fast float %744, -5.000000e-01
  %759 = fmul fast float %757, %753
  %760 = fmul fast float %758, %753
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fmul fast float %761, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fmul fast float %762, 2.000000e+00
  %766 = fadd fast float %765, -1.000000e+00
  %767 = fadd fast float %764, %766
  %768 = fmul fast float %767, 5.000000e-01
  %769 = fsub fast float %764, %766
  %770 = fmul fast float %769, 5.000000e-01
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float 1.000000e+00, %771
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = fsub fast float %772, %773
  %775 = call float @dx.op.dot3.f32(i32 55, float %768, float %770, float %774, float %768, float %770, float %774)  ; Dot3(ax,ay,az,bx,by,bz)
  %776 = call float @dx.op.unary.f32(i32 25, float %775)  ; Rsqrt(value)
  %777 = fmul fast float %768, %776
  %778 = fmul fast float %770, %776
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 67108864
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %799, label %783

; <label>:783                                     ; preds = %731
  %784 = add i32 %33, 280
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 65535
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = lshr i32 %786, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fsub fast float %756, %794
  %796 = fmul fast float %795, %788
  %797 = fadd fast float %796, %792
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  br label %799

; <label>:799                                     ; preds = %783, %731
  %800 = phi float [ %798, %783 ], [ %756, %731 ]
  %801 = call float @dx.op.dot2.f32(i32 54, float %777, float %778, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  %802 = call float @dx.op.dot2.f32(i32 54, float %777, float %778, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  br label %803

; <label>:803                                     ; preds = %799, %709
  %804 = phi float [ %800, %799 ], [ 0x3FD6666660000000, %709 ]
  %805 = phi float [ %801, %799 ], [ 0.000000e+00, %709 ]
  %806 = phi float [ %802, %799 ], [ 0.000000e+00, %709 ]
  %807 = phi float [ %743, %799 ], [ 1.000000e+00, %709 ]
  %808 = add i32 %33, 160
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = lshr i32 %810, 22
  %812 = shl nuw nsw i32 %811, 5
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 64
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %851, label %818

; <label>:818                                     ; preds = %803
  %819 = add i32 %33, 408
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %821, 0
  %823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 131072
  %827 = icmp eq i32 %826, 0
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %823, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = fmul fast float %829, %179
  %833 = fmul fast float %830, %182
  %834 = fmul fast float %831, %185
  br i1 %827, label %841, label %835

; <label>:835                                     ; preds = %818
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = fmul fast float %837, %832
  %839 = fmul fast float %837, %833
  %840 = fmul fast float %837, %834
  br label %841

; <label>:841                                     ; preds = %835, %818
  %842 = phi float [ %838, %835 ], [ %832, %818 ]
  %843 = phi float [ %839, %835 ], [ %833, %818 ]
  %844 = phi float [ %840, %835 ], [ %834, %818 ]
  %845 = fmul fast float %842, %813
  %846 = select i1 %173, float %845, float %842
  %847 = call float @dx.op.dot3.f32(i32 55, float %846, float %843, float %844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = select i1 %173, float 0.000000e+00, float %842
  %849 = select i1 %173, float %847, float %843
  %850 = select i1 %173, float 0.000000e+00, float %844
  br label %851

; <label>:851                                     ; preds = %841, %803
  %852 = phi float [ %848, %841 ], [ 0.000000e+00, %803 ]
  %853 = phi float [ %849, %841 ], [ 0.000000e+00, %803 ]
  %854 = phi float [ %850, %841 ], [ 0.000000e+00, %803 ]
  %855 = add i32 %33, 96
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = lshr i32 %857, 8
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = fmul fast float %862, %863
  %865 = fadd fast float %864, %859
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  br label %868

; <label>:868                                     ; preds = %851, %395
  %869 = phi float [ 0.000000e+00, %395 ], [ %805, %851 ]
  %870 = phi float [ 0.000000e+00, %395 ], [ %806, %851 ]
  %871 = phi float [ 0.000000e+00, %395 ], [ %724, %851 ]
  %872 = phi float [ 0.000000e+00, %395 ], [ %725, %851 ]
  %873 = phi float [ 0.000000e+00, %395 ], [ %726, %851 ]
  %874 = phi float [ 0.000000e+00, %395 ], [ %852, %851 ]
  %875 = phi float [ 0.000000e+00, %395 ], [ %853, %851 ]
  %876 = phi float [ 0.000000e+00, %395 ], [ %854, %851 ]
  %877 = phi float [ 0.000000e+00, %395 ], [ %710, %851 ]
  %878 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %851 ]
  %879 = phi float [ 0.000000e+00, %395 ], [ %804, %851 ]
  %880 = phi float [ 0.000000e+00, %395 ], [ %807, %851 ]
  %881 = phi float [ 0.000000e+00, %395 ], [ %867, %851 ]
  br i1 %346, label %1723, label %882

; <label>:882                                     ; preds = %868
  %883 = icmp ult i32 %401, 2
  %884 = add i32 %33, 40
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = add i32 %33, 44
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = or i32 %889, %886
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %1723, label %892

; <label>:892                                     ; preds = %882
  %893 = and i32 %886, 262144
  %894 = icmp ne i32 %893, 0
  %895 = select i1 %894, float %36, float 1.000000e+00
  %896 = select i1 %894, float %37, float 0.000000e+00
  %897 = select i1 %894, float %38, float 0.000000e+00
  %898 = select i1 %894, float %39, float 1.000000e+00
  %899 = select i1 %894, float %40, float %56
  %900 = select i1 %894, float %41, float %57
  %901 = add i32 %33, 300
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 16
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = fmul fast float %905, 0x3F50624DE0000000
  %907 = add i32 %33, 104
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = lshr i32 %909, 16
  %911 = and i32 %910, 255
  %912 = lshr i32 %909, 24
  %913 = add i32 %33, 308
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %915, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = add i32 %33, 48
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = lshr i32 %922, 22
  %924 = shl nuw nsw i32 %923, 5
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = shl i32 %922, 4
  %927 = and i32 %926, 32752
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %922, 7
  %930 = and i32 %929, 32752
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %934 = fmul fast float %933, 1.000000e+03
  %935 = fmul fast float %256, %934
  %936 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %937 = fadd fast float %936, %246
  %938 = fmul fast float %257, %934
  %939 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %940 = fadd fast float %939, %248
  %941 = fmul fast float %906, %934
  %942 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %943 = fmul fast float %942, 0x401921FB60000000
  %944 = fadd fast float %943, %925
  %945 = call float @dx.op.unary.f32(i32 13, float %944)  ; Sin(value)
  %946 = call float @dx.op.unary.f32(i32 12, float %944)  ; Cos(value)
  %947 = fsub fast float -0.000000e+00, %945
  %948 = fadd fast float %899, -5.000000e-01
  %949 = fadd fast float %900, -5.000000e-01
  %950 = fmul fast float %917, %948
  %951 = fmul fast float %919, %949
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fmul fast float %928, %952
  %955 = fmul fast float %931, %953
  %956 = fmul fast float %946, %954
  %957 = call float @dx.op.tertiary.f32(i32 46, float %947, float %955, float %956)  ; FMad(a,b,c)
  %958 = fmul fast float %945, %954
  %959 = call float @dx.op.tertiary.f32(i32 46, float %946, float %955, float %958)  ; FMad(a,b,c)
  %960 = fadd fast float %937, %957
  %961 = fadd fast float %940, %959
  %962 = icmp ugt i32 %911, 1
  %963 = icmp ugt i32 %909, 33554431
  %964 = or i1 %963, %962
  br i1 %964, label %965, label %990

; <label>:965                                     ; preds = %892
  %966 = add i32 %33, 244
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = fmul fast float %933, %970
  %972 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %973 = mul nuw nsw i32 %911, %912
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %972, %974
  %976 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %977 = fptoui float %976 to i32
  %978 = urem i32 %977, %911
  %979 = udiv i32 %977, %912
  %980 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %981 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %982 = uitofp i32 %978 to float
  %983 = uitofp i32 %979 to float
  %984 = fadd fast float %980, %982
  %985 = fadd fast float %981, %983
  %986 = uitofp i32 %911 to float
  %987 = uitofp i32 %912 to float
  %988 = fdiv fast float %984, %986
  %989 = fdiv fast float %985, %987
  br label %990

; <label>:990                                     ; preds = %965, %892
  %991 = phi float [ %988, %965 ], [ %960, %892 ]
  %992 = phi float [ %989, %965 ], [ %961, %892 ]
  %993 = and i32 %886, 16777216
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1104, label %995

; <label>:995                                     ; preds = %990
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = fadd fast float %997, %131
  %1001 = fadd fast float %998, %132
  %1002 = fadd fast float %999, %133
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = icmp eq i32 %34, 65535
  br i1 %1006, label %1101, label %1007

; <label>:1007                                    ; preds = %995
  %1008 = lshr i32 %34, 1
  %1009 = shl i32 %1008, 2
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %34, 1
  %1013 = icmp ne i32 %1012, 0
  %1014 = lshr i32 %1011, 16
  %1015 = and i32 %1011, 65535
  %1016 = select i1 %1013, i32 %1014, i32 %1015
  %1017 = icmp eq i32 %1016, 65535
  br i1 %1017, label %1097, label %1018

; <label>:1018                                    ; preds = %1007
  %1019 = mul nuw nsw i32 %1016, 40
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = add nuw nsw i32 %1019, 12
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = add nuw nsw i32 %1019, 24
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = add nuw nsw i32 %1019, 36
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = fsub fast float %1000, %1021
  %1038 = fsub fast float %1001, %1022
  %1039 = fsub fast float %1002, %1023
  %1040 = fmul fast float %1036, %1037
  %1041 = fmul fast float %1036, %1038
  %1042 = fmul fast float %1036, %1039
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fmul fast float %1046, %1026
  %1050 = fmul fast float %1047, %1027
  %1051 = fmul fast float %1048, %1028
  %1052 = shl i32 %34, 2
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = add i32 %1054, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1058 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1056, %dx.types.Handle %30, float %1057, float %1058, float %1059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = fmul fast float %1061, 1.023000e+03
  %1065 = fmul fast float %1062, 1.023000e+03
  %1066 = fmul fast float %1063, 1.023000e+03
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = fsub fast float %1040, %1043
  %1074 = fsub fast float %1041, %1044
  %1075 = fsub fast float %1042, %1045
  %1076 = fmul fast float %1073, 7.500000e-01
  %1077 = fmul fast float %1074, 7.500000e-01
  %1078 = fmul fast float %1075, 7.500000e-01
  %1079 = fadd fast float %1043, 1.250000e-01
  %1080 = fadd fast float %1079, %1076
  %1081 = fadd fast float %1080, %1070
  %1082 = fadd fast float %1044, 1.250000e-01
  %1083 = fadd fast float %1082, %1077
  %1084 = fadd fast float %1083, %1071
  %1085 = fadd fast float %1045, 1.250000e-01
  %1086 = fadd fast float %1085, %1078
  %1087 = fadd fast float %1086, %1072
  %1088 = fmul fast float %1081, %1031
  %1089 = fmul fast float %1084, %1032
  %1090 = fmul fast float %1087, %1033
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1094, %dx.types.Handle %28, float %1088, float %1089, float %1090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  br label %1097

; <label>:1097                                    ; preds = %1018, %1007
  %1098 = phi float [ %1096, %1018 ], [ -1.000000e+00, %1007 ]
  %1099 = fadd fast float %1098, %1005
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  br label %1101

; <label>:1101                                    ; preds = %1097, %995
  %1102 = phi float [ %1100, %1097 ], [ %1005, %995 ]
  %1103 = fmul fast float %1102, %398
  br label %1104

; <label>:1104                                    ; preds = %1101, %990
  %1105 = phi float [ %1103, %1101 ], [ %398, %990 ]
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 256
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1156, label %1110

; <label>:1110                                    ; preds = %1104
  %1111 = add i32 %33, 444
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1115, %dx.types.Handle %65, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = add i32 %33, 116
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = shl i32 %1120, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1120, 7
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fsub fast float 1.000000e+00, %1105
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1129 = bitcast float %1105 to i32
  %1130 = sitofp i32 %1129 to float
  %1131 = fadd fast float %1130, 0xC1CFBF8940000000
  %1132 = fmul fast float %1126, %1131
  %1133 = fadd fast float %1132, 0x41CFBF8940000000
  %1134 = fptosi float %1133 to i32
  %1135 = bitcast i32 %1134 to float
  %1136 = bitcast float %1128 to i32
  %1137 = sitofp i32 %1136 to float
  %1138 = fadd fast float %1137, 0xC1CFBF8940000000
  %1139 = fmul fast float %1138, %1126
  %1140 = fadd fast float %1139, 0x41CFBF8940000000
  %1141 = fptosi float %1140 to i32
  %1142 = bitcast i32 %1141 to float
  %1143 = fmul fast float %1135, %1123
  %1144 = fmul fast float %1142, %1123
  %1145 = fsub fast float %1128, %1143
  %1146 = fadd fast float %1144, %1128
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1149 = fsub fast float %1117, %1147
  %1150 = fsub fast float %1148, %1147
  %1151 = bitcast float %1150 to i32
  %1152 = sub nsw i32 2129859010, %1151
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1153, %1149
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  br label %1156

; <label>:1156                                    ; preds = %1110, %1104
  %1157 = phi float [ %1155, %1110 ], [ %1105, %1104 ]
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 128
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1178, label %1162

; <label>:1162                                    ; preds = %1156
  %1163 = add i32 %33, 428
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %65, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 524288
  %1173 = icmp ne i32 %1172, 0
  %1174 = fcmp fast ogt float %1169, 0x3FE0101020000000
  %1175 = select i1 %1174, float 1.000000e+00, float 0.000000e+00
  %1176 = select i1 %1173, float %1175, float %1169
  %1177 = fmul fast float %1176, %1157
  br label %1178

; <label>:1178                                    ; preds = %1162, %1156
  %1179 = phi float [ %1177, %1162 ], [ %1157, %1156 ]
  %1180 = fcmp fast ult float %1179, 0x3F70101020000000
  br i1 %1180, label %1723, label %1181

; <label>:1181                                    ; preds = %1178
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 16
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1384, label %1186

; <label>:1186                                    ; preds = %1181
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %33, 380
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %64, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = and i32 %1188, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = lshr i32 %1188, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1198, %1200
  %1205 = fadd fast float %1204, %1203
  %1206 = fmul fast float %1205, 0x3F70101000000000
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 512
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1219, label %1211

; <label>:1211                                    ; preds = %1186
  %1212 = add i32 %33, 464
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1216, %dx.types.Handle %65, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  br label %1219

; <label>:1219                                    ; preds = %1211, %1186
  %1220 = phi float [ %1218, %1211 ], [ 1.000000e+00, %1186 ]
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 33554432
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1331, label %1225

; <label>:1225                                    ; preds = %1219
  %1226 = add i32 %33, 240
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 65535
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = lshr i32 %1228, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = add i32 %33, 244
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1239, 24
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = and i32 %1239, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = lshr i32 %1239, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1239, 16
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = add i32 %33, 236
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 24
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = and i32 %1256, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = lshr i32 %1256, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = lshr i32 %1256, 16
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = bitcast float %1195 to i32
  %1272 = ashr i32 %1271, 1
  %1273 = sub nsw i32 1597463174, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1195, 5.000000e-01
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1276, %1275
  %1278 = fsub fast float 1.500000e+00, %1277
  %1279 = fmul fast float %1274, %1195
  %1280 = fmul fast float %1279, %1278
  %1281 = bitcast float %1196 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = sub nsw i32 1597463174, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1196, 5.000000e-01
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float 1.500000e+00, %1287
  %1289 = fmul fast float %1284, %1196
  %1290 = fmul fast float %1289, %1288
  %1291 = bitcast float %1197 to i32
  %1292 = ashr i32 %1291, 1
  %1293 = sub nsw i32 1597463174, %1292
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1197, 5.000000e-01
  %1296 = fmul fast float %1294, %1294
  %1297 = fmul fast float %1296, %1295
  %1298 = fsub fast float 1.500000e+00, %1297
  %1299 = fmul fast float %1294, %1197
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float %1280, %1262
  %1302 = fsub fast float %1290, %1266
  %1303 = fsub fast float %1300, %1270
  %1304 = fmul fast float %1301, %1230
  %1305 = fmul fast float %1302, %1232
  %1306 = fmul fast float %1303, %1237
  %1307 = fadd fast float %1304, %1245
  %1308 = fadd fast float %1305, %1249
  %1309 = fadd fast float %1306, %1253
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = fmul fast float %1310, %1310
  %1314 = fmul fast float %1311, %1311
  %1315 = fmul fast float %1312, %1312
  %1316 = fsub fast float %1313, %1195
  %1317 = fsub fast float %1314, %1196
  %1318 = fsub fast float %1315, %1197
  %1319 = fmul fast float %1316, %1220
  %1320 = fmul fast float %1317, %1220
  %1321 = fmul fast float %1318, %1220
  %1322 = fadd fast float %1319, %1195
  %1323 = fadd fast float %1320, %1196
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1242, %1206
  %1326 = fsub fast float %1325, %1259
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fsub fast float %1327, %1206
  %1329 = fmul fast float %1328, %1220
  %1330 = fadd fast float %1329, %1206
  br label %1384

; <label>:1331                                    ; preds = %1219
  %1332 = and i32 %1222, 134217728
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1368, label %1334

; <label>:1334                                    ; preds = %1331
  %1335 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1338 = fadd fast float %1335, -5.000000e-01
  %1339 = fadd fast float %1336, -5.000000e-01
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fmul fast float %1338, %1220
  %1342 = fmul fast float %1339, %1220
  %1343 = fmul fast float %1340, %1220
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = call float @dx.op.unary.f32(i32 24, float %1195)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %1196)  ; Sqrt(value)
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = fmul fast float %1344, 2.000000e+00
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1351, %1347
  %1353 = fadd fast float %1352, %1350
  %1354 = fmul fast float %1353, %1347
  %1355 = fmul fast float %1345, 2.000000e+00
  %1356 = fsub fast float 1.000000e+00, %1355
  %1357 = fmul fast float %1356, %1348
  %1358 = fadd fast float %1357, %1355
  %1359 = fmul fast float %1358, %1348
  %1360 = fmul fast float %1346, 2.000000e+00
  %1361 = fsub fast float 1.000000e+00, %1360
  %1362 = fmul fast float %1361, %1349
  %1363 = fadd fast float %1362, %1360
  %1364 = fmul fast float %1363, %1349
  %1365 = fmul fast float %1354, %1354
  %1366 = fmul fast float %1359, %1359
  %1367 = fmul fast float %1364, %1364
  br label %1384

; <label>:1368                                    ; preds = %1331
  %1369 = fmul fast float %233, %233
  %1370 = fmul fast float %237, %237
  %1371 = fmul fast float %241, %241
  %1372 = fadd fast float %1369, -1.000000e+00
  %1373 = fadd fast float %1370, -1.000000e+00
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fmul fast float %1220, %1372
  %1376 = fmul fast float %1220, %1373
  %1377 = fmul fast float %1220, %1374
  %1378 = fadd fast float %1375, 1.000000e+00
  %1379 = fadd fast float %1376, 1.000000e+00
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fmul fast float %1378, %1195
  %1382 = fmul fast float %1379, %1196
  %1383 = fmul fast float %1380, %1197
  br label %1384

; <label>:1384                                    ; preds = %1368, %1334, %1225, %1181
  %1385 = phi float [ %1330, %1225 ], [ %1206, %1334 ], [ %1206, %1368 ], [ 0x3FA23C0BE0000000, %1181 ]
  %1386 = phi float [ %1322, %1225 ], [ %1365, %1334 ], [ %1381, %1368 ], [ 1.000000e+00, %1181 ]
  %1387 = phi float [ %1323, %1225 ], [ %1366, %1334 ], [ %1382, %1368 ], [ 1.000000e+00, %1181 ]
  %1388 = phi float [ %1324, %1225 ], [ %1367, %1334 ], [ %1383, %1368 ], [ 1.000000e+00, %1181 ]
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 1
  %1391 = and i32 %1390, 1
  %1392 = icmp ne i32 %1391, 0
  %1393 = add i32 %33, 356
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 32
  %1397 = icmp ne i32 %1396, 0
  %1398 = and i1 %1392, %1397
  %1399 = select i1 %1398, float 1.000000e+00, float %1386
  %1400 = select i1 %1398, float 0x3FD3333340000000, float %1387
  %1401 = select i1 %1398, float 0x3FD3333340000000, float %1388
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 32
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1478, label %1406

; <label>:1406                                    ; preds = %1384
  %1407 = add i32 %33, 108
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = add i32 %33, 396
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %64, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = extractvalue %dx.types.ResRet.f32 %1415, 3
  %1420 = and i32 %1409, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = lshr i32 %1409, 8
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1409, 16
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101000000000
  %1429 = fmul fast float %1416, %1421
  %1430 = fadd fast float %1429, %1424
  %1431 = fmul fast float %1430, 0x3F70101000000000
  %1432 = fadd fast float %1417, -5.000000e-01
  %1433 = fadd fast float %1419, -5.000000e-01
  %1434 = fmul fast float %1432, %1428
  %1435 = fmul fast float %1433, %1428
  %1436 = fadd fast float %1434, 5.000000e-01
  %1437 = fadd fast float %1435, 5.000000e-01
  %1438 = fmul fast float %1436, 2.000000e+00
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fmul fast float %1437, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fadd fast float %1439, %1441
  %1443 = fmul fast float %1442, 5.000000e-01
  %1444 = fsub fast float %1439, %1441
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 6, float %1443)  ; FAbs(value)
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1449 = fsub fast float %1447, %1448
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1445, float %1449, float %1443, float %1445, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 25, float %1450)  ; Rsqrt(value)
  %1452 = fmul fast float %1443, %1451
  %1453 = fmul fast float %1445, %1451
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 67108864
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1474, label %1458

; <label>:1458                                    ; preds = %1406
  %1459 = add i32 %33, 296
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 65535
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = lshr i32 %1461, 16
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = fsub fast float %1431, %1469
  %1471 = fmul fast float %1470, %1463
  %1472 = fadd fast float %1471, %1467
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1458, %1406
  %1475 = phi float [ %1473, %1458 ], [ %1431, %1406 ]
  %1476 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  %1477 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %897, float %898)  ; Dot2(ax,ay,bx,by)
  br label %1478

; <label>:1478                                    ; preds = %1474, %1384
  %1479 = phi float [ %1475, %1474 ], [ 0x3FD6666660000000, %1384 ]
  %1480 = phi float [ %1476, %1474 ], [ 0.000000e+00, %1384 ]
  %1481 = phi float [ %1477, %1474 ], [ 0.000000e+00, %1384 ]
  %1482 = phi float [ %1418, %1474 ], [ 1.000000e+00, %1384 ]
  %1483 = add i32 %33, 176
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = lshr i32 %1485, 22
  %1487 = shl nuw nsw i32 %1486, 5
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 64
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1526, label %1493

; <label>:1493                                    ; preds = %1478
  %1494 = add i32 %33, 412
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 131072
  %1502 = icmp eq i32 %1501, 0
  %1503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %64, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = fmul fast float %1504, %221
  %1508 = fmul fast float %1505, %224
  %1509 = fmul fast float %1506, %227
  br i1 %1502, label %1516, label %1510

; <label>:1510                                    ; preds = %1493
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fmul fast float %1512, %1507
  %1514 = fmul fast float %1512, %1508
  %1515 = fmul fast float %1512, %1509
  br label %1516

; <label>:1516                                    ; preds = %1510, %1493
  %1517 = phi float [ %1513, %1510 ], [ %1507, %1493 ]
  %1518 = phi float [ %1514, %1510 ], [ %1508, %1493 ]
  %1519 = phi float [ %1515, %1510 ], [ %1509, %1493 ]
  %1520 = fmul fast float %1517, %1488
  %1521 = select i1 %173, float %1520, float %1517
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1518, float %1519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = select i1 %173, float 0.000000e+00, float %1517
  %1524 = select i1 %173, float %1522, float %1518
  %1525 = select i1 %173, float 0.000000e+00, float %1519
  br label %1526

; <label>:1526                                    ; preds = %1516, %1478
  %1527 = phi float [ %1523, %1516 ], [ 0.000000e+00, %1478 ]
  %1528 = phi float [ %1524, %1516 ], [ 0.000000e+00, %1478 ]
  %1529 = phi float [ %1525, %1516 ], [ 0.000000e+00, %1478 ]
  %1530 = add i32 %33, 112
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = lshr i32 %1532, 8
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = fmul fast float %1537, %1538
  %1540 = fadd fast float %1539, %1534
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br i1 %883, label %1543, label %1551

; <label>:1543                                    ; preds = %1526
  %1544 = fsub fast float 1.000000e+00, %1179
  %1545 = fmul fast float %1544, %871
  %1546 = fmul fast float %1544, %872
  %1547 = fmul fast float %1544, %873
  %1548 = fmul fast float %1544, %874
  %1549 = fmul fast float %1544, %875
  %1550 = fmul fast float %1544, %876
  br label %1551

; <label>:1551                                    ; preds = %1543, %1526
  %1552 = phi float [ %1545, %1543 ], [ %871, %1526 ]
  %1553 = phi float [ %1546, %1543 ], [ %872, %1526 ]
  %1554 = phi float [ %1547, %1543 ], [ %873, %1526 ]
  %1555 = phi float [ %1548, %1543 ], [ %874, %1526 ]
  %1556 = phi float [ %1549, %1543 ], [ %875, %1526 ]
  %1557 = phi float [ %1550, %1543 ], [ %876, %1526 ]
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 3
  %1561 = icmp eq i32 %1560, 3
  br i1 %1561, label %1640, label %1562

; <label>:1562                                    ; preds = %1551
  %1563 = and i32 %1559, 16
  %1564 = icmp ne i32 %1563, 0
  %1565 = select i1 %1564, float %1179, float 0.000000e+00
  %1566 = icmp eq i32 %1560, 0
  br i1 %1566, label %1567, label %1595

; <label>:1567                                    ; preds = %1562
  %1568 = and i32 %1559, 64
  %1569 = icmp ne i32 %1568, 0
  %1570 = select i1 %1569, float %1179, float 0.000000e+00
  %1571 = fsub fast float %1399, %1552
  %1572 = fsub fast float %1400, %1553
  %1573 = fsub fast float %1401, %1554
  %1574 = fmul fast float %1565, %1571
  %1575 = fmul fast float %1565, %1572
  %1576 = fmul fast float %1565, %1573
  %1577 = fadd fast float %1574, %1552
  %1578 = fadd fast float %1575, %1553
  %1579 = fadd fast float %1576, %1554
  %1580 = fsub fast float %1385, %877
  %1581 = fmul fast float %1565, %1580
  %1582 = fadd fast float %1581, %877
  %1583 = fsub fast float %1527, %1555
  %1584 = fsub fast float %1528, %1556
  %1585 = fsub fast float %1529, %1557
  %1586 = fmul fast float %1570, %1583
  %1587 = fmul fast float %1570, %1584
  %1588 = fmul fast float %1570, %1585
  %1589 = fadd fast float %1586, %1555
  %1590 = fadd fast float %1587, %1556
  %1591 = fadd fast float %1588, %1557
  %1592 = fsub fast float %1542, %881
  %1593 = fmul fast float %1565, %1592
  %1594 = fadd fast float %1593, %881
  br label %1640

; <label>:1595                                    ; preds = %1562
  %1596 = icmp eq i32 %1560, 1
  br i1 %1596, label %1597, label %1610

; <label>:1597                                    ; preds = %1595
  %1598 = fadd fast float %1399, -1.000000e+00
  %1599 = fadd fast float %1400, -1.000000e+00
  %1600 = fadd fast float %1401, -1.000000e+00
  %1601 = fmul fast float %1565, %1598
  %1602 = fmul fast float %1565, %1599
  %1603 = fmul fast float %1565, %1600
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fmul fast float %1604, %1552
  %1608 = fmul fast float %1605, %1553
  %1609 = fmul fast float %1606, %1554
  br label %1640

; <label>:1610                                    ; preds = %1595
  %1611 = icmp eq i32 %1560, 2
  br i1 %1611, label %1612, label %1640

; <label>:1612                                    ; preds = %1610
  %1613 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fmul fast float %1616, %1565
  %1620 = fmul fast float %1617, %1565
  %1621 = fmul fast float %1618, %1565
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = fmul fast float %1622, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1552
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1552
  %1630 = fmul fast float %1623, 2.000000e+00
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, %1553
  %1633 = fadd fast float %1632, %1630
  %1634 = fmul fast float %1633, %1553
  %1635 = fmul fast float %1624, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1636, %1554
  %1638 = fadd fast float %1637, %1635
  %1639 = fmul fast float %1638, %1554
  br label %1640

; <label>:1640                                    ; preds = %1612, %1610, %1597, %1567, %1551
  %1641 = phi float [ %1552, %1551 ], [ %1629, %1612 ], [ %1552, %1610 ], [ %1607, %1597 ], [ %1577, %1567 ]
  %1642 = phi float [ %1553, %1551 ], [ %1634, %1612 ], [ %1553, %1610 ], [ %1608, %1597 ], [ %1578, %1567 ]
  %1643 = phi float [ %1554, %1551 ], [ %1639, %1612 ], [ %1554, %1610 ], [ %1609, %1597 ], [ %1579, %1567 ]
  %1644 = phi float [ %1555, %1551 ], [ %1555, %1612 ], [ %1555, %1610 ], [ %1555, %1597 ], [ %1589, %1567 ]
  %1645 = phi float [ %1556, %1551 ], [ %1556, %1612 ], [ %1556, %1610 ], [ %1556, %1597 ], [ %1590, %1567 ]
  %1646 = phi float [ %1557, %1551 ], [ %1557, %1612 ], [ %1557, %1610 ], [ %1557, %1597 ], [ %1591, %1567 ]
  %1647 = phi float [ %877, %1551 ], [ %877, %1612 ], [ %877, %1610 ], [ %877, %1597 ], [ %1582, %1567 ]
  %1648 = phi float [ %881, %1551 ], [ %881, %1612 ], [ %881, %1610 ], [ %881, %1597 ], [ %1594, %1567 ]
  %1649 = and i32 %1559, 12
  %1650 = icmp eq i32 %1649, 12
  br i1 %1650, label %1723, label %1651

; <label>:1651                                    ; preds = %1640
  %1652 = and i32 %1559, 2097184
  %1653 = icmp eq i32 %1652, 2097184
  %1654 = select i1 %1653, float %1179, float 0.000000e+00
  %1655 = and i32 %1559, 4194336
  %1656 = icmp eq i32 %1655, 4194336
  %1657 = select i1 %1656, float %1179, float 0.000000e+00
  %1658 = and i32 %1559, 8388640
  %1659 = icmp eq i32 %1658, 8388640
  %1660 = select i1 %1659, float %1179, float 0.000000e+00
  %1661 = icmp eq i32 %1649, 0
  br i1 %1661, label %1662, label %1675

; <label>:1662                                    ; preds = %1651
  %1663 = fsub fast float %1480, %869
  %1664 = fsub fast float %1481, %870
  %1665 = fmul fast float %1654, %1663
  %1666 = fmul fast float %1654, %1664
  %1667 = fadd fast float %1665, %869
  %1668 = fadd fast float %1666, %870
  %1669 = fsub fast float %1482, %880
  %1670 = fmul fast float %1657, %1669
  %1671 = fadd fast float %1670, %880
  %1672 = fsub fast float %1479, %879
  %1673 = fmul fast float %1660, %1672
  %1674 = fadd fast float %1673, %879
  br label %1723

; <label>:1675                                    ; preds = %1651
  %1676 = icmp eq i32 %1649, 4
  br i1 %1676, label %1677, label %1709

; <label>:1677                                    ; preds = %1675
  %1678 = fmul fast float %1654, %1480
  %1679 = fmul fast float %1654, %1481
  %1680 = fadd fast float %1678, %869
  %1681 = fadd fast float %1679, %870
  %1682 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1683 = fsub fast float %1682, %880
  %1684 = fmul fast float %1683, %1657
  %1685 = fadd fast float %1684, %880
  %1686 = fadd fast float %1479, %879
  %1687 = fmul fast float %1686, 0x3FF337FAE0000000
  %1688 = fmul fast float %879, %879
  %1689 = fmul fast float %1479, %1479
  %1690 = fadd fast float %1689, %1688
  %1691 = fmul fast float %1690, 0x3FE5152B00000000
  %1692 = fmul fast float %879, 0xBFCC1F85E0000000
  %1693 = fmul fast float %1692, %1479
  %1694 = fadd fast float %1693, 0xBFE1363700000000
  %1695 = fadd fast float %1694, %1687
  %1696 = fsub fast float %1695, %1691
  %1697 = fmul fast float %1686, 0x3FBA6F0D00000000
  %1698 = fmul fast float %1690, 0x3FD0432880000000
  %1699 = fmul fast float %879, 0xBFEF110800000000
  %1700 = fmul fast float %1699, %1479
  %1701 = fadd fast float %1700, 1.000000e+00
  %1702 = fsub fast float %1701, %1697
  %1703 = fadd fast float %1702, %1698
  %1704 = fdiv fast float %1696, %1703
  %1705 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1706 = fsub fast float %1705, %879
  %1707 = fmul fast float %1706, %1660
  %1708 = fadd fast float %1707, %879
  br label %1723

; <label>:1709                                    ; preds = %1675
  %1710 = icmp eq i32 %1649, 8
  br i1 %1710, label %1711, label %1723

; <label>:1711                                    ; preds = %1709
  %1712 = fmul fast float %1654, %1480
  %1713 = fmul fast float %1654, %1481
  %1714 = fadd fast float %1712, %869
  %1715 = fadd fast float %1713, %870
  %1716 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1717 = fsub fast float %1716, %880
  %1718 = fmul fast float %1717, %1657
  %1719 = fadd fast float %1718, %880
  %1720 = fsub fast float %1479, %879
  %1721 = fmul fast float %1660, %1720
  %1722 = fadd fast float %1721, %879
  br label %1723

; <label>:1723                                    ; preds = %1711, %1709, %1677, %1662, %1640, %1178, %882, %868
  %1724 = phi float [ %869, %1640 ], [ %869, %1178 ], [ %869, %868 ], [ %1714, %1711 ], [ %869, %1709 ], [ %1680, %1677 ], [ %1667, %1662 ], [ %869, %882 ]
  %1725 = phi float [ %870, %1640 ], [ %870, %1178 ], [ %870, %868 ], [ %1715, %1711 ], [ %870, %1709 ], [ %1681, %1677 ], [ %1668, %1662 ], [ %870, %882 ]
  %1726 = phi float [ %1641, %1640 ], [ %871, %1178 ], [ %871, %868 ], [ %1641, %1711 ], [ %1641, %1709 ], [ %1641, %1677 ], [ %1641, %1662 ], [ %871, %882 ]
  %1727 = phi float [ %1642, %1640 ], [ %872, %1178 ], [ %872, %868 ], [ %1642, %1711 ], [ %1642, %1709 ], [ %1642, %1677 ], [ %1642, %1662 ], [ %872, %882 ]
  %1728 = phi float [ %1643, %1640 ], [ %873, %1178 ], [ %873, %868 ], [ %1643, %1711 ], [ %1643, %1709 ], [ %1643, %1677 ], [ %1643, %1662 ], [ %873, %882 ]
  %1729 = phi float [ %1644, %1640 ], [ %874, %1178 ], [ %874, %868 ], [ %1644, %1711 ], [ %1644, %1709 ], [ %1644, %1677 ], [ %1644, %1662 ], [ %874, %882 ]
  %1730 = phi float [ %1645, %1640 ], [ %875, %1178 ], [ %875, %868 ], [ %1645, %1711 ], [ %1645, %1709 ], [ %1645, %1677 ], [ %1645, %1662 ], [ %875, %882 ]
  %1731 = phi float [ %1646, %1640 ], [ %876, %1178 ], [ %876, %868 ], [ %1646, %1711 ], [ %1646, %1709 ], [ %1646, %1677 ], [ %1646, %1662 ], [ %876, %882 ]
  %1732 = phi float [ %1647, %1640 ], [ %877, %1178 ], [ %877, %868 ], [ %1647, %1711 ], [ %1647, %1709 ], [ %1647, %1677 ], [ %1647, %1662 ], [ %877, %882 ]
  %1733 = phi float [ %879, %1640 ], [ %879, %1178 ], [ %879, %868 ], [ %1722, %1711 ], [ %879, %1709 ], [ %1708, %1677 ], [ %1674, %1662 ], [ %879, %882 ]
  %1734 = phi float [ %880, %1640 ], [ %880, %1178 ], [ %880, %868 ], [ %1719, %1711 ], [ %880, %1709 ], [ %1685, %1677 ], [ %1671, %1662 ], [ %880, %882 ]
  %1735 = phi float [ %1648, %1640 ], [ %881, %1178 ], [ %881, %868 ], [ %1648, %1711 ], [ %1648, %1709 ], [ %1648, %1677 ], [ %1648, %1662 ], [ %881, %882 ]
  br i1 %348, label %2577, label %1736

; <label>:1736                                    ; preds = %1723
  %1737 = icmp ult i32 %401, 3
  %1738 = add i32 %33, 56
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %33, 60
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = or i32 %1743, %1740
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %2577, label %1746

; <label>:1746                                    ; preds = %1736
  %1747 = and i32 %1740, 262144
  %1748 = icmp ne i32 %1747, 0
  %1749 = select i1 %1748, float %36, float 1.000000e+00
  %1750 = select i1 %1748, float %37, float 0.000000e+00
  %1751 = select i1 %1748, float %38, float 0.000000e+00
  %1752 = select i1 %1748, float %39, float 1.000000e+00
  %1753 = select i1 %1748, float %40, float %56
  %1754 = select i1 %1748, float %41, float %57
  %1755 = add i32 %33, 316
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 16
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = fmul fast float %1759, 0x3F50624DE0000000
  %1761 = add i32 %33, 120
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = lshr i32 %1763, 16
  %1765 = and i32 %1764, 255
  %1766 = lshr i32 %1763, 24
  %1767 = add i32 %33, 324
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 65535
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = lshr i32 %1769, 16
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = add i32 %33, 64
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = lshr i32 %1776, 22
  %1778 = shl nuw nsw i32 %1777, 5
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = shl i32 %1776, 4
  %1781 = and i32 %1780, 32752
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = lshr i32 %1776, 7
  %1784 = and i32 %1783, 32752
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1788 = fmul fast float %1787, 1.000000e+03
  %1789 = fmul fast float %298, %1788
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = fadd fast float %1790, %288
  %1792 = fmul fast float %299, %1788
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = fadd fast float %1793, %290
  %1795 = fmul fast float %1760, %1788
  %1796 = call float @dx.op.unary.f32(i32 22, float %1795)  ; Frc(value)
  %1797 = fmul fast float %1796, 0x401921FB60000000
  %1798 = fadd fast float %1797, %1779
  %1799 = call float @dx.op.unary.f32(i32 13, float %1798)  ; Sin(value)
  %1800 = call float @dx.op.unary.f32(i32 12, float %1798)  ; Cos(value)
  %1801 = fsub fast float -0.000000e+00, %1799
  %1802 = fadd fast float %1753, -5.000000e-01
  %1803 = fadd fast float %1754, -5.000000e-01
  %1804 = fmul fast float %1771, %1802
  %1805 = fmul fast float %1773, %1803
  %1806 = fadd fast float %1804, 5.000000e-01
  %1807 = fadd fast float %1805, 5.000000e-01
  %1808 = fmul fast float %1782, %1806
  %1809 = fmul fast float %1785, %1807
  %1810 = fmul fast float %1800, %1808
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1801, float %1809, float %1810)  ; FMad(a,b,c)
  %1812 = fmul fast float %1799, %1808
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1809, float %1812)  ; FMad(a,b,c)
  %1814 = fadd fast float %1791, %1811
  %1815 = fadd fast float %1794, %1813
  %1816 = icmp ugt i32 %1765, 1
  %1817 = icmp ugt i32 %1763, 33554431
  %1818 = or i1 %1817, %1816
  br i1 %1818, label %1819, label %1844

; <label>:1819                                    ; preds = %1746
  %1820 = add i32 %33, 260
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = lshr i32 %1822, 16
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = fmul fast float %1787, %1824
  %1826 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1827 = mul nuw nsw i32 %1765, %1766
  %1828 = uitofp i32 %1827 to float
  %1829 = fmul fast float %1826, %1828
  %1830 = call float @dx.op.unary.f32(i32 27, float %1829)  ; Round_ni(value)
  %1831 = fptoui float %1830 to i32
  %1832 = urem i32 %1831, %1765
  %1833 = udiv i32 %1831, %1766
  %1834 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1835 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1836 = uitofp i32 %1832 to float
  %1837 = uitofp i32 %1833 to float
  %1838 = fadd fast float %1834, %1836
  %1839 = fadd fast float %1835, %1837
  %1840 = uitofp i32 %1765 to float
  %1841 = uitofp i32 %1766 to float
  %1842 = fdiv fast float %1838, %1840
  %1843 = fdiv fast float %1839, %1841
  br label %1844

; <label>:1844                                    ; preds = %1819, %1746
  %1845 = phi float [ %1842, %1819 ], [ %1814, %1746 ]
  %1846 = phi float [ %1843, %1819 ], [ %1815, %1746 ]
  %1847 = and i32 %1740, 16777216
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1958, label %1849

; <label>:1849                                    ; preds = %1844
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1854 = fadd fast float %1851, %131
  %1855 = fadd fast float %1852, %132
  %1856 = fadd fast float %1853, %133
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = icmp eq i32 %34, 65535
  br i1 %1860, label %1955, label %1861

; <label>:1861                                    ; preds = %1849
  %1862 = lshr i32 %34, 1
  %1863 = shl i32 %1862, 2
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %34, 1
  %1867 = icmp ne i32 %1866, 0
  %1868 = lshr i32 %1865, 16
  %1869 = and i32 %1865, 65535
  %1870 = select i1 %1867, i32 %1868, i32 %1869
  %1871 = icmp eq i32 %1870, 65535
  br i1 %1871, label %1951, label %1872

; <label>:1872                                    ; preds = %1861
  %1873 = mul nuw nsw i32 %1870, 40
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = add nuw nsw i32 %1873, 12
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = add nuw nsw i32 %1873, 24
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = add nuw nsw i32 %1873, 36
  %1889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = fsub fast float %1854, %1875
  %1892 = fsub fast float %1855, %1876
  %1893 = fsub fast float %1856, %1877
  %1894 = fmul fast float %1890, %1891
  %1895 = fmul fast float %1890, %1892
  %1896 = fmul fast float %1890, %1893
  %1897 = call float @dx.op.unary.f32(i32 27, float %1894)  ; Round_ni(value)
  %1898 = call float @dx.op.unary.f32(i32 27, float %1895)  ; Round_ni(value)
  %1899 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fadd fast float %1899, 5.000000e-01
  %1903 = fmul fast float %1900, %1880
  %1904 = fmul fast float %1901, %1881
  %1905 = fmul fast float %1902, %1882
  %1906 = shl i32 %34, 2
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = add i32 %1908, 0
  %1910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1911 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1912 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1913 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1910, %dx.types.Handle %30, float %1911, float %1912, float %1913, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = fmul fast float %1915, 1.023000e+03
  %1919 = fmul fast float %1916, 1.023000e+03
  %1920 = fmul fast float %1917, 1.023000e+03
  %1921 = fadd fast float %1918, 5.000000e-01
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = fsub fast float %1894, %1897
  %1928 = fsub fast float %1895, %1898
  %1929 = fsub fast float %1896, %1899
  %1930 = fmul fast float %1927, 7.500000e-01
  %1931 = fmul fast float %1928, 7.500000e-01
  %1932 = fmul fast float %1929, 7.500000e-01
  %1933 = fadd fast float %1897, 1.250000e-01
  %1934 = fadd fast float %1933, %1930
  %1935 = fadd fast float %1934, %1924
  %1936 = fadd fast float %1898, 1.250000e-01
  %1937 = fadd fast float %1936, %1931
  %1938 = fadd fast float %1937, %1925
  %1939 = fadd fast float %1899, 1.250000e-01
  %1940 = fadd fast float %1939, %1932
  %1941 = fadd fast float %1940, %1926
  %1942 = fmul fast float %1935, %1885
  %1943 = fmul fast float %1938, %1886
  %1944 = fmul fast float %1941, %1887
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1948, %dx.types.Handle %28, float %1942, float %1943, float %1944, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  br label %1951

; <label>:1951                                    ; preds = %1872, %1861
  %1952 = phi float [ %1950, %1872 ], [ -1.000000e+00, %1861 ]
  %1953 = fadd fast float %1952, %1859
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  br label %1955

; <label>:1955                                    ; preds = %1951, %1849
  %1956 = phi float [ %1954, %1951 ], [ %1859, %1849 ]
  %1957 = fmul fast float %1956, %397
  br label %1958

; <label>:1958                                    ; preds = %1955, %1844
  %1959 = phi float [ %1957, %1955 ], [ %397, %1844 ]
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 256
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2010, label %1964

; <label>:1964                                    ; preds = %1958
  %1965 = add i32 %33, 448
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %65, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = add i32 %33, 132
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = shl i32 %1974, 4
  %1976 = and i32 %1975, 32752
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = lshr i32 %1974, 7
  %1979 = and i32 %1978, 32752
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = fsub fast float 1.000000e+00, %1959
  %1982 = call float @dx.op.binary.f32(i32 35, float %1981, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1983 = bitcast float %1959 to i32
  %1984 = sitofp i32 %1983 to float
  %1985 = fadd fast float %1984, 0xC1CFBF8940000000
  %1986 = fmul fast float %1980, %1985
  %1987 = fadd fast float %1986, 0x41CFBF8940000000
  %1988 = fptosi float %1987 to i32
  %1989 = bitcast i32 %1988 to float
  %1990 = bitcast float %1982 to i32
  %1991 = sitofp i32 %1990 to float
  %1992 = fadd fast float %1991, 0xC1CFBF8940000000
  %1993 = fmul fast float %1992, %1980
  %1994 = fadd fast float %1993, 0x41CFBF8940000000
  %1995 = fptosi float %1994 to i32
  %1996 = bitcast i32 %1995 to float
  %1997 = fmul fast float %1989, %1977
  %1998 = fmul fast float %1996, %1977
  %1999 = fsub fast float %1982, %1997
  %2000 = fadd fast float %1998, %1982
  %2001 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2002 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2003 = fsub fast float %1971, %2001
  %2004 = fsub fast float %2002, %2001
  %2005 = bitcast float %2004 to i32
  %2006 = sub nsw i32 2129859010, %2005
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %2007, %2003
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  br label %2010

; <label>:2010                                    ; preds = %1964, %1958
  %2011 = phi float [ %2009, %1964 ], [ %1959, %1958 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 128
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2032, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = add i32 %33, 432
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %2019, 0
  %2021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2021, %dx.types.Handle %65, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 524288
  %2027 = icmp ne i32 %2026, 0
  %2028 = fcmp fast ogt float %2023, 0x3FE0101020000000
  %2029 = select i1 %2028, float 1.000000e+00, float 0.000000e+00
  %2030 = select i1 %2027, float %2029, float %2023
  %2031 = fmul fast float %2030, %2011
  br label %2032

; <label>:2032                                    ; preds = %2016, %2010
  %2033 = phi float [ %2031, %2016 ], [ %2011, %2010 ]
  %2034 = fcmp fast ult float %2033, 0x3F70101020000000
  br i1 %2034, label %2577, label %2035

; <label>:2035                                    ; preds = %2032
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 16
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2238, label %2040

; <label>:2040                                    ; preds = %2035
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %33, 384
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2047, %dx.types.Handle %64, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.ResRet.f32 %2048, 2
  %2052 = extractvalue %dx.types.ResRet.f32 %2048, 3
  %2053 = and i32 %2042, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = lshr i32 %2042, 8
  %2056 = and i32 %2055, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2052, %2054
  %2059 = fadd fast float %2058, %2057
  %2060 = fmul fast float %2059, 0x3F70101000000000
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 512
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2073, label %2065

; <label>:2065                                    ; preds = %2040
  %2066 = add i32 %33, 468
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %2068, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2070, %dx.types.Handle %65, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  br label %2073

; <label>:2073                                    ; preds = %2065, %2040
  %2074 = phi float [ %2072, %2065 ], [ 1.000000e+00, %2040 ]
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 33554432
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2185, label %2079

; <label>:2079                                    ; preds = %2073
  %2080 = add i32 %33, 256
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 65535
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = lshr i32 %2082, 16
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = add i32 %33, 260
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = and i32 %2089, 65535
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = lshr i32 %2093, 24
  %2095 = uitofp i32 %2094 to float
  %2096 = fmul fast float %2095, 0x3F70101020000000
  %2097 = and i32 %2093, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = fmul fast float %2098, 0x3F70101020000000
  %2100 = lshr i32 %2093, 8
  %2101 = and i32 %2100, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = lshr i32 %2093, 16
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = add i32 %33, 252
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = lshr i32 %2110, 24
  %2112 = uitofp i32 %2111 to float
  %2113 = fmul fast float %2112, 0x3F70101020000000
  %2114 = and i32 %2110, 255
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = lshr i32 %2110, 8
  %2118 = and i32 %2117, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = lshr i32 %2110, 16
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = bitcast float %2049 to i32
  %2126 = ashr i32 %2125, 1
  %2127 = sub nsw i32 1597463174, %2126
  %2128 = bitcast i32 %2127 to float
  %2129 = fmul fast float %2049, 5.000000e-01
  %2130 = fmul fast float %2128, %2128
  %2131 = fmul fast float %2130, %2129
  %2132 = fsub fast float 1.500000e+00, %2131
  %2133 = fmul fast float %2128, %2049
  %2134 = fmul fast float %2133, %2132
  %2135 = bitcast float %2050 to i32
  %2136 = ashr i32 %2135, 1
  %2137 = sub nsw i32 1597463174, %2136
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2050, 5.000000e-01
  %2140 = fmul fast float %2138, %2138
  %2141 = fmul fast float %2140, %2139
  %2142 = fsub fast float 1.500000e+00, %2141
  %2143 = fmul fast float %2138, %2050
  %2144 = fmul fast float %2143, %2142
  %2145 = bitcast float %2051 to i32
  %2146 = ashr i32 %2145, 1
  %2147 = sub nsw i32 1597463174, %2146
  %2148 = bitcast i32 %2147 to float
  %2149 = fmul fast float %2051, 5.000000e-01
  %2150 = fmul fast float %2148, %2148
  %2151 = fmul fast float %2150, %2149
  %2152 = fsub fast float 1.500000e+00, %2151
  %2153 = fmul fast float %2148, %2051
  %2154 = fmul fast float %2153, %2152
  %2155 = fsub fast float %2134, %2116
  %2156 = fsub fast float %2144, %2120
  %2157 = fsub fast float %2154, %2124
  %2158 = fmul fast float %2155, %2084
  %2159 = fmul fast float %2156, %2086
  %2160 = fmul fast float %2157, %2091
  %2161 = fadd fast float %2158, %2099
  %2162 = fadd fast float %2159, %2103
  %2163 = fadd fast float %2160, %2107
  %2164 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2167 = fmul fast float %2164, %2164
  %2168 = fmul fast float %2165, %2165
  %2169 = fmul fast float %2166, %2166
  %2170 = fsub fast float %2167, %2049
  %2171 = fsub fast float %2168, %2050
  %2172 = fsub fast float %2169, %2051
  %2173 = fmul fast float %2170, %2074
  %2174 = fmul fast float %2171, %2074
  %2175 = fmul fast float %2172, %2074
  %2176 = fadd fast float %2173, %2049
  %2177 = fadd fast float %2174, %2050
  %2178 = fadd fast float %2175, %2051
  %2179 = fadd fast float %2096, %2060
  %2180 = fsub fast float %2179, %2113
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fsub fast float %2181, %2060
  %2183 = fmul fast float %2182, %2074
  %2184 = fadd fast float %2183, %2060
  br label %2238

; <label>:2185                                    ; preds = %2073
  %2186 = and i32 %2076, 134217728
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2222, label %2188

; <label>:2188                                    ; preds = %2185
  %2189 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2191 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2192 = fadd fast float %2189, -5.000000e-01
  %2193 = fadd fast float %2190, -5.000000e-01
  %2194 = fadd fast float %2191, -5.000000e-01
  %2195 = fmul fast float %2192, %2074
  %2196 = fmul fast float %2193, %2074
  %2197 = fmul fast float %2194, %2074
  %2198 = fadd fast float %2195, 5.000000e-01
  %2199 = fadd fast float %2196, 5.000000e-01
  %2200 = fadd fast float %2197, 5.000000e-01
  %2201 = call float @dx.op.unary.f32(i32 24, float %2049)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %2050)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2204 = fmul fast float %2198, 2.000000e+00
  %2205 = fsub fast float 1.000000e+00, %2204
  %2206 = fmul fast float %2205, %2201
  %2207 = fadd fast float %2206, %2204
  %2208 = fmul fast float %2207, %2201
  %2209 = fmul fast float %2199, 2.000000e+00
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2210, %2202
  %2212 = fadd fast float %2211, %2209
  %2213 = fmul fast float %2212, %2202
  %2214 = fmul fast float %2200, 2.000000e+00
  %2215 = fsub fast float 1.000000e+00, %2214
  %2216 = fmul fast float %2215, %2203
  %2217 = fadd fast float %2216, %2214
  %2218 = fmul fast float %2217, %2203
  %2219 = fmul fast float %2208, %2208
  %2220 = fmul fast float %2213, %2213
  %2221 = fmul fast float %2218, %2218
  br label %2238

; <label>:2222                                    ; preds = %2185
  %2223 = fmul fast float %275, %275
  %2224 = fmul fast float %279, %279
  %2225 = fmul fast float %283, %283
  %2226 = fadd fast float %2223, -1.000000e+00
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fadd fast float %2225, -1.000000e+00
  %2229 = fmul fast float %2074, %2226
  %2230 = fmul fast float %2074, %2227
  %2231 = fmul fast float %2074, %2228
  %2232 = fadd fast float %2229, 1.000000e+00
  %2233 = fadd fast float %2230, 1.000000e+00
  %2234 = fadd fast float %2231, 1.000000e+00
  %2235 = fmul fast float %2232, %2049
  %2236 = fmul fast float %2233, %2050
  %2237 = fmul fast float %2234, %2051
  br label %2238

; <label>:2238                                    ; preds = %2222, %2188, %2079, %2035
  %2239 = phi float [ %2184, %2079 ], [ %2060, %2188 ], [ %2060, %2222 ], [ 0x3FA23C0BE0000000, %2035 ]
  %2240 = phi float [ %2176, %2079 ], [ %2219, %2188 ], [ %2235, %2222 ], [ 1.000000e+00, %2035 ]
  %2241 = phi float [ %2177, %2079 ], [ %2220, %2188 ], [ %2236, %2222 ], [ 1.000000e+00, %2035 ]
  %2242 = phi float [ %2178, %2079 ], [ %2221, %2188 ], [ %2237, %2222 ], [ 1.000000e+00, %2035 ]
  %2243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.i32 %2243, 1
  %2245 = and i32 %2244, 1
  %2246 = icmp ne i32 %2245, 0
  %2247 = add i32 %33, 356
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 32
  %2251 = icmp ne i32 %2250, 0
  %2252 = and i1 %2246, %2251
  %2253 = select i1 %2252, float 1.000000e+00, float %2240
  %2254 = select i1 %2252, float 0x3FD3333340000000, float %2241
  %2255 = select i1 %2252, float 0x3FD3333340000000, float %2242
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 32
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2332, label %2260

; <label>:2260                                    ; preds = %2238
  %2261 = add i32 %33, 124
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = add i32 %33, 400
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %2266, 0
  %2268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2268, %dx.types.Handle %64, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.ResRet.f32 %2269, 3
  %2274 = and i32 %2263, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = lshr i32 %2263, 8
  %2277 = and i32 %2276, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = lshr i32 %2263, 16
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101000000000
  %2283 = fmul fast float %2270, %2275
  %2284 = fadd fast float %2283, %2278
  %2285 = fmul fast float %2284, 0x3F70101000000000
  %2286 = fadd fast float %2271, -5.000000e-01
  %2287 = fadd fast float %2273, -5.000000e-01
  %2288 = fmul fast float %2286, %2282
  %2289 = fmul fast float %2287, %2282
  %2290 = fadd fast float %2288, 5.000000e-01
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fmul fast float %2290, 2.000000e+00
  %2293 = fadd fast float %2292, -1.000000e+00
  %2294 = fmul fast float %2291, 2.000000e+00
  %2295 = fadd fast float %2294, -1.000000e+00
  %2296 = fadd fast float %2293, %2295
  %2297 = fmul fast float %2296, 5.000000e-01
  %2298 = fsub fast float %2293, %2295
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = call float @dx.op.unary.f32(i32 6, float %2297)  ; FAbs(value)
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = call float @dx.op.unary.f32(i32 6, float %2299)  ; FAbs(value)
  %2303 = fsub fast float %2301, %2302
  %2304 = call float @dx.op.dot3.f32(i32 55, float %2297, float %2299, float %2303, float %2297, float %2299, float %2303)  ; Dot3(ax,ay,az,bx,by,bz)
  %2305 = call float @dx.op.unary.f32(i32 25, float %2304)  ; Rsqrt(value)
  %2306 = fmul fast float %2297, %2305
  %2307 = fmul fast float %2299, %2305
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 67108864
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2328, label %2312

; <label>:2312                                    ; preds = %2260
  %2313 = add i32 %33, 312
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 65535
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = lshr i32 %2315, 16
  %2323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2322)  ; LegacyF16ToF32(value)
  %2324 = fsub fast float %2285, %2323
  %2325 = fmul fast float %2324, %2317
  %2326 = fadd fast float %2325, %2321
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  br label %2328

; <label>:2328                                    ; preds = %2312, %2260
  %2329 = phi float [ %2327, %2312 ], [ %2285, %2260 ]
  %2330 = call float @dx.op.dot2.f32(i32 54, float %2306, float %2307, float %1749, float %1750)  ; Dot2(ax,ay,bx,by)
  %2331 = call float @dx.op.dot2.f32(i32 54, float %2306, float %2307, float %1751, float %1752)  ; Dot2(ax,ay,bx,by)
  br label %2332

; <label>:2332                                    ; preds = %2328, %2238
  %2333 = phi float [ %2329, %2328 ], [ 0x3FD6666660000000, %2238 ]
  %2334 = phi float [ %2330, %2328 ], [ 0.000000e+00, %2238 ]
  %2335 = phi float [ %2331, %2328 ], [ 0.000000e+00, %2238 ]
  %2336 = phi float [ %2272, %2328 ], [ 1.000000e+00, %2238 ]
  %2337 = add i32 %33, 192
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = lshr i32 %2339, 22
  %2341 = shl nuw nsw i32 %2340, 5
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 64
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2380, label %2347

; <label>:2347                                    ; preds = %2332
  %2348 = add i32 %33, 416
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %2350, 0
  %2352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 131072
  %2356 = icmp eq i32 %2355, 0
  %2357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2352, %dx.types.Handle %64, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2357, 2
  %2361 = fmul fast float %2358, %263
  %2362 = fmul fast float %2359, %266
  %2363 = fmul fast float %2360, %269
  br i1 %2356, label %2370, label %2364

; <label>:2364                                    ; preds = %2347
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = fmul fast float %2366, %2361
  %2368 = fmul fast float %2366, %2362
  %2369 = fmul fast float %2366, %2363
  br label %2370

; <label>:2370                                    ; preds = %2364, %2347
  %2371 = phi float [ %2367, %2364 ], [ %2361, %2347 ]
  %2372 = phi float [ %2368, %2364 ], [ %2362, %2347 ]
  %2373 = phi float [ %2369, %2364 ], [ %2363, %2347 ]
  %2374 = fmul fast float %2371, %2342
  %2375 = select i1 %173, float %2374, float %2371
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2372, float %2373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = select i1 %173, float 0.000000e+00, float %2371
  %2378 = select i1 %173, float %2376, float %2372
  %2379 = select i1 %173, float 0.000000e+00, float %2373
  br label %2380

; <label>:2380                                    ; preds = %2370, %2332
  %2381 = phi float [ %2377, %2370 ], [ 0.000000e+00, %2332 ]
  %2382 = phi float [ %2378, %2370 ], [ 0.000000e+00, %2332 ]
  %2383 = phi float [ %2379, %2370 ], [ 0.000000e+00, %2332 ]
  %2384 = add i32 %33, 128
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = lshr i32 %2386, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = call float @dx.op.dot3.f32(i32 55, float %2253, float %2254, float %2255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2393 = fmul fast float %2391, %2392
  %2394 = fadd fast float %2393, %2388
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  br i1 %1737, label %2397, label %2405

; <label>:2397                                    ; preds = %2380
  %2398 = fsub fast float 1.000000e+00, %2033
  %2399 = fmul fast float %2398, %1726
  %2400 = fmul fast float %2398, %1727
  %2401 = fmul fast float %2398, %1728
  %2402 = fmul fast float %2398, %1729
  %2403 = fmul fast float %2398, %1730
  %2404 = fmul fast float %2398, %1731
  br label %2405

; <label>:2405                                    ; preds = %2397, %2380
  %2406 = phi float [ %2399, %2397 ], [ %1726, %2380 ]
  %2407 = phi float [ %2400, %2397 ], [ %1727, %2380 ]
  %2408 = phi float [ %2401, %2397 ], [ %1728, %2380 ]
  %2409 = phi float [ %2402, %2397 ], [ %1729, %2380 ]
  %2410 = phi float [ %2403, %2397 ], [ %1730, %2380 ]
  %2411 = phi float [ %2404, %2397 ], [ %1731, %2380 ]
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 3
  %2415 = icmp eq i32 %2414, 3
  br i1 %2415, label %2494, label %2416

; <label>:2416                                    ; preds = %2405
  %2417 = and i32 %2413, 16
  %2418 = icmp ne i32 %2417, 0
  %2419 = select i1 %2418, float %2033, float 0.000000e+00
  %2420 = icmp eq i32 %2414, 0
  br i1 %2420, label %2421, label %2449

; <label>:2421                                    ; preds = %2416
  %2422 = and i32 %2413, 64
  %2423 = icmp ne i32 %2422, 0
  %2424 = select i1 %2423, float %2033, float 0.000000e+00
  %2425 = fsub fast float %2253, %2406
  %2426 = fsub fast float %2254, %2407
  %2427 = fsub fast float %2255, %2408
  %2428 = fmul fast float %2419, %2425
  %2429 = fmul fast float %2419, %2426
  %2430 = fmul fast float %2419, %2427
  %2431 = fadd fast float %2428, %2406
  %2432 = fadd fast float %2429, %2407
  %2433 = fadd fast float %2430, %2408
  %2434 = fsub fast float %2239, %1732
  %2435 = fmul fast float %2419, %2434
  %2436 = fadd fast float %2435, %1732
  %2437 = fsub fast float %2381, %2409
  %2438 = fsub fast float %2382, %2410
  %2439 = fsub fast float %2383, %2411
  %2440 = fmul fast float %2424, %2437
  %2441 = fmul fast float %2424, %2438
  %2442 = fmul fast float %2424, %2439
  %2443 = fadd fast float %2440, %2409
  %2444 = fadd fast float %2441, %2410
  %2445 = fadd fast float %2442, %2411
  %2446 = fsub fast float %2396, %1735
  %2447 = fmul fast float %2419, %2446
  %2448 = fadd fast float %2447, %1735
  br label %2494

; <label>:2449                                    ; preds = %2416
  %2450 = icmp eq i32 %2414, 1
  br i1 %2450, label %2451, label %2464

; <label>:2451                                    ; preds = %2449
  %2452 = fadd fast float %2253, -1.000000e+00
  %2453 = fadd fast float %2254, -1.000000e+00
  %2454 = fadd fast float %2255, -1.000000e+00
  %2455 = fmul fast float %2419, %2452
  %2456 = fmul fast float %2419, %2453
  %2457 = fmul fast float %2419, %2454
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fmul fast float %2458, %2406
  %2462 = fmul fast float %2459, %2407
  %2463 = fmul fast float %2460, %2408
  br label %2494

; <label>:2464                                    ; preds = %2449
  %2465 = icmp eq i32 %2414, 2
  br i1 %2465, label %2466, label %2494

; <label>:2466                                    ; preds = %2464
  %2467 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2469 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fmul fast float %2470, %2419
  %2474 = fmul fast float %2471, %2419
  %2475 = fmul fast float %2472, %2419
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fmul fast float %2476, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2406
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2406
  %2484 = fmul fast float %2477, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2407
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2407
  %2489 = fmul fast float %2478, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2408
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2408
  br label %2494

; <label>:2494                                    ; preds = %2466, %2464, %2451, %2421, %2405
  %2495 = phi float [ %2406, %2405 ], [ %2483, %2466 ], [ %2406, %2464 ], [ %2461, %2451 ], [ %2431, %2421 ]
  %2496 = phi float [ %2407, %2405 ], [ %2488, %2466 ], [ %2407, %2464 ], [ %2462, %2451 ], [ %2432, %2421 ]
  %2497 = phi float [ %2408, %2405 ], [ %2493, %2466 ], [ %2408, %2464 ], [ %2463, %2451 ], [ %2433, %2421 ]
  %2498 = phi float [ %2409, %2405 ], [ %2409, %2466 ], [ %2409, %2464 ], [ %2409, %2451 ], [ %2443, %2421 ]
  %2499 = phi float [ %2410, %2405 ], [ %2410, %2466 ], [ %2410, %2464 ], [ %2410, %2451 ], [ %2444, %2421 ]
  %2500 = phi float [ %2411, %2405 ], [ %2411, %2466 ], [ %2411, %2464 ], [ %2411, %2451 ], [ %2445, %2421 ]
  %2501 = phi float [ %1732, %2405 ], [ %1732, %2466 ], [ %1732, %2464 ], [ %1732, %2451 ], [ %2436, %2421 ]
  %2502 = phi float [ %1735, %2405 ], [ %1735, %2466 ], [ %1735, %2464 ], [ %1735, %2451 ], [ %2448, %2421 ]
  %2503 = and i32 %2413, 12
  %2504 = icmp eq i32 %2503, 12
  br i1 %2504, label %2577, label %2505

; <label>:2505                                    ; preds = %2494
  %2506 = and i32 %2413, 2097184
  %2507 = icmp eq i32 %2506, 2097184
  %2508 = select i1 %2507, float %2033, float 0.000000e+00
  %2509 = and i32 %2413, 4194336
  %2510 = icmp eq i32 %2509, 4194336
  %2511 = select i1 %2510, float %2033, float 0.000000e+00
  %2512 = and i32 %2413, 8388640
  %2513 = icmp eq i32 %2512, 8388640
  %2514 = select i1 %2513, float %2033, float 0.000000e+00
  %2515 = icmp eq i32 %2503, 0
  br i1 %2515, label %2516, label %2529

; <label>:2516                                    ; preds = %2505
  %2517 = fsub fast float %2334, %1724
  %2518 = fsub fast float %2335, %1725
  %2519 = fmul fast float %2508, %2517
  %2520 = fmul fast float %2508, %2518
  %2521 = fadd fast float %2519, %1724
  %2522 = fadd fast float %2520, %1725
  %2523 = fsub fast float %2336, %1734
  %2524 = fmul fast float %2511, %2523
  %2525 = fadd fast float %2524, %1734
  %2526 = fsub fast float %2333, %1733
  %2527 = fmul fast float %2514, %2526
  %2528 = fadd fast float %2527, %1733
  br label %2577

; <label>:2529                                    ; preds = %2505
  %2530 = icmp eq i32 %2503, 4
  br i1 %2530, label %2531, label %2563

; <label>:2531                                    ; preds = %2529
  %2532 = fmul fast float %2508, %2334
  %2533 = fmul fast float %2508, %2335
  %2534 = fadd fast float %2532, %1724
  %2535 = fadd fast float %2533, %1725
  %2536 = call float @dx.op.binary.f32(i32 36, float %1734, float %2336)  ; FMin(a,b)
  %2537 = fsub fast float %2536, %1734
  %2538 = fmul fast float %2537, %2511
  %2539 = fadd fast float %2538, %1734
  %2540 = fadd fast float %2333, %1733
  %2541 = fmul fast float %2540, 0x3FF337FAE0000000
  %2542 = fmul fast float %1733, %1733
  %2543 = fmul fast float %2333, %2333
  %2544 = fadd fast float %2543, %2542
  %2545 = fmul fast float %2544, 0x3FE5152B00000000
  %2546 = fmul fast float %1733, 0xBFCC1F85E0000000
  %2547 = fmul fast float %2546, %2333
  %2548 = fadd fast float %2547, 0xBFE1363700000000
  %2549 = fadd fast float %2548, %2541
  %2550 = fsub fast float %2549, %2545
  %2551 = fmul fast float %2540, 0x3FBA6F0D00000000
  %2552 = fmul fast float %2544, 0x3FD0432880000000
  %2553 = fmul fast float %1733, 0xBFEF110800000000
  %2554 = fmul fast float %2553, %2333
  %2555 = fadd fast float %2554, 1.000000e+00
  %2556 = fsub fast float %2555, %2551
  %2557 = fadd fast float %2556, %2552
  %2558 = fdiv fast float %2550, %2557
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = fsub fast float %2559, %1733
  %2561 = fmul fast float %2560, %2514
  %2562 = fadd fast float %2561, %1733
  br label %2577

; <label>:2563                                    ; preds = %2529
  %2564 = icmp eq i32 %2503, 8
  br i1 %2564, label %2565, label %2577

; <label>:2565                                    ; preds = %2563
  %2566 = fmul fast float %2508, %2334
  %2567 = fmul fast float %2508, %2335
  %2568 = fadd fast float %2566, %1724
  %2569 = fadd fast float %2567, %1725
  %2570 = call float @dx.op.binary.f32(i32 36, float %1734, float %2336)  ; FMin(a,b)
  %2571 = fsub fast float %2570, %1734
  %2572 = fmul fast float %2571, %2511
  %2573 = fadd fast float %2572, %1734
  %2574 = fsub fast float %2333, %1733
  %2575 = fmul fast float %2514, %2574
  %2576 = fadd fast float %2575, %1733
  br label %2577

; <label>:2577                                    ; preds = %2565, %2563, %2531, %2516, %2494, %2032, %1736, %1723
  %2578 = phi float [ %1724, %2494 ], [ %1724, %2032 ], [ %1724, %1723 ], [ %2568, %2565 ], [ %1724, %2563 ], [ %2534, %2531 ], [ %2521, %2516 ], [ %1724, %1736 ]
  %2579 = phi float [ %1725, %2494 ], [ %1725, %2032 ], [ %1725, %1723 ], [ %2569, %2565 ], [ %1725, %2563 ], [ %2535, %2531 ], [ %2522, %2516 ], [ %1725, %1736 ]
  %2580 = phi float [ %2495, %2494 ], [ %1726, %2032 ], [ %1726, %1723 ], [ %2495, %2565 ], [ %2495, %2563 ], [ %2495, %2531 ], [ %2495, %2516 ], [ %1726, %1736 ]
  %2581 = phi float [ %2496, %2494 ], [ %1727, %2032 ], [ %1727, %1723 ], [ %2496, %2565 ], [ %2496, %2563 ], [ %2496, %2531 ], [ %2496, %2516 ], [ %1727, %1736 ]
  %2582 = phi float [ %2497, %2494 ], [ %1728, %2032 ], [ %1728, %1723 ], [ %2497, %2565 ], [ %2497, %2563 ], [ %2497, %2531 ], [ %2497, %2516 ], [ %1728, %1736 ]
  %2583 = phi float [ %2498, %2494 ], [ %1729, %2032 ], [ %1729, %1723 ], [ %2498, %2565 ], [ %2498, %2563 ], [ %2498, %2531 ], [ %2498, %2516 ], [ %1729, %1736 ]
  %2584 = phi float [ %2499, %2494 ], [ %1730, %2032 ], [ %1730, %1723 ], [ %2499, %2565 ], [ %2499, %2563 ], [ %2499, %2531 ], [ %2499, %2516 ], [ %1730, %1736 ]
  %2585 = phi float [ %2500, %2494 ], [ %1731, %2032 ], [ %1731, %1723 ], [ %2500, %2565 ], [ %2500, %2563 ], [ %2500, %2531 ], [ %2500, %2516 ], [ %1731, %1736 ]
  %2586 = phi float [ %2501, %2494 ], [ %1732, %2032 ], [ %1732, %1723 ], [ %2501, %2565 ], [ %2501, %2563 ], [ %2501, %2531 ], [ %2501, %2516 ], [ %1732, %1736 ]
  %2587 = phi float [ %1733, %2494 ], [ %1733, %2032 ], [ %1733, %1723 ], [ %2576, %2565 ], [ %1733, %2563 ], [ %2562, %2531 ], [ %2528, %2516 ], [ %1733, %1736 ]
  %2588 = phi float [ %1734, %2494 ], [ %1734, %2032 ], [ %1734, %1723 ], [ %2573, %2565 ], [ %1734, %2563 ], [ %2539, %2531 ], [ %2525, %2516 ], [ %1734, %1736 ]
  %2589 = phi float [ %2502, %2494 ], [ %1735, %2032 ], [ %1735, %1723 ], [ %2502, %2565 ], [ %2502, %2563 ], [ %2502, %2531 ], [ %2502, %2516 ], [ %1735, %1736 ]
  br i1 %350, label %3431, label %2590

; <label>:2590                                    ; preds = %2577
  %2591 = icmp ult i32 %401, 4
  %2592 = add i32 %33, 72
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %33, 76
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = or i32 %2597, %2594
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %3431, label %2600

; <label>:2600                                    ; preds = %2590
  %2601 = and i32 %2594, 262144
  %2602 = icmp ne i32 %2601, 0
  %2603 = select i1 %2602, float %36, float 1.000000e+00
  %2604 = select i1 %2602, float %37, float 0.000000e+00
  %2605 = select i1 %2602, float %38, float 0.000000e+00
  %2606 = select i1 %2602, float %39, float 1.000000e+00
  %2607 = select i1 %2602, float %40, float %56
  %2608 = select i1 %2602, float %41, float %57
  %2609 = add i32 %33, 332
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 16
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = fmul fast float %2613, 0x3F50624DE0000000
  %2615 = add i32 %33, 136
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = lshr i32 %2617, 16
  %2619 = and i32 %2618, 255
  %2620 = lshr i32 %2617, 24
  %2621 = add i32 %33, 340
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 65535
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = lshr i32 %2623, 16
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = add i32 %33, 80
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = lshr i32 %2630, 22
  %2632 = shl nuw nsw i32 %2631, 5
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = shl i32 %2630, 4
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2630, 7
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 3
  %2642 = fmul fast float %2641, 1.000000e+03
  %2643 = fmul fast float %340, %2642
  %2644 = call float @dx.op.unary.f32(i32 22, float %2643)  ; Frc(value)
  %2645 = fadd fast float %2644, %330
  %2646 = fmul fast float %341, %2642
  %2647 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2648 = fadd fast float %2647, %332
  %2649 = fmul fast float %2614, %2642
  %2650 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2651 = fmul fast float %2650, 0x401921FB60000000
  %2652 = fadd fast float %2651, %2633
  %2653 = call float @dx.op.unary.f32(i32 13, float %2652)  ; Sin(value)
  %2654 = call float @dx.op.unary.f32(i32 12, float %2652)  ; Cos(value)
  %2655 = fsub fast float -0.000000e+00, %2653
  %2656 = fadd fast float %2607, -5.000000e-01
  %2657 = fadd fast float %2608, -5.000000e-01
  %2658 = fmul fast float %2625, %2656
  %2659 = fmul fast float %2627, %2657
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = fadd fast float %2659, 5.000000e-01
  %2662 = fmul fast float %2636, %2660
  %2663 = fmul fast float %2639, %2661
  %2664 = fmul fast float %2654, %2662
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2663, float %2664)  ; FMad(a,b,c)
  %2666 = fmul fast float %2653, %2662
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2663, float %2666)  ; FMad(a,b,c)
  %2668 = fadd fast float %2645, %2665
  %2669 = fadd fast float %2648, %2667
  %2670 = icmp ugt i32 %2619, 1
  %2671 = icmp ugt i32 %2617, 33554431
  %2672 = or i1 %2671, %2670
  br i1 %2672, label %2673, label %2698

; <label>:2673                                    ; preds = %2600
  %2674 = add i32 %33, 276
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 16
  %2678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2677)  ; LegacyF16ToF32(value)
  %2679 = fmul fast float %2641, %2678
  %2680 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2681 = mul nuw nsw i32 %2619, %2620
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2680, %2682
  %2684 = call float @dx.op.unary.f32(i32 27, float %2683)  ; Round_ni(value)
  %2685 = fptoui float %2684 to i32
  %2686 = urem i32 %2685, %2619
  %2687 = udiv i32 %2685, %2620
  %2688 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2689 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2690 = uitofp i32 %2686 to float
  %2691 = uitofp i32 %2687 to float
  %2692 = fadd fast float %2688, %2690
  %2693 = fadd fast float %2689, %2691
  %2694 = uitofp i32 %2619 to float
  %2695 = uitofp i32 %2620 to float
  %2696 = fdiv fast float %2692, %2694
  %2697 = fdiv fast float %2693, %2695
  br label %2698

; <label>:2698                                    ; preds = %2673, %2600
  %2699 = phi float [ %2696, %2673 ], [ %2668, %2600 ]
  %2700 = phi float [ %2697, %2673 ], [ %2669, %2600 ]
  %2701 = and i32 %2594, 16777216
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2812, label %2703

; <label>:2703                                    ; preds = %2698
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = fadd fast float %2705, %131
  %2709 = fadd fast float %2706, %132
  %2710 = fadd fast float %2707, %133
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = icmp eq i32 %34, 65535
  br i1 %2714, label %2809, label %2715

; <label>:2715                                    ; preds = %2703
  %2716 = lshr i32 %34, 1
  %2717 = shl i32 %2716, 2
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = and i32 %34, 1
  %2721 = icmp ne i32 %2720, 0
  %2722 = lshr i32 %2719, 16
  %2723 = and i32 %2719, 65535
  %2724 = select i1 %2721, i32 %2722, i32 %2723
  %2725 = icmp eq i32 %2724, 65535
  br i1 %2725, label %2805, label %2726

; <label>:2726                                    ; preds = %2715
  %2727 = mul nuw nsw i32 %2724, 40
  %2728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = add nuw nsw i32 %2727, 12
  %2733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = add nuw nsw i32 %2727, 24
  %2738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = add nuw nsw i32 %2727, 36
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = fsub fast float %2708, %2729
  %2746 = fsub fast float %2709, %2730
  %2747 = fsub fast float %2710, %2731
  %2748 = fmul fast float %2744, %2745
  %2749 = fmul fast float %2744, %2746
  %2750 = fmul fast float %2744, %2747
  %2751 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2752 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2753 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2754 = fadd fast float %2751, 5.000000e-01
  %2755 = fadd fast float %2752, 5.000000e-01
  %2756 = fadd fast float %2753, 5.000000e-01
  %2757 = fmul fast float %2754, %2734
  %2758 = fmul fast float %2755, %2735
  %2759 = fmul fast float %2756, %2736
  %2760 = shl i32 %34, 2
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2766 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2764, %dx.types.Handle %30, float %2765, float %2766, float %2767, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = fmul fast float %2769, 1.023000e+03
  %2773 = fmul fast float %2770, 1.023000e+03
  %2774 = fmul fast float %2771, 1.023000e+03
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = fsub fast float %2748, %2751
  %2782 = fsub fast float %2749, %2752
  %2783 = fsub fast float %2750, %2753
  %2784 = fmul fast float %2781, 7.500000e-01
  %2785 = fmul fast float %2782, 7.500000e-01
  %2786 = fmul fast float %2783, 7.500000e-01
  %2787 = fadd fast float %2751, 1.250000e-01
  %2788 = fadd fast float %2787, %2784
  %2789 = fadd fast float %2788, %2778
  %2790 = fadd fast float %2752, 1.250000e-01
  %2791 = fadd fast float %2790, %2785
  %2792 = fadd fast float %2791, %2779
  %2793 = fadd fast float %2753, 1.250000e-01
  %2794 = fadd fast float %2793, %2786
  %2795 = fadd fast float %2794, %2780
  %2796 = fmul fast float %2789, %2739
  %2797 = fmul fast float %2792, %2740
  %2798 = fmul fast float %2795, %2741
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = add i32 %2800, 0
  %2802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2802, %dx.types.Handle %28, float %2796, float %2797, float %2798, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  br label %2805

; <label>:2805                                    ; preds = %2726, %2715
  %2806 = phi float [ %2804, %2726 ], [ -1.000000e+00, %2715 ]
  %2807 = fadd fast float %2806, %2713
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  br label %2809

; <label>:2809                                    ; preds = %2805, %2703
  %2810 = phi float [ %2808, %2805 ], [ %2713, %2703 ]
  %2811 = fmul fast float %2810, %396
  br label %2812

; <label>:2812                                    ; preds = %2809, %2698
  %2813 = phi float [ %2811, %2809 ], [ %396, %2698 ]
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 256
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %2864, label %2818

; <label>:2818                                    ; preds = %2812
  %2819 = add i32 %33, 452
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %2821, 0
  %2823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2823, %dx.types.Handle %65, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = add i32 %33, 148
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = shl i32 %2828, 4
  %2830 = and i32 %2829, 32752
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = lshr i32 %2828, 7
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fsub fast float 1.000000e+00, %2813
  %2836 = call float @dx.op.binary.f32(i32 35, float %2835, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2837 = bitcast float %2813 to i32
  %2838 = sitofp i32 %2837 to float
  %2839 = fadd fast float %2838, 0xC1CFBF8940000000
  %2840 = fmul fast float %2834, %2839
  %2841 = fadd fast float %2840, 0x41CFBF8940000000
  %2842 = fptosi float %2841 to i32
  %2843 = bitcast i32 %2842 to float
  %2844 = bitcast float %2836 to i32
  %2845 = sitofp i32 %2844 to float
  %2846 = fadd fast float %2845, 0xC1CFBF8940000000
  %2847 = fmul fast float %2846, %2834
  %2848 = fadd fast float %2847, 0x41CFBF8940000000
  %2849 = fptosi float %2848 to i32
  %2850 = bitcast i32 %2849 to float
  %2851 = fmul fast float %2843, %2831
  %2852 = fmul fast float %2850, %2831
  %2853 = fsub fast float %2836, %2851
  %2854 = fadd fast float %2852, %2836
  %2855 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2856 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2857 = fsub fast float %2825, %2855
  %2858 = fsub fast float %2856, %2855
  %2859 = bitcast float %2858 to i32
  %2860 = sub nsw i32 2129859010, %2859
  %2861 = bitcast i32 %2860 to float
  %2862 = fmul fast float %2861, %2857
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  br label %2864

; <label>:2864                                    ; preds = %2818, %2812
  %2865 = phi float [ %2863, %2818 ], [ %2813, %2812 ]
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 128
  %2869 = icmp eq i32 %2868, 0
  br i1 %2869, label %2886, label %2870

; <label>:2870                                    ; preds = %2864
  %2871 = add i32 %33, 436
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = add i32 %2873, 0
  %2875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2875, %dx.types.Handle %65, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 524288
  %2881 = icmp ne i32 %2880, 0
  %2882 = fcmp fast ogt float %2877, 0x3FE0101020000000
  %2883 = select i1 %2882, float 1.000000e+00, float 0.000000e+00
  %2884 = select i1 %2881, float %2883, float %2877
  %2885 = fmul fast float %2884, %2865
  br label %2886

; <label>:2886                                    ; preds = %2870, %2864
  %2887 = phi float [ %2885, %2870 ], [ %2865, %2864 ]
  %2888 = fcmp fast ult float %2887, 0x3F70101020000000
  br i1 %2888, label %3431, label %2889

; <label>:2889                                    ; preds = %2886
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 16
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %3092, label %2894

; <label>:2894                                    ; preds = %2889
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = add i32 %33, 388
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %64, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = extractvalue %dx.types.ResRet.f32 %2902, 3
  %2907 = and i32 %2896, 255
  %2908 = uitofp i32 %2907 to float
  %2909 = lshr i32 %2896, 8
  %2910 = and i32 %2909, 255
  %2911 = uitofp i32 %2910 to float
  %2912 = fmul fast float %2906, %2908
  %2913 = fadd fast float %2912, %2911
  %2914 = fmul fast float %2913, 0x3F70101000000000
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 512
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2927, label %2919

; <label>:2919                                    ; preds = %2894
  %2920 = add i32 %33, 472
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %2922, 0
  %2924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2924, %dx.types.Handle %65, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  br label %2927

; <label>:2927                                    ; preds = %2919, %2894
  %2928 = phi float [ %2926, %2919 ], [ 1.000000e+00, %2894 ]
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 33554432
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3039, label %2933

; <label>:2933                                    ; preds = %2927
  %2934 = add i32 %33, 272
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 65535
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = lshr i32 %2936, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = add i32 %33, 276
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 65535
  %2945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2944)  ; LegacyF16ToF32(value)
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = lshr i32 %2947, 24
  %2949 = uitofp i32 %2948 to float
  %2950 = fmul fast float %2949, 0x3F70101020000000
  %2951 = and i32 %2947, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = lshr i32 %2947, 8
  %2955 = and i32 %2954, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = lshr i32 %2947, 16
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = add i32 %33, 268
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 24
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = and i32 %2964, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = lshr i32 %2964, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2964, 16
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = bitcast float %2903 to i32
  %2980 = ashr i32 %2979, 1
  %2981 = sub nsw i32 1597463174, %2980
  %2982 = bitcast i32 %2981 to float
  %2983 = fmul fast float %2903, 5.000000e-01
  %2984 = fmul fast float %2982, %2982
  %2985 = fmul fast float %2984, %2983
  %2986 = fsub fast float 1.500000e+00, %2985
  %2987 = fmul fast float %2982, %2903
  %2988 = fmul fast float %2987, %2986
  %2989 = bitcast float %2904 to i32
  %2990 = ashr i32 %2989, 1
  %2991 = sub nsw i32 1597463174, %2990
  %2992 = bitcast i32 %2991 to float
  %2993 = fmul fast float %2904, 5.000000e-01
  %2994 = fmul fast float %2992, %2992
  %2995 = fmul fast float %2994, %2993
  %2996 = fsub fast float 1.500000e+00, %2995
  %2997 = fmul fast float %2992, %2904
  %2998 = fmul fast float %2997, %2996
  %2999 = bitcast float %2905 to i32
  %3000 = ashr i32 %2999, 1
  %3001 = sub nsw i32 1597463174, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2905, 5.000000e-01
  %3004 = fmul fast float %3002, %3002
  %3005 = fmul fast float %3004, %3003
  %3006 = fsub fast float 1.500000e+00, %3005
  %3007 = fmul fast float %3002, %2905
  %3008 = fmul fast float %3007, %3006
  %3009 = fsub fast float %2988, %2970
  %3010 = fsub fast float %2998, %2974
  %3011 = fsub fast float %3008, %2978
  %3012 = fmul fast float %3009, %2938
  %3013 = fmul fast float %3010, %2940
  %3014 = fmul fast float %3011, %2945
  %3015 = fadd fast float %3012, %2953
  %3016 = fadd fast float %3013, %2957
  %3017 = fadd fast float %3014, %2961
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  %3020 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3021 = fmul fast float %3018, %3018
  %3022 = fmul fast float %3019, %3019
  %3023 = fmul fast float %3020, %3020
  %3024 = fsub fast float %3021, %2903
  %3025 = fsub fast float %3022, %2904
  %3026 = fsub fast float %3023, %2905
  %3027 = fmul fast float %3024, %2928
  %3028 = fmul fast float %3025, %2928
  %3029 = fmul fast float %3026, %2928
  %3030 = fadd fast float %3027, %2903
  %3031 = fadd fast float %3028, %2904
  %3032 = fadd fast float %3029, %2905
  %3033 = fadd fast float %2950, %2914
  %3034 = fsub fast float %3033, %2967
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = fsub fast float %3035, %2914
  %3037 = fmul fast float %3036, %2928
  %3038 = fadd fast float %3037, %2914
  br label %3092

; <label>:3039                                    ; preds = %2927
  %3040 = and i32 %2930, 134217728
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3076, label %3042

; <label>:3042                                    ; preds = %3039
  %3043 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3045 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3046 = fadd fast float %3043, -5.000000e-01
  %3047 = fadd fast float %3044, -5.000000e-01
  %3048 = fadd fast float %3045, -5.000000e-01
  %3049 = fmul fast float %3046, %2928
  %3050 = fmul fast float %3047, %2928
  %3051 = fmul fast float %3048, %2928
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fadd fast float %3050, 5.000000e-01
  %3054 = fadd fast float %3051, 5.000000e-01
  %3055 = call float @dx.op.unary.f32(i32 24, float %2903)  ; Sqrt(value)
  %3056 = call float @dx.op.unary.f32(i32 24, float %2904)  ; Sqrt(value)
  %3057 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %3058 = fmul fast float %3052, 2.000000e+00
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = fmul fast float %3059, %3055
  %3061 = fadd fast float %3060, %3058
  %3062 = fmul fast float %3061, %3055
  %3063 = fmul fast float %3053, 2.000000e+00
  %3064 = fsub fast float 1.000000e+00, %3063
  %3065 = fmul fast float %3064, %3056
  %3066 = fadd fast float %3065, %3063
  %3067 = fmul fast float %3066, %3056
  %3068 = fmul fast float %3054, 2.000000e+00
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = fmul fast float %3069, %3057
  %3071 = fadd fast float %3070, %3068
  %3072 = fmul fast float %3071, %3057
  %3073 = fmul fast float %3062, %3062
  %3074 = fmul fast float %3067, %3067
  %3075 = fmul fast float %3072, %3072
  br label %3092

; <label>:3076                                    ; preds = %3039
  %3077 = fmul fast float %317, %317
  %3078 = fmul fast float %321, %321
  %3079 = fmul fast float %325, %325
  %3080 = fadd fast float %3077, -1.000000e+00
  %3081 = fadd fast float %3078, -1.000000e+00
  %3082 = fadd fast float %3079, -1.000000e+00
  %3083 = fmul fast float %2928, %3080
  %3084 = fmul fast float %2928, %3081
  %3085 = fmul fast float %2928, %3082
  %3086 = fadd fast float %3083, 1.000000e+00
  %3087 = fadd fast float %3084, 1.000000e+00
  %3088 = fadd fast float %3085, 1.000000e+00
  %3089 = fmul fast float %3086, %2903
  %3090 = fmul fast float %3087, %2904
  %3091 = fmul fast float %3088, %2905
  br label %3092

; <label>:3092                                    ; preds = %3076, %3042, %2933, %2889
  %3093 = phi float [ %3038, %2933 ], [ %2914, %3042 ], [ %2914, %3076 ], [ 0x3FA23C0BE0000000, %2889 ]
  %3094 = phi float [ %3030, %2933 ], [ %3073, %3042 ], [ %3089, %3076 ], [ 1.000000e+00, %2889 ]
  %3095 = phi float [ %3031, %2933 ], [ %3074, %3042 ], [ %3090, %3076 ], [ 1.000000e+00, %2889 ]
  %3096 = phi float [ %3032, %2933 ], [ %3075, %3042 ], [ %3091, %3076 ], [ 1.000000e+00, %2889 ]
  %3097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.i32 %3097, 1
  %3099 = and i32 %3098, 1
  %3100 = icmp ne i32 %3099, 0
  %3101 = add i32 %33, 356
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 32
  %3105 = icmp ne i32 %3104, 0
  %3106 = and i1 %3100, %3105
  %3107 = select i1 %3106, float 1.000000e+00, float %3094
  %3108 = select i1 %3106, float 0x3FD3333340000000, float %3095
  %3109 = select i1 %3106, float 0x3FD3333340000000, float %3096
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 32
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3186, label %3114

; <label>:3114                                    ; preds = %3092
  %3115 = add i32 %33, 140
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %33, 404
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %3120, 0
  %3122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3122, %dx.types.Handle %64, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = extractvalue %dx.types.ResRet.f32 %3123, 3
  %3128 = and i32 %3117, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = lshr i32 %3117, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3117, 16
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = fmul fast float %3135, 0x3F70101000000000
  %3137 = fmul fast float %3124, %3129
  %3138 = fadd fast float %3137, %3132
  %3139 = fmul fast float %3138, 0x3F70101000000000
  %3140 = fadd fast float %3125, -5.000000e-01
  %3141 = fadd fast float %3127, -5.000000e-01
  %3142 = fmul fast float %3140, %3136
  %3143 = fmul fast float %3141, %3136
  %3144 = fadd fast float %3142, 5.000000e-01
  %3145 = fadd fast float %3143, 5.000000e-01
  %3146 = fmul fast float %3144, 2.000000e+00
  %3147 = fadd fast float %3146, -1.000000e+00
  %3148 = fmul fast float %3145, 2.000000e+00
  %3149 = fadd fast float %3148, -1.000000e+00
  %3150 = fadd fast float %3147, %3149
  %3151 = fmul fast float %3150, 5.000000e-01
  %3152 = fsub fast float %3147, %3149
  %3153 = fmul fast float %3152, 5.000000e-01
  %3154 = call float @dx.op.unary.f32(i32 6, float %3151)  ; FAbs(value)
  %3155 = fsub fast float 1.000000e+00, %3154
  %3156 = call float @dx.op.unary.f32(i32 6, float %3153)  ; FAbs(value)
  %3157 = fsub fast float %3155, %3156
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3151, float %3153, float %3157, float %3151, float %3153, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3151, %3159
  %3161 = fmul fast float %3153, %3159
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 67108864
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3182, label %3166

; <label>:3166                                    ; preds = %3114
  %3167 = add i32 %33, 328
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %3169, 16
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = fsub fast float %3139, %3177
  %3179 = fmul fast float %3178, %3171
  %3180 = fadd fast float %3179, %3175
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  br label %3182

; <label>:3182                                    ; preds = %3166, %3114
  %3183 = phi float [ %3181, %3166 ], [ %3139, %3114 ]
  %3184 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %2603, float %2604)  ; Dot2(ax,ay,bx,by)
  %3185 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %2605, float %2606)  ; Dot2(ax,ay,bx,by)
  br label %3186

; <label>:3186                                    ; preds = %3182, %3092
  %3187 = phi float [ %3183, %3182 ], [ 0x3FD6666660000000, %3092 ]
  %3188 = phi float [ %3184, %3182 ], [ 0.000000e+00, %3092 ]
  %3189 = phi float [ %3185, %3182 ], [ 0.000000e+00, %3092 ]
  %3190 = phi float [ %3126, %3182 ], [ 1.000000e+00, %3092 ]
  %3191 = add i32 %33, 208
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = lshr i32 %3193, 22
  %3195 = shl nuw nsw i32 %3194, 5
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 64
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3234, label %3201

; <label>:3201                                    ; preds = %3186
  %3202 = add i32 %33, 420
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = add i32 %3204, 0
  %3206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 131072
  %3210 = icmp eq i32 %3209, 0
  %3211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3206, %dx.types.Handle %64, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3215 = fmul fast float %3212, %305
  %3216 = fmul fast float %3213, %308
  %3217 = fmul fast float %3214, %311
  br i1 %3210, label %3224, label %3218

; <label>:3218                                    ; preds = %3201
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = fmul fast float %3220, %3215
  %3222 = fmul fast float %3220, %3216
  %3223 = fmul fast float %3220, %3217
  br label %3224

; <label>:3224                                    ; preds = %3218, %3201
  %3225 = phi float [ %3221, %3218 ], [ %3215, %3201 ]
  %3226 = phi float [ %3222, %3218 ], [ %3216, %3201 ]
  %3227 = phi float [ %3223, %3218 ], [ %3217, %3201 ]
  %3228 = fmul fast float %3225, %3196
  %3229 = select i1 %173, float %3228, float %3225
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3229, float %3226, float %3227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = select i1 %173, float 0.000000e+00, float %3225
  %3232 = select i1 %173, float %3230, float %3226
  %3233 = select i1 %173, float 0.000000e+00, float %3227
  br label %3234

; <label>:3234                                    ; preds = %3224, %3186
  %3235 = phi float [ %3231, %3224 ], [ 0.000000e+00, %3186 ]
  %3236 = phi float [ %3232, %3224 ], [ 0.000000e+00, %3186 ]
  %3237 = phi float [ %3233, %3224 ], [ 0.000000e+00, %3186 ]
  %3238 = add i32 %33, 144
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3240, 8
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3107, float %3108, float %3109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = fmul fast float %3245, %3246
  %3248 = fadd fast float %3247, %3242
  %3249 = fmul fast float %3248, 0x3F70101020000000
  %3250 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  br i1 %2591, label %3251, label %3259

; <label>:3251                                    ; preds = %3234
  %3252 = fsub fast float 1.000000e+00, %2887
  %3253 = fmul fast float %3252, %2580
  %3254 = fmul fast float %3252, %2581
  %3255 = fmul fast float %3252, %2582
  %3256 = fmul fast float %3252, %2583
  %3257 = fmul fast float %3252, %2584
  %3258 = fmul fast float %3252, %2585
  br label %3259

; <label>:3259                                    ; preds = %3251, %3234
  %3260 = phi float [ %3253, %3251 ], [ %2580, %3234 ]
  %3261 = phi float [ %3254, %3251 ], [ %2581, %3234 ]
  %3262 = phi float [ %3255, %3251 ], [ %2582, %3234 ]
  %3263 = phi float [ %3256, %3251 ], [ %2583, %3234 ]
  %3264 = phi float [ %3257, %3251 ], [ %2584, %3234 ]
  %3265 = phi float [ %3258, %3251 ], [ %2585, %3234 ]
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 3
  %3269 = icmp eq i32 %3268, 3
  br i1 %3269, label %3348, label %3270

; <label>:3270                                    ; preds = %3259
  %3271 = and i32 %3267, 16
  %3272 = icmp ne i32 %3271, 0
  %3273 = select i1 %3272, float %2887, float 0.000000e+00
  %3274 = icmp eq i32 %3268, 0
  br i1 %3274, label %3275, label %3303

; <label>:3275                                    ; preds = %3270
  %3276 = and i32 %3267, 64
  %3277 = icmp ne i32 %3276, 0
  %3278 = select i1 %3277, float %2887, float 0.000000e+00
  %3279 = fsub fast float %3107, %3260
  %3280 = fsub fast float %3108, %3261
  %3281 = fsub fast float %3109, %3262
  %3282 = fmul fast float %3273, %3279
  %3283 = fmul fast float %3273, %3280
  %3284 = fmul fast float %3273, %3281
  %3285 = fadd fast float %3282, %3260
  %3286 = fadd fast float %3283, %3261
  %3287 = fadd fast float %3284, %3262
  %3288 = fsub fast float %3093, %2586
  %3289 = fmul fast float %3273, %3288
  %3290 = fadd fast float %3289, %2586
  %3291 = fsub fast float %3235, %3263
  %3292 = fsub fast float %3236, %3264
  %3293 = fsub fast float %3237, %3265
  %3294 = fmul fast float %3278, %3291
  %3295 = fmul fast float %3278, %3292
  %3296 = fmul fast float %3278, %3293
  %3297 = fadd fast float %3294, %3263
  %3298 = fadd fast float %3295, %3264
  %3299 = fadd fast float %3296, %3265
  %3300 = fsub fast float %3250, %2589
  %3301 = fmul fast float %3273, %3300
  %3302 = fadd fast float %3301, %2589
  br label %3348

; <label>:3303                                    ; preds = %3270
  %3304 = icmp eq i32 %3268, 1
  br i1 %3304, label %3305, label %3318

; <label>:3305                                    ; preds = %3303
  %3306 = fadd fast float %3107, -1.000000e+00
  %3307 = fadd fast float %3108, -1.000000e+00
  %3308 = fadd fast float %3109, -1.000000e+00
  %3309 = fmul fast float %3273, %3306
  %3310 = fmul fast float %3273, %3307
  %3311 = fmul fast float %3273, %3308
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fmul fast float %3312, %3260
  %3316 = fmul fast float %3313, %3261
  %3317 = fmul fast float %3314, %3262
  br label %3348

; <label>:3318                                    ; preds = %3303
  %3319 = icmp eq i32 %3268, 2
  br i1 %3319, label %3320, label %3348

; <label>:3320                                    ; preds = %3318
  %3321 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3323 = call float @dx.op.unary.f32(i32 24, float %3109)  ; Sqrt(value)
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fadd fast float %3322, -5.000000e-01
  %3326 = fadd fast float %3323, -5.000000e-01
  %3327 = fmul fast float %3324, %3273
  %3328 = fmul fast float %3325, %3273
  %3329 = fmul fast float %3326, %3273
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = fadd fast float %3328, 5.000000e-01
  %3332 = fadd fast float %3329, 5.000000e-01
  %3333 = fmul fast float %3330, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3260
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3260
  %3338 = fmul fast float %3331, 2.000000e+00
  %3339 = fsub fast float 1.000000e+00, %3338
  %3340 = fmul fast float %3339, %3261
  %3341 = fadd fast float %3340, %3338
  %3342 = fmul fast float %3341, %3261
  %3343 = fmul fast float %3332, 2.000000e+00
  %3344 = fsub fast float 1.000000e+00, %3343
  %3345 = fmul fast float %3344, %3262
  %3346 = fadd fast float %3345, %3343
  %3347 = fmul fast float %3346, %3262
  br label %3348

; <label>:3348                                    ; preds = %3320, %3318, %3305, %3275, %3259
  %3349 = phi float [ %3260, %3259 ], [ %3337, %3320 ], [ %3260, %3318 ], [ %3315, %3305 ], [ %3285, %3275 ]
  %3350 = phi float [ %3261, %3259 ], [ %3342, %3320 ], [ %3261, %3318 ], [ %3316, %3305 ], [ %3286, %3275 ]
  %3351 = phi float [ %3262, %3259 ], [ %3347, %3320 ], [ %3262, %3318 ], [ %3317, %3305 ], [ %3287, %3275 ]
  %3352 = phi float [ %3263, %3259 ], [ %3263, %3320 ], [ %3263, %3318 ], [ %3263, %3305 ], [ %3297, %3275 ]
  %3353 = phi float [ %3264, %3259 ], [ %3264, %3320 ], [ %3264, %3318 ], [ %3264, %3305 ], [ %3298, %3275 ]
  %3354 = phi float [ %3265, %3259 ], [ %3265, %3320 ], [ %3265, %3318 ], [ %3265, %3305 ], [ %3299, %3275 ]
  %3355 = phi float [ %2586, %3259 ], [ %2586, %3320 ], [ %2586, %3318 ], [ %2586, %3305 ], [ %3290, %3275 ]
  %3356 = phi float [ %2589, %3259 ], [ %2589, %3320 ], [ %2589, %3318 ], [ %2589, %3305 ], [ %3302, %3275 ]
  %3357 = and i32 %3267, 12
  %3358 = icmp eq i32 %3357, 12
  br i1 %3358, label %3431, label %3359

; <label>:3359                                    ; preds = %3348
  %3360 = and i32 %3267, 2097184
  %3361 = icmp eq i32 %3360, 2097184
  %3362 = select i1 %3361, float %2887, float 0.000000e+00
  %3363 = and i32 %3267, 4194336
  %3364 = icmp eq i32 %3363, 4194336
  %3365 = select i1 %3364, float %2887, float 0.000000e+00
  %3366 = and i32 %3267, 8388640
  %3367 = icmp eq i32 %3366, 8388640
  %3368 = select i1 %3367, float %2887, float 0.000000e+00
  %3369 = icmp eq i32 %3357, 0
  br i1 %3369, label %3370, label %3383

; <label>:3370                                    ; preds = %3359
  %3371 = fsub fast float %3188, %2578
  %3372 = fsub fast float %3189, %2579
  %3373 = fmul fast float %3362, %3371
  %3374 = fmul fast float %3362, %3372
  %3375 = fadd fast float %3373, %2578
  %3376 = fadd fast float %3374, %2579
  %3377 = fsub fast float %3190, %2588
  %3378 = fmul fast float %3365, %3377
  %3379 = fadd fast float %3378, %2588
  %3380 = fsub fast float %3187, %2587
  %3381 = fmul fast float %3368, %3380
  %3382 = fadd fast float %3381, %2587
  br label %3431

; <label>:3383                                    ; preds = %3359
  %3384 = icmp eq i32 %3357, 4
  br i1 %3384, label %3385, label %3417

; <label>:3385                                    ; preds = %3383
  %3386 = fmul fast float %3362, %3188
  %3387 = fmul fast float %3362, %3189
  %3388 = fadd fast float %3386, %2578
  %3389 = fadd fast float %3387, %2579
  %3390 = call float @dx.op.binary.f32(i32 36, float %2588, float %3190)  ; FMin(a,b)
  %3391 = fsub fast float %3390, %2588
  %3392 = fmul fast float %3391, %3365
  %3393 = fadd fast float %3392, %2588
  %3394 = fadd fast float %3187, %2587
  %3395 = fmul fast float %3394, 0x3FF337FAE0000000
  %3396 = fmul fast float %2587, %2587
  %3397 = fmul fast float %3187, %3187
  %3398 = fadd fast float %3397, %3396
  %3399 = fmul fast float %3398, 0x3FE5152B00000000
  %3400 = fmul fast float %2587, 0xBFCC1F85E0000000
  %3401 = fmul fast float %3400, %3187
  %3402 = fadd fast float %3401, 0xBFE1363700000000
  %3403 = fadd fast float %3402, %3395
  %3404 = fsub fast float %3403, %3399
  %3405 = fmul fast float %3394, 0x3FBA6F0D00000000
  %3406 = fmul fast float %3398, 0x3FD0432880000000
  %3407 = fmul fast float %2587, 0xBFEF110800000000
  %3408 = fmul fast float %3407, %3187
  %3409 = fadd fast float %3408, 1.000000e+00
  %3410 = fsub fast float %3409, %3405
  %3411 = fadd fast float %3410, %3406
  %3412 = fdiv fast float %3404, %3411
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3414 = fsub fast float %3413, %2587
  %3415 = fmul fast float %3414, %3368
  %3416 = fadd fast float %3415, %2587
  br label %3431

; <label>:3417                                    ; preds = %3383
  %3418 = icmp eq i32 %3357, 8
  br i1 %3418, label %3419, label %3431

; <label>:3419                                    ; preds = %3417
  %3420 = fmul fast float %3362, %3188
  %3421 = fmul fast float %3362, %3189
  %3422 = fadd fast float %3420, %2578
  %3423 = fadd fast float %3421, %2579
  %3424 = call float @dx.op.binary.f32(i32 36, float %2588, float %3190)  ; FMin(a,b)
  %3425 = fsub fast float %3424, %2588
  %3426 = fmul fast float %3425, %3365
  %3427 = fadd fast float %3426, %2588
  %3428 = fsub fast float %3187, %2587
  %3429 = fmul fast float %3368, %3428
  %3430 = fadd fast float %3429, %2587
  br label %3431

; <label>:3431                                    ; preds = %3419, %3417, %3385, %3370, %3348, %2886, %2590, %2577
  %3432 = phi float [ %2578, %3348 ], [ %2578, %2886 ], [ %2578, %2577 ], [ %2578, %2590 ], [ %3375, %3370 ], [ %3388, %3385 ], [ %2578, %3417 ], [ %3422, %3419 ]
  %3433 = phi float [ %2579, %3348 ], [ %2579, %2886 ], [ %2579, %2577 ], [ %2579, %2590 ], [ %3376, %3370 ], [ %3389, %3385 ], [ %2579, %3417 ], [ %3423, %3419 ]
  %3434 = phi float [ %3349, %3348 ], [ %2580, %2886 ], [ %2580, %2577 ], [ %2580, %2590 ], [ %3349, %3370 ], [ %3349, %3385 ], [ %3349, %3417 ], [ %3349, %3419 ]
  %3435 = phi float [ %3350, %3348 ], [ %2581, %2886 ], [ %2581, %2577 ], [ %2581, %2590 ], [ %3350, %3370 ], [ %3350, %3385 ], [ %3350, %3417 ], [ %3350, %3419 ]
  %3436 = phi float [ %3351, %3348 ], [ %2582, %2886 ], [ %2582, %2577 ], [ %2582, %2590 ], [ %3351, %3370 ], [ %3351, %3385 ], [ %3351, %3417 ], [ %3351, %3419 ]
  %3437 = phi float [ %3352, %3348 ], [ %2583, %2886 ], [ %2583, %2577 ], [ %2583, %2590 ], [ %3352, %3370 ], [ %3352, %3385 ], [ %3352, %3417 ], [ %3352, %3419 ]
  %3438 = phi float [ %3353, %3348 ], [ %2584, %2886 ], [ %2584, %2577 ], [ %2584, %2590 ], [ %3353, %3370 ], [ %3353, %3385 ], [ %3353, %3417 ], [ %3353, %3419 ]
  %3439 = phi float [ %3354, %3348 ], [ %2585, %2886 ], [ %2585, %2577 ], [ %2585, %2590 ], [ %3354, %3370 ], [ %3354, %3385 ], [ %3354, %3417 ], [ %3354, %3419 ]
  %3440 = phi float [ %3355, %3348 ], [ %2586, %2886 ], [ %2586, %2577 ], [ %2586, %2590 ], [ %3355, %3370 ], [ %3355, %3385 ], [ %3355, %3417 ], [ %3355, %3419 ]
  %3441 = phi float [ %2587, %3348 ], [ %2587, %2886 ], [ %2587, %2577 ], [ %2587, %2590 ], [ %3382, %3370 ], [ %3416, %3385 ], [ %2587, %3417 ], [ %3430, %3419 ]
  %3442 = phi float [ %2588, %3348 ], [ %2588, %2886 ], [ %2588, %2577 ], [ %2588, %2590 ], [ %3379, %3370 ], [ %3393, %3385 ], [ %2588, %3417 ], [ %3427, %3419 ]
  %3443 = phi float [ %3356, %3348 ], [ %2589, %2886 ], [ %2589, %2577 ], [ %2589, %2590 ], [ %3356, %3370 ], [ %3356, %3385 ], [ %3356, %3417 ], [ %3356, %3419 ]
  %3444 = add i32 %33, 360
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.i32 %3445, 1
  %3448 = bitcast i32 %3446 to float
  %3449 = bitcast i32 %3447 to float
  %3450 = fcmp fast oge float %3448, 0.000000e+00
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = select i1 %3450, float %3448, float %3452
  %3454 = add i32 %33, 456
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = add i32 %3456, 0
  %3458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3458, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = fmul fast float %3460, %3449
  %3462 = fadd fast float %3461, %3453
  %3463 = call float @dx.op.dot2.f32(i32 54, float %3432, float %3433, float %3432, float %3433)  ; Dot2(ax,ay,bx,by)
  %3464 = fmul fast float %3463, 0x3FE3333340000000
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3465, float %3432, float %3433, float %3465)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = call float @dx.op.unary.f32(i32 25, float %3466)  ; Rsqrt(value)
  %3468 = fmul fast float %3467, %3432
  %3469 = fmul fast float %3467, %3433
  %3470 = fmul fast float %3465, %3467
  %3471 = fmul fast float %3470, %75
  %3472 = fmul fast float %3470, %76
  %3473 = fmul fast float %3470, %77
  %3474 = fmul fast float %3468, %49
  %3475 = fmul fast float %3468, %50
  %3476 = fmul fast float %3468, %51
  %3477 = fadd fast float %3471, %3474
  %3478 = fadd fast float %3472, %3475
  %3479 = fadd fast float %3473, %3476
  %3480 = fmul fast float %87, %3469
  %3481 = fmul fast float %88, %3469
  %3482 = fmul fast float %89, %3469
  %3483 = fadd fast float %3477, %3480
  %3484 = fadd fast float %3478, %3481
  %3485 = fadd fast float %3479, %3482
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %3483, float %3484, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call float @dx.op.unary.f32(i32 25, float %3486)  ; Rsqrt(value)
  %3488 = fmul fast float %3483, %3487
  %3489 = fmul fast float %3484, %3487
  %3490 = fmul fast float %3485, %3487
  %3491 = and i32 %35, 1
  %3492 = icmp eq i32 %3491, 0
  br i1 %3492, label %3493, label %4001

; <label>:3493                                    ; preds = %3431
  %3494 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3495 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3496 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3497 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3498 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3499 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3500 = fadd fast float %3494, %131
  %3501 = fadd fast float %3495, %132
  %3502 = fadd fast float %3496, %133
  %3503 = fadd fast float %3497, %131
  %3504 = fadd fast float %3498, %132
  %3505 = fadd fast float %3499, %133
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.CBufRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.CBufRet.f32 %3506, 2
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 2
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 3
  %3513 = fmul fast float %3507, %68
  %3514 = fmul fast float %3513, %3511
  %3515 = fmul fast float %3508, %69
  %3516 = fmul fast float %3515, %3512
  %3517 = fptoui float %3514 to i32
  %3518 = fptoui float %3516 to i32
  %3519 = fadd fast float %3507, -1.000000e+00
  %3520 = fadd fast float %3508, -1.000000e+00
  %3521 = fptoui float %3519 to i32
  %3522 = fptoui float %3520 to i32
  %3523 = call i32 @dx.op.binary.i32(i32 40, i32 %3517, i32 %3521)  ; UMin(a,b)
  %3524 = call i32 @dx.op.binary.i32(i32 40, i32 %3518, i32 %3522)  ; UMin(a,b)
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3527 = extractvalue %dx.types.CBufRet.f32 %3525, 3
  %3528 = fmul fast float %3526, %63
  %3529 = fsub fast float %3528, %3527
  %3530 = fadd fast float %3509, -1.000000e+00
  %3531 = call float @dx.op.binary.f32(i32 36, float %3529, float %3530)  ; FMin(a,b)
  %3532 = fptoui float %3531 to i32
  %3533 = fptoui float %3507 to i32
  %3534 = fptoui float %3508 to i32
  %3535 = mul i32 %3532, %3534
  %3536 = add i32 %3535, %3524
  %3537 = mul i32 %3536, %3533
  %3538 = add i32 %3537, %3523
  %3539 = shl i32 %3538, 2
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = and i32 %3541, 1023
  %3543 = lshr i32 %3541, 10
  %3544 = icmp eq i32 %3542, 0
  br i1 %3544, label %3970, label %3545

; <label>:3545                                    ; preds = %3493
  %3546 = and i32 %3541, 1023
  br label %3547

; <label>:3547                                    ; preds = %3673, %3545
  %3548 = phi i32 [ %3623, %3673 ], [ 0, %3545 ]
  %3549 = phi float [ %3674, %3673 ], [ 0.000000e+00, %3545 ]
  %3550 = phi float [ %3675, %3673 ], [ %3462, %3545 ]
  %3551 = phi float [ %3676, %3673 ], [ %3443, %3545 ]
  %3552 = phi float [ %3677, %3673 ], [ 0.000000e+00, %3545 ]
  %3553 = phi float [ %3678, %3673 ], [ 0.000000e+00, %3545 ]
  %3554 = phi float [ %3679, %3673 ], [ %3437, %3545 ]
  %3555 = phi float [ %3680, %3673 ], [ %3438, %3545 ]
  %3556 = phi float [ %3681, %3673 ], [ %3439, %3545 ]
  %3557 = phi float [ %3682, %3673 ], [ %3488, %3545 ]
  %3558 = phi float [ %3683, %3673 ], [ %3489, %3545 ]
  %3559 = phi float [ %3684, %3673 ], [ %3490, %3545 ]
  %3560 = phi float [ %3685, %3673 ], [ %3442, %3545 ]
  %3561 = phi float [ %3686, %3673 ], [ %3441, %3545 ]
  %3562 = phi float [ %3687, %3673 ], [ 0.000000e+00, %3545 ]
  %3563 = phi float [ %3688, %3673 ], [ %3440, %3545 ]
  %3564 = phi float [ %3689, %3673 ], [ %3434, %3545 ]
  %3565 = phi float [ %3690, %3673 ], [ %3435, %3545 ]
  %3566 = phi float [ %3691, %3673 ], [ %3436, %3545 ]
  %3567 = add nuw nsw i32 %3548, %3543
  %3568 = shl i32 %3567, 2
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = shl i32 %3570, 8
  %3572 = or i32 %3571, 48
  %3573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = extractvalue %dx.types.ResRet.f32 %3573, 3
  %3578 = or i32 %3571, 64
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.i32 %3579, 1
  %3582 = or i32 %3571, 80
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3586 = or i32 %3571, 96
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3592 = or i32 %3571, 112
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3595 = or i32 %3571, 128
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3601 = or i32 %3571, 144
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = or i32 %3571, 160
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = or i32 %3571, 192
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = or i32 %3571, 208
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = or i32 %3571, 248
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = add nuw nsw i32 %3548, 1
  %3624 = bitcast float %3577 to i32
  %3625 = and i32 %3624, 512
  %3626 = icmp eq i32 %3625, 0
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = call float @dx.op.dot4.f32(i32 56, float %3628, float %3629, float %3630, float %3631, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3633 = or i32 %3571, 16
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3640 = or i32 %3571, 32
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = call float @dx.op.unary.f32(i32 27, float %3632)  ; Round_ni(value)
  %3648 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3649 = call float @dx.op.unary.f32(i32 27, float %3639)  ; Round_ni(value)
  %3650 = call float @dx.op.unary.f32(i32 6, float %3649)  ; FAbs(value)
  %3651 = call float @dx.op.unary.f32(i32 6, float %3646)  ; FAbs(value)
  %3652 = call float @dx.op.unary.f32(i32 27, float %3651)  ; Round_ni(value)
  %3653 = fadd fast float %3650, %3648
  %3654 = fadd fast float %3653, %3652
  %3655 = fcmp fast oeq float %3654, 0.000000e+00
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3628, float %3629, float %3630, float %3631, float %3500, float %3501, float %3502, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %3500, float %3501, float %3502, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = call float @dx.op.dot4.f32(i32 56, float %3628, float %3629, float %3630, float %3631, float %3503, float %3504, float %3505, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3659 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %3503, float %3504, float %3505, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3660 = fsub fast float %3656, %3632
  %3661 = fsub fast float %3658, %3632
  %3662 = fsub fast float %3657, %3639
  %3663 = fsub fast float %3659, %3639
  %3664 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3575, float %3576, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 2
  %3667 = fadd fast float %3666, %3664
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3665, 0
  %3670 = fcmp fast ogt float %3668, %3669
  %3671 = and i1 %3655, %3670
  %3672 = and i1 %3626, %3671
  br i1 %3672, label %3693, label %3673

; <label>:3673                                    ; preds = %3956, %3774, %3693, %3547
  %3674 = phi float [ %3549, %3693 ], [ %3777, %3774 ], [ %3777, %3956 ], [ %3549, %3547 ]
  %3675 = phi float [ %3550, %3693 ], [ %3550, %3774 ], [ %3931, %3956 ], [ %3550, %3547 ]
  %3676 = phi float [ %3551, %3693 ], [ %3551, %3774 ], [ %3929, %3956 ], [ %3551, %3547 ]
  %3677 = phi float [ %3552, %3693 ], [ %3552, %3774 ], [ %3901, %3956 ], [ %3552, %3547 ]
  %3678 = phi float [ %3553, %3693 ], [ %3553, %3774 ], [ %3899, %3956 ], [ %3553, %3547 ]
  %3679 = phi float [ %3554, %3693 ], [ %3554, %3774 ], [ %3966, %3956 ], [ %3554, %3547 ]
  %3680 = phi float [ %3555, %3693 ], [ %3555, %3774 ], [ %3967, %3956 ], [ %3555, %3547 ]
  %3681 = phi float [ %3556, %3693 ], [ %3556, %3774 ], [ %3968, %3956 ], [ %3556, %3547 ]
  %3682 = phi float [ %3557, %3693 ], [ %3557, %3774 ], [ %3880, %3956 ], [ %3557, %3547 ]
  %3683 = phi float [ %3558, %3693 ], [ %3558, %3774 ], [ %3881, %3956 ], [ %3558, %3547 ]
  %3684 = phi float [ %3559, %3693 ], [ %3559, %3774 ], [ %3882, %3956 ], [ %3559, %3547 ]
  %3685 = phi float [ %3560, %3693 ], [ %3560, %3774 ], [ %3909, %3956 ], [ %3560, %3547 ]
  %3686 = phi float [ %3561, %3693 ], [ %3561, %3774 ], [ %3906, %3956 ], [ %3561, %3547 ]
  %3687 = phi float [ %3562, %3693 ], [ %3562, %3774 ], [ %3903, %3956 ], [ %3562, %3547 ]
  %3688 = phi float [ %3563, %3693 ], [ %3563, %3774 ], [ %3897, %3956 ], [ %3563, %3547 ]
  %3689 = phi float [ %3564, %3693 ], [ %3564, %3774 ], [ %3892, %3956 ], [ %3564, %3547 ]
  %3690 = phi float [ %3565, %3693 ], [ %3565, %3774 ], [ %3893, %3956 ], [ %3565, %3547 ]
  %3691 = phi float [ %3566, %3693 ], [ %3566, %3774 ], [ %3894, %3956 ], [ %3566, %3547 ]
  %3692 = icmp eq i32 %3623, %3546
  br i1 %3692, label %3969, label %3547

; <label>:3693                                    ; preds = %3547
  %3694 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3695 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3697 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3698 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3699 = extractvalue %dx.types.ResRet.i32 %3579, 3
  %3700 = extractvalue %dx.types.ResRet.i32 %3579, 2
  %3701 = add i32 %3699, 0
  %3702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3701, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3702, %dx.types.Handle %3703, float %3632, float %3639, float undef, float undef, i32 0, i32 0, i32 undef, float %3660, float %3662, float undef, float %3661, float %3663, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = fmul fast float %3705, %3698
  %3707 = fadd fast float %3706, %3697
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = fmul fast float %3632, %3588
  %3710 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3639, float %3709)  ; FMad(a,b,c)
  %3711 = fadd fast float %3710, %3696
  %3712 = fmul fast float %3632, %3590
  %3713 = call float @dx.op.tertiary.f32(i32 46, float %3591, float %3639, float %3712)  ; FMad(a,b,c)
  %3714 = fadd fast float %3713, %3695
  %3715 = fmul fast float %3660, %3588
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3662, float %3715)  ; FMad(a,b,c)
  %3717 = fmul fast float %3660, %3590
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3591, float %3662, float %3717)  ; FMad(a,b,c)
  %3719 = fmul fast float %3661, %3588
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3663, float %3719)  ; FMad(a,b,c)
  %3721 = fmul fast float %3661, %3590
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3591, float %3663, float %3721)  ; FMad(a,b,c)
  %3723 = add i32 %3700, 0
  %3724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3723, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3725 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3724, %dx.types.Handle %3703, float %3711, float %3714, float undef, float undef, i32 0, i32 0, i32 undef, float %3716, float %3718, float undef, float %3720, float %3722, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = and i32 %3624, 1024
  %3728 = icmp ne i32 %3727, 0
  %3729 = fcmp fast ogt float %3726, 0x3FE0101020000000
  %3730 = uitofp i1 %3729 to float
  %3731 = select i1 %3728, float %3730, float %3726
  %3732 = and i32 %3624, 8192
  %3733 = icmp ne i32 %3732, 0
  %3734 = select i1 %3733, float %3694, float 1.000000e+00
  %3735 = fmul fast float %3632, 2.000000e+00
  %3736 = fadd fast float %3735, -1.000000e+00
  %3737 = call float @dx.op.unary.f32(i32 6, float %3736)  ; FAbs(value)
  %3738 = fmul fast float %3737, %3621
  %3739 = fsub fast float %3738, %3621
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fmul fast float %3639, 2.000000e+00
  %3742 = fadd fast float %3741, -1.000000e+00
  %3743 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3744 = fmul fast float %3743, %3622
  %3745 = fsub fast float %3744, %3622
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = fmul fast float %3651, %3584
  %3748 = fsub fast float %3747, %3584
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fmul fast float %3708, %3734
  %3751 = fmul fast float %3750, %3705
  %3752 = fmul fast float %3751, %3740
  %3753 = fmul fast float %3752, %3731
  %3754 = fmul fast float %3753, %3746
  %3755 = fmul fast float %3754, %3749
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3759 = fsub fast float %3668, %3758
  %3760 = fmul fast float %3759, %3757
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = fmul fast float %3755, %3585
  %3763 = fadd fast float %3755, %3585
  %3764 = fmul fast float %3763, %3594
  %3765 = fsub fast float %3764, %3594
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = and i32 %3624, 128
  %3768 = icmp ne i32 %3767, 0
  %3769 = select i1 %3768, float %3766, float %3762
  %3770 = fmul fast float %3769, %3761
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = fcmp fast ugt float %3770, %3772
  br i1 %3773, label %3774, label %3673

; <label>:3774                                    ; preds = %3693
  %3775 = select i1 %3733, float %3770, float 0.000000e+00
  %3776 = fadd fast float %3775, %3549
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  br i1 %3733, label %3673, label %3778

; <label>:3778                                    ; preds = %3774
  %3779 = and i32 %3624, 4
  %3780 = and i32 %3624, 8
  %3781 = add i32 %3580, 0
  %3782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3784 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3782, %dx.types.Handle %3783, float %3711, float %3714, float undef, float undef, i32 0, i32 0, i32 undef, float %3716, float %3718, float undef, float %3720, float %3722, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.ResRet.f32 %3784, 2
  %3788 = extractvalue %dx.types.ResRet.f32 %3784, 3
  %3789 = bitcast float %3606 to i32
  %3790 = and i32 %3789, 255
  %3791 = uitofp i32 %3790 to float
  %3792 = lshr i32 %3789, 8
  %3793 = and i32 %3792, 255
  %3794 = uitofp i32 %3793 to float
  %3795 = fmul fast float %3788, %3791
  %3796 = fadd fast float %3795, %3794
  %3797 = fmul fast float %3796, 0x3F70101000000000
  %3798 = add i32 %3581, 0
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3799, %dx.types.Handle %3783, float %3711, float %3714, float undef, float undef, i32 0, i32 0, i32 undef, float %3716, float %3718, float undef, float %3720, float %3722, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3805 = bitcast float %3600 to i32
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = lshr i32 %3805, 8
  %3809 = and i32 %3808, 255
  %3810 = uitofp i32 %3809 to float
  %3811 = lshr i32 %3805, 16
  %3812 = and i32 %3811, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = fmul fast float %3813, 0x3F70101000000000
  %3815 = fmul fast float %3801, %3807
  %3816 = fadd fast float %3815, %3810
  %3817 = fmul fast float %3816, 0x3F70101000000000
  %3818 = fadd fast float %3802, -5.000000e-01
  %3819 = fadd fast float %3804, -5.000000e-01
  %3820 = fmul fast float %3818, %3814
  %3821 = fmul fast float %3819, %3814
  %3822 = fadd fast float %3820, 5.000000e-01
  %3823 = fadd fast float %3821, 5.000000e-01
  %3824 = fmul fast float %3785, %3609
  %3825 = fmul fast float %3786, %3610
  %3826 = fmul fast float %3787, %3611
  %3827 = fmul fast float %3822, 2.000000e+00
  %3828 = fadd fast float %3827, -1.000000e+00
  %3829 = fmul fast float %3823, 2.000000e+00
  %3830 = fadd fast float %3829, -1.000000e+00
  %3831 = fadd fast float %3828, %3830
  %3832 = fmul fast float %3831, 5.000000e-01
  %3833 = fsub fast float %3828, %3830
  %3834 = fmul fast float %3833, 5.000000e-01
  %3835 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3836 = fsub fast float 1.000000e+00, %3835
  %3837 = call float @dx.op.unary.f32(i32 6, float %3834)  ; FAbs(value)
  %3838 = fsub fast float %3836, %3837
  %3839 = call float @dx.op.dot3.f32(i32 55, float %3832, float %3834, float %3838, float %3832, float %3834, float %3838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3840 = call float @dx.op.unary.f32(i32 25, float %3839)  ; Rsqrt(value)
  %3841 = fmul fast float %3832, %3840
  %3842 = fmul fast float %3834, %3840
  %3843 = fmul fast float %3840, %3838
  %3844 = fmul fast float %3843, %3574
  %3845 = fmul fast float %3843, %3575
  %3846 = fmul fast float %3843, %3576
  %3847 = fmul fast float %3841, %3597
  %3848 = fmul fast float %3841, %3598
  %3849 = fmul fast float %3841, %3599
  %3850 = fadd fast float %3847, %3844
  %3851 = fadd fast float %3848, %3845
  %3852 = fadd fast float %3849, %3846
  %3853 = fmul fast float %3842, %3603
  %3854 = fmul fast float %3842, %3604
  %3855 = fmul fast float %3842, %3605
  %3856 = fadd fast float %3850, %3853
  %3857 = fadd fast float %3851, %3854
  %3858 = fadd fast float %3852, %3855
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3856, float %3857, float %3858, float %3856, float %3857, float %3858)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = call float @dx.op.unary.f32(i32 25, float %3859)  ; Rsqrt(value)
  %3861 = fmul fast float %3856, %3860
  %3862 = fmul fast float %3857, %3860
  %3863 = fmul fast float %3858, %3860
  %3864 = icmp ne i32 %3780, 0
  %3865 = select i1 %3864, float 1.000000e+00, float 0.000000e+00
  %3866 = fmul fast float %3770, %3865
  %3867 = and i32 %3624, 1
  %3868 = icmp eq i32 %3867, 0
  br i1 %3868, label %3869, label %3873

; <label>:3869                                    ; preds = %3778
  %3870 = fsub fast float %3861, %3557
  %3871 = fsub fast float %3862, %3558
  %3872 = fsub fast float %3863, %3559
  br label %3873

; <label>:3873                                    ; preds = %3869, %3778
  %3874 = phi float [ %3870, %3869 ], [ %3861, %3778 ]
  %3875 = phi float [ %3871, %3869 ], [ %3862, %3778 ]
  %3876 = phi float [ %3872, %3869 ], [ %3863, %3778 ]
  %3877 = fmul float %3876, %3866
  %3878 = fmul float %3875, %3866
  %3879 = fmul float %3874, %3866
  %3880 = fadd fast float %3879, %3557
  %3881 = fadd fast float %3878, %3558
  %3882 = fadd fast float %3877, %3559
  %3883 = icmp ne i32 %3779, 0
  %3884 = select i1 %3883, float 1.000000e+00, float 0.000000e+00
  %3885 = fmul fast float %3770, %3884
  %3886 = fsub fast float %3824, %3564
  %3887 = fsub fast float %3825, %3565
  %3888 = fsub fast float %3826, %3566
  %3889 = fmul fast float %3886, %3885
  %3890 = fmul fast float %3887, %3885
  %3891 = fmul fast float %3888, %3885
  %3892 = fadd fast float %3889, %3564
  %3893 = fadd fast float %3890, %3565
  %3894 = fadd fast float %3891, %3566
  %3895 = fsub fast float %3797, %3563
  %3896 = fmul fast float %3895, %3885
  %3897 = fadd fast float %3896, %3563
  %3898 = fmul fast float %3885, %3553
  %3899 = fsub fast float %3553, %3898
  %3900 = fmul fast float %3885, %3552
  %3901 = fsub fast float %3552, %3900
  %3902 = fadd fast float %3770, %3562
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fsub fast float %3817, %3561
  %3905 = fmul fast float %3904, %3866
  %3906 = fadd fast float %3905, %3561
  %3907 = fsub fast float %3803, %3560
  %3908 = fmul fast float %3907, %3866
  %3909 = fadd fast float %3908, %3560
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3825, float %3826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3914 = fmul fast float %3913, %3910
  %3915 = fadd fast float %3914, %3912
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3917 = bitcast float %3612 to i32
  %3918 = and i32 %3917, 65535
  %3919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3918)  ; LegacyF16ToF32(value)
  %3920 = lshr i32 %3917, 16
  %3921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3920)  ; LegacyF16ToF32(value)
  %3922 = fcmp fast oge float %3919, 0.000000e+00
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = select i1 %3922, float %3919, float %3924
  %3926 = fadd fast float %3925, %3921
  %3927 = fsub fast float %3916, %3551
  %3928 = fmul fast float %3927, %3770
  %3929 = fadd fast float %3928, %3551
  %3930 = fmul fast float %3926, %3770
  %3931 = call float @dx.op.binary.f32(i32 35, float %3550, float %3930)  ; FMax(a,b)
  %3932 = and i32 %3624, 16
  %3933 = icmp eq i32 %3932, 0
  br i1 %3933, label %3956, label %3934

; <label>:3934                                    ; preds = %3873
  %3935 = bitcast float %3618 to i32
  %3936 = add i32 %3615, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3936, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3937, %dx.types.Handle %3783, float %3711, float %3714, float undef, float undef, i32 0, i32 0, i32 undef, float %3716, float %3718, float undef, float %3720, float %3722, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = and i32 %3935, 65535
  %3943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3942)  ; LegacyF16ToF32(value)
  %3944 = fmul fast float %3939, %3609
  %3945 = fmul fast float %3940, %3610
  %3946 = fmul fast float %3941, %3611
  %3947 = and i32 %3624, 16384
  %3948 = icmp ne i32 %3947, 0
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = select i1 %3948, float %3950, float 1.000000e+00
  %3952 = fmul fast float %3951, %3943
  %3953 = fmul fast float %3944, %3952
  %3954 = fmul fast float %3945, %3952
  %3955 = fmul fast float %3946, %3952
  br label %3956

; <label>:3956                                    ; preds = %3934, %3873
  %3957 = phi float [ %3953, %3934 ], [ 0.000000e+00, %3873 ]
  %3958 = phi float [ %3954, %3934 ], [ 0.000000e+00, %3873 ]
  %3959 = phi float [ %3955, %3934 ], [ 0.000000e+00, %3873 ]
  %3960 = fsub fast float %3957, %3554
  %3961 = fsub fast float %3958, %3555
  %3962 = fsub fast float %3959, %3556
  %3963 = fmul fast float %3960, %3770
  %3964 = fmul fast float %3961, %3770
  %3965 = fmul fast float %3962, %3770
  %3966 = fadd fast float %3963, %3554
  %3967 = fadd fast float %3964, %3555
  %3968 = fadd fast float %3965, %3556
  br label %3673

; <label>:3969                                    ; preds = %3673
  br label %3970

; <label>:3970                                    ; preds = %3969, %3493
  %3971 = phi float [ 0.000000e+00, %3493 ], [ %3674, %3969 ]
  %3972 = phi float [ %3462, %3493 ], [ %3675, %3969 ]
  %3973 = phi float [ %3443, %3493 ], [ %3676, %3969 ]
  %3974 = phi float [ 0.000000e+00, %3493 ], [ %3677, %3969 ]
  %3975 = phi float [ 0.000000e+00, %3493 ], [ %3678, %3969 ]
  %3976 = phi float [ %3437, %3493 ], [ %3679, %3969 ]
  %3977 = phi float [ %3438, %3493 ], [ %3680, %3969 ]
  %3978 = phi float [ %3439, %3493 ], [ %3681, %3969 ]
  %3979 = phi float [ %3488, %3493 ], [ %3682, %3969 ]
  %3980 = phi float [ %3489, %3493 ], [ %3683, %3969 ]
  %3981 = phi float [ %3490, %3493 ], [ %3684, %3969 ]
  %3982 = phi float [ %3442, %3493 ], [ %3685, %3969 ]
  %3983 = phi float [ %3441, %3493 ], [ %3686, %3969 ]
  %3984 = phi float [ 0.000000e+00, %3493 ], [ %3687, %3969 ]
  %3985 = phi float [ %3440, %3493 ], [ %3688, %3969 ]
  %3986 = phi float [ %3434, %3493 ], [ %3689, %3969 ]
  %3987 = phi float [ %3435, %3493 ], [ %3690, %3969 ]
  %3988 = phi float [ %3436, %3493 ], [ %3691, %3969 ]
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3979, float %3980, float %3981, float %3979, float %3980, float %3981)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call float @dx.op.unary.f32(i32 25, float %3989)  ; Rsqrt(value)
  %3991 = fmul fast float %3990, %3979
  %3992 = fmul fast float %3990, %3980
  %3993 = fmul fast float %3990, %3981
  %3994 = fadd fast float %3984, %878
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %3993, float %3991, float %3992, float %3993)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.unary.f32(i32 25, float %3996)  ; Rsqrt(value)
  %3998 = fmul fast float %3997, %3991
  %3999 = fmul fast float %3997, %3992
  %4000 = fmul fast float %3997, %3993
  br label %4001

; <label>:4001                                    ; preds = %3970, %3431
  %4002 = phi float [ %3998, %3970 ], [ %3488, %3431 ]
  %4003 = phi float [ %3999, %3970 ], [ %3489, %3431 ]
  %4004 = phi float [ %4000, %3970 ], [ %3490, %3431 ]
  %4005 = phi float [ %3986, %3970 ], [ %3434, %3431 ]
  %4006 = phi float [ %3987, %3970 ], [ %3435, %3431 ]
  %4007 = phi float [ %3988, %3970 ], [ %3436, %3431 ]
  %4008 = phi float [ %3976, %3970 ], [ %3437, %3431 ]
  %4009 = phi float [ %3977, %3970 ], [ %3438, %3431 ]
  %4010 = phi float [ %3978, %3970 ], [ %3439, %3431 ]
  %4011 = phi float [ %3985, %3970 ], [ %3440, %3431 ]
  %4012 = phi float [ %3995, %3970 ], [ %878, %3431 ]
  %4013 = phi float [ %3983, %3970 ], [ %3441, %3431 ]
  %4014 = phi float [ %3982, %3970 ], [ %3442, %3431 ]
  %4015 = phi float [ %3975, %3970 ], [ 0.000000e+00, %3431 ]
  %4016 = phi float [ %3974, %3970 ], [ 0.000000e+00, %3431 ]
  %4017 = phi float [ %3971, %3970 ], [ 0.000000e+00, %3431 ]
  %4018 = phi float [ %3972, %3970 ], [ %3462, %3431 ]
  %4019 = phi float [ %3973, %3970 ], [ %3443, %3431 ]
  %4020 = fadd fast float %4011, 0xBFB99999A0000000
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = fmul fast float %4021, 0x3FF1C71C80000000
  %4023 = call float @dx.op.binary.f32(i32 36, float %4011, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4024 = fsub fast float 1.000000e+00, %4022
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = fmul fast float %4025, %4005
  %4027 = fmul fast float %4025, %4006
  %4028 = fmul fast float %4025, %4007
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = fmul fast float %4022, %4005
  %4033 = fmul fast float %4022, %4006
  %4034 = fmul fast float %4022, %4007
  %4035 = fadd fast float %4032, %4023
  %4036 = fadd fast float %4033, %4023
  %4037 = fadd fast float %4034, %4023
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.i32 %4042, 3
  %4044 = and i32 %4043, 8
  %4045 = icmp ne i32 %4044, 0
  %4046 = call float @dx.op.binary.f32(i32 35, float %4029, float %4005)  ; FMax(a,b)
  %4047 = call float @dx.op.binary.f32(i32 35, float %4030, float %4005)  ; FMax(a,b)
  %4048 = call float @dx.op.binary.f32(i32 35, float %4031, float %4005)  ; FMax(a,b)
  %4049 = call float @dx.op.dot3.f32(i32 55, float %4029, float %4030, float %4031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = select i1 %173, float %4005, float %4029
  %4051 = select i1 %173, float %4049, float %4030
  %4052 = select i1 %173, float 1.000000e+00, float %4031
  %4053 = select i1 %4045, float %4046, float %4050
  %4054 = select i1 %4045, float %4047, float %4051
  %4055 = select i1 %4045, float %4048, float %4052
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4060 = fadd fast float %4057, %131
  %4061 = fadd fast float %4058, %132
  %4062 = fadd fast float %4059, %133
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = fsub fast float %4060, %4064
  %4067 = fsub fast float %4061, %4065
  %4068 = fmul fast float %4066, %4066
  %4069 = fmul fast float %4067, %4067
  %4070 = fadd fast float %4068, %4069
  %4071 = call float @dx.op.unary.f32(i32 24, float %4070)  ; Sqrt(value)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4073 = fcmp fast olt float %4071, %4072
  br i1 %4073, label %4074, label %4141

; <label>:4074                                    ; preds = %4001
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4083 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4084 = extractvalue %dx.types.CBufRet.f32 %4075, 3
  %4085 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4086 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4087 = fadd fast float %4084, %4060
  %4088 = fadd fast float %4085, %4061
  %4089 = fadd fast float %4086, %4062
  %4090 = fmul fast float %4087, %4076
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4078, float %4090)  ; FMad(a,b,c)
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4080, float %4091)  ; FMad(a,b,c)
  %4093 = fmul fast float %4087, %4081
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4082, float %4093)  ; FMad(a,b,c)
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4083, float %4094)  ; FMad(a,b,c)
  %4096 = fsub fast float %4092, %4084
  %4097 = fsub fast float %4095, %4085
  %4098 = fsub fast float %4096, %4064
  %4099 = fadd fast float %4098, %4072
  %4100 = fsub fast float %4097, %4065
  %4101 = fadd fast float %4100, %4072
  %4102 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4103 = fmul fast float %4099, %4102
  %4104 = fmul fast float %4101, %4102
  %4105 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4107 = fsub fast float 1.000000e+00, %4105
  %4108 = fsub fast float 1.000000e+00, %4106
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4107, float %4108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = fcmp fast ugt float %4110, 0.000000e+00
  br i1 %4111, label %4112, label %4415

; <label>:4112                                    ; preds = %4074
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4115 = fmul fast float %4114, %4110
  %4116 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4117 = fadd fast float %4116, %4115
  %4118 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4119 = fadd fast float %4117, %4086
  %4120 = fmul fast float %4092, %4080
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %4095, float %4083, float %4120)  ; FMad(a,b,c)
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %4119, float %4118, float %4121)  ; FMad(a,b,c)
  %4123 = fsub fast float %4122, %4086
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4126 = fsub fast float %4123, %4125
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4107, float %4108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4107, float %4108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4131, 2
  %4135 = fadd fast float %4132, %4128
  %4136 = fmul fast float %4135, 0x3F847AE140000000
  %4137 = fadd fast float %4133, %4129
  %4138 = fmul fast float %4137, 0x3F847AE140000000
  %4139 = fadd fast float %4134, %4130
  %4140 = fmul fast float %4139, 0x3F847AE140000000
  br label %4415

; <label>:4141                                    ; preds = %4001
  %4142 = and i32 %149, 1
  %4143 = icmp eq i32 %4142, 0
  br i1 %4143, label %4415, label %4144

; <label>:4144                                    ; preds = %4141
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4153 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4155 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4156 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4157 = fadd fast float %4154, %4060
  %4158 = fadd fast float %4155, %4061
  %4159 = fadd fast float %4156, %4062
  %4160 = fmul fast float %4157, %4146
  %4161 = call float @dx.op.tertiary.f32(i32 46, float %4158, float %4148, float %4160)  ; FMad(a,b,c)
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4159, float %4150, float %4161)  ; FMad(a,b,c)
  %4163 = fmul fast float %4157, %4151
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4158, float %4152, float %4163)  ; FMad(a,b,c)
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4159, float %4153, float %4164)  ; FMad(a,b,c)
  %4166 = fsub fast float %4162, %4154
  %4167 = fsub fast float %4165, %4155
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.CBufRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4168, 2
  %4172 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.i32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.i32 %4175, 1
  %4178 = udiv i32 %4177, %4176
  %4179 = fsub fast float %4166, %4169
  %4180 = fsub fast float %4167, %4170
  %4181 = call float @dx.op.binary.f32(i32 35, float %4179, float 0.000000e+00)  ; FMax(a,b)
  %4182 = call float @dx.op.binary.f32(i32 35, float %4180, float 0.000000e+00)  ; FMax(a,b)
  %4183 = call float @dx.op.binary.f32(i32 36, float %4181, float %4171)  ; FMin(a,b)
  %4184 = call float @dx.op.binary.f32(i32 36, float %4182, float %4172)  ; FMin(a,b)
  %4185 = add i32 %4176, -1
  %4186 = add i32 %4178, -1
  %4187 = fmul fast float %4183, %4174
  %4188 = fmul fast float %4184, %4174
  %4189 = fptoui float %4187 to i32
  %4190 = fptoui float %4188 to i32
  %4191 = call i32 @dx.op.binary.i32(i32 40, i32 %4189, i32 %4185)  ; UMin(a,b)
  %4192 = call i32 @dx.op.binary.i32(i32 40, i32 %4190, i32 %4186)  ; UMin(a,b)
  %4193 = mul i32 %4192, %4176
  %4194 = add i32 %4193, %4191
  %4195 = shl i32 %4194, 2
  %4196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.i32 %4196, 0
  %4198 = icmp eq i32 %4197, -1
  br i1 %4198, label %4415, label %4199

; <label>:4199                                    ; preds = %4144
  %4200 = mul i32 %4197, 148
  %4201 = add i32 %4200, 4
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = add i32 %4200, 8
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = add i32 %4200, 36
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = add i32 %4200, 60
  %4211 = add i32 %4200, 92
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = add i32 %4200, 116
  %4215 = fsub fast float %4166, %4203
  %4216 = fsub fast float %4167, %4206
  %4217 = fmul fast float %4174, %4215
  %4218 = fmul fast float %4174, %4216
  %4219 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4220 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4221 = fsub fast float 1.000000e+00, %4220
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4224 = call float @dx.op.unary.f32(i32 83, float %4219)  ; DerivCoarseX(value)
  %4225 = call float @dx.op.unary.f32(i32 83, float %4221)  ; DerivCoarseX(value)
  %4226 = call float @dx.op.unary.f32(i32 84, float %4219)  ; DerivCoarseY(value)
  %4227 = call float @dx.op.unary.f32(i32 84, float %4221)  ; DerivCoarseY(value)
  %4228 = fmul fast float %4224, %4223
  %4229 = fmul fast float %4225, %4223
  %4230 = fmul fast float %4226, %4223
  %4231 = fmul fast float %4227, %4223
  %4232 = call float @dx.op.dot2.f32(i32 54, float %4230, float %4231, float %4230, float %4231)  ; Dot2(ax,ay,bx,by)
  %4233 = call float @dx.op.dot2.f32(i32 54, float %4228, float %4229, float %4228, float %4229)  ; Dot2(ax,ay,bx,by)
  %4234 = call float @dx.op.binary.f32(i32 35, float %4233, float %4232)  ; FMax(a,b)
  %4235 = call float @dx.op.unary.f32(i32 23, float %4234)  ; Log(value)
  %4236 = fmul fast float %4235, 5.000000e-01
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4239 = fadd fast float %4238, %4236
  %4240 = call float @dx.op.binary.f32(i32 35, float %4239, float 0.000000e+00)  ; FMax(a,b)
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 3
  %4243 = fadd fast float %4242, %4240
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 3
  %4246 = fadd fast float %4243, %4245
  %4247 = add i32 %4213, 0
  %4248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4247, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4248, i32 0)  ; GetDimensions(handle,mipLevel)
  %4250 = extractvalue %dx.types.Dimensions %4249, 0
  %4251 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4250)  ; FirstbitLo(value)
  %4252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.i32 %4252, 1
  %4254 = sub nsw i32 %4253, %4251
  %4255 = sitofp i32 %4254 to float
  %4256 = fsub fast float %4246, %4255
  %4257 = call float @dx.op.binary.f32(i32 35, float %4256, float 0.000000e+00)  ; FMax(a,b)
  %4258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4248, %dx.types.Handle %27, float %4219, float %4221, float %4209, float undef, i32 0, i32 0, i32 undef, float %4257)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = fcmp ule float %4259, 0x3FE0101020000000
  %4261 = extractvalue %dx.types.CBufRet.i32 %4252, 0
  %4262 = and i32 %4261, 128
  %4263 = icmp ne i32 %4262, 0
  %4264 = and i1 %4260, %4263
  br i1 %4264, label %4415, label %4265

; <label>:4265                                    ; preds = %4199
  %4266 = add i32 %4200, 20
  %4267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = add i32 %4200, 24
  %4270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4269, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = add i32 %4200, 40
  %4273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = add i32 %4200, 96
  %4276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.i32 %4276, 0
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4280 = fmul fast float %4279, %4219
  %4281 = fmul fast float %4279, %4221
  %4282 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4283 = fadd fast float %4280, %4282
  %4284 = fadd fast float %4281, %4282
  %4285 = add i32 %4277, 0
  %4286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4285, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4286, i32 0)  ; GetDimensions(handle,mipLevel)
  %4288 = extractvalue %dx.types.Dimensions %4287, 0
  %4289 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4288)  ; FirstbitLo(value)
  %4290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.i32 %4290, 1
  %4292 = sub nsw i32 %4291, %4289
  %4293 = sitofp i32 %4292 to float
  %4294 = fsub fast float %4243, %4293
  %4295 = call float @dx.op.binary.f32(i32 35, float %4294, float 0.000000e+00)  ; FMax(a,b)
  %4296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4286, %dx.types.Handle %27, float %4283, float %4284, float %4274, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = fmul fast float %4297, %4268
  %4299 = fadd fast float %4298, %4271
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4300, 2
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4308 = extractvalue %dx.types.CBufRet.f32 %4300, 3
  %4309 = fadd fast float %4305, %4166
  %4310 = fadd fast float %4307, %4167
  %4311 = fadd fast float %4299, %4308
  %4312 = fmul fast float %4309, %4301
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4302, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4303, float %4313)  ; FMad(a,b,c)
  %4315 = fsub fast float %4314, %4308
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 2
  %4318 = fsub fast float %4315, %4317
  %4319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.i32 %4319, 0
  %4321 = call i32 @dx.op.binary.i32(i32 40, i32 %4197, i32 %4320)  ; UMin(a,b)
  %4322 = mul i32 %4321, 36
  %4323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4322, i32 undef)  ; BufferLoad(srv,index,wot)
  %4324 = extractvalue %dx.types.ResRet.i32 %4323, 0
  %4325 = add i32 %4322, 4
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = fmul fast float %4327, %4219
  %4329 = fmul fast float %4327, %4221
  %4330 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4331 = fadd fast float %4328, %4330
  %4332 = fadd fast float %4329, %4330
  %4333 = icmp eq i32 %4324, 0
  br i1 %4333, label %4402, label %4334

; <label>:4334                                    ; preds = %4265
  br label %4335

; <label>:4335                                    ; preds = %4392, %4334
  %4336 = phi float [ %4393, %4392 ], [ 0.000000e+00, %4334 ]
  %4337 = phi float [ %4394, %4392 ], [ 0.000000e+00, %4334 ]
  %4338 = phi float [ %4395, %4392 ], [ 0.000000e+00, %4334 ]
  %4339 = phi float [ %4396, %4392 ], [ 0.000000e+00, %4334 ]
  %4340 = phi float [ %4397, %4392 ], [ 0.000000e+00, %4334 ]
  %4341 = phi float [ %4398, %4392 ], [ 0.000000e+00, %4334 ]
  %4342 = phi i32 [ %4399, %4392 ], [ 0, %4334 ]
  %4343 = shl i32 %4342, 2
  %4344 = add i32 %4210, %4343
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = add i32 %4214, %4343
  %4348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.i32 %4348, 0
  %4350 = add i32 %4349, 0
  %4351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4350, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4352 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4351, i32 0)  ; GetDimensions(handle,mipLevel)
  %4353 = extractvalue %dx.types.Dimensions %4352, 0
  %4354 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4353)  ; FirstbitLo(value)
  %4355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.i32 %4355, 1
  %4357 = sub nsw i32 %4356, %4354
  %4358 = sitofp i32 %4357 to float
  %4359 = fsub fast float %4243, %4358
  %4360 = call float @dx.op.binary.f32(i32 35, float %4359, float 0.000000e+00)  ; FMax(a,b)
  %4361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4351, %dx.types.Handle %27, float %4331, float %4332, float %4346, float undef, i32 0, i32 0, i32 undef, float %4360)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = fcmp fast ogt float %4362, 0.000000e+00
  br i1 %4363, label %4364, label %4392

; <label>:4364                                    ; preds = %4335
  %4365 = add i32 %4325, %4343
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = and i32 %4367, 32767
  %4369 = mul nuw nsw i32 %4368, 928
  %4370 = add nuw nsw i32 %4369, 48
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = add nuw nsw i32 %4369, 60
  %4376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = fmul fast float %4372, %4362
  %4381 = fmul fast float %4373, %4362
  %4382 = fmul fast float %4374, %4362
  %4383 = fadd fast float %4380, %4336
  %4384 = fadd fast float %4381, %4337
  %4385 = fadd fast float %4382, %4338
  %4386 = fmul fast float %4377, %4362
  %4387 = fmul fast float %4378, %4362
  %4388 = fmul fast float %4379, %4362
  %4389 = fadd fast float %4386, %4339
  %4390 = fadd fast float %4387, %4340
  %4391 = fadd fast float %4388, %4341
  br label %4392

; <label>:4392                                    ; preds = %4364, %4335
  %4393 = phi float [ %4383, %4364 ], [ %4336, %4335 ]
  %4394 = phi float [ %4384, %4364 ], [ %4337, %4335 ]
  %4395 = phi float [ %4385, %4364 ], [ %4338, %4335 ]
  %4396 = phi float [ %4389, %4364 ], [ %4339, %4335 ]
  %4397 = phi float [ %4390, %4364 ], [ %4340, %4335 ]
  %4398 = phi float [ %4391, %4364 ], [ %4341, %4335 ]
  %4399 = add nuw i32 %4342, 1
  %4400 = icmp eq i32 %4399, %4324
  br i1 %4400, label %4401, label %4335

; <label>:4401                                    ; preds = %4392
  br label %4402

; <label>:4402                                    ; preds = %4401, %4265
  %4403 = phi float [ 0.000000e+00, %4265 ], [ %4393, %4401 ]
  %4404 = phi float [ 0.000000e+00, %4265 ], [ %4394, %4401 ]
  %4405 = phi float [ 0.000000e+00, %4265 ], [ %4395, %4401 ]
  %4406 = phi float [ 0.000000e+00, %4265 ], [ %4396, %4401 ]
  %4407 = phi float [ 0.000000e+00, %4265 ], [ %4397, %4401 ]
  %4408 = phi float [ 0.000000e+00, %4265 ], [ %4398, %4401 ]
  %4409 = fadd fast float %4406, %4403
  %4410 = fmul fast float %4409, 0x3F847AE140000000
  %4411 = fadd fast float %4407, %4404
  %4412 = fmul fast float %4411, 0x3F847AE140000000
  %4413 = fadd fast float %4408, %4405
  %4414 = fmul fast float %4413, 0x3F847AE140000000
  br label %4415

; <label>:4415                                    ; preds = %4402, %4199, %4144, %4141, %4112, %4074
  %4416 = phi float [ %4126, %4112 ], [ -1.310720e+05, %4074 ], [ %4318, %4402 ], [ -1.310720e+05, %4144 ], [ -1.310720e+05, %4199 ], [ -1.310720e+05, %4141 ]
  %4417 = phi float [ %4136, %4112 ], [ 0.000000e+00, %4074 ], [ %4410, %4402 ], [ 0.000000e+00, %4144 ], [ 0.000000e+00, %4199 ], [ 0.000000e+00, %4141 ]
  %4418 = phi float [ %4138, %4112 ], [ 0.000000e+00, %4074 ], [ %4412, %4402 ], [ 0.000000e+00, %4144 ], [ 0.000000e+00, %4199 ], [ 0.000000e+00, %4141 ]
  %4419 = phi float [ %4140, %4112 ], [ 0.000000e+00, %4074 ], [ %4414, %4402 ], [ 0.000000e+00, %4144 ], [ 0.000000e+00, %4199 ], [ 0.000000e+00, %4141 ]
  %4420 = phi i1 [ true, %4112 ], [ false, %4074 ], [ true, %4402 ], [ false, %4144 ], [ false, %4199 ], [ false, %4141 ]
  %4421 = and i32 %149, 3
  %4422 = icmp eq i32 %4421, 1
  %4423 = select i1 %4422, float 1.000000e+00, float 0.000000e+00
  %4424 = fsub fast float %4416, %133
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = select i1 %4420, float %4425, float 1.000000e+00
  %4427 = fmul fast float %4426, %4423
  %4428 = icmp eq i32 %4421, 3
  %4429 = select i1 %4428, float 1.000000e+00, float %4427
  %4430 = call float @dx.op.binary.f32(i32 35, float %4017, float %4429)  ; FMax(a,b)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = fcmp fast une float %4431, 0.000000e+00
  %4433 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = call float @dx.op.unary.f32(i32 25, float %4433)  ; Rsqrt(value)
  br i1 %4432, label %4442, label %4435

; <label>:4435                                    ; preds = %4415
  %4436 = fmul fast float %4434, %131
  %4437 = fmul fast float %4434, %132
  %4438 = fmul fast float %4434, %133
  %4439 = fsub fast float -0.000000e+00, %4436
  %4440 = fsub fast float -0.000000e+00, %4437
  %4441 = fsub fast float -0.000000e+00, %4438
  br label %4610

; <label>:4442                                    ; preds = %4415
  %4443 = fmul fast float %131, %4434
  %4444 = fsub fast float -0.000000e+00, %4443
  %4445 = fmul fast float %132, %4434
  %4446 = fsub fast float -0.000000e+00, %4445
  %4447 = fmul fast float %133, %4434
  %4448 = fsub fast float -0.000000e+00, %4447
  %4449 = call float @dx.op.dot3.f32(i32 55, float %4444, float %4446, float %4448, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = fmul fast float %4431, 2.500000e+00
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = fmul fast float %4431, 0x4013FFFFE0000000
  %4453 = fadd fast float %4452, 0xBFFFFFFFE0000000
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fmul fast float %4431, 0x4004000020000000
  %4456 = fadd fast float %4455, 0xBFF8000040000000
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4459 = fmul fast float %4020, 1.000000e+01
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4460, 2.000000e+00
  %4462 = fsub fast float 3.000000e+00, %4461
  %4463 = fmul fast float %4460, %4460
  %4464 = fmul fast float %4463, %4462
  %4465 = fsub fast float 1.000000e+00, %4464
  %4466 = fsub fast float 0x3FE3333340000000, %4041
  %4467 = fmul fast float %4466, 0x400AAAAAA0000000
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = fmul fast float %4465, %4468
  %4470 = fmul fast float %4053, 0x3FEA2B8620000000
  %4471 = fmul fast float %4054, 0x3FEA2B8620000000
  %4472 = fmul fast float %4055, 0x3FEA2B8620000000
  %4473 = fadd fast float %4470, 0x3FC81DFBA0000000
  %4474 = fmul fast float %4473, %4053
  %4475 = fadd fast float %4474, 0x3F910E6020000000
  %4476 = fadd fast float %4471, 0x3FC81DFBA0000000
  %4477 = fmul fast float %4476, %4054
  %4478 = fadd fast float %4477, 0x3F910E6020000000
  %4479 = fadd fast float %4472, 0x3FC81DFBA0000000
  %4480 = fmul fast float %4479, %4055
  %4481 = fadd fast float %4480, 0x3F910E6020000000
  %4482 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4485 = fsub fast float %4482, %4053
  %4486 = fsub fast float %4483, %4054
  %4487 = fsub fast float %4484, %4055
  %4488 = fmul fast float %4485, %4458
  %4489 = fmul fast float %4488, %4469
  %4490 = fmul fast float %4486, %4458
  %4491 = fmul fast float %4490, %4469
  %4492 = fmul fast float %4487, %4458
  %4493 = fmul fast float %4492, %4469
  %4494 = fadd fast float %4489, %4053
  %4495 = fadd fast float %4491, %4054
  %4496 = fadd fast float %4493, %4055
  %4497 = fmul fast float %4014, %4014
  %4498 = fmul fast float %4497, %4497
  %4499 = fadd fast float %4454, 1.000000e+00
  %4500 = fsub fast float %4499, %4469
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4503 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4504 = fsub fast float 1.000000e+00, %4498
  %4505 = call float @dx.op.binary.f32(i32 36, float %4501, float %4504)  ; FMin(a,b)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4507 = call float @dx.op.binary.f32(i32 35, float %4505, float %4506)  ; FMax(a,b)
  %4508 = fadd fast float %4503, 0xBFE4CCCCC0000000
  %4509 = fmul fast float %4508, 0x4006DB6DA0000000
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = fmul fast float %4510, 2.000000e+00
  %4512 = fsub fast float 3.000000e+00, %4511
  %4513 = bitcast float %4038 to i32
  %4514 = ashr i32 %4513, 1
  %4515 = add nsw i32 %4514, 532487669
  %4516 = bitcast i32 %4515 to float
  %4517 = fsub fast float 1.000000e+00, %4516
  %4518 = bitcast float %4517 to i32
  %4519 = sub nsw i32 2129859010, %4518
  %4520 = bitcast i32 %4519 to float
  %4521 = fmul fast float %4520, 2.000000e+00
  %4522 = bitcast float %4039 to i32
  %4523 = ashr i32 %4522, 1
  %4524 = add nsw i32 %4523, 532487669
  %4525 = bitcast i32 %4524 to float
  %4526 = fsub fast float 1.000000e+00, %4525
  %4527 = bitcast float %4526 to i32
  %4528 = sub nsw i32 2129859010, %4527
  %4529 = bitcast i32 %4528 to float
  %4530 = fmul fast float %4529, 2.000000e+00
  %4531 = bitcast float %4040 to i32
  %4532 = ashr i32 %4531, 1
  %4533 = add nsw i32 %4532, 532487669
  %4534 = bitcast i32 %4533 to float
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = bitcast float %4535 to i32
  %4537 = sub nsw i32 2129859010, %4536
  %4538 = bitcast i32 %4537 to float
  %4539 = fmul fast float %4538, 2.000000e+00
  %4540 = fsub fast float 0x4002A9FBE0000000, %4521
  %4541 = fadd fast float %4521, 0x3FD54FDF00000000
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4544, %4540
  %4546 = fmul fast float %4545, %4545
  %4547 = fsub fast float 0x4002A9FBE0000000, %4530
  %4548 = fadd fast float %4530, 0x3FD54FDF00000000
  %4549 = bitcast float %4548 to i32
  %4550 = sub nsw i32 2129859010, %4549
  %4551 = bitcast i32 %4550 to float
  %4552 = fmul fast float %4551, %4547
  %4553 = fmul fast float %4552, %4552
  %4554 = fsub fast float 0x4002A9FBE0000000, %4539
  %4555 = fadd fast float %4539, 0x3FD54FDF00000000
  %4556 = bitcast float %4555 to i32
  %4557 = sub nsw i32 2129859010, %4556
  %4558 = bitcast i32 %4557 to float
  %4559 = fmul fast float %4558, %4554
  %4560 = fmul fast float %4559, %4559
  %4561 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4546)  ; FMax(a,b)
  %4562 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4553)  ; FMax(a,b)
  %4563 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4560)  ; FMax(a,b)
  %4564 = fsub fast float 1.000000e+00, %4449
  %4565 = fadd fast float %4564, %4465
  %4566 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4567 = fsub fast float 1.000000e+00, %4429
  %4568 = fmul fast float %4507, %4567
  %4569 = fmul fast float %4510, %4510
  %4570 = fmul fast float %4569, %4568
  %4571 = fmul fast float %4570, %4512
  %4572 = fmul fast float %4567, 0xBFE99999A0000000
  %4573 = fmul fast float %4572, %4458
  %4574 = fmul fast float %4573, %4469
  %4575 = fadd fast float %4574, 1.000000e+00
  %4576 = fadd fast float %4041, -1.000000e+00
  %4577 = fmul fast float %4575, %4576
  %4578 = fadd fast float %4577, 1.000000e+00
  %4579 = fsub fast float %4561, %4038
  %4580 = fsub fast float %4562, %4039
  %4581 = fsub fast float %4563, %4040
  %4582 = fmul fast float %4571, %4579
  %4583 = fmul fast float %4571, %4580
  %4584 = fmul fast float %4571, %4581
  %4585 = fadd fast float %4582, %4038
  %4586 = fadd fast float %4583, %4039
  %4587 = fadd fast float %4584, %4040
  %4588 = fsub fast float %75, %4002
  %4589 = fsub fast float %76, %4003
  %4590 = fsub fast float %77, %4004
  %4591 = fmul fast float %4571, %4588
  %4592 = fmul fast float %4571, %4589
  %4593 = fmul fast float %4571, %4590
  %4594 = fadd fast float %4591, %4002
  %4595 = fadd fast float %4592, %4003
  %4596 = fadd fast float %4593, %4004
  %4597 = fmul fast float %4571, %4566
  %4598 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4599 = fsub fast float 1.000000e+00, %4598
  %4600 = fmul fast float %4597, %4599
  %4601 = fadd fast float %4600, %4598
  %4602 = fsub fast float 1.000000e+00, %4014
  %4603 = fmul fast float %4571, %4602
  %4604 = fadd fast float %4603, %4014
  %4605 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float %4594, float %4595, float %4596)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = call float @dx.op.unary.f32(i32 25, float %4605)  ; Rsqrt(value)
  %4607 = fmul fast float %4594, %4606
  %4608 = fmul fast float %4595, %4606
  %4609 = fmul fast float %4596, %4606
  br label %4610

; <label>:4610                                    ; preds = %4442, %4435
  %4611 = phi float [ %4441, %4435 ], [ %4448, %4442 ]
  %4612 = phi float [ %4440, %4435 ], [ %4446, %4442 ]
  %4613 = phi float [ %4439, %4435 ], [ %4444, %4442 ]
  %4614 = phi float [ %4438, %4435 ], [ %4447, %4442 ]
  %4615 = phi float [ %4437, %4435 ], [ %4445, %4442 ]
  %4616 = phi float [ %4436, %4435 ], [ %4443, %4442 ]
  %4617 = phi float [ %4053, %4435 ], [ %4494, %4442 ]
  %4618 = phi float [ %4054, %4435 ], [ %4495, %4442 ]
  %4619 = phi float [ %4055, %4435 ], [ %4496, %4442 ]
  %4620 = phi float [ %4002, %4435 ], [ %4607, %4442 ]
  %4621 = phi float [ %4003, %4435 ], [ %4608, %4442 ]
  %4622 = phi float [ %4004, %4435 ], [ %4609, %4442 ]
  %4623 = phi float [ %4038, %4435 ], [ %4585, %4442 ]
  %4624 = phi float [ %4039, %4435 ], [ %4586, %4442 ]
  %4625 = phi float [ %4040, %4435 ], [ %4587, %4442 ]
  %4626 = phi float [ %4041, %4435 ], [ %4601, %4442 ]
  %4627 = phi float [ %4014, %4435 ], [ %4604, %4442 ]
  %4628 = select i1 %173, float 0.000000e+00, float %4625
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %4613, float %4612, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4615, float %4614, float %4620, float %4621, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = fmul fast float %4631, 2.000000e+00
  %4633 = fmul fast float %4632, %4620
  %4634 = fmul fast float %4632, %4621
  %4635 = fmul fast float %4632, %4622
  %4636 = fsub fast float %4616, %4633
  %4637 = fsub fast float %4615, %4634
  %4638 = fsub fast float %4614, %4635
  %4639 = call float @dx.op.binary.f32(i32 36, float %4627, float 1.000000e+00)  ; FMin(a,b)
  %4640 = fsub fast float 1.000000e+00, %4627
  %4641 = bitcast float %4640 to i32
  %4642 = sub nsw i32 2129859010, %4641
  %4643 = bitcast i32 %4642 to float
  %4644 = fsub fast float 1.000000e+00, %45
  %4645 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.binary.f32(i32 35, float %4645, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4647 = fdiv fast float %4644, %4646
  %4648 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %4649, 5.000000e-01
  %4651 = fadd fast float %4650, 5.000000e-01
  %4652 = fmul fast float %4651, %45
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fmul fast float %4654, %4647
  %4656 = fadd fast float %4652, %4655
  %4657 = fsub fast float 5.000000e-01, %4650
  %4658 = fmul fast float %4657, %4617
  %4659 = fmul fast float %4657, %4618
  %4660 = fmul fast float %4657, %4619
  %4661 = fadd fast float %4656, %4658
  %4662 = fadd fast float %4656, %4659
  %4663 = fadd fast float %4656, %4660
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fmul fast float %4665, 5.000000e-01
  %4667 = fadd fast float %4666, 5.000000e-01
  %4668 = fmul fast float %4667, %45
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fmul fast float %4670, %4647
  %4672 = fadd fast float %4668, %4671
  %4673 = fsub fast float 5.000000e-01, %4666
  %4674 = fmul fast float %4673, %4617
  %4675 = fmul fast float %4673, %4618
  %4676 = fmul fast float %4673, %4619
  %4677 = fadd fast float %4672, %4674
  %4678 = fadd fast float %4672, %4675
  %4679 = fadd fast float %4672, %4676
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 0
  %4682 = call float @dx.op.binary.f32(i32 36, float %4617, float %4681)  ; FMin(a,b)
  %4683 = fsub fast float 1.000000e+00, %4639
  %4684 = fmul fast float %4682, %4683
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = call float @dx.op.binary.f32(i32 36, float %4618, float %4681)  ; FMin(a,b)
  %4690 = fmul fast float %4689, %4683
  %4691 = fsub fast float 1.000000e+00, %4690
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = call float @dx.op.binary.f32(i32 36, float %4619, float %4681)  ; FMin(a,b)
  %4696 = fmul fast float %4695, %4683
  %4697 = fsub fast float 1.000000e+00, %4696
  %4698 = bitcast float %4697 to i32
  %4699 = sub nsw i32 2129859010, %4698
  %4700 = bitcast i32 %4699 to float
  %4701 = fmul fast float %4639, %46
  %4702 = fmul fast float %4701, %4661
  %4703 = fmul fast float %4702, %4688
  %4704 = fmul fast float %4639, %47
  %4705 = fmul fast float %4704, %4662
  %4706 = fmul fast float %4705, %4694
  %4707 = fmul fast float %4639, %48
  %4708 = fmul fast float %4707, %4663
  %4709 = fmul fast float %4708, %4700
  %4710 = call float @dx.op.binary.f32(i32 36, float %4623, float %4681)  ; FMin(a,b)
  %4711 = fmul fast float %4710, %4683
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = bitcast float %4712 to i32
  %4714 = sub nsw i32 2129859010, %4713
  %4715 = bitcast i32 %4714 to float
  %4716 = call float @dx.op.binary.f32(i32 36, float %4624, float %4681)  ; FMin(a,b)
  %4717 = fmul fast float %4716, %4683
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = call float @dx.op.binary.f32(i32 36, float %4628, float %4681)  ; FMin(a,b)
  %4723 = fmul fast float %4722, %4683
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = bitcast float %4724 to i32
  %4726 = sub nsw i32 2129859010, %4725
  %4727 = bitcast i32 %4726 to float
  %4728 = fmul fast float %4701, %4677
  %4729 = fmul fast float %4728, %4715
  %4730 = fmul fast float %4704, %4678
  %4731 = fmul fast float %4730, %4721
  %4732 = fmul fast float %4707, %4679
  %4733 = fmul fast float %4732, %4727
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4706, float %4709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = select i1 %173, float 0.000000e+00, float %4703
  %4736 = select i1 %173, float %4734, float %4706
  %4737 = select i1 %173, float 0.000000e+00, float %4709
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4731, float %4733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = select i1 %173, float 0.000000e+00, float %4729
  %4740 = select i1 %173, float %4738, float %4731
  %4741 = select i1 %173, float 0.000000e+00, float %4733
  %4742 = fmul fast float %4630, 9.843750e-01
  %4743 = fmul fast float %4626, 9.843750e-01
  %4744 = fadd fast float %4742, 7.812500e-03
  %4745 = fadd fast float %4743, 7.812500e-03
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4744, float %4745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 2
  %4748 = extractvalue %dx.types.ResRet.f32 %4746, 3
  %4749 = fmul fast float %4747, %4623
  %4750 = fmul fast float %4747, %4624
  %4751 = fmul fast float %4747, %4628
  %4752 = fadd fast float %4749, %4748
  %4753 = fadd fast float %4750, %4748
  %4754 = fadd fast float %4751, %4748
  %4755 = fcmp fast ogt float %4015, 0.000000e+00
  br i1 %4755, label %4756, label %4782

; <label>:4756                                    ; preds = %4610
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4015, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.ResRet.f32 %4757, 2
  %4761 = fadd fast float %4758, -5.000000e-01
  %4762 = fadd fast float %4759, -5.000000e-01
  %4763 = fadd fast float %4760, -5.000000e-01
  %4764 = fsub fast float 1.000000e+00, %4623
  %4765 = fsub fast float 1.000000e+00, %4624
  %4766 = fsub fast float 1.000000e+00, %4628
  %4767 = fmul fast float %4623, 4.000000e+00
  %4768 = fmul fast float %4767, %4764
  %4769 = fmul fast float %4768, %4761
  %4770 = fmul fast float %4624, 4.000000e+00
  %4771 = fmul fast float %4770, %4765
  %4772 = fmul fast float %4771, %4762
  %4773 = fmul fast float %4628, 4.000000e+00
  %4774 = fmul fast float %4773, %4766
  %4775 = fmul fast float %4774, %4763
  %4776 = fadd fast float %4769, %4752
  %4777 = fadd fast float %4772, %4753
  %4778 = fadd fast float %4775, %4754
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  br label %4782

; <label>:4782                                    ; preds = %4756, %4610
  %4783 = phi float [ %4779, %4756 ], [ %4752, %4610 ]
  %4784 = phi float [ %4780, %4756 ], [ %4753, %4610 ]
  %4785 = phi float [ %4781, %4756 ], [ %4754, %4610 ]
  %4786 = call float @dx.op.binary.f32(i32 35, float %4784, float %4785)  ; FMax(a,b)
  %4787 = call float @dx.op.binary.f32(i32 35, float %4783, float %4786)  ; FMax(a,b)
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = fmul fast float %4788, %4735
  %4790 = fmul fast float %4788, %4736
  %4791 = fmul fast float %4788, %4737
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = fcmp fast ogt float %4792, 0x3E7FF19E20000000
  %4794 = fdiv fast float 1.000000e+00, %4792
  %4795 = select i1 %4793, float %4794, float 0.000000e+00
  %4796 = fmul fast float %4795, %4617
  %4797 = fmul fast float %4795, %4618
  %4798 = fmul fast float %4795, %4619
  %4799 = fadd fast float %4796, -1.000000e+00
  %4800 = fadd fast float %4797, -1.000000e+00
  %4801 = fadd fast float %4798, -1.000000e+00
  %4802 = fmul fast float %4799, 5.000000e-01
  %4803 = fmul fast float %4800, 5.000000e-01
  %4804 = fmul fast float %4801, 5.000000e-01
  %4805 = fadd fast float %4802, 1.000000e+00
  %4806 = fadd fast float %4803, 1.000000e+00
  %4807 = fadd fast float %4804, 1.000000e+00
  %4808 = fmul fast float %4783, %4739
  %4809 = fmul fast float %4784, %4740
  %4810 = fmul fast float %4785, %4741
  %4811 = fsub fast float 1.000000e+00, %4630
  %4812 = bitcast float %4811 to i32
  %4813 = sitofp i32 %4812 to float
  %4814 = fmul fast float %4813, 5.000000e+00
  %4815 = fadd fast float %4814, 0xC1EFBF8940000000
  %4816 = fptosi float %4815 to i32
  %4817 = bitcast i32 %4816 to float
  %4818 = fmul fast float %4817, %4016
  %4819 = fmul fast float %4735, %4818
  %4820 = fmul fast float %4819, %4788
  %4821 = fmul fast float %4820, %4805
  %4822 = fmul fast float %4736, %4818
  %4823 = fmul fast float %4822, %4788
  %4824 = fmul fast float %4823, %4806
  %4825 = fmul fast float %4737, %4818
  %4826 = fmul fast float %4825, %4788
  %4827 = fmul fast float %4826, %4807
  %4828 = fmul fast float %4789, %4012
  %4829 = fmul fast float %4790, %4012
  %4830 = fmul fast float %4791, %4012
  %4831 = fadd fast float %4808, %4008
  %4832 = fadd fast float %4831, %4821
  %4833 = fmul fast float %4832, %4012
  %4834 = fadd fast float %4809, %4009
  %4835 = fadd fast float %4834, %4824
  %4836 = fmul fast float %4835, %4012
  %4837 = fadd fast float %4810, %4010
  %4838 = fadd fast float %4837, %4827
  %4839 = fmul fast float %4838, %4012
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 3
  %4842 = fcmp fast oeq float %4841, 0.000000e+00
  br i1 %4842, label %5070, label %4843

; <label>:4843                                    ; preds = %4782
  %4844 = extractvalue %dx.types.CBufRet.f32 %4840, 0
  %4845 = extractvalue %dx.types.CBufRet.f32 %4840, 1
  %4846 = extractvalue %dx.types.CBufRet.f32 %4840, 2
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4849, float %4850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = select i1 %173, float %4852, float %4848
  %4856 = select i1 %173, float %4854, float %4849
  %4857 = select i1 %173, float %4853, float %4850
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4860 = fcmp fast une float %4859, 0.000000e+00
  br i1 %4860, label %4861, label %4878

; <label>:4861                                    ; preds = %4843
  %4862 = fptoui float %68 to i32
  %4863 = fptoui float %69 to i32
  %4864 = lshr i32 %4862, 4
  %4865 = lshr i32 %4863, 4
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  %4868 = fptoui float %4867 to i32
  %4869 = add i32 %4868, 15
  %4870 = lshr i32 %4869, 4
  %4871 = mul i32 %4870, %4865
  %4872 = add i32 %4871, %4864
  %4873 = shl i32 %4872, 3
  %4874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4873, i32 undef)  ; BufferLoad(srv,index,wot)
  %4875 = extractvalue %dx.types.ResRet.i32 %4874, 0
  %4876 = and i32 %4875, -268435456
  %4877 = icmp eq i32 %4876, -1342177280
  br i1 %4877, label %4888, label %4878

; <label>:4878                                    ; preds = %4861, %4843
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4882 = fmul fast float %4880, %68
  %4883 = fmul fast float %4881, %69
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4882, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  br label %4888

; <label>:4888                                    ; preds = %4878, %4861
  %4889 = phi float [ %4885, %4878 ], [ 0.000000e+00, %4861 ]
  %4890 = phi float [ %4886, %4878 ], [ 0.000000e+00, %4861 ]
  %4891 = phi float [ %4887, %4878 ], [ 0.000000e+00, %4861 ]
  %4892 = call float @dx.op.binary.f32(i32 36, float %4890, float %4891)  ; FMin(a,b)
  %4893 = call float @dx.op.binary.f32(i32 36, float %4889, float %4892)  ; FMin(a,b)
  %4894 = fcmp fast ogt float %4893, 0.000000e+00
  br i1 %4894, label %4895, label %5070, !dx.controlflow.hints !72

; <label>:4895                                    ; preds = %4888
  %4896 = fmul fast float %4889, %4855
  %4897 = fmul fast float %4890, %4856
  %4898 = fmul fast float %4891, %4857
  %4899 = fsub fast float %4844, %4616
  %4900 = fsub fast float %4845, %4615
  %4901 = fsub fast float %4846, %4614
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float %4899, float %4900, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.unary.f32(i32 25, float %4902)  ; Rsqrt(value)
  %4904 = fmul fast float %4903, %4899
  %4905 = fmul fast float %4903, %4900
  %4906 = fmul fast float %4903, %4901
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4620, float %4621, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4612, float %4611, float %4904, float %4905, float %4906)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4910 = fmul fast float %4909, %4909
  %4911 = fmul fast float %4910, %4643
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, %4909
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %4904, float %4905, float %4906)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = fmul fast float %4914, %4914
  %4916 = call float @dx.op.unary.f32(i32 6, float %4907)  ; FAbs(value)
  %4917 = fsub fast float 1.000000e+00, %4626
  %4918 = call float @dx.op.binary.f32(i32 35, float %4917, float 0x3F847AE140000000)  ; FMax(a,b)
  %4919 = fmul fast float %4918, %4918
  %4920 = fmul fast float %4919, %4919
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fmul fast float %4630, %4630
  %4923 = fmul fast float %4922, %4921
  %4924 = fadd fast float %4923, %4920
  %4925 = bitcast float %4924 to i32
  %4926 = ashr i32 %4925, 1
  %4927 = add nsw i32 %4926, 532487669
  %4928 = bitcast i32 %4927 to float
  %4929 = fadd fast float %4928, %4630
  %4930 = fmul fast float %4920, %4915
  %4931 = fsub fast float 1.000000e+00, %4915
  %4932 = fadd fast float %4931, %4930
  %4933 = fmul fast float %4916, %4916
  %4934 = fmul fast float %4933, %4921
  %4935 = fadd fast float %4934, %4920
  %4936 = bitcast float %4935 to i32
  %4937 = ashr i32 %4936, 1
  %4938 = add nsw i32 %4937, 532487669
  %4939 = bitcast i32 %4938 to float
  %4940 = fadd fast float %4939, %4916
  %4941 = fmul fast float %4932, %4932
  %4942 = fmul fast float %4941, %4929
  %4943 = fmul fast float %4942, %4940
  %4944 = fdiv fast float 0x3FF0A00000000000, %4943
  %4945 = fmul fast float %4944, %4920
  %4946 = call float @dx.op.unary.f32(i32 6, float %4908)  ; FAbs(value)
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = bitcast float %4947 to i32
  %4949 = sitofp i32 %4948 to float
  %4950 = fmul fast float %4949, 5.000000e+00
  %4951 = fadd fast float %4950, 0xC1EFBF8940000000
  %4952 = fptosi float %4951 to i32
  %4953 = bitcast i32 %4952 to float
  %4954 = fsub fast float 1.000000e+00, %4623
  %4955 = fsub fast float 1.000000e+00, %4624
  %4956 = fsub fast float 1.000000e+00, %4628
  %4957 = fmul fast float %4953, %4954
  %4958 = fmul fast float %4953, %4955
  %4959 = fmul fast float %4953, %4956
  %4960 = fadd fast float %4957, %4623
  %4961 = fadd fast float %4958, %4624
  %4962 = fadd fast float %4959, %4628
  br i1 %4755, label %4963, label %4986

; <label>:4963                                    ; preds = %4895
  %4964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4015, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4965 = extractvalue %dx.types.ResRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.ResRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.ResRet.f32 %4964, 2
  %4968 = fadd fast float %4965, -5.000000e-01
  %4969 = fadd fast float %4966, -5.000000e-01
  %4970 = fadd fast float %4967, -5.000000e-01
  %4971 = fmul fast float %4623, 4.000000e+00
  %4972 = fmul fast float %4971, %4954
  %4973 = fmul fast float %4972, %4968
  %4974 = fmul fast float %4624, 4.000000e+00
  %4975 = fmul fast float %4974, %4955
  %4976 = fmul fast float %4975, %4969
  %4977 = fmul fast float %4628, 4.000000e+00
  %4978 = fmul fast float %4977, %4956
  %4979 = fmul fast float %4978, %4970
  %4980 = fadd fast float %4973, %4960
  %4981 = fadd fast float %4976, %4961
  %4982 = fadd fast float %4979, %4962
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  br label %4986

; <label>:4986                                    ; preds = %4963, %4895
  %4987 = phi float [ %4983, %4963 ], [ %4960, %4895 ]
  %4988 = phi float [ %4984, %4963 ], [ %4961, %4895 ]
  %4989 = phi float [ %4985, %4963 ], [ %4962, %4895 ]
  %4990 = fmul fast float %4907, 9.843750e-01
  %4991 = fadd fast float %4990, 7.812500e-03
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4991, float %4745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 3
  %4995 = fmul fast float %4993, %4623
  %4996 = fmul fast float %4993, %4624
  %4997 = fmul fast float %4993, %4628
  %4998 = fadd fast float %4995, %4994
  %4999 = fadd fast float %4996, %4994
  %5000 = fadd fast float %4997, %4994
  br i1 %4755, label %5001, label %5024

; <label>:5001                                    ; preds = %4986
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4015, float %4907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.ResRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.ResRet.f32 %5002, 2
  %5006 = fadd fast float %5003, -5.000000e-01
  %5007 = fadd fast float %5004, -5.000000e-01
  %5008 = fadd fast float %5005, -5.000000e-01
  %5009 = fmul fast float %4623, 4.000000e+00
  %5010 = fmul fast float %5009, %4954
  %5011 = fmul fast float %5010, %5006
  %5012 = fmul fast float %4624, 4.000000e+00
  %5013 = fmul fast float %5012, %4955
  %5014 = fmul fast float %5013, %5007
  %5015 = fmul fast float %4628, 4.000000e+00
  %5016 = fmul fast float %5015, %4956
  %5017 = fmul fast float %5016, %5008
  %5018 = fadd fast float %5011, %4998
  %5019 = fadd fast float %5014, %4999
  %5020 = fadd fast float %5017, %5000
  %5021 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  br label %5024

; <label>:5024                                    ; preds = %5001, %4986
  %5025 = phi float [ %5021, %5001 ], [ %4998, %4986 ]
  %5026 = phi float [ %5022, %5001 ], [ %4999, %4986 ]
  %5027 = phi float [ %5023, %5001 ], [ %5000, %4986 ]
  %5028 = call float @dx.op.binary.f32(i32 35, float %5026, float %5027)  ; FMax(a,b)
  %5029 = call float @dx.op.binary.f32(i32 35, float %5025, float %5028)  ; FMax(a,b)
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = fmul fast float %4987, %4945
  %5032 = fmul fast float %4988, %4945
  %5033 = fmul fast float %4989, %4945
  %5034 = fsub fast float 1.000000e+00, %4908
  %5035 = bitcast float %5034 to i32
  %5036 = sitofp i32 %5035 to float
  %5037 = fmul fast float %5036, 5.000000e+00
  %5038 = fadd fast float %5037, 0xC1EFBF8940000000
  %5039 = fptosi float %5038 to i32
  %5040 = bitcast i32 %5039 to float
  %5041 = fmul fast float %5040, %4016
  %5042 = fmul fast float %5030, %5041
  %5043 = fmul fast float %5042, %4805
  %5044 = fmul fast float %5042, %4806
  %5045 = fmul fast float %5042, %4807
  %5046 = fadd fast float %5043, %5031
  %5047 = fadd fast float %5044, %5032
  %5048 = fadd fast float %5045, %5033
  %5049 = fmul fast float %4913, %4896
  %5050 = fmul fast float %5049, %5030
  %5051 = fmul fast float %4913, %4897
  %5052 = fmul fast float %5051, %5030
  %5053 = fmul fast float %4913, %4898
  %5054 = fmul fast float %5053, %5030
  %5055 = fmul fast float %5049, %5046
  %5056 = fmul fast float %5051, %5047
  %5057 = fmul fast float %5053, %5048
  %5058 = fadd fast float %5050, %4789
  %5059 = fmul fast float %5058, %4012
  %5060 = fadd fast float %5052, %4790
  %5061 = fmul fast float %5060, %4012
  %5062 = fadd fast float %5054, %4791
  %5063 = fmul fast float %5062, %4012
  %5064 = fadd fast float %5055, %4832
  %5065 = fmul fast float %5064, %4012
  %5066 = fadd fast float %5056, %4835
  %5067 = fmul fast float %5066, %4012
  %5068 = fadd fast float %5057, %4838
  %5069 = fmul fast float %5068, %4012
  br label %5070

; <label>:5070                                    ; preds = %5024, %4888, %4782
  %5071 = phi float [ %4833, %4782 ], [ %4833, %4888 ], [ %5065, %5024 ]
  %5072 = phi float [ %4836, %4782 ], [ %4836, %4888 ], [ %5067, %5024 ]
  %5073 = phi float [ %4839, %4782 ], [ %4839, %4888 ], [ %5069, %5024 ]
  %5074 = phi float [ %4828, %4782 ], [ %4828, %4888 ], [ %5059, %5024 ]
  %5075 = phi float [ %4829, %4782 ], [ %4829, %4888 ], [ %5061, %5024 ]
  %5076 = phi float [ %4830, %4782 ], [ %4830, %4888 ], [ %5063, %5024 ]
  %5077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.i32 %5077, 0
  %5079 = icmp eq i32 %5078, 0
  br i1 %5079, label %5514, label %5080

; <label>:5080                                    ; preds = %5070
  %5081 = fptoui float %68 to i32
  %5082 = fptoui float %69 to i32
  %5083 = lshr i32 %5081, 4
  %5084 = lshr i32 %5082, 4
  %5085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.i32 %5085, 0
  %5087 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5084, i32 %5086, i32 %5083)  ; UMad(a,b,c)
  %5088 = add nsw i32 %5078, -1
  %5089 = call i32 @dx.op.binary.i32(i32 37, i32 %5088, i32 0)  ; IMax(a,b)
  %5090 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5091 = fptoui float %5090 to i32
  %5092 = lshr i32 %5091, 5
  %5093 = call i32 @dx.op.binary.i32(i32 40, i32 %5092, i32 8191)  ; UMin(a,b)
  %5094 = shl i32 %5093, 2
  %5095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5094, i32 undef)  ; BufferLoad(srv,index,wot)
  %5096 = extractvalue %dx.types.ResRet.i32 %5095, 0
  %5097 = lshr i32 %5096, 16
  %5098 = and i32 %5096, 65535
  %5099 = lshr i32 %5096, 21
  %5100 = lshr i32 %5098, 5
  %5101 = call i32 @dx.op.binary.i32(i32 40, i32 %5100, i32 %5089)  ; UMin(a,b)
  %5102 = icmp ugt i32 %5099, %5101
  br i1 %5102, label %5514, label %5103

; <label>:5103                                    ; preds = %5080
  br label %5104

; <label>:5104                                    ; preds = %5504, %5103
  %5105 = phi i32 [ %5511, %5504 ], [ %5099, %5103 ]
  %5106 = phi float [ %5505, %5504 ], [ %5071, %5103 ]
  %5107 = phi float [ %5506, %5504 ], [ %5072, %5103 ]
  %5108 = phi float [ %5507, %5504 ], [ %5073, %5103 ]
  %5109 = phi float [ %5508, %5504 ], [ %5074, %5103 ]
  %5110 = phi float [ %5509, %5504 ], [ %5075, %5103 ]
  %5111 = phi float [ %5510, %5504 ], [ %5076, %5103 ]
  %5112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.i32 %5112, 0
  %5114 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5087, i32 %5113, i32 %5105)  ; UMad(a,b,c)
  %5115 = shl i32 %5114, 2
  %5116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5115, i32 undef)  ; BufferLoad(srv,index,wot)
  %5117 = extractvalue %dx.types.ResRet.i32 %5116, 0
  %5118 = shl i32 %5105, 5
  %5119 = sub nsw i32 %5097, %5118
  %5120 = call i32 @dx.op.binary.i32(i32 37, i32 %5119, i32 0)  ; IMax(a,b)
  %5121 = call i32 @dx.op.binary.i32(i32 38, i32 %5120, i32 31)  ; IMin(a,b)
  %5122 = sub nsw i32 1, %5097
  %5123 = add nsw i32 %5122, %5098
  %5124 = call i32 @dx.op.binary.i32(i32 37, i32 %5123, i32 0)  ; IMax(a,b)
  %5125 = call i32 @dx.op.binary.i32(i32 38, i32 %5124, i32 32)  ; IMin(a,b)
  %5126 = and i32 %5125, 31
  %5127 = shl i32 -1, %5126
  %5128 = xor i32 %5127, -1
  %5129 = and i32 %5121, 31
  %5130 = shl i32 %5128, %5129
  %5131 = icmp eq i32 %5125, 32
  %5132 = select i1 %5131, i32 -1, i32 %5130
  %5133 = and i32 %5132, %5117
  %5134 = icmp eq i32 %5133, 0
  br i1 %5134, label %5504, label %5135

; <label>:5135                                    ; preds = %5104
  br label %5136

; <label>:5136                                    ; preds = %5216, %5135
  %5137 = phi i32 [ %5148, %5216 ], [ %5133, %5135 ]
  %5138 = phi float [ %5217, %5216 ], [ %5106, %5135 ]
  %5139 = phi float [ %5218, %5216 ], [ %5107, %5135 ]
  %5140 = phi float [ %5219, %5216 ], [ %5108, %5135 ]
  %5141 = phi float [ %5220, %5216 ], [ %5109, %5135 ]
  %5142 = phi float [ %5221, %5216 ], [ %5110, %5135 ]
  %5143 = phi float [ %5222, %5216 ], [ %5111, %5135 ]
  %5144 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5137)  ; FirstbitLo(value)
  %5145 = add i32 %5144, %5118
  %5146 = and i32 %5144, 31
  %5147 = shl i32 1, %5146
  %5148 = xor i32 %5147, %5137
  %5149 = mul i32 %5145, 112
  %5150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5149, i32 undef)  ; BufferLoad(srv,index,wot)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.ResRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.ResRet.f32 %5150, 2
  %5154 = or i32 %5149, 12
  %5155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = add i32 %5149, 44
  %5158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = add i32 %5149, 48
  %5161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.ResRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.ResRet.f32 %5161, 2
  %5165 = add i32 %5149, 80
  %5166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5165, i32 undef)  ; BufferLoad(srv,index,wot)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 1
  %5168 = extractvalue %dx.types.ResRet.f32 %5166, 2
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = select i1 %173, float %5167, float %5151
  %5171 = select i1 %173, float %5169, float %5152
  %5172 = select i1 %173, float %5168, float %5153
  %5173 = fsub fast float %5162, %131
  %5174 = fsub fast float %5163, %132
  %5175 = fsub fast float %5164, %133
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5175, float %5173, float %5174, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.unary.f32(i32 24, float %5176)  ; Sqrt(value)
  %5178 = fdiv fast float 1.000000e+00, %5177
  %5179 = fmul fast float %5178, %5173
  %5180 = fmul fast float %5178, %5174
  %5181 = fmul fast float %5178, %5175
  %5182 = fadd fast float %5177, %5156
  %5183 = fdiv fast float 1.000000e+00, %5182
  %5184 = fmul float %5159, %5183
  %5185 = fmul float %5184, %5184
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = and i32 %5147, %5133
  %5188 = icmp eq i32 %5187, 0
  br i1 %5188, label %5211, label %5189, !dx.controlflow.hints !73

; <label>:5189                                    ; preds = %5136
  %5190 = lshr i32 %5081, 5
  %5191 = lshr i32 %5082, 5
  %5192 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5190, i32 %5191, i32 %5145, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5193 = extractvalue %dx.types.ResRet.i32 %5192, 0
  %5194 = and i32 %5193, 3
  %5195 = icmp eq i32 %5194, 0
  %5196 = select i1 %5195, float 1.000000e+00, float 0.000000e+00
  %5197 = icmp eq i32 %5194, 3
  br i1 %5197, label %5198, label %5211

; <label>:5198                                    ; preds = %5189
  %5199 = lshr i32 %5193, 10
  %5200 = and i32 %5199, 8160
  %5201 = and i32 %5082, 31
  %5202 = or i32 %5200, %5201
  %5203 = lshr i32 %5193, 1
  %5204 = and i32 %5203, 16352
  %5205 = and i32 %5081, 31
  %5206 = or i32 %5204, %5205
  %5207 = lshr i32 %5193, 23
  %5208 = and i32 %5207, 255
  %5209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5206, i32 %5202, i32 %5208, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  br label %5211

; <label>:5211                                    ; preds = %5198, %5189, %5136
  %5212 = phi float [ %5210, %5198 ], [ %5196, %5189 ], [ 0.000000e+00, %5136 ]
  %5213 = call float @dx.op.binary.f32(i32 36, float %5212, float %5212)  ; FMin(a,b)
  %5214 = call float @dx.op.binary.f32(i32 36, float %5212, float %5213)  ; FMin(a,b)
  %5215 = fcmp fast ogt float %5214, 0.000000e+00
  br i1 %5215, label %5224, label %5216, !dx.controlflow.hints !74

; <label>:5216                                    ; preds = %5460, %5211
  %5217 = phi float [ %5138, %5211 ], [ %5500, %5460 ]
  %5218 = phi float [ %5139, %5211 ], [ %5501, %5460 ]
  %5219 = phi float [ %5140, %5211 ], [ %5502, %5460 ]
  %5220 = phi float [ %5141, %5211 ], [ %5494, %5460 ]
  %5221 = phi float [ %5142, %5211 ], [ %5495, %5460 ]
  %5222 = phi float [ %5143, %5211 ], [ %5496, %5460 ]
  %5223 = icmp eq i32 %5137, %5147
  br i1 %5223, label %5503, label %5136

; <label>:5224                                    ; preds = %5211
  %5225 = fmul fast float %5212, %5170
  %5226 = fmul fast float %5212, %5171
  %5227 = fmul fast float %5212, %5172
  %5228 = fsub fast float %5164, %4416
  %5229 = fcmp fast ogt float %5228, 0.000000e+00
  %5230 = fsub fast float %133, %4416
  %5231 = fcmp fast ogt float %5230, 0.000000e+00
  %5232 = xor i1 %5231, %5229
  %5233 = fsub fast float %4416, %5164
  %5234 = fmul fast float %5233, 2.000000e+00
  %5235 = fadd fast float %5234, %5164
  %5236 = select i1 %5232, float %5164, float %5235
  %5237 = fsub fast float %5236, %133
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5237, float %5173, float %5174, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.unary.f32(i32 25, float %5238)  ; Rsqrt(value)
  %5240 = fmul fast float %5239, %5173
  %5241 = fmul fast float %5239, %5174
  %5242 = fmul fast float %5239, %5237
  %5243 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4424)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fdiv fast float 1.000000e+00, %5244
  %5246 = fmul fast float %5245, %5243
  %5247 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5230, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = fcmp fast ogt float %5247, 0.000000e+00
  %5249 = fcmp fast olt float %5247, 0.000000e+00
  %5250 = zext i1 %5248 to i32
  %5251 = zext i1 %5249 to i32
  %5252 = sub nsw i32 %5250, %5251
  %5253 = sitofp i32 %5252 to float
  %5254 = fsub fast float %5236, %4416
  %5255 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5254, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = fcmp fast ogt float %5255, 0.000000e+00
  %5257 = fcmp fast olt float %5255, 0.000000e+00
  %5258 = zext i1 %5256 to i32
  %5259 = zext i1 %5257 to i32
  %5260 = sub nsw i32 %5258, %5259
  %5261 = sitofp i32 %5260 to float
  %5262 = fcmp fast une float %5253, %5261
  br i1 %5262, label %5263, label %5273

; <label>:5263                                    ; preds = %5224
  %5264 = fmul fast float %5246, %5242
  %5265 = fmul fast float %5246, %5241
  %5266 = fmul fast float %5246, %5240
  %5267 = fmul fast float %5266, %5266
  %5268 = fmul fast float %5265, %5265
  %5269 = fadd fast float %5267, %5268
  %5270 = fmul fast float %5264, %5264
  %5271 = fadd fast float %5269, %5270
  %5272 = call float @dx.op.unary.f32(i32 24, float %5271)  ; Sqrt(value)
  br label %5285

; <label>:5273                                    ; preds = %5224
  %5274 = icmp slt i32 %5252, 0
  br i1 %5274, label %5275, label %5285

; <label>:5275                                    ; preds = %5273
  %5276 = fsub fast float %131, %5162
  %5277 = fsub fast float %132, %5163
  %5278 = fsub fast float %133, %5236
  %5279 = fmul fast float %5276, %5276
  %5280 = fmul fast float %5277, %5277
  %5281 = fadd fast float %5279, %5280
  %5282 = fmul fast float %5278, %5278
  %5283 = fadd fast float %5281, %5282
  %5284 = call float @dx.op.unary.f32(i32 24, float %5283)  ; Sqrt(value)
  br label %5285

; <label>:5285                                    ; preds = %5275, %5273, %5263
  %5286 = phi float [ %5272, %5263 ], [ %5284, %5275 ], [ 0.000000e+00, %5273 ]
  %5287 = and i1 %5231, %5229
  %5288 = fsub fast float -0.000000e+00, %5286
  %5289 = select i1 %5287, float -0.000000e+00, float %5288
  %5290 = fmul fast float %4417, 0x3FF7154760000000
  %5291 = fmul fast float %5290, %5289
  %5292 = fmul fast float %4418, 0x3FF7154760000000
  %5293 = fmul fast float %5292, %5289
  %5294 = fmul fast float %4419, 0x3FF7154760000000
  %5295 = fmul fast float %5294, %5289
  %5296 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5297 = call float @dx.op.unary.f32(i32 21, float %5293)  ; Exp(value)
  %5298 = call float @dx.op.unary.f32(i32 21, float %5295)  ; Exp(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5301 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5302 = fmul fast float %5225, %5299
  %5303 = fmul fast float %5226, %5300
  %5304 = fmul fast float %5227, %5301
  %5305 = fsub fast float %5179, %4616
  %5306 = fsub fast float %5180, %4615
  %5307 = fsub fast float %5181, %4614
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5305, float %5306, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 25, float %5308)  ; Rsqrt(value)
  %5310 = fmul fast float %5309, %5305
  %5311 = fmul fast float %5309, %5306
  %5312 = fmul fast float %5309, %5307
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %4620, float %4621, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4612, float %4611, float %5310, float %5311, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5316 = fmul fast float %5315, %5186
  %5317 = fmul fast float %5315, %5315
  %5318 = fmul fast float %5317, %4643
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fmul fast float %5316, %5319
  %5321 = bitcast float %5176 to i32
  %5322 = ashr i32 %5321, 1
  %5323 = sub nsw i32 1597463007, %5322
  %5324 = bitcast i32 %5323 to float
  %5325 = fmul fast float %5324, %5173
  %5326 = fmul fast float %5324, %5174
  %5327 = fmul fast float %5324, %5175
  %5328 = fsub fast float %5325, %4616
  %5329 = fsub fast float %5326, %4615
  %5330 = fsub fast float %5327, %4614
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5328, float %5329, float %5330, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 25, float %5331)  ; Rsqrt(value)
  %5333 = fmul fast float %5328, %5332
  %5334 = fmul fast float %5329, %5332
  %5335 = fmul fast float %5330, %5332
  %5336 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fmul fast float %5336, %5336
  %5338 = call float @dx.op.unary.f32(i32 6, float %5313)  ; FAbs(value)
  %5339 = fsub fast float 1.000000e+00, %4626
  %5340 = call float @dx.op.binary.f32(i32 35, float %5339, float 0x3F847AE140000000)  ; FMax(a,b)
  %5341 = fmul fast float %5340, %5340
  %5342 = fmul fast float %5341, %5341
  %5343 = fsub fast float 1.000000e+00, %5342
  %5344 = fmul fast float %4630, %4630
  %5345 = fmul fast float %5344, %5343
  %5346 = fadd fast float %5345, %5342
  %5347 = bitcast float %5346 to i32
  %5348 = ashr i32 %5347, 1
  %5349 = add nsw i32 %5348, 532487669
  %5350 = bitcast i32 %5349 to float
  %5351 = fadd fast float %5350, %4630
  %5352 = fmul fast float %5342, %5337
  %5353 = fsub fast float 1.000000e+00, %5337
  %5354 = fadd fast float %5353, %5352
  %5355 = fmul fast float %5338, %5338
  %5356 = fmul fast float %5355, %5343
  %5357 = fadd fast float %5356, %5342
  %5358 = bitcast float %5357 to i32
  %5359 = ashr i32 %5358, 1
  %5360 = add nsw i32 %5359, 532487669
  %5361 = bitcast i32 %5360 to float
  %5362 = fadd fast float %5361, %5338
  %5363 = fmul fast float %5354, %5354
  %5364 = fmul fast float %5363, %5351
  %5365 = fmul fast float %5364, %5362
  %5366 = fdiv fast float 1.000000e+00, %5365
  %5367 = bitcast float %5342 to i32
  %5368 = sitofp i32 %5367 to float
  %5369 = fmul fast float %5368, 0x3FE7F73180000000
  %5370 = fadd fast float %5369, 0x41AFE27C40000000
  %5371 = fptosi float %5370 to i32
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5159, 0x3FD80E9D60000000
  %5374 = fmul fast float %5373, %5324
  %5375 = fadd fast float %5372, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = fmul fast float %5342, %5366
  %5380 = fmul fast float %5379, %5372
  %5381 = fmul fast float %5380, %5378
  %5382 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5383 = fsub fast float 1.000000e+00, %5382
  %5384 = bitcast float %5383 to i32
  %5385 = sitofp i32 %5384 to float
  %5386 = fmul fast float %5385, 5.000000e+00
  %5387 = fadd fast float %5386, 0xC1EFBF8940000000
  %5388 = fptosi float %5387 to i32
  %5389 = bitcast i32 %5388 to float
  %5390 = fsub fast float 1.000000e+00, %4623
  %5391 = fsub fast float 1.000000e+00, %4624
  %5392 = fsub fast float 1.000000e+00, %4628
  %5393 = fmul fast float %5389, %5390
  %5394 = fmul fast float %5389, %5391
  %5395 = fmul fast float %5389, %5392
  %5396 = fadd fast float %5393, %4623
  %5397 = fadd fast float %5394, %4624
  %5398 = fadd fast float %5395, %4628
  br i1 %4755, label %5399, label %5422

; <label>:5399                                    ; preds = %5285
  %5400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4015, float %5382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.ResRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.ResRet.f32 %5400, 2
  %5404 = fadd fast float %5401, -5.000000e-01
  %5405 = fadd fast float %5402, -5.000000e-01
  %5406 = fadd fast float %5403, -5.000000e-01
  %5407 = fmul fast float %4623, 4.000000e+00
  %5408 = fmul fast float %5407, %5390
  %5409 = fmul fast float %5408, %5404
  %5410 = fmul fast float %4624, 4.000000e+00
  %5411 = fmul fast float %5410, %5391
  %5412 = fmul fast float %5411, %5405
  %5413 = fmul fast float %4628, 4.000000e+00
  %5414 = fmul fast float %5413, %5392
  %5415 = fmul fast float %5414, %5406
  %5416 = fadd fast float %5409, %5396
  %5417 = fadd fast float %5412, %5397
  %5418 = fadd fast float %5415, %5398
  %5419 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5420 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5421 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  br label %5422

; <label>:5422                                    ; preds = %5399, %5285
  %5423 = phi float [ %5419, %5399 ], [ %5396, %5285 ]
  %5424 = phi float [ %5420, %5399 ], [ %5397, %5285 ]
  %5425 = phi float [ %5421, %5399 ], [ %5398, %5285 ]
  %5426 = fmul fast float %5313, 9.843750e-01
  %5427 = fadd fast float %5426, 7.812500e-03
  %5428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5427, float %4745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 2
  %5430 = extractvalue %dx.types.ResRet.f32 %5428, 3
  %5431 = fmul fast float %5429, %4623
  %5432 = fmul fast float %5429, %4624
  %5433 = fmul fast float %5429, %4628
  %5434 = fadd fast float %5431, %5430
  %5435 = fadd fast float %5432, %5430
  %5436 = fadd fast float %5433, %5430
  br i1 %4755, label %5437, label %5460

; <label>:5437                                    ; preds = %5422
  %5438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4015, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.ResRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.ResRet.f32 %5438, 2
  %5442 = fadd fast float %5439, -5.000000e-01
  %5443 = fadd fast float %5440, -5.000000e-01
  %5444 = fadd fast float %5441, -5.000000e-01
  %5445 = fmul fast float %4623, 4.000000e+00
  %5446 = fmul fast float %5445, %5390
  %5447 = fmul fast float %5446, %5442
  %5448 = fmul fast float %4624, 4.000000e+00
  %5449 = fmul fast float %5448, %5391
  %5450 = fmul fast float %5449, %5443
  %5451 = fmul fast float %4628, 4.000000e+00
  %5452 = fmul fast float %5451, %5392
  %5453 = fmul fast float %5452, %5444
  %5454 = fadd fast float %5447, %5434
  %5455 = fadd fast float %5450, %5435
  %5456 = fadd fast float %5453, %5436
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5458 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5459 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  br label %5460

; <label>:5460                                    ; preds = %5437, %5422
  %5461 = phi float [ %5457, %5437 ], [ %5434, %5422 ]
  %5462 = phi float [ %5458, %5437 ], [ %5435, %5422 ]
  %5463 = phi float [ %5459, %5437 ], [ %5436, %5422 ]
  %5464 = call float @dx.op.binary.f32(i32 35, float %5462, float %5463)  ; FMax(a,b)
  %5465 = call float @dx.op.binary.f32(i32 35, float %5461, float %5464)  ; FMax(a,b)
  %5466 = fsub fast float 1.000000e+00, %5465
  %5467 = fmul fast float %5423, %5381
  %5468 = fmul fast float %5424, %5381
  %5469 = fmul fast float %5425, %5381
  %5470 = fsub fast float 1.000000e+00, %5314
  %5471 = bitcast float %5470 to i32
  %5472 = sitofp i32 %5471 to float
  %5473 = fmul fast float %5472, 5.000000e+00
  %5474 = fadd fast float %5473, 0xC1EFBF8940000000
  %5475 = fptosi float %5474 to i32
  %5476 = bitcast i32 %5475 to float
  %5477 = fmul fast float %5476, %4016
  %5478 = fmul fast float %5466, %5477
  %5479 = fmul fast float %5478, %4805
  %5480 = fmul fast float %5478, %4806
  %5481 = fmul fast float %5478, %4807
  %5482 = fadd fast float %5479, %5467
  %5483 = fadd fast float %5480, %5468
  %5484 = fadd fast float %5481, %5469
  %5485 = fmul fast float %5302, %4012
  %5486 = fmul fast float %5485, %5320
  %5487 = fmul fast float %5486, %5466
  %5488 = fmul fast float %5303, %4012
  %5489 = fmul fast float %5488, %5320
  %5490 = fmul fast float %5489, %5466
  %5491 = fmul fast float %5304, %4012
  %5492 = fmul fast float %5491, %5320
  %5493 = fmul fast float %5492, %5466
  %5494 = fadd fast float %5487, %5141
  %5495 = fadd fast float %5490, %5142
  %5496 = fadd fast float %5493, %5143
  %5497 = fmul fast float %5486, %5482
  %5498 = fmul fast float %5489, %5483
  %5499 = fmul fast float %5492, %5484
  %5500 = fadd fast float %5497, %5138
  %5501 = fadd fast float %5498, %5139
  %5502 = fadd fast float %5499, %5140
  br label %5216

; <label>:5503                                    ; preds = %5216
  br label %5504

; <label>:5504                                    ; preds = %5503, %5104
  %5505 = phi float [ %5106, %5104 ], [ %5217, %5503 ]
  %5506 = phi float [ %5107, %5104 ], [ %5218, %5503 ]
  %5507 = phi float [ %5108, %5104 ], [ %5219, %5503 ]
  %5508 = phi float [ %5109, %5104 ], [ %5220, %5503 ]
  %5509 = phi float [ %5110, %5104 ], [ %5221, %5503 ]
  %5510 = phi float [ %5111, %5104 ], [ %5222, %5503 ]
  %5511 = add i32 %5105, 1
  %5512 = icmp ugt i32 %5511, %5101
  br i1 %5512, label %5513, label %5104

; <label>:5513                                    ; preds = %5504
  br label %5514

; <label>:5514                                    ; preds = %5513, %5080, %5070
  %5515 = phi float [ %5071, %5070 ], [ %5071, %5080 ], [ %5505, %5513 ]
  %5516 = phi float [ %5072, %5070 ], [ %5072, %5080 ], [ %5506, %5513 ]
  %5517 = phi float [ %5073, %5070 ], [ %5073, %5080 ], [ %5507, %5513 ]
  %5518 = phi float [ %5074, %5070 ], [ %5074, %5080 ], [ %5508, %5513 ]
  %5519 = phi float [ %5075, %5070 ], [ %5075, %5080 ], [ %5509, %5513 ]
  %5520 = phi float [ %5076, %5070 ], [ %5076, %5080 ], [ %5510, %5513 ]
  %5521 = call float @dx.op.unary.f32(i32 24, float %4617)  ; Sqrt(value)
  %5522 = call float @dx.op.unary.f32(i32 24, float %4618)  ; Sqrt(value)
  %5523 = call float @dx.op.unary.f32(i32 24, float %4619)  ; Sqrt(value)
  %5524 = fmul fast float %5521, %5518
  %5525 = fmul fast float %5522, %5519
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  br i1 %173, label %5528, label %5548

; <label>:5528                                    ; preds = %5514
  %5529 = fadd fast float %5520, %4018
  %5530 = fmul fast float %5529, %4019
  %5531 = fsub fast float 1.000000e+00, %4019
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = fmul fast float %5534, %5532
  %5536 = fadd fast float %5535, %5530
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = fmul fast float %5538, %4811
  %5540 = fsub fast float %5536, %5539
  %5541 = fadd fast float %5525, %5524
  %5542 = fmul fast float %5527, %5541
  %5543 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5544 = fsub fast float %5540, %5543
  %5545 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5546 = fmul fast float %5544, %5545
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  br label %5564

; <label>:5548                                    ; preds = %5514
  %5549 = fmul fast float %5523, %5520
  %5550 = fmul fast float %5527, %5524
  %5551 = fmul fast float %5527, %5525
  %5552 = fmul fast float %5549, %5527
  %5553 = add i32 %33, 356
  %5554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5553, i32 undef)  ; BufferLoad(srv,index,wot)
  %5555 = extractvalue %dx.types.ResRet.i32 %5554, 0
  %5556 = and i32 %5555, 32
  %5557 = icmp eq i32 %5556, 0
  br i1 %5557, label %5564, label %5558

; <label>:5558                                    ; preds = %5548
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = fmul fast float %5560, 0x3FE99999A0000000
  %5562 = fadd fast float %5560, %5550
  %5563 = fadd fast float %5561, %5552
  br label %5564

; <label>:5564                                    ; preds = %5558, %5548, %5528
  %5565 = phi float [ %5542, %5528 ], [ %5562, %5558 ], [ %5550, %5548 ]
  %5566 = phi float [ %5547, %5528 ], [ %5551, %5558 ], [ %5551, %5548 ]
  %5567 = phi float [ 1.000000e+00, %5528 ], [ %5563, %5558 ], [ %5552, %5548 ]
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = fmul fast float %5569, %5516
  %5571 = fmul fast float %5569, %5517
  %5572 = fadd fast float %5516, %5515
  %5573 = select i1 %173, float %5572, float %5515
  %5574 = fmul float %5573, %5569
  %5575 = select i1 %173, float 0.000000e+00, float %5570
  %5576 = select i1 %173, float 0.000000e+00, float %5571
  %5577 = fmul fast float %5565, %5521
  %5578 = fmul fast float %5566, %5522
  %5579 = fmul fast float %5567, %5523
  %5580 = fadd fast float %5574, %5577
  %5581 = fadd fast float %5575, %5578
  %5582 = fadd fast float %5576, %5579
  %5583 = select i1 %173, float %5566, float %5581
  %5584 = select i1 %173, float %5567, float %5582
  %5585 = call float @dx.op.binary.f32(i32 36, float %5580, float 3.225500e+04)  ; FMin(a,b)
  %5586 = call float @dx.op.binary.f32(i32 36, float %5583, float 3.225500e+04)  ; FMin(a,b)
  %5587 = call float @dx.op.binary.f32(i32 36, float %5584, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !71}
!49 = !{!50, !69, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !68}
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
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 5, i8 0, !59}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 7, i8 0, !57}
!65 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 8, i8 0, !61}
!66 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 9, i8 0, !67}
!67 = !{i32 3, i32 13}
!68 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

